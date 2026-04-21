; ModuleID = 'src/echo.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !397
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !367
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !387
@.str.1.42 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !389
@.str.2.44 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !391
@.str.3.43 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !393
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !395
@.str.4.37 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !399
@.str.5.38 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !401
@.str.6.39 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !406
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !411
@.str.58 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !417
@.str.1.59 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !419
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !421
@.str.62 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !452
@.str.1.63 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !455
@.str.2.64 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !457
@.str.3.65 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !462
@.str.4.66 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !464
@.str.5.67 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !466
@.str.6.68 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !468
@.str.7.69 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !470
@.str.8.70 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !472
@.str.9.71 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !474
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.62, ptr @.str.1.63, ptr @.str.2.64, ptr @.str.3.65, ptr @.str.4.66, ptr @.str.5.67, ptr @.str.6.68, ptr @.str.7.69, ptr @.str.8.70, ptr @.str.9.71, ptr null], align 16, !dbg !476
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !501
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !515
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !553
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !560
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !517
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !562
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !505
@.str.10.74 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !522
@.str.11.72 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !524
@.str.12.75 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !526
@.str.13.73 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !528
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !530
@.str.78 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !566
@.str.1.79 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !569
@.str.2.80 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !571
@.str.3.81 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !573
@.str.4.82 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !575
@.str.5.83 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !577
@.str.6.84 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !582
@.str.7.85 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !587
@.str.8.86 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !589
@.str.9.87 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !594
@.str.10.88 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !599
@.str.11.89 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !604
@.str.12.90 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !609
@.str.13.91 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !611
@.str.14.92 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !616
@.str.15.93 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !621
@.str.16.94 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !626
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.99 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !631
@.str.18.100 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !633
@.str.19.101 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !635
@.str.20.102 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !637
@.str.21.103 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !639
@.str.22.104 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !641
@.str.23.105 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !646
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !651
@exit_failure = dso_local global i32 1, align 4, !dbg !659
@.str.118 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !665
@.str.1.116 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !668
@.str.2.117 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !670
@.str.129 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !672
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !675
@.str.1.134 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !690

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !764 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !768, metadata !DIExpression()), !dbg !769
  %2 = icmp eq i32 %0, 0, !dbg !770
  br i1 %2, label %4, label %3, !dbg !773

3:                                                ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 41, ptr noundef nonnull @__PRETTY_FUNCTION__.usage) #36, !dbg !770
  unreachable, !dbg !770

4:                                                ; preds = %1
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !774
  %6 = load ptr, ptr @program_name, align 8, !dbg !774, !tbaa !775
  %7 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef %6, ptr noundef %6) #37, !dbg !774
  %8 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #37, !dbg !779
  %9 = load ptr, ptr @stdout, align 8, !dbg !779, !tbaa !775
  %10 = tail call i32 @fputs_unlocked(ptr noundef %8, ptr noundef %9), !dbg !779
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !780
  tail call fastcc void @oputs_(ptr noundef %11), !dbg !780
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !781
  tail call fastcc void @oputs_(ptr noundef %12), !dbg !781
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #37, !dbg !782
  tail call fastcc void @oputs_(ptr noundef %13), !dbg !782
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #37, !dbg !783
  tail call fastcc void @oputs_(ptr noundef %14), !dbg !783
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #37, !dbg !784
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !784
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #37, !dbg !785
  %17 = load ptr, ptr @stdout, align 8, !dbg !785, !tbaa !775
  %18 = tail call i32 @fputs_unlocked(ptr noundef %16, ptr noundef %17), !dbg !785
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #37, !dbg !786
  %20 = load ptr, ptr @stdout, align 8, !dbg !786, !tbaa !775
  %21 = tail call i32 @fputs_unlocked(ptr noundef %19, ptr noundef %20), !dbg !786
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #37, !dbg !787
  %23 = load ptr, ptr @stdout, align 8, !dbg !787, !tbaa !775
  %24 = tail call i32 @fputs_unlocked(ptr noundef %22, ptr noundef %23), !dbg !787
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #37, !dbg !788
  %26 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %25, ptr noundef nonnull @.str.4) #37, !dbg !788
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #37, !dbg !789
  %28 = load ptr, ptr @stdout, align 8, !dbg !789, !tbaa !775
  %29 = tail call i32 @fputs_unlocked(ptr noundef %27, ptr noundef %28), !dbg !789
  tail call fastcc void @emit_ancillary_info(), !dbg !790
  tail call void @exit(i32 noundef 0) #36, !dbg !791
  unreachable, !dbg !791
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: noreturn nounwind
declare !dbg !792 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !797 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !801 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !806 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #6 !dbg !121 {
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !260, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata ptr %0, metadata !261, metadata !DIExpression()), !dbg !811
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !812, !tbaa !813
  %3 = icmp eq i32 %2, -1, !dbg !815
  br i1 %3, label %4, label %16, !dbg !816

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.25) #37, !dbg !817
  call void @llvm.dbg.value(metadata ptr %5, metadata !262, metadata !DIExpression()), !dbg !818
  %6 = icmp eq ptr %5, null, !dbg !819
  br i1 %6, label %14, label %7, !dbg !820

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !821, !tbaa !822
  %9 = icmp eq i8 %8, 0, !dbg !821
  br i1 %9, label %14, label %10, !dbg !823

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !824, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata ptr @.str.26, metadata !830, metadata !DIExpression()), !dbg !831
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.26) #38, !dbg !833
  %12 = icmp eq i32 %11, 0, !dbg !834
  %13 = zext i1 %12 to i32, !dbg !823
  br label %14, !dbg !823

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !835, !tbaa !813
  br label %16, !dbg !836

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !837
  %18 = icmp eq i32 %17, 0, !dbg !837
  br i1 %18, label %22, label %19, !dbg !839

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !840, !tbaa !775
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !840
  br label %128, !dbg !842

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !265, metadata !DIExpression()), !dbg !811
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.27) #38, !dbg !843
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !844
  call void @llvm.dbg.value(metadata ptr %24, metadata !267, metadata !DIExpression()), !dbg !811
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !845
  call void @llvm.dbg.value(metadata ptr %25, metadata !268, metadata !DIExpression()), !dbg !811
  %26 = icmp eq ptr %25, null, !dbg !846
  br i1 %26, label %58, label %27, !dbg !847

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !848
  br i1 %28, label %58, label %29, !dbg !849

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !269, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i64 0, metadata !273, metadata !DIExpression()), !dbg !850
  %30 = icmp ult ptr %24, %25, !dbg !851
  br i1 %30, label %31, label %52, !dbg !852

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !811
  %33 = load ptr, ptr %32, align 8, !tbaa !775
  br label %34, !dbg !852

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !269, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i64 %36, metadata !273, metadata !DIExpression()), !dbg !850
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !853
  call void @llvm.dbg.value(metadata ptr %37, metadata !269, metadata !DIExpression()), !dbg !850
  %38 = load i8, ptr %35, align 1, !dbg !853, !tbaa !822
  %39 = sext i8 %38 to i64, !dbg !853
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !853
  %41 = load i16, ptr %40, align 2, !dbg !853, !tbaa !854
  %42 = freeze i16 %41, !dbg !856
  %43 = lshr i16 %42, 13, !dbg !856
  %44 = and i16 %43, 1, !dbg !856
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !857
  call void @llvm.dbg.value(metadata i64 %46, metadata !273, metadata !DIExpression()), !dbg !850
  %47 = icmp ult ptr %37, %25, !dbg !851
  %48 = icmp ult i64 %46, 2, !dbg !858
  %49 = select i1 %47, i1 %48, i1 false, !dbg !858
  br i1 %49, label %34, label %50, !dbg !852, !llvm.loop !859

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !861
  br i1 %51, label %52, label %54, !dbg !863

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !863

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !863
  call void @llvm.dbg.value(metadata i8 %57, metadata !265, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata ptr %56, metadata !268, metadata !DIExpression()), !dbg !811
  br label %58, !dbg !864

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !811
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !811
  call void @llvm.dbg.value(metadata i8 %60, metadata !265, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata ptr %59, metadata !268, metadata !DIExpression()), !dbg !811
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.28) #38, !dbg !865
  call void @llvm.dbg.value(metadata i64 %61, metadata !274, metadata !DIExpression()), !dbg !811
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !866
  call void @llvm.dbg.value(metadata ptr %62, metadata !275, metadata !DIExpression()), !dbg !811
  br label %63, !dbg !867

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !811
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !811
  call void @llvm.dbg.value(metadata i8 %65, metadata !265, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata ptr %64, metadata !275, metadata !DIExpression()), !dbg !811
  %66 = load i8, ptr %64, align 1, !dbg !868, !tbaa !822
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !869

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !870
  %69 = load i8, ptr %68, align 1, !dbg !873, !tbaa !822
  %70 = icmp eq i8 %69, 45, !dbg !874
  %71 = select i1 %70, i8 0, i8 %65, !dbg !875
  br label %72, !dbg !875

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !811
  call void @llvm.dbg.value(metadata i8 %73, metadata !265, metadata !DIExpression()), !dbg !811
  %74 = tail call ptr @__ctype_b_loc() #39, !dbg !876
  %75 = load ptr, ptr %74, align 8, !dbg !876, !tbaa !775
  %76 = sext i8 %66 to i64, !dbg !876
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !876
  %78 = load i16, ptr %77, align 2, !dbg !876, !tbaa !854
  %79 = and i16 %78, 8192, !dbg !876
  %80 = icmp eq i16 %79, 0, !dbg !876
  br i1 %80, label %96, label %81, !dbg !878

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !879
  br i1 %82, label %98, label %83, !dbg !882

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !883
  %85 = load i8, ptr %84, align 1, !dbg !883, !tbaa !822
  %86 = sext i8 %85 to i64, !dbg !883
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !883
  %88 = load i16, ptr %87, align 2, !dbg !883, !tbaa !854
  %89 = and i16 %88, 8192, !dbg !883
  %90 = icmp eq i16 %89, 0, !dbg !883
  br i1 %90, label %91, label %98, !dbg !884

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !885
  %93 = icmp ne i8 %92, 0, !dbg !885
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !887
  br i1 %95, label %96, label %98, !dbg !887

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !888
  call void @llvm.dbg.value(metadata ptr %97, metadata !275, metadata !DIExpression()), !dbg !811
  br label %63, !dbg !867, !llvm.loop !889

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !891
  %100 = load ptr, ptr @stdout, align 8, !dbg !891, !tbaa !775
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !891
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !824, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !824, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !824, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !824, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !824, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !824, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !824, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !824, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !824, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !824, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !332, metadata !DIExpression()), !dbg !811
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.20, i64 noundef 6) #38, !dbg !912
  %103 = icmp eq i32 %102, 0, !dbg !912
  br i1 %103, label %107, label %104, !dbg !914

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.21, i64 noundef 9) #38, !dbg !915
  %106 = icmp eq i32 %105, 0, !dbg !915
  br i1 %106, label %107, label %110, !dbg !916

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !917
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4, i32 noundef %108, ptr noundef %59) #37, !dbg !917
  br label %113, !dbg !919

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !920
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.4, i32 noundef %111, ptr noundef %59) #37, !dbg !920
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !922, !tbaa !775
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %114), !dbg !922
  %116 = load ptr, ptr @stdout, align 8, !dbg !923, !tbaa !775
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %116), !dbg !923
  %118 = ptrtoint ptr %64 to i64, !dbg !924
  %119 = sub i64 %118, %99, !dbg !924
  %120 = load ptr, ptr @stdout, align 8, !dbg !924, !tbaa !775
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !924
  %122 = load ptr, ptr @stdout, align 8, !dbg !925, !tbaa !775
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %122), !dbg !925
  %124 = load ptr, ptr @stdout, align 8, !dbg !926, !tbaa !775
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.49, ptr noundef %124), !dbg !926
  %126 = load ptr, ptr @stdout, align 8, !dbg !927, !tbaa !775
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !927
  br label %128, !dbg !928

128:                                              ; preds = %113, %19
  ret void, !dbg !928
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emit_ancillary_info() unnamed_addr #6 !dbg !929 {
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !933, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !941, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata ptr poison, metadata !941, metadata !DIExpression()), !dbg !946
  tail call void @emit_bug_reporting_address() #37, !dbg !947
  %1 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !948
  call void @llvm.dbg.value(metadata ptr %1, metadata !944, metadata !DIExpression()), !dbg !946
  %2 = icmp eq ptr %1, null, !dbg !949
  br i1 %2, label %10, label %3, !dbg !951

3:                                                ; preds = %0
  %4 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.53, i64 noundef 3) #38, !dbg !952
  %5 = icmp eq i32 %4, 0, !dbg !952
  br i1 %5, label %10, label %6, !dbg !953

6:                                                ; preds = %3
  %7 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #37, !dbg !954
  %8 = load ptr, ptr @stdout, align 8, !dbg !954, !tbaa !775
  %9 = tail call i32 @fputs_unlocked(ptr noundef %7, ptr noundef %8), !dbg !954
  br label %10, !dbg !956

10:                                               ; preds = %6, %3, %0
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !941, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !945, metadata !DIExpression()), !dbg !946
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #37, !dbg !957
  %12 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %11, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.4) #37, !dbg !957
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #37, !dbg !958
  %14 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.57) #37, !dbg !958
  ret void, !dbg !959
}

; Function Attrs: noreturn nounwind
declare !dbg !960 void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !962 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !966 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !970 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !973 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !976 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !979 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !982 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !988 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !989 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !dbg !995 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1000, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata ptr %1, metadata !1001, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i8 1, metadata !1002, metadata !DIExpression()), !dbg !1023
  %3 = tail call ptr @getenv(ptr noundef nonnull @.str.15) #37, !dbg !1024
  %4 = icmp ne ptr %3, null, !dbg !1025
  call void @llvm.dbg.value(metadata i1 %4, metadata !1003, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1023
  br i1 %4, label %5, label %12, !dbg !1026

5:                                                ; preds = %2
  %6 = icmp sgt i32 %0, 1, !dbg !1027
  br i1 %6, label %7, label %12, !dbg !1028

7:                                                ; preds = %5
  %8 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !1029
  %9 = load ptr, ptr %8, align 8, !dbg !1029, !tbaa !775
  call void @llvm.dbg.value(metadata ptr %9, metadata !824, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !830, metadata !DIExpression()), !dbg !1030
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(3) @.str.16) #38, !dbg !1032
  %11 = icmp eq i32 %10, 0, !dbg !1033
  br label %12

12:                                               ; preds = %5, %7, %2
  %13 = phi i1 [ true, %2 ], [ false, %5 ], [ %11, %7 ]
  call void @llvm.dbg.value(metadata i1 %13, metadata !1004, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1023
  call void @llvm.dbg.value(metadata i8 0, metadata !1005, metadata !DIExpression()), !dbg !1023
  %14 = load ptr, ptr %1, align 8, !dbg !1034, !tbaa !775
  tail call void @set_program_name(ptr noundef %14) #37, !dbg !1035
  %15 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.17) #37, !dbg !1036
  %16 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #37, !dbg !1037
  %17 = tail call ptr @textdomain(ptr noundef nonnull @.str.18) #37, !dbg !1038
  %18 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1039
  %19 = icmp eq i32 %0, 2
  %20 = and i1 %19, %13, !dbg !1040
  br i1 %20, label %21, label %35, !dbg !1040

21:                                               ; preds = %12
  %22 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !1042
  %23 = load ptr, ptr %22, align 8, !dbg !1042, !tbaa !775
  call void @llvm.dbg.value(metadata ptr %23, metadata !824, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata ptr @.str.20, metadata !830, metadata !DIExpression()), !dbg !1045
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(7) @.str.20) #38, !dbg !1047
  %25 = icmp eq i32 %24, 0, !dbg !1048
  br i1 %25, label %26, label %27, !dbg !1049

26:                                               ; preds = %21
  tail call void @usage(i32 noundef 0) #40, !dbg !1050
  unreachable, !dbg !1050

27:                                               ; preds = %21
  call void @llvm.dbg.value(metadata ptr %23, metadata !824, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.value(metadata ptr @.str.21, metadata !830, metadata !DIExpression()), !dbg !1051
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(10) @.str.21) #38, !dbg !1054
  %29 = icmp eq i32 %28, 0, !dbg !1055
  br i1 %29, label %30, label %35, !dbg !1056

30:                                               ; preds = %27
  %31 = load ptr, ptr @stdout, align 8, !dbg !1057, !tbaa !775
  %32 = load ptr, ptr @Version, align 8, !dbg !1059, !tbaa !775
  %33 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.23) #37, !dbg !1060
  %34 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.24) #37, !dbg !1060
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %31, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.22, ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef null) #37, !dbg !1061
  br label %259, !dbg !1062

35:                                               ; preds = %27, %12
  %36 = add nsw i32 %0, -1, !dbg !1063
  call void @llvm.dbg.value(metadata i32 %36, metadata !1000, metadata !DIExpression()), !dbg !1023
  %37 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !1064
  call void @llvm.dbg.value(metadata ptr %37, metadata !1001, metadata !DIExpression()), !dbg !1023
  %38 = icmp sgt i32 %0, 1
  %39 = and i1 %38, %13, !dbg !1065
  br i1 %39, label %46, label %85, !dbg !1065

40:                                               ; preds = %80, %69
  %41 = phi i8 [ %48, %69 ], [ %81, %80 ], !dbg !1066
  %42 = phi i8 [ %50, %69 ], [ %82, %80 ], !dbg !1067
  %43 = add nsw i32 %49, -1, !dbg !1068
  call void @llvm.dbg.value(metadata i32 %43, metadata !1000, metadata !DIExpression()), !dbg !1023
  %44 = getelementptr inbounds ptr, ptr %47, i64 1, !dbg !1069
  call void @llvm.dbg.value(metadata i8 %42, metadata !1005, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i8 %41, metadata !1002, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata ptr %44, metadata !1001, metadata !DIExpression()), !dbg !1023
  %45 = icmp sgt i32 %49, 1, !dbg !1070
  br i1 %45, label %46, label %244, !dbg !1071

46:                                               ; preds = %35, %40
  %47 = phi ptr [ %44, %40 ], [ %37, %35 ], !dbg !1064
  %48 = phi i8 [ %41, %40 ], [ 1, %35 ], !dbg !1066
  %49 = phi i32 [ %43, %40 ], [ %36, %35 ], !dbg !1063
  %50 = phi i8 [ %42, %40 ], [ 0, %35 ], !dbg !1067
  call void @llvm.dbg.value(metadata i8 %50, metadata !1005, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i32 %49, metadata !1000, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i8 %48, metadata !1002, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata ptr %47, metadata !1001, metadata !DIExpression()), !dbg !1023
  %51 = load ptr, ptr %47, align 8, !dbg !1072, !tbaa !775
  %52 = load i8, ptr %51, align 1, !dbg !1073, !tbaa !822
  %53 = icmp eq i8 %52, 45, !dbg !1074
  br i1 %53, label %54, label %85, !dbg !1075

54:                                               ; preds = %46
  %55 = getelementptr inbounds i8, ptr %51, i64 1, !dbg !1076
  call void @llvm.dbg.value(metadata ptr %55, metadata !1006, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i64 0, metadata !1009, metadata !DIExpression()), !dbg !1077
  %56 = load i8, ptr %55, align 1, !dbg !1078, !tbaa !822
  %57 = icmp eq i8 %56, 0, !dbg !1081
  br i1 %57, label %85, label %58, !dbg !1081

58:                                               ; preds = %54, %62
  %59 = phi i8 [ %65, %62 ], [ %56, %54 ]
  %60 = phi i64 [ %63, %62 ], [ 0, %54 ]
  call void @llvm.dbg.value(metadata i64 %60, metadata !1009, metadata !DIExpression()), !dbg !1077
  %61 = sext i8 %59 to i32, !dbg !1082
  switch i32 %61, label %85 [
    i32 101, label %62
    i32 69, label %62
    i32 110, label %62
  ], !dbg !1083

62:                                               ; preds = %58, %58, %58
  %63 = add i64 %60, 1, !dbg !1084
  call void @llvm.dbg.value(metadata i64 %63, metadata !1009, metadata !DIExpression()), !dbg !1077
  %64 = getelementptr inbounds i8, ptr %55, i64 %63, !dbg !1078
  %65 = load i8, ptr %64, align 1, !dbg !1078, !tbaa !822
  %66 = icmp eq i8 %65, 0, !dbg !1081
  br i1 %66, label %67, label %58, !dbg !1081, !llvm.loop !1085

67:                                               ; preds = %62
  %68 = icmp eq i64 %63, 0, !dbg !1087
  br i1 %68, label %85, label %69, !dbg !1089

69:                                               ; preds = %67
  call void @llvm.dbg.value(metadata ptr %55, metadata !1006, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i8 %50, metadata !1005, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i8 %48, metadata !1002, metadata !DIExpression()), !dbg !1023
  br i1 %57, label %40, label %70, !dbg !1090

70:                                               ; preds = %69, %80
  %71 = phi i8 [ %83, %80 ], [ %56, %69 ]
  %72 = phi ptr [ %75, %80 ], [ %55, %69 ]
  %73 = phi i8 [ %82, %80 ], [ %50, %69 ]
  %74 = phi i8 [ %81, %80 ], [ %48, %69 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !1006, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i8 %73, metadata !1005, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i8 %74, metadata !1002, metadata !DIExpression()), !dbg !1023
  %75 = getelementptr inbounds i8, ptr %72, i64 1, !dbg !1091
  call void @llvm.dbg.value(metadata ptr %75, metadata !1006, metadata !DIExpression()), !dbg !1077
  %76 = sext i8 %71 to i32, !dbg !1092
  switch i32 %76, label %80 [
    i32 101, label %77
    i32 69, label %78
    i32 110, label %79
  ], !dbg !1093

77:                                               ; preds = %70
  call void @llvm.dbg.value(metadata i8 1, metadata !1005, metadata !DIExpression()), !dbg !1023
  br label %80, !dbg !1094

78:                                               ; preds = %70
  call void @llvm.dbg.value(metadata i8 0, metadata !1005, metadata !DIExpression()), !dbg !1023
  br label %80, !dbg !1096

79:                                               ; preds = %70
  call void @llvm.dbg.value(metadata i8 0, metadata !1002, metadata !DIExpression()), !dbg !1023
  br label %80, !dbg !1097

80:                                               ; preds = %70, %79, %78, %77
  %81 = phi i8 [ %74, %70 ], [ 0, %79 ], [ %74, %78 ], [ %74, %77 ], !dbg !1023
  %82 = phi i8 [ %73, %70 ], [ %73, %79 ], [ 0, %78 ], [ 1, %77 ], !dbg !1023
  call void @llvm.dbg.value(metadata ptr %75, metadata !1006, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i8 %82, metadata !1005, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i8 %81, metadata !1002, metadata !DIExpression()), !dbg !1023
  %83 = load i8, ptr %75, align 1, !dbg !1098, !tbaa !822
  %84 = icmp eq i8 %83, 0, !dbg !1090
  br i1 %84, label %40, label %70, !dbg !1090, !llvm.loop !1099

85:                                               ; preds = %54, %67, %46, %58, %35
  %86 = phi ptr [ %37, %35 ], [ %47, %58 ], [ %47, %46 ], [ %47, %67 ], [ %47, %54 ], !dbg !1064
  %87 = phi i8 [ 1, %35 ], [ %48, %58 ], [ %48, %46 ], [ %48, %67 ], [ %48, %54 ], !dbg !1066
  %88 = phi i32 [ %36, %35 ], [ %49, %58 ], [ %49, %46 ], [ %49, %67 ], [ %49, %54 ], !dbg !1063
  %89 = phi i8 [ 0, %35 ], [ %50, %58 ], [ %50, %46 ], [ %50, %67 ], [ %50, %54 ], !dbg !1067
  call void @llvm.dbg.value(metadata i8 %89, metadata !1005, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i32 %88, metadata !1000, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i8 %87, metadata !1002, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata ptr %86, metadata !1001, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.label(metadata !1021), !dbg !1101
  %90 = and i8 %89, 1, !dbg !1102
  %91 = icmp ne i8 %90, 0, !dbg !1102
  %92 = or i1 %4, %91, !dbg !1103
  call void @llvm.dbg.value(metadata i32 %88, metadata !1000, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i32 %88, metadata !1000, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata ptr %86, metadata !1001, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata ptr %86, metadata !1001, metadata !DIExpression()), !dbg !1023
  %93 = icmp sgt i32 %88, 0, !dbg !1104
  br i1 %92, label %100, label %94, !dbg !1103

94:                                               ; preds = %85
  br i1 %93, label %95, label %244, !dbg !1105

95:                                               ; preds = %94
  call void @llvm.dbg.value(metadata i32 %88, metadata !1000, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata ptr %86, metadata !1001, metadata !DIExpression()), !dbg !1023
  %96 = load ptr, ptr %86, align 8, !dbg !1107, !tbaa !775
  %97 = load ptr, ptr @stdout, align 8, !dbg !1107, !tbaa !775
  %98 = tail call i32 @fputs_unlocked(ptr noundef %96, ptr noundef %97), !dbg !1107
  call void @llvm.dbg.value(metadata i32 %88, metadata !1000, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1023
  call void @llvm.dbg.value(metadata ptr %86, metadata !1001, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1023
  %99 = icmp eq i32 %88, 1, !dbg !1109
  br i1 %99, label %244, label %224, !dbg !1111

100:                                              ; preds = %85
  br i1 %93, label %101, label %244, !dbg !1112

101:                                              ; preds = %100, %223
  %102 = phi i32 [ %209, %223 ], [ %88, %100 ]
  %103 = phi ptr [ %210, %223 ], [ %86, %100 ]
  call void @llvm.dbg.value(metadata i32 %102, metadata !1000, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata ptr %103, metadata !1001, metadata !DIExpression()), !dbg !1023
  %104 = load ptr, ptr %103, align 8, !dbg !1113, !tbaa !775
  call void @llvm.dbg.value(metadata ptr %104, metadata !1010, metadata !DIExpression()), !dbg !1114
  br label %105, !dbg !1115

105:                                              ; preds = %205, %101
  %106 = phi ptr [ %104, %101 ], [ %194, %205 ], !dbg !1114
  call void @llvm.dbg.value(metadata ptr %106, metadata !1010, metadata !DIExpression()), !dbg !1114
  %107 = getelementptr inbounds i8, ptr %106, i64 1, !dbg !1116
  call void @llvm.dbg.value(metadata ptr %107, metadata !1010, metadata !DIExpression()), !dbg !1114
  %108 = load i8, ptr %106, align 1, !dbg !1117, !tbaa !822
  call void @llvm.dbg.value(metadata i8 %108, metadata !1014, metadata !DIExpression()), !dbg !1114
  switch i8 %108, label %193 [
    i8 0, label %208
    i8 92, label %109
  ], !dbg !1115

109:                                              ; preds = %105
  %110 = load i8, ptr %107, align 1, !dbg !1118, !tbaa !822
  %111 = icmp eq i8 %110, 0, !dbg !1118
  br i1 %111, label %193, label %112, !dbg !1119

112:                                              ; preds = %109
  %113 = getelementptr inbounds i8, ptr %106, i64 2, !dbg !1120
  call void @llvm.dbg.value(metadata ptr %113, metadata !1010, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %110, metadata !1014, metadata !DIExpression()), !dbg !1114
  switch i8 %110, label %182 [
    i8 97, label %114
    i8 98, label %115
    i8 99, label %259
    i8 101, label %116
    i8 102, label %117
    i8 110, label %118
    i8 114, label %119
    i8 116, label %120
    i8 118, label %121
    i8 120, label %122
    i8 48, label %155
    i8 49, label %161
    i8 50, label %161
    i8 51, label %161
    i8 52, label %161
    i8 53, label %161
    i8 54, label %161
    i8 55, label %161
    i8 92, label %193
  ], !dbg !1121

114:                                              ; preds = %112
  call void @llvm.dbg.value(metadata i8 7, metadata !1014, metadata !DIExpression()), !dbg !1114
  br label %193, !dbg !1122

115:                                              ; preds = %112
  call void @llvm.dbg.value(metadata i8 8, metadata !1014, metadata !DIExpression()), !dbg !1114
  br label %193, !dbg !1123

116:                                              ; preds = %112
  call void @llvm.dbg.value(metadata i8 27, metadata !1014, metadata !DIExpression()), !dbg !1114
  br label %193, !dbg !1124

117:                                              ; preds = %112
  call void @llvm.dbg.value(metadata i8 12, metadata !1014, metadata !DIExpression()), !dbg !1114
  br label %193, !dbg !1125

118:                                              ; preds = %112
  call void @llvm.dbg.value(metadata i8 10, metadata !1014, metadata !DIExpression()), !dbg !1114
  br label %193, !dbg !1126

119:                                              ; preds = %112
  call void @llvm.dbg.value(metadata i8 13, metadata !1014, metadata !DIExpression()), !dbg !1114
  br label %193, !dbg !1127

120:                                              ; preds = %112
  call void @llvm.dbg.value(metadata i8 9, metadata !1014, metadata !DIExpression()), !dbg !1114
  br label %193, !dbg !1128

121:                                              ; preds = %112
  call void @llvm.dbg.value(metadata i8 11, metadata !1014, metadata !DIExpression()), !dbg !1114
  br label %193, !dbg !1129

122:                                              ; preds = %112
  %123 = load i8, ptr %113, align 1, !dbg !1130, !tbaa !822
  call void @llvm.dbg.value(metadata i8 %123, metadata !1015, metadata !DIExpression()), !dbg !1131
  %124 = zext i8 %123 to i32, !dbg !1132
  call void @llvm.dbg.value(metadata i32 %124, metadata !1134, metadata !DIExpression()), !dbg !1140
  switch i8 %123, label %182 [
    i8 48, label %125
    i8 49, label %125
    i8 50, label %125
    i8 51, label %125
    i8 52, label %125
    i8 53, label %125
    i8 54, label %125
    i8 55, label %125
    i8 56, label %125
    i8 57, label %125
    i8 97, label %125
    i8 98, label %125
    i8 99, label %125
    i8 100, label %125
    i8 101, label %125
    i8 102, label %125
    i8 65, label %125
    i8 66, label %125
    i8 67, label %125
    i8 68, label %125
    i8 69, label %125
    i8 70, label %125
  ], !dbg !1142

125:                                              ; preds = %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122
  %126 = getelementptr inbounds i8, ptr %106, i64 3, !dbg !1143
  call void @llvm.dbg.value(metadata ptr %126, metadata !1010, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %123, metadata !1144, metadata !DIExpression()), !dbg !1149
  switch i8 %123, label %127 [
    i8 97, label %134
    i8 65, label %134
    i8 98, label %129
    i8 66, label %129
    i8 99, label %130
    i8 67, label %130
    i8 100, label %131
    i8 68, label %131
    i8 101, label %132
    i8 69, label %132
    i8 102, label %133
    i8 70, label %133
  ], !dbg !1151

127:                                              ; preds = %125
  %128 = add nsw i32 %124, -48, !dbg !1152
  br label %134, !dbg !1154

129:                                              ; preds = %125, %125
  br label %134, !dbg !1155

130:                                              ; preds = %125, %125
  br label %134, !dbg !1156

131:                                              ; preds = %125, %125
  br label %134, !dbg !1157

132:                                              ; preds = %125, %125
  br label %134, !dbg !1158

133:                                              ; preds = %125, %125
  br label %134, !dbg !1159

134:                                              ; preds = %125, %125, %127, %129, %130, %131, %132, %133
  %135 = phi i32 [ %128, %127 ], [ 15, %133 ], [ 14, %132 ], [ 13, %131 ], [ 12, %130 ], [ 11, %129 ], [ 10, %125 ], [ 10, %125 ], !dbg !1160
  call void @llvm.dbg.value(metadata i32 %135, metadata !1014, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1114
  %136 = load i8, ptr %126, align 1, !dbg !1161, !tbaa !822
  call void @llvm.dbg.value(metadata i8 %136, metadata !1015, metadata !DIExpression()), !dbg !1131
  %137 = zext i8 %136 to i32, !dbg !1162
  call void @llvm.dbg.value(metadata i32 %137, metadata !1134, metadata !DIExpression()), !dbg !1164
  switch i8 %136, label %151 [
    i8 48, label %138
    i8 49, label %138
    i8 50, label %138
    i8 51, label %138
    i8 52, label %138
    i8 53, label %138
    i8 54, label %138
    i8 55, label %138
    i8 56, label %138
    i8 57, label %138
    i8 97, label %138
    i8 98, label %138
    i8 99, label %138
    i8 100, label %138
    i8 101, label %138
    i8 102, label %138
    i8 65, label %138
    i8 66, label %138
    i8 67, label %138
    i8 68, label %138
    i8 69, label %138
    i8 70, label %138
  ], !dbg !1166

138:                                              ; preds = %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134
  %139 = getelementptr inbounds i8, ptr %106, i64 4, !dbg !1167
  call void @llvm.dbg.value(metadata ptr %139, metadata !1010, metadata !DIExpression()), !dbg !1114
  %140 = shl nuw nsw i32 %135, 4, !dbg !1169
  call void @llvm.dbg.value(metadata i8 %136, metadata !1144, metadata !DIExpression()), !dbg !1170
  switch i8 %136, label %141 [
    i8 97, label %148
    i8 65, label %148
    i8 98, label %143
    i8 66, label %143
    i8 99, label %144
    i8 67, label %144
    i8 100, label %145
    i8 68, label %145
    i8 101, label %146
    i8 69, label %146
    i8 102, label %147
    i8 70, label %147
  ], !dbg !1172

141:                                              ; preds = %138
  %142 = add nsw i32 %137, -48, !dbg !1173
  br label %148, !dbg !1174

143:                                              ; preds = %138, %138
  br label %148, !dbg !1175

144:                                              ; preds = %138, %138
  br label %148, !dbg !1176

145:                                              ; preds = %138, %138
  br label %148, !dbg !1177

146:                                              ; preds = %138, %138
  br label %148, !dbg !1178

147:                                              ; preds = %138, %138
  br label %148, !dbg !1179

148:                                              ; preds = %138, %138, %141, %143, %144, %145, %146, %147
  %149 = phi i32 [ %142, %141 ], [ 15, %147 ], [ 14, %146 ], [ 13, %145 ], [ 12, %144 ], [ 11, %143 ], [ 10, %138 ], [ 10, %138 ], !dbg !1180
  %150 = add nuw nsw i32 %149, %140, !dbg !1181
  call void @llvm.dbg.value(metadata i32 %150, metadata !1014, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1114
  br label %151, !dbg !1182

151:                                              ; preds = %148, %134
  %152 = phi ptr [ %139, %148 ], [ %126, %134 ], !dbg !1131
  %153 = phi i32 [ %150, %148 ], [ %135, %134 ]
  %154 = trunc i32 %153 to i8, !dbg !1131
  call void @llvm.dbg.value(metadata i8 %154, metadata !1014, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata ptr %152, metadata !1010, metadata !DIExpression()), !dbg !1114
  br label %193

155:                                              ; preds = %112
  call void @llvm.dbg.value(metadata i8 0, metadata !1014, metadata !DIExpression()), !dbg !1114
  %156 = load i8, ptr %113, align 1, !dbg !1183, !tbaa !822
  %157 = and i8 %156, -8, !dbg !1185
  %158 = icmp eq i8 %157, 48, !dbg !1185
  br i1 %158, label %159, label %193, !dbg !1185

159:                                              ; preds = %155
  %160 = getelementptr inbounds i8, ptr %106, i64 3, !dbg !1186
  call void @llvm.dbg.value(metadata ptr %160, metadata !1010, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %156, metadata !1014, metadata !DIExpression()), !dbg !1114
  br label %161, !dbg !1187

161:                                              ; preds = %112, %112, %112, %112, %112, %112, %112, %159
  %162 = phi ptr [ %113, %112 ], [ %113, %112 ], [ %113, %112 ], [ %113, %112 ], [ %113, %112 ], [ %113, %112 ], [ %113, %112 ], [ %160, %159 ], !dbg !1188
  %163 = phi i8 [ %110, %112 ], [ %110, %112 ], [ %110, %112 ], [ %110, %112 ], [ %110, %112 ], [ %110, %112 ], [ %110, %112 ], [ %156, %159 ], !dbg !1188
  call void @llvm.dbg.value(metadata i8 %163, metadata !1014, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata ptr %162, metadata !1010, metadata !DIExpression()), !dbg !1114
  %164 = add nsw i8 %163, -48, !dbg !1189
  call void @llvm.dbg.value(metadata i8 %164, metadata !1014, metadata !DIExpression()), !dbg !1114
  %165 = load i8, ptr %162, align 1, !dbg !1190, !tbaa !822
  %166 = and i8 %165, -8, !dbg !1192
  %167 = icmp eq i8 %166, 48, !dbg !1192
  %168 = shl nuw nsw i8 %164, 3, !dbg !1192
  %169 = add i8 %165, -48, !dbg !1192
  %170 = add i8 %169, %168, !dbg !1192
  %171 = zext i1 %167 to i64, !dbg !1192
  %172 = getelementptr i8, ptr %162, i64 %171, !dbg !1192
  %173 = select i1 %167, i8 %170, i8 %164, !dbg !1192
  call void @llvm.dbg.value(metadata i8 %173, metadata !1014, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata ptr %172, metadata !1010, metadata !DIExpression()), !dbg !1114
  %174 = load i8, ptr %172, align 1, !dbg !1193, !tbaa !822
  %175 = and i8 %174, -8, !dbg !1195
  %176 = icmp eq i8 %175, 48, !dbg !1195
  br i1 %176, label %177, label %193, !dbg !1195

177:                                              ; preds = %161
  %178 = shl i8 %173, 3, !dbg !1196
  %179 = getelementptr inbounds i8, ptr %172, i64 1, !dbg !1197
  call void @llvm.dbg.value(metadata ptr %179, metadata !1010, metadata !DIExpression()), !dbg !1114
  %180 = add nsw i8 %174, -48, !dbg !1198
  %181 = add nuw i8 %180, %178, !dbg !1199
  call void @llvm.dbg.value(metadata i8 %181, metadata !1014, metadata !DIExpression()), !dbg !1114
  br label %193, !dbg !1200

182:                                              ; preds = %122, %112
  call void @llvm.dbg.value(metadata i8 %110, metadata !1014, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata ptr %113, metadata !1010, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i32 92, metadata !1201, metadata !DIExpression()), !dbg !1207
  %183 = load ptr, ptr @stdout, align 8, !dbg !1209, !tbaa !775
  %184 = getelementptr inbounds %struct._IO_FILE, ptr %183, i64 0, i32 5, !dbg !1209
  %185 = load ptr, ptr %184, align 8, !dbg !1209, !tbaa !1210
  %186 = getelementptr inbounds %struct._IO_FILE, ptr %183, i64 0, i32 6, !dbg !1209
  %187 = load ptr, ptr %186, align 8, !dbg !1209, !tbaa !1213
  %188 = icmp ult ptr %185, %187, !dbg !1209
  br i1 %188, label %191, label %189, !dbg !1209, !prof !1214

189:                                              ; preds = %182
  %190 = tail call i32 @__overflow(ptr noundef nonnull %183, i32 noundef 92) #37, !dbg !1209
  br label %193, !dbg !1209

191:                                              ; preds = %182
  %192 = getelementptr inbounds i8, ptr %185, i64 1, !dbg !1209
  store ptr %192, ptr %184, align 8, !dbg !1209, !tbaa !1210
  store i8 92, ptr %185, align 1, !dbg !1209, !tbaa !822
  br label %193, !dbg !1209

193:                                              ; preds = %191, %189, %151, %105, %114, %115, %116, %117, %118, %119, %120, %121, %112, %155, %177, %161, %109
  %194 = phi ptr [ %113, %112 ], [ %179, %177 ], [ %172, %161 ], [ %113, %155 ], [ %113, %121 ], [ %113, %120 ], [ %113, %119 ], [ %113, %118 ], [ %113, %117 ], [ %113, %116 ], [ %113, %115 ], [ %113, %114 ], [ %107, %109 ], [ %107, %105 ], [ %152, %151 ], [ %113, %189 ], [ %113, %191 ], !dbg !1114
  %195 = phi i8 [ %110, %112 ], [ %181, %177 ], [ %173, %161 ], [ 0, %155 ], [ 11, %121 ], [ 9, %120 ], [ 13, %119 ], [ 10, %118 ], [ 12, %117 ], [ 27, %116 ], [ 8, %115 ], [ 7, %114 ], [ 92, %109 ], [ %108, %105 ], [ %154, %151 ], [ %110, %189 ], [ %110, %191 ], !dbg !1114
  call void @llvm.dbg.value(metadata i8 %195, metadata !1014, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata ptr %194, metadata !1010, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %195, metadata !1201, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1215
  %196 = load ptr, ptr @stdout, align 8, !dbg !1217, !tbaa !775
  %197 = getelementptr inbounds %struct._IO_FILE, ptr %196, i64 0, i32 5, !dbg !1217
  %198 = load ptr, ptr %197, align 8, !dbg !1217, !tbaa !1210
  %199 = getelementptr inbounds %struct._IO_FILE, ptr %196, i64 0, i32 6, !dbg !1217
  %200 = load ptr, ptr %199, align 8, !dbg !1217, !tbaa !1213
  %201 = icmp ult ptr %198, %200, !dbg !1217
  br i1 %201, label %206, label %202, !dbg !1217, !prof !1214

202:                                              ; preds = %193
  %203 = zext i8 %195 to i32, !dbg !1218
  call void @llvm.dbg.value(metadata i32 %203, metadata !1201, metadata !DIExpression()), !dbg !1215
  %204 = tail call i32 @__overflow(ptr noundef nonnull %196, i32 noundef %203) #37, !dbg !1217
  br label %205, !dbg !1217

205:                                              ; preds = %202, %206
  br label %105, !dbg !1114, !llvm.loop !1219

206:                                              ; preds = %193
  %207 = getelementptr inbounds i8, ptr %198, i64 1, !dbg !1217
  store ptr %207, ptr %197, align 8, !dbg !1217, !tbaa !1210
  store i8 %195, ptr %198, align 1, !dbg !1217, !tbaa !822
  br label %205, !dbg !1217

208:                                              ; preds = %105
  %209 = add nsw i32 %102, -1, !dbg !1221
  call void @llvm.dbg.value(metadata i32 %209, metadata !1000, metadata !DIExpression()), !dbg !1023
  %210 = getelementptr inbounds ptr, ptr %103, i64 1, !dbg !1222
  call void @llvm.dbg.value(metadata ptr %210, metadata !1001, metadata !DIExpression()), !dbg !1023
  %211 = icmp sgt i32 %102, 1, !dbg !1223
  br i1 %211, label %212, label %244, !dbg !1225

212:                                              ; preds = %208
  call void @llvm.dbg.value(metadata i32 32, metadata !1201, metadata !DIExpression()), !dbg !1226
  %213 = load ptr, ptr @stdout, align 8, !dbg !1228, !tbaa !775
  %214 = getelementptr inbounds %struct._IO_FILE, ptr %213, i64 0, i32 5, !dbg !1228
  %215 = load ptr, ptr %214, align 8, !dbg !1228, !tbaa !1210
  %216 = getelementptr inbounds %struct._IO_FILE, ptr %213, i64 0, i32 6, !dbg !1228
  %217 = load ptr, ptr %216, align 8, !dbg !1228, !tbaa !1213
  %218 = icmp ult ptr %215, %217, !dbg !1228
  br i1 %218, label %221, label %219, !dbg !1228, !prof !1214

219:                                              ; preds = %212
  %220 = tail call i32 @__overflow(ptr noundef nonnull %213, i32 noundef 32) #37, !dbg !1228
  br label %223, !dbg !1228

221:                                              ; preds = %212
  %222 = getelementptr inbounds i8, ptr %215, i64 1, !dbg !1228
  store ptr %222, ptr %214, align 8, !dbg !1228, !tbaa !1210
  store i8 32, ptr %215, align 1, !dbg !1228, !tbaa !822
  br label %223, !dbg !1228

223:                                              ; preds = %221, %219
  br label %101, !dbg !1023, !llvm.loop !1229

224:                                              ; preds = %95, %239
  %225 = phi ptr [ %228, %239 ], [ %86, %95 ]
  %226 = phi i32 [ %227, %239 ], [ %88, %95 ]
  %227 = add nsw i32 %226, -1, !dbg !1231
  %228 = getelementptr inbounds ptr, ptr %225, i64 1, !dbg !1232
  call void @llvm.dbg.value(metadata i32 32, metadata !1201, metadata !DIExpression()), !dbg !1233
  %229 = load ptr, ptr @stdout, align 8, !dbg !1235, !tbaa !775
  %230 = getelementptr inbounds %struct._IO_FILE, ptr %229, i64 0, i32 5, !dbg !1235
  %231 = load ptr, ptr %230, align 8, !dbg !1235, !tbaa !1210
  %232 = getelementptr inbounds %struct._IO_FILE, ptr %229, i64 0, i32 6, !dbg !1235
  %233 = load ptr, ptr %232, align 8, !dbg !1235, !tbaa !1213
  %234 = icmp ult ptr %231, %233, !dbg !1235
  br i1 %234, label %237, label %235, !dbg !1235, !prof !1214

235:                                              ; preds = %224
  %236 = tail call i32 @__overflow(ptr noundef nonnull %229, i32 noundef 32) #37, !dbg !1235
  br label %239, !dbg !1235

237:                                              ; preds = %224
  %238 = getelementptr inbounds i8, ptr %231, i64 1, !dbg !1235
  store ptr %238, ptr %230, align 8, !dbg !1235, !tbaa !1210
  store i8 32, ptr %231, align 1, !dbg !1235, !tbaa !822
  br label %239, !dbg !1235

239:                                              ; preds = %237, %235
  call void @llvm.dbg.value(metadata i32 %227, metadata !1000, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata ptr %228, metadata !1001, metadata !DIExpression()), !dbg !1023
  %240 = load ptr, ptr %228, align 8, !dbg !1107, !tbaa !775
  %241 = load ptr, ptr @stdout, align 8, !dbg !1107, !tbaa !775
  %242 = tail call i32 @fputs_unlocked(ptr noundef %240, ptr noundef %241), !dbg !1107
  call void @llvm.dbg.value(metadata i32 %227, metadata !1000, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1023
  call void @llvm.dbg.value(metadata ptr %228, metadata !1001, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1023
  %243 = icmp eq i32 %227, 1, !dbg !1109
  br i1 %243, label %244, label %224, !dbg !1111, !llvm.loop !1236

244:                                              ; preds = %40, %239, %208, %95, %94, %100
  %245 = phi i8 [ %87, %94 ], [ %87, %100 ], [ %87, %95 ], [ %87, %208 ], [ %87, %239 ], [ %41, %40 ]
  %246 = and i8 %245, 1, !dbg !1238
  %247 = icmp eq i8 %246, 0, !dbg !1238
  br i1 %247, label %259, label %248, !dbg !1240

248:                                              ; preds = %244
  call void @llvm.dbg.value(metadata i32 10, metadata !1201, metadata !DIExpression()), !dbg !1241
  %249 = load ptr, ptr @stdout, align 8, !dbg !1243, !tbaa !775
  %250 = getelementptr inbounds %struct._IO_FILE, ptr %249, i64 0, i32 5, !dbg !1243
  %251 = load ptr, ptr %250, align 8, !dbg !1243, !tbaa !1210
  %252 = getelementptr inbounds %struct._IO_FILE, ptr %249, i64 0, i32 6, !dbg !1243
  %253 = load ptr, ptr %252, align 8, !dbg !1243, !tbaa !1213
  %254 = icmp ult ptr %251, %253, !dbg !1243
  br i1 %254, label %257, label %255, !dbg !1243, !prof !1214

255:                                              ; preds = %248
  %256 = tail call i32 @__overflow(ptr noundef nonnull %249, i32 noundef 10) #37, !dbg !1243
  br label %259, !dbg !1243

257:                                              ; preds = %248
  %258 = getelementptr inbounds i8, ptr %251, i64 1, !dbg !1243
  store ptr %258, ptr %250, align 8, !dbg !1243, !tbaa !1210
  store i8 10, ptr %251, align 1, !dbg !1243, !tbaa !822
  br label %259, !dbg !1243

259:                                              ; preds = %112, %257, %255, %244, %30
  ret i32 0, !dbg !1244
}

; Function Attrs: nounwind
declare !dbg !1245 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1248 ptr @textdomain(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1249 i32 @atexit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare !dbg !1252 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1255 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1258, metadata !DIExpression()), !dbg !1259
  store ptr %0, ptr @file_name, align 8, !dbg !1260, !tbaa !775
  ret void, !dbg !1261
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #11 !dbg !1262 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1266, metadata !DIExpression()), !dbg !1267
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1268, !tbaa !1269
  ret void, !dbg !1271
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1272 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1277, !tbaa !775
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1278
  %3 = icmp eq i32 %2, 0, !dbg !1279
  br i1 %3, label %22, label %4, !dbg !1280

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1281, !tbaa !1269, !range !1282, !noundef !796
  %6 = icmp eq i8 %5, 0, !dbg !1281
  br i1 %6, label %11, label %7, !dbg !1283

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1284
  %9 = load i32, ptr %8, align 4, !dbg !1284, !tbaa !813
  %10 = icmp eq i32 %9, 32, !dbg !1285
  br i1 %10, label %22, label %11, !dbg !1286

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1.33, i32 noundef 5) #37, !dbg !1287
  call void @llvm.dbg.value(metadata ptr %12, metadata !1274, metadata !DIExpression()), !dbg !1288
  %13 = load ptr, ptr @file_name, align 8, !dbg !1289, !tbaa !775
  %14 = icmp eq ptr %13, null, !dbg !1289
  %15 = tail call ptr @__errno_location() #39, !dbg !1291
  %16 = load i32, ptr %15, align 4, !dbg !1291, !tbaa !813
  br i1 %14, label %19, label %17, !dbg !1292

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1293
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.34, ptr noundef %18, ptr noundef %12) #37, !dbg !1293
  br label %20, !dbg !1293

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.35, ptr noundef %12) #37, !dbg !1294
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1295, !tbaa !813
  tail call void @_exit(i32 noundef %21) #36, !dbg !1296
  unreachable, !dbg !1296

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1297, !tbaa !775
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1299
  %25 = icmp eq i32 %24, 0, !dbg !1300
  br i1 %25, label %28, label %26, !dbg !1301

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1302, !tbaa !813
  tail call void @_exit(i32 noundef %27) #36, !dbg !1303
  unreachable, !dbg !1303

28:                                               ; preds = %22
  ret void, !dbg !1304
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1305 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare !dbg !1310 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #13 !dbg !1312 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1316, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i32 %1, metadata !1317, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata ptr %2, metadata !1318, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata ptr %3, metadata !1319, metadata !DIExpression()), !dbg !1320
  tail call fastcc void @flush_stdout(), !dbg !1321
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1322, !tbaa !775
  %6 = icmp eq ptr %5, null, !dbg !1322
  br i1 %6, label %8, label %7, !dbg !1324

7:                                                ; preds = %4
  tail call void %5() #37, !dbg !1325
  br label %12, !dbg !1325

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1326, !tbaa !775
  %10 = tail call ptr @getprogname() #38, !dbg !1326
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef %10) #37, !dbg !1326
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1328
  ret void, !dbg !1329
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1330 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1332, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata i32 1, metadata !1334, metadata !DIExpression()), !dbg !1337
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1340
  %2 = icmp slt i32 %1, 0, !dbg !1341
  br i1 %2, label %6, label %3, !dbg !1342

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1343, !tbaa !775
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1343
  br label %6, !dbg !1343

6:                                                ; preds = %3, %0
  ret void, !dbg !1344
}

declare !dbg !1345 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1383 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1385, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 %1, metadata !1386, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata ptr %2, metadata !1387, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata ptr %3, metadata !1388, metadata !DIExpression()), !dbg !1389
  %6 = load ptr, ptr @stderr, align 8, !dbg !1390, !tbaa !775
  call void @llvm.dbg.value(metadata ptr %6, metadata !1391, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata ptr %2, metadata !1396, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata ptr %3, metadata !1397, metadata !DIExpression()), !dbg !1398
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #37, !dbg !1400
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1401, !tbaa !813
  %9 = add i32 %8, 1, !dbg !1401
  store i32 %9, ptr @error_message_count, align 4, !dbg !1401, !tbaa !813
  %10 = icmp eq i32 %1, 0, !dbg !1402
  br i1 %10, label %20, label %11, !dbg !1404

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1405, metadata !DIExpression()), !dbg !1413
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1415
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1409, metadata !DIExpression()), !dbg !1416
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1417
  call void @llvm.dbg.value(metadata ptr %12, metadata !1408, metadata !DIExpression()), !dbg !1413
  %13 = icmp eq ptr %12, null, !dbg !1418
  br i1 %13, label %14, label %16, !dbg !1420

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.37, ptr noundef nonnull @.str.5.38, i32 noundef 5) #37, !dbg !1421
  call void @llvm.dbg.value(metadata ptr %15, metadata !1408, metadata !DIExpression()), !dbg !1413
  br label %16, !dbg !1422

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1413
  call void @llvm.dbg.value(metadata ptr %17, metadata !1408, metadata !DIExpression()), !dbg !1413
  %18 = load ptr, ptr @stderr, align 8, !dbg !1423, !tbaa !775
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.39, ptr noundef %17) #37, !dbg !1423
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1424
  br label %20, !dbg !1425

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1426, !tbaa !775
  call void @llvm.dbg.value(metadata i32 10, metadata !1427, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata ptr %21, metadata !1432, metadata !DIExpression()), !dbg !1433
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1435
  %23 = load ptr, ptr %22, align 8, !dbg !1435, !tbaa !1210
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1435
  %25 = load ptr, ptr %24, align 8, !dbg !1435, !tbaa !1213
  %26 = icmp ult ptr %23, %25, !dbg !1435
  br i1 %26, label %29, label %27, !dbg !1435, !prof !1214

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #37, !dbg !1435
  br label %31, !dbg !1435

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1435
  store ptr %30, ptr %22, align 8, !dbg !1435, !tbaa !1210
  store i8 10, ptr %23, align 1, !dbg !1435, !tbaa !822
  br label %31, !dbg !1435

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1436, !tbaa !775
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #37, !dbg !1436
  %34 = icmp eq i32 %0, 0, !dbg !1437
  br i1 %34, label %36, label %35, !dbg !1439

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #36, !dbg !1440
  unreachable, !dbg !1440

36:                                               ; preds = %31
  ret void, !dbg !1441
}

declare !dbg !1442 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1445 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1448 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #4

declare !dbg !1451 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1455 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1459, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i32 %1, metadata !1460, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata ptr %2, metadata !1461, metadata !DIExpression()), !dbg !1468
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #37, !dbg !1469
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1462, metadata !DIExpression()), !dbg !1470
  call void @llvm.va_start(ptr nonnull %4), !dbg !1471
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #41, !dbg !1472
  call void @llvm.va_end(ptr nonnull %4), !dbg !1473
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #37, !dbg !1474
  ret void, !dbg !1474
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 !dbg !369 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !381, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata i32 %1, metadata !382, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata ptr %2, metadata !383, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata i32 %3, metadata !384, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata ptr %4, metadata !385, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata ptr %5, metadata !386, metadata !DIExpression()), !dbg !1475
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1476, !tbaa !813
  %8 = icmp eq i32 %7, 0, !dbg !1476
  br i1 %8, label %23, label %9, !dbg !1478

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1479, !tbaa !813
  %11 = icmp eq i32 %10, %3, !dbg !1482
  br i1 %11, label %12, label %22, !dbg !1483

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1484, !tbaa !775
  %14 = icmp eq ptr %13, %2, !dbg !1485
  br i1 %14, label %36, label %15, !dbg !1486

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1487
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1488
  br i1 %18, label %19, label %22, !dbg !1488

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1489
  %21 = icmp eq i32 %20, 0, !dbg !1490
  br i1 %21, label %36, label %22, !dbg !1491

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1492, !tbaa !775
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1493, !tbaa !813
  br label %23, !dbg !1494

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1495
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1496, !tbaa !775
  %25 = icmp eq ptr %24, null, !dbg !1496
  br i1 %25, label %27, label %26, !dbg !1498

26:                                               ; preds = %23
  tail call void %24() #37, !dbg !1499
  br label %31, !dbg !1499

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1500, !tbaa !775
  %29 = tail call ptr @getprogname() #38, !dbg !1500
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.42, ptr noundef %29) #37, !dbg !1500
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1502, !tbaa !775
  %33 = icmp eq ptr %2, null, !dbg !1502
  %34 = select i1 %33, ptr @.str.3.43, ptr @.str.2.44, !dbg !1502
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #37, !dbg !1502
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1503
  br label %36, !dbg !1504

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1504
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1505 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1509, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i32 %1, metadata !1510, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata ptr %2, metadata !1511, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i32 %3, metadata !1512, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata ptr %4, metadata !1513, metadata !DIExpression()), !dbg !1515
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #37, !dbg !1516
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1514, metadata !DIExpression()), !dbg !1517
  call void @llvm.va_start(ptr nonnull %6), !dbg !1518
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #41, !dbg !1519
  call void @llvm.va_end(ptr nonnull %6), !dbg !1520
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #37, !dbg !1521
  ret void, !dbg !1521
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #16 !dbg !1522 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1525, !tbaa !775
  ret ptr %1, !dbg !1526
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #17 !dbg !1527 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1529, metadata !DIExpression()), !dbg !1532
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1533
  call void @llvm.dbg.value(metadata ptr %2, metadata !1530, metadata !DIExpression()), !dbg !1532
  %3 = icmp eq ptr %2, null, !dbg !1534
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1534
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1534
  call void @llvm.dbg.value(metadata ptr %5, metadata !1531, metadata !DIExpression()), !dbg !1532
  %6 = ptrtoint ptr %5 to i64, !dbg !1535
  %7 = ptrtoint ptr %0 to i64, !dbg !1535
  %8 = sub i64 %6, %7, !dbg !1535
  %9 = icmp sgt i64 %8, 6, !dbg !1537
  br i1 %9, label %10, label %19, !dbg !1538

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1539
  call void @llvm.dbg.value(metadata ptr %11, metadata !1540, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata ptr @.str.58, metadata !1545, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 7, metadata !1546, metadata !DIExpression()), !dbg !1547
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.58, i64 7), !dbg !1549
  %13 = icmp eq i32 %12, 0, !dbg !1550
  br i1 %13, label %14, label %19, !dbg !1551

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1529, metadata !DIExpression()), !dbg !1532
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.59, i64 noundef 3) #38, !dbg !1552
  %16 = icmp eq i32 %15, 0, !dbg !1555
  %17 = select i1 %16, i64 3, i64 0, !dbg !1556
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1556
  br label %19, !dbg !1556

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1532
  call void @llvm.dbg.value(metadata ptr %21, metadata !1531, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata ptr %20, metadata !1529, metadata !DIExpression()), !dbg !1532
  store ptr %20, ptr @program_name, align 8, !dbg !1557, !tbaa !775
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1558, !tbaa !775
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1559, !tbaa !775
  ret void, !dbg !1560
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1561 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !423 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !430, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata ptr %1, metadata !431, metadata !DIExpression()), !dbg !1562
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1563
  call void @llvm.dbg.value(metadata ptr %5, metadata !432, metadata !DIExpression()), !dbg !1562
  %6 = icmp eq ptr %5, %0, !dbg !1564
  br i1 %6, label %7, label %14, !dbg !1566

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1567
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1568
  call void @llvm.dbg.declare(metadata ptr %4, metadata !438, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata ptr %4, metadata !1570, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata ptr %4, metadata !1579, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 0, metadata !1585, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 8, metadata !1586, metadata !DIExpression()), !dbg !1587
  store i64 0, ptr %4, align 8, !dbg !1589
  call void @llvm.dbg.value(metadata ptr %3, metadata !433, metadata !DIExpression(DW_OP_deref)), !dbg !1562
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1590
  %9 = icmp eq i64 %8, 2, !dbg !1592
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !433, metadata !DIExpression()), !dbg !1562
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1593
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1562
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1594
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1594
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1562
  ret ptr %15, !dbg !1594
}

; Function Attrs: nounwind
declare !dbg !1595 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1601 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1606, metadata !DIExpression()), !dbg !1609
  %2 = tail call ptr @__errno_location() #39, !dbg !1610
  %3 = load i32, ptr %2, align 4, !dbg !1610, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %3, metadata !1607, metadata !DIExpression()), !dbg !1609
  %4 = icmp eq ptr %0, null, !dbg !1611
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1611
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #42, !dbg !1612
  call void @llvm.dbg.value(metadata ptr %6, metadata !1608, metadata !DIExpression()), !dbg !1609
  store i32 %3, ptr %2, align 4, !dbg !1613, !tbaa !813
  ret ptr %6, !dbg !1614
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !1615 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1621, metadata !DIExpression()), !dbg !1622
  %2 = icmp eq ptr %0, null, !dbg !1623
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1623
  %4 = load i32, ptr %3, align 8, !dbg !1624, !tbaa !1625
  ret i32 %4, !dbg !1627
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1628 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i32 %1, metadata !1633, metadata !DIExpression()), !dbg !1634
  %3 = icmp eq ptr %0, null, !dbg !1635
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1635
  store i32 %1, ptr %4, align 8, !dbg !1636, !tbaa !1625
  ret void, !dbg !1637
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1638 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1642, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i8 %1, metadata !1643, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i32 %2, metadata !1644, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i8 %1, metadata !1645, metadata !DIExpression()), !dbg !1650
  %4 = icmp eq ptr %0, null, !dbg !1651
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1651
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1652
  %7 = lshr i8 %1, 5, !dbg !1653
  %8 = zext i8 %7 to i64, !dbg !1653
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1654
  call void @llvm.dbg.value(metadata ptr %9, metadata !1646, metadata !DIExpression()), !dbg !1650
  %10 = and i8 %1, 31, !dbg !1655
  %11 = zext i8 %10 to i32, !dbg !1655
  call void @llvm.dbg.value(metadata i32 %11, metadata !1648, metadata !DIExpression()), !dbg !1650
  %12 = load i32, ptr %9, align 4, !dbg !1656, !tbaa !813
  %13 = lshr i32 %12, %11, !dbg !1657
  %14 = and i32 %13, 1, !dbg !1658
  call void @llvm.dbg.value(metadata i32 %14, metadata !1649, metadata !DIExpression()), !dbg !1650
  %15 = xor i32 %13, %2, !dbg !1659
  %16 = and i32 %15, 1, !dbg !1659
  %17 = shl nuw i32 %16, %11, !dbg !1660
  %18 = xor i32 %17, %12, !dbg !1661
  store i32 %18, ptr %9, align 4, !dbg !1661, !tbaa !813
  ret i32 %14, !dbg !1662
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1663 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1667, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i32 %1, metadata !1668, metadata !DIExpression()), !dbg !1670
  %3 = icmp eq ptr %0, null, !dbg !1671
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1673
  call void @llvm.dbg.value(metadata ptr %4, metadata !1667, metadata !DIExpression()), !dbg !1670
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1674
  %6 = load i32, ptr %5, align 4, !dbg !1674, !tbaa !1675
  call void @llvm.dbg.value(metadata i32 %6, metadata !1669, metadata !DIExpression()), !dbg !1670
  store i32 %1, ptr %5, align 4, !dbg !1676, !tbaa !1675
  ret i32 %6, !dbg !1677
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1678 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1682, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata ptr %1, metadata !1683, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata ptr %2, metadata !1684, metadata !DIExpression()), !dbg !1685
  %4 = icmp eq ptr %0, null, !dbg !1686
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1688
  call void @llvm.dbg.value(metadata ptr %5, metadata !1682, metadata !DIExpression()), !dbg !1685
  store i32 10, ptr %5, align 8, !dbg !1689, !tbaa !1625
  %6 = icmp ne ptr %1, null, !dbg !1690
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1692
  br i1 %8, label %10, label %9, !dbg !1692

9:                                                ; preds = %3
  tail call void @abort() #36, !dbg !1693
  unreachable, !dbg !1693

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1694
  store ptr %1, ptr %11, align 8, !dbg !1695, !tbaa !1696
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1697
  store ptr %2, ptr %12, align 8, !dbg !1698, !tbaa !1699
  ret void, !dbg !1700
}

; Function Attrs: noreturn nounwind
declare !dbg !1701 void @abort() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1702 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1706, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i64 %1, metadata !1707, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata ptr %2, metadata !1708, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i64 %3, metadata !1709, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata ptr %4, metadata !1710, metadata !DIExpression()), !dbg !1714
  %6 = icmp eq ptr %4, null, !dbg !1715
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1715
  call void @llvm.dbg.value(metadata ptr %7, metadata !1711, metadata !DIExpression()), !dbg !1714
  %8 = tail call ptr @__errno_location() #39, !dbg !1716
  %9 = load i32, ptr %8, align 4, !dbg !1716, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %9, metadata !1712, metadata !DIExpression()), !dbg !1714
  %10 = load i32, ptr %7, align 8, !dbg !1717, !tbaa !1625
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1718
  %12 = load i32, ptr %11, align 4, !dbg !1718, !tbaa !1675
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1719
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1720
  %15 = load ptr, ptr %14, align 8, !dbg !1720, !tbaa !1696
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1721
  %17 = load ptr, ptr %16, align 8, !dbg !1721, !tbaa !1699
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1722
  call void @llvm.dbg.value(metadata i64 %18, metadata !1713, metadata !DIExpression()), !dbg !1714
  store i32 %9, ptr %8, align 4, !dbg !1723, !tbaa !813
  ret i64 %18, !dbg !1724
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1725 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1731, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %1, metadata !1732, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata ptr %2, metadata !1733, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %3, metadata !1734, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i32 %4, metadata !1735, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i32 %5, metadata !1736, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata ptr %6, metadata !1737, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata ptr %7, metadata !1738, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata ptr %8, metadata !1739, metadata !DIExpression()), !dbg !1793
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1794
  %17 = icmp eq i64 %16, 1, !dbg !1795
  call void @llvm.dbg.value(metadata i1 %17, metadata !1740, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1793
  call void @llvm.dbg.value(metadata i64 0, metadata !1741, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 0, metadata !1742, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata ptr null, metadata !1743, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 0, metadata !1744, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 0, metadata !1745, metadata !DIExpression()), !dbg !1793
  %18 = trunc i32 %5 to i8, !dbg !1796
  %19 = lshr i8 %18, 1, !dbg !1796
  %20 = and i8 %19, 1, !dbg !1796
  call void @llvm.dbg.value(metadata i8 %20, metadata !1746, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 0, metadata !1747, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 1, metadata !1748, metadata !DIExpression()), !dbg !1793
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1797

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !1798
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !1799
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !1800
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !1801
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !1793
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !1802
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !1803
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1732, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 %39, metadata !1748, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 %38, metadata !1747, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 %37, metadata !1746, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 %36, metadata !1745, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %35, metadata !1744, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata ptr %34, metadata !1743, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %33, metadata !1742, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 0, metadata !1741, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %32, metadata !1734, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata ptr %31, metadata !1739, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata ptr %30, metadata !1738, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i32 %29, metadata !1735, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.label(metadata !1786), !dbg !1804
  call void @llvm.dbg.value(metadata i8 0, metadata !1749, metadata !DIExpression()), !dbg !1793
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
  ], !dbg !1805

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1746, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i32 5, metadata !1735, metadata !DIExpression()), !dbg !1793
  br label %115, !dbg !1806

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !1746, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i32 5, metadata !1735, metadata !DIExpression()), !dbg !1793
  %43 = and i8 %37, 1, !dbg !1807
  %44 = icmp eq i8 %43, 0, !dbg !1807
  br i1 %44, label %45, label %115, !dbg !1806

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1809
  br i1 %46, label %115, label %47, !dbg !1812

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1809, !tbaa !822
  br label %115, !dbg !1809

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.72, metadata !536, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.value(metadata i32 %29, metadata !537, metadata !DIExpression()), !dbg !1813
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.73, ptr noundef nonnull @.str.11.72, i32 noundef 5) #37, !dbg !1817
  call void @llvm.dbg.value(metadata ptr %49, metadata !538, metadata !DIExpression()), !dbg !1813
  %50 = icmp eq ptr %49, @.str.11.72, !dbg !1818
  br i1 %50, label %51, label %60, !dbg !1820

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !1821
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !1822
  call void @llvm.dbg.declare(metadata ptr %13, metadata !540, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata ptr %13, metadata !1824, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata ptr %13, metadata !1832, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i32 0, metadata !1835, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 8, metadata !1836, metadata !DIExpression()), !dbg !1837
  store i64 0, ptr %13, align 8, !dbg !1839
  call void @llvm.dbg.value(metadata ptr %12, metadata !539, metadata !DIExpression(DW_OP_deref)), !dbg !1813
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !1840
  %53 = icmp eq i64 %52, 3, !dbg !1842
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !539, metadata !DIExpression()), !dbg !1813
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1843
  %57 = icmp eq i32 %29, 9, !dbg !1843
  %58 = select i1 %57, ptr @.str.10.74, ptr @.str.12.75, !dbg !1843
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1843
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !1844
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !1844
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1813
  call void @llvm.dbg.value(metadata ptr %61, metadata !1738, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata ptr @.str.12.75, metadata !536, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i32 %29, metadata !537, metadata !DIExpression()), !dbg !1845
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.73, ptr noundef nonnull @.str.12.75, i32 noundef 5) #37, !dbg !1847
  call void @llvm.dbg.value(metadata ptr %62, metadata !538, metadata !DIExpression()), !dbg !1845
  %63 = icmp eq ptr %62, @.str.12.75, !dbg !1848
  br i1 %63, label %64, label %73, !dbg !1849

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !1850
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !1851
  call void @llvm.dbg.declare(metadata ptr %11, metadata !540, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata ptr %11, metadata !1824, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata ptr %11, metadata !1832, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 0, metadata !1835, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 8, metadata !1836, metadata !DIExpression()), !dbg !1855
  store i64 0, ptr %11, align 8, !dbg !1857
  call void @llvm.dbg.value(metadata ptr %10, metadata !539, metadata !DIExpression(DW_OP_deref)), !dbg !1845
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !1858
  %66 = icmp eq i64 %65, 3, !dbg !1859
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !539, metadata !DIExpression()), !dbg !1845
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1860
  %70 = icmp eq i32 %29, 9, !dbg !1860
  %71 = select i1 %70, ptr @.str.10.74, ptr @.str.12.75, !dbg !1860
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1860
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !1861
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !1861
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !1739, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata ptr %74, metadata !1738, metadata !DIExpression()), !dbg !1793
  %76 = and i8 %37, 1, !dbg !1862
  %77 = icmp eq i8 %76, 0, !dbg !1862
  br i1 %77, label %78, label %93, !dbg !1863

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !1750, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 0, metadata !1741, metadata !DIExpression()), !dbg !1793
  %79 = load i8, ptr %74, align 1, !dbg !1865, !tbaa !822
  %80 = icmp eq i8 %79, 0, !dbg !1867
  br i1 %80, label %93, label %81, !dbg !1867

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !1750, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %84, metadata !1741, metadata !DIExpression()), !dbg !1793
  %85 = icmp ult i64 %84, %40, !dbg !1868
  br i1 %85, label %86, label %88, !dbg !1871

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1868
  store i8 %82, ptr %87, align 1, !dbg !1868, !tbaa !822
  br label %88, !dbg !1868

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1871
  call void @llvm.dbg.value(metadata i64 %89, metadata !1741, metadata !DIExpression()), !dbg !1793
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1872
  call void @llvm.dbg.value(metadata ptr %90, metadata !1750, metadata !DIExpression()), !dbg !1864
  %91 = load i8, ptr %90, align 1, !dbg !1865, !tbaa !822
  %92 = icmp eq i8 %91, 0, !dbg !1867
  br i1 %92, label %93, label %81, !dbg !1867, !llvm.loop !1873

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1875
  call void @llvm.dbg.value(metadata i64 %94, metadata !1741, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 1, metadata !1745, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata ptr %75, metadata !1743, metadata !DIExpression()), !dbg !1793
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #38, !dbg !1876
  call void @llvm.dbg.value(metadata i64 %95, metadata !1744, metadata !DIExpression()), !dbg !1793
  br label %115, !dbg !1877

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1745, metadata !DIExpression()), !dbg !1793
  br label %97, !dbg !1878

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !1793
  call void @llvm.dbg.value(metadata i8 %98, metadata !1745, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 1, metadata !1746, metadata !DIExpression()), !dbg !1793
  br label %99, !dbg !1879

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !1801
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !1793
  call void @llvm.dbg.value(metadata i8 %101, metadata !1746, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 %100, metadata !1745, metadata !DIExpression()), !dbg !1793
  %102 = and i8 %101, 1, !dbg !1880
  %103 = icmp eq i8 %102, 0, !dbg !1880
  %104 = select i1 %103, i8 1, i8 %100, !dbg !1882
  br label %105, !dbg !1882

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !1793
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !1796
  call void @llvm.dbg.value(metadata i8 %107, metadata !1746, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 %106, metadata !1745, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i32 2, metadata !1735, metadata !DIExpression()), !dbg !1793
  %108 = and i8 %107, 1, !dbg !1883
  %109 = icmp eq i8 %108, 0, !dbg !1883
  br i1 %109, label %110, label %115, !dbg !1885

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !1886
  br i1 %111, label %115, label %112, !dbg !1889

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !1886, !tbaa !822
  br label %115, !dbg !1886

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !1746, metadata !DIExpression()), !dbg !1793
  br label %115, !dbg !1890

114:                                              ; preds = %28
  call void @abort() #36, !dbg !1891
  unreachable, !dbg !1891

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !1875
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.74, %45 ], [ @.str.10.74, %47 ], [ @.str.10.74, %42 ], [ %34, %28 ], [ @.str.12.75, %110 ], [ @.str.12.75, %112 ], [ @.str.12.75, %105 ], [ @.str.10.74, %41 ], !dbg !1793
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !1793
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !1793
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !1793
  call void @llvm.dbg.value(metadata i8 %123, metadata !1746, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 %122, metadata !1745, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %121, metadata !1744, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata ptr %120, metadata !1743, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %119, metadata !1741, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata ptr %118, metadata !1739, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata ptr %117, metadata !1738, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i32 %116, metadata !1735, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 0, metadata !1755, metadata !DIExpression()), !dbg !1892
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
  br label %138, !dbg !1893

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !1875
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !1798
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !1802
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !1803
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !1894
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !1895
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !1732, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %145, metadata !1755, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8 %144, metadata !1749, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 %143, metadata !1748, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 %142, metadata !1747, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %141, metadata !1742, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %140, metadata !1741, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %139, metadata !1734, metadata !DIExpression()), !dbg !1793
  %147 = icmp eq i64 %139, -1, !dbg !1896
  br i1 %147, label %148, label %152, !dbg !1897

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1898
  %150 = load i8, ptr %149, align 1, !dbg !1898, !tbaa !822
  %151 = icmp eq i8 %150, 0, !dbg !1899
  br i1 %151, label %627, label %154, !dbg !1900

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1901
  br i1 %153, label %627, label %154, !dbg !1900

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !1757, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 0, metadata !1760, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 0, metadata !1761, metadata !DIExpression()), !dbg !1902
  br i1 %129, label %155, label %170, !dbg !1903

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !1905
  %157 = select i1 %147, i1 %130, i1 false, !dbg !1906
  br i1 %157, label %158, label %160, !dbg !1906

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %159, metadata !1734, metadata !DIExpression()), !dbg !1793
  br label %160, !dbg !1908

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1908
  call void @llvm.dbg.value(metadata i64 %161, metadata !1734, metadata !DIExpression()), !dbg !1793
  %162 = icmp ugt i64 %156, %161, !dbg !1909
  br i1 %162, label %170, label %163, !dbg !1910

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1911
  call void @llvm.dbg.value(metadata ptr %164, metadata !1912, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata ptr %120, metadata !1915, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i64 %121, metadata !1916, metadata !DIExpression()), !dbg !1917
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !1919
  %166 = icmp ne i32 %165, 0, !dbg !1920
  %167 = select i1 %166, i1 true, i1 %132, !dbg !1921
  %168 = xor i1 %166, true, !dbg !1921
  %169 = zext i1 %168 to i8, !dbg !1921
  br i1 %167, label %170, label %688, !dbg !1921

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1902
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1902
  call void @llvm.dbg.value(metadata i8 %173, metadata !1757, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %171, metadata !1734, metadata !DIExpression()), !dbg !1793
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1922
  %175 = load i8, ptr %174, align 1, !dbg !1922, !tbaa !822
  call void @llvm.dbg.value(metadata i8 %175, metadata !1762, metadata !DIExpression()), !dbg !1902
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
  ], !dbg !1923

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !1924

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !1925

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !1760, metadata !DIExpression()), !dbg !1902
  %179 = and i8 %144, 1, !dbg !1929
  %180 = icmp eq i8 %179, 0, !dbg !1929
  %181 = select i1 %133, i1 %180, i1 false, !dbg !1929
  br i1 %181, label %182, label %198, !dbg !1929

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1931
  br i1 %183, label %184, label %186, !dbg !1935

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1931
  store i8 39, ptr %185, align 1, !dbg !1931, !tbaa !822
  br label %186, !dbg !1931

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1935
  call void @llvm.dbg.value(metadata i64 %187, metadata !1741, metadata !DIExpression()), !dbg !1793
  %188 = icmp ult i64 %187, %146, !dbg !1936
  br i1 %188, label %189, label %191, !dbg !1939

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1936
  store i8 36, ptr %190, align 1, !dbg !1936, !tbaa !822
  br label %191, !dbg !1936

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1939
  call void @llvm.dbg.value(metadata i64 %192, metadata !1741, metadata !DIExpression()), !dbg !1793
  %193 = icmp ult i64 %192, %146, !dbg !1940
  br i1 %193, label %194, label %196, !dbg !1943

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1940
  store i8 39, ptr %195, align 1, !dbg !1940, !tbaa !822
  br label %196, !dbg !1940

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1943
  call void @llvm.dbg.value(metadata i64 %197, metadata !1741, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 1, metadata !1749, metadata !DIExpression()), !dbg !1793
  br label %198, !dbg !1944

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1793
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1793
  call void @llvm.dbg.value(metadata i8 %200, metadata !1749, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %199, metadata !1741, metadata !DIExpression()), !dbg !1793
  %201 = icmp ult i64 %199, %146, !dbg !1945
  br i1 %201, label %202, label %204, !dbg !1948

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1945
  store i8 92, ptr %203, align 1, !dbg !1945, !tbaa !822
  br label %204, !dbg !1945

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %205, metadata !1741, metadata !DIExpression()), !dbg !1793
  br i1 %126, label %206, label %491, !dbg !1949

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1951
  %208 = icmp ult i64 %207, %171, !dbg !1952
  br i1 %208, label %209, label %480, !dbg !1953

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1954
  %211 = load i8, ptr %210, align 1, !dbg !1954, !tbaa !822
  %212 = add i8 %211, -48, !dbg !1955
  %213 = icmp ult i8 %212, 10, !dbg !1955
  br i1 %213, label %214, label %480, !dbg !1955

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1956
  br i1 %215, label %216, label %218, !dbg !1960

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1956
  store i8 48, ptr %217, align 1, !dbg !1956, !tbaa !822
  br label %218, !dbg !1956

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %219, metadata !1741, metadata !DIExpression()), !dbg !1793
  %220 = icmp ult i64 %219, %146, !dbg !1961
  br i1 %220, label %221, label %223, !dbg !1964

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1961
  store i8 48, ptr %222, align 1, !dbg !1961, !tbaa !822
  br label %223, !dbg !1961

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1964
  call void @llvm.dbg.value(metadata i64 %224, metadata !1741, metadata !DIExpression()), !dbg !1793
  br label %480, !dbg !1965

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !1966

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1967

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !1968

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !1970

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1972
  %231 = icmp ult i64 %230, %171, !dbg !1973
  br i1 %231, label %232, label %480, !dbg !1974

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !1975
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !1976
  %235 = load i8, ptr %234, align 1, !dbg !1976, !tbaa !822
  %236 = icmp eq i8 %235, 63, !dbg !1977
  br i1 %236, label %237, label %480, !dbg !1978

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1979
  %239 = load i8, ptr %238, align 1, !dbg !1979, !tbaa !822
  %240 = sext i8 %239 to i32, !dbg !1979
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
  ], !dbg !1980

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !1981

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !1762, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %230, metadata !1755, metadata !DIExpression()), !dbg !1892
  %243 = icmp ult i64 %140, %146, !dbg !1983
  br i1 %243, label %244, label %246, !dbg !1986

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1983
  store i8 63, ptr %245, align 1, !dbg !1983, !tbaa !822
  br label %246, !dbg !1983

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !1986
  call void @llvm.dbg.value(metadata i64 %247, metadata !1741, metadata !DIExpression()), !dbg !1793
  %248 = icmp ult i64 %247, %146, !dbg !1987
  br i1 %248, label %249, label %251, !dbg !1990

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !1987
  store i8 34, ptr %250, align 1, !dbg !1987, !tbaa !822
  br label %251, !dbg !1987

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !1990
  call void @llvm.dbg.value(metadata i64 %252, metadata !1741, metadata !DIExpression()), !dbg !1793
  %253 = icmp ult i64 %252, %146, !dbg !1991
  br i1 %253, label %254, label %256, !dbg !1994

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !1991
  store i8 34, ptr %255, align 1, !dbg !1991, !tbaa !822
  br label %256, !dbg !1991

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %257, metadata !1741, metadata !DIExpression()), !dbg !1793
  %258 = icmp ult i64 %257, %146, !dbg !1995
  br i1 %258, label %259, label %261, !dbg !1998

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !1995
  store i8 63, ptr %260, align 1, !dbg !1995, !tbaa !822
  br label %261, !dbg !1995

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !1998
  call void @llvm.dbg.value(metadata i64 %262, metadata !1741, metadata !DIExpression()), !dbg !1793
  br label %480, !dbg !1999

263:                                              ; preds = %170
  br label %274, !dbg !2000

264:                                              ; preds = %170
  br label %274, !dbg !2001

265:                                              ; preds = %170
  br label %272, !dbg !2002

266:                                              ; preds = %170
  br label %272, !dbg !2003

267:                                              ; preds = %170
  br label %274, !dbg !2004

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !2005

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !2006

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !2009

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !2011

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !2012
  call void @llvm.dbg.label(metadata !1787), !dbg !2013
  br i1 %134, label %274, label %670, !dbg !2014

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !2012
  call void @llvm.dbg.label(metadata !1789), !dbg !2016
  br i1 %125, label %535, label %491, !dbg !2017

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !2018

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !2019, !tbaa !822
  %279 = icmp eq i8 %278, 0, !dbg !2021
  br i1 %279, label %280, label %480, !dbg !2022

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !2023
  br i1 %281, label %282, label %480, !dbg !2025

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1761, metadata !DIExpression()), !dbg !1902
  br label %283, !dbg !2026

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !1902
  call void @llvm.dbg.value(metadata i8 %284, metadata !1761, metadata !DIExpression()), !dbg !1902
  br i1 %134, label %480, label %670, !dbg !2027

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1747, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 1, metadata !1761, metadata !DIExpression()), !dbg !1902
  br i1 %133, label %286, label %480, !dbg !2029

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !2030

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !2033
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !2035
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !2035
  %292 = select i1 %290, i64 %146, i64 0, !dbg !2035
  call void @llvm.dbg.value(metadata i64 %292, metadata !1732, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %291, metadata !1742, metadata !DIExpression()), !dbg !1793
  %293 = icmp ult i64 %140, %292, !dbg !2036
  br i1 %293, label %294, label %296, !dbg !2039

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2036
  store i8 39, ptr %295, align 1, !dbg !2036, !tbaa !822
  br label %296, !dbg !2036

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !2039
  call void @llvm.dbg.value(metadata i64 %297, metadata !1741, metadata !DIExpression()), !dbg !1793
  %298 = icmp ult i64 %297, %292, !dbg !2040
  br i1 %298, label %299, label %301, !dbg !2043

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !2040
  store i8 92, ptr %300, align 1, !dbg !2040, !tbaa !822
  br label %301, !dbg !2040

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %302, metadata !1741, metadata !DIExpression()), !dbg !1793
  %303 = icmp ult i64 %302, %292, !dbg !2044
  br i1 %303, label %304, label %306, !dbg !2047

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !2044
  store i8 39, ptr %305, align 1, !dbg !2044, !tbaa !822
  br label %306, !dbg !2044

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !2047
  call void @llvm.dbg.value(metadata i64 %307, metadata !1741, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 0, metadata !1749, metadata !DIExpression()), !dbg !1793
  br label %480, !dbg !2048

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !2049

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !1763, metadata !DIExpression()), !dbg !2050
  %310 = tail call ptr @__ctype_b_loc() #39, !dbg !2051
  %311 = load ptr, ptr %310, align 8, !dbg !2051, !tbaa !775
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !2051
  %314 = load i16, ptr %313, align 2, !dbg !2051, !tbaa !854
  %315 = lshr i16 %314, 14, !dbg !2053
  %316 = trunc i16 %315 to i8, !dbg !2053
  %317 = and i8 %316, 1, !dbg !2053
  call void @llvm.dbg.value(metadata i8 %317, metadata !1766, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %171, metadata !1734, metadata !DIExpression()), !dbg !1793
  %318 = icmp eq i8 %317, 0, !dbg !2054
  call void @llvm.dbg.value(metadata i1 %318, metadata !1761, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1902
  br label %368, !dbg !2055

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !2056
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1767, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata ptr %14, metadata !1824, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata ptr %14, metadata !1832, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i32 0, metadata !1835, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i64 8, metadata !1836, metadata !DIExpression()), !dbg !2060
  store i64 0, ptr %14, align 8, !dbg !2062
  call void @llvm.dbg.value(metadata i64 0, metadata !1763, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 1, metadata !1766, metadata !DIExpression()), !dbg !2050
  %320 = icmp eq i64 %171, -1, !dbg !2063
  br i1 %320, label %321, label %323, !dbg !2065

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2066
  call void @llvm.dbg.value(metadata i64 %322, metadata !1734, metadata !DIExpression()), !dbg !1793
  br label %323, !dbg !2067

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !1902
  call void @llvm.dbg.value(metadata i64 %324, metadata !1734, metadata !DIExpression()), !dbg !1793
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !2068
  %325 = sub i64 %324, %145, !dbg !2069
  call void @llvm.dbg.value(metadata ptr %15, metadata !1770, metadata !DIExpression(DW_OP_deref)), !dbg !2070
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #37, !dbg !2071
  call void @llvm.dbg.value(metadata i64 %326, metadata !1774, metadata !DIExpression()), !dbg !2070
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !2072

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !1763, metadata !DIExpression()), !dbg !2050
  %328 = icmp ugt i64 %324, %145, !dbg !2073
  br i1 %328, label %331, label %329, !dbg !2075

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !1766, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 0, metadata !1763, metadata !DIExpression()), !dbg !2050
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2076
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %324, metadata !1734, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i1 true, metadata !1761, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1902
  br label %368, !dbg !2055

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !1766, metadata !DIExpression()), !dbg !2050
  br label %360, !dbg !2078

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1763, metadata !DIExpression()), !dbg !2050
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !2080
  %335 = load i8, ptr %334, align 1, !dbg !2080, !tbaa !822
  %336 = icmp eq i8 %335, 0, !dbg !2075
  br i1 %336, label %363, label %337, !dbg !2081

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %338, metadata !1763, metadata !DIExpression()), !dbg !2050
  %339 = add i64 %338, %145, !dbg !2083
  %340 = icmp eq i64 %338, %325, !dbg !2073
  br i1 %340, label %363, label %331, !dbg !2075, !llvm.loop !2084

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !2085
  %344 = and i1 %343, %133, !dbg !2085
  call void @llvm.dbg.value(metadata i64 1, metadata !1775, metadata !DIExpression()), !dbg !2086
  br i1 %344, label %345, label %354, !dbg !2085

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !1775, metadata !DIExpression()), !dbg !2086
  %347 = add i64 %346, %145, !dbg !2087
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !2089
  %349 = load i8, ptr %348, align 1, !dbg !2089, !tbaa !822
  %350 = sext i8 %349 to i32, !dbg !2089
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !2090

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !2091
  call void @llvm.dbg.value(metadata i64 %352, metadata !1775, metadata !DIExpression()), !dbg !2086
  %353 = icmp eq i64 %352, %326, !dbg !2092
  br i1 %353, label %354, label %345, !dbg !2093, !llvm.loop !2094

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !2096, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %355, metadata !1770, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i32 %355, metadata !2098, metadata !DIExpression()), !dbg !2106
  %356 = call i32 @iswprint(i32 noundef %355) #37, !dbg !2108
  %357 = icmp ne i32 %356, 0, !dbg !2109
  %358 = zext i1 %357 to i8, !dbg !2110
  call void @llvm.dbg.value(metadata i8 %358, metadata !1766, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %326, metadata !1763, metadata !DIExpression()), !dbg !2050
  br label %363, !dbg !2111

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !1766, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 0, metadata !1763, metadata !DIExpression()), !dbg !2050
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2076
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2077
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !1766, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 0, metadata !1763, metadata !DIExpression()), !dbg !2050
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2076
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %324, metadata !1734, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i1 %361, metadata !1761, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1902
  br label %368, !dbg !2055

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !1766, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %364, metadata !1763, metadata !DIExpression()), !dbg !2050
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2076
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %324, metadata !1734, metadata !DIExpression()), !dbg !1793
  %366 = icmp eq i8 %365, 0, !dbg !2054
  call void @llvm.dbg.value(metadata i1 %366, metadata !1761, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1902
  %367 = icmp ugt i64 %364, 1, !dbg !2112
  br i1 %367, label %374, label %368, !dbg !2055

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !2113
  br i1 %373, label %374, label %480, !dbg !2113

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !2114
  call void @llvm.dbg.value(metadata i64 %379, metadata !1783, metadata !DIExpression()), !dbg !2115
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !2116

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !1793
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !1894
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !1892
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !1902
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !2117
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !1902
  call void @llvm.dbg.value(metadata i8 %387, metadata !1762, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %386, metadata !1760, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %385, metadata !1757, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %384, metadata !1755, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8 %383, metadata !1749, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %382, metadata !1741, metadata !DIExpression()), !dbg !1793
  br i1 %380, label %388, label %434, !dbg !2118

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !2123

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !1760, metadata !DIExpression()), !dbg !1902
  %390 = and i8 %383, 1, !dbg !2126
  %391 = icmp eq i8 %390, 0, !dbg !2126
  %392 = select i1 %133, i1 %391, i1 false, !dbg !2126
  br i1 %392, label %393, label %409, !dbg !2126

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !2128
  br i1 %394, label %395, label %397, !dbg !2132

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2128
  store i8 39, ptr %396, align 1, !dbg !2128, !tbaa !822
  br label %397, !dbg !2128

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !2132
  call void @llvm.dbg.value(metadata i64 %398, metadata !1741, metadata !DIExpression()), !dbg !1793
  %399 = icmp ult i64 %398, %146, !dbg !2133
  br i1 %399, label %400, label %402, !dbg !2136

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !2133
  store i8 36, ptr %401, align 1, !dbg !2133, !tbaa !822
  br label %402, !dbg !2133

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !2136
  call void @llvm.dbg.value(metadata i64 %403, metadata !1741, metadata !DIExpression()), !dbg !1793
  %404 = icmp ult i64 %403, %146, !dbg !2137
  br i1 %404, label %405, label %407, !dbg !2140

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !2137
  store i8 39, ptr %406, align 1, !dbg !2137, !tbaa !822
  br label %407, !dbg !2137

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2140
  call void @llvm.dbg.value(metadata i64 %408, metadata !1741, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 1, metadata !1749, metadata !DIExpression()), !dbg !1793
  br label %409, !dbg !2141

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !1793
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !1793
  call void @llvm.dbg.value(metadata i8 %411, metadata !1749, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %410, metadata !1741, metadata !DIExpression()), !dbg !1793
  %412 = icmp ult i64 %410, %146, !dbg !2142
  br i1 %412, label %413, label %415, !dbg !2145

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2142
  store i8 92, ptr %414, align 1, !dbg !2142, !tbaa !822
  br label %415, !dbg !2142

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2145
  call void @llvm.dbg.value(metadata i64 %416, metadata !1741, metadata !DIExpression()), !dbg !1793
  %417 = icmp ult i64 %416, %146, !dbg !2146
  br i1 %417, label %418, label %422, !dbg !2149

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2146
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2146
  store i8 %420, ptr %421, align 1, !dbg !2146, !tbaa !822
  br label %422, !dbg !2146

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2149
  call void @llvm.dbg.value(metadata i64 %423, metadata !1741, metadata !DIExpression()), !dbg !1793
  %424 = icmp ult i64 %423, %146, !dbg !2150
  br i1 %424, label %425, label %430, !dbg !2153

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2150
  %428 = or i8 %427, 48, !dbg !2150
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2150
  store i8 %428, ptr %429, align 1, !dbg !2150, !tbaa !822
  br label %430, !dbg !2150

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2153
  call void @llvm.dbg.value(metadata i64 %431, metadata !1741, metadata !DIExpression()), !dbg !1793
  %432 = and i8 %387, 7, !dbg !2154
  %433 = or i8 %432, 48, !dbg !2155
  call void @llvm.dbg.value(metadata i8 %433, metadata !1762, metadata !DIExpression()), !dbg !1902
  br label %443, !dbg !2156

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2157
  %436 = icmp eq i8 %435, 0, !dbg !2157
  br i1 %436, label %443, label %437, !dbg !2159

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2160
  br i1 %438, label %439, label %441, !dbg !2164

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2160
  store i8 92, ptr %440, align 1, !dbg !2160, !tbaa !822
  br label %441, !dbg !2160

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2164
  call void @llvm.dbg.value(metadata i64 %442, metadata !1741, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 0, metadata !1757, metadata !DIExpression()), !dbg !1902
  br label %443, !dbg !2165

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !1793
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !1894
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !1902
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !1902
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !1902
  call void @llvm.dbg.value(metadata i8 %448, metadata !1762, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %447, metadata !1760, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %446, metadata !1757, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %445, metadata !1749, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %444, metadata !1741, metadata !DIExpression()), !dbg !1793
  %449 = add i64 %384, 1, !dbg !2166
  %450 = icmp ugt i64 %379, %449, !dbg !2168
  br i1 %450, label %451, label %478, !dbg !2169

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2170
  %453 = icmp ne i8 %452, 0, !dbg !2170
  %454 = and i8 %447, 1, !dbg !2170
  %455 = icmp eq i8 %454, 0, !dbg !2170
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2170
  br i1 %456, label %457, label %468, !dbg !2170

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2173
  br i1 %458, label %459, label %461, !dbg !2177

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2173
  store i8 39, ptr %460, align 1, !dbg !2173, !tbaa !822
  br label %461, !dbg !2173

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2177
  call void @llvm.dbg.value(metadata i64 %462, metadata !1741, metadata !DIExpression()), !dbg !1793
  %463 = icmp ult i64 %462, %146, !dbg !2178
  br i1 %463, label %464, label %466, !dbg !2181

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2178
  store i8 39, ptr %465, align 1, !dbg !2178, !tbaa !822
  br label %466, !dbg !2178

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %467, metadata !1741, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 0, metadata !1749, metadata !DIExpression()), !dbg !1793
  br label %468, !dbg !2182

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2183
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !1793
  call void @llvm.dbg.value(metadata i8 %470, metadata !1749, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %469, metadata !1741, metadata !DIExpression()), !dbg !1793
  %471 = icmp ult i64 %469, %146, !dbg !2184
  br i1 %471, label %472, label %474, !dbg !2187

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2184
  store i8 %448, ptr %473, align 1, !dbg !2184, !tbaa !822
  br label %474, !dbg !2184

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2187
  call void @llvm.dbg.value(metadata i64 %475, metadata !1741, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %449, metadata !1755, metadata !DIExpression()), !dbg !1892
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2188
  %477 = load i8, ptr %476, align 1, !dbg !2188, !tbaa !822
  call void @llvm.dbg.value(metadata i8 %477, metadata !1762, metadata !DIExpression()), !dbg !1902
  br label %381, !dbg !2189, !llvm.loop !2190

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !1902
  call void @llvm.dbg.value(metadata i8 %448, metadata !1762, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %479, metadata !1761, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %447, metadata !1760, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %446, metadata !1757, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %384, metadata !1755, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8 %445, metadata !1749, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %444, metadata !1741, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %378, metadata !1734, metadata !DIExpression()), !dbg !1793
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2193
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !1793
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !1798
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !1793
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !1793
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !1892
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !1902
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !1902
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !1902
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !1732, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 %489, metadata !1762, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %488, metadata !1761, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %487, metadata !1760, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %173, metadata !1757, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %486, metadata !1755, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8 %485, metadata !1749, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 %484, metadata !1747, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %483, metadata !1742, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %482, metadata !1741, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %481, metadata !1734, metadata !DIExpression()), !dbg !1793
  br i1 %127, label %502, label %491, !dbg !2194

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
  br i1 %137, label %503, label %524, !dbg !2196

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2197

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
  %514 = lshr i8 %505, 5, !dbg !2198
  %515 = zext i8 %514 to i64, !dbg !2198
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2199
  %517 = load i32, ptr %516, align 4, !dbg !2199, !tbaa !813
  %518 = and i8 %505, 31, !dbg !2200
  %519 = zext i8 %518 to i32, !dbg !2200
  %520 = shl nuw i32 1, %519, !dbg !2201
  %521 = and i32 %517, %520, !dbg !2201
  %522 = icmp eq i32 %521, 0, !dbg !2201
  %523 = and i1 %172, %522, !dbg !2202
  br i1 %523, label %573, label %535, !dbg !2202

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
  br i1 %172, label %573, label %535, !dbg !2203

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2193
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !1793
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !1798
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !1802
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !1894
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2204
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !1902
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !1902
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !1732, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 %543, metadata !1762, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %542, metadata !1761, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %541, metadata !1755, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8 %540, metadata !1749, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 %539, metadata !1747, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %538, metadata !1742, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %537, metadata !1741, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %536, metadata !1734, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.label(metadata !1790), !dbg !2205
  br i1 %132, label %545, label %674, !dbg !2206

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !1760, metadata !DIExpression()), !dbg !1902
  %546 = and i8 %540, 1, !dbg !2208
  %547 = icmp eq i8 %546, 0, !dbg !2208
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2208
  br i1 %548, label %549, label %565, !dbg !2208

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2210
  br i1 %550, label %551, label %553, !dbg !2214

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2210
  store i8 39, ptr %552, align 1, !dbg !2210, !tbaa !822
  br label %553, !dbg !2210

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2214
  call void @llvm.dbg.value(metadata i64 %554, metadata !1741, metadata !DIExpression()), !dbg !1793
  %555 = icmp ult i64 %554, %544, !dbg !2215
  br i1 %555, label %556, label %558, !dbg !2218

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2215
  store i8 36, ptr %557, align 1, !dbg !2215, !tbaa !822
  br label %558, !dbg !2215

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2218
  call void @llvm.dbg.value(metadata i64 %559, metadata !1741, metadata !DIExpression()), !dbg !1793
  %560 = icmp ult i64 %559, %544, !dbg !2219
  br i1 %560, label %561, label %563, !dbg !2222

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2219
  store i8 39, ptr %562, align 1, !dbg !2219, !tbaa !822
  br label %563, !dbg !2219

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2222
  call void @llvm.dbg.value(metadata i64 %564, metadata !1741, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 1, metadata !1749, metadata !DIExpression()), !dbg !1793
  br label %565, !dbg !2223

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !1902
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !1793
  call void @llvm.dbg.value(metadata i8 %567, metadata !1749, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %566, metadata !1741, metadata !DIExpression()), !dbg !1793
  %568 = icmp ult i64 %566, %544, !dbg !2224
  br i1 %568, label %569, label %571, !dbg !2227

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2224
  store i8 92, ptr %570, align 1, !dbg !2224, !tbaa !822
  br label %571, !dbg !2224

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2227
  call void @llvm.dbg.value(metadata i64 %544, metadata !1732, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 %543, metadata !1762, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %542, metadata !1761, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 1, metadata !1760, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %541, metadata !1755, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8 %567, metadata !1749, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 %539, metadata !1747, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %538, metadata !1742, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %572, metadata !1741, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %536, metadata !1734, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.label(metadata !1791), !dbg !2228
  br label %600, !dbg !2229

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2193
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !1793
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !1798
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !1802
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !1894
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2204
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !1902
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !1902
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2232
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !1732, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 %582, metadata !1762, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %581, metadata !1761, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %580, metadata !1760, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %579, metadata !1755, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8 %578, metadata !1749, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 %577, metadata !1747, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %576, metadata !1742, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %575, metadata !1741, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %574, metadata !1734, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.label(metadata !1791), !dbg !2228
  %584 = and i8 %578, 1, !dbg !2229
  %585 = icmp ne i8 %584, 0, !dbg !2229
  %586 = and i8 %580, 1, !dbg !2229
  %587 = icmp eq i8 %586, 0, !dbg !2229
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2229
  br i1 %588, label %589, label %600, !dbg !2229

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2233
  br i1 %590, label %591, label %593, !dbg !2237

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2233
  store i8 39, ptr %592, align 1, !dbg !2233, !tbaa !822
  br label %593, !dbg !2233

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2237
  call void @llvm.dbg.value(metadata i64 %594, metadata !1741, metadata !DIExpression()), !dbg !1793
  %595 = icmp ult i64 %594, %583, !dbg !2238
  br i1 %595, label %596, label %598, !dbg !2241

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2238
  store i8 39, ptr %597, align 1, !dbg !2238, !tbaa !822
  br label %598, !dbg !2238

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2241
  call void @llvm.dbg.value(metadata i64 %599, metadata !1741, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 0, metadata !1749, metadata !DIExpression()), !dbg !1793
  br label %600, !dbg !2242

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !1902
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !1793
  call void @llvm.dbg.value(metadata i8 %609, metadata !1749, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %608, metadata !1741, metadata !DIExpression()), !dbg !1793
  %610 = icmp ult i64 %608, %601, !dbg !2243
  br i1 %610, label %611, label %613, !dbg !2246

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2243
  store i8 %602, ptr %612, align 1, !dbg !2243, !tbaa !822
  br label %613, !dbg !2243

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2246
  call void @llvm.dbg.value(metadata i64 %614, metadata !1741, metadata !DIExpression()), !dbg !1793
  %615 = icmp eq i8 %603, 0, !dbg !2247
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2249
  call void @llvm.dbg.value(metadata i8 %616, metadata !1748, metadata !DIExpression()), !dbg !1793
  br label %617, !dbg !2250

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2193
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !1793
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !1798
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !1802
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !1803
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !1894
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2204
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !1732, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %624, metadata !1755, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8 %623, metadata !1749, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 %622, metadata !1748, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 %621, metadata !1747, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %620, metadata !1742, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %619, metadata !1741, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %618, metadata !1734, metadata !DIExpression()), !dbg !1793
  %626 = add i64 %624, 1, !dbg !2251
  call void @llvm.dbg.value(metadata i64 %626, metadata !1755, metadata !DIExpression()), !dbg !1892
  br label %138, !dbg !2252, !llvm.loop !2253

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !1732, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 %143, metadata !1748, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 %142, metadata !1747, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %141, metadata !1742, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %140, metadata !1741, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %139, metadata !1734, metadata !DIExpression()), !dbg !1793
  %628 = icmp eq i64 %140, 0, !dbg !2255
  %629 = and i1 %133, %628, !dbg !2257
  %630 = xor i1 %629, true, !dbg !2257
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2257
  br i1 %631, label %632, label %670, !dbg !2257

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2258
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2258
  br i1 %636, label %637, label %646, !dbg !2258

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2260
  %639 = icmp eq i8 %638, 0, !dbg !2260
  br i1 %639, label %642, label %640, !dbg !2263

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2264
  br label %694, !dbg !2265

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2266
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2268
  br i1 %645, label %28, label %646, !dbg !2268

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2269
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2271
  br i1 %649, label %650, label %665, !dbg !2271

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !1743, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %140, metadata !1741, metadata !DIExpression()), !dbg !1793
  %651 = load i8, ptr %120, align 1, !dbg !2272, !tbaa !822
  %652 = icmp eq i8 %651, 0, !dbg !2275
  br i1 %652, label %665, label %653, !dbg !2275

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !1743, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %656, metadata !1741, metadata !DIExpression()), !dbg !1793
  %657 = icmp ult i64 %656, %146, !dbg !2276
  br i1 %657, label %658, label %660, !dbg !2279

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2276
  store i8 %654, ptr %659, align 1, !dbg !2276, !tbaa !822
  br label %660, !dbg !2276

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2279
  call void @llvm.dbg.value(metadata i64 %661, metadata !1741, metadata !DIExpression()), !dbg !1793
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2280
  call void @llvm.dbg.value(metadata ptr %662, metadata !1743, metadata !DIExpression()), !dbg !1793
  %663 = load i8, ptr %662, align 1, !dbg !2272, !tbaa !822
  %664 = icmp eq i8 %663, 0, !dbg !2275
  br i1 %664, label %665, label %653, !dbg !2275, !llvm.loop !2281

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !1875
  call void @llvm.dbg.value(metadata i64 %666, metadata !1741, metadata !DIExpression()), !dbg !1793
  %667 = icmp ult i64 %666, %146, !dbg !2283
  br i1 %667, label %668, label %694, !dbg !2285

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2286
  store i8 0, ptr %669, align 1, !dbg !2287, !tbaa !822
  br label %694, !dbg !2286

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !1792), !dbg !2288
  %672 = icmp eq i8 %124, 0, !dbg !2289
  %673 = select i1 %672, i32 2, i32 4, !dbg !2289
  br label %684, !dbg !2289

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2289
  %678 = select i1 %677, i32 2, i32 4, !dbg !2289
  br label %679, !dbg !2291

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !1792), !dbg !2288
  %683 = icmp eq i32 %116, 2, !dbg !2291
  br i1 %683, label %684, label %688, !dbg !2289

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2289

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !1735, metadata !DIExpression()), !dbg !1793
  %692 = and i32 %5, -3, !dbg !2292
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2293
  br label %694, !dbg !2294

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2295
}

; Function Attrs: nounwind
declare !dbg !2296 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2299 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !2302 i32 @iswprint(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2304 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2308, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %1, metadata !2309, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata ptr %2, metadata !2310, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata ptr %0, metadata !2312, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %1, metadata !2317, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata ptr null, metadata !2318, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata ptr %2, metadata !2319, metadata !DIExpression()), !dbg !2325
  %4 = icmp eq ptr %2, null, !dbg !2327
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2327
  call void @llvm.dbg.value(metadata ptr %5, metadata !2320, metadata !DIExpression()), !dbg !2325
  %6 = tail call ptr @__errno_location() #39, !dbg !2328
  %7 = load i32, ptr %6, align 4, !dbg !2328, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %7, metadata !2321, metadata !DIExpression()), !dbg !2325
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2329
  %9 = load i32, ptr %8, align 4, !dbg !2329, !tbaa !1675
  %10 = or i32 %9, 1, !dbg !2330
  call void @llvm.dbg.value(metadata i32 %10, metadata !2322, metadata !DIExpression()), !dbg !2325
  %11 = load i32, ptr %5, align 8, !dbg !2331, !tbaa !1625
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2332
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2333
  %14 = load ptr, ptr %13, align 8, !dbg !2333, !tbaa !1696
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2334
  %16 = load ptr, ptr %15, align 8, !dbg !2334, !tbaa !1699
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2335
  %18 = add i64 %17, 1, !dbg !2336
  call void @llvm.dbg.value(metadata i64 %18, metadata !2323, metadata !DIExpression()), !dbg !2325
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2337
  call void @llvm.dbg.value(metadata ptr %19, metadata !2324, metadata !DIExpression()), !dbg !2325
  %20 = load i32, ptr %5, align 8, !dbg !2338, !tbaa !1625
  %21 = load ptr, ptr %13, align 8, !dbg !2339, !tbaa !1696
  %22 = load ptr, ptr %15, align 8, !dbg !2340, !tbaa !1699
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2341
  store i32 %7, ptr %6, align 4, !dbg !2342, !tbaa !813
  ret ptr %19, !dbg !2343
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2313 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2312, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i64 %1, metadata !2317, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata ptr %2, metadata !2318, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata ptr %3, metadata !2319, metadata !DIExpression()), !dbg !2344
  %5 = icmp eq ptr %3, null, !dbg !2345
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2345
  call void @llvm.dbg.value(metadata ptr %6, metadata !2320, metadata !DIExpression()), !dbg !2344
  %7 = tail call ptr @__errno_location() #39, !dbg !2346
  %8 = load i32, ptr %7, align 4, !dbg !2346, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %8, metadata !2321, metadata !DIExpression()), !dbg !2344
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2347
  %10 = load i32, ptr %9, align 4, !dbg !2347, !tbaa !1675
  %11 = icmp eq ptr %2, null, !dbg !2348
  %12 = zext i1 %11 to i32, !dbg !2348
  %13 = or i32 %10, %12, !dbg !2349
  call void @llvm.dbg.value(metadata i32 %13, metadata !2322, metadata !DIExpression()), !dbg !2344
  %14 = load i32, ptr %6, align 8, !dbg !2350, !tbaa !1625
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2351
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2352
  %17 = load ptr, ptr %16, align 8, !dbg !2352, !tbaa !1696
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2353
  %19 = load ptr, ptr %18, align 8, !dbg !2353, !tbaa !1699
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2354
  %21 = add i64 %20, 1, !dbg !2355
  call void @llvm.dbg.value(metadata i64 %21, metadata !2323, metadata !DIExpression()), !dbg !2344
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2356
  call void @llvm.dbg.value(metadata ptr %22, metadata !2324, metadata !DIExpression()), !dbg !2344
  %23 = load i32, ptr %6, align 8, !dbg !2357, !tbaa !1625
  %24 = load ptr, ptr %16, align 8, !dbg !2358, !tbaa !1696
  %25 = load ptr, ptr %18, align 8, !dbg !2359, !tbaa !1699
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2360
  store i32 %8, ptr %7, align 4, !dbg !2361, !tbaa !813
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
  call void @llvm.dbg.value(metadata ptr %1, metadata !2370, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i32 1, metadata !2371, metadata !DIExpression()), !dbg !2375
  %2 = load i32, ptr @nslots, align 4, !tbaa !813
  call void @llvm.dbg.value(metadata i32 1, metadata !2371, metadata !DIExpression()), !dbg !2375
  %3 = icmp sgt i32 %2, 1, !dbg !2376
  br i1 %3, label %4, label %6, !dbg !2378

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2376
  br label %10, !dbg !2378

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2379
  %8 = load ptr, ptr %7, align 8, !dbg !2379, !tbaa !2381
  %9 = icmp eq ptr %8, @slot0, !dbg !2383
  br i1 %9, label %17, label %16, !dbg !2384

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2371, metadata !DIExpression()), !dbg !2375
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2385
  %13 = load ptr, ptr %12, align 8, !dbg !2385, !tbaa !2381
  tail call void @free(ptr noundef %13) #37, !dbg !2386
  %14 = add nuw nsw i64 %11, 1, !dbg !2387
  call void @llvm.dbg.value(metadata i64 %14, metadata !2371, metadata !DIExpression()), !dbg !2375
  %15 = icmp eq i64 %14, %5, !dbg !2376
  br i1 %15, label %6, label %10, !dbg !2378, !llvm.loop !2388

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2390
  store i64 256, ptr @slotvec0, align 8, !dbg !2392, !tbaa !2393
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2394, !tbaa !2381
  br label %17, !dbg !2395

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2396
  br i1 %18, label %20, label %19, !dbg !2398

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2399
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2401, !tbaa !775
  br label %20, !dbg !2402

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2403, !tbaa !813
  ret void, !dbg !2404
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2405 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2408 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2410, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata ptr %1, metadata !2411, metadata !DIExpression()), !dbg !2412
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2413
  ret ptr %3, !dbg !2414
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2415 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2419, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata ptr %1, metadata !2420, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i64 %2, metadata !2421, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata ptr %3, metadata !2422, metadata !DIExpression()), !dbg !2435
  %6 = tail call ptr @__errno_location() #39, !dbg !2436
  %7 = load i32, ptr %6, align 4, !dbg !2436, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %7, metadata !2423, metadata !DIExpression()), !dbg !2435
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2437, !tbaa !775
  call void @llvm.dbg.value(metadata ptr %8, metadata !2424, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2425, metadata !DIExpression()), !dbg !2435
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2438
  br i1 %9, label %10, label %11, !dbg !2438

10:                                               ; preds = %4
  tail call void @abort() #36, !dbg !2440
  unreachable, !dbg !2440

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2441, !tbaa !813
  %13 = icmp sgt i32 %12, %0, !dbg !2442
  br i1 %13, label %32, label %14, !dbg !2443

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2444
  call void @llvm.dbg.value(metadata i1 %15, metadata !2426, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2445
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2446
  %16 = sext i32 %12 to i64, !dbg !2447
  call void @llvm.dbg.value(metadata i64 %16, metadata !2429, metadata !DIExpression()), !dbg !2445
  store i64 %16, ptr %5, align 8, !dbg !2448, !tbaa !2365
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2449
  %18 = add nuw nsw i32 %0, 1, !dbg !2450
  %19 = sub i32 %18, %12, !dbg !2451
  %20 = sext i32 %19 to i64, !dbg !2452
  call void @llvm.dbg.value(metadata ptr %5, metadata !2429, metadata !DIExpression(DW_OP_deref)), !dbg !2445
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2453
  call void @llvm.dbg.value(metadata ptr %21, metadata !2424, metadata !DIExpression()), !dbg !2435
  store ptr %21, ptr @slotvec, align 8, !dbg !2454, !tbaa !775
  br i1 %15, label %22, label %23, !dbg !2455

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2456, !tbaa.struct !2458
  br label %23, !dbg !2459

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2460, !tbaa !813
  %25 = sext i32 %24 to i64, !dbg !2461
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2461
  %27 = load i64, ptr %5, align 8, !dbg !2462, !tbaa !2365
  call void @llvm.dbg.value(metadata i64 %27, metadata !2429, metadata !DIExpression()), !dbg !2445
  %28 = sub nsw i64 %27, %25, !dbg !2463
  %29 = shl i64 %28, 4, !dbg !2464
  call void @llvm.dbg.value(metadata ptr %26, metadata !1832, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i32 0, metadata !1835, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i64 %29, metadata !1836, metadata !DIExpression()), !dbg !2465
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2467
  %30 = load i64, ptr %5, align 8, !dbg !2468, !tbaa !2365
  call void @llvm.dbg.value(metadata i64 %30, metadata !2429, metadata !DIExpression()), !dbg !2445
  %31 = trunc i64 %30 to i32, !dbg !2468
  store i32 %31, ptr @nslots, align 4, !dbg !2469, !tbaa !813
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2470
  br label %32, !dbg !2471

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2435
  call void @llvm.dbg.value(metadata ptr %33, metadata !2424, metadata !DIExpression()), !dbg !2435
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2472
  %36 = load i64, ptr %35, align 8, !dbg !2473, !tbaa !2393
  call void @llvm.dbg.value(metadata i64 %36, metadata !2430, metadata !DIExpression()), !dbg !2474
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2475
  %38 = load ptr, ptr %37, align 8, !dbg !2475, !tbaa !2381
  call void @llvm.dbg.value(metadata ptr %38, metadata !2432, metadata !DIExpression()), !dbg !2474
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2476
  %40 = load i32, ptr %39, align 4, !dbg !2476, !tbaa !1675
  %41 = or i32 %40, 1, !dbg !2477
  call void @llvm.dbg.value(metadata i32 %41, metadata !2433, metadata !DIExpression()), !dbg !2474
  %42 = load i32, ptr %3, align 8, !dbg !2478, !tbaa !1625
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2479
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2480
  %45 = load ptr, ptr %44, align 8, !dbg !2480, !tbaa !1696
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2481
  %47 = load ptr, ptr %46, align 8, !dbg !2481, !tbaa !1699
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2482
  call void @llvm.dbg.value(metadata i64 %48, metadata !2434, metadata !DIExpression()), !dbg !2474
  %49 = icmp ugt i64 %36, %48, !dbg !2483
  br i1 %49, label %60, label %50, !dbg !2485

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2486
  call void @llvm.dbg.value(metadata i64 %51, metadata !2430, metadata !DIExpression()), !dbg !2474
  store i64 %51, ptr %35, align 8, !dbg !2488, !tbaa !2393
  %52 = icmp eq ptr %38, @slot0, !dbg !2489
  br i1 %52, label %54, label %53, !dbg !2491

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2492
  br label %54, !dbg !2492

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2493
  call void @llvm.dbg.value(metadata ptr %55, metadata !2432, metadata !DIExpression()), !dbg !2474
  store ptr %55, ptr %37, align 8, !dbg !2494, !tbaa !2381
  %56 = load i32, ptr %3, align 8, !dbg !2495, !tbaa !1625
  %57 = load ptr, ptr %44, align 8, !dbg !2496, !tbaa !1696
  %58 = load ptr, ptr %46, align 8, !dbg !2497, !tbaa !1699
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2498
  br label %60, !dbg !2499

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2474
  call void @llvm.dbg.value(metadata ptr %61, metadata !2432, metadata !DIExpression()), !dbg !2474
  store i32 %7, ptr %6, align 4, !dbg !2500, !tbaa !813
  ret ptr %61, !dbg !2501
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2502 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2506, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata ptr %1, metadata !2507, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i64 %2, metadata !2508, metadata !DIExpression()), !dbg !2509
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2510
  ret ptr %4, !dbg !2511
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2512 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2514, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i32 0, metadata !2410, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata ptr %0, metadata !2411, metadata !DIExpression()), !dbg !2516
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2518
  ret ptr %2, !dbg !2519
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2520 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2524, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %1, metadata !2525, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i32 0, metadata !2506, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata ptr %0, metadata !2507, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i64 %1, metadata !2508, metadata !DIExpression()), !dbg !2527
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2529
  ret ptr %3, !dbg !2530
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2531 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2535, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i32 %1, metadata !2536, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata ptr %2, metadata !2537, metadata !DIExpression()), !dbg !2539
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2540
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2538, metadata !DIExpression()), !dbg !2541
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2542), !dbg !2545
  call void @llvm.dbg.value(metadata i32 %1, metadata !2546, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2551, metadata !DIExpression()), !dbg !2554
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2554, !alias.scope !2542
  %5 = icmp eq i32 %1, 10, !dbg !2555
  br i1 %5, label %6, label %7, !dbg !2557

6:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2558, !noalias !2542
  unreachable, !dbg !2558

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2559, !tbaa !1625, !alias.scope !2542
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2560
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2561
  ret ptr %8, !dbg !2562
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2563 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2567, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i32 %1, metadata !2568, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata ptr %2, metadata !2569, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i64 %3, metadata !2570, metadata !DIExpression()), !dbg !2572
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2573
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2571, metadata !DIExpression()), !dbg !2574
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2575), !dbg !2578
  call void @llvm.dbg.value(metadata i32 %1, metadata !2546, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2551, metadata !DIExpression()), !dbg !2581
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2581, !alias.scope !2575
  %6 = icmp eq i32 %1, 10, !dbg !2582
  br i1 %6, label %7, label %8, !dbg !2583

7:                                                ; preds = %4
  tail call void @abort() #36, !dbg !2584, !noalias !2575
  unreachable, !dbg !2584

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2585, !tbaa !1625, !alias.scope !2575
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2586
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2587
  ret ptr %9, !dbg !2588
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2589 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2593, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata ptr %1, metadata !2594, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i32 0, metadata !2535, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i32 %0, metadata !2536, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata ptr %1, metadata !2537, metadata !DIExpression()), !dbg !2596
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2598
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2538, metadata !DIExpression()), !dbg !2599
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2600), !dbg !2603
  call void @llvm.dbg.value(metadata i32 %0, metadata !2546, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2551, metadata !DIExpression()), !dbg !2606
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2606, !alias.scope !2600
  %4 = icmp eq i32 %0, 10, !dbg !2607
  br i1 %4, label %5, label %6, !dbg !2608

5:                                                ; preds = %2
  tail call void @abort() #36, !dbg !2609, !noalias !2600
  unreachable, !dbg !2609

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2610, !tbaa !1625, !alias.scope !2600
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2611
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2612
  ret ptr %7, !dbg !2613
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2614 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2618, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata ptr %1, metadata !2619, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i64 %2, metadata !2620, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i32 0, metadata !2567, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i32 %0, metadata !2568, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata ptr %1, metadata !2569, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i64 %2, metadata !2570, metadata !DIExpression()), !dbg !2622
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2624
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2571, metadata !DIExpression()), !dbg !2625
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2626), !dbg !2629
  call void @llvm.dbg.value(metadata i32 %0, metadata !2546, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2551, metadata !DIExpression()), !dbg !2632
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2632, !alias.scope !2626
  %5 = icmp eq i32 %0, 10, !dbg !2633
  br i1 %5, label %6, label %7, !dbg !2634

6:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2635, !noalias !2626
  unreachable, !dbg !2635

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2636, !tbaa !1625, !alias.scope !2626
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2637
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2638
  ret ptr %8, !dbg !2639
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2640 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2644, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i64 %1, metadata !2645, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i8 %2, metadata !2646, metadata !DIExpression()), !dbg !2648
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2649
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2647, metadata !DIExpression()), !dbg !2650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2651, !tbaa.struct !2652
  call void @llvm.dbg.value(metadata ptr %4, metadata !1642, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i8 %2, metadata !1643, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i32 1, metadata !1644, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i8 %2, metadata !1645, metadata !DIExpression()), !dbg !2653
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2655
  %6 = lshr i8 %2, 5, !dbg !2656
  %7 = zext i8 %6 to i64, !dbg !2656
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2657
  call void @llvm.dbg.value(metadata ptr %8, metadata !1646, metadata !DIExpression()), !dbg !2653
  %9 = and i8 %2, 31, !dbg !2658
  %10 = zext i8 %9 to i32, !dbg !2658
  call void @llvm.dbg.value(metadata i32 %10, metadata !1648, metadata !DIExpression()), !dbg !2653
  %11 = load i32, ptr %8, align 4, !dbg !2659, !tbaa !813
  %12 = lshr i32 %11, %10, !dbg !2660
  call void @llvm.dbg.value(metadata i32 %12, metadata !1649, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2653
  %13 = and i32 %12, 1, !dbg !2661
  %14 = xor i32 %13, 1, !dbg !2661
  %15 = shl nuw i32 %14, %10, !dbg !2662
  %16 = xor i32 %15, %11, !dbg !2663
  store i32 %16, ptr %8, align 4, !dbg !2663, !tbaa !813
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2664
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2665
  ret ptr %17, !dbg !2666
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2667 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2671, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i8 %1, metadata !2672, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata ptr %0, metadata !2644, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i64 -1, metadata !2645, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8 %1, metadata !2646, metadata !DIExpression()), !dbg !2674
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2676
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2647, metadata !DIExpression()), !dbg !2677
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2678, !tbaa.struct !2652
  call void @llvm.dbg.value(metadata ptr %3, metadata !1642, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i8 %1, metadata !1643, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i32 1, metadata !1644, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i8 %1, metadata !1645, metadata !DIExpression()), !dbg !2679
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2681
  %5 = lshr i8 %1, 5, !dbg !2682
  %6 = zext i8 %5 to i64, !dbg !2682
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2683
  call void @llvm.dbg.value(metadata ptr %7, metadata !1646, metadata !DIExpression()), !dbg !2679
  %8 = and i8 %1, 31, !dbg !2684
  %9 = zext i8 %8 to i32, !dbg !2684
  call void @llvm.dbg.value(metadata i32 %9, metadata !1648, metadata !DIExpression()), !dbg !2679
  %10 = load i32, ptr %7, align 4, !dbg !2685, !tbaa !813
  %11 = lshr i32 %10, %9, !dbg !2686
  call void @llvm.dbg.value(metadata i32 %11, metadata !1649, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2679
  %12 = and i32 %11, 1, !dbg !2687
  %13 = xor i32 %12, 1, !dbg !2687
  %14 = shl nuw i32 %13, %9, !dbg !2688
  %15 = xor i32 %14, %10, !dbg !2689
  store i32 %15, ptr %7, align 4, !dbg !2689, !tbaa !813
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2690
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2691
  ret ptr %16, !dbg !2692
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2693 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2695, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata ptr %0, metadata !2671, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 58, metadata !2672, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata ptr %0, metadata !2644, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i64 -1, metadata !2645, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 58, metadata !2646, metadata !DIExpression()), !dbg !2699
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2701
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2647, metadata !DIExpression()), !dbg !2702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2703, !tbaa.struct !2652
  call void @llvm.dbg.value(metadata ptr %2, metadata !1642, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i8 58, metadata !1643, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i32 1, metadata !1644, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i8 58, metadata !1645, metadata !DIExpression()), !dbg !2704
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2706
  call void @llvm.dbg.value(metadata ptr %3, metadata !1646, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i32 26, metadata !1648, metadata !DIExpression()), !dbg !2704
  %4 = load i32, ptr %3, align 4, !dbg !2707, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %4, metadata !1649, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2704
  %5 = or i32 %4, 67108864, !dbg !2708
  store i32 %5, ptr %3, align 4, !dbg !2708, !tbaa !813
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2709
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2710
  ret ptr %6, !dbg !2711
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2712 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2714, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i64 %1, metadata !2715, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata ptr %0, metadata !2644, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i64 %1, metadata !2645, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i8 58, metadata !2646, metadata !DIExpression()), !dbg !2717
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2719
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2647, metadata !DIExpression()), !dbg !2720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2721, !tbaa.struct !2652
  call void @llvm.dbg.value(metadata ptr %3, metadata !1642, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i8 58, metadata !1643, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i32 1, metadata !1644, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i8 58, metadata !1645, metadata !DIExpression()), !dbg !2722
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2724
  call void @llvm.dbg.value(metadata ptr %4, metadata !1646, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i32 26, metadata !1648, metadata !DIExpression()), !dbg !2722
  %5 = load i32, ptr %4, align 4, !dbg !2725, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %5, metadata !1649, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2722
  %6 = or i32 %5, 67108864, !dbg !2726
  store i32 %6, ptr %4, align 4, !dbg !2726, !tbaa !813
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2727
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2728
  ret ptr %7, !dbg !2729
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2730 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2551, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2736
  call void @llvm.dbg.value(metadata i32 %0, metadata !2732, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i32 %1, metadata !2733, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata ptr %2, metadata !2734, metadata !DIExpression()), !dbg !2738
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2739
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2735, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i32 %1, metadata !2546, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i32 0, metadata !2551, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2741
  %5 = icmp eq i32 %1, 10, !dbg !2742
  br i1 %5, label %6, label %7, !dbg !2743

6:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2744, !noalias !2745
  unreachable, !dbg !2744

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2551, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2741
  store i32 %1, ptr %4, align 8, !dbg !2748, !tbaa.struct !2652
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2748
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2748
  call void @llvm.dbg.value(metadata ptr %4, metadata !1642, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i8 58, metadata !1643, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i32 1, metadata !1644, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i8 58, metadata !1645, metadata !DIExpression()), !dbg !2749
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2751
  call void @llvm.dbg.value(metadata ptr %9, metadata !1646, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i32 26, metadata !1648, metadata !DIExpression()), !dbg !2749
  %10 = load i32, ptr %9, align 4, !dbg !2752, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %10, metadata !1649, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2749
  %11 = or i32 %10, 67108864, !dbg !2753
  store i32 %11, ptr %9, align 4, !dbg !2753, !tbaa !813
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2754
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2755
  ret ptr %12, !dbg !2756
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2757 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2761, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata ptr %1, metadata !2762, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata ptr %2, metadata !2763, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata ptr %3, metadata !2764, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i32 %0, metadata !2766, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata ptr %1, metadata !2771, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata ptr %2, metadata !2772, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata ptr %3, metadata !2773, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i64 -1, metadata !2774, metadata !DIExpression()), !dbg !2776
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2778
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2775, metadata !DIExpression()), !dbg !2779
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2780, !tbaa.struct !2652
  call void @llvm.dbg.value(metadata ptr %5, metadata !1682, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata ptr %1, metadata !1683, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata ptr %2, metadata !1684, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata ptr %5, metadata !1682, metadata !DIExpression()), !dbg !2781
  store i32 10, ptr %5, align 8, !dbg !2783, !tbaa !1625
  %6 = icmp ne ptr %1, null, !dbg !2784
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2785
  br i1 %8, label %10, label %9, !dbg !2785

9:                                                ; preds = %4
  tail call void @abort() #36, !dbg !2786
  unreachable, !dbg !2786

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2787
  store ptr %1, ptr %11, align 8, !dbg !2788, !tbaa !1696
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2789
  store ptr %2, ptr %12, align 8, !dbg !2790, !tbaa !1699
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2791
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2792
  ret ptr %13, !dbg !2793
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2767 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2766, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata ptr %1, metadata !2771, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata ptr %2, metadata !2772, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata ptr %3, metadata !2773, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i64 %4, metadata !2774, metadata !DIExpression()), !dbg !2794
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !2795
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2775, metadata !DIExpression()), !dbg !2796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2797, !tbaa.struct !2652
  call void @llvm.dbg.value(metadata ptr %6, metadata !1682, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata ptr %1, metadata !1683, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata ptr %2, metadata !1684, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata ptr %6, metadata !1682, metadata !DIExpression()), !dbg !2798
  store i32 10, ptr %6, align 8, !dbg !2800, !tbaa !1625
  %7 = icmp ne ptr %1, null, !dbg !2801
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2802
  br i1 %9, label %11, label %10, !dbg !2802

10:                                               ; preds = %5
  tail call void @abort() #36, !dbg !2803
  unreachable, !dbg !2803

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2804
  store ptr %1, ptr %12, align 8, !dbg !2805, !tbaa !1696
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2806
  store ptr %2, ptr %13, align 8, !dbg !2807, !tbaa !1699
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2808
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !2809
  ret ptr %14, !dbg !2810
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2811 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2815, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata ptr %1, metadata !2816, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata ptr %2, metadata !2817, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i32 0, metadata !2761, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata ptr %0, metadata !2762, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata ptr %1, metadata !2763, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata ptr %2, metadata !2764, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i32 0, metadata !2766, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata ptr %0, metadata !2771, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata ptr %1, metadata !2772, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata ptr %2, metadata !2773, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i64 -1, metadata !2774, metadata !DIExpression()), !dbg !2821
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2823
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2775, metadata !DIExpression()), !dbg !2824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2825, !tbaa.struct !2652
  call void @llvm.dbg.value(metadata ptr %4, metadata !1682, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata ptr %0, metadata !1683, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata ptr %1, metadata !1684, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata ptr %4, metadata !1682, metadata !DIExpression()), !dbg !2826
  store i32 10, ptr %4, align 8, !dbg !2828, !tbaa !1625
  %5 = icmp ne ptr %0, null, !dbg !2829
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2830
  br i1 %7, label %9, label %8, !dbg !2830

8:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2831
  unreachable, !dbg !2831

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2832
  store ptr %0, ptr %10, align 8, !dbg !2833, !tbaa !1696
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2834
  store ptr %1, ptr %11, align 8, !dbg !2835, !tbaa !1699
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2836
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2837
  ret ptr %12, !dbg !2838
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2839 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2843, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata ptr %1, metadata !2844, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata ptr %2, metadata !2845, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i64 %3, metadata !2846, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i32 0, metadata !2766, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata ptr %0, metadata !2771, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata ptr %1, metadata !2772, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata ptr %2, metadata !2773, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 %3, metadata !2774, metadata !DIExpression()), !dbg !2848
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2850
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2775, metadata !DIExpression()), !dbg !2851
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2852, !tbaa.struct !2652
  call void @llvm.dbg.value(metadata ptr %5, metadata !1682, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata ptr %0, metadata !1683, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata ptr %1, metadata !1684, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata ptr %5, metadata !1682, metadata !DIExpression()), !dbg !2853
  store i32 10, ptr %5, align 8, !dbg !2855, !tbaa !1625
  %6 = icmp ne ptr %0, null, !dbg !2856
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2857
  br i1 %8, label %10, label %9, !dbg !2857

9:                                                ; preds = %4
  tail call void @abort() #36, !dbg !2858
  unreachable, !dbg !2858

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2859
  store ptr %0, ptr %11, align 8, !dbg !2860, !tbaa !1696
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2861
  store ptr %1, ptr %12, align 8, !dbg !2862, !tbaa !1699
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2863
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2864
  ret ptr %13, !dbg !2865
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2866 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2870, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata ptr %1, metadata !2871, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i64 %2, metadata !2872, metadata !DIExpression()), !dbg !2873
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2874
  ret ptr %4, !dbg !2875
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2876 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2880, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i64 %1, metadata !2881, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i32 0, metadata !2870, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata ptr %0, metadata !2871, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i64 %1, metadata !2872, metadata !DIExpression()), !dbg !2883
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2885
  ret ptr %3, !dbg !2886
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2887 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2891, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata ptr %1, metadata !2892, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i32 %0, metadata !2870, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata ptr %1, metadata !2871, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i64 -1, metadata !2872, metadata !DIExpression()), !dbg !2894
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2896
  ret ptr %3, !dbg !2897
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2898 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2902, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i32 0, metadata !2891, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata ptr %0, metadata !2892, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i32 0, metadata !2870, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata ptr %0, metadata !2871, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 -1, metadata !2872, metadata !DIExpression()), !dbg !2906
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2908
  ret ptr %2, !dbg !2909
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2910 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2949, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata ptr %1, metadata !2950, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata ptr %2, metadata !2951, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata ptr %3, metadata !2952, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata ptr %4, metadata !2953, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 %5, metadata !2954, metadata !DIExpression()), !dbg !2955
  %7 = icmp eq ptr %1, null, !dbg !2956
  br i1 %7, label %10, label %8, !dbg !2958

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.78, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !2959
  br label %12, !dbg !2959

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.79, ptr noundef %2, ptr noundef %3) #37, !dbg !2960
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.3.81, i32 noundef 5) #37, !dbg !2961
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !2961
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.82, ptr noundef %0), !dbg !2962
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.5.83, i32 noundef 5) #37, !dbg !2963
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.84) #37, !dbg !2963
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.82, ptr noundef %0), !dbg !2964
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
  ], !dbg !2965

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.7.85, i32 noundef 5) #37, !dbg !2966
  %21 = load ptr, ptr %4, align 8, !dbg !2966, !tbaa !775
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !2966
  br label %147, !dbg !2968

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.8.86, i32 noundef 5) #37, !dbg !2969
  %25 = load ptr, ptr %4, align 8, !dbg !2969, !tbaa !775
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2969
  %27 = load ptr, ptr %26, align 8, !dbg !2969, !tbaa !775
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !2969
  br label %147, !dbg !2970

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.9.87, i32 noundef 5) #37, !dbg !2971
  %31 = load ptr, ptr %4, align 8, !dbg !2971, !tbaa !775
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2971
  %33 = load ptr, ptr %32, align 8, !dbg !2971, !tbaa !775
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2971
  %35 = load ptr, ptr %34, align 8, !dbg !2971, !tbaa !775
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !2971
  br label %147, !dbg !2972

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.10.88, i32 noundef 5) #37, !dbg !2973
  %39 = load ptr, ptr %4, align 8, !dbg !2973, !tbaa !775
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2973
  %41 = load ptr, ptr %40, align 8, !dbg !2973, !tbaa !775
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2973
  %43 = load ptr, ptr %42, align 8, !dbg !2973, !tbaa !775
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2973
  %45 = load ptr, ptr %44, align 8, !dbg !2973, !tbaa !775
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !2973
  br label %147, !dbg !2974

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.11.89, i32 noundef 5) #37, !dbg !2975
  %49 = load ptr, ptr %4, align 8, !dbg !2975, !tbaa !775
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2975
  %51 = load ptr, ptr %50, align 8, !dbg !2975, !tbaa !775
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2975
  %53 = load ptr, ptr %52, align 8, !dbg !2975, !tbaa !775
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2975
  %55 = load ptr, ptr %54, align 8, !dbg !2975, !tbaa !775
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2975
  %57 = load ptr, ptr %56, align 8, !dbg !2975, !tbaa !775
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !2975
  br label %147, !dbg !2976

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.12.90, i32 noundef 5) #37, !dbg !2977
  %61 = load ptr, ptr %4, align 8, !dbg !2977, !tbaa !775
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2977
  %63 = load ptr, ptr %62, align 8, !dbg !2977, !tbaa !775
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2977
  %65 = load ptr, ptr %64, align 8, !dbg !2977, !tbaa !775
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2977
  %67 = load ptr, ptr %66, align 8, !dbg !2977, !tbaa !775
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2977
  %69 = load ptr, ptr %68, align 8, !dbg !2977, !tbaa !775
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2977
  %71 = load ptr, ptr %70, align 8, !dbg !2977, !tbaa !775
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !2977
  br label %147, !dbg !2978

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.13.91, i32 noundef 5) #37, !dbg !2979
  %75 = load ptr, ptr %4, align 8, !dbg !2979, !tbaa !775
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2979
  %77 = load ptr, ptr %76, align 8, !dbg !2979, !tbaa !775
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2979
  %79 = load ptr, ptr %78, align 8, !dbg !2979, !tbaa !775
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2979
  %81 = load ptr, ptr %80, align 8, !dbg !2979, !tbaa !775
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2979
  %83 = load ptr, ptr %82, align 8, !dbg !2979, !tbaa !775
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2979
  %85 = load ptr, ptr %84, align 8, !dbg !2979, !tbaa !775
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2979
  %87 = load ptr, ptr %86, align 8, !dbg !2979, !tbaa !775
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !2979
  br label %147, !dbg !2980

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.14.92, i32 noundef 5) #37, !dbg !2981
  %91 = load ptr, ptr %4, align 8, !dbg !2981, !tbaa !775
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2981
  %93 = load ptr, ptr %92, align 8, !dbg !2981, !tbaa !775
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2981
  %95 = load ptr, ptr %94, align 8, !dbg !2981, !tbaa !775
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2981
  %97 = load ptr, ptr %96, align 8, !dbg !2981, !tbaa !775
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2981
  %99 = load ptr, ptr %98, align 8, !dbg !2981, !tbaa !775
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2981
  %101 = load ptr, ptr %100, align 8, !dbg !2981, !tbaa !775
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2981
  %103 = load ptr, ptr %102, align 8, !dbg !2981, !tbaa !775
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2981
  %105 = load ptr, ptr %104, align 8, !dbg !2981, !tbaa !775
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !2981
  br label %147, !dbg !2982

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.15.93, i32 noundef 5) #37, !dbg !2983
  %109 = load ptr, ptr %4, align 8, !dbg !2983, !tbaa !775
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2983
  %111 = load ptr, ptr %110, align 8, !dbg !2983, !tbaa !775
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2983
  %113 = load ptr, ptr %112, align 8, !dbg !2983, !tbaa !775
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2983
  %115 = load ptr, ptr %114, align 8, !dbg !2983, !tbaa !775
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2983
  %117 = load ptr, ptr %116, align 8, !dbg !2983, !tbaa !775
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2983
  %119 = load ptr, ptr %118, align 8, !dbg !2983, !tbaa !775
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2983
  %121 = load ptr, ptr %120, align 8, !dbg !2983, !tbaa !775
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2983
  %123 = load ptr, ptr %122, align 8, !dbg !2983, !tbaa !775
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2983
  %125 = load ptr, ptr %124, align 8, !dbg !2983, !tbaa !775
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !2983
  br label %147, !dbg !2984

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.16.94, i32 noundef 5) #37, !dbg !2985
  %129 = load ptr, ptr %4, align 8, !dbg !2985, !tbaa !775
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2985
  %131 = load ptr, ptr %130, align 8, !dbg !2985, !tbaa !775
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2985
  %133 = load ptr, ptr %132, align 8, !dbg !2985, !tbaa !775
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2985
  %135 = load ptr, ptr %134, align 8, !dbg !2985, !tbaa !775
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2985
  %137 = load ptr, ptr %136, align 8, !dbg !2985, !tbaa !775
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2985
  %139 = load ptr, ptr %138, align 8, !dbg !2985, !tbaa !775
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2985
  %141 = load ptr, ptr %140, align 8, !dbg !2985, !tbaa !775
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2985
  %143 = load ptr, ptr %142, align 8, !dbg !2985, !tbaa !775
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2985
  %145 = load ptr, ptr %144, align 8, !dbg !2985, !tbaa !775
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !2985
  br label %147, !dbg !2986

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2987
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2988 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2992, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr %1, metadata !2993, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr %2, metadata !2994, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr %3, metadata !2995, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr %4, metadata !2996, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 0, metadata !2997, metadata !DIExpression()), !dbg !2998
  br label %6, !dbg !2999

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3001
  call void @llvm.dbg.value(metadata i64 %7, metadata !2997, metadata !DIExpression()), !dbg !2998
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3002
  %9 = load ptr, ptr %8, align 8, !dbg !3002, !tbaa !775
  %10 = icmp eq ptr %9, null, !dbg !3004
  %11 = add i64 %7, 1, !dbg !3005
  call void @llvm.dbg.value(metadata i64 %11, metadata !2997, metadata !DIExpression()), !dbg !2998
  br i1 %10, label %12, label %6, !dbg !3004, !llvm.loop !3006

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3008
  ret void, !dbg !3009
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3010 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3022, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata ptr %1, metadata !3023, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata ptr %2, metadata !3024, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata ptr %3, metadata !3025, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata ptr %4, metadata !3026, metadata !DIExpression()), !dbg !3030
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !3031
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3028, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 0, metadata !3027, metadata !DIExpression()), !dbg !3030
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3027, metadata !DIExpression()), !dbg !3030
  %10 = icmp ult i32 %9, 41, !dbg !3033
  br i1 %10, label %11, label %16, !dbg !3033

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3033
  %13 = zext i32 %9 to i64, !dbg !3033
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3033
  %15 = add nuw nsw i32 %9, 8, !dbg !3033
  store i32 %15, ptr %4, align 8, !dbg !3033
  br label %19, !dbg !3033

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3033
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3033
  store ptr %18, ptr %7, align 8, !dbg !3033
  br label %19, !dbg !3033

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3033
  %22 = load ptr, ptr %21, align 8, !dbg !3033
  store ptr %22, ptr %6, align 16, !dbg !3036, !tbaa !775
  %23 = icmp eq ptr %22, null, !dbg !3037
  br i1 %23, label %128, label %24, !dbg !3038

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !3027, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 1, metadata !3027, metadata !DIExpression()), !dbg !3030
  %25 = icmp ult i32 %20, 41, !dbg !3033
  br i1 %25, label %29, label %26, !dbg !3033

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3033
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3033
  store ptr %28, ptr %7, align 8, !dbg !3033
  br label %34, !dbg !3033

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3033
  %31 = zext i32 %20 to i64, !dbg !3033
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3033
  %33 = add nuw nsw i32 %20, 8, !dbg !3033
  store i32 %33, ptr %4, align 8, !dbg !3033
  br label %34, !dbg !3033

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3033
  %37 = load ptr, ptr %36, align 8, !dbg !3033
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3039
  store ptr %37, ptr %38, align 8, !dbg !3036, !tbaa !775
  %39 = icmp eq ptr %37, null, !dbg !3037
  br i1 %39, label %128, label %40, !dbg !3038

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !3027, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 2, metadata !3027, metadata !DIExpression()), !dbg !3030
  %41 = icmp ult i32 %35, 41, !dbg !3033
  br i1 %41, label %45, label %42, !dbg !3033

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3033
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3033
  store ptr %44, ptr %7, align 8, !dbg !3033
  br label %50, !dbg !3033

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3033
  %47 = zext i32 %35 to i64, !dbg !3033
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3033
  %49 = add nuw nsw i32 %35, 8, !dbg !3033
  store i32 %49, ptr %4, align 8, !dbg !3033
  br label %50, !dbg !3033

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3033
  %53 = load ptr, ptr %52, align 8, !dbg !3033
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3039
  store ptr %53, ptr %54, align 16, !dbg !3036, !tbaa !775
  %55 = icmp eq ptr %53, null, !dbg !3037
  br i1 %55, label %128, label %56, !dbg !3038

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !3027, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 3, metadata !3027, metadata !DIExpression()), !dbg !3030
  %57 = icmp ult i32 %51, 41, !dbg !3033
  br i1 %57, label %61, label %58, !dbg !3033

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3033
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3033
  store ptr %60, ptr %7, align 8, !dbg !3033
  br label %66, !dbg !3033

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3033
  %63 = zext i32 %51 to i64, !dbg !3033
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3033
  %65 = add nuw nsw i32 %51, 8, !dbg !3033
  store i32 %65, ptr %4, align 8, !dbg !3033
  br label %66, !dbg !3033

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3033
  %69 = load ptr, ptr %68, align 8, !dbg !3033
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3039
  store ptr %69, ptr %70, align 8, !dbg !3036, !tbaa !775
  %71 = icmp eq ptr %69, null, !dbg !3037
  br i1 %71, label %128, label %72, !dbg !3038

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !3027, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 4, metadata !3027, metadata !DIExpression()), !dbg !3030
  %73 = icmp ult i32 %67, 41, !dbg !3033
  br i1 %73, label %77, label %74, !dbg !3033

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3033
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3033
  store ptr %76, ptr %7, align 8, !dbg !3033
  br label %82, !dbg !3033

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3033
  %79 = zext i32 %67 to i64, !dbg !3033
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3033
  %81 = add nuw nsw i32 %67, 8, !dbg !3033
  store i32 %81, ptr %4, align 8, !dbg !3033
  br label %82, !dbg !3033

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3033
  %85 = load ptr, ptr %84, align 8, !dbg !3033
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3039
  store ptr %85, ptr %86, align 16, !dbg !3036, !tbaa !775
  %87 = icmp eq ptr %85, null, !dbg !3037
  br i1 %87, label %128, label %88, !dbg !3038

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !3027, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 5, metadata !3027, metadata !DIExpression()), !dbg !3030
  %89 = icmp ult i32 %83, 41, !dbg !3033
  br i1 %89, label %93, label %90, !dbg !3033

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3033
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3033
  store ptr %92, ptr %7, align 8, !dbg !3033
  br label %98, !dbg !3033

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3033
  %95 = zext i32 %83 to i64, !dbg !3033
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3033
  %97 = add nuw nsw i32 %83, 8, !dbg !3033
  store i32 %97, ptr %4, align 8, !dbg !3033
  br label %98, !dbg !3033

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3033
  %100 = load ptr, ptr %99, align 8, !dbg !3033
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3039
  store ptr %100, ptr %101, align 8, !dbg !3036, !tbaa !775
  %102 = icmp eq ptr %100, null, !dbg !3037
  br i1 %102, label %128, label %103, !dbg !3038

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !3027, metadata !DIExpression()), !dbg !3030
  %104 = load ptr, ptr %7, align 8, !dbg !3033
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3033
  store ptr %105, ptr %7, align 8, !dbg !3033
  %106 = load ptr, ptr %104, align 8, !dbg !3033
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3039
  store ptr %106, ptr %107, align 16, !dbg !3036, !tbaa !775
  %108 = icmp eq ptr %106, null, !dbg !3037
  br i1 %108, label %128, label %109, !dbg !3038

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !3027, metadata !DIExpression()), !dbg !3030
  %110 = load ptr, ptr %7, align 8, !dbg !3033
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3033
  store ptr %111, ptr %7, align 8, !dbg !3033
  %112 = load ptr, ptr %110, align 8, !dbg !3033
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3039
  store ptr %112, ptr %113, align 8, !dbg !3036, !tbaa !775
  %114 = icmp eq ptr %112, null, !dbg !3037
  br i1 %114, label %128, label %115, !dbg !3038

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !3027, metadata !DIExpression()), !dbg !3030
  %116 = load ptr, ptr %7, align 8, !dbg !3033
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3033
  store ptr %117, ptr %7, align 8, !dbg !3033
  %118 = load ptr, ptr %116, align 8, !dbg !3033
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3039
  store ptr %118, ptr %119, align 16, !dbg !3036, !tbaa !775
  %120 = icmp eq ptr %118, null, !dbg !3037
  br i1 %120, label %128, label %121, !dbg !3038

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !3027, metadata !DIExpression()), !dbg !3030
  %122 = load ptr, ptr %7, align 8, !dbg !3033
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3033
  store ptr %123, ptr %7, align 8, !dbg !3033
  %124 = load ptr, ptr %122, align 8, !dbg !3033
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3039
  store ptr %124, ptr %125, align 8, !dbg !3036, !tbaa !775
  %126 = icmp eq ptr %124, null, !dbg !3037
  %127 = select i1 %126, i64 9, i64 10, !dbg !3038
  br label %128, !dbg !3038

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3040
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3041
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !3042
  ret void, !dbg !3042
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3043 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3047, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata ptr %1, metadata !3048, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata ptr %2, metadata !3049, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata ptr %3, metadata !3050, metadata !DIExpression()), !dbg !3056
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #37, !dbg !3057
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3051, metadata !DIExpression()), !dbg !3058
  call void @llvm.va_start(ptr nonnull %5), !dbg !3059
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3060
  call void @llvm.va_end(ptr nonnull %5), !dbg !3061
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #37, !dbg !3062
  ret void, !dbg !3062
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3063 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3064, !tbaa !775
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.82, ptr noundef %1), !dbg !3064
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.17.99, i32 noundef 5) #37, !dbg !3065
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.100) #37, !dbg !3065
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.19.101, i32 noundef 5) #37, !dbg !3066
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.102, ptr noundef nonnull @.str.21.103) #37, !dbg !3066
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.22.104, i32 noundef 5) #37, !dbg !3067
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.105) #37, !dbg !3067
  ret void, !dbg !3068
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3069 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3074, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i64 %1, metadata !3075, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i64 %2, metadata !3076, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata ptr %0, metadata !3078, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i64 %1, metadata !3081, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i64 %2, metadata !3082, metadata !DIExpression()), !dbg !3083
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3085
  call void @llvm.dbg.value(metadata ptr %4, metadata !3086, metadata !DIExpression()), !dbg !3091
  %5 = icmp eq ptr %4, null, !dbg !3093
  br i1 %5, label %6, label %7, !dbg !3095

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3096
  unreachable, !dbg !3096

7:                                                ; preds = %3
  ret ptr %4, !dbg !3097
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3079 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3078, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64 %1, metadata !3081, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64 %2, metadata !3082, metadata !DIExpression()), !dbg !3098
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3099
  call void @llvm.dbg.value(metadata ptr %4, metadata !3086, metadata !DIExpression()), !dbg !3100
  %5 = icmp eq ptr %4, null, !dbg !3102
  br i1 %5, label %6, label %7, !dbg !3103

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3104
  unreachable, !dbg !3104

7:                                                ; preds = %3
  ret ptr %4, !dbg !3105
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3106 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3110, metadata !DIExpression()), !dbg !3111
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3112
  call void @llvm.dbg.value(metadata ptr %2, metadata !3086, metadata !DIExpression()), !dbg !3113
  %3 = icmp eq ptr %2, null, !dbg !3115
  br i1 %3, label %4, label %5, !dbg !3116

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3117
  unreachable, !dbg !3117

5:                                                ; preds = %1
  ret ptr %2, !dbg !3118
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3119 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3120 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3124, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i64 %0, metadata !3126, metadata !DIExpression()), !dbg !3130
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3132
  call void @llvm.dbg.value(metadata ptr %2, metadata !3086, metadata !DIExpression()), !dbg !3133
  %3 = icmp eq ptr %2, null, !dbg !3135
  br i1 %3, label %4, label %5, !dbg !3136

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3137
  unreachable, !dbg !3137

5:                                                ; preds = %1
  ret ptr %2, !dbg !3138
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3139 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3143, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i64 %0, metadata !3110, metadata !DIExpression()), !dbg !3145
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3147
  call void @llvm.dbg.value(metadata ptr %2, metadata !3086, metadata !DIExpression()), !dbg !3148
  %3 = icmp eq ptr %2, null, !dbg !3150
  br i1 %3, label %4, label %5, !dbg !3151

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3152
  unreachable, !dbg !3152

5:                                                ; preds = %1
  ret ptr %2, !dbg !3153
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3154 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3158, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i64 %1, metadata !3159, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata ptr %0, metadata !3161, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i64 %1, metadata !3165, metadata !DIExpression()), !dbg !3166
  %3 = icmp eq i64 %1, 0, !dbg !3168
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3168
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3169
  call void @llvm.dbg.value(metadata ptr %5, metadata !3086, metadata !DIExpression()), !dbg !3170
  %6 = icmp eq ptr %5, null, !dbg !3172
  br i1 %6, label %7, label %8, !dbg !3173

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3174
  unreachable, !dbg !3174

8:                                                ; preds = %2
  ret ptr %5, !dbg !3175
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3176 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3177 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3181, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i64 %1, metadata !3182, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata ptr %0, metadata !3184, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i64 %1, metadata !3187, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata ptr %0, metadata !3161, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i64 %1, metadata !3165, metadata !DIExpression()), !dbg !3190
  %3 = icmp eq i64 %1, 0, !dbg !3192
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3192
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3193
  call void @llvm.dbg.value(metadata ptr %5, metadata !3086, metadata !DIExpression()), !dbg !3194
  %6 = icmp eq ptr %5, null, !dbg !3196
  br i1 %6, label %7, label %8, !dbg !3197

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3198
  unreachable, !dbg !3198

8:                                                ; preds = %2
  ret ptr %5, !dbg !3199
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3200 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3204, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i64 %1, metadata !3205, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i64 %2, metadata !3206, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata ptr %0, metadata !3208, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %1, metadata !3211, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %2, metadata !3212, metadata !DIExpression()), !dbg !3213
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3215
  call void @llvm.dbg.value(metadata ptr %4, metadata !3086, metadata !DIExpression()), !dbg !3216
  %5 = icmp eq ptr %4, null, !dbg !3218
  br i1 %5, label %6, label %7, !dbg !3219

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3220
  unreachable, !dbg !3220

7:                                                ; preds = %3
  ret ptr %4, !dbg !3221
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3222 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3226, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i64 %1, metadata !3227, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata ptr null, metadata !3078, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %0, metadata !3081, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %1, metadata !3082, metadata !DIExpression()), !dbg !3229
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3231
  call void @llvm.dbg.value(metadata ptr %3, metadata !3086, metadata !DIExpression()), !dbg !3232
  %4 = icmp eq ptr %3, null, !dbg !3234
  br i1 %4, label %5, label %6, !dbg !3235

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3236
  unreachable, !dbg !3236

6:                                                ; preds = %2
  ret ptr %3, !dbg !3237
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3238 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3242, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i64 %1, metadata !3243, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata ptr null, metadata !3204, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64 %0, metadata !3205, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64 %1, metadata !3206, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata ptr null, metadata !3208, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 %0, metadata !3211, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 %1, metadata !3212, metadata !DIExpression()), !dbg !3247
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3249
  call void @llvm.dbg.value(metadata ptr %3, metadata !3086, metadata !DIExpression()), !dbg !3250
  %4 = icmp eq ptr %3, null, !dbg !3252
  br i1 %4, label %5, label %6, !dbg !3253

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3254
  unreachable, !dbg !3254

6:                                                ; preds = %2
  ret ptr %3, !dbg !3255
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3256 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3260, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata ptr %1, metadata !3261, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata ptr %0, metadata !711, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata ptr %1, metadata !712, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i64 1, metadata !713, metadata !DIExpression()), !dbg !3263
  %3 = load i64, ptr %1, align 8, !dbg !3265, !tbaa !2365
  call void @llvm.dbg.value(metadata i64 %3, metadata !714, metadata !DIExpression()), !dbg !3263
  %4 = icmp eq ptr %0, null, !dbg !3266
  br i1 %4, label %5, label %8, !dbg !3268

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3269
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3272
  br label %15, !dbg !3272

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3273
  %10 = add nuw i64 %9, 1, !dbg !3273
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3273
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3273
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3273
  call void @llvm.dbg.value(metadata i64 %13, metadata !714, metadata !DIExpression()), !dbg !3263
  br i1 %12, label %14, label %15, !dbg !3276

14:                                               ; preds = %8
  tail call void @xalloc_die() #36, !dbg !3277
  unreachable, !dbg !3277

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3263
  call void @llvm.dbg.value(metadata i64 %16, metadata !714, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata ptr %0, metadata !3078, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i64 %16, metadata !3081, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i64 1, metadata !3082, metadata !DIExpression()), !dbg !3278
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3280
  call void @llvm.dbg.value(metadata ptr %17, metadata !3086, metadata !DIExpression()), !dbg !3281
  %18 = icmp eq ptr %17, null, !dbg !3283
  br i1 %18, label %19, label %20, !dbg !3284

19:                                               ; preds = %15
  tail call void @xalloc_die() #36, !dbg !3285
  unreachable, !dbg !3285

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !711, metadata !DIExpression()), !dbg !3263
  store i64 %16, ptr %1, align 8, !dbg !3286, !tbaa !2365
  ret ptr %17, !dbg !3287
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !706 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !711, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata ptr %1, metadata !712, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %2, metadata !713, metadata !DIExpression()), !dbg !3288
  %4 = load i64, ptr %1, align 8, !dbg !3289, !tbaa !2365
  call void @llvm.dbg.value(metadata i64 %4, metadata !714, metadata !DIExpression()), !dbg !3288
  %5 = icmp eq ptr %0, null, !dbg !3290
  br i1 %5, label %6, label %13, !dbg !3291

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3292
  br i1 %7, label %8, label %20, !dbg !3293

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3294
  call void @llvm.dbg.value(metadata i64 %9, metadata !714, metadata !DIExpression()), !dbg !3288
  %10 = icmp ugt i64 %2, 128, !dbg !3296
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3297
  call void @llvm.dbg.value(metadata i64 %12, metadata !714, metadata !DIExpression()), !dbg !3288
  br label %20, !dbg !3298

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3299
  %15 = add nuw i64 %14, 1, !dbg !3299
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3299
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3299
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3299
  call void @llvm.dbg.value(metadata i64 %18, metadata !714, metadata !DIExpression()), !dbg !3288
  br i1 %17, label %19, label %20, !dbg !3300

19:                                               ; preds = %13
  tail call void @xalloc_die() #36, !dbg !3301
  unreachable, !dbg !3301

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3288
  call void @llvm.dbg.value(metadata i64 %21, metadata !714, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata ptr %0, metadata !3078, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %21, metadata !3081, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %2, metadata !3082, metadata !DIExpression()), !dbg !3302
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3304
  call void @llvm.dbg.value(metadata ptr %22, metadata !3086, metadata !DIExpression()), !dbg !3305
  %23 = icmp eq ptr %22, null, !dbg !3307
  br i1 %23, label %24, label %25, !dbg !3308

24:                                               ; preds = %20
  tail call void @xalloc_die() #36, !dbg !3309
  unreachable, !dbg !3309

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !711, metadata !DIExpression()), !dbg !3288
  store i64 %21, ptr %1, align 8, !dbg !3310, !tbaa !2365
  ret ptr %22, !dbg !3311
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !718 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !726, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata ptr %1, metadata !727, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i64 %2, metadata !728, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i64 %3, metadata !729, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i64 %4, metadata !730, metadata !DIExpression()), !dbg !3312
  %6 = load i64, ptr %1, align 8, !dbg !3313, !tbaa !2365
  call void @llvm.dbg.value(metadata i64 %6, metadata !731, metadata !DIExpression()), !dbg !3312
  %7 = ashr i64 %6, 1, !dbg !3314
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3314
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3314
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3314
  call void @llvm.dbg.value(metadata i64 %10, metadata !732, metadata !DIExpression()), !dbg !3312
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3316
  call void @llvm.dbg.value(metadata i64 %11, metadata !732, metadata !DIExpression()), !dbg !3312
  %12 = icmp sgt i64 %3, -1, !dbg !3317
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3319
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3319
  call void @llvm.dbg.value(metadata i64 %15, metadata !732, metadata !DIExpression()), !dbg !3312
  %16 = icmp slt i64 %4, 0, !dbg !3320
  br i1 %16, label %17, label %30, !dbg !3320

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3320
  br i1 %18, label %19, label %24, !dbg !3320

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3320
  %21 = udiv i64 9223372036854775807, %20, !dbg !3320
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3320
  br i1 %23, label %46, label %43, !dbg !3320

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3320
  br i1 %25, label %43, label %26, !dbg !3320

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3320
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3320
  %29 = icmp ult i64 %28, %15, !dbg !3320
  br i1 %29, label %46, label %43, !dbg !3320

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3320
  br i1 %31, label %43, label %32, !dbg !3320

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3320
  br i1 %33, label %34, label %40, !dbg !3320

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3320
  br i1 %35, label %43, label %36, !dbg !3320

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3320
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3320
  %39 = icmp ult i64 %38, %4, !dbg !3320
  br i1 %39, label %46, label %43, !dbg !3320

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3320
  br i1 %42, label %46, label %43, !dbg !3320

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !733, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3312
  %44 = mul i64 %15, %4, !dbg !3320
  call void @llvm.dbg.value(metadata i64 %44, metadata !733, metadata !DIExpression()), !dbg !3312
  %45 = icmp slt i64 %44, 128, !dbg !3320
  br i1 %45, label %46, label %51, !dbg !3320

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !734, metadata !DIExpression()), !dbg !3312
  %48 = sdiv i64 %47, %4, !dbg !3321
  call void @llvm.dbg.value(metadata i64 %48, metadata !732, metadata !DIExpression()), !dbg !3312
  %49 = srem i64 %47, %4, !dbg !3324
  %50 = sub nsw i64 %47, %49, !dbg !3325
  call void @llvm.dbg.value(metadata i64 %50, metadata !733, metadata !DIExpression()), !dbg !3312
  br label %51, !dbg !3326

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3312
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !3312
  call void @llvm.dbg.value(metadata i64 %53, metadata !733, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i64 %52, metadata !732, metadata !DIExpression()), !dbg !3312
  %54 = icmp eq ptr %0, null, !dbg !3327
  br i1 %54, label %55, label %56, !dbg !3329

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !3330, !tbaa !2365
  br label %56, !dbg !3331

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !3332
  %58 = icmp slt i64 %57, %2, !dbg !3334
  br i1 %58, label %59, label %96, !dbg !3335

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3336
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !3336
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !3336
  call void @llvm.dbg.value(metadata i64 %62, metadata !732, metadata !DIExpression()), !dbg !3312
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !3337
  br i1 %65, label %95, label %66, !dbg !3337

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !3338

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !3338
  br i1 %68, label %69, label %74, !dbg !3338

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !3338
  %71 = udiv i64 9223372036854775807, %70, !dbg !3338
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !3338
  br i1 %73, label %95, label %93, !dbg !3338

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !3338
  br i1 %75, label %93, label %76, !dbg !3338

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !3338
  %78 = udiv i64 -9223372036854775808, %77, !dbg !3338
  %79 = icmp ult i64 %78, %62, !dbg !3338
  br i1 %79, label %95, label %93, !dbg !3338

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !3338
  br i1 %81, label %93, label %82, !dbg !3338

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !3338
  br i1 %83, label %84, label %90, !dbg !3338

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !3338
  br i1 %85, label %93, label %86, !dbg !3338

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !3338
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3338
  %89 = icmp ult i64 %88, %4, !dbg !3338
  br i1 %89, label %95, label %93, !dbg !3338

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !3338
  br i1 %92, label %95, label %93, !dbg !3338

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !733, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3312
  %94 = mul i64 %62, %4, !dbg !3338
  call void @llvm.dbg.value(metadata i64 %94, metadata !733, metadata !DIExpression()), !dbg !3312
  br label %96, !dbg !3339

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #36, !dbg !3340
  unreachable, !dbg !3340

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !3312
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !3312
  call void @llvm.dbg.value(metadata i64 %98, metadata !733, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i64 %97, metadata !732, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata ptr %0, metadata !3158, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i64 %98, metadata !3159, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata ptr %0, metadata !3161, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i64 %98, metadata !3165, metadata !DIExpression()), !dbg !3343
  %99 = icmp eq i64 %98, 0, !dbg !3345
  %100 = select i1 %99, i64 1, i64 %98, !dbg !3345
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #42, !dbg !3346
  call void @llvm.dbg.value(metadata ptr %101, metadata !3086, metadata !DIExpression()), !dbg !3347
  %102 = icmp eq ptr %101, null, !dbg !3349
  br i1 %102, label %103, label %104, !dbg !3350

103:                                              ; preds = %96
  tail call void @xalloc_die() #36, !dbg !3351
  unreachable, !dbg !3351

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !726, metadata !DIExpression()), !dbg !3312
  store i64 %97, ptr %1, align 8, !dbg !3352, !tbaa !2365
  ret ptr %101, !dbg !3353
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3354 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3356, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i64 %0, metadata !3358, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i64 1, metadata !3361, metadata !DIExpression()), !dbg !3362
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3364
  call void @llvm.dbg.value(metadata ptr %2, metadata !3086, metadata !DIExpression()), !dbg !3365
  %3 = icmp eq ptr %2, null, !dbg !3367
  br i1 %3, label %4, label %5, !dbg !3368

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3369
  unreachable, !dbg !3369

5:                                                ; preds = %1
  ret ptr %2, !dbg !3370
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3371 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3359 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3358, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i64 %1, metadata !3361, metadata !DIExpression()), !dbg !3372
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3373
  call void @llvm.dbg.value(metadata ptr %3, metadata !3086, metadata !DIExpression()), !dbg !3374
  %4 = icmp eq ptr %3, null, !dbg !3376
  br i1 %4, label %5, label %6, !dbg !3377

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3378
  unreachable, !dbg !3378

6:                                                ; preds = %2
  ret ptr %3, !dbg !3379
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3380 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3382, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %0, metadata !3384, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i64 1, metadata !3387, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i64 %0, metadata !3390, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i64 1, metadata !3393, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i64 %0, metadata !3390, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i64 1, metadata !3393, metadata !DIExpression()), !dbg !3394
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3396
  call void @llvm.dbg.value(metadata ptr %2, metadata !3086, metadata !DIExpression()), !dbg !3397
  %3 = icmp eq ptr %2, null, !dbg !3399
  br i1 %3, label %4, label %5, !dbg !3400

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3401
  unreachable, !dbg !3401

5:                                                ; preds = %1
  ret ptr %2, !dbg !3402
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3385 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3384, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i64 %1, metadata !3387, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i64 %0, metadata !3390, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i64 %1, metadata !3393, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i64 %0, metadata !3390, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i64 %1, metadata !3393, metadata !DIExpression()), !dbg !3404
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3406
  call void @llvm.dbg.value(metadata ptr %3, metadata !3086, metadata !DIExpression()), !dbg !3407
  %4 = icmp eq ptr %3, null, !dbg !3409
  br i1 %4, label %5, label %6, !dbg !3410

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3411
  unreachable, !dbg !3411

6:                                                ; preds = %2
  ret ptr %3, !dbg !3412
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3413 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3417, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i64 %1, metadata !3418, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i64 %1, metadata !3110, metadata !DIExpression()), !dbg !3420
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3422
  call void @llvm.dbg.value(metadata ptr %3, metadata !3086, metadata !DIExpression()), !dbg !3423
  %4 = icmp eq ptr %3, null, !dbg !3425
  br i1 %4, label %5, label %6, !dbg !3426

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3427
  unreachable, !dbg !3427

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3428, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata ptr %0, metadata !3434, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 %1, metadata !3435, metadata !DIExpression()), !dbg !3436
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3438
  ret ptr %3, !dbg !3439
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3440 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3444, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 %1, metadata !3445, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 %1, metadata !3124, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i64 %1, metadata !3126, metadata !DIExpression()), !dbg !3449
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3451
  call void @llvm.dbg.value(metadata ptr %3, metadata !3086, metadata !DIExpression()), !dbg !3452
  %4 = icmp eq ptr %3, null, !dbg !3454
  br i1 %4, label %5, label %6, !dbg !3455

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3456
  unreachable, !dbg !3456

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3428, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata ptr %0, metadata !3434, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 %1, metadata !3435, metadata !DIExpression()), !dbg !3457
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3459
  ret ptr %3, !dbg !3460
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3461 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3465, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i64 %1, metadata !3466, metadata !DIExpression()), !dbg !3468
  %3 = add nsw i64 %1, 1, !dbg !3469
  call void @llvm.dbg.value(metadata i64 %3, metadata !3124, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i64 %3, metadata !3126, metadata !DIExpression()), !dbg !3472
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3474
  call void @llvm.dbg.value(metadata ptr %4, metadata !3086, metadata !DIExpression()), !dbg !3475
  %5 = icmp eq ptr %4, null, !dbg !3477
  br i1 %5, label %6, label %7, !dbg !3478

6:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3479
  unreachable, !dbg !3479

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3467, metadata !DIExpression()), !dbg !3468
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3480
  store i8 0, ptr %8, align 1, !dbg !3481, !tbaa !822
  call void @llvm.dbg.value(metadata ptr %4, metadata !3428, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata ptr %0, metadata !3434, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i64 %1, metadata !3435, metadata !DIExpression()), !dbg !3482
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3484
  ret ptr %4, !dbg !3485
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3486 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3488, metadata !DIExpression()), !dbg !3489
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3490
  %3 = add i64 %2, 1, !dbg !3491
  call void @llvm.dbg.value(metadata ptr %0, metadata !3417, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 %3, metadata !3418, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 %3, metadata !3110, metadata !DIExpression()), !dbg !3494
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3496
  call void @llvm.dbg.value(metadata ptr %4, metadata !3086, metadata !DIExpression()), !dbg !3497
  %5 = icmp eq ptr %4, null, !dbg !3499
  br i1 %5, label %6, label %7, !dbg !3500

6:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3501
  unreachable, !dbg !3501

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3428, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata ptr %0, metadata !3434, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i64 %3, metadata !3435, metadata !DIExpression()), !dbg !3502
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3504
  ret ptr %4, !dbg !3505
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3506 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3511, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %1, metadata !3508, metadata !DIExpression()), !dbg !3512
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.116, ptr noundef nonnull @.str.2.117, i32 noundef 5) #37, !dbg !3511
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.118, ptr noundef %2) #37, !dbg !3511
  %3 = icmp eq i32 %1, 0, !dbg !3511
  tail call void @llvm.assume(i1 %3), !dbg !3511
  tail call void @abort() #36, !dbg !3513
  unreachable, !dbg !3513
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3514 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3552, metadata !DIExpression()), !dbg !3557
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3558
  call void @llvm.dbg.value(metadata i1 poison, metadata !3553, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3557
  call void @llvm.dbg.value(metadata ptr %0, metadata !3559, metadata !DIExpression()), !dbg !3562
  %3 = load i32, ptr %0, align 8, !dbg !3564, !tbaa !3565
  %4 = and i32 %3, 32, !dbg !3566
  %5 = icmp eq i32 %4, 0, !dbg !3566
  call void @llvm.dbg.value(metadata i1 %5, metadata !3555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3557
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3567
  %7 = icmp eq i32 %6, 0, !dbg !3568
  call void @llvm.dbg.value(metadata i1 %7, metadata !3556, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3557
  br i1 %5, label %8, label %18, !dbg !3569

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3571
  call void @llvm.dbg.value(metadata i1 %9, metadata !3553, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3557
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3572
  %11 = xor i1 %7, true, !dbg !3572
  %12 = sext i1 %11 to i32, !dbg !3572
  br i1 %10, label %21, label %13, !dbg !3572

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3573
  %15 = load i32, ptr %14, align 4, !dbg !3573, !tbaa !813
  %16 = icmp ne i32 %15, 9, !dbg !3574
  %17 = sext i1 %16 to i32, !dbg !3575
  br label %21, !dbg !3575

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3576

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3578
  store i32 0, ptr %20, align 4, !dbg !3580, !tbaa !813
  br label %21, !dbg !3578

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3557
  ret i32 %22, !dbg !3581
}

; Function Attrs: nounwind
declare !dbg !3582 i64 @__fpending(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3586 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3624, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 0, metadata !3625, metadata !DIExpression()), !dbg !3628
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3629
  call void @llvm.dbg.value(metadata i32 %2, metadata !3626, metadata !DIExpression()), !dbg !3628
  %3 = icmp slt i32 %2, 0, !dbg !3630
  br i1 %3, label %4, label %6, !dbg !3632

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3633
  br label %24, !dbg !3634

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3635
  %8 = icmp eq i32 %7, 0, !dbg !3635
  br i1 %8, label %13, label %9, !dbg !3637

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3638
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3639
  %12 = icmp eq i64 %11, -1, !dbg !3640
  br i1 %12, label %16, label %13, !dbg !3641

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3642
  %15 = icmp eq i32 %14, 0, !dbg !3642
  br i1 %15, label %16, label %18, !dbg !3643

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3625, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 0, metadata !3627, metadata !DIExpression()), !dbg !3628
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %17, metadata !3627, metadata !DIExpression()), !dbg !3628
  br label %24, !dbg !3645

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3646
  %20 = load i32, ptr %19, align 4, !dbg !3646, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %20, metadata !3625, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 0, metadata !3627, metadata !DIExpression()), !dbg !3628
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %21, metadata !3627, metadata !DIExpression()), !dbg !3628
  %22 = icmp eq i32 %20, 0, !dbg !3647
  br i1 %22, label %24, label %23, !dbg !3645

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3649, !tbaa !813
  call void @llvm.dbg.value(metadata i32 -1, metadata !3627, metadata !DIExpression()), !dbg !3628
  br label %24, !dbg !3651

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3628
  ret i32 %25, !dbg !3652
}

; Function Attrs: nofree nounwind
declare !dbg !3653 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !3654 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !3655 i32 @__freading(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !3656 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3659 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3697, metadata !DIExpression()), !dbg !3698
  %2 = icmp eq ptr %0, null, !dbg !3699
  br i1 %2, label %6, label %3, !dbg !3701

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3702
  %5 = icmp eq i32 %4, 0, !dbg !3702
  br i1 %5, label %6, label %8, !dbg !3703

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3704
  br label %16, !dbg !3705

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3706, metadata !DIExpression()), !dbg !3711
  %9 = load i32, ptr %0, align 8, !dbg !3713, !tbaa !3565
  %10 = and i32 %9, 256, !dbg !3715
  %11 = icmp eq i32 %10, 0, !dbg !3715
  br i1 %11, label %14, label %12, !dbg !3716

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3717
  br label %14, !dbg !3717

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3718
  br label %16, !dbg !3719

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3698
  ret i32 %17, !dbg !3720
}

; Function Attrs: nofree nounwind
declare !dbg !3721 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3722 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3761, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.value(metadata i64 %1, metadata !3762, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.value(metadata i32 %2, metadata !3763, metadata !DIExpression()), !dbg !3767
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3768
  %5 = load ptr, ptr %4, align 8, !dbg !3768, !tbaa !3769
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3770
  %7 = load ptr, ptr %6, align 8, !dbg !3770, !tbaa !3771
  %8 = icmp eq ptr %5, %7, !dbg !3772
  br i1 %8, label %9, label %27, !dbg !3773

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3774
  %11 = load ptr, ptr %10, align 8, !dbg !3774, !tbaa !1210
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3775
  %13 = load ptr, ptr %12, align 8, !dbg !3775, !tbaa !3776
  %14 = icmp eq ptr %11, %13, !dbg !3777
  br i1 %14, label %15, label %27, !dbg !3778

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3779
  %17 = load ptr, ptr %16, align 8, !dbg !3779, !tbaa !3780
  %18 = icmp eq ptr %17, null, !dbg !3781
  br i1 %18, label %19, label %27, !dbg !3782

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3783
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !3784
  call void @llvm.dbg.value(metadata i64 %21, metadata !3764, metadata !DIExpression()), !dbg !3785
  %22 = icmp eq i64 %21, -1, !dbg !3786
  br i1 %22, label %29, label %23, !dbg !3788

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3789, !tbaa !3565
  %25 = and i32 %24, -17, !dbg !3789
  store i32 %25, ptr %0, align 8, !dbg !3789, !tbaa !3565
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3790
  store i64 %21, ptr %26, align 8, !dbg !3791, !tbaa !3792
  br label %29, !dbg !3793

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3794
  br label %29, !dbg !3795

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3767
  ret i32 %30, !dbg !3796
}

; Function Attrs: nofree nounwind
declare !dbg !3797 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3800 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3805, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata ptr %1, metadata !3806, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i64 %2, metadata !3807, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata ptr %3, metadata !3808, metadata !DIExpression()), !dbg !3810
  %5 = icmp eq ptr %1, null, !dbg !3811
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3813
  %7 = select i1 %5, ptr @.str.129, ptr %1, !dbg !3813
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3813
  call void @llvm.dbg.value(metadata i64 %8, metadata !3807, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata ptr %7, metadata !3806, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata ptr %6, metadata !3805, metadata !DIExpression()), !dbg !3810
  %9 = icmp eq ptr %3, null, !dbg !3814
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3816
  call void @llvm.dbg.value(metadata ptr %10, metadata !3808, metadata !DIExpression()), !dbg !3810
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #37, !dbg !3817
  call void @llvm.dbg.value(metadata i64 %11, metadata !3809, metadata !DIExpression()), !dbg !3810
  %12 = icmp ult i64 %11, -3, !dbg !3818
  br i1 %12, label %13, label %17, !dbg !3820

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #38, !dbg !3821
  %15 = icmp eq i32 %14, 0, !dbg !3821
  br i1 %15, label %16, label %29, !dbg !3822

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3823, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata ptr %10, metadata !3830, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i32 0, metadata !3833, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i64 8, metadata !3834, metadata !DIExpression()), !dbg !3835
  store i64 0, ptr %10, align 1, !dbg !3837
  br label %29, !dbg !3838

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3839
  br i1 %18, label %19, label %20, !dbg !3841

19:                                               ; preds = %17
  tail call void @abort() #36, !dbg !3842
  unreachable, !dbg !3842

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3843

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #37, !dbg !3845
  br i1 %23, label %29, label %24, !dbg !3846

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3847
  br i1 %25, label %29, label %26, !dbg !3850

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3851, !tbaa !822
  %28 = zext i8 %27 to i32, !dbg !3852
  store i32 %28, ptr %6, align 4, !dbg !3853, !tbaa !813
  br label %29, !dbg !3854

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3810
  ret i64 %30, !dbg !3855
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3856 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !3862 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3864, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i64 %1, metadata !3865, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i64 %2, metadata !3866, metadata !DIExpression()), !dbg !3868
  %4 = icmp eq i64 %2, 0, !dbg !3869
  br i1 %4, label %8, label %5, !dbg !3869

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3869
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3869
  br i1 %7, label %13, label %8, !dbg !3869

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3867, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3868
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3867, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3868
  %9 = mul i64 %2, %1, !dbg !3869
  call void @llvm.dbg.value(metadata i64 %9, metadata !3867, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata ptr %0, metadata !3871, metadata !DIExpression()), !dbg !3875
  call void @llvm.dbg.value(metadata i64 %9, metadata !3874, metadata !DIExpression()), !dbg !3875
  %10 = icmp eq i64 %9, 0, !dbg !3877
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3877
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #42, !dbg !3878
  br label %15, !dbg !3879

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3867, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3868
  %14 = tail call ptr @__errno_location() #39, !dbg !3880
  store i32 12, ptr %14, align 4, !dbg !3882, !tbaa !813
  br label %15, !dbg !3883

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3868
  ret ptr %16, !dbg !3884
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3885 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3887, metadata !DIExpression()), !dbg !3892
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !3893
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3888, metadata !DIExpression()), !dbg !3894
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !3895
  %4 = icmp eq i32 %3, 0, !dbg !3895
  br i1 %4, label %5, label %12, !dbg !3897

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3898, metadata !DIExpression()), !dbg !3902
  %6 = load i16, ptr %2, align 16, !dbg !3905
  %7 = icmp eq i16 %6, 67, !dbg !3905
  br i1 %7, label %11, label %8, !dbg !3906

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3898, metadata !DIExpression()), !dbg !3907
  call void @llvm.dbg.value(metadata ptr @.str.1.134, metadata !3901, metadata !DIExpression()), !dbg !3907
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.134, i64 6), !dbg !3909
  %10 = icmp eq i32 %9, 0, !dbg !3910
  br i1 %10, label %11, label %12, !dbg !3911

11:                                               ; preds = %8, %5
  br label %12, !dbg !3912

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3892
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !3913
  ret i1 %13, !dbg !3913
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3914 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3918, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.value(metadata ptr %1, metadata !3919, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.value(metadata i64 %2, metadata !3920, metadata !DIExpression()), !dbg !3921
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !3922
  ret i32 %4, !dbg !3923
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3924 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3928, metadata !DIExpression()), !dbg !3929
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !3930
  ret ptr %2, !dbg !3931
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3932 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3934, metadata !DIExpression()), !dbg !3936
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3937
  call void @llvm.dbg.value(metadata ptr %2, metadata !3935, metadata !DIExpression()), !dbg !3936
  ret ptr %2, !dbg !3938
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3939 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3941, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata ptr %1, metadata !3942, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i64 %2, metadata !3943, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i32 %0, metadata !3934, metadata !DIExpression()), !dbg !3949
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3951
  call void @llvm.dbg.value(metadata ptr %4, metadata !3935, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata ptr %4, metadata !3944, metadata !DIExpression()), !dbg !3948
  %5 = icmp eq ptr %4, null, !dbg !3952
  br i1 %5, label %6, label %9, !dbg !3953

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3954
  br i1 %7, label %19, label %8, !dbg !3957

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3958, !tbaa !822
  br label %19, !dbg !3959

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !3960
  call void @llvm.dbg.value(metadata i64 %10, metadata !3945, metadata !DIExpression()), !dbg !3961
  %11 = icmp ult i64 %10, %2, !dbg !3962
  br i1 %11, label %12, label %14, !dbg !3964

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3965
  call void @llvm.dbg.value(metadata ptr %1, metadata !3967, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata ptr %4, metadata !3970, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i64 %13, metadata !3971, metadata !DIExpression()), !dbg !3972
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #37, !dbg !3974
  br label %19, !dbg !3975

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3976
  br i1 %15, label %19, label %16, !dbg !3979

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3980
  call void @llvm.dbg.value(metadata ptr %1, metadata !3967, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata ptr %4, metadata !3970, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata i64 %17, metadata !3971, metadata !DIExpression()), !dbg !3982
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !3984
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3985
  store i8 0, ptr %18, align 1, !dbg !3986, !tbaa !822
  br label %19, !dbg !3987

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3988
  ret i32 %20, !dbg !3989
}

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind willreturn memory(argmem: read) }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
attributes #34 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { noreturn nounwind }
attributes #37 = { nounwind }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { nounwind willreturn memory(none) }
attributes #40 = { noreturn }
attributes #41 = { cold }
attributes #42 = { nounwind allocsize(1) }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!126, !342, !346, !361, !661, !693, !413, !427, !478, !695, !653, !702, !736, !738, !740, !742, !744, !677, !746, !749, !753, !755}
!llvm.ident = !{!757, !757, !757, !757, !757, !757, !757, !757, !757, !757, !757, !757, !757, !757, !757, !757, !757, !757, !757, !757, !757, !757}
!llvm.module.flags = !{!758, !759, !760, !761, !762, !763}

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
!360 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !361, file: !362, line: 66, type: !408, isLocal: false, isDefinition: true)
!361 = distinct !DICompileUnit(language: DW_LANG_C11, file: !362, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !363, globals: !364, splitDebugInlining: false, nameTableKind: None)
!362 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!363 = !{!149, !155}
!364 = !{!365, !367, !387, !389, !391, !393, !359, !395, !397, !399, !401, !406}
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !362, line: 272, type: !30, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(name: "old_file_name", scope: !369, file: !362, line: 304, type: !125, isLocal: true, isDefinition: true)
!369 = distinct !DISubprogram(name: "verror_at_line", scope: !362, file: !362, line: 298, type: !370, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !380)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !150, !150, !125, !129, !125, !372}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !374)
!374 = !{!375, !377, !378, !379}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !373, file: !376, baseType: !129, size: 32)
!376 = !DIFile(filename: "lib/error.c", directory: "/src")
!377 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !373, file: !376, baseType: !129, size: 32, offset: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !373, file: !376, baseType: !149, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !373, file: !376, baseType: !149, size: 64, offset: 128)
!380 = !{!381, !382, !383, !384, !385, !386}
!381 = !DILocalVariable(name: "status", arg: 1, scope: !369, file: !362, line: 298, type: !150)
!382 = !DILocalVariable(name: "errnum", arg: 2, scope: !369, file: !362, line: 298, type: !150)
!383 = !DILocalVariable(name: "file_name", arg: 3, scope: !369, file: !362, line: 298, type: !125)
!384 = !DILocalVariable(name: "line_number", arg: 4, scope: !369, file: !362, line: 298, type: !129)
!385 = !DILocalVariable(name: "message", arg: 5, scope: !369, file: !362, line: 298, type: !125)
!386 = !DILocalVariable(name: "args", arg: 6, scope: !369, file: !362, line: 298, type: !372)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "old_line_number", scope: !369, file: !362, line: 305, type: !129, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !362, line: 338, type: !163, isLocal: true, isDefinition: true)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(scope: null, file: !362, line: 346, type: !192, isLocal: true, isDefinition: true)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !362, line: 346, type: !173, isLocal: true, isDefinition: true)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(name: "error_message_count", scope: !361, file: !362, line: 69, type: !129, isLocal: false, isDefinition: true)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !361, file: !362, line: 295, type: !150, isLocal: false, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !362, line: 208, type: !105, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !362, line: 208, type: !403, isLocal: true, isDefinition: true)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 21)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !362, line: 214, type: !30, isLocal: true, isDefinition: true)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{null}
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(name: "program_name", scope: !413, file: !414, line: 31, type: !125, isLocal: false, isDefinition: true)
!413 = distinct !DICompileUnit(language: DW_LANG_C11, file: !414, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !415, globals: !416, splitDebugInlining: false, nameTableKind: None)
!414 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!415 = !{!148}
!416 = !{!411, !417, !419}
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !414, line: 46, type: !192, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !414, line: 49, type: !163, isLocal: true, isDefinition: true)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(name: "utf07FF", scope: !423, file: !424, line: 46, type: !451, isLocal: true, isDefinition: true)
!423 = distinct !DISubprogram(name: "proper_name_lite", scope: !424, file: !424, line: 38, type: !425, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !429)
!424 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!425 = !DISubroutineType(types: !426)
!426 = !{!125, !125, !125}
!427 = distinct !DICompileUnit(language: DW_LANG_C11, file: !424, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !428, splitDebugInlining: false, nameTableKind: None)
!428 = !{!421}
!429 = !{!430, !431, !432, !433, !438}
!430 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !423, file: !424, line: 38, type: !125)
!431 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !423, file: !424, line: 38, type: !125)
!432 = !DILocalVariable(name: "translation", scope: !423, file: !424, line: 40, type: !125)
!433 = !DILocalVariable(name: "w", scope: !423, file: !424, line: 47, type: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !435, line: 37, baseType: !436)
!435 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !306, line: 57, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !306, line: 42, baseType: !129)
!438 = !DILocalVariable(name: "mbs", scope: !423, file: !424, line: 48, type: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !440, line: 6, baseType: !441)
!440 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !442, line: 21, baseType: !443)
!442 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !442, line: 13, size: 64, elements: !444)
!444 = !{!445, !446}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !443, file: !442, line: 15, baseType: !150, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !443, file: !442, line: 20, baseType: !447, size: 32, offset: 32)
!447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !442, line: 16, size: 32, elements: !448)
!448 = !{!449, !450}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !447, file: !442, line: 18, baseType: !129, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !447, file: !442, line: 19, baseType: !163, size: 32)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 16, elements: !174)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !454, line: 78, type: !192, isLocal: true, isDefinition: true)
!454 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !454, line: 79, type: !168, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !454, line: 80, type: !459, isLocal: true, isDefinition: true)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 13)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !454, line: 81, type: !459, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !454, line: 82, type: !328, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !454, line: 83, type: !173, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !454, line: 84, type: !192, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !454, line: 85, type: !105, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !454, line: 86, type: !105, isLocal: true, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !454, line: 87, type: !192, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !478, file: !454, line: 76, type: !564, isLocal: false, isDefinition: true)
!478 = distinct !DICompileUnit(language: DW_LANG_C11, file: !454, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !479, retainedTypes: !499, globals: !500, splitDebugInlining: false, nameTableKind: None)
!479 = !{!480, !494, !132}
!480 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !481, line: 42, baseType: !129, size: 32, elements: !482)
!481 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!482 = !{!483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493}
!483 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!484 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!485 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!486 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!487 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!488 = !DIEnumerator(name: "c_quoting_style", value: 5)
!489 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!490 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!491 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!492 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!493 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!494 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !481, line: 254, baseType: !129, size: 32, elements: !495)
!495 = !{!496, !497, !498}
!496 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!497 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!498 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!499 = !{!150, !151, !152}
!500 = !{!452, !455, !457, !462, !464, !466, !468, !470, !472, !474, !476, !501, !505, !515, !517, !522, !524, !526, !528, !530, !553, !560, !562}
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !478, file: !454, line: 92, type: !503, isLocal: false, isDefinition: true)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !504, size: 320, elements: !96)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !480)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !478, file: !454, line: 1040, type: !507, isLocal: false, isDefinition: true)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !454, line: 56, size: 448, elements: !508)
!508 = !{!509, !510, !511, !513, !514}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !507, file: !454, line: 59, baseType: !480, size: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !507, file: !454, line: 62, baseType: !150, size: 32, offset: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !507, file: !454, line: 66, baseType: !512, size: 256, offset: 64)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 256, elements: !193)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !507, file: !454, line: 69, baseType: !125, size: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !507, file: !454, line: 72, baseType: !125, size: 64, offset: 384)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !478, file: !454, line: 107, type: !507, isLocal: true, isDefinition: true)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(name: "slot0", scope: !478, file: !454, line: 831, type: !519, isLocal: true, isDefinition: true)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !520)
!520 = !{!521}
!521 = !DISubrange(count: 256)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !454, line: 321, type: !173, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !454, line: 357, type: !173, isLocal: true, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !454, line: 358, type: !173, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !454, line: 199, type: !105, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(name: "quote", scope: !532, file: !454, line: 228, type: !551, isLocal: true, isDefinition: true)
!532 = distinct !DISubprogram(name: "gettext_quote", scope: !454, file: !454, line: 197, type: !533, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !535)
!533 = !DISubroutineType(types: !534)
!534 = !{!125, !125, !480}
!535 = !{!536, !537, !538, !539, !540}
!536 = !DILocalVariable(name: "msgid", arg: 1, scope: !532, file: !454, line: 197, type: !125)
!537 = !DILocalVariable(name: "s", arg: 2, scope: !532, file: !454, line: 197, type: !480)
!538 = !DILocalVariable(name: "translation", scope: !532, file: !454, line: 199, type: !125)
!539 = !DILocalVariable(name: "w", scope: !532, file: !454, line: 229, type: !434)
!540 = !DILocalVariable(name: "mbs", scope: !532, file: !454, line: 230, type: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !440, line: 6, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !442, line: 21, baseType: !543)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !442, line: 13, size: 64, elements: !544)
!544 = !{!545, !546}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !543, file: !442, line: 15, baseType: !150, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !543, file: !442, line: 20, baseType: !547, size: 32, offset: 32)
!547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !543, file: !442, line: 16, size: 32, elements: !548)
!548 = !{!549, !550}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !547, file: !442, line: 18, baseType: !129, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !547, file: !442, line: 19, baseType: !163, size: 32)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 64, elements: !552)
!552 = !{!175, !165}
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(name: "slotvec", scope: !478, file: !454, line: 834, type: !555, isLocal: true, isDefinition: true)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !454, line: 823, size: 128, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !556, file: !454, line: 825, baseType: !152, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !556, file: !454, line: 826, baseType: !148, size: 64, offset: 64)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(name: "nslots", scope: !478, file: !454, line: 832, type: !150, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(name: "slotvec0", scope: !478, file: !454, line: 833, type: !556, isLocal: true, isDefinition: true)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 704, elements: !10)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(scope: null, file: !568, line: 67, type: !3, isLocal: true, isDefinition: true)
!568 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !568, line: 69, type: !105, isLocal: true, isDefinition: true)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(scope: null, file: !568, line: 83, type: !105, isLocal: true, isDefinition: true)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !568, line: 83, type: !163, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(scope: null, file: !568, line: 85, type: !173, isLocal: true, isDefinition: true)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !568, line: 88, type: !579, isLocal: true, isDefinition: true)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !580)
!580 = !{!581}
!581 = !DISubrange(count: 171)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !568, line: 88, type: !584, isLocal: true, isDefinition: true)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 34)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !568, line: 105, type: !82, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !568, line: 109, type: !591, isLocal: true, isDefinition: true)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !592)
!592 = !{!593}
!593 = !DISubrange(count: 23)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !568, line: 113, type: !596, isLocal: true, isDefinition: true)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: 28)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !568, line: 120, type: !601, isLocal: true, isDefinition: true)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !602)
!602 = !{!603}
!603 = !DISubrange(count: 32)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !568, line: 127, type: !606, isLocal: true, isDefinition: true)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !607)
!607 = !{!608}
!608 = !DISubrange(count: 36)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !568, line: 134, type: !210, isLocal: true, isDefinition: true)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !568, line: 142, type: !613, isLocal: true, isDefinition: true)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !614)
!614 = !{!615}
!615 = !DISubrange(count: 44)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !568, line: 150, type: !618, isLocal: true, isDefinition: true)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !619)
!619 = !{!620}
!620 = !DISubrange(count: 48)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !568, line: 159, type: !623, isLocal: true, isDefinition: true)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !624)
!624 = !{!625}
!625 = !DISubrange(count: 52)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !568, line: 170, type: !628, isLocal: true, isDefinition: true)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 60)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !568, line: 248, type: !328, isLocal: true, isDefinition: true)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !568, line: 248, type: !235, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !568, line: 254, type: !328, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !568, line: 254, type: !112, isLocal: true, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !568, line: 254, type: !210, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !568, line: 259, type: !643, isLocal: true, isDefinition: true)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !644)
!644 = !{!645}
!645 = !DISubrange(count: 39)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !568, line: 259, type: !648, isLocal: true, isDefinition: true)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !649)
!649 = !{!650}
!650 = !DISubrange(count: 29)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !653, file: !654, line: 26, type: !656, isLocal: false, isDefinition: true)
!653 = distinct !DICompileUnit(language: DW_LANG_C11, file: !654, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !655, splitDebugInlining: false, nameTableKind: None)
!654 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!655 = !{!651}
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 376, elements: !657)
!657 = !{!658}
!658 = !DISubrange(count: 47)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(name: "exit_failure", scope: !661, file: !662, line: 24, type: !664, isLocal: false, isDefinition: true)
!661 = distinct !DICompileUnit(language: DW_LANG_C11, file: !662, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !663, splitDebugInlining: false, nameTableKind: None)
!662 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!663 = !{!659}
!664 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !150)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !667, line: 34, type: !85, isLocal: true, isDefinition: true)
!667 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(scope: null, file: !667, line: 34, type: !105, isLocal: true, isDefinition: true)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !667, line: 34, type: !205, isLocal: true, isDefinition: true)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !674, line: 108, type: !90, isLocal: true, isDefinition: true)
!674 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(name: "internal_state", scope: !677, file: !674, line: 97, type: !680, isLocal: true, isDefinition: true)
!677 = distinct !DICompileUnit(language: DW_LANG_C11, file: !674, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !678, globals: !679, splitDebugInlining: false, nameTableKind: None)
!678 = !{!149, !152, !155}
!679 = !{!672, !675}
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !440, line: 6, baseType: !681)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !442, line: 21, baseType: !682)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !442, line: 13, size: 64, elements: !683)
!683 = !{!684, !685}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !682, file: !442, line: 15, baseType: !150, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !682, file: !442, line: 20, baseType: !686, size: 32, offset: 32)
!686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !682, file: !442, line: 16, size: 32, elements: !687)
!687 = !{!688, !689}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !686, file: !442, line: 18, baseType: !129, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !686, file: !442, line: 19, baseType: !163, size: 32)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !692, line: 35, type: !168, isLocal: true, isDefinition: true)
!692 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!693 = distinct !DICompileUnit(language: DW_LANG_C11, file: !694, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!694 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!695 = distinct !DICompileUnit(language: DW_LANG_C11, file: !568, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !696, retainedTypes: !700, globals: !701, splitDebugInlining: false, nameTableKind: None)
!696 = !{!697}
!697 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !568, line: 40, baseType: !129, size: 32, elements: !698)
!698 = !{!699}
!699 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!700 = !{!149}
!701 = !{!566, !569, !571, !573, !575, !577, !582, !587, !589, !594, !599, !604, !609, !611, !616, !621, !626, !631, !633, !635, !637, !639, !641, !646}
!702 = distinct !DICompileUnit(language: DW_LANG_C11, file: !703, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !704, retainedTypes: !735, splitDebugInlining: false, nameTableKind: None)
!703 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!704 = !{!705, !717}
!705 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !706, file: !703, line: 188, baseType: !129, size: 32, elements: !715)
!706 = distinct !DISubprogram(name: "x2nrealloc", scope: !703, file: !703, line: 176, type: !707, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !710)
!707 = !DISubroutineType(types: !708)
!708 = !{!149, !149, !709, !152}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!710 = !{!711, !712, !713, !714}
!711 = !DILocalVariable(name: "p", arg: 1, scope: !706, file: !703, line: 176, type: !149)
!712 = !DILocalVariable(name: "pn", arg: 2, scope: !706, file: !703, line: 176, type: !709)
!713 = !DILocalVariable(name: "s", arg: 3, scope: !706, file: !703, line: 176, type: !152)
!714 = !DILocalVariable(name: "n", scope: !706, file: !703, line: 178, type: !152)
!715 = !{!716}
!716 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!717 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !718, file: !703, line: 228, baseType: !129, size: 32, elements: !715)
!718 = distinct !DISubprogram(name: "xpalloc", scope: !703, file: !703, line: 223, type: !719, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !725)
!719 = !DISubroutineType(types: !720)
!720 = !{!149, !149, !721, !722, !724, !722}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !723, line: 130, baseType: !724)
!723 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !153, line: 35, baseType: !307)
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !734}
!726 = !DILocalVariable(name: "pa", arg: 1, scope: !718, file: !703, line: 223, type: !149)
!727 = !DILocalVariable(name: "pn", arg: 2, scope: !718, file: !703, line: 223, type: !721)
!728 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !718, file: !703, line: 223, type: !722)
!729 = !DILocalVariable(name: "n_max", arg: 4, scope: !718, file: !703, line: 223, type: !724)
!730 = !DILocalVariable(name: "s", arg: 5, scope: !718, file: !703, line: 223, type: !722)
!731 = !DILocalVariable(name: "n0", scope: !718, file: !703, line: 230, type: !722)
!732 = !DILocalVariable(name: "n", scope: !718, file: !703, line: 237, type: !722)
!733 = !DILocalVariable(name: "nbytes", scope: !718, file: !703, line: 248, type: !722)
!734 = !DILocalVariable(name: "adjusted_nbytes", scope: !718, file: !703, line: 252, type: !722)
!735 = !{!148, !149, !266, !307, !154}
!736 = distinct !DICompileUnit(language: DW_LANG_C11, file: !667, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !737, splitDebugInlining: false, nameTableKind: None)
!737 = !{!665, !668, !670}
!738 = distinct !DICompileUnit(language: DW_LANG_C11, file: !739, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!739 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!740 = distinct !DICompileUnit(language: DW_LANG_C11, file: !741, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!741 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!742 = distinct !DICompileUnit(language: DW_LANG_C11, file: !743, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !700, splitDebugInlining: false, nameTableKind: None)
!743 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!744 = distinct !DICompileUnit(language: DW_LANG_C11, file: !745, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !700, splitDebugInlining: false, nameTableKind: None)
!745 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!746 = distinct !DICompileUnit(language: DW_LANG_C11, file: !747, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !748, splitDebugInlining: false, nameTableKind: None)
!747 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!748 = !{!266, !154, !149}
!749 = distinct !DICompileUnit(language: DW_LANG_C11, file: !692, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !750, splitDebugInlining: false, nameTableKind: None)
!750 = !{!751, !690}
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(scope: null, file: !692, line: 35, type: !173, isLocal: true, isDefinition: true)
!753 = distinct !DICompileUnit(language: DW_LANG_C11, file: !754, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!754 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!755 = distinct !DICompileUnit(language: DW_LANG_C11, file: !756, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !700, splitDebugInlining: false, nameTableKind: None)
!756 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!757 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!758 = !{i32 7, !"Dwarf Version", i32 5}
!759 = !{i32 2, !"Debug Info Version", i32 3}
!760 = !{i32 1, !"wchar_size", i32 4}
!761 = !{i32 8, !"PIC Level", i32 2}
!762 = !{i32 7, !"PIE Level", i32 2}
!763 = !{i32 7, !"uwtable", i32 2}
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
!792 = !DISubprogram(name: "__assert_fail", scope: !793, file: !793, line: 69, type: !794, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !796)
!793 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!794 = !DISubroutineType(types: !795)
!795 = !{null, !125, !125, !129, !125}
!796 = !{}
!797 = !DISubprogram(name: "dcgettext", scope: !798, file: !798, line: 51, type: !799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!798 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!799 = !DISubroutineType(types: !800)
!800 = !{!148, !125, !125, !150}
!801 = !DISubprogram(name: "__printf_chk", scope: !802, file: !802, line: 95, type: !803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!802 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!803 = !DISubroutineType(types: !804)
!804 = !{!150, !150, !805, null}
!805 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !125)
!806 = !DISubprogram(name: "fputs_unlocked", scope: !807, file: !807, line: 691, type: !808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!807 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!808 = !DISubroutineType(types: !809)
!809 = !{!150, !805, !810}
!810 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !279)
!811 = !DILocation(line: 0, scope: !121)
!812 = !DILocation(line: 581, column: 7, scope: !264)
!813 = !{!814, !814, i64 0}
!814 = !{!"int", !777, i64 0}
!815 = !DILocation(line: 581, column: 19, scope: !264)
!816 = !DILocation(line: 581, column: 7, scope: !121)
!817 = !DILocation(line: 585, column: 26, scope: !263)
!818 = !DILocation(line: 0, scope: !263)
!819 = !DILocation(line: 586, column: 23, scope: !263)
!820 = !DILocation(line: 586, column: 28, scope: !263)
!821 = !DILocation(line: 586, column: 32, scope: !263)
!822 = !{!777, !777, i64 0}
!823 = !DILocation(line: 586, column: 38, scope: !263)
!824 = !DILocalVariable(name: "__s1", arg: 1, scope: !825, file: !826, line: 1359, type: !125)
!825 = distinct !DISubprogram(name: "streq", scope: !826, file: !826, line: 1359, type: !827, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !829)
!826 = !DIFile(filename: "./lib/string.h", directory: "/src")
!827 = !DISubroutineType(types: !828)
!828 = !{!266, !125, !125}
!829 = !{!824, !830}
!830 = !DILocalVariable(name: "__s2", arg: 2, scope: !825, file: !826, line: 1359, type: !125)
!831 = !DILocation(line: 0, scope: !825, inlinedAt: !832)
!832 = distinct !DILocation(line: 586, column: 41, scope: !263)
!833 = !DILocation(line: 1361, column: 11, scope: !825, inlinedAt: !832)
!834 = !DILocation(line: 1361, column: 10, scope: !825, inlinedAt: !832)
!835 = !DILocation(line: 586, column: 19, scope: !263)
!836 = !DILocation(line: 587, column: 5, scope: !263)
!837 = !DILocation(line: 588, column: 7, scope: !838)
!838 = distinct !DILexicalBlock(scope: !121, file: !122, line: 588, column: 7)
!839 = !DILocation(line: 588, column: 7, scope: !121)
!840 = !DILocation(line: 590, column: 7, scope: !841)
!841 = distinct !DILexicalBlock(scope: !838, file: !122, line: 589, column: 5)
!842 = !DILocation(line: 591, column: 7, scope: !841)
!843 = !DILocation(line: 595, column: 37, scope: !121)
!844 = !DILocation(line: 595, column: 35, scope: !121)
!845 = !DILocation(line: 596, column: 29, scope: !121)
!846 = !DILocation(line: 597, column: 8, scope: !272)
!847 = !DILocation(line: 597, column: 7, scope: !121)
!848 = !DILocation(line: 604, column: 24, scope: !271)
!849 = !DILocation(line: 604, column: 12, scope: !272)
!850 = !DILocation(line: 0, scope: !270)
!851 = !DILocation(line: 610, column: 16, scope: !270)
!852 = !DILocation(line: 610, column: 7, scope: !270)
!853 = !DILocation(line: 611, column: 21, scope: !270)
!854 = !{!855, !855, i64 0}
!855 = !{!"short", !777, i64 0}
!856 = !DILocation(line: 611, column: 19, scope: !270)
!857 = !DILocation(line: 611, column: 16, scope: !270)
!858 = !DILocation(line: 610, column: 30, scope: !270)
!859 = distinct !{!859, !852, !853, !860}
!860 = !{!"llvm.loop.mustprogress"}
!861 = !DILocation(line: 612, column: 18, scope: !862)
!862 = distinct !DILexicalBlock(scope: !270, file: !122, line: 612, column: 11)
!863 = !DILocation(line: 612, column: 11, scope: !270)
!864 = !DILocation(line: 618, column: 5, scope: !270)
!865 = !DILocation(line: 620, column: 23, scope: !121)
!866 = !DILocation(line: 625, column: 39, scope: !121)
!867 = !DILocation(line: 626, column: 3, scope: !121)
!868 = !DILocation(line: 626, column: 10, scope: !121)
!869 = !DILocation(line: 626, column: 21, scope: !121)
!870 = !DILocation(line: 628, column: 44, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !122, line: 628, column: 11)
!872 = distinct !DILexicalBlock(scope: !121, file: !122, line: 627, column: 5)
!873 = !DILocation(line: 628, column: 32, scope: !871)
!874 = !DILocation(line: 628, column: 49, scope: !871)
!875 = !DILocation(line: 628, column: 11, scope: !872)
!876 = !DILocation(line: 630, column: 11, scope: !877)
!877 = distinct !DILexicalBlock(scope: !872, file: !122, line: 630, column: 11)
!878 = !DILocation(line: 630, column: 11, scope: !872)
!879 = !DILocation(line: 632, column: 26, scope: !880)
!880 = distinct !DILexicalBlock(scope: !881, file: !122, line: 632, column: 15)
!881 = distinct !DILexicalBlock(scope: !877, file: !122, line: 631, column: 9)
!882 = !DILocation(line: 632, column: 34, scope: !880)
!883 = !DILocation(line: 632, column: 37, scope: !880)
!884 = !DILocation(line: 632, column: 15, scope: !881)
!885 = !DILocation(line: 636, column: 16, scope: !886)
!886 = distinct !DILexicalBlock(scope: !881, file: !122, line: 636, column: 15)
!887 = !DILocation(line: 636, column: 29, scope: !886)
!888 = !DILocation(line: 640, column: 16, scope: !872)
!889 = distinct !{!889, !867, !890, !860}
!890 = !DILocation(line: 641, column: 5, scope: !121)
!891 = !DILocation(line: 644, column: 3, scope: !121)
!892 = !DILocation(line: 0, scope: !825, inlinedAt: !893)
!893 = distinct !DILocation(line: 648, column: 31, scope: !121)
!894 = !DILocation(line: 0, scope: !825, inlinedAt: !895)
!895 = distinct !DILocation(line: 649, column: 31, scope: !121)
!896 = !DILocation(line: 0, scope: !825, inlinedAt: !897)
!897 = distinct !DILocation(line: 650, column: 31, scope: !121)
!898 = !DILocation(line: 0, scope: !825, inlinedAt: !899)
!899 = distinct !DILocation(line: 651, column: 31, scope: !121)
!900 = !DILocation(line: 0, scope: !825, inlinedAt: !901)
!901 = distinct !DILocation(line: 652, column: 31, scope: !121)
!902 = !DILocation(line: 0, scope: !825, inlinedAt: !903)
!903 = distinct !DILocation(line: 653, column: 31, scope: !121)
!904 = !DILocation(line: 0, scope: !825, inlinedAt: !905)
!905 = distinct !DILocation(line: 654, column: 31, scope: !121)
!906 = !DILocation(line: 0, scope: !825, inlinedAt: !907)
!907 = distinct !DILocation(line: 655, column: 31, scope: !121)
!908 = !DILocation(line: 0, scope: !825, inlinedAt: !909)
!909 = distinct !DILocation(line: 656, column: 31, scope: !121)
!910 = !DILocation(line: 0, scope: !825, inlinedAt: !911)
!911 = distinct !DILocation(line: 657, column: 31, scope: !121)
!912 = !DILocation(line: 663, column: 7, scope: !913)
!913 = distinct !DILexicalBlock(scope: !121, file: !122, line: 663, column: 7)
!914 = !DILocation(line: 664, column: 7, scope: !913)
!915 = !DILocation(line: 664, column: 10, scope: !913)
!916 = !DILocation(line: 663, column: 7, scope: !121)
!917 = !DILocation(line: 669, column: 7, scope: !918)
!918 = distinct !DILexicalBlock(scope: !913, file: !122, line: 665, column: 5)
!919 = !DILocation(line: 671, column: 5, scope: !918)
!920 = !DILocation(line: 676, column: 7, scope: !921)
!921 = distinct !DILexicalBlock(scope: !913, file: !122, line: 673, column: 5)
!922 = !DILocation(line: 679, column: 3, scope: !121)
!923 = !DILocation(line: 683, column: 3, scope: !121)
!924 = !DILocation(line: 686, column: 3, scope: !121)
!925 = !DILocation(line: 688, column: 3, scope: !121)
!926 = !DILocation(line: 691, column: 3, scope: !121)
!927 = !DILocation(line: 695, column: 3, scope: !121)
!928 = !DILocation(line: 696, column: 1, scope: !121)
!929 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !122, file: !122, line: 836, type: !930, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !932)
!930 = !DISubroutineType(cc: DW_CC_nocall, types: !931)
!931 = !{null, !125}
!932 = !{!933, !934, !941, !942, !944, !945}
!933 = !DILocalVariable(name: "program", arg: 1, scope: !929, file: !122, line: 836, type: !125)
!934 = !DILocalVariable(name: "infomap", scope: !929, file: !122, line: 838, type: !935)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !936, size: 896, elements: !106)
!936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !937)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !929, file: !122, line: 838, size: 128, elements: !938)
!938 = !{!939, !940}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !937, file: !122, line: 838, baseType: !125, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !937, file: !122, line: 838, baseType: !125, size: 64, offset: 64)
!941 = !DILocalVariable(name: "node", scope: !929, file: !122, line: 848, type: !125)
!942 = !DILocalVariable(name: "map_prog", scope: !929, file: !122, line: 849, type: !943)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!944 = !DILocalVariable(name: "lc_messages", scope: !929, file: !122, line: 861, type: !125)
!945 = !DILocalVariable(name: "url_program", scope: !929, file: !122, line: 874, type: !125)
!946 = !DILocation(line: 0, scope: !929)
!947 = !DILocation(line: 857, column: 3, scope: !929)
!948 = !DILocation(line: 861, column: 29, scope: !929)
!949 = !DILocation(line: 862, column: 7, scope: !950)
!950 = distinct !DILexicalBlock(scope: !929, file: !122, line: 862, column: 7)
!951 = !DILocation(line: 862, column: 19, scope: !950)
!952 = !DILocation(line: 862, column: 22, scope: !950)
!953 = !DILocation(line: 862, column: 7, scope: !929)
!954 = !DILocation(line: 868, column: 7, scope: !955)
!955 = distinct !DILexicalBlock(scope: !950, file: !122, line: 863, column: 5)
!956 = !DILocation(line: 870, column: 5, scope: !955)
!957 = !DILocation(line: 875, column: 3, scope: !929)
!958 = !DILocation(line: 877, column: 3, scope: !929)
!959 = !DILocation(line: 879, column: 1, scope: !929)
!960 = !DISubprogram(name: "exit", scope: !961, file: !961, line: 624, type: !765, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !796)
!961 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!962 = !DISubprogram(name: "setlocale", scope: !963, file: !963, line: 122, type: !964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!963 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!964 = !DISubroutineType(types: !965)
!965 = !{!148, !150, !125}
!966 = !DISubprogram(name: "strncmp", scope: !967, file: !967, line: 159, type: !968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!967 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!968 = !DISubroutineType(types: !969)
!969 = !{!150, !125, !125, !152}
!970 = !DISubprogram(name: "getenv", scope: !961, file: !961, line: 641, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!971 = !DISubroutineType(types: !972)
!972 = !{!148, !125}
!973 = !DISubprogram(name: "strcmp", scope: !967, file: !967, line: 156, type: !974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!974 = !DISubroutineType(types: !975)
!975 = !{!150, !125, !125}
!976 = !DISubprogram(name: "strspn", scope: !967, file: !967, line: 297, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!977 = !DISubroutineType(types: !978)
!978 = !{!154, !125, !125}
!979 = !DISubprogram(name: "strchr", scope: !967, file: !967, line: 246, type: !980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!980 = !DISubroutineType(types: !981)
!981 = !{!148, !125, !150}
!982 = !DISubprogram(name: "__ctype_b_loc", scope: !133, file: !133, line: 79, type: !983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!983 = !DISubroutineType(types: !984)
!984 = !{!985}
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!988 = !DISubprogram(name: "strcspn", scope: !967, file: !967, line: 293, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!989 = !DISubprogram(name: "fwrite_unlocked", scope: !807, file: !807, line: 704, type: !990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!990 = !DISubroutineType(types: !991)
!991 = !{!152, !992, !152, !152, !810}
!992 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !993)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!995 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 121, type: !996, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !999)
!996 = !DISubroutineType(types: !997)
!997 = !{!150, !150, !998}
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!999 = !{!1000, !1001, !1002, !1003, !1004, !1005, !1006, !1009, !1010, !1014, !1015, !1021, !1022}
!1000 = !DILocalVariable(name: "argc", arg: 1, scope: !995, file: !2, line: 121, type: !150)
!1001 = !DILocalVariable(name: "argv", arg: 2, scope: !995, file: !2, line: 121, type: !998)
!1002 = !DILocalVariable(name: "display_return", scope: !995, file: !2, line: 123, type: !266)
!1003 = !DILocalVariable(name: "posixly_correct", scope: !995, file: !2, line: 124, type: !266)
!1004 = !DILocalVariable(name: "allow_options", scope: !995, file: !2, line: 125, type: !266)
!1005 = !DILocalVariable(name: "do_v9", scope: !995, file: !2, line: 132, type: !266)
!1006 = !DILocalVariable(name: "temp", scope: !1007, file: !2, line: 163, type: !125)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 162, column: 7)
!1008 = distinct !DILexicalBlock(scope: !995, file: !2, line: 160, column: 7)
!1009 = !DILocalVariable(name: "i", scope: !1007, file: !2, line: 164, type: !152)
!1010 = !DILocalVariable(name: "s", scope: !1011, file: !2, line: 210, type: !125)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 209, column: 9)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 207, column: 5)
!1013 = distinct !DILexicalBlock(scope: !995, file: !2, line: 206, column: 7)
!1014 = !DILocalVariable(name: "c", scope: !1011, file: !2, line: 211, type: !155)
!1015 = !DILocalVariable(name: "ch", scope: !1016, file: !2, line: 230, type: !155)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !2, line: 229, column: 23)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !2, line: 218, column: 21)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !2, line: 216, column: 17)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 215, column: 19)
!1020 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 214, column: 13)
!1021 = !DILabel(scope: !995, name: "just_echo", file: !2, line: 204)
!1022 = !DILabel(scope: !1017, name: "not_an_escape", file: !2, line: 259)
!1023 = !DILocation(line: 0, scope: !995)
!1024 = !DILocation(line: 124, column: 28, scope: !995)
!1025 = !DILocation(line: 124, column: 27, scope: !995)
!1026 = !DILocation(line: 127, column: 6, scope: !995)
!1027 = !DILocation(line: 127, column: 37, scope: !995)
!1028 = !DILocation(line: 127, column: 44, scope: !995)
!1029 = !DILocation(line: 127, column: 54, scope: !995)
!1030 = !DILocation(line: 0, scope: !825, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 127, column: 47, scope: !995)
!1032 = !DILocation(line: 1361, column: 11, scope: !825, inlinedAt: !1031)
!1033 = !DILocation(line: 1361, column: 10, scope: !825, inlinedAt: !1031)
!1034 = !DILocation(line: 135, column: 21, scope: !995)
!1035 = !DILocation(line: 135, column: 3, scope: !995)
!1036 = !DILocation(line: 136, column: 3, scope: !995)
!1037 = !DILocation(line: 137, column: 3, scope: !995)
!1038 = !DILocation(line: 138, column: 3, scope: !995)
!1039 = !DILocation(line: 140, column: 3, scope: !995)
!1040 = !DILocation(line: 144, column: 21, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !995, file: !2, line: 144, column: 7)
!1042 = !DILocation(line: 146, column: 18, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 146, column: 11)
!1044 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 145, column: 5)
!1045 = !DILocation(line: 0, scope: !825, inlinedAt: !1046)
!1046 = distinct !DILocation(line: 146, column: 11, scope: !1043)
!1047 = !DILocation(line: 1361, column: 11, scope: !825, inlinedAt: !1046)
!1048 = !DILocation(line: 1361, column: 10, scope: !825, inlinedAt: !1046)
!1049 = !DILocation(line: 146, column: 11, scope: !1044)
!1050 = !DILocation(line: 147, column: 9, scope: !1043)
!1051 = !DILocation(line: 0, scope: !825, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 149, column: 11, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 149, column: 11)
!1054 = !DILocation(line: 1361, column: 11, scope: !825, inlinedAt: !1052)
!1055 = !DILocation(line: 1361, column: 10, scope: !825, inlinedAt: !1052)
!1056 = !DILocation(line: 149, column: 11, scope: !1044)
!1057 = !DILocation(line: 151, column: 24, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1053, file: !2, line: 150, column: 9)
!1059 = !DILocation(line: 151, column: 60, scope: !1058)
!1060 = !DILocation(line: 151, column: 69, scope: !1058)
!1061 = !DILocation(line: 151, column: 11, scope: !1058)
!1062 = !DILocation(line: 153, column: 11, scope: !1058)
!1063 = !DILocation(line: 157, column: 3, scope: !995)
!1064 = !DILocation(line: 158, column: 3, scope: !995)
!1065 = !DILocation(line: 160, column: 7, scope: !995)
!1066 = !DILocation(line: 123, column: 8, scope: !995)
!1067 = !DILocation(line: 132, column: 8, scope: !995)
!1068 = !DILocation(line: 200, column: 13, scope: !1007)
!1069 = !DILocation(line: 201, column: 13, scope: !1007)
!1070 = !DILocation(line: 161, column: 17, scope: !1008)
!1071 = !DILocation(line: 161, column: 21, scope: !1008)
!1072 = !DILocation(line: 161, column: 25, scope: !1008)
!1073 = !DILocation(line: 161, column: 24, scope: !1008)
!1074 = !DILocation(line: 161, column: 33, scope: !1008)
!1075 = !DILocation(line: 161, column: 5, scope: !1008)
!1076 = !DILocation(line: 163, column: 36, scope: !1007)
!1077 = !DILocation(line: 0, scope: !1007)
!1078 = !DILocation(line: 170, column: 21, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 170, column: 9)
!1080 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 170, column: 9)
!1081 = !DILocation(line: 170, column: 9, scope: !1080)
!1082 = !DILocation(line: 171, column: 19, scope: !1079)
!1083 = !DILocation(line: 171, column: 11, scope: !1079)
!1084 = !DILocation(line: 170, column: 31, scope: !1079)
!1085 = distinct !{!1085, !1081, !1086, !860}
!1086 = !DILocation(line: 177, column: 13, scope: !1080)
!1087 = !DILocation(line: 179, column: 15, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 179, column: 13)
!1089 = !DILocation(line: 179, column: 13, scope: !1007)
!1090 = !DILocation(line: 184, column: 9, scope: !1007)
!1091 = !DILocation(line: 185, column: 24, scope: !1007)
!1092 = !DILocation(line: 185, column: 19, scope: !1007)
!1093 = !DILocation(line: 185, column: 11, scope: !1007)
!1094 = !DILocation(line: 189, column: 15, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 186, column: 13)
!1096 = !DILocation(line: 193, column: 15, scope: !1095)
!1097 = !DILocation(line: 197, column: 15, scope: !1095)
!1098 = !DILocation(line: 184, column: 16, scope: !1007)
!1099 = distinct !{!1099, !1090, !1100, !860}
!1100 = !DILocation(line: 198, column: 13, scope: !1007)
!1101 = !DILocation(line: 204, column: 1, scope: !995)
!1102 = !DILocation(line: 206, column: 7, scope: !1013)
!1103 = !DILocation(line: 206, column: 13, scope: !1013)
!1104 = !DILocation(line: 0, scope: !1013)
!1105 = !DILocation(line: 273, column: 7, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 272, column: 5)
!1107 = !DILocation(line: 275, column: 11, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 274, column: 9)
!1109 = !DILocation(line: 278, column: 20, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 278, column: 15)
!1111 = !DILocation(line: 278, column: 15, scope: !1108)
!1112 = !DILocation(line: 208, column: 7, scope: !1012)
!1113 = !DILocation(line: 210, column: 27, scope: !1011)
!1114 = !DILocation(line: 0, scope: !1011)
!1115 = !DILocation(line: 213, column: 11, scope: !1011)
!1116 = !DILocation(line: 213, column: 25, scope: !1011)
!1117 = !DILocation(line: 213, column: 23, scope: !1011)
!1118 = !DILocation(line: 215, column: 32, scope: !1019)
!1119 = !DILocation(line: 215, column: 19, scope: !1020)
!1120 = !DILocation(line: 217, column: 33, scope: !1018)
!1121 = !DILocation(line: 217, column: 19, scope: !1018)
!1122 = !DILocation(line: 219, column: 41, scope: !1017)
!1123 = !DILocation(line: 220, column: 41, scope: !1017)
!1124 = !DILocation(line: 222, column: 43, scope: !1017)
!1125 = !DILocation(line: 223, column: 41, scope: !1017)
!1126 = !DILocation(line: 224, column: 41, scope: !1017)
!1127 = !DILocation(line: 225, column: 41, scope: !1017)
!1128 = !DILocation(line: 226, column: 41, scope: !1017)
!1129 = !DILocation(line: 227, column: 41, scope: !1017)
!1130 = !DILocation(line: 230, column: 44, scope: !1016)
!1131 = !DILocation(line: 0, scope: !1016)
!1132 = !DILocation(line: 231, column: 43, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1016, file: !2, line: 231, column: 29)
!1134 = !DILocalVariable(name: "c", arg: 1, scope: !1135, file: !1136, line: 324, type: !150)
!1135 = distinct !DISubprogram(name: "c_isxdigit", scope: !1136, file: !1136, line: 324, type: !1137, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !1139)
!1136 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!266, !150}
!1139 = !{!1134}
!1140 = !DILocation(line: 0, scope: !1135, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 231, column: 31, scope: !1133)
!1142 = !DILocation(line: 326, column: 3, scope: !1135, inlinedAt: !1141)
!1143 = !DILocation(line: 233, column: 26, scope: !1016)
!1144 = !DILocalVariable(name: "c", arg: 1, scope: !1145, file: !2, line: 102, type: !155)
!1145 = distinct !DISubprogram(name: "hextobin", scope: !2, file: !2, line: 102, type: !1146, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !1148)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!150, !155}
!1148 = !{!1144}
!1149 = !DILocation(line: 0, scope: !1145, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 234, column: 29, scope: !1016)
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
!1161 = !DILocation(line: 235, column: 30, scope: !1016)
!1162 = !DILocation(line: 236, column: 41, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1016, file: !2, line: 236, column: 29)
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
!1184 = distinct !DILexicalBlock(scope: !1017, file: !2, line: 245, column: 27)
!1185 = !DILocation(line: 245, column: 40, scope: !1184)
!1186 = !DILocation(line: 247, column: 29, scope: !1017)
!1187 = !DILocation(line: 247, column: 23, scope: !1017)
!1188 = !DILocation(line: 0, scope: !1018)
!1189 = !DILocation(line: 251, column: 25, scope: !1017)
!1190 = !DILocation(line: 252, column: 34, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1017, file: !2, line: 252, column: 27)
!1192 = !DILocation(line: 252, column: 37, scope: !1191)
!1193 = !DILocation(line: 254, column: 34, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1017, file: !2, line: 254, column: 27)
!1195 = !DILocation(line: 254, column: 37, scope: !1194)
!1196 = !DILocation(line: 255, column: 31, scope: !1194)
!1197 = !DILocation(line: 255, column: 40, scope: !1194)
!1198 = !DILocation(line: 255, column: 43, scope: !1194)
!1199 = !DILocation(line: 255, column: 35, scope: !1194)
!1200 = !DILocation(line: 255, column: 25, scope: !1194)
!1201 = !DILocalVariable(name: "__c", arg: 1, scope: !1202, file: !1203, line: 108, type: !150)
!1202 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1203, file: !1203, line: 108, type: !1204, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !1206)
!1203 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!150, !150}
!1206 = !{!1201}
!1207 = !DILocation(line: 0, scope: !1202, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 260, column: 31, scope: !1017)
!1209 = !DILocation(line: 110, column: 10, scope: !1202, inlinedAt: !1208)
!1210 = !{!1211, !776, i64 40}
!1211 = !{!"_IO_FILE", !814, i64 0, !776, i64 8, !776, i64 16, !776, i64 24, !776, i64 32, !776, i64 40, !776, i64 48, !776, i64 56, !776, i64 64, !776, i64 72, !776, i64 80, !776, i64 88, !776, i64 96, !776, i64 104, !814, i64 112, !814, i64 116, !1212, i64 120, !855, i64 128, !777, i64 130, !777, i64 131, !776, i64 136, !1212, i64 144, !776, i64 152, !776, i64 160, !776, i64 168, !776, i64 176, !1212, i64 184, !814, i64 192, !777, i64 196}
!1212 = !{!"long", !777, i64 0}
!1213 = !{!1211, !776, i64 48}
!1214 = !{!"branch_weights", i32 2000, i32 1}
!1215 = !DILocation(line: 0, scope: !1202, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 263, column: 15, scope: !1020)
!1217 = !DILocation(line: 110, column: 10, scope: !1202, inlinedAt: !1216)
!1218 = !DILocation(line: 263, column: 15, scope: !1020)
!1219 = distinct !{!1219, !1115, !1220, !860}
!1220 = !DILocation(line: 264, column: 13, scope: !1011)
!1221 = !DILocation(line: 265, column: 15, scope: !1011)
!1222 = !DILocation(line: 266, column: 15, scope: !1011)
!1223 = !DILocation(line: 267, column: 20, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 267, column: 15)
!1225 = !DILocation(line: 267, column: 15, scope: !1011)
!1226 = !DILocation(line: 0, scope: !1202, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 268, column: 13, scope: !1224)
!1228 = !DILocation(line: 110, column: 10, scope: !1202, inlinedAt: !1227)
!1229 = distinct !{!1229, !1112, !1230, !860}
!1230 = !DILocation(line: 269, column: 9, scope: !1012)
!1231 = !DILocation(line: 276, column: 15, scope: !1108)
!1232 = !DILocation(line: 277, column: 15, scope: !1108)
!1233 = !DILocation(line: 0, scope: !1202, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 279, column: 13, scope: !1110)
!1235 = !DILocation(line: 110, column: 10, scope: !1202, inlinedAt: !1234)
!1236 = distinct !{!1236, !1105, !1237, !860}
!1237 = !DILocation(line: 280, column: 9, scope: !1106)
!1238 = !DILocation(line: 283, column: 7, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !995, file: !2, line: 283, column: 7)
!1240 = !DILocation(line: 283, column: 7, scope: !995)
!1241 = !DILocation(line: 0, scope: !1202, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 284, column: 5, scope: !1239)
!1243 = !DILocation(line: 110, column: 10, scope: !1202, inlinedAt: !1242)
!1244 = !DILocation(line: 286, column: 1, scope: !995)
!1245 = !DISubprogram(name: "bindtextdomain", scope: !798, file: !798, line: 86, type: !1246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!148, !125, !125}
!1248 = !DISubprogram(name: "textdomain", scope: !798, file: !798, line: 82, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!1249 = !DISubprogram(name: "atexit", scope: !961, file: !961, line: 602, type: !1250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!150, !408}
!1252 = !DISubprogram(name: "__overflow", scope: !807, file: !807, line: 886, type: !1253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!150, !279, !150}
!1255 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !347, file: !347, line: 50, type: !1256, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !346, retainedNodes: !1257)
!1256 = !DISubroutineType(types: !931)
!1257 = !{!1258}
!1258 = !DILocalVariable(name: "file", arg: 1, scope: !1255, file: !347, line: 50, type: !125)
!1259 = !DILocation(line: 0, scope: !1255)
!1260 = !DILocation(line: 52, column: 13, scope: !1255)
!1261 = !DILocation(line: 53, column: 1, scope: !1255)
!1262 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !347, file: !347, line: 87, type: !1263, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !346, retainedNodes: !1265)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{null, !266}
!1265 = !{!1266}
!1266 = !DILocalVariable(name: "ignore", arg: 1, scope: !1262, file: !347, line: 87, type: !266)
!1267 = !DILocation(line: 0, scope: !1262)
!1268 = !DILocation(line: 89, column: 16, scope: !1262)
!1269 = !{!1270, !1270, i64 0}
!1270 = !{!"_Bool", !777, i64 0}
!1271 = !DILocation(line: 90, column: 1, scope: !1262)
!1272 = distinct !DISubprogram(name: "close_stdout", scope: !347, file: !347, line: 116, type: !409, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !346, retainedNodes: !1273)
!1273 = !{!1274}
!1274 = !DILocalVariable(name: "write_error", scope: !1275, file: !347, line: 121, type: !125)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !347, line: 120, column: 5)
!1276 = distinct !DILexicalBlock(scope: !1272, file: !347, line: 118, column: 7)
!1277 = !DILocation(line: 118, column: 21, scope: !1276)
!1278 = !DILocation(line: 118, column: 7, scope: !1276)
!1279 = !DILocation(line: 118, column: 29, scope: !1276)
!1280 = !DILocation(line: 119, column: 7, scope: !1276)
!1281 = !DILocation(line: 119, column: 12, scope: !1276)
!1282 = !{i8 0, i8 2}
!1283 = !DILocation(line: 119, column: 25, scope: !1276)
!1284 = !DILocation(line: 119, column: 28, scope: !1276)
!1285 = !DILocation(line: 119, column: 34, scope: !1276)
!1286 = !DILocation(line: 118, column: 7, scope: !1272)
!1287 = !DILocation(line: 121, column: 33, scope: !1275)
!1288 = !DILocation(line: 0, scope: !1275)
!1289 = !DILocation(line: 122, column: 11, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1275, file: !347, line: 122, column: 11)
!1291 = !DILocation(line: 0, scope: !1290)
!1292 = !DILocation(line: 122, column: 11, scope: !1275)
!1293 = !DILocation(line: 123, column: 9, scope: !1290)
!1294 = !DILocation(line: 126, column: 9, scope: !1290)
!1295 = !DILocation(line: 128, column: 14, scope: !1275)
!1296 = !DILocation(line: 128, column: 7, scope: !1275)
!1297 = !DILocation(line: 133, column: 42, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1272, file: !347, line: 133, column: 7)
!1299 = !DILocation(line: 133, column: 28, scope: !1298)
!1300 = !DILocation(line: 133, column: 50, scope: !1298)
!1301 = !DILocation(line: 133, column: 7, scope: !1272)
!1302 = !DILocation(line: 134, column: 12, scope: !1298)
!1303 = !DILocation(line: 134, column: 5, scope: !1298)
!1304 = !DILocation(line: 135, column: 1, scope: !1272)
!1305 = !DISubprogram(name: "__errno_location", scope: !1306, file: !1306, line: 37, type: !1307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!1306 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!1309}
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!1310 = !DISubprogram(name: "_exit", scope: !1311, file: !1311, line: 624, type: !765, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !796)
!1311 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1312 = distinct !DISubprogram(name: "verror", scope: !362, file: !362, line: 251, type: !1313, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1315)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{null, !150, !150, !125, !372}
!1315 = !{!1316, !1317, !1318, !1319}
!1316 = !DILocalVariable(name: "status", arg: 1, scope: !1312, file: !362, line: 251, type: !150)
!1317 = !DILocalVariable(name: "errnum", arg: 2, scope: !1312, file: !362, line: 251, type: !150)
!1318 = !DILocalVariable(name: "message", arg: 3, scope: !1312, file: !362, line: 251, type: !125)
!1319 = !DILocalVariable(name: "args", arg: 4, scope: !1312, file: !362, line: 251, type: !372)
!1320 = !DILocation(line: 0, scope: !1312)
!1321 = !DILocation(line: 261, column: 3, scope: !1312)
!1322 = !DILocation(line: 265, column: 7, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1312, file: !362, line: 265, column: 7)
!1324 = !DILocation(line: 265, column: 7, scope: !1312)
!1325 = !DILocation(line: 266, column: 5, scope: !1323)
!1326 = !DILocation(line: 272, column: 7, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1323, file: !362, line: 268, column: 5)
!1328 = !DILocation(line: 276, column: 3, scope: !1312)
!1329 = !DILocation(line: 282, column: 1, scope: !1312)
!1330 = distinct !DISubprogram(name: "flush_stdout", scope: !362, file: !362, line: 163, type: !409, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1331)
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
!1345 = !DISubprogram(name: "__fprintf_chk", scope: !802, file: !802, line: 93, type: !1346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!150, !1348, !150, !805, null}
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
!1383 = distinct !DISubprogram(name: "error_tail", scope: !362, file: !362, line: 219, type: !1313, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1384)
!1384 = !{!1385, !1386, !1387, !1388}
!1385 = !DILocalVariable(name: "status", arg: 1, scope: !1383, file: !362, line: 219, type: !150)
!1386 = !DILocalVariable(name: "errnum", arg: 2, scope: !1383, file: !362, line: 219, type: !150)
!1387 = !DILocalVariable(name: "message", arg: 3, scope: !1383, file: !362, line: 219, type: !125)
!1388 = !DILocalVariable(name: "args", arg: 4, scope: !1383, file: !362, line: 219, type: !372)
!1389 = !DILocation(line: 0, scope: !1383)
!1390 = !DILocation(line: 229, column: 13, scope: !1383)
!1391 = !DILocalVariable(name: "__stream", arg: 1, scope: !1392, file: !802, line: 132, type: !1348)
!1392 = distinct !DISubprogram(name: "vfprintf", scope: !802, file: !802, line: 132, type: !1393, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1395)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!150, !1348, !805, !372}
!1395 = !{!1391, !1396, !1397}
!1396 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1392, file: !802, line: 133, type: !805)
!1397 = !DILocalVariable(name: "__ap", arg: 3, scope: !1392, file: !802, line: 133, type: !372)
!1398 = !DILocation(line: 0, scope: !1392, inlinedAt: !1399)
!1399 = distinct !DILocation(line: 229, column: 3, scope: !1383)
!1400 = !DILocation(line: 135, column: 10, scope: !1392, inlinedAt: !1399)
!1401 = !DILocation(line: 232, column: 3, scope: !1383)
!1402 = !DILocation(line: 233, column: 7, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1383, file: !362, line: 233, column: 7)
!1404 = !DILocation(line: 233, column: 7, scope: !1383)
!1405 = !DILocalVariable(name: "errnum", arg: 1, scope: !1406, file: !362, line: 188, type: !150)
!1406 = distinct !DISubprogram(name: "print_errno_message", scope: !362, file: !362, line: 188, type: !765, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1407)
!1407 = !{!1405, !1408, !1409}
!1408 = !DILocalVariable(name: "s", scope: !1406, file: !362, line: 190, type: !125)
!1409 = !DILocalVariable(name: "errbuf", scope: !1406, file: !362, line: 193, type: !1410)
!1410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1411)
!1411 = !{!1412}
!1412 = !DISubrange(count: 1024)
!1413 = !DILocation(line: 0, scope: !1406, inlinedAt: !1414)
!1414 = distinct !DILocation(line: 234, column: 5, scope: !1403)
!1415 = !DILocation(line: 193, column: 3, scope: !1406, inlinedAt: !1414)
!1416 = !DILocation(line: 193, column: 8, scope: !1406, inlinedAt: !1414)
!1417 = !DILocation(line: 195, column: 7, scope: !1406, inlinedAt: !1414)
!1418 = !DILocation(line: 207, column: 9, scope: !1419, inlinedAt: !1414)
!1419 = distinct !DILexicalBlock(scope: !1406, file: !362, line: 207, column: 7)
!1420 = !DILocation(line: 207, column: 7, scope: !1406, inlinedAt: !1414)
!1421 = !DILocation(line: 208, column: 9, scope: !1419, inlinedAt: !1414)
!1422 = !DILocation(line: 208, column: 5, scope: !1419, inlinedAt: !1414)
!1423 = !DILocation(line: 214, column: 3, scope: !1406, inlinedAt: !1414)
!1424 = !DILocation(line: 216, column: 1, scope: !1406, inlinedAt: !1414)
!1425 = !DILocation(line: 234, column: 5, scope: !1403)
!1426 = !DILocation(line: 238, column: 3, scope: !1383)
!1427 = !DILocalVariable(name: "__c", arg: 1, scope: !1428, file: !1203, line: 101, type: !150)
!1428 = distinct !DISubprogram(name: "putc_unlocked", scope: !1203, file: !1203, line: 101, type: !1429, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1431)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!150, !150, !1349}
!1431 = !{!1427, !1432}
!1432 = !DILocalVariable(name: "__stream", arg: 2, scope: !1428, file: !1203, line: 101, type: !1349)
!1433 = !DILocation(line: 0, scope: !1428, inlinedAt: !1434)
!1434 = distinct !DILocation(line: 238, column: 3, scope: !1383)
!1435 = !DILocation(line: 103, column: 10, scope: !1428, inlinedAt: !1434)
!1436 = !DILocation(line: 240, column: 3, scope: !1383)
!1437 = !DILocation(line: 241, column: 7, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1383, file: !362, line: 241, column: 7)
!1439 = !DILocation(line: 241, column: 7, scope: !1383)
!1440 = !DILocation(line: 242, column: 5, scope: !1438)
!1441 = !DILocation(line: 243, column: 1, scope: !1383)
!1442 = !DISubprogram(name: "__vfprintf_chk", scope: !802, file: !802, line: 96, type: !1443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!150, !1348, !150, !805, !372}
!1445 = !DISubprogram(name: "strerror_r", scope: !967, file: !967, line: 444, type: !1446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!148, !150, !148, !152}
!1448 = !DISubprogram(name: "fflush_unlocked", scope: !807, file: !807, line: 239, type: !1449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!150, !1349}
!1451 = !DISubprogram(name: "fcntl", scope: !1452, file: !1452, line: 149, type: !1453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!1452 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!150, !150, !150, null}
!1455 = distinct !DISubprogram(name: "error", scope: !362, file: !362, line: 285, type: !1456, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1458)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{null, !150, !150, !125, null}
!1458 = !{!1459, !1460, !1461, !1462}
!1459 = !DILocalVariable(name: "status", arg: 1, scope: !1455, file: !362, line: 285, type: !150)
!1460 = !DILocalVariable(name: "errnum", arg: 2, scope: !1455, file: !362, line: 285, type: !150)
!1461 = !DILocalVariable(name: "message", arg: 3, scope: !1455, file: !362, line: 285, type: !125)
!1462 = !DILocalVariable(name: "ap", scope: !1455, file: !362, line: 287, type: !1463)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !807, line: 52, baseType: !1464)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1465, line: 14, baseType: !1466)
!1465 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !376, baseType: !1467)
!1467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 192, elements: !91)
!1468 = !DILocation(line: 0, scope: !1455)
!1469 = !DILocation(line: 287, column: 3, scope: !1455)
!1470 = !DILocation(line: 287, column: 11, scope: !1455)
!1471 = !DILocation(line: 288, column: 3, scope: !1455)
!1472 = !DILocation(line: 289, column: 3, scope: !1455)
!1473 = !DILocation(line: 290, column: 3, scope: !1455)
!1474 = !DILocation(line: 291, column: 1, scope: !1455)
!1475 = !DILocation(line: 0, scope: !369)
!1476 = !DILocation(line: 302, column: 7, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !369, file: !362, line: 302, column: 7)
!1478 = !DILocation(line: 302, column: 7, scope: !369)
!1479 = !DILocation(line: 307, column: 11, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !362, line: 307, column: 11)
!1481 = distinct !DILexicalBlock(scope: !1477, file: !362, line: 303, column: 5)
!1482 = !DILocation(line: 307, column: 27, scope: !1480)
!1483 = !DILocation(line: 308, column: 11, scope: !1480)
!1484 = !DILocation(line: 308, column: 28, scope: !1480)
!1485 = !DILocation(line: 308, column: 25, scope: !1480)
!1486 = !DILocation(line: 309, column: 15, scope: !1480)
!1487 = !DILocation(line: 309, column: 33, scope: !1480)
!1488 = !DILocation(line: 310, column: 19, scope: !1480)
!1489 = !DILocation(line: 311, column: 22, scope: !1480)
!1490 = !DILocation(line: 311, column: 56, scope: !1480)
!1491 = !DILocation(line: 307, column: 11, scope: !1481)
!1492 = !DILocation(line: 316, column: 21, scope: !1481)
!1493 = !DILocation(line: 317, column: 23, scope: !1481)
!1494 = !DILocation(line: 318, column: 5, scope: !1481)
!1495 = !DILocation(line: 327, column: 3, scope: !369)
!1496 = !DILocation(line: 331, column: 7, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !369, file: !362, line: 331, column: 7)
!1498 = !DILocation(line: 331, column: 7, scope: !369)
!1499 = !DILocation(line: 332, column: 5, scope: !1497)
!1500 = !DILocation(line: 338, column: 7, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1497, file: !362, line: 334, column: 5)
!1502 = !DILocation(line: 346, column: 3, scope: !369)
!1503 = !DILocation(line: 350, column: 3, scope: !369)
!1504 = !DILocation(line: 356, column: 1, scope: !369)
!1505 = distinct !DISubprogram(name: "error_at_line", scope: !362, file: !362, line: 359, type: !1506, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1508)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{null, !150, !150, !125, !129, !125, null}
!1508 = !{!1509, !1510, !1511, !1512, !1513, !1514}
!1509 = !DILocalVariable(name: "status", arg: 1, scope: !1505, file: !362, line: 359, type: !150)
!1510 = !DILocalVariable(name: "errnum", arg: 2, scope: !1505, file: !362, line: 359, type: !150)
!1511 = !DILocalVariable(name: "file_name", arg: 3, scope: !1505, file: !362, line: 359, type: !125)
!1512 = !DILocalVariable(name: "line_number", arg: 4, scope: !1505, file: !362, line: 360, type: !129)
!1513 = !DILocalVariable(name: "message", arg: 5, scope: !1505, file: !362, line: 360, type: !125)
!1514 = !DILocalVariable(name: "ap", scope: !1505, file: !362, line: 362, type: !1463)
!1515 = !DILocation(line: 0, scope: !1505)
!1516 = !DILocation(line: 362, column: 3, scope: !1505)
!1517 = !DILocation(line: 362, column: 11, scope: !1505)
!1518 = !DILocation(line: 363, column: 3, scope: !1505)
!1519 = !DILocation(line: 364, column: 3, scope: !1505)
!1520 = !DILocation(line: 366, column: 3, scope: !1505)
!1521 = !DILocation(line: 367, column: 1, scope: !1505)
!1522 = distinct !DISubprogram(name: "getprogname", scope: !694, file: !694, line: 54, type: !1523, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !796)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!125}
!1525 = !DILocation(line: 58, column: 10, scope: !1522)
!1526 = !DILocation(line: 58, column: 3, scope: !1522)
!1527 = distinct !DISubprogram(name: "set_program_name", scope: !414, file: !414, line: 37, type: !1256, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !1528)
!1528 = !{!1529, !1530, !1531}
!1529 = !DILocalVariable(name: "argv0", arg: 1, scope: !1527, file: !414, line: 37, type: !125)
!1530 = !DILocalVariable(name: "slash", scope: !1527, file: !414, line: 44, type: !125)
!1531 = !DILocalVariable(name: "base", scope: !1527, file: !414, line: 45, type: !125)
!1532 = !DILocation(line: 0, scope: !1527)
!1533 = !DILocation(line: 44, column: 23, scope: !1527)
!1534 = !DILocation(line: 45, column: 22, scope: !1527)
!1535 = !DILocation(line: 46, column: 17, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1527, file: !414, line: 46, column: 7)
!1537 = !DILocation(line: 46, column: 9, scope: !1536)
!1538 = !DILocation(line: 46, column: 25, scope: !1536)
!1539 = !DILocation(line: 46, column: 40, scope: !1536)
!1540 = !DILocalVariable(name: "__s1", arg: 1, scope: !1541, file: !826, line: 974, type: !993)
!1541 = distinct !DISubprogram(name: "memeq", scope: !826, file: !826, line: 974, type: !1542, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !1544)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!266, !993, !993, !152}
!1544 = !{!1540, !1545, !1546}
!1545 = !DILocalVariable(name: "__s2", arg: 2, scope: !1541, file: !826, line: 974, type: !993)
!1546 = !DILocalVariable(name: "__n", arg: 3, scope: !1541, file: !826, line: 974, type: !152)
!1547 = !DILocation(line: 0, scope: !1541, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 46, column: 28, scope: !1536)
!1549 = !DILocation(line: 976, column: 11, scope: !1541, inlinedAt: !1548)
!1550 = !DILocation(line: 976, column: 10, scope: !1541, inlinedAt: !1548)
!1551 = !DILocation(line: 46, column: 7, scope: !1527)
!1552 = !DILocation(line: 49, column: 11, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !414, line: 49, column: 11)
!1554 = distinct !DILexicalBlock(scope: !1536, file: !414, line: 47, column: 5)
!1555 = !DILocation(line: 49, column: 36, scope: !1553)
!1556 = !DILocation(line: 49, column: 11, scope: !1554)
!1557 = !DILocation(line: 65, column: 16, scope: !1527)
!1558 = !DILocation(line: 71, column: 27, scope: !1527)
!1559 = !DILocation(line: 74, column: 33, scope: !1527)
!1560 = !DILocation(line: 76, column: 1, scope: !1527)
!1561 = !DISubprogram(name: "strrchr", scope: !967, file: !967, line: 273, type: !980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!1562 = !DILocation(line: 0, scope: !423)
!1563 = !DILocation(line: 40, column: 29, scope: !423)
!1564 = !DILocation(line: 41, column: 19, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !423, file: !424, line: 41, column: 7)
!1566 = !DILocation(line: 41, column: 7, scope: !423)
!1567 = !DILocation(line: 47, column: 3, scope: !423)
!1568 = !DILocation(line: 48, column: 3, scope: !423)
!1569 = !DILocation(line: 48, column: 13, scope: !423)
!1570 = !DILocalVariable(name: "ps", arg: 1, scope: !1571, file: !1572, line: 1135, type: !1575)
!1571 = distinct !DISubprogram(name: "mbszero", scope: !1572, file: !1572, line: 1135, type: !1573, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !1576)
!1572 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null, !1575}
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!1576 = !{!1570}
!1577 = !DILocation(line: 0, scope: !1571, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 48, column: 18, scope: !423)
!1579 = !DILocalVariable(name: "__dest", arg: 1, scope: !1580, file: !1581, line: 57, type: !149)
!1580 = distinct !DISubprogram(name: "memset", scope: !1581, file: !1581, line: 57, type: !1582, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !1584)
!1581 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!149, !149, !150, !152}
!1584 = !{!1579, !1585, !1586}
!1585 = !DILocalVariable(name: "__ch", arg: 2, scope: !1580, file: !1581, line: 57, type: !150)
!1586 = !DILocalVariable(name: "__len", arg: 3, scope: !1580, file: !1581, line: 57, type: !152)
!1587 = !DILocation(line: 0, scope: !1580, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 1137, column: 3, scope: !1571, inlinedAt: !1578)
!1589 = !DILocation(line: 59, column: 10, scope: !1580, inlinedAt: !1588)
!1590 = !DILocation(line: 49, column: 7, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !423, file: !424, line: 49, column: 7)
!1592 = !DILocation(line: 49, column: 39, scope: !1591)
!1593 = !DILocation(line: 49, column: 44, scope: !1591)
!1594 = !DILocation(line: 54, column: 1, scope: !423)
!1595 = !DISubprogram(name: "mbrtoc32", scope: !435, file: !435, line: 57, type: !1596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!152, !1598, !805, !152, !1600}
!1598 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1599)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1575)
!1601 = distinct !DISubprogram(name: "clone_quoting_options", scope: !454, file: !454, line: 113, type: !1602, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1605)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!1604, !1604}
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!1605 = !{!1606, !1607, !1608}
!1606 = !DILocalVariable(name: "o", arg: 1, scope: !1601, file: !454, line: 113, type: !1604)
!1607 = !DILocalVariable(name: "saved_errno", scope: !1601, file: !454, line: 115, type: !150)
!1608 = !DILocalVariable(name: "p", scope: !1601, file: !454, line: 116, type: !1604)
!1609 = !DILocation(line: 0, scope: !1601)
!1610 = !DILocation(line: 115, column: 21, scope: !1601)
!1611 = !DILocation(line: 116, column: 40, scope: !1601)
!1612 = !DILocation(line: 116, column: 31, scope: !1601)
!1613 = !DILocation(line: 118, column: 9, scope: !1601)
!1614 = !DILocation(line: 119, column: 3, scope: !1601)
!1615 = distinct !DISubprogram(name: "get_quoting_style", scope: !454, file: !454, line: 124, type: !1616, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1620)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!480, !1618}
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!1620 = !{!1621}
!1621 = !DILocalVariable(name: "o", arg: 1, scope: !1615, file: !454, line: 124, type: !1618)
!1622 = !DILocation(line: 0, scope: !1615)
!1623 = !DILocation(line: 126, column: 11, scope: !1615)
!1624 = !DILocation(line: 126, column: 46, scope: !1615)
!1625 = !{!1626, !777, i64 0}
!1626 = !{!"quoting_options", !777, i64 0, !814, i64 4, !777, i64 8, !776, i64 40, !776, i64 48}
!1627 = !DILocation(line: 126, column: 3, scope: !1615)
!1628 = distinct !DISubprogram(name: "set_quoting_style", scope: !454, file: !454, line: 132, type: !1629, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1631)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{null, !1604, !480}
!1631 = !{!1632, !1633}
!1632 = !DILocalVariable(name: "o", arg: 1, scope: !1628, file: !454, line: 132, type: !1604)
!1633 = !DILocalVariable(name: "s", arg: 2, scope: !1628, file: !454, line: 132, type: !480)
!1634 = !DILocation(line: 0, scope: !1628)
!1635 = !DILocation(line: 134, column: 4, scope: !1628)
!1636 = !DILocation(line: 134, column: 45, scope: !1628)
!1637 = !DILocation(line: 135, column: 1, scope: !1628)
!1638 = distinct !DISubprogram(name: "set_char_quoting", scope: !454, file: !454, line: 143, type: !1639, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1641)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!150, !1604, !4, !150}
!1641 = !{!1642, !1643, !1644, !1645, !1646, !1648, !1649}
!1642 = !DILocalVariable(name: "o", arg: 1, scope: !1638, file: !454, line: 143, type: !1604)
!1643 = !DILocalVariable(name: "c", arg: 2, scope: !1638, file: !454, line: 143, type: !4)
!1644 = !DILocalVariable(name: "i", arg: 3, scope: !1638, file: !454, line: 143, type: !150)
!1645 = !DILocalVariable(name: "uc", scope: !1638, file: !454, line: 145, type: !155)
!1646 = !DILocalVariable(name: "p", scope: !1638, file: !454, line: 146, type: !1647)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!1648 = !DILocalVariable(name: "shift", scope: !1638, file: !454, line: 148, type: !150)
!1649 = !DILocalVariable(name: "r", scope: !1638, file: !454, line: 149, type: !129)
!1650 = !DILocation(line: 0, scope: !1638)
!1651 = !DILocation(line: 147, column: 6, scope: !1638)
!1652 = !DILocation(line: 147, column: 41, scope: !1638)
!1653 = !DILocation(line: 147, column: 62, scope: !1638)
!1654 = !DILocation(line: 147, column: 57, scope: !1638)
!1655 = !DILocation(line: 148, column: 15, scope: !1638)
!1656 = !DILocation(line: 149, column: 21, scope: !1638)
!1657 = !DILocation(line: 149, column: 24, scope: !1638)
!1658 = !DILocation(line: 149, column: 34, scope: !1638)
!1659 = !DILocation(line: 150, column: 19, scope: !1638)
!1660 = !DILocation(line: 150, column: 24, scope: !1638)
!1661 = !DILocation(line: 150, column: 6, scope: !1638)
!1662 = !DILocation(line: 151, column: 3, scope: !1638)
!1663 = distinct !DISubprogram(name: "set_quoting_flags", scope: !454, file: !454, line: 159, type: !1664, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1666)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!150, !1604, !150}
!1666 = !{!1667, !1668, !1669}
!1667 = !DILocalVariable(name: "o", arg: 1, scope: !1663, file: !454, line: 159, type: !1604)
!1668 = !DILocalVariable(name: "i", arg: 2, scope: !1663, file: !454, line: 159, type: !150)
!1669 = !DILocalVariable(name: "r", scope: !1663, file: !454, line: 163, type: !150)
!1670 = !DILocation(line: 0, scope: !1663)
!1671 = !DILocation(line: 161, column: 8, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1663, file: !454, line: 161, column: 7)
!1673 = !DILocation(line: 161, column: 7, scope: !1663)
!1674 = !DILocation(line: 163, column: 14, scope: !1663)
!1675 = !{!1626, !814, i64 4}
!1676 = !DILocation(line: 164, column: 12, scope: !1663)
!1677 = !DILocation(line: 165, column: 3, scope: !1663)
!1678 = distinct !DISubprogram(name: "set_custom_quoting", scope: !454, file: !454, line: 169, type: !1679, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1681)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{null, !1604, !125, !125}
!1681 = !{!1682, !1683, !1684}
!1682 = !DILocalVariable(name: "o", arg: 1, scope: !1678, file: !454, line: 169, type: !1604)
!1683 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1678, file: !454, line: 170, type: !125)
!1684 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1678, file: !454, line: 170, type: !125)
!1685 = !DILocation(line: 0, scope: !1678)
!1686 = !DILocation(line: 172, column: 8, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1678, file: !454, line: 172, column: 7)
!1688 = !DILocation(line: 172, column: 7, scope: !1678)
!1689 = !DILocation(line: 174, column: 12, scope: !1678)
!1690 = !DILocation(line: 175, column: 8, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1678, file: !454, line: 175, column: 7)
!1692 = !DILocation(line: 175, column: 19, scope: !1691)
!1693 = !DILocation(line: 176, column: 5, scope: !1691)
!1694 = !DILocation(line: 177, column: 6, scope: !1678)
!1695 = !DILocation(line: 177, column: 17, scope: !1678)
!1696 = !{!1626, !776, i64 40}
!1697 = !DILocation(line: 178, column: 6, scope: !1678)
!1698 = !DILocation(line: 178, column: 18, scope: !1678)
!1699 = !{!1626, !776, i64 48}
!1700 = !DILocation(line: 179, column: 1, scope: !1678)
!1701 = !DISubprogram(name: "abort", scope: !961, file: !961, line: 598, type: !409, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !796)
!1702 = distinct !DISubprogram(name: "quotearg_buffer", scope: !454, file: !454, line: 774, type: !1703, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1705)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!152, !148, !152, !125, !152, !1618}
!1705 = !{!1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713}
!1706 = !DILocalVariable(name: "buffer", arg: 1, scope: !1702, file: !454, line: 774, type: !148)
!1707 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1702, file: !454, line: 774, type: !152)
!1708 = !DILocalVariable(name: "arg", arg: 3, scope: !1702, file: !454, line: 775, type: !125)
!1709 = !DILocalVariable(name: "argsize", arg: 4, scope: !1702, file: !454, line: 775, type: !152)
!1710 = !DILocalVariable(name: "o", arg: 5, scope: !1702, file: !454, line: 776, type: !1618)
!1711 = !DILocalVariable(name: "p", scope: !1702, file: !454, line: 778, type: !1618)
!1712 = !DILocalVariable(name: "saved_errno", scope: !1702, file: !454, line: 779, type: !150)
!1713 = !DILocalVariable(name: "r", scope: !1702, file: !454, line: 780, type: !152)
!1714 = !DILocation(line: 0, scope: !1702)
!1715 = !DILocation(line: 778, column: 37, scope: !1702)
!1716 = !DILocation(line: 779, column: 21, scope: !1702)
!1717 = !DILocation(line: 781, column: 43, scope: !1702)
!1718 = !DILocation(line: 781, column: 53, scope: !1702)
!1719 = !DILocation(line: 781, column: 63, scope: !1702)
!1720 = !DILocation(line: 782, column: 43, scope: !1702)
!1721 = !DILocation(line: 782, column: 58, scope: !1702)
!1722 = !DILocation(line: 780, column: 14, scope: !1702)
!1723 = !DILocation(line: 783, column: 9, scope: !1702)
!1724 = !DILocation(line: 784, column: 3, scope: !1702)
!1725 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !454, file: !454, line: 251, type: !1726, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1730)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!152, !148, !152, !125, !152, !480, !150, !1728, !125, !125}
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!1730 = !{!1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1755, !1757, !1760, !1761, !1762, !1763, !1766, !1767, !1770, !1774, !1775, !1783, !1786, !1787, !1789, !1790, !1791, !1792}
!1731 = !DILocalVariable(name: "buffer", arg: 1, scope: !1725, file: !454, line: 251, type: !148)
!1732 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1725, file: !454, line: 251, type: !152)
!1733 = !DILocalVariable(name: "arg", arg: 3, scope: !1725, file: !454, line: 252, type: !125)
!1734 = !DILocalVariable(name: "argsize", arg: 4, scope: !1725, file: !454, line: 252, type: !152)
!1735 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1725, file: !454, line: 253, type: !480)
!1736 = !DILocalVariable(name: "flags", arg: 6, scope: !1725, file: !454, line: 253, type: !150)
!1737 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1725, file: !454, line: 254, type: !1728)
!1738 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1725, file: !454, line: 255, type: !125)
!1739 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1725, file: !454, line: 256, type: !125)
!1740 = !DILocalVariable(name: "unibyte_locale", scope: !1725, file: !454, line: 258, type: !266)
!1741 = !DILocalVariable(name: "len", scope: !1725, file: !454, line: 260, type: !152)
!1742 = !DILocalVariable(name: "orig_buffersize", scope: !1725, file: !454, line: 261, type: !152)
!1743 = !DILocalVariable(name: "quote_string", scope: !1725, file: !454, line: 262, type: !125)
!1744 = !DILocalVariable(name: "quote_string_len", scope: !1725, file: !454, line: 263, type: !152)
!1745 = !DILocalVariable(name: "backslash_escapes", scope: !1725, file: !454, line: 264, type: !266)
!1746 = !DILocalVariable(name: "elide_outer_quotes", scope: !1725, file: !454, line: 265, type: !266)
!1747 = !DILocalVariable(name: "encountered_single_quote", scope: !1725, file: !454, line: 266, type: !266)
!1748 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1725, file: !454, line: 267, type: !266)
!1749 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1725, file: !454, line: 309, type: !266)
!1750 = !DILocalVariable(name: "lq", scope: !1751, file: !454, line: 361, type: !125)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !454, line: 361, column: 11)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !454, line: 360, column: 13)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !454, line: 333, column: 7)
!1754 = distinct !DILexicalBlock(scope: !1725, file: !454, line: 312, column: 5)
!1755 = !DILocalVariable(name: "i", scope: !1756, file: !454, line: 395, type: !152)
!1756 = distinct !DILexicalBlock(scope: !1725, file: !454, line: 395, column: 3)
!1757 = !DILocalVariable(name: "is_right_quote", scope: !1758, file: !454, line: 397, type: !266)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !454, line: 396, column: 5)
!1759 = distinct !DILexicalBlock(scope: !1756, file: !454, line: 395, column: 3)
!1760 = !DILocalVariable(name: "escaping", scope: !1758, file: !454, line: 398, type: !266)
!1761 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1758, file: !454, line: 399, type: !266)
!1762 = !DILocalVariable(name: "c", scope: !1758, file: !454, line: 417, type: !155)
!1763 = !DILocalVariable(name: "m", scope: !1764, file: !454, line: 598, type: !152)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !454, line: 596, column: 11)
!1765 = distinct !DILexicalBlock(scope: !1758, file: !454, line: 419, column: 9)
!1766 = !DILocalVariable(name: "printable", scope: !1764, file: !454, line: 600, type: !266)
!1767 = !DILocalVariable(name: "mbs", scope: !1768, file: !454, line: 609, type: !541)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !454, line: 608, column: 15)
!1769 = distinct !DILexicalBlock(scope: !1764, file: !454, line: 602, column: 17)
!1770 = !DILocalVariable(name: "w", scope: !1771, file: !454, line: 618, type: !434)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !454, line: 617, column: 19)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !454, line: 616, column: 17)
!1773 = distinct !DILexicalBlock(scope: !1768, file: !454, line: 616, column: 17)
!1774 = !DILocalVariable(name: "bytes", scope: !1771, file: !454, line: 619, type: !152)
!1775 = !DILocalVariable(name: "j", scope: !1776, file: !454, line: 648, type: !152)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !454, line: 648, column: 29)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !454, line: 647, column: 27)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !454, line: 645, column: 29)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !454, line: 636, column: 23)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !454, line: 628, column: 30)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !454, line: 623, column: 30)
!1782 = distinct !DILexicalBlock(scope: !1771, file: !454, line: 621, column: 25)
!1783 = !DILocalVariable(name: "ilim", scope: !1784, file: !454, line: 674, type: !152)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !454, line: 671, column: 15)
!1785 = distinct !DILexicalBlock(scope: !1764, file: !454, line: 670, column: 17)
!1786 = !DILabel(scope: !1725, name: "process_input", file: !454, line: 308)
!1787 = !DILabel(scope: !1788, name: "c_and_shell_escape", file: !454, line: 502)
!1788 = distinct !DILexicalBlock(scope: !1765, file: !454, line: 478, column: 9)
!1789 = !DILabel(scope: !1788, name: "c_escape", file: !454, line: 507)
!1790 = !DILabel(scope: !1758, name: "store_escape", file: !454, line: 709)
!1791 = !DILabel(scope: !1758, name: "store_c", file: !454, line: 712)
!1792 = !DILabel(scope: !1725, name: "force_outer_quoting_style", file: !454, line: 753)
!1793 = !DILocation(line: 0, scope: !1725)
!1794 = !DILocation(line: 258, column: 25, scope: !1725)
!1795 = !DILocation(line: 258, column: 36, scope: !1725)
!1796 = !DILocation(line: 265, column: 8, scope: !1725)
!1797 = !DILocation(line: 267, column: 3, scope: !1725)
!1798 = !DILocation(line: 261, column: 10, scope: !1725)
!1799 = !DILocation(line: 262, column: 15, scope: !1725)
!1800 = !DILocation(line: 263, column: 10, scope: !1725)
!1801 = !DILocation(line: 264, column: 8, scope: !1725)
!1802 = !DILocation(line: 266, column: 8, scope: !1725)
!1803 = !DILocation(line: 267, column: 8, scope: !1725)
!1804 = !DILocation(line: 308, column: 2, scope: !1725)
!1805 = !DILocation(line: 311, column: 3, scope: !1725)
!1806 = !DILocation(line: 318, column: 11, scope: !1754)
!1807 = !DILocation(line: 318, column: 12, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1754, file: !454, line: 318, column: 11)
!1809 = !DILocation(line: 319, column: 9, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !454, line: 319, column: 9)
!1811 = distinct !DILexicalBlock(scope: !1808, file: !454, line: 319, column: 9)
!1812 = !DILocation(line: 319, column: 9, scope: !1811)
!1813 = !DILocation(line: 0, scope: !532, inlinedAt: !1814)
!1814 = distinct !DILocation(line: 357, column: 26, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !454, line: 335, column: 11)
!1816 = distinct !DILexicalBlock(scope: !1753, file: !454, line: 334, column: 13)
!1817 = !DILocation(line: 199, column: 29, scope: !532, inlinedAt: !1814)
!1818 = !DILocation(line: 201, column: 19, scope: !1819, inlinedAt: !1814)
!1819 = distinct !DILexicalBlock(scope: !532, file: !454, line: 201, column: 7)
!1820 = !DILocation(line: 201, column: 7, scope: !532, inlinedAt: !1814)
!1821 = !DILocation(line: 229, column: 3, scope: !532, inlinedAt: !1814)
!1822 = !DILocation(line: 230, column: 3, scope: !532, inlinedAt: !1814)
!1823 = !DILocation(line: 230, column: 13, scope: !532, inlinedAt: !1814)
!1824 = !DILocalVariable(name: "ps", arg: 1, scope: !1825, file: !1572, line: 1135, type: !1828)
!1825 = distinct !DISubprogram(name: "mbszero", scope: !1572, file: !1572, line: 1135, type: !1826, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1829)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{null, !1828}
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!1829 = !{!1824}
!1830 = !DILocation(line: 0, scope: !1825, inlinedAt: !1831)
!1831 = distinct !DILocation(line: 230, column: 18, scope: !532, inlinedAt: !1814)
!1832 = !DILocalVariable(name: "__dest", arg: 1, scope: !1833, file: !1581, line: 57, type: !149)
!1833 = distinct !DISubprogram(name: "memset", scope: !1581, file: !1581, line: 57, type: !1582, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1834)
!1834 = !{!1832, !1835, !1836}
!1835 = !DILocalVariable(name: "__ch", arg: 2, scope: !1833, file: !1581, line: 57, type: !150)
!1836 = !DILocalVariable(name: "__len", arg: 3, scope: !1833, file: !1581, line: 57, type: !152)
!1837 = !DILocation(line: 0, scope: !1833, inlinedAt: !1838)
!1838 = distinct !DILocation(line: 1137, column: 3, scope: !1825, inlinedAt: !1831)
!1839 = !DILocation(line: 59, column: 10, scope: !1833, inlinedAt: !1838)
!1840 = !DILocation(line: 231, column: 7, scope: !1841, inlinedAt: !1814)
!1841 = distinct !DILexicalBlock(scope: !532, file: !454, line: 231, column: 7)
!1842 = !DILocation(line: 231, column: 40, scope: !1841, inlinedAt: !1814)
!1843 = !DILocation(line: 231, column: 45, scope: !1841, inlinedAt: !1814)
!1844 = !DILocation(line: 235, column: 1, scope: !532, inlinedAt: !1814)
!1845 = !DILocation(line: 0, scope: !532, inlinedAt: !1846)
!1846 = distinct !DILocation(line: 358, column: 27, scope: !1815)
!1847 = !DILocation(line: 199, column: 29, scope: !532, inlinedAt: !1846)
!1848 = !DILocation(line: 201, column: 19, scope: !1819, inlinedAt: !1846)
!1849 = !DILocation(line: 201, column: 7, scope: !532, inlinedAt: !1846)
!1850 = !DILocation(line: 229, column: 3, scope: !532, inlinedAt: !1846)
!1851 = !DILocation(line: 230, column: 3, scope: !532, inlinedAt: !1846)
!1852 = !DILocation(line: 230, column: 13, scope: !532, inlinedAt: !1846)
!1853 = !DILocation(line: 0, scope: !1825, inlinedAt: !1854)
!1854 = distinct !DILocation(line: 230, column: 18, scope: !532, inlinedAt: !1846)
!1855 = !DILocation(line: 0, scope: !1833, inlinedAt: !1856)
!1856 = distinct !DILocation(line: 1137, column: 3, scope: !1825, inlinedAt: !1854)
!1857 = !DILocation(line: 59, column: 10, scope: !1833, inlinedAt: !1856)
!1858 = !DILocation(line: 231, column: 7, scope: !1841, inlinedAt: !1846)
!1859 = !DILocation(line: 231, column: 40, scope: !1841, inlinedAt: !1846)
!1860 = !DILocation(line: 231, column: 45, scope: !1841, inlinedAt: !1846)
!1861 = !DILocation(line: 235, column: 1, scope: !532, inlinedAt: !1846)
!1862 = !DILocation(line: 360, column: 14, scope: !1752)
!1863 = !DILocation(line: 360, column: 13, scope: !1753)
!1864 = !DILocation(line: 0, scope: !1751)
!1865 = !DILocation(line: 361, column: 45, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1751, file: !454, line: 361, column: 11)
!1867 = !DILocation(line: 361, column: 11, scope: !1751)
!1868 = !DILocation(line: 362, column: 13, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !454, line: 362, column: 13)
!1870 = distinct !DILexicalBlock(scope: !1866, file: !454, line: 362, column: 13)
!1871 = !DILocation(line: 362, column: 13, scope: !1870)
!1872 = !DILocation(line: 361, column: 52, scope: !1866)
!1873 = distinct !{!1873, !1867, !1874, !860}
!1874 = !DILocation(line: 362, column: 13, scope: !1751)
!1875 = !DILocation(line: 260, column: 10, scope: !1725)
!1876 = !DILocation(line: 365, column: 28, scope: !1753)
!1877 = !DILocation(line: 367, column: 7, scope: !1754)
!1878 = !DILocation(line: 370, column: 7, scope: !1754)
!1879 = !DILocation(line: 373, column: 7, scope: !1754)
!1880 = !DILocation(line: 376, column: 12, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1754, file: !454, line: 376, column: 11)
!1882 = !DILocation(line: 376, column: 11, scope: !1754)
!1883 = !DILocation(line: 381, column: 12, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1754, file: !454, line: 381, column: 11)
!1885 = !DILocation(line: 381, column: 11, scope: !1754)
!1886 = !DILocation(line: 382, column: 9, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !454, line: 382, column: 9)
!1888 = distinct !DILexicalBlock(scope: !1884, file: !454, line: 382, column: 9)
!1889 = !DILocation(line: 382, column: 9, scope: !1888)
!1890 = !DILocation(line: 389, column: 7, scope: !1754)
!1891 = !DILocation(line: 392, column: 7, scope: !1754)
!1892 = !DILocation(line: 0, scope: !1756)
!1893 = !DILocation(line: 395, column: 8, scope: !1756)
!1894 = !DILocation(line: 309, column: 8, scope: !1725)
!1895 = !DILocation(line: 395, scope: !1756)
!1896 = !DILocation(line: 395, column: 34, scope: !1759)
!1897 = !DILocation(line: 395, column: 26, scope: !1759)
!1898 = !DILocation(line: 395, column: 48, scope: !1759)
!1899 = !DILocation(line: 395, column: 55, scope: !1759)
!1900 = !DILocation(line: 395, column: 3, scope: !1756)
!1901 = !DILocation(line: 395, column: 67, scope: !1759)
!1902 = !DILocation(line: 0, scope: !1758)
!1903 = !DILocation(line: 402, column: 11, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1758, file: !454, line: 401, column: 11)
!1905 = !DILocation(line: 404, column: 17, scope: !1904)
!1906 = !DILocation(line: 405, column: 39, scope: !1904)
!1907 = !DILocation(line: 409, column: 32, scope: !1904)
!1908 = !DILocation(line: 405, column: 19, scope: !1904)
!1909 = !DILocation(line: 405, column: 15, scope: !1904)
!1910 = !DILocation(line: 410, column: 11, scope: !1904)
!1911 = !DILocation(line: 410, column: 25, scope: !1904)
!1912 = !DILocalVariable(name: "__s1", arg: 1, scope: !1913, file: !826, line: 974, type: !993)
!1913 = distinct !DISubprogram(name: "memeq", scope: !826, file: !826, line: 974, type: !1542, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1914)
!1914 = !{!1912, !1915, !1916}
!1915 = !DILocalVariable(name: "__s2", arg: 2, scope: !1913, file: !826, line: 974, type: !993)
!1916 = !DILocalVariable(name: "__n", arg: 3, scope: !1913, file: !826, line: 974, type: !152)
!1917 = !DILocation(line: 0, scope: !1913, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 410, column: 14, scope: !1904)
!1919 = !DILocation(line: 976, column: 11, scope: !1913, inlinedAt: !1918)
!1920 = !DILocation(line: 976, column: 10, scope: !1913, inlinedAt: !1918)
!1921 = !DILocation(line: 401, column: 11, scope: !1758)
!1922 = !DILocation(line: 417, column: 25, scope: !1758)
!1923 = !DILocation(line: 418, column: 7, scope: !1758)
!1924 = !DILocation(line: 421, column: 15, scope: !1765)
!1925 = !DILocation(line: 423, column: 15, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !454, line: 423, column: 15)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !454, line: 422, column: 13)
!1928 = distinct !DILexicalBlock(scope: !1765, file: !454, line: 421, column: 15)
!1929 = !DILocation(line: 423, column: 15, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1926, file: !454, line: 423, column: 15)
!1931 = !DILocation(line: 423, column: 15, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !454, line: 423, column: 15)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !454, line: 423, column: 15)
!1934 = distinct !DILexicalBlock(scope: !1930, file: !454, line: 423, column: 15)
!1935 = !DILocation(line: 423, column: 15, scope: !1933)
!1936 = !DILocation(line: 423, column: 15, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !454, line: 423, column: 15)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !454, line: 423, column: 15)
!1939 = !DILocation(line: 423, column: 15, scope: !1938)
!1940 = !DILocation(line: 423, column: 15, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !454, line: 423, column: 15)
!1942 = distinct !DILexicalBlock(scope: !1934, file: !454, line: 423, column: 15)
!1943 = !DILocation(line: 423, column: 15, scope: !1942)
!1944 = !DILocation(line: 423, column: 15, scope: !1934)
!1945 = !DILocation(line: 423, column: 15, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !454, line: 423, column: 15)
!1947 = distinct !DILexicalBlock(scope: !1926, file: !454, line: 423, column: 15)
!1948 = !DILocation(line: 423, column: 15, scope: !1947)
!1949 = !DILocation(line: 431, column: 19, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1927, file: !454, line: 430, column: 19)
!1951 = !DILocation(line: 431, column: 24, scope: !1950)
!1952 = !DILocation(line: 431, column: 28, scope: !1950)
!1953 = !DILocation(line: 431, column: 38, scope: !1950)
!1954 = !DILocation(line: 431, column: 48, scope: !1950)
!1955 = !DILocation(line: 431, column: 59, scope: !1950)
!1956 = !DILocation(line: 433, column: 19, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !454, line: 433, column: 19)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !454, line: 433, column: 19)
!1959 = distinct !DILexicalBlock(scope: !1950, file: !454, line: 432, column: 17)
!1960 = !DILocation(line: 433, column: 19, scope: !1958)
!1961 = !DILocation(line: 434, column: 19, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !454, line: 434, column: 19)
!1963 = distinct !DILexicalBlock(scope: !1959, file: !454, line: 434, column: 19)
!1964 = !DILocation(line: 434, column: 19, scope: !1963)
!1965 = !DILocation(line: 435, column: 17, scope: !1959)
!1966 = !DILocation(line: 442, column: 20, scope: !1928)
!1967 = !DILocation(line: 447, column: 11, scope: !1765)
!1968 = !DILocation(line: 450, column: 19, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1765, file: !454, line: 448, column: 13)
!1970 = !DILocation(line: 456, column: 19, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1969, file: !454, line: 455, column: 19)
!1972 = !DILocation(line: 456, column: 24, scope: !1971)
!1973 = !DILocation(line: 456, column: 28, scope: !1971)
!1974 = !DILocation(line: 456, column: 38, scope: !1971)
!1975 = !DILocation(line: 456, column: 47, scope: !1971)
!1976 = !DILocation(line: 456, column: 41, scope: !1971)
!1977 = !DILocation(line: 456, column: 52, scope: !1971)
!1978 = !DILocation(line: 455, column: 19, scope: !1969)
!1979 = !DILocation(line: 457, column: 25, scope: !1971)
!1980 = !DILocation(line: 457, column: 17, scope: !1971)
!1981 = !DILocation(line: 464, column: 25, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1971, file: !454, line: 458, column: 19)
!1983 = !DILocation(line: 468, column: 21, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !454, line: 468, column: 21)
!1985 = distinct !DILexicalBlock(scope: !1982, file: !454, line: 468, column: 21)
!1986 = !DILocation(line: 468, column: 21, scope: !1985)
!1987 = !DILocation(line: 469, column: 21, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !454, line: 469, column: 21)
!1989 = distinct !DILexicalBlock(scope: !1982, file: !454, line: 469, column: 21)
!1990 = !DILocation(line: 469, column: 21, scope: !1989)
!1991 = !DILocation(line: 470, column: 21, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !454, line: 470, column: 21)
!1993 = distinct !DILexicalBlock(scope: !1982, file: !454, line: 470, column: 21)
!1994 = !DILocation(line: 470, column: 21, scope: !1993)
!1995 = !DILocation(line: 471, column: 21, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !454, line: 471, column: 21)
!1997 = distinct !DILexicalBlock(scope: !1982, file: !454, line: 471, column: 21)
!1998 = !DILocation(line: 471, column: 21, scope: !1997)
!1999 = !DILocation(line: 472, column: 21, scope: !1982)
!2000 = !DILocation(line: 482, column: 33, scope: !1788)
!2001 = !DILocation(line: 483, column: 33, scope: !1788)
!2002 = !DILocation(line: 485, column: 33, scope: !1788)
!2003 = !DILocation(line: 486, column: 33, scope: !1788)
!2004 = !DILocation(line: 487, column: 33, scope: !1788)
!2005 = !DILocation(line: 490, column: 17, scope: !1788)
!2006 = !DILocation(line: 492, column: 21, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !454, line: 491, column: 15)
!2008 = distinct !DILexicalBlock(scope: !1788, file: !454, line: 490, column: 17)
!2009 = !DILocation(line: 499, column: 35, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1788, file: !454, line: 499, column: 17)
!2011 = !DILocation(line: 499, column: 57, scope: !2010)
!2012 = !DILocation(line: 0, scope: !1788)
!2013 = !DILocation(line: 502, column: 11, scope: !1788)
!2014 = !DILocation(line: 504, column: 17, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1788, file: !454, line: 503, column: 17)
!2016 = !DILocation(line: 507, column: 11, scope: !1788)
!2017 = !DILocation(line: 508, column: 17, scope: !1788)
!2018 = !DILocation(line: 517, column: 15, scope: !1765)
!2019 = !DILocation(line: 517, column: 40, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1765, file: !454, line: 517, column: 15)
!2021 = !DILocation(line: 517, column: 47, scope: !2020)
!2022 = !DILocation(line: 517, column: 18, scope: !2020)
!2023 = !DILocation(line: 521, column: 17, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1765, file: !454, line: 521, column: 15)
!2025 = !DILocation(line: 521, column: 15, scope: !1765)
!2026 = !DILocation(line: 525, column: 11, scope: !1765)
!2027 = !DILocation(line: 537, column: 15, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1765, file: !454, line: 536, column: 15)
!2029 = !DILocation(line: 544, column: 15, scope: !1765)
!2030 = !DILocation(line: 546, column: 19, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !454, line: 545, column: 13)
!2032 = distinct !DILexicalBlock(scope: !1765, file: !454, line: 544, column: 15)
!2033 = !DILocation(line: 549, column: 19, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2031, file: !454, line: 549, column: 19)
!2035 = !DILocation(line: 549, column: 30, scope: !2034)
!2036 = !DILocation(line: 558, column: 15, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !454, line: 558, column: 15)
!2038 = distinct !DILexicalBlock(scope: !2031, file: !454, line: 558, column: 15)
!2039 = !DILocation(line: 558, column: 15, scope: !2038)
!2040 = !DILocation(line: 559, column: 15, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !454, line: 559, column: 15)
!2042 = distinct !DILexicalBlock(scope: !2031, file: !454, line: 559, column: 15)
!2043 = !DILocation(line: 559, column: 15, scope: !2042)
!2044 = !DILocation(line: 560, column: 15, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !454, line: 560, column: 15)
!2046 = distinct !DILexicalBlock(scope: !2031, file: !454, line: 560, column: 15)
!2047 = !DILocation(line: 560, column: 15, scope: !2046)
!2048 = !DILocation(line: 562, column: 13, scope: !2031)
!2049 = !DILocation(line: 602, column: 17, scope: !1764)
!2050 = !DILocation(line: 0, scope: !1764)
!2051 = !DILocation(line: 605, column: 29, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !1769, file: !454, line: 603, column: 15)
!2053 = !DILocation(line: 605, column: 27, scope: !2052)
!2054 = !DILocation(line: 668, column: 40, scope: !1764)
!2055 = !DILocation(line: 670, column: 23, scope: !1785)
!2056 = !DILocation(line: 609, column: 17, scope: !1768)
!2057 = !DILocation(line: 609, column: 27, scope: !1768)
!2058 = !DILocation(line: 0, scope: !1825, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 609, column: 32, scope: !1768)
!2060 = !DILocation(line: 0, scope: !1833, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 1137, column: 3, scope: !1825, inlinedAt: !2059)
!2062 = !DILocation(line: 59, column: 10, scope: !1833, inlinedAt: !2061)
!2063 = !DILocation(line: 613, column: 29, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !1768, file: !454, line: 613, column: 21)
!2065 = !DILocation(line: 613, column: 21, scope: !1768)
!2066 = !DILocation(line: 614, column: 29, scope: !2064)
!2067 = !DILocation(line: 614, column: 19, scope: !2064)
!2068 = !DILocation(line: 618, column: 21, scope: !1771)
!2069 = !DILocation(line: 620, column: 54, scope: !1771)
!2070 = !DILocation(line: 0, scope: !1771)
!2071 = !DILocation(line: 619, column: 36, scope: !1771)
!2072 = !DILocation(line: 621, column: 25, scope: !1771)
!2073 = !DILocation(line: 631, column: 38, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !1780, file: !454, line: 629, column: 23)
!2075 = !DILocation(line: 631, column: 48, scope: !2074)
!2076 = !DILocation(line: 665, column: 19, scope: !1772)
!2077 = !DILocation(line: 666, column: 15, scope: !1769)
!2078 = !DILocation(line: 626, column: 25, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !1781, file: !454, line: 624, column: 23)
!2080 = !DILocation(line: 631, column: 51, scope: !2074)
!2081 = !DILocation(line: 631, column: 25, scope: !2074)
!2082 = !DILocation(line: 632, column: 28, scope: !2074)
!2083 = !DILocation(line: 631, column: 34, scope: !2074)
!2084 = distinct !{!2084, !2081, !2082, !860}
!2085 = !DILocation(line: 646, column: 29, scope: !1778)
!2086 = !DILocation(line: 0, scope: !1776)
!2087 = !DILocation(line: 649, column: 49, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !1776, file: !454, line: 648, column: 29)
!2089 = !DILocation(line: 649, column: 39, scope: !2088)
!2090 = !DILocation(line: 649, column: 31, scope: !2088)
!2091 = !DILocation(line: 648, column: 60, scope: !2088)
!2092 = !DILocation(line: 648, column: 50, scope: !2088)
!2093 = !DILocation(line: 648, column: 29, scope: !1776)
!2094 = distinct !{!2094, !2093, !2095, !860}
!2095 = !DILocation(line: 654, column: 33, scope: !1776)
!2096 = !DILocation(line: 657, column: 43, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !1779, file: !454, line: 657, column: 29)
!2098 = !DILocalVariable(name: "wc", arg: 1, scope: !2099, file: !2100, line: 865, type: !2103)
!2099 = distinct !DISubprogram(name: "c32isprint", scope: !2100, file: !2100, line: 865, type: !2101, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2105)
!2100 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!150, !2103}
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2104, line: 20, baseType: !129)
!2104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2105 = !{!2098}
!2106 = !DILocation(line: 0, scope: !2099, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 657, column: 31, scope: !2097)
!2108 = !DILocation(line: 871, column: 10, scope: !2099, inlinedAt: !2107)
!2109 = !DILocation(line: 657, column: 31, scope: !2097)
!2110 = !DILocation(line: 657, column: 29, scope: !1779)
!2111 = !DILocation(line: 664, column: 23, scope: !1771)
!2112 = !DILocation(line: 670, column: 19, scope: !1785)
!2113 = !DILocation(line: 670, column: 45, scope: !1785)
!2114 = !DILocation(line: 674, column: 33, scope: !1784)
!2115 = !DILocation(line: 0, scope: !1784)
!2116 = !DILocation(line: 676, column: 17, scope: !1784)
!2117 = !DILocation(line: 398, column: 12, scope: !1758)
!2118 = !DILocation(line: 678, column: 43, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !454, line: 678, column: 25)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !454, line: 677, column: 19)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !454, line: 676, column: 17)
!2122 = distinct !DILexicalBlock(scope: !1784, file: !454, line: 676, column: 17)
!2123 = !DILocation(line: 680, column: 25, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !454, line: 680, column: 25)
!2125 = distinct !DILexicalBlock(scope: !2119, file: !454, line: 679, column: 23)
!2126 = !DILocation(line: 680, column: 25, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2124, file: !454, line: 680, column: 25)
!2128 = !DILocation(line: 680, column: 25, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !454, line: 680, column: 25)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !454, line: 680, column: 25)
!2131 = distinct !DILexicalBlock(scope: !2127, file: !454, line: 680, column: 25)
!2132 = !DILocation(line: 680, column: 25, scope: !2130)
!2133 = !DILocation(line: 680, column: 25, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !454, line: 680, column: 25)
!2135 = distinct !DILexicalBlock(scope: !2131, file: !454, line: 680, column: 25)
!2136 = !DILocation(line: 680, column: 25, scope: !2135)
!2137 = !DILocation(line: 680, column: 25, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !454, line: 680, column: 25)
!2139 = distinct !DILexicalBlock(scope: !2131, file: !454, line: 680, column: 25)
!2140 = !DILocation(line: 680, column: 25, scope: !2139)
!2141 = !DILocation(line: 680, column: 25, scope: !2131)
!2142 = !DILocation(line: 680, column: 25, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !454, line: 680, column: 25)
!2144 = distinct !DILexicalBlock(scope: !2124, file: !454, line: 680, column: 25)
!2145 = !DILocation(line: 680, column: 25, scope: !2144)
!2146 = !DILocation(line: 681, column: 25, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !454, line: 681, column: 25)
!2148 = distinct !DILexicalBlock(scope: !2125, file: !454, line: 681, column: 25)
!2149 = !DILocation(line: 681, column: 25, scope: !2148)
!2150 = !DILocation(line: 682, column: 25, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !454, line: 682, column: 25)
!2152 = distinct !DILexicalBlock(scope: !2125, file: !454, line: 682, column: 25)
!2153 = !DILocation(line: 682, column: 25, scope: !2152)
!2154 = !DILocation(line: 683, column: 38, scope: !2125)
!2155 = !DILocation(line: 683, column: 33, scope: !2125)
!2156 = !DILocation(line: 684, column: 23, scope: !2125)
!2157 = !DILocation(line: 685, column: 30, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2119, file: !454, line: 685, column: 30)
!2159 = !DILocation(line: 685, column: 30, scope: !2119)
!2160 = !DILocation(line: 687, column: 25, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !454, line: 687, column: 25)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !454, line: 687, column: 25)
!2163 = distinct !DILexicalBlock(scope: !2158, file: !454, line: 686, column: 23)
!2164 = !DILocation(line: 687, column: 25, scope: !2162)
!2165 = !DILocation(line: 689, column: 23, scope: !2163)
!2166 = !DILocation(line: 690, column: 35, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2120, file: !454, line: 690, column: 25)
!2168 = !DILocation(line: 690, column: 30, scope: !2167)
!2169 = !DILocation(line: 690, column: 25, scope: !2120)
!2170 = !DILocation(line: 692, column: 21, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !454, line: 692, column: 21)
!2172 = distinct !DILexicalBlock(scope: !2120, file: !454, line: 692, column: 21)
!2173 = !DILocation(line: 692, column: 21, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !454, line: 692, column: 21)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !454, line: 692, column: 21)
!2176 = distinct !DILexicalBlock(scope: !2171, file: !454, line: 692, column: 21)
!2177 = !DILocation(line: 692, column: 21, scope: !2175)
!2178 = !DILocation(line: 692, column: 21, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !454, line: 692, column: 21)
!2180 = distinct !DILexicalBlock(scope: !2176, file: !454, line: 692, column: 21)
!2181 = !DILocation(line: 692, column: 21, scope: !2180)
!2182 = !DILocation(line: 692, column: 21, scope: !2176)
!2183 = !DILocation(line: 0, scope: !2120)
!2184 = !DILocation(line: 693, column: 21, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !454, line: 693, column: 21)
!2186 = distinct !DILexicalBlock(scope: !2120, file: !454, line: 693, column: 21)
!2187 = !DILocation(line: 693, column: 21, scope: !2186)
!2188 = !DILocation(line: 694, column: 25, scope: !2120)
!2189 = !DILocation(line: 676, column: 17, scope: !2121)
!2190 = distinct !{!2190, !2191, !2192}
!2191 = !DILocation(line: 676, column: 17, scope: !2122)
!2192 = !DILocation(line: 695, column: 19, scope: !2122)
!2193 = !DILocation(line: 409, column: 30, scope: !1904)
!2194 = !DILocation(line: 702, column: 34, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !1758, file: !454, line: 702, column: 11)
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
!2207 = distinct !DILexicalBlock(scope: !1758, file: !454, line: 710, column: 7)
!2208 = !DILocation(line: 710, column: 7, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2207, file: !454, line: 710, column: 7)
!2210 = !DILocation(line: 710, column: 7, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !454, line: 710, column: 7)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !454, line: 710, column: 7)
!2213 = distinct !DILexicalBlock(scope: !2209, file: !454, line: 710, column: 7)
!2214 = !DILocation(line: 710, column: 7, scope: !2212)
!2215 = !DILocation(line: 710, column: 7, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !454, line: 710, column: 7)
!2217 = distinct !DILexicalBlock(scope: !2213, file: !454, line: 710, column: 7)
!2218 = !DILocation(line: 710, column: 7, scope: !2217)
!2219 = !DILocation(line: 710, column: 7, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !454, line: 710, column: 7)
!2221 = distinct !DILexicalBlock(scope: !2213, file: !454, line: 710, column: 7)
!2222 = !DILocation(line: 710, column: 7, scope: !2221)
!2223 = !DILocation(line: 710, column: 7, scope: !2213)
!2224 = !DILocation(line: 710, column: 7, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !454, line: 710, column: 7)
!2226 = distinct !DILexicalBlock(scope: !2207, file: !454, line: 710, column: 7)
!2227 = !DILocation(line: 710, column: 7, scope: !2226)
!2228 = !DILocation(line: 712, column: 5, scope: !1758)
!2229 = !DILocation(line: 713, column: 7, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !454, line: 713, column: 7)
!2231 = distinct !DILexicalBlock(scope: !1758, file: !454, line: 713, column: 7)
!2232 = !DILocation(line: 417, column: 21, scope: !1758)
!2233 = !DILocation(line: 713, column: 7, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !454, line: 713, column: 7)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !454, line: 713, column: 7)
!2236 = distinct !DILexicalBlock(scope: !2230, file: !454, line: 713, column: 7)
!2237 = !DILocation(line: 713, column: 7, scope: !2235)
!2238 = !DILocation(line: 713, column: 7, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !454, line: 713, column: 7)
!2240 = distinct !DILexicalBlock(scope: !2236, file: !454, line: 713, column: 7)
!2241 = !DILocation(line: 713, column: 7, scope: !2240)
!2242 = !DILocation(line: 713, column: 7, scope: !2236)
!2243 = !DILocation(line: 714, column: 7, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !454, line: 714, column: 7)
!2245 = distinct !DILexicalBlock(scope: !1758, file: !454, line: 714, column: 7)
!2246 = !DILocation(line: 714, column: 7, scope: !2245)
!2247 = !DILocation(line: 716, column: 13, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !1758, file: !454, line: 716, column: 11)
!2249 = !DILocation(line: 716, column: 11, scope: !1758)
!2250 = !DILocation(line: 718, column: 5, scope: !1759)
!2251 = !DILocation(line: 395, column: 82, scope: !1759)
!2252 = !DILocation(line: 395, column: 3, scope: !1759)
!2253 = distinct !{!2253, !1900, !2254, !860}
!2254 = !DILocation(line: 718, column: 5, scope: !1756)
!2255 = !DILocation(line: 720, column: 11, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !1725, file: !454, line: 720, column: 7)
!2257 = !DILocation(line: 720, column: 16, scope: !2256)
!2258 = !DILocation(line: 728, column: 51, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !1725, file: !454, line: 728, column: 7)
!2260 = !DILocation(line: 731, column: 11, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !454, line: 731, column: 11)
!2262 = distinct !DILexicalBlock(scope: !2259, file: !454, line: 730, column: 5)
!2263 = !DILocation(line: 731, column: 11, scope: !2262)
!2264 = !DILocation(line: 732, column: 16, scope: !2261)
!2265 = !DILocation(line: 732, column: 9, scope: !2261)
!2266 = !DILocation(line: 736, column: 18, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2261, file: !454, line: 736, column: 16)
!2268 = !DILocation(line: 736, column: 29, scope: !2267)
!2269 = !DILocation(line: 745, column: 7, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !1725, file: !454, line: 745, column: 7)
!2271 = !DILocation(line: 745, column: 20, scope: !2270)
!2272 = !DILocation(line: 746, column: 12, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !454, line: 746, column: 5)
!2274 = distinct !DILexicalBlock(scope: !2270, file: !454, line: 746, column: 5)
!2275 = !DILocation(line: 746, column: 5, scope: !2274)
!2276 = !DILocation(line: 747, column: 7, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !454, line: 747, column: 7)
!2278 = distinct !DILexicalBlock(scope: !2273, file: !454, line: 747, column: 7)
!2279 = !DILocation(line: 747, column: 7, scope: !2278)
!2280 = !DILocation(line: 746, column: 39, scope: !2273)
!2281 = distinct !{!2281, !2275, !2282, !860}
!2282 = !DILocation(line: 747, column: 7, scope: !2274)
!2283 = !DILocation(line: 749, column: 11, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !1725, file: !454, line: 749, column: 7)
!2285 = !DILocation(line: 749, column: 7, scope: !1725)
!2286 = !DILocation(line: 750, column: 5, scope: !2284)
!2287 = !DILocation(line: 750, column: 17, scope: !2284)
!2288 = !DILocation(line: 753, column: 2, scope: !1725)
!2289 = !DILocation(line: 756, column: 51, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !1725, file: !454, line: 756, column: 7)
!2291 = !DILocation(line: 756, column: 21, scope: !2290)
!2292 = !DILocation(line: 760, column: 42, scope: !1725)
!2293 = !DILocation(line: 758, column: 10, scope: !1725)
!2294 = !DILocation(line: 758, column: 3, scope: !1725)
!2295 = !DILocation(line: 762, column: 1, scope: !1725)
!2296 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !961, file: !961, line: 98, type: !2297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!152}
!2299 = !DISubprogram(name: "strlen", scope: !967, file: !967, line: 407, type: !2300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!154, !125}
!2302 = !DISubprogram(name: "iswprint", scope: !2303, file: !2303, line: 120, type: !2101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!2303 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2304 = distinct !DISubprogram(name: "quotearg_alloc", scope: !454, file: !454, line: 788, type: !2305, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2307)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!148, !125, !152, !1618}
!2307 = !{!2308, !2309, !2310}
!2308 = !DILocalVariable(name: "arg", arg: 1, scope: !2304, file: !454, line: 788, type: !125)
!2309 = !DILocalVariable(name: "argsize", arg: 2, scope: !2304, file: !454, line: 788, type: !152)
!2310 = !DILocalVariable(name: "o", arg: 3, scope: !2304, file: !454, line: 789, type: !1618)
!2311 = !DILocation(line: 0, scope: !2304)
!2312 = !DILocalVariable(name: "arg", arg: 1, scope: !2313, file: !454, line: 801, type: !125)
!2313 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !454, file: !454, line: 801, type: !2314, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2316)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!148, !125, !152, !709, !1618}
!2316 = !{!2312, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324}
!2317 = !DILocalVariable(name: "argsize", arg: 2, scope: !2313, file: !454, line: 801, type: !152)
!2318 = !DILocalVariable(name: "size", arg: 3, scope: !2313, file: !454, line: 801, type: !709)
!2319 = !DILocalVariable(name: "o", arg: 4, scope: !2313, file: !454, line: 802, type: !1618)
!2320 = !DILocalVariable(name: "p", scope: !2313, file: !454, line: 804, type: !1618)
!2321 = !DILocalVariable(name: "saved_errno", scope: !2313, file: !454, line: 805, type: !150)
!2322 = !DILocalVariable(name: "flags", scope: !2313, file: !454, line: 807, type: !150)
!2323 = !DILocalVariable(name: "bufsize", scope: !2313, file: !454, line: 808, type: !152)
!2324 = !DILocalVariable(name: "buf", scope: !2313, file: !454, line: 812, type: !148)
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
!2364 = distinct !DILexicalBlock(scope: !2313, file: !454, line: 817, column: 7)
!2365 = !{!1212, !1212, i64 0}
!2366 = !DILocation(line: 818, column: 5, scope: !2364)
!2367 = !DILocation(line: 819, column: 3, scope: !2313)
!2368 = distinct !DISubprogram(name: "quotearg_free", scope: !454, file: !454, line: 837, type: !409, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2369)
!2369 = !{!2370, !2371}
!2370 = !DILocalVariable(name: "sv", scope: !2368, file: !454, line: 839, type: !555)
!2371 = !DILocalVariable(name: "i", scope: !2372, file: !454, line: 840, type: !150)
!2372 = distinct !DILexicalBlock(scope: !2368, file: !454, line: 840, column: 3)
!2373 = !DILocation(line: 839, column: 24, scope: !2368)
!2374 = !DILocation(line: 0, scope: !2368)
!2375 = !DILocation(line: 0, scope: !2372)
!2376 = !DILocation(line: 840, column: 21, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2372, file: !454, line: 840, column: 3)
!2378 = !DILocation(line: 840, column: 3, scope: !2372)
!2379 = !DILocation(line: 842, column: 13, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2368, file: !454, line: 842, column: 7)
!2381 = !{!2382, !776, i64 8}
!2382 = !{!"slotvec", !1212, i64 0, !776, i64 8}
!2383 = !DILocation(line: 842, column: 17, scope: !2380)
!2384 = !DILocation(line: 842, column: 7, scope: !2368)
!2385 = !DILocation(line: 841, column: 17, scope: !2377)
!2386 = !DILocation(line: 841, column: 5, scope: !2377)
!2387 = !DILocation(line: 840, column: 32, scope: !2377)
!2388 = distinct !{!2388, !2378, !2389, !860}
!2389 = !DILocation(line: 841, column: 20, scope: !2372)
!2390 = !DILocation(line: 844, column: 7, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2380, file: !454, line: 843, column: 5)
!2392 = !DILocation(line: 845, column: 21, scope: !2391)
!2393 = !{!2382, !1212, i64 0}
!2394 = !DILocation(line: 846, column: 20, scope: !2391)
!2395 = !DILocation(line: 847, column: 5, scope: !2391)
!2396 = !DILocation(line: 848, column: 10, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2368, file: !454, line: 848, column: 7)
!2398 = !DILocation(line: 848, column: 7, scope: !2368)
!2399 = !DILocation(line: 850, column: 7, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2397, file: !454, line: 849, column: 5)
!2401 = !DILocation(line: 851, column: 15, scope: !2400)
!2402 = !DILocation(line: 852, column: 5, scope: !2400)
!2403 = !DILocation(line: 853, column: 10, scope: !2368)
!2404 = !DILocation(line: 854, column: 1, scope: !2368)
!2405 = !DISubprogram(name: "free", scope: !1572, file: !1572, line: 786, type: !2406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{null, !149}
!2408 = distinct !DISubprogram(name: "quotearg_n", scope: !454, file: !454, line: 919, type: !964, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2409)
!2409 = !{!2410, !2411}
!2410 = !DILocalVariable(name: "n", arg: 1, scope: !2408, file: !454, line: 919, type: !150)
!2411 = !DILocalVariable(name: "arg", arg: 2, scope: !2408, file: !454, line: 919, type: !125)
!2412 = !DILocation(line: 0, scope: !2408)
!2413 = !DILocation(line: 921, column: 10, scope: !2408)
!2414 = !DILocation(line: 921, column: 3, scope: !2408)
!2415 = distinct !DISubprogram(name: "quotearg_n_options", scope: !454, file: !454, line: 866, type: !2416, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2418)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!148, !150, !125, !152, !1618}
!2418 = !{!2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2429, !2430, !2432, !2433, !2434}
!2419 = !DILocalVariable(name: "n", arg: 1, scope: !2415, file: !454, line: 866, type: !150)
!2420 = !DILocalVariable(name: "arg", arg: 2, scope: !2415, file: !454, line: 866, type: !125)
!2421 = !DILocalVariable(name: "argsize", arg: 3, scope: !2415, file: !454, line: 866, type: !152)
!2422 = !DILocalVariable(name: "options", arg: 4, scope: !2415, file: !454, line: 867, type: !1618)
!2423 = !DILocalVariable(name: "saved_errno", scope: !2415, file: !454, line: 869, type: !150)
!2424 = !DILocalVariable(name: "sv", scope: !2415, file: !454, line: 871, type: !555)
!2425 = !DILocalVariable(name: "nslots_max", scope: !2415, file: !454, line: 873, type: !150)
!2426 = !DILocalVariable(name: "preallocated", scope: !2427, file: !454, line: 879, type: !266)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !454, line: 878, column: 5)
!2428 = distinct !DILexicalBlock(scope: !2415, file: !454, line: 877, column: 7)
!2429 = !DILocalVariable(name: "new_nslots", scope: !2427, file: !454, line: 880, type: !722)
!2430 = !DILocalVariable(name: "size", scope: !2431, file: !454, line: 891, type: !152)
!2431 = distinct !DILexicalBlock(scope: !2415, file: !454, line: 890, column: 3)
!2432 = !DILocalVariable(name: "val", scope: !2431, file: !454, line: 892, type: !148)
!2433 = !DILocalVariable(name: "flags", scope: !2431, file: !454, line: 894, type: !150)
!2434 = !DILocalVariable(name: "qsize", scope: !2431, file: !454, line: 895, type: !152)
!2435 = !DILocation(line: 0, scope: !2415)
!2436 = !DILocation(line: 869, column: 21, scope: !2415)
!2437 = !DILocation(line: 871, column: 24, scope: !2415)
!2438 = !DILocation(line: 874, column: 17, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2415, file: !454, line: 874, column: 7)
!2440 = !DILocation(line: 875, column: 5, scope: !2439)
!2441 = !DILocation(line: 877, column: 7, scope: !2428)
!2442 = !DILocation(line: 877, column: 14, scope: !2428)
!2443 = !DILocation(line: 877, column: 7, scope: !2415)
!2444 = !DILocation(line: 879, column: 31, scope: !2427)
!2445 = !DILocation(line: 0, scope: !2427)
!2446 = !DILocation(line: 880, column: 7, scope: !2427)
!2447 = !DILocation(line: 880, column: 26, scope: !2427)
!2448 = !DILocation(line: 880, column: 13, scope: !2427)
!2449 = !DILocation(line: 882, column: 31, scope: !2427)
!2450 = !DILocation(line: 883, column: 33, scope: !2427)
!2451 = !DILocation(line: 883, column: 42, scope: !2427)
!2452 = !DILocation(line: 883, column: 31, scope: !2427)
!2453 = !DILocation(line: 882, column: 22, scope: !2427)
!2454 = !DILocation(line: 882, column: 15, scope: !2427)
!2455 = !DILocation(line: 884, column: 11, scope: !2427)
!2456 = !DILocation(line: 885, column: 15, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2427, file: !454, line: 884, column: 11)
!2458 = !{i64 0, i64 8, !2365, i64 8, i64 8, !775}
!2459 = !DILocation(line: 885, column: 9, scope: !2457)
!2460 = !DILocation(line: 886, column: 20, scope: !2427)
!2461 = !DILocation(line: 886, column: 18, scope: !2427)
!2462 = !DILocation(line: 886, column: 32, scope: !2427)
!2463 = !DILocation(line: 886, column: 43, scope: !2427)
!2464 = !DILocation(line: 886, column: 53, scope: !2427)
!2465 = !DILocation(line: 0, scope: !1833, inlinedAt: !2466)
!2466 = distinct !DILocation(line: 886, column: 7, scope: !2427)
!2467 = !DILocation(line: 59, column: 10, scope: !1833, inlinedAt: !2466)
!2468 = !DILocation(line: 887, column: 16, scope: !2427)
!2469 = !DILocation(line: 887, column: 14, scope: !2427)
!2470 = !DILocation(line: 888, column: 5, scope: !2428)
!2471 = !DILocation(line: 888, column: 5, scope: !2427)
!2472 = !DILocation(line: 891, column: 19, scope: !2431)
!2473 = !DILocation(line: 891, column: 25, scope: !2431)
!2474 = !DILocation(line: 0, scope: !2431)
!2475 = !DILocation(line: 892, column: 23, scope: !2431)
!2476 = !DILocation(line: 894, column: 26, scope: !2431)
!2477 = !DILocation(line: 894, column: 32, scope: !2431)
!2478 = !DILocation(line: 896, column: 55, scope: !2431)
!2479 = !DILocation(line: 897, column: 55, scope: !2431)
!2480 = !DILocation(line: 898, column: 55, scope: !2431)
!2481 = !DILocation(line: 899, column: 55, scope: !2431)
!2482 = !DILocation(line: 895, column: 20, scope: !2431)
!2483 = !DILocation(line: 901, column: 14, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2431, file: !454, line: 901, column: 9)
!2485 = !DILocation(line: 901, column: 9, scope: !2431)
!2486 = !DILocation(line: 903, column: 35, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2484, file: !454, line: 902, column: 7)
!2488 = !DILocation(line: 903, column: 20, scope: !2487)
!2489 = !DILocation(line: 904, column: 17, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2487, file: !454, line: 904, column: 13)
!2491 = !DILocation(line: 904, column: 13, scope: !2487)
!2492 = !DILocation(line: 905, column: 11, scope: !2490)
!2493 = !DILocation(line: 906, column: 27, scope: !2487)
!2494 = !DILocation(line: 906, column: 19, scope: !2487)
!2495 = !DILocation(line: 907, column: 69, scope: !2487)
!2496 = !DILocation(line: 909, column: 44, scope: !2487)
!2497 = !DILocation(line: 910, column: 44, scope: !2487)
!2498 = !DILocation(line: 907, column: 9, scope: !2487)
!2499 = !DILocation(line: 911, column: 7, scope: !2487)
!2500 = !DILocation(line: 913, column: 11, scope: !2431)
!2501 = !DILocation(line: 914, column: 5, scope: !2431)
!2502 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !454, file: !454, line: 925, type: !2503, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2505)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!148, !150, !125, !152}
!2505 = !{!2506, !2507, !2508}
!2506 = !DILocalVariable(name: "n", arg: 1, scope: !2502, file: !454, line: 925, type: !150)
!2507 = !DILocalVariable(name: "arg", arg: 2, scope: !2502, file: !454, line: 925, type: !125)
!2508 = !DILocalVariable(name: "argsize", arg: 3, scope: !2502, file: !454, line: 925, type: !152)
!2509 = !DILocation(line: 0, scope: !2502)
!2510 = !DILocation(line: 927, column: 10, scope: !2502)
!2511 = !DILocation(line: 927, column: 3, scope: !2502)
!2512 = distinct !DISubprogram(name: "quotearg", scope: !454, file: !454, line: 931, type: !971, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2513)
!2513 = !{!2514}
!2514 = !DILocalVariable(name: "arg", arg: 1, scope: !2512, file: !454, line: 931, type: !125)
!2515 = !DILocation(line: 0, scope: !2512)
!2516 = !DILocation(line: 0, scope: !2408, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 933, column: 10, scope: !2512)
!2518 = !DILocation(line: 921, column: 10, scope: !2408, inlinedAt: !2517)
!2519 = !DILocation(line: 933, column: 3, scope: !2512)
!2520 = distinct !DISubprogram(name: "quotearg_mem", scope: !454, file: !454, line: 937, type: !2521, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2523)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!148, !125, !152}
!2523 = !{!2524, !2525}
!2524 = !DILocalVariable(name: "arg", arg: 1, scope: !2520, file: !454, line: 937, type: !125)
!2525 = !DILocalVariable(name: "argsize", arg: 2, scope: !2520, file: !454, line: 937, type: !152)
!2526 = !DILocation(line: 0, scope: !2520)
!2527 = !DILocation(line: 0, scope: !2502, inlinedAt: !2528)
!2528 = distinct !DILocation(line: 939, column: 10, scope: !2520)
!2529 = !DILocation(line: 927, column: 10, scope: !2502, inlinedAt: !2528)
!2530 = !DILocation(line: 939, column: 3, scope: !2520)
!2531 = distinct !DISubprogram(name: "quotearg_n_style", scope: !454, file: !454, line: 943, type: !2532, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2534)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!148, !150, !480, !125}
!2534 = !{!2535, !2536, !2537, !2538}
!2535 = !DILocalVariable(name: "n", arg: 1, scope: !2531, file: !454, line: 943, type: !150)
!2536 = !DILocalVariable(name: "s", arg: 2, scope: !2531, file: !454, line: 943, type: !480)
!2537 = !DILocalVariable(name: "arg", arg: 3, scope: !2531, file: !454, line: 943, type: !125)
!2538 = !DILocalVariable(name: "o", scope: !2531, file: !454, line: 945, type: !1619)
!2539 = !DILocation(line: 0, scope: !2531)
!2540 = !DILocation(line: 945, column: 3, scope: !2531)
!2541 = !DILocation(line: 945, column: 32, scope: !2531)
!2542 = !{!2543}
!2543 = distinct !{!2543, !2544, !"quoting_options_from_style: argument 0"}
!2544 = distinct !{!2544, !"quoting_options_from_style"}
!2545 = !DILocation(line: 945, column: 36, scope: !2531)
!2546 = !DILocalVariable(name: "style", arg: 1, scope: !2547, file: !454, line: 183, type: !480)
!2547 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !454, file: !454, line: 183, type: !2548, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2550)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!507, !480}
!2550 = !{!2546, !2551}
!2551 = !DILocalVariable(name: "o", scope: !2547, file: !454, line: 185, type: !507)
!2552 = !DILocation(line: 0, scope: !2547, inlinedAt: !2553)
!2553 = distinct !DILocation(line: 945, column: 36, scope: !2531)
!2554 = !DILocation(line: 185, column: 26, scope: !2547, inlinedAt: !2553)
!2555 = !DILocation(line: 186, column: 13, scope: !2556, inlinedAt: !2553)
!2556 = distinct !DILexicalBlock(scope: !2547, file: !454, line: 186, column: 7)
!2557 = !DILocation(line: 186, column: 7, scope: !2547, inlinedAt: !2553)
!2558 = !DILocation(line: 187, column: 5, scope: !2556, inlinedAt: !2553)
!2559 = !DILocation(line: 188, column: 11, scope: !2547, inlinedAt: !2553)
!2560 = !DILocation(line: 946, column: 10, scope: !2531)
!2561 = !DILocation(line: 947, column: 1, scope: !2531)
!2562 = !DILocation(line: 946, column: 3, scope: !2531)
!2563 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !454, file: !454, line: 950, type: !2564, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2566)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!148, !150, !480, !125, !152}
!2566 = !{!2567, !2568, !2569, !2570, !2571}
!2567 = !DILocalVariable(name: "n", arg: 1, scope: !2563, file: !454, line: 950, type: !150)
!2568 = !DILocalVariable(name: "s", arg: 2, scope: !2563, file: !454, line: 950, type: !480)
!2569 = !DILocalVariable(name: "arg", arg: 3, scope: !2563, file: !454, line: 951, type: !125)
!2570 = !DILocalVariable(name: "argsize", arg: 4, scope: !2563, file: !454, line: 951, type: !152)
!2571 = !DILocalVariable(name: "o", scope: !2563, file: !454, line: 953, type: !1619)
!2572 = !DILocation(line: 0, scope: !2563)
!2573 = !DILocation(line: 953, column: 3, scope: !2563)
!2574 = !DILocation(line: 953, column: 32, scope: !2563)
!2575 = !{!2576}
!2576 = distinct !{!2576, !2577, !"quoting_options_from_style: argument 0"}
!2577 = distinct !{!2577, !"quoting_options_from_style"}
!2578 = !DILocation(line: 953, column: 36, scope: !2563)
!2579 = !DILocation(line: 0, scope: !2547, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 953, column: 36, scope: !2563)
!2581 = !DILocation(line: 185, column: 26, scope: !2547, inlinedAt: !2580)
!2582 = !DILocation(line: 186, column: 13, scope: !2556, inlinedAt: !2580)
!2583 = !DILocation(line: 186, column: 7, scope: !2547, inlinedAt: !2580)
!2584 = !DILocation(line: 187, column: 5, scope: !2556, inlinedAt: !2580)
!2585 = !DILocation(line: 188, column: 11, scope: !2547, inlinedAt: !2580)
!2586 = !DILocation(line: 954, column: 10, scope: !2563)
!2587 = !DILocation(line: 955, column: 1, scope: !2563)
!2588 = !DILocation(line: 954, column: 3, scope: !2563)
!2589 = distinct !DISubprogram(name: "quotearg_style", scope: !454, file: !454, line: 958, type: !2590, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2592)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!148, !480, !125}
!2592 = !{!2593, !2594}
!2593 = !DILocalVariable(name: "s", arg: 1, scope: !2589, file: !454, line: 958, type: !480)
!2594 = !DILocalVariable(name: "arg", arg: 2, scope: !2589, file: !454, line: 958, type: !125)
!2595 = !DILocation(line: 0, scope: !2589)
!2596 = !DILocation(line: 0, scope: !2531, inlinedAt: !2597)
!2597 = distinct !DILocation(line: 960, column: 10, scope: !2589)
!2598 = !DILocation(line: 945, column: 3, scope: !2531, inlinedAt: !2597)
!2599 = !DILocation(line: 945, column: 32, scope: !2531, inlinedAt: !2597)
!2600 = !{!2601}
!2601 = distinct !{!2601, !2602, !"quoting_options_from_style: argument 0"}
!2602 = distinct !{!2602, !"quoting_options_from_style"}
!2603 = !DILocation(line: 945, column: 36, scope: !2531, inlinedAt: !2597)
!2604 = !DILocation(line: 0, scope: !2547, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 945, column: 36, scope: !2531, inlinedAt: !2597)
!2606 = !DILocation(line: 185, column: 26, scope: !2547, inlinedAt: !2605)
!2607 = !DILocation(line: 186, column: 13, scope: !2556, inlinedAt: !2605)
!2608 = !DILocation(line: 186, column: 7, scope: !2547, inlinedAt: !2605)
!2609 = !DILocation(line: 187, column: 5, scope: !2556, inlinedAt: !2605)
!2610 = !DILocation(line: 188, column: 11, scope: !2547, inlinedAt: !2605)
!2611 = !DILocation(line: 946, column: 10, scope: !2531, inlinedAt: !2597)
!2612 = !DILocation(line: 947, column: 1, scope: !2531, inlinedAt: !2597)
!2613 = !DILocation(line: 960, column: 3, scope: !2589)
!2614 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !454, file: !454, line: 964, type: !2615, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2617)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!148, !480, !125, !152}
!2617 = !{!2618, !2619, !2620}
!2618 = !DILocalVariable(name: "s", arg: 1, scope: !2614, file: !454, line: 964, type: !480)
!2619 = !DILocalVariable(name: "arg", arg: 2, scope: !2614, file: !454, line: 964, type: !125)
!2620 = !DILocalVariable(name: "argsize", arg: 3, scope: !2614, file: !454, line: 964, type: !152)
!2621 = !DILocation(line: 0, scope: !2614)
!2622 = !DILocation(line: 0, scope: !2563, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 966, column: 10, scope: !2614)
!2624 = !DILocation(line: 953, column: 3, scope: !2563, inlinedAt: !2623)
!2625 = !DILocation(line: 953, column: 32, scope: !2563, inlinedAt: !2623)
!2626 = !{!2627}
!2627 = distinct !{!2627, !2628, !"quoting_options_from_style: argument 0"}
!2628 = distinct !{!2628, !"quoting_options_from_style"}
!2629 = !DILocation(line: 953, column: 36, scope: !2563, inlinedAt: !2623)
!2630 = !DILocation(line: 0, scope: !2547, inlinedAt: !2631)
!2631 = distinct !DILocation(line: 953, column: 36, scope: !2563, inlinedAt: !2623)
!2632 = !DILocation(line: 185, column: 26, scope: !2547, inlinedAt: !2631)
!2633 = !DILocation(line: 186, column: 13, scope: !2556, inlinedAt: !2631)
!2634 = !DILocation(line: 186, column: 7, scope: !2547, inlinedAt: !2631)
!2635 = !DILocation(line: 187, column: 5, scope: !2556, inlinedAt: !2631)
!2636 = !DILocation(line: 188, column: 11, scope: !2547, inlinedAt: !2631)
!2637 = !DILocation(line: 954, column: 10, scope: !2563, inlinedAt: !2623)
!2638 = !DILocation(line: 955, column: 1, scope: !2563, inlinedAt: !2623)
!2639 = !DILocation(line: 966, column: 3, scope: !2614)
!2640 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !454, file: !454, line: 970, type: !2641, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2643)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!148, !125, !152, !4}
!2643 = !{!2644, !2645, !2646, !2647}
!2644 = !DILocalVariable(name: "arg", arg: 1, scope: !2640, file: !454, line: 970, type: !125)
!2645 = !DILocalVariable(name: "argsize", arg: 2, scope: !2640, file: !454, line: 970, type: !152)
!2646 = !DILocalVariable(name: "ch", arg: 3, scope: !2640, file: !454, line: 970, type: !4)
!2647 = !DILocalVariable(name: "options", scope: !2640, file: !454, line: 972, type: !507)
!2648 = !DILocation(line: 0, scope: !2640)
!2649 = !DILocation(line: 972, column: 3, scope: !2640)
!2650 = !DILocation(line: 972, column: 26, scope: !2640)
!2651 = !DILocation(line: 973, column: 13, scope: !2640)
!2652 = !{i64 0, i64 4, !822, i64 4, i64 4, !813, i64 8, i64 32, !822, i64 40, i64 8, !775, i64 48, i64 8, !775}
!2653 = !DILocation(line: 0, scope: !1638, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 974, column: 3, scope: !2640)
!2655 = !DILocation(line: 147, column: 41, scope: !1638, inlinedAt: !2654)
!2656 = !DILocation(line: 147, column: 62, scope: !1638, inlinedAt: !2654)
!2657 = !DILocation(line: 147, column: 57, scope: !1638, inlinedAt: !2654)
!2658 = !DILocation(line: 148, column: 15, scope: !1638, inlinedAt: !2654)
!2659 = !DILocation(line: 149, column: 21, scope: !1638, inlinedAt: !2654)
!2660 = !DILocation(line: 149, column: 24, scope: !1638, inlinedAt: !2654)
!2661 = !DILocation(line: 150, column: 19, scope: !1638, inlinedAt: !2654)
!2662 = !DILocation(line: 150, column: 24, scope: !1638, inlinedAt: !2654)
!2663 = !DILocation(line: 150, column: 6, scope: !1638, inlinedAt: !2654)
!2664 = !DILocation(line: 975, column: 10, scope: !2640)
!2665 = !DILocation(line: 976, column: 1, scope: !2640)
!2666 = !DILocation(line: 975, column: 3, scope: !2640)
!2667 = distinct !DISubprogram(name: "quotearg_char", scope: !454, file: !454, line: 979, type: !2668, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2670)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!148, !125, !4}
!2670 = !{!2671, !2672}
!2671 = !DILocalVariable(name: "arg", arg: 1, scope: !2667, file: !454, line: 979, type: !125)
!2672 = !DILocalVariable(name: "ch", arg: 2, scope: !2667, file: !454, line: 979, type: !4)
!2673 = !DILocation(line: 0, scope: !2667)
!2674 = !DILocation(line: 0, scope: !2640, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 981, column: 10, scope: !2667)
!2676 = !DILocation(line: 972, column: 3, scope: !2640, inlinedAt: !2675)
!2677 = !DILocation(line: 972, column: 26, scope: !2640, inlinedAt: !2675)
!2678 = !DILocation(line: 973, column: 13, scope: !2640, inlinedAt: !2675)
!2679 = !DILocation(line: 0, scope: !1638, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 974, column: 3, scope: !2640, inlinedAt: !2675)
!2681 = !DILocation(line: 147, column: 41, scope: !1638, inlinedAt: !2680)
!2682 = !DILocation(line: 147, column: 62, scope: !1638, inlinedAt: !2680)
!2683 = !DILocation(line: 147, column: 57, scope: !1638, inlinedAt: !2680)
!2684 = !DILocation(line: 148, column: 15, scope: !1638, inlinedAt: !2680)
!2685 = !DILocation(line: 149, column: 21, scope: !1638, inlinedAt: !2680)
!2686 = !DILocation(line: 149, column: 24, scope: !1638, inlinedAt: !2680)
!2687 = !DILocation(line: 150, column: 19, scope: !1638, inlinedAt: !2680)
!2688 = !DILocation(line: 150, column: 24, scope: !1638, inlinedAt: !2680)
!2689 = !DILocation(line: 150, column: 6, scope: !1638, inlinedAt: !2680)
!2690 = !DILocation(line: 975, column: 10, scope: !2640, inlinedAt: !2675)
!2691 = !DILocation(line: 976, column: 1, scope: !2640, inlinedAt: !2675)
!2692 = !DILocation(line: 981, column: 3, scope: !2667)
!2693 = distinct !DISubprogram(name: "quotearg_colon", scope: !454, file: !454, line: 985, type: !971, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2694)
!2694 = !{!2695}
!2695 = !DILocalVariable(name: "arg", arg: 1, scope: !2693, file: !454, line: 985, type: !125)
!2696 = !DILocation(line: 0, scope: !2693)
!2697 = !DILocation(line: 0, scope: !2667, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 987, column: 10, scope: !2693)
!2699 = !DILocation(line: 0, scope: !2640, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 981, column: 10, scope: !2667, inlinedAt: !2698)
!2701 = !DILocation(line: 972, column: 3, scope: !2640, inlinedAt: !2700)
!2702 = !DILocation(line: 972, column: 26, scope: !2640, inlinedAt: !2700)
!2703 = !DILocation(line: 973, column: 13, scope: !2640, inlinedAt: !2700)
!2704 = !DILocation(line: 0, scope: !1638, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 974, column: 3, scope: !2640, inlinedAt: !2700)
!2706 = !DILocation(line: 147, column: 57, scope: !1638, inlinedAt: !2705)
!2707 = !DILocation(line: 149, column: 21, scope: !1638, inlinedAt: !2705)
!2708 = !DILocation(line: 150, column: 6, scope: !1638, inlinedAt: !2705)
!2709 = !DILocation(line: 975, column: 10, scope: !2640, inlinedAt: !2700)
!2710 = !DILocation(line: 976, column: 1, scope: !2640, inlinedAt: !2700)
!2711 = !DILocation(line: 987, column: 3, scope: !2693)
!2712 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !454, file: !454, line: 991, type: !2521, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2713)
!2713 = !{!2714, !2715}
!2714 = !DILocalVariable(name: "arg", arg: 1, scope: !2712, file: !454, line: 991, type: !125)
!2715 = !DILocalVariable(name: "argsize", arg: 2, scope: !2712, file: !454, line: 991, type: !152)
!2716 = !DILocation(line: 0, scope: !2712)
!2717 = !DILocation(line: 0, scope: !2640, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 993, column: 10, scope: !2712)
!2719 = !DILocation(line: 972, column: 3, scope: !2640, inlinedAt: !2718)
!2720 = !DILocation(line: 972, column: 26, scope: !2640, inlinedAt: !2718)
!2721 = !DILocation(line: 973, column: 13, scope: !2640, inlinedAt: !2718)
!2722 = !DILocation(line: 0, scope: !1638, inlinedAt: !2723)
!2723 = distinct !DILocation(line: 974, column: 3, scope: !2640, inlinedAt: !2718)
!2724 = !DILocation(line: 147, column: 57, scope: !1638, inlinedAt: !2723)
!2725 = !DILocation(line: 149, column: 21, scope: !1638, inlinedAt: !2723)
!2726 = !DILocation(line: 150, column: 6, scope: !1638, inlinedAt: !2723)
!2727 = !DILocation(line: 975, column: 10, scope: !2640, inlinedAt: !2718)
!2728 = !DILocation(line: 976, column: 1, scope: !2640, inlinedAt: !2718)
!2729 = !DILocation(line: 993, column: 3, scope: !2712)
!2730 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !454, file: !454, line: 997, type: !2532, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2731)
!2731 = !{!2732, !2733, !2734, !2735}
!2732 = !DILocalVariable(name: "n", arg: 1, scope: !2730, file: !454, line: 997, type: !150)
!2733 = !DILocalVariable(name: "s", arg: 2, scope: !2730, file: !454, line: 997, type: !480)
!2734 = !DILocalVariable(name: "arg", arg: 3, scope: !2730, file: !454, line: 997, type: !125)
!2735 = !DILocalVariable(name: "options", scope: !2730, file: !454, line: 999, type: !507)
!2736 = !DILocation(line: 185, column: 26, scope: !2547, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 1000, column: 13, scope: !2730)
!2738 = !DILocation(line: 0, scope: !2730)
!2739 = !DILocation(line: 999, column: 3, scope: !2730)
!2740 = !DILocation(line: 999, column: 26, scope: !2730)
!2741 = !DILocation(line: 0, scope: !2547, inlinedAt: !2737)
!2742 = !DILocation(line: 186, column: 13, scope: !2556, inlinedAt: !2737)
!2743 = !DILocation(line: 186, column: 7, scope: !2547, inlinedAt: !2737)
!2744 = !DILocation(line: 187, column: 5, scope: !2556, inlinedAt: !2737)
!2745 = !{!2746}
!2746 = distinct !{!2746, !2747, !"quoting_options_from_style: argument 0"}
!2747 = distinct !{!2747, !"quoting_options_from_style"}
!2748 = !DILocation(line: 1000, column: 13, scope: !2730)
!2749 = !DILocation(line: 0, scope: !1638, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 1001, column: 3, scope: !2730)
!2751 = !DILocation(line: 147, column: 57, scope: !1638, inlinedAt: !2750)
!2752 = !DILocation(line: 149, column: 21, scope: !1638, inlinedAt: !2750)
!2753 = !DILocation(line: 150, column: 6, scope: !1638, inlinedAt: !2750)
!2754 = !DILocation(line: 1002, column: 10, scope: !2730)
!2755 = !DILocation(line: 1003, column: 1, scope: !2730)
!2756 = !DILocation(line: 1002, column: 3, scope: !2730)
!2757 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !454, file: !454, line: 1006, type: !2758, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2760)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!148, !150, !125, !125, !125}
!2760 = !{!2761, !2762, !2763, !2764}
!2761 = !DILocalVariable(name: "n", arg: 1, scope: !2757, file: !454, line: 1006, type: !150)
!2762 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2757, file: !454, line: 1006, type: !125)
!2763 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2757, file: !454, line: 1007, type: !125)
!2764 = !DILocalVariable(name: "arg", arg: 4, scope: !2757, file: !454, line: 1007, type: !125)
!2765 = !DILocation(line: 0, scope: !2757)
!2766 = !DILocalVariable(name: "n", arg: 1, scope: !2767, file: !454, line: 1014, type: !150)
!2767 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !454, file: !454, line: 1014, type: !2768, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2770)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!148, !150, !125, !125, !125, !152}
!2770 = !{!2766, !2771, !2772, !2773, !2774, !2775}
!2771 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2767, file: !454, line: 1014, type: !125)
!2772 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2767, file: !454, line: 1015, type: !125)
!2773 = !DILocalVariable(name: "arg", arg: 4, scope: !2767, file: !454, line: 1016, type: !125)
!2774 = !DILocalVariable(name: "argsize", arg: 5, scope: !2767, file: !454, line: 1016, type: !152)
!2775 = !DILocalVariable(name: "o", scope: !2767, file: !454, line: 1018, type: !507)
!2776 = !DILocation(line: 0, scope: !2767, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 1009, column: 10, scope: !2757)
!2778 = !DILocation(line: 1018, column: 3, scope: !2767, inlinedAt: !2777)
!2779 = !DILocation(line: 1018, column: 26, scope: !2767, inlinedAt: !2777)
!2780 = !DILocation(line: 1018, column: 30, scope: !2767, inlinedAt: !2777)
!2781 = !DILocation(line: 0, scope: !1678, inlinedAt: !2782)
!2782 = distinct !DILocation(line: 1019, column: 3, scope: !2767, inlinedAt: !2777)
!2783 = !DILocation(line: 174, column: 12, scope: !1678, inlinedAt: !2782)
!2784 = !DILocation(line: 175, column: 8, scope: !1691, inlinedAt: !2782)
!2785 = !DILocation(line: 175, column: 19, scope: !1691, inlinedAt: !2782)
!2786 = !DILocation(line: 176, column: 5, scope: !1691, inlinedAt: !2782)
!2787 = !DILocation(line: 177, column: 6, scope: !1678, inlinedAt: !2782)
!2788 = !DILocation(line: 177, column: 17, scope: !1678, inlinedAt: !2782)
!2789 = !DILocation(line: 178, column: 6, scope: !1678, inlinedAt: !2782)
!2790 = !DILocation(line: 178, column: 18, scope: !1678, inlinedAt: !2782)
!2791 = !DILocation(line: 1020, column: 10, scope: !2767, inlinedAt: !2777)
!2792 = !DILocation(line: 1021, column: 1, scope: !2767, inlinedAt: !2777)
!2793 = !DILocation(line: 1009, column: 3, scope: !2757)
!2794 = !DILocation(line: 0, scope: !2767)
!2795 = !DILocation(line: 1018, column: 3, scope: !2767)
!2796 = !DILocation(line: 1018, column: 26, scope: !2767)
!2797 = !DILocation(line: 1018, column: 30, scope: !2767)
!2798 = !DILocation(line: 0, scope: !1678, inlinedAt: !2799)
!2799 = distinct !DILocation(line: 1019, column: 3, scope: !2767)
!2800 = !DILocation(line: 174, column: 12, scope: !1678, inlinedAt: !2799)
!2801 = !DILocation(line: 175, column: 8, scope: !1691, inlinedAt: !2799)
!2802 = !DILocation(line: 175, column: 19, scope: !1691, inlinedAt: !2799)
!2803 = !DILocation(line: 176, column: 5, scope: !1691, inlinedAt: !2799)
!2804 = !DILocation(line: 177, column: 6, scope: !1678, inlinedAt: !2799)
!2805 = !DILocation(line: 177, column: 17, scope: !1678, inlinedAt: !2799)
!2806 = !DILocation(line: 178, column: 6, scope: !1678, inlinedAt: !2799)
!2807 = !DILocation(line: 178, column: 18, scope: !1678, inlinedAt: !2799)
!2808 = !DILocation(line: 1020, column: 10, scope: !2767)
!2809 = !DILocation(line: 1021, column: 1, scope: !2767)
!2810 = !DILocation(line: 1020, column: 3, scope: !2767)
!2811 = distinct !DISubprogram(name: "quotearg_custom", scope: !454, file: !454, line: 1024, type: !2812, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2814)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!148, !125, !125, !125}
!2814 = !{!2815, !2816, !2817}
!2815 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2811, file: !454, line: 1024, type: !125)
!2816 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2811, file: !454, line: 1024, type: !125)
!2817 = !DILocalVariable(name: "arg", arg: 3, scope: !2811, file: !454, line: 1025, type: !125)
!2818 = !DILocation(line: 0, scope: !2811)
!2819 = !DILocation(line: 0, scope: !2757, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 1027, column: 10, scope: !2811)
!2821 = !DILocation(line: 0, scope: !2767, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 1009, column: 10, scope: !2757, inlinedAt: !2820)
!2823 = !DILocation(line: 1018, column: 3, scope: !2767, inlinedAt: !2822)
!2824 = !DILocation(line: 1018, column: 26, scope: !2767, inlinedAt: !2822)
!2825 = !DILocation(line: 1018, column: 30, scope: !2767, inlinedAt: !2822)
!2826 = !DILocation(line: 0, scope: !1678, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 1019, column: 3, scope: !2767, inlinedAt: !2822)
!2828 = !DILocation(line: 174, column: 12, scope: !1678, inlinedAt: !2827)
!2829 = !DILocation(line: 175, column: 8, scope: !1691, inlinedAt: !2827)
!2830 = !DILocation(line: 175, column: 19, scope: !1691, inlinedAt: !2827)
!2831 = !DILocation(line: 176, column: 5, scope: !1691, inlinedAt: !2827)
!2832 = !DILocation(line: 177, column: 6, scope: !1678, inlinedAt: !2827)
!2833 = !DILocation(line: 177, column: 17, scope: !1678, inlinedAt: !2827)
!2834 = !DILocation(line: 178, column: 6, scope: !1678, inlinedAt: !2827)
!2835 = !DILocation(line: 178, column: 18, scope: !1678, inlinedAt: !2827)
!2836 = !DILocation(line: 1020, column: 10, scope: !2767, inlinedAt: !2822)
!2837 = !DILocation(line: 1021, column: 1, scope: !2767, inlinedAt: !2822)
!2838 = !DILocation(line: 1027, column: 3, scope: !2811)
!2839 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !454, file: !454, line: 1031, type: !2840, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2842)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!148, !125, !125, !125, !152}
!2842 = !{!2843, !2844, !2845, !2846}
!2843 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2839, file: !454, line: 1031, type: !125)
!2844 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2839, file: !454, line: 1031, type: !125)
!2845 = !DILocalVariable(name: "arg", arg: 3, scope: !2839, file: !454, line: 1032, type: !125)
!2846 = !DILocalVariable(name: "argsize", arg: 4, scope: !2839, file: !454, line: 1032, type: !152)
!2847 = !DILocation(line: 0, scope: !2839)
!2848 = !DILocation(line: 0, scope: !2767, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 1034, column: 10, scope: !2839)
!2850 = !DILocation(line: 1018, column: 3, scope: !2767, inlinedAt: !2849)
!2851 = !DILocation(line: 1018, column: 26, scope: !2767, inlinedAt: !2849)
!2852 = !DILocation(line: 1018, column: 30, scope: !2767, inlinedAt: !2849)
!2853 = !DILocation(line: 0, scope: !1678, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 1019, column: 3, scope: !2767, inlinedAt: !2849)
!2855 = !DILocation(line: 174, column: 12, scope: !1678, inlinedAt: !2854)
!2856 = !DILocation(line: 175, column: 8, scope: !1691, inlinedAt: !2854)
!2857 = !DILocation(line: 175, column: 19, scope: !1691, inlinedAt: !2854)
!2858 = !DILocation(line: 176, column: 5, scope: !1691, inlinedAt: !2854)
!2859 = !DILocation(line: 177, column: 6, scope: !1678, inlinedAt: !2854)
!2860 = !DILocation(line: 177, column: 17, scope: !1678, inlinedAt: !2854)
!2861 = !DILocation(line: 178, column: 6, scope: !1678, inlinedAt: !2854)
!2862 = !DILocation(line: 178, column: 18, scope: !1678, inlinedAt: !2854)
!2863 = !DILocation(line: 1020, column: 10, scope: !2767, inlinedAt: !2849)
!2864 = !DILocation(line: 1021, column: 1, scope: !2767, inlinedAt: !2849)
!2865 = !DILocation(line: 1034, column: 3, scope: !2839)
!2866 = distinct !DISubprogram(name: "quote_n_mem", scope: !454, file: !454, line: 1049, type: !2867, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2869)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!125, !150, !125, !152}
!2869 = !{!2870, !2871, !2872}
!2870 = !DILocalVariable(name: "n", arg: 1, scope: !2866, file: !454, line: 1049, type: !150)
!2871 = !DILocalVariable(name: "arg", arg: 2, scope: !2866, file: !454, line: 1049, type: !125)
!2872 = !DILocalVariable(name: "argsize", arg: 3, scope: !2866, file: !454, line: 1049, type: !152)
!2873 = !DILocation(line: 0, scope: !2866)
!2874 = !DILocation(line: 1051, column: 10, scope: !2866)
!2875 = !DILocation(line: 1051, column: 3, scope: !2866)
!2876 = distinct !DISubprogram(name: "quote_mem", scope: !454, file: !454, line: 1055, type: !2877, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2879)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!125, !125, !152}
!2879 = !{!2880, !2881}
!2880 = !DILocalVariable(name: "arg", arg: 1, scope: !2876, file: !454, line: 1055, type: !125)
!2881 = !DILocalVariable(name: "argsize", arg: 2, scope: !2876, file: !454, line: 1055, type: !152)
!2882 = !DILocation(line: 0, scope: !2876)
!2883 = !DILocation(line: 0, scope: !2866, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 1057, column: 10, scope: !2876)
!2885 = !DILocation(line: 1051, column: 10, scope: !2866, inlinedAt: !2884)
!2886 = !DILocation(line: 1057, column: 3, scope: !2876)
!2887 = distinct !DISubprogram(name: "quote_n", scope: !454, file: !454, line: 1061, type: !2888, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2890)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!125, !150, !125}
!2890 = !{!2891, !2892}
!2891 = !DILocalVariable(name: "n", arg: 1, scope: !2887, file: !454, line: 1061, type: !150)
!2892 = !DILocalVariable(name: "arg", arg: 2, scope: !2887, file: !454, line: 1061, type: !125)
!2893 = !DILocation(line: 0, scope: !2887)
!2894 = !DILocation(line: 0, scope: !2866, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 1063, column: 10, scope: !2887)
!2896 = !DILocation(line: 1051, column: 10, scope: !2866, inlinedAt: !2895)
!2897 = !DILocation(line: 1063, column: 3, scope: !2887)
!2898 = distinct !DISubprogram(name: "quote", scope: !454, file: !454, line: 1067, type: !2899, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2901)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!125, !125}
!2901 = !{!2902}
!2902 = !DILocalVariable(name: "arg", arg: 1, scope: !2898, file: !454, line: 1067, type: !125)
!2903 = !DILocation(line: 0, scope: !2898)
!2904 = !DILocation(line: 0, scope: !2887, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 1069, column: 10, scope: !2898)
!2906 = !DILocation(line: 0, scope: !2866, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 1063, column: 10, scope: !2887, inlinedAt: !2905)
!2908 = !DILocation(line: 1051, column: 10, scope: !2866, inlinedAt: !2907)
!2909 = !DILocation(line: 1069, column: 3, scope: !2898)
!2910 = distinct !DISubprogram(name: "version_etc_arn", scope: !568, file: !568, line: 61, type: !2911, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !2948)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{null, !2913, !125, !125, !125, !2947, !152}
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !281, line: 7, baseType: !2915)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !283, line: 49, size: 1728, elements: !2916)
!2916 = !{!2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2915, file: !283, line: 51, baseType: !150, size: 32)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2915, file: !283, line: 54, baseType: !148, size: 64, offset: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2915, file: !283, line: 55, baseType: !148, size: 64, offset: 128)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2915, file: !283, line: 56, baseType: !148, size: 64, offset: 192)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2915, file: !283, line: 57, baseType: !148, size: 64, offset: 256)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2915, file: !283, line: 58, baseType: !148, size: 64, offset: 320)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2915, file: !283, line: 59, baseType: !148, size: 64, offset: 384)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2915, file: !283, line: 60, baseType: !148, size: 64, offset: 448)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2915, file: !283, line: 61, baseType: !148, size: 64, offset: 512)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2915, file: !283, line: 64, baseType: !148, size: 64, offset: 576)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2915, file: !283, line: 65, baseType: !148, size: 64, offset: 640)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2915, file: !283, line: 66, baseType: !148, size: 64, offset: 704)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2915, file: !283, line: 68, baseType: !298, size: 64, offset: 768)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2915, file: !283, line: 70, baseType: !2931, size: 64, offset: 832)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2915, file: !283, line: 72, baseType: !150, size: 32, offset: 896)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2915, file: !283, line: 73, baseType: !150, size: 32, offset: 928)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2915, file: !283, line: 74, baseType: !305, size: 64, offset: 960)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2915, file: !283, line: 77, baseType: !151, size: 16, offset: 1024)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2915, file: !283, line: 78, baseType: !310, size: 8, offset: 1040)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2915, file: !283, line: 79, baseType: !90, size: 8, offset: 1048)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2915, file: !283, line: 81, baseType: !313, size: 64, offset: 1088)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2915, file: !283, line: 89, baseType: !316, size: 64, offset: 1152)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2915, file: !283, line: 91, baseType: !318, size: 64, offset: 1216)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2915, file: !283, line: 92, baseType: !321, size: 64, offset: 1280)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2915, file: !283, line: 93, baseType: !2931, size: 64, offset: 1344)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2915, file: !283, line: 94, baseType: !149, size: 64, offset: 1408)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2915, file: !283, line: 95, baseType: !152, size: 64, offset: 1472)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2915, file: !283, line: 96, baseType: !150, size: 32, offset: 1536)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2915, file: !283, line: 98, baseType: !328, size: 160, offset: 1568)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!2948 = !{!2949, !2950, !2951, !2952, !2953, !2954}
!2949 = !DILocalVariable(name: "stream", arg: 1, scope: !2910, file: !568, line: 61, type: !2913)
!2950 = !DILocalVariable(name: "command_name", arg: 2, scope: !2910, file: !568, line: 62, type: !125)
!2951 = !DILocalVariable(name: "package", arg: 3, scope: !2910, file: !568, line: 62, type: !125)
!2952 = !DILocalVariable(name: "version", arg: 4, scope: !2910, file: !568, line: 63, type: !125)
!2953 = !DILocalVariable(name: "authors", arg: 5, scope: !2910, file: !568, line: 64, type: !2947)
!2954 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2910, file: !568, line: 64, type: !152)
!2955 = !DILocation(line: 0, scope: !2910)
!2956 = !DILocation(line: 66, column: 7, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2910, file: !568, line: 66, column: 7)
!2958 = !DILocation(line: 66, column: 7, scope: !2910)
!2959 = !DILocation(line: 67, column: 5, scope: !2957)
!2960 = !DILocation(line: 69, column: 5, scope: !2957)
!2961 = !DILocation(line: 83, column: 3, scope: !2910)
!2962 = !DILocation(line: 85, column: 3, scope: !2910)
!2963 = !DILocation(line: 88, column: 3, scope: !2910)
!2964 = !DILocation(line: 95, column: 3, scope: !2910)
!2965 = !DILocation(line: 97, column: 3, scope: !2910)
!2966 = !DILocation(line: 105, column: 7, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2910, file: !568, line: 98, column: 5)
!2968 = !DILocation(line: 106, column: 7, scope: !2967)
!2969 = !DILocation(line: 109, column: 7, scope: !2967)
!2970 = !DILocation(line: 110, column: 7, scope: !2967)
!2971 = !DILocation(line: 113, column: 7, scope: !2967)
!2972 = !DILocation(line: 115, column: 7, scope: !2967)
!2973 = !DILocation(line: 120, column: 7, scope: !2967)
!2974 = !DILocation(line: 122, column: 7, scope: !2967)
!2975 = !DILocation(line: 127, column: 7, scope: !2967)
!2976 = !DILocation(line: 129, column: 7, scope: !2967)
!2977 = !DILocation(line: 134, column: 7, scope: !2967)
!2978 = !DILocation(line: 137, column: 7, scope: !2967)
!2979 = !DILocation(line: 142, column: 7, scope: !2967)
!2980 = !DILocation(line: 145, column: 7, scope: !2967)
!2981 = !DILocation(line: 150, column: 7, scope: !2967)
!2982 = !DILocation(line: 154, column: 7, scope: !2967)
!2983 = !DILocation(line: 159, column: 7, scope: !2967)
!2984 = !DILocation(line: 163, column: 7, scope: !2967)
!2985 = !DILocation(line: 170, column: 7, scope: !2967)
!2986 = !DILocation(line: 174, column: 7, scope: !2967)
!2987 = !DILocation(line: 176, column: 1, scope: !2910)
!2988 = distinct !DISubprogram(name: "version_etc_ar", scope: !568, file: !568, line: 183, type: !2989, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !2991)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{null, !2913, !125, !125, !125, !2947}
!2991 = !{!2992, !2993, !2994, !2995, !2996, !2997}
!2992 = !DILocalVariable(name: "stream", arg: 1, scope: !2988, file: !568, line: 183, type: !2913)
!2993 = !DILocalVariable(name: "command_name", arg: 2, scope: !2988, file: !568, line: 184, type: !125)
!2994 = !DILocalVariable(name: "package", arg: 3, scope: !2988, file: !568, line: 184, type: !125)
!2995 = !DILocalVariable(name: "version", arg: 4, scope: !2988, file: !568, line: 185, type: !125)
!2996 = !DILocalVariable(name: "authors", arg: 5, scope: !2988, file: !568, line: 185, type: !2947)
!2997 = !DILocalVariable(name: "n_authors", scope: !2988, file: !568, line: 187, type: !152)
!2998 = !DILocation(line: 0, scope: !2988)
!2999 = !DILocation(line: 189, column: 8, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2988, file: !568, line: 189, column: 3)
!3001 = !DILocation(line: 189, scope: !3000)
!3002 = !DILocation(line: 189, column: 23, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !3000, file: !568, line: 189, column: 3)
!3004 = !DILocation(line: 189, column: 3, scope: !3000)
!3005 = !DILocation(line: 189, column: 52, scope: !3003)
!3006 = distinct !{!3006, !3004, !3007, !860}
!3007 = !DILocation(line: 190, column: 5, scope: !3000)
!3008 = !DILocation(line: 191, column: 3, scope: !2988)
!3009 = !DILocation(line: 192, column: 1, scope: !2988)
!3010 = distinct !DISubprogram(name: "version_etc_va", scope: !568, file: !568, line: 199, type: !3011, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3021)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{null, !2913, !125, !125, !125, !3013}
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3015)
!3015 = !{!3016, !3018, !3019, !3020}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3014, file: !3017, line: 192, baseType: !129, size: 32)
!3017 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3014, file: !3017, line: 192, baseType: !129, size: 32, offset: 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3014, file: !3017, line: 192, baseType: !149, size: 64, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3014, file: !3017, line: 192, baseType: !149, size: 64, offset: 128)
!3021 = !{!3022, !3023, !3024, !3025, !3026, !3027, !3028}
!3022 = !DILocalVariable(name: "stream", arg: 1, scope: !3010, file: !568, line: 199, type: !2913)
!3023 = !DILocalVariable(name: "command_name", arg: 2, scope: !3010, file: !568, line: 200, type: !125)
!3024 = !DILocalVariable(name: "package", arg: 3, scope: !3010, file: !568, line: 200, type: !125)
!3025 = !DILocalVariable(name: "version", arg: 4, scope: !3010, file: !568, line: 201, type: !125)
!3026 = !DILocalVariable(name: "authors", arg: 5, scope: !3010, file: !568, line: 201, type: !3013)
!3027 = !DILocalVariable(name: "n_authors", scope: !3010, file: !568, line: 203, type: !152)
!3028 = !DILocalVariable(name: "authtab", scope: !3010, file: !568, line: 204, type: !3029)
!3029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 640, elements: !96)
!3030 = !DILocation(line: 0, scope: !3010)
!3031 = !DILocation(line: 204, column: 3, scope: !3010)
!3032 = !DILocation(line: 204, column: 15, scope: !3010)
!3033 = !DILocation(line: 208, column: 35, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !568, line: 206, column: 3)
!3035 = distinct !DILexicalBlock(scope: !3010, file: !568, line: 206, column: 3)
!3036 = !DILocation(line: 208, column: 33, scope: !3034)
!3037 = !DILocation(line: 208, column: 67, scope: !3034)
!3038 = !DILocation(line: 206, column: 3, scope: !3035)
!3039 = !DILocation(line: 208, column: 14, scope: !3034)
!3040 = !DILocation(line: 0, scope: !3035)
!3041 = !DILocation(line: 211, column: 3, scope: !3010)
!3042 = !DILocation(line: 213, column: 1, scope: !3010)
!3043 = distinct !DISubprogram(name: "version_etc", scope: !568, file: !568, line: 230, type: !3044, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3046)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{null, !2913, !125, !125, !125, null}
!3046 = !{!3047, !3048, !3049, !3050, !3051}
!3047 = !DILocalVariable(name: "stream", arg: 1, scope: !3043, file: !568, line: 230, type: !2913)
!3048 = !DILocalVariable(name: "command_name", arg: 2, scope: !3043, file: !568, line: 231, type: !125)
!3049 = !DILocalVariable(name: "package", arg: 3, scope: !3043, file: !568, line: 231, type: !125)
!3050 = !DILocalVariable(name: "version", arg: 4, scope: !3043, file: !568, line: 232, type: !125)
!3051 = !DILocalVariable(name: "authors", scope: !3043, file: !568, line: 234, type: !3052)
!3052 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !807, line: 52, baseType: !3053)
!3053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1465, line: 14, baseType: !3054)
!3054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3017, baseType: !3055)
!3055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3014, size: 192, elements: !91)
!3056 = !DILocation(line: 0, scope: !3043)
!3057 = !DILocation(line: 234, column: 3, scope: !3043)
!3058 = !DILocation(line: 234, column: 11, scope: !3043)
!3059 = !DILocation(line: 235, column: 3, scope: !3043)
!3060 = !DILocation(line: 236, column: 3, scope: !3043)
!3061 = !DILocation(line: 237, column: 3, scope: !3043)
!3062 = !DILocation(line: 238, column: 1, scope: !3043)
!3063 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !568, file: !568, line: 241, type: !409, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !796)
!3064 = !DILocation(line: 243, column: 3, scope: !3063)
!3065 = !DILocation(line: 248, column: 3, scope: !3063)
!3066 = !DILocation(line: 254, column: 3, scope: !3063)
!3067 = !DILocation(line: 259, column: 3, scope: !3063)
!3068 = !DILocation(line: 261, column: 1, scope: !3063)
!3069 = distinct !DISubprogram(name: "xnrealloc", scope: !3070, file: !3070, line: 147, type: !3071, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3073)
!3070 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!149, !149, !152, !152}
!3073 = !{!3074, !3075, !3076}
!3074 = !DILocalVariable(name: "p", arg: 1, scope: !3069, file: !3070, line: 147, type: !149)
!3075 = !DILocalVariable(name: "n", arg: 2, scope: !3069, file: !3070, line: 147, type: !152)
!3076 = !DILocalVariable(name: "s", arg: 3, scope: !3069, file: !3070, line: 147, type: !152)
!3077 = !DILocation(line: 0, scope: !3069)
!3078 = !DILocalVariable(name: "p", arg: 1, scope: !3079, file: !703, line: 83, type: !149)
!3079 = distinct !DISubprogram(name: "xreallocarray", scope: !703, file: !703, line: 83, type: !3071, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3080)
!3080 = !{!3078, !3081, !3082}
!3081 = !DILocalVariable(name: "n", arg: 2, scope: !3079, file: !703, line: 83, type: !152)
!3082 = !DILocalVariable(name: "s", arg: 3, scope: !3079, file: !703, line: 83, type: !152)
!3083 = !DILocation(line: 0, scope: !3079, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 149, column: 10, scope: !3069)
!3085 = !DILocation(line: 85, column: 25, scope: !3079, inlinedAt: !3084)
!3086 = !DILocalVariable(name: "p", arg: 1, scope: !3087, file: !703, line: 37, type: !149)
!3087 = distinct !DISubprogram(name: "check_nonnull", scope: !703, file: !703, line: 37, type: !3088, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3090)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!149, !149}
!3090 = !{!3086}
!3091 = !DILocation(line: 0, scope: !3087, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 85, column: 10, scope: !3079, inlinedAt: !3084)
!3093 = !DILocation(line: 39, column: 8, scope: !3094, inlinedAt: !3092)
!3094 = distinct !DILexicalBlock(scope: !3087, file: !703, line: 39, column: 7)
!3095 = !DILocation(line: 39, column: 7, scope: !3087, inlinedAt: !3092)
!3096 = !DILocation(line: 40, column: 5, scope: !3094, inlinedAt: !3092)
!3097 = !DILocation(line: 149, column: 3, scope: !3069)
!3098 = !DILocation(line: 0, scope: !3079)
!3099 = !DILocation(line: 85, column: 25, scope: !3079)
!3100 = !DILocation(line: 0, scope: !3087, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 85, column: 10, scope: !3079)
!3102 = !DILocation(line: 39, column: 8, scope: !3094, inlinedAt: !3101)
!3103 = !DILocation(line: 39, column: 7, scope: !3087, inlinedAt: !3101)
!3104 = !DILocation(line: 40, column: 5, scope: !3094, inlinedAt: !3101)
!3105 = !DILocation(line: 85, column: 3, scope: !3079)
!3106 = distinct !DISubprogram(name: "xmalloc", scope: !703, file: !703, line: 47, type: !3107, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3109)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!149, !152}
!3109 = !{!3110}
!3110 = !DILocalVariable(name: "s", arg: 1, scope: !3106, file: !703, line: 47, type: !152)
!3111 = !DILocation(line: 0, scope: !3106)
!3112 = !DILocation(line: 49, column: 25, scope: !3106)
!3113 = !DILocation(line: 0, scope: !3087, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 49, column: 10, scope: !3106)
!3115 = !DILocation(line: 39, column: 8, scope: !3094, inlinedAt: !3114)
!3116 = !DILocation(line: 39, column: 7, scope: !3087, inlinedAt: !3114)
!3117 = !DILocation(line: 40, column: 5, scope: !3094, inlinedAt: !3114)
!3118 = !DILocation(line: 49, column: 3, scope: !3106)
!3119 = !DISubprogram(name: "malloc", scope: !961, file: !961, line: 540, type: !3107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!3120 = distinct !DISubprogram(name: "ximalloc", scope: !703, file: !703, line: 53, type: !3121, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3123)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!149, !722}
!3123 = !{!3124}
!3124 = !DILocalVariable(name: "s", arg: 1, scope: !3120, file: !703, line: 53, type: !722)
!3125 = !DILocation(line: 0, scope: !3120)
!3126 = !DILocalVariable(name: "s", arg: 1, scope: !3127, file: !3128, line: 55, type: !722)
!3127 = distinct !DISubprogram(name: "imalloc", scope: !3128, file: !3128, line: 55, type: !3121, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3129)
!3128 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3129 = !{!3126}
!3130 = !DILocation(line: 0, scope: !3127, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 55, column: 25, scope: !3120)
!3132 = !DILocation(line: 57, column: 26, scope: !3127, inlinedAt: !3131)
!3133 = !DILocation(line: 0, scope: !3087, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 55, column: 10, scope: !3120)
!3135 = !DILocation(line: 39, column: 8, scope: !3094, inlinedAt: !3134)
!3136 = !DILocation(line: 39, column: 7, scope: !3087, inlinedAt: !3134)
!3137 = !DILocation(line: 40, column: 5, scope: !3094, inlinedAt: !3134)
!3138 = !DILocation(line: 55, column: 3, scope: !3120)
!3139 = distinct !DISubprogram(name: "xcharalloc", scope: !703, file: !703, line: 59, type: !3140, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3142)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!148, !152}
!3142 = !{!3143}
!3143 = !DILocalVariable(name: "n", arg: 1, scope: !3139, file: !703, line: 59, type: !152)
!3144 = !DILocation(line: 0, scope: !3139)
!3145 = !DILocation(line: 0, scope: !3106, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 61, column: 10, scope: !3139)
!3147 = !DILocation(line: 49, column: 25, scope: !3106, inlinedAt: !3146)
!3148 = !DILocation(line: 0, scope: !3087, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 49, column: 10, scope: !3106, inlinedAt: !3146)
!3150 = !DILocation(line: 39, column: 8, scope: !3094, inlinedAt: !3149)
!3151 = !DILocation(line: 39, column: 7, scope: !3087, inlinedAt: !3149)
!3152 = !DILocation(line: 40, column: 5, scope: !3094, inlinedAt: !3149)
!3153 = !DILocation(line: 61, column: 3, scope: !3139)
!3154 = distinct !DISubprogram(name: "xrealloc", scope: !703, file: !703, line: 68, type: !3155, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3157)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!149, !149, !152}
!3157 = !{!3158, !3159}
!3158 = !DILocalVariable(name: "p", arg: 1, scope: !3154, file: !703, line: 68, type: !149)
!3159 = !DILocalVariable(name: "s", arg: 2, scope: !3154, file: !703, line: 68, type: !152)
!3160 = !DILocation(line: 0, scope: !3154)
!3161 = !DILocalVariable(name: "ptr", arg: 1, scope: !3162, file: !3163, line: 2057, type: !149)
!3162 = distinct !DISubprogram(name: "rpl_realloc", scope: !3163, file: !3163, line: 2057, type: !3155, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3164)
!3163 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3164 = !{!3161, !3165}
!3165 = !DILocalVariable(name: "size", arg: 2, scope: !3162, file: !3163, line: 2057, type: !152)
!3166 = !DILocation(line: 0, scope: !3162, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 70, column: 25, scope: !3154)
!3168 = !DILocation(line: 2059, column: 24, scope: !3162, inlinedAt: !3167)
!3169 = !DILocation(line: 2059, column: 10, scope: !3162, inlinedAt: !3167)
!3170 = !DILocation(line: 0, scope: !3087, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 70, column: 10, scope: !3154)
!3172 = !DILocation(line: 39, column: 8, scope: !3094, inlinedAt: !3171)
!3173 = !DILocation(line: 39, column: 7, scope: !3087, inlinedAt: !3171)
!3174 = !DILocation(line: 40, column: 5, scope: !3094, inlinedAt: !3171)
!3175 = !DILocation(line: 70, column: 3, scope: !3154)
!3176 = !DISubprogram(name: "realloc", scope: !961, file: !961, line: 551, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!3177 = distinct !DISubprogram(name: "xirealloc", scope: !703, file: !703, line: 74, type: !3178, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3180)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!149, !149, !722}
!3180 = !{!3181, !3182}
!3181 = !DILocalVariable(name: "p", arg: 1, scope: !3177, file: !703, line: 74, type: !149)
!3182 = !DILocalVariable(name: "s", arg: 2, scope: !3177, file: !703, line: 74, type: !722)
!3183 = !DILocation(line: 0, scope: !3177)
!3184 = !DILocalVariable(name: "p", arg: 1, scope: !3185, file: !3128, line: 66, type: !149)
!3185 = distinct !DISubprogram(name: "irealloc", scope: !3128, file: !3128, line: 66, type: !3178, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3186)
!3186 = !{!3184, !3187}
!3187 = !DILocalVariable(name: "s", arg: 2, scope: !3185, file: !3128, line: 66, type: !722)
!3188 = !DILocation(line: 0, scope: !3185, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 76, column: 25, scope: !3177)
!3190 = !DILocation(line: 0, scope: !3162, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 68, column: 26, scope: !3185, inlinedAt: !3189)
!3192 = !DILocation(line: 2059, column: 24, scope: !3162, inlinedAt: !3191)
!3193 = !DILocation(line: 2059, column: 10, scope: !3162, inlinedAt: !3191)
!3194 = !DILocation(line: 0, scope: !3087, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 76, column: 10, scope: !3177)
!3196 = !DILocation(line: 39, column: 8, scope: !3094, inlinedAt: !3195)
!3197 = !DILocation(line: 39, column: 7, scope: !3087, inlinedAt: !3195)
!3198 = !DILocation(line: 40, column: 5, scope: !3094, inlinedAt: !3195)
!3199 = !DILocation(line: 76, column: 3, scope: !3177)
!3200 = distinct !DISubprogram(name: "xireallocarray", scope: !703, file: !703, line: 89, type: !3201, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3203)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!149, !149, !722, !722}
!3203 = !{!3204, !3205, !3206}
!3204 = !DILocalVariable(name: "p", arg: 1, scope: !3200, file: !703, line: 89, type: !149)
!3205 = !DILocalVariable(name: "n", arg: 2, scope: !3200, file: !703, line: 89, type: !722)
!3206 = !DILocalVariable(name: "s", arg: 3, scope: !3200, file: !703, line: 89, type: !722)
!3207 = !DILocation(line: 0, scope: !3200)
!3208 = !DILocalVariable(name: "p", arg: 1, scope: !3209, file: !3128, line: 98, type: !149)
!3209 = distinct !DISubprogram(name: "ireallocarray", scope: !3128, file: !3128, line: 98, type: !3201, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3210)
!3210 = !{!3208, !3211, !3212}
!3211 = !DILocalVariable(name: "n", arg: 2, scope: !3209, file: !3128, line: 98, type: !722)
!3212 = !DILocalVariable(name: "s", arg: 3, scope: !3209, file: !3128, line: 98, type: !722)
!3213 = !DILocation(line: 0, scope: !3209, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 91, column: 25, scope: !3200)
!3215 = !DILocation(line: 101, column: 13, scope: !3209, inlinedAt: !3214)
!3216 = !DILocation(line: 0, scope: !3087, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 91, column: 10, scope: !3200)
!3218 = !DILocation(line: 39, column: 8, scope: !3094, inlinedAt: !3217)
!3219 = !DILocation(line: 39, column: 7, scope: !3087, inlinedAt: !3217)
!3220 = !DILocation(line: 40, column: 5, scope: !3094, inlinedAt: !3217)
!3221 = !DILocation(line: 91, column: 3, scope: !3200)
!3222 = distinct !DISubprogram(name: "xnmalloc", scope: !703, file: !703, line: 98, type: !3223, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3225)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!149, !152, !152}
!3225 = !{!3226, !3227}
!3226 = !DILocalVariable(name: "n", arg: 1, scope: !3222, file: !703, line: 98, type: !152)
!3227 = !DILocalVariable(name: "s", arg: 2, scope: !3222, file: !703, line: 98, type: !152)
!3228 = !DILocation(line: 0, scope: !3222)
!3229 = !DILocation(line: 0, scope: !3079, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 100, column: 10, scope: !3222)
!3231 = !DILocation(line: 85, column: 25, scope: !3079, inlinedAt: !3230)
!3232 = !DILocation(line: 0, scope: !3087, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 85, column: 10, scope: !3079, inlinedAt: !3230)
!3234 = !DILocation(line: 39, column: 8, scope: !3094, inlinedAt: !3233)
!3235 = !DILocation(line: 39, column: 7, scope: !3087, inlinedAt: !3233)
!3236 = !DILocation(line: 40, column: 5, scope: !3094, inlinedAt: !3233)
!3237 = !DILocation(line: 100, column: 3, scope: !3222)
!3238 = distinct !DISubprogram(name: "xinmalloc", scope: !703, file: !703, line: 104, type: !3239, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3241)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!149, !722, !722}
!3241 = !{!3242, !3243}
!3242 = !DILocalVariable(name: "n", arg: 1, scope: !3238, file: !703, line: 104, type: !722)
!3243 = !DILocalVariable(name: "s", arg: 2, scope: !3238, file: !703, line: 104, type: !722)
!3244 = !DILocation(line: 0, scope: !3238)
!3245 = !DILocation(line: 0, scope: !3200, inlinedAt: !3246)
!3246 = distinct !DILocation(line: 106, column: 10, scope: !3238)
!3247 = !DILocation(line: 0, scope: !3209, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 91, column: 25, scope: !3200, inlinedAt: !3246)
!3249 = !DILocation(line: 101, column: 13, scope: !3209, inlinedAt: !3248)
!3250 = !DILocation(line: 0, scope: !3087, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 91, column: 10, scope: !3200, inlinedAt: !3246)
!3252 = !DILocation(line: 39, column: 8, scope: !3094, inlinedAt: !3251)
!3253 = !DILocation(line: 39, column: 7, scope: !3087, inlinedAt: !3251)
!3254 = !DILocation(line: 40, column: 5, scope: !3094, inlinedAt: !3251)
!3255 = !DILocation(line: 106, column: 3, scope: !3238)
!3256 = distinct !DISubprogram(name: "x2realloc", scope: !703, file: !703, line: 116, type: !3257, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3259)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!149, !149, !709}
!3259 = !{!3260, !3261}
!3260 = !DILocalVariable(name: "p", arg: 1, scope: !3256, file: !703, line: 116, type: !149)
!3261 = !DILocalVariable(name: "ps", arg: 2, scope: !3256, file: !703, line: 116, type: !709)
!3262 = !DILocation(line: 0, scope: !3256)
!3263 = !DILocation(line: 0, scope: !706, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 118, column: 10, scope: !3256)
!3265 = !DILocation(line: 178, column: 14, scope: !706, inlinedAt: !3264)
!3266 = !DILocation(line: 180, column: 9, scope: !3267, inlinedAt: !3264)
!3267 = distinct !DILexicalBlock(scope: !706, file: !703, line: 180, column: 7)
!3268 = !DILocation(line: 180, column: 7, scope: !706, inlinedAt: !3264)
!3269 = !DILocation(line: 182, column: 13, scope: !3270, inlinedAt: !3264)
!3270 = distinct !DILexicalBlock(scope: !3271, file: !703, line: 182, column: 11)
!3271 = distinct !DILexicalBlock(scope: !3267, file: !703, line: 181, column: 5)
!3272 = !DILocation(line: 182, column: 11, scope: !3271, inlinedAt: !3264)
!3273 = !DILocation(line: 197, column: 11, scope: !3274, inlinedAt: !3264)
!3274 = distinct !DILexicalBlock(scope: !3275, file: !703, line: 197, column: 11)
!3275 = distinct !DILexicalBlock(scope: !3267, file: !703, line: 195, column: 5)
!3276 = !DILocation(line: 197, column: 11, scope: !3275, inlinedAt: !3264)
!3277 = !DILocation(line: 198, column: 9, scope: !3274, inlinedAt: !3264)
!3278 = !DILocation(line: 0, scope: !3079, inlinedAt: !3279)
!3279 = distinct !DILocation(line: 201, column: 7, scope: !706, inlinedAt: !3264)
!3280 = !DILocation(line: 85, column: 25, scope: !3079, inlinedAt: !3279)
!3281 = !DILocation(line: 0, scope: !3087, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 85, column: 10, scope: !3079, inlinedAt: !3279)
!3283 = !DILocation(line: 39, column: 8, scope: !3094, inlinedAt: !3282)
!3284 = !DILocation(line: 39, column: 7, scope: !3087, inlinedAt: !3282)
!3285 = !DILocation(line: 40, column: 5, scope: !3094, inlinedAt: !3282)
!3286 = !DILocation(line: 202, column: 7, scope: !706, inlinedAt: !3264)
!3287 = !DILocation(line: 118, column: 3, scope: !3256)
!3288 = !DILocation(line: 0, scope: !706)
!3289 = !DILocation(line: 178, column: 14, scope: !706)
!3290 = !DILocation(line: 180, column: 9, scope: !3267)
!3291 = !DILocation(line: 180, column: 7, scope: !706)
!3292 = !DILocation(line: 182, column: 13, scope: !3270)
!3293 = !DILocation(line: 182, column: 11, scope: !3271)
!3294 = !DILocation(line: 190, column: 30, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3270, file: !703, line: 183, column: 9)
!3296 = !DILocation(line: 191, column: 16, scope: !3295)
!3297 = !DILocation(line: 191, column: 13, scope: !3295)
!3298 = !DILocation(line: 192, column: 9, scope: !3295)
!3299 = !DILocation(line: 197, column: 11, scope: !3274)
!3300 = !DILocation(line: 197, column: 11, scope: !3275)
!3301 = !DILocation(line: 198, column: 9, scope: !3274)
!3302 = !DILocation(line: 0, scope: !3079, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 201, column: 7, scope: !706)
!3304 = !DILocation(line: 85, column: 25, scope: !3079, inlinedAt: !3303)
!3305 = !DILocation(line: 0, scope: !3087, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 85, column: 10, scope: !3079, inlinedAt: !3303)
!3307 = !DILocation(line: 39, column: 8, scope: !3094, inlinedAt: !3306)
!3308 = !DILocation(line: 39, column: 7, scope: !3087, inlinedAt: !3306)
!3309 = !DILocation(line: 40, column: 5, scope: !3094, inlinedAt: !3306)
!3310 = !DILocation(line: 202, column: 7, scope: !706)
!3311 = !DILocation(line: 203, column: 3, scope: !706)
!3312 = !DILocation(line: 0, scope: !718)
!3313 = !DILocation(line: 230, column: 14, scope: !718)
!3314 = !DILocation(line: 238, column: 7, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !718, file: !703, line: 238, column: 7)
!3316 = !DILocation(line: 238, column: 7, scope: !718)
!3317 = !DILocation(line: 240, column: 9, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !718, file: !703, line: 240, column: 7)
!3319 = !DILocation(line: 240, column: 18, scope: !3318)
!3320 = !DILocation(line: 253, column: 8, scope: !718)
!3321 = !DILocation(line: 258, column: 27, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3323, file: !703, line: 257, column: 5)
!3323 = distinct !DILexicalBlock(scope: !718, file: !703, line: 256, column: 7)
!3324 = !DILocation(line: 259, column: 50, scope: !3322)
!3325 = !DILocation(line: 259, column: 32, scope: !3322)
!3326 = !DILocation(line: 260, column: 5, scope: !3322)
!3327 = !DILocation(line: 262, column: 9, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !718, file: !703, line: 262, column: 7)
!3329 = !DILocation(line: 262, column: 7, scope: !718)
!3330 = !DILocation(line: 263, column: 9, scope: !3328)
!3331 = !DILocation(line: 263, column: 5, scope: !3328)
!3332 = !DILocation(line: 264, column: 9, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !718, file: !703, line: 264, column: 7)
!3334 = !DILocation(line: 264, column: 14, scope: !3333)
!3335 = !DILocation(line: 265, column: 7, scope: !3333)
!3336 = !DILocation(line: 265, column: 11, scope: !3333)
!3337 = !DILocation(line: 266, column: 11, scope: !3333)
!3338 = !DILocation(line: 267, column: 14, scope: !3333)
!3339 = !DILocation(line: 264, column: 7, scope: !718)
!3340 = !DILocation(line: 268, column: 5, scope: !3333)
!3341 = !DILocation(line: 0, scope: !3154, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 269, column: 8, scope: !718)
!3343 = !DILocation(line: 0, scope: !3162, inlinedAt: !3344)
!3344 = distinct !DILocation(line: 70, column: 25, scope: !3154, inlinedAt: !3342)
!3345 = !DILocation(line: 2059, column: 24, scope: !3162, inlinedAt: !3344)
!3346 = !DILocation(line: 2059, column: 10, scope: !3162, inlinedAt: !3344)
!3347 = !DILocation(line: 0, scope: !3087, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 70, column: 10, scope: !3154, inlinedAt: !3342)
!3349 = !DILocation(line: 39, column: 8, scope: !3094, inlinedAt: !3348)
!3350 = !DILocation(line: 39, column: 7, scope: !3087, inlinedAt: !3348)
!3351 = !DILocation(line: 40, column: 5, scope: !3094, inlinedAt: !3348)
!3352 = !DILocation(line: 270, column: 7, scope: !718)
!3353 = !DILocation(line: 271, column: 3, scope: !718)
!3354 = distinct !DISubprogram(name: "xzalloc", scope: !703, file: !703, line: 279, type: !3107, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3355)
!3355 = !{!3356}
!3356 = !DILocalVariable(name: "s", arg: 1, scope: !3354, file: !703, line: 279, type: !152)
!3357 = !DILocation(line: 0, scope: !3354)
!3358 = !DILocalVariable(name: "n", arg: 1, scope: !3359, file: !703, line: 294, type: !152)
!3359 = distinct !DISubprogram(name: "xcalloc", scope: !703, file: !703, line: 294, type: !3223, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3360)
!3360 = !{!3358, !3361}
!3361 = !DILocalVariable(name: "s", arg: 2, scope: !3359, file: !703, line: 294, type: !152)
!3362 = !DILocation(line: 0, scope: !3359, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 281, column: 10, scope: !3354)
!3364 = !DILocation(line: 296, column: 25, scope: !3359, inlinedAt: !3363)
!3365 = !DILocation(line: 0, scope: !3087, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 296, column: 10, scope: !3359, inlinedAt: !3363)
!3367 = !DILocation(line: 39, column: 8, scope: !3094, inlinedAt: !3366)
!3368 = !DILocation(line: 39, column: 7, scope: !3087, inlinedAt: !3366)
!3369 = !DILocation(line: 40, column: 5, scope: !3094, inlinedAt: !3366)
!3370 = !DILocation(line: 281, column: 3, scope: !3354)
!3371 = !DISubprogram(name: "calloc", scope: !961, file: !961, line: 543, type: !3223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!3372 = !DILocation(line: 0, scope: !3359)
!3373 = !DILocation(line: 296, column: 25, scope: !3359)
!3374 = !DILocation(line: 0, scope: !3087, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 296, column: 10, scope: !3359)
!3376 = !DILocation(line: 39, column: 8, scope: !3094, inlinedAt: !3375)
!3377 = !DILocation(line: 39, column: 7, scope: !3087, inlinedAt: !3375)
!3378 = !DILocation(line: 40, column: 5, scope: !3094, inlinedAt: !3375)
!3379 = !DILocation(line: 296, column: 3, scope: !3359)
!3380 = distinct !DISubprogram(name: "xizalloc", scope: !703, file: !703, line: 285, type: !3121, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3381)
!3381 = !{!3382}
!3382 = !DILocalVariable(name: "s", arg: 1, scope: !3380, file: !703, line: 285, type: !722)
!3383 = !DILocation(line: 0, scope: !3380)
!3384 = !DILocalVariable(name: "n", arg: 1, scope: !3385, file: !703, line: 300, type: !722)
!3385 = distinct !DISubprogram(name: "xicalloc", scope: !703, file: !703, line: 300, type: !3239, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3386)
!3386 = !{!3384, !3387}
!3387 = !DILocalVariable(name: "s", arg: 2, scope: !3385, file: !703, line: 300, type: !722)
!3388 = !DILocation(line: 0, scope: !3385, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 287, column: 10, scope: !3380)
!3390 = !DILocalVariable(name: "n", arg: 1, scope: !3391, file: !3128, line: 77, type: !722)
!3391 = distinct !DISubprogram(name: "icalloc", scope: !3128, file: !3128, line: 77, type: !3239, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3392)
!3392 = !{!3390, !3393}
!3393 = !DILocalVariable(name: "s", arg: 2, scope: !3391, file: !3128, line: 77, type: !722)
!3394 = !DILocation(line: 0, scope: !3391, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 302, column: 25, scope: !3385, inlinedAt: !3389)
!3396 = !DILocation(line: 91, column: 10, scope: !3391, inlinedAt: !3395)
!3397 = !DILocation(line: 0, scope: !3087, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 302, column: 10, scope: !3385, inlinedAt: !3389)
!3399 = !DILocation(line: 39, column: 8, scope: !3094, inlinedAt: !3398)
!3400 = !DILocation(line: 39, column: 7, scope: !3087, inlinedAt: !3398)
!3401 = !DILocation(line: 40, column: 5, scope: !3094, inlinedAt: !3398)
!3402 = !DILocation(line: 287, column: 3, scope: !3380)
!3403 = !DILocation(line: 0, scope: !3385)
!3404 = !DILocation(line: 0, scope: !3391, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 302, column: 25, scope: !3385)
!3406 = !DILocation(line: 91, column: 10, scope: !3391, inlinedAt: !3405)
!3407 = !DILocation(line: 0, scope: !3087, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 302, column: 10, scope: !3385)
!3409 = !DILocation(line: 39, column: 8, scope: !3094, inlinedAt: !3408)
!3410 = !DILocation(line: 39, column: 7, scope: !3087, inlinedAt: !3408)
!3411 = !DILocation(line: 40, column: 5, scope: !3094, inlinedAt: !3408)
!3412 = !DILocation(line: 302, column: 3, scope: !3385)
!3413 = distinct !DISubprogram(name: "xmemdup", scope: !703, file: !703, line: 310, type: !3414, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3416)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!149, !993, !152}
!3416 = !{!3417, !3418}
!3417 = !DILocalVariable(name: "p", arg: 1, scope: !3413, file: !703, line: 310, type: !993)
!3418 = !DILocalVariable(name: "s", arg: 2, scope: !3413, file: !703, line: 310, type: !152)
!3419 = !DILocation(line: 0, scope: !3413)
!3420 = !DILocation(line: 0, scope: !3106, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 312, column: 18, scope: !3413)
!3422 = !DILocation(line: 49, column: 25, scope: !3106, inlinedAt: !3421)
!3423 = !DILocation(line: 0, scope: !3087, inlinedAt: !3424)
!3424 = distinct !DILocation(line: 49, column: 10, scope: !3106, inlinedAt: !3421)
!3425 = !DILocation(line: 39, column: 8, scope: !3094, inlinedAt: !3424)
!3426 = !DILocation(line: 39, column: 7, scope: !3087, inlinedAt: !3424)
!3427 = !DILocation(line: 40, column: 5, scope: !3094, inlinedAt: !3424)
!3428 = !DILocalVariable(name: "__dest", arg: 1, scope: !3429, file: !1581, line: 26, type: !3432)
!3429 = distinct !DISubprogram(name: "memcpy", scope: !1581, file: !1581, line: 26, type: !3430, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3433)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!149, !3432, !992, !152}
!3432 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !149)
!3433 = !{!3428, !3434, !3435}
!3434 = !DILocalVariable(name: "__src", arg: 2, scope: !3429, file: !1581, line: 26, type: !992)
!3435 = !DILocalVariable(name: "__len", arg: 3, scope: !3429, file: !1581, line: 26, type: !152)
!3436 = !DILocation(line: 0, scope: !3429, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 312, column: 10, scope: !3413)
!3438 = !DILocation(line: 29, column: 10, scope: !3429, inlinedAt: !3437)
!3439 = !DILocation(line: 312, column: 3, scope: !3413)
!3440 = distinct !DISubprogram(name: "ximemdup", scope: !703, file: !703, line: 316, type: !3441, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3443)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!149, !993, !722}
!3443 = !{!3444, !3445}
!3444 = !DILocalVariable(name: "p", arg: 1, scope: !3440, file: !703, line: 316, type: !993)
!3445 = !DILocalVariable(name: "s", arg: 2, scope: !3440, file: !703, line: 316, type: !722)
!3446 = !DILocation(line: 0, scope: !3440)
!3447 = !DILocation(line: 0, scope: !3120, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 318, column: 18, scope: !3440)
!3449 = !DILocation(line: 0, scope: !3127, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 55, column: 25, scope: !3120, inlinedAt: !3448)
!3451 = !DILocation(line: 57, column: 26, scope: !3127, inlinedAt: !3450)
!3452 = !DILocation(line: 0, scope: !3087, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 55, column: 10, scope: !3120, inlinedAt: !3448)
!3454 = !DILocation(line: 39, column: 8, scope: !3094, inlinedAt: !3453)
!3455 = !DILocation(line: 39, column: 7, scope: !3087, inlinedAt: !3453)
!3456 = !DILocation(line: 40, column: 5, scope: !3094, inlinedAt: !3453)
!3457 = !DILocation(line: 0, scope: !3429, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 318, column: 10, scope: !3440)
!3459 = !DILocation(line: 29, column: 10, scope: !3429, inlinedAt: !3458)
!3460 = !DILocation(line: 318, column: 3, scope: !3440)
!3461 = distinct !DISubprogram(name: "ximemdup0", scope: !703, file: !703, line: 325, type: !3462, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3464)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!148, !993, !722}
!3464 = !{!3465, !3466, !3467}
!3465 = !DILocalVariable(name: "p", arg: 1, scope: !3461, file: !703, line: 325, type: !993)
!3466 = !DILocalVariable(name: "s", arg: 2, scope: !3461, file: !703, line: 325, type: !722)
!3467 = !DILocalVariable(name: "result", scope: !3461, file: !703, line: 327, type: !148)
!3468 = !DILocation(line: 0, scope: !3461)
!3469 = !DILocation(line: 327, column: 30, scope: !3461)
!3470 = !DILocation(line: 0, scope: !3120, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 327, column: 18, scope: !3461)
!3472 = !DILocation(line: 0, scope: !3127, inlinedAt: !3473)
!3473 = distinct !DILocation(line: 55, column: 25, scope: !3120, inlinedAt: !3471)
!3474 = !DILocation(line: 57, column: 26, scope: !3127, inlinedAt: !3473)
!3475 = !DILocation(line: 0, scope: !3087, inlinedAt: !3476)
!3476 = distinct !DILocation(line: 55, column: 10, scope: !3120, inlinedAt: !3471)
!3477 = !DILocation(line: 39, column: 8, scope: !3094, inlinedAt: !3476)
!3478 = !DILocation(line: 39, column: 7, scope: !3087, inlinedAt: !3476)
!3479 = !DILocation(line: 40, column: 5, scope: !3094, inlinedAt: !3476)
!3480 = !DILocation(line: 328, column: 3, scope: !3461)
!3481 = !DILocation(line: 328, column: 13, scope: !3461)
!3482 = !DILocation(line: 0, scope: !3429, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 329, column: 10, scope: !3461)
!3484 = !DILocation(line: 29, column: 10, scope: !3429, inlinedAt: !3483)
!3485 = !DILocation(line: 329, column: 3, scope: !3461)
!3486 = distinct !DISubprogram(name: "xstrdup", scope: !703, file: !703, line: 335, type: !971, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3487)
!3487 = !{!3488}
!3488 = !DILocalVariable(name: "string", arg: 1, scope: !3486, file: !703, line: 335, type: !125)
!3489 = !DILocation(line: 0, scope: !3486)
!3490 = !DILocation(line: 337, column: 27, scope: !3486)
!3491 = !DILocation(line: 337, column: 43, scope: !3486)
!3492 = !DILocation(line: 0, scope: !3413, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 337, column: 10, scope: !3486)
!3494 = !DILocation(line: 0, scope: !3106, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 312, column: 18, scope: !3413, inlinedAt: !3493)
!3496 = !DILocation(line: 49, column: 25, scope: !3106, inlinedAt: !3495)
!3497 = !DILocation(line: 0, scope: !3087, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 49, column: 10, scope: !3106, inlinedAt: !3495)
!3499 = !DILocation(line: 39, column: 8, scope: !3094, inlinedAt: !3498)
!3500 = !DILocation(line: 39, column: 7, scope: !3087, inlinedAt: !3498)
!3501 = !DILocation(line: 40, column: 5, scope: !3094, inlinedAt: !3498)
!3502 = !DILocation(line: 0, scope: !3429, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 312, column: 10, scope: !3413, inlinedAt: !3493)
!3504 = !DILocation(line: 29, column: 10, scope: !3429, inlinedAt: !3503)
!3505 = !DILocation(line: 337, column: 3, scope: !3486)
!3506 = distinct !DISubprogram(name: "xalloc_die", scope: !667, file: !667, line: 32, type: !409, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3507)
!3507 = !{!3508}
!3508 = !DILocalVariable(name: "__errstatus", scope: !3509, file: !667, line: 34, type: !3510)
!3509 = distinct !DILexicalBlock(scope: !3506, file: !667, line: 34, column: 3)
!3510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!3511 = !DILocation(line: 34, column: 3, scope: !3509)
!3512 = !DILocation(line: 0, scope: !3509)
!3513 = !DILocation(line: 40, column: 3, scope: !3506)
!3514 = distinct !DISubprogram(name: "close_stream", scope: !739, file: !739, line: 55, type: !3515, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3551)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!150, !3517}
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !281, line: 7, baseType: !3519)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !283, line: 49, size: 1728, elements: !3520)
!3520 = !{!3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3519, file: !283, line: 51, baseType: !150, size: 32)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3519, file: !283, line: 54, baseType: !148, size: 64, offset: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3519, file: !283, line: 55, baseType: !148, size: 64, offset: 128)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3519, file: !283, line: 56, baseType: !148, size: 64, offset: 192)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3519, file: !283, line: 57, baseType: !148, size: 64, offset: 256)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3519, file: !283, line: 58, baseType: !148, size: 64, offset: 320)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3519, file: !283, line: 59, baseType: !148, size: 64, offset: 384)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3519, file: !283, line: 60, baseType: !148, size: 64, offset: 448)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3519, file: !283, line: 61, baseType: !148, size: 64, offset: 512)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3519, file: !283, line: 64, baseType: !148, size: 64, offset: 576)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3519, file: !283, line: 65, baseType: !148, size: 64, offset: 640)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3519, file: !283, line: 66, baseType: !148, size: 64, offset: 704)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3519, file: !283, line: 68, baseType: !298, size: 64, offset: 768)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3519, file: !283, line: 70, baseType: !3535, size: 64, offset: 832)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3519, file: !283, line: 72, baseType: !150, size: 32, offset: 896)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3519, file: !283, line: 73, baseType: !150, size: 32, offset: 928)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3519, file: !283, line: 74, baseType: !305, size: 64, offset: 960)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3519, file: !283, line: 77, baseType: !151, size: 16, offset: 1024)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3519, file: !283, line: 78, baseType: !310, size: 8, offset: 1040)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3519, file: !283, line: 79, baseType: !90, size: 8, offset: 1048)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3519, file: !283, line: 81, baseType: !313, size: 64, offset: 1088)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3519, file: !283, line: 89, baseType: !316, size: 64, offset: 1152)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3519, file: !283, line: 91, baseType: !318, size: 64, offset: 1216)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3519, file: !283, line: 92, baseType: !321, size: 64, offset: 1280)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3519, file: !283, line: 93, baseType: !3535, size: 64, offset: 1344)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3519, file: !283, line: 94, baseType: !149, size: 64, offset: 1408)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3519, file: !283, line: 95, baseType: !152, size: 64, offset: 1472)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3519, file: !283, line: 96, baseType: !150, size: 32, offset: 1536)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3519, file: !283, line: 98, baseType: !328, size: 160, offset: 1568)
!3551 = !{!3552, !3553, !3555, !3556}
!3552 = !DILocalVariable(name: "stream", arg: 1, scope: !3514, file: !739, line: 55, type: !3517)
!3553 = !DILocalVariable(name: "some_pending", scope: !3514, file: !739, line: 57, type: !3554)
!3554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!3555 = !DILocalVariable(name: "prev_fail", scope: !3514, file: !739, line: 58, type: !3554)
!3556 = !DILocalVariable(name: "fclose_fail", scope: !3514, file: !739, line: 59, type: !3554)
!3557 = !DILocation(line: 0, scope: !3514)
!3558 = !DILocation(line: 57, column: 30, scope: !3514)
!3559 = !DILocalVariable(name: "__stream", arg: 1, scope: !3560, file: !1203, line: 135, type: !3517)
!3560 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1203, file: !1203, line: 135, type: !3515, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3561)
!3561 = !{!3559}
!3562 = !DILocation(line: 0, scope: !3560, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 58, column: 27, scope: !3514)
!3564 = !DILocation(line: 137, column: 10, scope: !3560, inlinedAt: !3563)
!3565 = !{!1211, !814, i64 0}
!3566 = !DILocation(line: 58, column: 43, scope: !3514)
!3567 = !DILocation(line: 59, column: 29, scope: !3514)
!3568 = !DILocation(line: 59, column: 45, scope: !3514)
!3569 = !DILocation(line: 69, column: 17, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3514, file: !739, line: 69, column: 7)
!3571 = !DILocation(line: 57, column: 50, scope: !3514)
!3572 = !DILocation(line: 69, column: 33, scope: !3570)
!3573 = !DILocation(line: 69, column: 53, scope: !3570)
!3574 = !DILocation(line: 69, column: 59, scope: !3570)
!3575 = !DILocation(line: 69, column: 7, scope: !3514)
!3576 = !DILocation(line: 71, column: 11, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3570, file: !739, line: 70, column: 5)
!3578 = !DILocation(line: 72, column: 9, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3577, file: !739, line: 71, column: 11)
!3580 = !DILocation(line: 72, column: 15, scope: !3579)
!3581 = !DILocation(line: 77, column: 1, scope: !3514)
!3582 = !DISubprogram(name: "__fpending", scope: !3583, file: !3583, line: 75, type: !3584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!3583 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!152, !3517}
!3586 = distinct !DISubprogram(name: "rpl_fclose", scope: !741, file: !741, line: 58, type: !3587, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3623)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!150, !3589}
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !281, line: 7, baseType: !3591)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !283, line: 49, size: 1728, elements: !3592)
!3592 = !{!3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3591, file: !283, line: 51, baseType: !150, size: 32)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3591, file: !283, line: 54, baseType: !148, size: 64, offset: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3591, file: !283, line: 55, baseType: !148, size: 64, offset: 128)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3591, file: !283, line: 56, baseType: !148, size: 64, offset: 192)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3591, file: !283, line: 57, baseType: !148, size: 64, offset: 256)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3591, file: !283, line: 58, baseType: !148, size: 64, offset: 320)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3591, file: !283, line: 59, baseType: !148, size: 64, offset: 384)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3591, file: !283, line: 60, baseType: !148, size: 64, offset: 448)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3591, file: !283, line: 61, baseType: !148, size: 64, offset: 512)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3591, file: !283, line: 64, baseType: !148, size: 64, offset: 576)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3591, file: !283, line: 65, baseType: !148, size: 64, offset: 640)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3591, file: !283, line: 66, baseType: !148, size: 64, offset: 704)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3591, file: !283, line: 68, baseType: !298, size: 64, offset: 768)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3591, file: !283, line: 70, baseType: !3607, size: 64, offset: 832)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3591, file: !283, line: 72, baseType: !150, size: 32, offset: 896)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3591, file: !283, line: 73, baseType: !150, size: 32, offset: 928)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3591, file: !283, line: 74, baseType: !305, size: 64, offset: 960)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3591, file: !283, line: 77, baseType: !151, size: 16, offset: 1024)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3591, file: !283, line: 78, baseType: !310, size: 8, offset: 1040)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3591, file: !283, line: 79, baseType: !90, size: 8, offset: 1048)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3591, file: !283, line: 81, baseType: !313, size: 64, offset: 1088)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3591, file: !283, line: 89, baseType: !316, size: 64, offset: 1152)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3591, file: !283, line: 91, baseType: !318, size: 64, offset: 1216)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3591, file: !283, line: 92, baseType: !321, size: 64, offset: 1280)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3591, file: !283, line: 93, baseType: !3607, size: 64, offset: 1344)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3591, file: !283, line: 94, baseType: !149, size: 64, offset: 1408)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3591, file: !283, line: 95, baseType: !152, size: 64, offset: 1472)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3591, file: !283, line: 96, baseType: !150, size: 32, offset: 1536)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3591, file: !283, line: 98, baseType: !328, size: 160, offset: 1568)
!3623 = !{!3624, !3625, !3626, !3627}
!3624 = !DILocalVariable(name: "fp", arg: 1, scope: !3586, file: !741, line: 58, type: !3589)
!3625 = !DILocalVariable(name: "saved_errno", scope: !3586, file: !741, line: 60, type: !150)
!3626 = !DILocalVariable(name: "fd", scope: !3586, file: !741, line: 63, type: !150)
!3627 = !DILocalVariable(name: "result", scope: !3586, file: !741, line: 74, type: !150)
!3628 = !DILocation(line: 0, scope: !3586)
!3629 = !DILocation(line: 63, column: 12, scope: !3586)
!3630 = !DILocation(line: 64, column: 10, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3586, file: !741, line: 64, column: 7)
!3632 = !DILocation(line: 64, column: 7, scope: !3586)
!3633 = !DILocation(line: 65, column: 12, scope: !3631)
!3634 = !DILocation(line: 65, column: 5, scope: !3631)
!3635 = !DILocation(line: 70, column: 9, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3586, file: !741, line: 70, column: 7)
!3637 = !DILocation(line: 70, column: 23, scope: !3636)
!3638 = !DILocation(line: 70, column: 33, scope: !3636)
!3639 = !DILocation(line: 70, column: 26, scope: !3636)
!3640 = !DILocation(line: 70, column: 59, scope: !3636)
!3641 = !DILocation(line: 71, column: 7, scope: !3636)
!3642 = !DILocation(line: 71, column: 10, scope: !3636)
!3643 = !DILocation(line: 70, column: 7, scope: !3586)
!3644 = !DILocation(line: 100, column: 12, scope: !3586)
!3645 = !DILocation(line: 105, column: 7, scope: !3586)
!3646 = !DILocation(line: 72, column: 19, scope: !3636)
!3647 = !DILocation(line: 105, column: 19, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3586, file: !741, line: 105, column: 7)
!3649 = !DILocation(line: 107, column: 13, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3648, file: !741, line: 106, column: 5)
!3651 = !DILocation(line: 109, column: 5, scope: !3650)
!3652 = !DILocation(line: 112, column: 1, scope: !3586)
!3653 = !DISubprogram(name: "fileno", scope: !807, file: !807, line: 809, type: !3587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!3654 = !DISubprogram(name: "fclose", scope: !807, file: !807, line: 178, type: !3587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!3655 = !DISubprogram(name: "__freading", scope: !3583, file: !3583, line: 51, type: !3587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!3656 = !DISubprogram(name: "lseek", scope: !1311, file: !1311, line: 339, type: !3657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!305, !150, !305, !150}
!3659 = distinct !DISubprogram(name: "rpl_fflush", scope: !743, file: !743, line: 130, type: !3660, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3696)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!150, !3662}
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !281, line: 7, baseType: !3664)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !283, line: 49, size: 1728, elements: !3665)
!3665 = !{!3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3664, file: !283, line: 51, baseType: !150, size: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3664, file: !283, line: 54, baseType: !148, size: 64, offset: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3664, file: !283, line: 55, baseType: !148, size: 64, offset: 128)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3664, file: !283, line: 56, baseType: !148, size: 64, offset: 192)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3664, file: !283, line: 57, baseType: !148, size: 64, offset: 256)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3664, file: !283, line: 58, baseType: !148, size: 64, offset: 320)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3664, file: !283, line: 59, baseType: !148, size: 64, offset: 384)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3664, file: !283, line: 60, baseType: !148, size: 64, offset: 448)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3664, file: !283, line: 61, baseType: !148, size: 64, offset: 512)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3664, file: !283, line: 64, baseType: !148, size: 64, offset: 576)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3664, file: !283, line: 65, baseType: !148, size: 64, offset: 640)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3664, file: !283, line: 66, baseType: !148, size: 64, offset: 704)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3664, file: !283, line: 68, baseType: !298, size: 64, offset: 768)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3664, file: !283, line: 70, baseType: !3680, size: 64, offset: 832)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3664, file: !283, line: 72, baseType: !150, size: 32, offset: 896)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3664, file: !283, line: 73, baseType: !150, size: 32, offset: 928)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3664, file: !283, line: 74, baseType: !305, size: 64, offset: 960)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3664, file: !283, line: 77, baseType: !151, size: 16, offset: 1024)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3664, file: !283, line: 78, baseType: !310, size: 8, offset: 1040)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3664, file: !283, line: 79, baseType: !90, size: 8, offset: 1048)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3664, file: !283, line: 81, baseType: !313, size: 64, offset: 1088)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3664, file: !283, line: 89, baseType: !316, size: 64, offset: 1152)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3664, file: !283, line: 91, baseType: !318, size: 64, offset: 1216)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3664, file: !283, line: 92, baseType: !321, size: 64, offset: 1280)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3664, file: !283, line: 93, baseType: !3680, size: 64, offset: 1344)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3664, file: !283, line: 94, baseType: !149, size: 64, offset: 1408)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3664, file: !283, line: 95, baseType: !152, size: 64, offset: 1472)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3664, file: !283, line: 96, baseType: !150, size: 32, offset: 1536)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3664, file: !283, line: 98, baseType: !328, size: 160, offset: 1568)
!3696 = !{!3697}
!3697 = !DILocalVariable(name: "stream", arg: 1, scope: !3659, file: !743, line: 130, type: !3662)
!3698 = !DILocation(line: 0, scope: !3659)
!3699 = !DILocation(line: 151, column: 14, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3659, file: !743, line: 151, column: 7)
!3701 = !DILocation(line: 151, column: 22, scope: !3700)
!3702 = !DILocation(line: 151, column: 27, scope: !3700)
!3703 = !DILocation(line: 151, column: 7, scope: !3659)
!3704 = !DILocation(line: 152, column: 12, scope: !3700)
!3705 = !DILocation(line: 152, column: 5, scope: !3700)
!3706 = !DILocalVariable(name: "fp", arg: 1, scope: !3707, file: !743, line: 42, type: !3662)
!3707 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !743, file: !743, line: 42, type: !3708, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3710)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{null, !3662}
!3710 = !{!3706}
!3711 = !DILocation(line: 0, scope: !3707, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 157, column: 3, scope: !3659)
!3713 = !DILocation(line: 44, column: 12, scope: !3714, inlinedAt: !3712)
!3714 = distinct !DILexicalBlock(scope: !3707, file: !743, line: 44, column: 7)
!3715 = !DILocation(line: 44, column: 19, scope: !3714, inlinedAt: !3712)
!3716 = !DILocation(line: 44, column: 7, scope: !3707, inlinedAt: !3712)
!3717 = !DILocation(line: 46, column: 5, scope: !3714, inlinedAt: !3712)
!3718 = !DILocation(line: 159, column: 10, scope: !3659)
!3719 = !DILocation(line: 159, column: 3, scope: !3659)
!3720 = !DILocation(line: 236, column: 1, scope: !3659)
!3721 = !DISubprogram(name: "fflush", scope: !807, file: !807, line: 230, type: !3660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!3722 = distinct !DISubprogram(name: "rpl_fseeko", scope: !745, file: !745, line: 28, type: !3723, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !744, retainedNodes: !3760)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!150, !3725, !3759, !150}
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !281, line: 7, baseType: !3727)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !283, line: 49, size: 1728, elements: !3728)
!3728 = !{!3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3727, file: !283, line: 51, baseType: !150, size: 32)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3727, file: !283, line: 54, baseType: !148, size: 64, offset: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3727, file: !283, line: 55, baseType: !148, size: 64, offset: 128)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3727, file: !283, line: 56, baseType: !148, size: 64, offset: 192)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3727, file: !283, line: 57, baseType: !148, size: 64, offset: 256)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3727, file: !283, line: 58, baseType: !148, size: 64, offset: 320)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3727, file: !283, line: 59, baseType: !148, size: 64, offset: 384)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3727, file: !283, line: 60, baseType: !148, size: 64, offset: 448)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3727, file: !283, line: 61, baseType: !148, size: 64, offset: 512)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3727, file: !283, line: 64, baseType: !148, size: 64, offset: 576)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3727, file: !283, line: 65, baseType: !148, size: 64, offset: 640)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3727, file: !283, line: 66, baseType: !148, size: 64, offset: 704)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3727, file: !283, line: 68, baseType: !298, size: 64, offset: 768)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3727, file: !283, line: 70, baseType: !3743, size: 64, offset: 832)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3727, file: !283, line: 72, baseType: !150, size: 32, offset: 896)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3727, file: !283, line: 73, baseType: !150, size: 32, offset: 928)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3727, file: !283, line: 74, baseType: !305, size: 64, offset: 960)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3727, file: !283, line: 77, baseType: !151, size: 16, offset: 1024)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3727, file: !283, line: 78, baseType: !310, size: 8, offset: 1040)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3727, file: !283, line: 79, baseType: !90, size: 8, offset: 1048)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3727, file: !283, line: 81, baseType: !313, size: 64, offset: 1088)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3727, file: !283, line: 89, baseType: !316, size: 64, offset: 1152)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3727, file: !283, line: 91, baseType: !318, size: 64, offset: 1216)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3727, file: !283, line: 92, baseType: !321, size: 64, offset: 1280)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3727, file: !283, line: 93, baseType: !3743, size: 64, offset: 1344)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3727, file: !283, line: 94, baseType: !149, size: 64, offset: 1408)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3727, file: !283, line: 95, baseType: !152, size: 64, offset: 1472)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3727, file: !283, line: 96, baseType: !150, size: 32, offset: 1536)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3727, file: !283, line: 98, baseType: !328, size: 160, offset: 1568)
!3759 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !807, line: 63, baseType: !305)
!3760 = !{!3761, !3762, !3763, !3764}
!3761 = !DILocalVariable(name: "fp", arg: 1, scope: !3722, file: !745, line: 28, type: !3725)
!3762 = !DILocalVariable(name: "offset", arg: 2, scope: !3722, file: !745, line: 28, type: !3759)
!3763 = !DILocalVariable(name: "whence", arg: 3, scope: !3722, file: !745, line: 28, type: !150)
!3764 = !DILocalVariable(name: "pos", scope: !3765, file: !745, line: 123, type: !3759)
!3765 = distinct !DILexicalBlock(scope: !3766, file: !745, line: 119, column: 5)
!3766 = distinct !DILexicalBlock(scope: !3722, file: !745, line: 55, column: 7)
!3767 = !DILocation(line: 0, scope: !3722)
!3768 = !DILocation(line: 55, column: 12, scope: !3766)
!3769 = !{!1211, !776, i64 16}
!3770 = !DILocation(line: 55, column: 33, scope: !3766)
!3771 = !{!1211, !776, i64 8}
!3772 = !DILocation(line: 55, column: 25, scope: !3766)
!3773 = !DILocation(line: 56, column: 7, scope: !3766)
!3774 = !DILocation(line: 56, column: 15, scope: !3766)
!3775 = !DILocation(line: 56, column: 37, scope: !3766)
!3776 = !{!1211, !776, i64 32}
!3777 = !DILocation(line: 56, column: 29, scope: !3766)
!3778 = !DILocation(line: 57, column: 7, scope: !3766)
!3779 = !DILocation(line: 57, column: 15, scope: !3766)
!3780 = !{!1211, !776, i64 72}
!3781 = !DILocation(line: 57, column: 29, scope: !3766)
!3782 = !DILocation(line: 55, column: 7, scope: !3722)
!3783 = !DILocation(line: 123, column: 26, scope: !3765)
!3784 = !DILocation(line: 123, column: 19, scope: !3765)
!3785 = !DILocation(line: 0, scope: !3765)
!3786 = !DILocation(line: 124, column: 15, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3765, file: !745, line: 124, column: 11)
!3788 = !DILocation(line: 124, column: 11, scope: !3765)
!3789 = !DILocation(line: 135, column: 19, scope: !3765)
!3790 = !DILocation(line: 136, column: 12, scope: !3765)
!3791 = !DILocation(line: 136, column: 20, scope: !3765)
!3792 = !{!1211, !1212, i64 144}
!3793 = !DILocation(line: 167, column: 7, scope: !3765)
!3794 = !DILocation(line: 169, column: 10, scope: !3722)
!3795 = !DILocation(line: 169, column: 3, scope: !3722)
!3796 = !DILocation(line: 170, column: 1, scope: !3722)
!3797 = !DISubprogram(name: "fseeko", scope: !807, file: !807, line: 736, type: !3798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!150, !3725, !305, !150}
!3800 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !674, file: !674, line: 100, type: !3801, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !677, retainedNodes: !3804)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!152, !1599, !125, !152, !3803}
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!3804 = !{!3805, !3806, !3807, !3808, !3809}
!3805 = !DILocalVariable(name: "pwc", arg: 1, scope: !3800, file: !674, line: 100, type: !1599)
!3806 = !DILocalVariable(name: "s", arg: 2, scope: !3800, file: !674, line: 100, type: !125)
!3807 = !DILocalVariable(name: "n", arg: 3, scope: !3800, file: !674, line: 100, type: !152)
!3808 = !DILocalVariable(name: "ps", arg: 4, scope: !3800, file: !674, line: 100, type: !3803)
!3809 = !DILocalVariable(name: "ret", scope: !3800, file: !674, line: 130, type: !152)
!3810 = !DILocation(line: 0, scope: !3800)
!3811 = !DILocation(line: 105, column: 9, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3800, file: !674, line: 105, column: 7)
!3813 = !DILocation(line: 105, column: 7, scope: !3800)
!3814 = !DILocation(line: 117, column: 10, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3800, file: !674, line: 117, column: 7)
!3816 = !DILocation(line: 117, column: 7, scope: !3800)
!3817 = !DILocation(line: 130, column: 16, scope: !3800)
!3818 = !DILocation(line: 135, column: 11, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3800, file: !674, line: 135, column: 7)
!3820 = !DILocation(line: 135, column: 25, scope: !3819)
!3821 = !DILocation(line: 135, column: 30, scope: !3819)
!3822 = !DILocation(line: 135, column: 7, scope: !3800)
!3823 = !DILocalVariable(name: "ps", arg: 1, scope: !3824, file: !1572, line: 1135, type: !3803)
!3824 = distinct !DISubprogram(name: "mbszero", scope: !1572, file: !1572, line: 1135, type: !3825, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !677, retainedNodes: !3827)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{null, !3803}
!3827 = !{!3823}
!3828 = !DILocation(line: 0, scope: !3824, inlinedAt: !3829)
!3829 = distinct !DILocation(line: 137, column: 5, scope: !3819)
!3830 = !DILocalVariable(name: "__dest", arg: 1, scope: !3831, file: !1581, line: 57, type: !149)
!3831 = distinct !DISubprogram(name: "memset", scope: !1581, file: !1581, line: 57, type: !1582, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !677, retainedNodes: !3832)
!3832 = !{!3830, !3833, !3834}
!3833 = !DILocalVariable(name: "__ch", arg: 2, scope: !3831, file: !1581, line: 57, type: !150)
!3834 = !DILocalVariable(name: "__len", arg: 3, scope: !3831, file: !1581, line: 57, type: !152)
!3835 = !DILocation(line: 0, scope: !3831, inlinedAt: !3836)
!3836 = distinct !DILocation(line: 1137, column: 3, scope: !3824, inlinedAt: !3829)
!3837 = !DILocation(line: 59, column: 10, scope: !3831, inlinedAt: !3836)
!3838 = !DILocation(line: 137, column: 5, scope: !3819)
!3839 = !DILocation(line: 138, column: 11, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3800, file: !674, line: 138, column: 7)
!3841 = !DILocation(line: 138, column: 7, scope: !3800)
!3842 = !DILocation(line: 139, column: 5, scope: !3840)
!3843 = !DILocation(line: 143, column: 26, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3800, file: !674, line: 143, column: 7)
!3845 = !DILocation(line: 143, column: 41, scope: !3844)
!3846 = !DILocation(line: 143, column: 7, scope: !3800)
!3847 = !DILocation(line: 145, column: 15, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3849, file: !674, line: 145, column: 11)
!3849 = distinct !DILexicalBlock(scope: !3844, file: !674, line: 144, column: 5)
!3850 = !DILocation(line: 145, column: 11, scope: !3849)
!3851 = !DILocation(line: 146, column: 32, scope: !3848)
!3852 = !DILocation(line: 146, column: 16, scope: !3848)
!3853 = !DILocation(line: 146, column: 14, scope: !3848)
!3854 = !DILocation(line: 146, column: 9, scope: !3848)
!3855 = !DILocation(line: 286, column: 1, scope: !3800)
!3856 = !DISubprogram(name: "mbsinit", scope: !3857, file: !3857, line: 293, type: !3858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !796)
!3857 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!150, !3860}
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !680)
!3862 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !747, file: !747, line: 27, type: !3071, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3863)
!3863 = !{!3864, !3865, !3866, !3867}
!3864 = !DILocalVariable(name: "ptr", arg: 1, scope: !3862, file: !747, line: 27, type: !149)
!3865 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3862, file: !747, line: 27, type: !152)
!3866 = !DILocalVariable(name: "size", arg: 3, scope: !3862, file: !747, line: 27, type: !152)
!3867 = !DILocalVariable(name: "nbytes", scope: !3862, file: !747, line: 29, type: !152)
!3868 = !DILocation(line: 0, scope: !3862)
!3869 = !DILocation(line: 30, column: 7, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3862, file: !747, line: 30, column: 7)
!3871 = !DILocalVariable(name: "ptr", arg: 1, scope: !3872, file: !3163, line: 2057, type: !149)
!3872 = distinct !DISubprogram(name: "rpl_realloc", scope: !3163, file: !3163, line: 2057, type: !3155, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3873)
!3873 = !{!3871, !3874}
!3874 = !DILocalVariable(name: "size", arg: 2, scope: !3872, file: !3163, line: 2057, type: !152)
!3875 = !DILocation(line: 0, scope: !3872, inlinedAt: !3876)
!3876 = distinct !DILocation(line: 37, column: 10, scope: !3862)
!3877 = !DILocation(line: 2059, column: 24, scope: !3872, inlinedAt: !3876)
!3878 = !DILocation(line: 2059, column: 10, scope: !3872, inlinedAt: !3876)
!3879 = !DILocation(line: 37, column: 3, scope: !3862)
!3880 = !DILocation(line: 32, column: 7, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3870, file: !747, line: 31, column: 5)
!3882 = !DILocation(line: 32, column: 13, scope: !3881)
!3883 = !DILocation(line: 33, column: 7, scope: !3881)
!3884 = !DILocation(line: 38, column: 1, scope: !3862)
!3885 = distinct !DISubprogram(name: "hard_locale", scope: !692, file: !692, line: 28, type: !1137, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !749, retainedNodes: !3886)
!3886 = !{!3887, !3888}
!3887 = !DILocalVariable(name: "category", arg: 1, scope: !3885, file: !692, line: 28, type: !150)
!3888 = !DILocalVariable(name: "locale", scope: !3885, file: !692, line: 30, type: !3889)
!3889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3890)
!3890 = !{!3891}
!3891 = !DISubrange(count: 257)
!3892 = !DILocation(line: 0, scope: !3885)
!3893 = !DILocation(line: 30, column: 3, scope: !3885)
!3894 = !DILocation(line: 30, column: 8, scope: !3885)
!3895 = !DILocation(line: 32, column: 7, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3885, file: !692, line: 32, column: 7)
!3897 = !DILocation(line: 32, column: 7, scope: !3885)
!3898 = !DILocalVariable(name: "__s1", arg: 1, scope: !3899, file: !826, line: 1359, type: !125)
!3899 = distinct !DISubprogram(name: "streq", scope: !826, file: !826, line: 1359, type: !827, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !749, retainedNodes: !3900)
!3900 = !{!3898, !3901}
!3901 = !DILocalVariable(name: "__s2", arg: 2, scope: !3899, file: !826, line: 1359, type: !125)
!3902 = !DILocation(line: 0, scope: !3899, inlinedAt: !3903)
!3903 = distinct !DILocation(line: 35, column: 9, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3885, file: !692, line: 35, column: 7)
!3905 = !DILocation(line: 1361, column: 11, scope: !3899, inlinedAt: !3903)
!3906 = !DILocation(line: 35, column: 29, scope: !3904)
!3907 = !DILocation(line: 0, scope: !3899, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 35, column: 32, scope: !3904)
!3909 = !DILocation(line: 1361, column: 11, scope: !3899, inlinedAt: !3908)
!3910 = !DILocation(line: 1361, column: 10, scope: !3899, inlinedAt: !3908)
!3911 = !DILocation(line: 35, column: 7, scope: !3885)
!3912 = !DILocation(line: 46, column: 3, scope: !3885)
!3913 = !DILocation(line: 47, column: 1, scope: !3885)
!3914 = distinct !DISubprogram(name: "setlocale_null_r", scope: !754, file: !754, line: 154, type: !3915, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3917)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!150, !150, !148, !152}
!3917 = !{!3918, !3919, !3920}
!3918 = !DILocalVariable(name: "category", arg: 1, scope: !3914, file: !754, line: 154, type: !150)
!3919 = !DILocalVariable(name: "buf", arg: 2, scope: !3914, file: !754, line: 154, type: !148)
!3920 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3914, file: !754, line: 154, type: !152)
!3921 = !DILocation(line: 0, scope: !3914)
!3922 = !DILocation(line: 159, column: 10, scope: !3914)
!3923 = !DILocation(line: 159, column: 3, scope: !3914)
!3924 = distinct !DISubprogram(name: "setlocale_null", scope: !754, file: !754, line: 186, type: !3925, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3927)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!125, !150}
!3927 = !{!3928}
!3928 = !DILocalVariable(name: "category", arg: 1, scope: !3924, file: !754, line: 186, type: !150)
!3929 = !DILocation(line: 0, scope: !3924)
!3930 = !DILocation(line: 189, column: 10, scope: !3924)
!3931 = !DILocation(line: 189, column: 3, scope: !3924)
!3932 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !756, file: !756, line: 35, type: !3925, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !3933)
!3933 = !{!3934, !3935}
!3934 = !DILocalVariable(name: "category", arg: 1, scope: !3932, file: !756, line: 35, type: !150)
!3935 = !DILocalVariable(name: "result", scope: !3932, file: !756, line: 37, type: !125)
!3936 = !DILocation(line: 0, scope: !3932)
!3937 = !DILocation(line: 37, column: 24, scope: !3932)
!3938 = !DILocation(line: 62, column: 3, scope: !3932)
!3939 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !756, file: !756, line: 66, type: !3915, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !3940)
!3940 = !{!3941, !3942, !3943, !3944, !3945}
!3941 = !DILocalVariable(name: "category", arg: 1, scope: !3939, file: !756, line: 66, type: !150)
!3942 = !DILocalVariable(name: "buf", arg: 2, scope: !3939, file: !756, line: 66, type: !148)
!3943 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3939, file: !756, line: 66, type: !152)
!3944 = !DILocalVariable(name: "result", scope: !3939, file: !756, line: 111, type: !125)
!3945 = !DILocalVariable(name: "length", scope: !3946, file: !756, line: 125, type: !152)
!3946 = distinct !DILexicalBlock(scope: !3947, file: !756, line: 124, column: 5)
!3947 = distinct !DILexicalBlock(scope: !3939, file: !756, line: 113, column: 7)
!3948 = !DILocation(line: 0, scope: !3939)
!3949 = !DILocation(line: 0, scope: !3932, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 111, column: 24, scope: !3939)
!3951 = !DILocation(line: 37, column: 24, scope: !3932, inlinedAt: !3950)
!3952 = !DILocation(line: 113, column: 14, scope: !3947)
!3953 = !DILocation(line: 113, column: 7, scope: !3939)
!3954 = !DILocation(line: 116, column: 19, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3956, file: !756, line: 116, column: 11)
!3956 = distinct !DILexicalBlock(scope: !3947, file: !756, line: 114, column: 5)
!3957 = !DILocation(line: 116, column: 11, scope: !3956)
!3958 = !DILocation(line: 120, column: 16, scope: !3955)
!3959 = !DILocation(line: 120, column: 9, scope: !3955)
!3960 = !DILocation(line: 125, column: 23, scope: !3946)
!3961 = !DILocation(line: 0, scope: !3946)
!3962 = !DILocation(line: 126, column: 18, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3946, file: !756, line: 126, column: 11)
!3964 = !DILocation(line: 126, column: 11, scope: !3946)
!3965 = !DILocation(line: 128, column: 39, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3963, file: !756, line: 127, column: 9)
!3967 = !DILocalVariable(name: "__dest", arg: 1, scope: !3968, file: !1581, line: 26, type: !3432)
!3968 = distinct !DISubprogram(name: "memcpy", scope: !1581, file: !1581, line: 26, type: !3430, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !3969)
!3969 = !{!3967, !3970, !3971}
!3970 = !DILocalVariable(name: "__src", arg: 2, scope: !3968, file: !1581, line: 26, type: !992)
!3971 = !DILocalVariable(name: "__len", arg: 3, scope: !3968, file: !1581, line: 26, type: !152)
!3972 = !DILocation(line: 0, scope: !3968, inlinedAt: !3973)
!3973 = distinct !DILocation(line: 128, column: 11, scope: !3966)
!3974 = !DILocation(line: 29, column: 10, scope: !3968, inlinedAt: !3973)
!3975 = !DILocation(line: 129, column: 11, scope: !3966)
!3976 = !DILocation(line: 133, column: 23, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3978, file: !756, line: 133, column: 15)
!3978 = distinct !DILexicalBlock(scope: !3963, file: !756, line: 132, column: 9)
!3979 = !DILocation(line: 133, column: 15, scope: !3978)
!3980 = !DILocation(line: 138, column: 44, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3977, file: !756, line: 134, column: 13)
!3982 = !DILocation(line: 0, scope: !3968, inlinedAt: !3983)
!3983 = distinct !DILocation(line: 138, column: 15, scope: !3981)
!3984 = !DILocation(line: 29, column: 10, scope: !3968, inlinedAt: !3983)
!3985 = !DILocation(line: 139, column: 15, scope: !3981)
!3986 = !DILocation(line: 139, column: 32, scope: !3981)
!3987 = !DILocation(line: 140, column: 13, scope: !3981)
!3988 = !DILocation(line: 0, scope: !3947)
!3989 = !DILocation(line: 145, column: 1, scope: !3939)
