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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !401
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !367
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !391
@.str.1.42 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !393
@.str.2.44 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !395
@.str.3.43 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !397
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !399
@.str.4.37 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !403
@.str.5.38 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !405
@.str.6.39 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !410
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !415
@.str.58 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !421
@.str.1.59 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !423
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !425
@.str.62 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !456
@.str.1.63 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !459
@.str.2.64 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !461
@.str.3.65 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !466
@.str.4.66 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !468
@.str.5.67 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !470
@.str.6.68 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !472
@.str.7.69 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !474
@.str.8.70 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !476
@.str.9.71 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !478
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.62, ptr @.str.1.63, ptr @.str.2.64, ptr @.str.3.65, ptr @.str.4.66, ptr @.str.5.67, ptr @.str.6.68, ptr @.str.7.69, ptr @.str.8.70, ptr @.str.9.71, ptr null], align 8, !dbg !480
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !505
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !519
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !557
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !564
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !521
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !566
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !509
@.str.10.74 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !526
@.str.11.72 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !528
@.str.12.75 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !530
@.str.13.73 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !532
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !534
@.str.78 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !570
@.str.1.79 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !573
@.str.2.80 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !575
@.str.3.81 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !577
@.str.4.82 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !579
@.str.5.83 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !581
@.str.6.84 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !586
@.str.7.85 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !591
@.str.8.86 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !593
@.str.9.87 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !598
@.str.10.88 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !603
@.str.11.89 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !608
@.str.12.90 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !613
@.str.13.91 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !615
@.str.14.92 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !620
@.str.15.93 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !625
@.str.16.94 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !630
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.99 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !635
@.str.18.100 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !637
@.str.19.101 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !639
@.str.20.102 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !641
@.str.21.103 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !643
@.str.22.104 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !645
@.str.23.105 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !650
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !655
@exit_failure = dso_local global i32 1, align 4, !dbg !663
@.str.118 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !669
@.str.1.116 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !672
@.str.2.117 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !674
@.str.129 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !676
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !679
@.str.134 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !694
@.str.1.135 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !697

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !770 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !774, metadata !DIExpression()), !dbg !775
  %2 = icmp eq i32 %0, 0, !dbg !776
  br i1 %2, label %4, label %3, !dbg !779

3:                                                ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 41, ptr noundef nonnull @__PRETTY_FUNCTION__.usage) #37, !dbg !776
  unreachable, !dbg !776

4:                                                ; preds = %1
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !780
  %6 = load ptr, ptr @program_name, align 8, !dbg !780, !tbaa !781
  %7 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef %6, ptr noundef %6) #38, !dbg !780
  %8 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #38, !dbg !785
  %9 = load ptr, ptr @stdout, align 8, !dbg !785, !tbaa !781
  %10 = tail call i32 @fputs_unlocked(ptr noundef %8, ptr noundef %9), !dbg !785
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !786
  tail call fastcc void @oputs_(ptr noundef %11), !dbg !786
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !787
  tail call fastcc void @oputs_(ptr noundef %12), !dbg !787
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !788
  tail call fastcc void @oputs_(ptr noundef %13), !dbg !788
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #38, !dbg !789
  tail call fastcc void @oputs_(ptr noundef %14), !dbg !789
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #38, !dbg !790
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !790
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #38, !dbg !791
  %17 = load ptr, ptr @stdout, align 8, !dbg !791, !tbaa !781
  %18 = tail call i32 @fputs_unlocked(ptr noundef %16, ptr noundef %17), !dbg !791
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #38, !dbg !792
  %20 = load ptr, ptr @stdout, align 8, !dbg !792, !tbaa !781
  %21 = tail call i32 @fputs_unlocked(ptr noundef %19, ptr noundef %20), !dbg !792
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #38, !dbg !793
  %23 = load ptr, ptr @stdout, align 8, !dbg !793, !tbaa !781
  %24 = tail call i32 @fputs_unlocked(ptr noundef %22, ptr noundef %23), !dbg !793
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #38, !dbg !794
  %26 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %25, ptr noundef nonnull @.str.4) #38, !dbg !794
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #38, !dbg !795
  %28 = load ptr, ptr @stdout, align 8, !dbg !795, !tbaa !781
  %29 = tail call i32 @fputs_unlocked(ptr noundef %27, ptr noundef %28), !dbg !795
  tail call fastcc void @emit_ancillary_info(), !dbg !796
  tail call void @exit(i32 noundef 0) #37, !dbg !797
  unreachable, !dbg !797
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: noreturn nounwind
declare !dbg !798 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !802 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !806 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !811 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #6 !dbg !121 {
  tail call void @llvm.dbg.value(metadata ptr @.str.4, metadata !260, metadata !DIExpression()), !dbg !815
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !261, metadata !DIExpression()), !dbg !815
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !816, !tbaa !817
  %3 = icmp eq i32 %2, -1, !dbg !819
  br i1 %3, label %4, label %16, !dbg !820

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.25) #38, !dbg !821
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !262, metadata !DIExpression()), !dbg !822
  %6 = icmp eq ptr %5, null, !dbg !823
  br i1 %6, label %14, label %7, !dbg !824

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !825, !tbaa !826
  %9 = icmp eq i8 %8, 0, !dbg !825
  br i1 %9, label %14, label %10, !dbg !827

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !828, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata ptr @.str.26, metadata !834, metadata !DIExpression()), !dbg !835
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.26) #39, !dbg !837
  %12 = icmp eq i32 %11, 0, !dbg !838
  %13 = zext i1 %12 to i32, !dbg !827
  br label %14, !dbg !827

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !839, !tbaa !817
  br label %16, !dbg !840

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !841
  %18 = icmp eq i32 %17, 0, !dbg !841
  br i1 %18, label %22, label %19, !dbg !843

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !844, !tbaa !781
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !844
  br label %121, !dbg !846

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !265, metadata !DIExpression()), !dbg !815
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.27) #39, !dbg !847
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !848
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !267, metadata !DIExpression()), !dbg !815
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !849
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !268, metadata !DIExpression()), !dbg !815
  %26 = icmp eq ptr %25, null, !dbg !850
  br i1 %26, label %53, label %27, !dbg !851

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !852
  br i1 %28, label %53, label %29, !dbg !853

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !269, metadata !DIExpression()), !dbg !854
  tail call void @llvm.dbg.value(metadata i64 0, metadata !273, metadata !DIExpression()), !dbg !854
  %30 = icmp ult ptr %24, %25, !dbg !855
  br i1 %30, label %31, label %53, !dbg !856

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !815
  %33 = load ptr, ptr %32, align 8, !tbaa !781
  br label %34, !dbg !856

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !269, metadata !DIExpression()), !dbg !854
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !273, metadata !DIExpression()), !dbg !854
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !857
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !269, metadata !DIExpression()), !dbg !854
  %38 = load i8, ptr %35, align 1, !dbg !857, !tbaa !826
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !857
  %41 = load i16, ptr %40, align 2, !dbg !857, !tbaa !858
  %42 = freeze i16 %41, !dbg !860
  %43 = lshr i16 %42, 13, !dbg !860
  %44 = and i16 %43, 1, !dbg !860
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !861
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !273, metadata !DIExpression()), !dbg !854
  %47 = icmp ult ptr %37, %25, !dbg !855
  %48 = icmp ult i64 %46, 2, !dbg !862
  %49 = select i1 %47, i1 %48, i1 false, !dbg !862
  br i1 %49, label %34, label %50, !dbg !856, !llvm.loop !863

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !861
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !865
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !867
  br label %53, !dbg !867

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !815
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !265, metadata !DIExpression()), !dbg !815
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !268, metadata !DIExpression()), !dbg !815
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.28) #39, !dbg !868
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !274, metadata !DIExpression()), !dbg !815
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !869
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !275, metadata !DIExpression()), !dbg !815
  br label %58, !dbg !870

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !815
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !265, metadata !DIExpression()), !dbg !815
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !275, metadata !DIExpression()), !dbg !815
  %61 = load i8, ptr %59, align 1, !dbg !871, !tbaa !826
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !872

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !873
  %64 = load i8, ptr %63, align 1, !dbg !876, !tbaa !826
  %65 = icmp ne i8 %64, 45, !dbg !877
  %66 = select i1 %65, i1 %60, i1 false, !dbg !878
  br label %67, !dbg !878

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !265, metadata !DIExpression()), !dbg !815
  %69 = tail call ptr @__ctype_b_loc() #40, !dbg !879
  %70 = load ptr, ptr %69, align 8, !dbg !879, !tbaa !781
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !879
  %73 = load i16, ptr %72, align 2, !dbg !879, !tbaa !858
  %74 = and i16 %73, 8192, !dbg !879
  %75 = icmp eq i16 %74, 0, !dbg !879
  br i1 %75, label %89, label %76, !dbg !881

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !882
  br i1 %77, label %91, label %78, !dbg !885

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !886
  %80 = load i8, ptr %79, align 1, !dbg !886, !tbaa !826
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !886
  %83 = load i16, ptr %82, align 2, !dbg !886, !tbaa !858
  %84 = and i16 %83, 8192, !dbg !886
  %85 = icmp eq i16 %84, 0, !dbg !886
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !887
  br i1 %88, label %89, label %91, !dbg !887

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !888
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !275, metadata !DIExpression()), !dbg !815
  br label %58, !dbg !870, !llvm.loop !889

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !815
  %92 = ptrtoint ptr %24 to i64, !dbg !891
  %93 = load ptr, ptr @stdout, align 8, !dbg !891, !tbaa !781
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !891
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !828, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata !894, metadata !834, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !828, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata !894, metadata !834, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !828, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata !894, metadata !834, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !828, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata !894, metadata !834, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !828, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata !894, metadata !834, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !828, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata !894, metadata !834, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !828, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata !894, metadata !834, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !828, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata !894, metadata !834, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !828, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata !894, metadata !834, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !828, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata !894, metadata !834, metadata !DIExpression()), !dbg !911
  tail call void @llvm.dbg.value(metadata ptr @.str.4, metadata !332, metadata !DIExpression()), !dbg !815
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.20, i64 noundef 6) #39, !dbg !913
  %96 = icmp eq i32 %95, 0, !dbg !913
  br i1 %96, label %100, label %97, !dbg !915

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.21, i64 noundef 9) #39, !dbg !916
  %99 = icmp eq i32 %98, 0, !dbg !916
  br i1 %99, label %100, label %103, !dbg !917

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !918
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4, i32 noundef %101, ptr noundef %54) #38, !dbg !918
  br label %106, !dbg !920

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !921
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.4, i32 noundef %104, ptr noundef %54) #38, !dbg !921
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !923, !tbaa !781
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %107), !dbg !923
  %109 = load ptr, ptr @stdout, align 8, !dbg !924, !tbaa !781
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %109), !dbg !924
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !925
  %112 = sub i64 %111, %92, !dbg !925
  %113 = load ptr, ptr @stdout, align 8, !dbg !925, !tbaa !781
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !925
  %115 = load ptr, ptr @stdout, align 8, !dbg !926, !tbaa !781
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %115), !dbg !926
  %117 = load ptr, ptr @stdout, align 8, !dbg !927, !tbaa !781
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.49, ptr noundef %117), !dbg !927
  %119 = load ptr, ptr @stdout, align 8, !dbg !928, !tbaa !781
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !928
  br label %121, !dbg !929

121:                                              ; preds = %106, %19
  ret void, !dbg !929
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emit_ancillary_info() unnamed_addr #6 !dbg !930 {
  tail call void @llvm.dbg.value(metadata ptr @.str.4, metadata !934, metadata !DIExpression()), !dbg !947
  tail call void @llvm.dbg.value(metadata !894, metadata !943, metadata !DIExpression()), !dbg !947
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !942, metadata !DIExpression()), !dbg !947
  tail call void @emit_bug_reporting_address() #38, !dbg !948
  %1 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !949
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !945, metadata !DIExpression()), !dbg !947
  %2 = icmp eq ptr %1, null, !dbg !950
  br i1 %2, label %10, label %3, !dbg !952

3:                                                ; preds = %0
  %4 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.53, i64 noundef 3) #39, !dbg !953
  %5 = icmp eq i32 %4, 0, !dbg !953
  br i1 %5, label %10, label %6, !dbg !954

6:                                                ; preds = %3
  %7 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #38, !dbg !955
  %8 = load ptr, ptr @stdout, align 8, !dbg !955, !tbaa !781
  %9 = tail call i32 @fputs_unlocked(ptr noundef %7, ptr noundef %8), !dbg !955
  br label %10, !dbg !957

10:                                               ; preds = %6, %3, %0
  tail call void @llvm.dbg.value(metadata ptr @.str.4, metadata !942, metadata !DIExpression()), !dbg !947
  tail call void @llvm.dbg.value(metadata ptr @.str.4, metadata !946, metadata !DIExpression()), !dbg !947
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #38, !dbg !958
  %12 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %11, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.4) #38, !dbg !958
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #38, !dbg !959
  %14 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.57) #38, !dbg !959
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
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !dbg !996 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1001, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1002, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1003, metadata !DIExpression()), !dbg !1024
  %3 = tail call ptr @getenv(ptr noundef nonnull @.str.15) #38, !dbg !1025
  %4 = icmp ne ptr %3, null, !dbg !1026
  tail call void @llvm.dbg.value(metadata i1 %4, metadata !1004, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1024
  br i1 %4, label %5, label %12, !dbg !1027

5:                                                ; preds = %2
  %6 = icmp sgt i32 %0, 1, !dbg !1028
  br i1 %6, label %7, label %12, !dbg !1029

7:                                                ; preds = %5
  %8 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !1030
  %9 = load ptr, ptr %8, align 8, !dbg !1030, !tbaa !781
  call void @llvm.dbg.value(metadata ptr %9, metadata !828, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !834, metadata !DIExpression()), !dbg !1031
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(3) @.str.16) #39, !dbg !1033
  %11 = icmp eq i32 %10, 0, !dbg !1034
  br label %12

12:                                               ; preds = %5, %7, %2
  %13 = phi i1 [ true, %2 ], [ false, %5 ], [ %11, %7 ]
  tail call void @llvm.dbg.value(metadata i1 %13, metadata !1005, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1024
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1006, metadata !DIExpression()), !dbg !1024
  %14 = load ptr, ptr %1, align 8, !dbg !1035, !tbaa !781
  tail call void @set_program_name(ptr noundef %14) #38, !dbg !1036
  %15 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.17) #38, !dbg !1037
  %16 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #38, !dbg !1038
  %17 = tail call ptr @textdomain(ptr noundef nonnull @.str.18) #38, !dbg !1039
  %18 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1040
  %19 = icmp eq i32 %0, 2
  %20 = and i1 %19, %13, !dbg !1041
  br i1 %20, label %21, label %35, !dbg !1041

21:                                               ; preds = %12
  %22 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !1043
  %23 = load ptr, ptr %22, align 8, !dbg !1043, !tbaa !781
  call void @llvm.dbg.value(metadata ptr %23, metadata !828, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.value(metadata ptr @.str.20, metadata !834, metadata !DIExpression()), !dbg !1046
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(7) @.str.20) #39, !dbg !1048
  %25 = icmp eq i32 %24, 0, !dbg !1049
  br i1 %25, label %26, label %27, !dbg !1050

26:                                               ; preds = %21
  tail call void @usage(i32 noundef 0) #41, !dbg !1051
  unreachable, !dbg !1051

27:                                               ; preds = %21
  call void @llvm.dbg.value(metadata ptr %23, metadata !828, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata ptr @.str.21, metadata !834, metadata !DIExpression()), !dbg !1052
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(10) @.str.21) #39, !dbg !1055
  %29 = icmp eq i32 %28, 0, !dbg !1056
  br i1 %29, label %30, label %35, !dbg !1057

30:                                               ; preds = %27
  %31 = load ptr, ptr @stdout, align 8, !dbg !1058, !tbaa !781
  %32 = load ptr, ptr @Version, align 8, !dbg !1060, !tbaa !781
  %33 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.23) #38, !dbg !1061
  %34 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.24) #38, !dbg !1061
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %31, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.22, ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef null) #38, !dbg !1062
  br label %253, !dbg !1063

35:                                               ; preds = %27, %12
  %36 = add nsw i32 %0, -1, !dbg !1064
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !1001, metadata !DIExpression()), !dbg !1024
  %37 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !1065
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !1002, metadata !DIExpression()), !dbg !1024
  %38 = icmp sgt i32 %0, 1
  %39 = and i1 %38, %13, !dbg !1066
  br i1 %39, label %.preheader7, label %81, !dbg !1066

.preheader7:                                      ; preds = %35
  br label %46, !dbg !1067

.loopexit5:                                       ; preds = %76
  %.lcssa10 = phi i1 [ %77, %76 ]
  %.lcssa = phi i1 [ %78, %76 ]
  br label %40, !dbg !1068

40:                                               ; preds = %.loopexit5, %64
  %41 = phi i1 [ %48, %64 ], [ %.lcssa10, %.loopexit5 ]
  %42 = phi i1 [ %50, %64 ], [ %.lcssa, %.loopexit5 ]
  %43 = add nsw i32 %49, -1, !dbg !1068
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !1001, metadata !DIExpression()), !dbg !1024
  %44 = getelementptr inbounds ptr, ptr %47, i64 1, !dbg !1069
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1006, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1003, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata ptr %44, metadata !1002, metadata !DIExpression()), !dbg !1024
  %45 = icmp sgt i32 %49, 1, !dbg !1070
  br i1 %45, label %46, label %88, !dbg !1071

46:                                               ; preds = %.preheader7, %40
  %47 = phi ptr [ %44, %40 ], [ %37, %.preheader7 ], !dbg !1065
  %48 = phi i1 [ %41, %40 ], [ true, %.preheader7 ]
  %49 = phi i32 [ %43, %40 ], [ %36, %.preheader7 ], !dbg !1064
  %50 = phi i1 [ %42, %40 ], [ false, %.preheader7 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1006, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !1001, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1003, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata ptr %47, metadata !1002, metadata !DIExpression()), !dbg !1024
  %51 = load ptr, ptr %47, align 8, !dbg !1072, !tbaa !781
  %52 = load i8, ptr %51, align 1, !dbg !1073, !tbaa !826
  %53 = icmp eq i8 %52, 45, !dbg !1074
  br i1 %53, label %54, label %.loopexit8, !dbg !1067

54:                                               ; preds = %46
  %55 = getelementptr inbounds i8, ptr %51, i64 1, !dbg !1075
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !1007, metadata !DIExpression()), !dbg !1076
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1010, metadata !DIExpression()), !dbg !1076
  br label %56, !dbg !1077

56:                                               ; preds = %60, %54
  %57 = phi i64 [ 0, %54 ], [ %61, %60 ], !dbg !1079
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !1010, metadata !DIExpression()), !dbg !1076
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1080
  %59 = load i8, ptr %58, align 1, !dbg !1080, !tbaa !826
  switch i8 %59, label %.loopexit6 [
    i8 0, label %62
    i8 101, label %60
    i8 69, label %60
    i8 110, label %60
  ], !dbg !1082

60:                                               ; preds = %56, %56, %56
  %61 = add i64 %57, 1, !dbg !1083
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !1010, metadata !DIExpression()), !dbg !1076
  br label %56, !dbg !1084, !llvm.loop !1085

62:                                               ; preds = %56
  %.lcssa9 = phi i64 [ %57, %56 ], !dbg !1079
  %63 = icmp eq i64 %.lcssa9, 0, !dbg !1087
  br i1 %63, label %.loopexit8, label %64, !dbg !1089

64:                                               ; preds = %62
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !1007, metadata !DIExpression()), !dbg !1076
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1006, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1003, metadata !DIExpression()), !dbg !1024
  %65 = load i8, ptr %55, align 1, !dbg !1090, !tbaa !826
  %66 = icmp eq i8 %65, 0, !dbg !1091
  br i1 %66, label %40, label %.preheader4, !dbg !1091

.preheader4:                                      ; preds = %64
  br label %67, !dbg !1091

67:                                               ; preds = %.preheader4, %76
  %68 = phi i8 [ %79, %76 ], [ %65, %.preheader4 ]
  %69 = phi ptr [ %72, %76 ], [ %55, %.preheader4 ]
  %70 = phi i1 [ %78, %76 ], [ %50, %.preheader4 ]
  %71 = phi i1 [ %77, %76 ], [ %48, %.preheader4 ]
  tail call void @llvm.dbg.value(metadata ptr %69, metadata !1007, metadata !DIExpression()), !dbg !1076
  %72 = getelementptr inbounds i8, ptr %69, i64 1, !dbg !1092
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1007, metadata !DIExpression()), !dbg !1076
  switch i8 %68, label %76 [
    i8 101, label %73
    i8 69, label %74
    i8 110, label %75
  ], !dbg !1093

73:                                               ; preds = %67
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1006, metadata !DIExpression()), !dbg !1024
  br label %76, !dbg !1094

74:                                               ; preds = %67
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1006, metadata !DIExpression()), !dbg !1024
  br label %76, !dbg !1096

75:                                               ; preds = %67
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1003, metadata !DIExpression()), !dbg !1024
  br label %76, !dbg !1097

76:                                               ; preds = %67, %75, %74, %73
  %77 = phi i1 [ %71, %67 ], [ false, %75 ], [ %71, %74 ], [ %71, %73 ]
  %78 = phi i1 [ %70, %67 ], [ %70, %75 ], [ false, %74 ], [ true, %73 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1007, metadata !DIExpression()), !dbg !1076
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1006, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1003, metadata !DIExpression()), !dbg !1024
  %79 = load i8, ptr %72, align 1, !dbg !1090, !tbaa !826
  %80 = icmp eq i8 %79, 0, !dbg !1091
  br i1 %80, label %.loopexit5, label %67, !dbg !1091, !llvm.loop !1098

.loopexit6:                                       ; preds = %56
  %.lcssa21 = phi ptr [ %47, %56 ], !dbg !1065
  %.lcssa18 = phi i1 [ %48, %56 ]
  %.lcssa15 = phi i32 [ %49, %56 ], !dbg !1064
  %.lcssa12 = phi i1 [ %50, %56 ]
  br label %81, !dbg !1100

.loopexit8:                                       ; preds = %46, %62
  %.lcssa20 = phi ptr [ %47, %46 ], [ %47, %62 ], !dbg !1065
  %.lcssa17 = phi i1 [ %48, %46 ], [ %48, %62 ]
  %.lcssa14 = phi i32 [ %49, %46 ], [ %49, %62 ], !dbg !1064
  %.lcssa11 = phi i1 [ %50, %46 ], [ %50, %62 ]
  br label %81, !dbg !1100

81:                                               ; preds = %.loopexit8, %.loopexit6, %35
  %82 = phi ptr [ %37, %35 ], [ %.lcssa21, %.loopexit6 ], [ %.lcssa20, %.loopexit8 ], !dbg !1065
  %83 = phi i1 [ true, %35 ], [ %.lcssa18, %.loopexit6 ], [ %.lcssa17, %.loopexit8 ]
  %84 = phi i32 [ %36, %35 ], [ %.lcssa15, %.loopexit6 ], [ %.lcssa14, %.loopexit8 ], !dbg !1064
  %85 = phi i1 [ false, %35 ], [ %.lcssa12, %.loopexit6 ], [ %.lcssa11, %.loopexit8 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1006, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !1001, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1003, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata ptr %82, metadata !1002, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.label(metadata !1011), !dbg !1101
  %86 = or i1 %4, %85, !dbg !1100
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !1001, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !1001, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata ptr %82, metadata !1002, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata ptr %82, metadata !1002, metadata !DIExpression()), !dbg !1024
  %87 = icmp sgt i32 %84, 0, !dbg !1102
  br i1 %86, label %95, label %89, !dbg !1100

88:                                               ; preds = %40
  %.lcssa23 = phi i1 [ %41, %40 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1006, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1001, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1003, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %1, i32 %0), metadata !1002, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_minus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_shl, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !1024
  call void @llvm.dbg.label(metadata !1011), !dbg !1101
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1001, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1001, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !1002, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !1002, metadata !DIExpression()), !dbg !1024
  br i1 %.lcssa23, label %242, label %253, !dbg !1103

89:                                               ; preds = %81
  br i1 %87, label %90, label %241, !dbg !1104

90:                                               ; preds = %89
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !1001, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata ptr %82, metadata !1002, metadata !DIExpression()), !dbg !1024
  %91 = load ptr, ptr %82, align 8, !dbg !1106, !tbaa !781
  %92 = load ptr, ptr @stdout, align 8, !dbg !1106, !tbaa !781
  %93 = tail call i32 @fputs_unlocked(ptr noundef %91, ptr noundef %92), !dbg !1106
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !1001, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1024
  tail call void @llvm.dbg.value(metadata ptr %82, metadata !1002, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1024
  %94 = icmp eq i32 %84, 1, !dbg !1108
  br i1 %94, label %241, label %.preheader2, !dbg !1110

.preheader2:                                      ; preds = %90
  br label %221, !dbg !1104

95:                                               ; preds = %81
  br i1 %87, label %.preheader, label %241, !dbg !1111

.preheader:                                       ; preds = %95
  br label %96, !dbg !1111

96:                                               ; preds = %.preheader, %219
  %97 = phi i32 [ %204, %219 ], [ %84, %.preheader ]
  %98 = phi ptr [ %205, %219 ], [ %82, %.preheader ]
  tail call void @llvm.dbg.value(metadata i32 %97, metadata !1001, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata ptr %98, metadata !1002, metadata !DIExpression()), !dbg !1024
  %99 = load ptr, ptr %98, align 8, !dbg !1112, !tbaa !781
  tail call void @llvm.dbg.value(metadata ptr %99, metadata !1012, metadata !DIExpression()), !dbg !1113
  br label %100, !dbg !1114

100:                                              ; preds = %200, %96
  %101 = phi ptr [ %99, %96 ], [ %189, %200 ], !dbg !1113
  tail call void @llvm.dbg.value(metadata ptr %101, metadata !1012, metadata !DIExpression()), !dbg !1113
  %102 = getelementptr inbounds i8, ptr %101, i64 1, !dbg !1115
  tail call void @llvm.dbg.value(metadata ptr %102, metadata !1012, metadata !DIExpression()), !dbg !1113
  %103 = load i8, ptr %101, align 1, !dbg !1116, !tbaa !826
  tail call void @llvm.dbg.value(metadata i8 %103, metadata !1016, metadata !DIExpression()), !dbg !1113
  switch i8 %103, label %188 [
    i8 0, label %203
    i8 92, label %104
  ], !dbg !1114

104:                                              ; preds = %100
  %105 = load i8, ptr %102, align 1, !dbg !1117, !tbaa !826
  %106 = icmp eq i8 %105, 0, !dbg !1117
  br i1 %106, label %188, label %107, !dbg !1118

107:                                              ; preds = %104
  %108 = getelementptr inbounds i8, ptr %101, i64 2, !dbg !1119
  tail call void @llvm.dbg.value(metadata ptr %108, metadata !1012, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !1016, metadata !DIExpression()), !dbg !1113
  switch i8 %105, label %177 [
    i8 97, label %109
    i8 98, label %110
    i8 99, label %.loopexit
    i8 101, label %111
    i8 102, label %112
    i8 110, label %113
    i8 114, label %114
    i8 116, label %115
    i8 118, label %116
    i8 120, label %117
    i8 48, label %150
    i8 49, label %156
    i8 50, label %156
    i8 51, label %156
    i8 52, label %156
    i8 53, label %156
    i8 54, label %156
    i8 55, label %156
    i8 92, label %188
  ], !dbg !1120

109:                                              ; preds = %107
  tail call void @llvm.dbg.value(metadata i8 7, metadata !1016, metadata !DIExpression()), !dbg !1113
  br label %188, !dbg !1121

110:                                              ; preds = %107
  tail call void @llvm.dbg.value(metadata i8 8, metadata !1016, metadata !DIExpression()), !dbg !1113
  br label %188, !dbg !1122

111:                                              ; preds = %107
  tail call void @llvm.dbg.value(metadata i8 27, metadata !1016, metadata !DIExpression()), !dbg !1113
  br label %188, !dbg !1123

112:                                              ; preds = %107
  tail call void @llvm.dbg.value(metadata i8 12, metadata !1016, metadata !DIExpression()), !dbg !1113
  br label %188, !dbg !1124

113:                                              ; preds = %107
  tail call void @llvm.dbg.value(metadata i8 10, metadata !1016, metadata !DIExpression()), !dbg !1113
  br label %188, !dbg !1125

114:                                              ; preds = %107
  tail call void @llvm.dbg.value(metadata i8 13, metadata !1016, metadata !DIExpression()), !dbg !1113
  br label %188, !dbg !1126

115:                                              ; preds = %107
  tail call void @llvm.dbg.value(metadata i8 9, metadata !1016, metadata !DIExpression()), !dbg !1113
  br label %188, !dbg !1127

116:                                              ; preds = %107
  tail call void @llvm.dbg.value(metadata i8 11, metadata !1016, metadata !DIExpression()), !dbg !1113
  br label %188, !dbg !1128

117:                                              ; preds = %107
  %118 = load i8, ptr %108, align 1, !dbg !1129, !tbaa !826
  tail call void @llvm.dbg.value(metadata i8 %118, metadata !1017, metadata !DIExpression()), !dbg !1130
  %119 = zext i8 %118 to i32, !dbg !1131
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !1133, metadata !DIExpression()), !dbg !1139
  switch i8 %118, label %177 [
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
  ], !dbg !1141

120:                                              ; preds = %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117
  %121 = getelementptr inbounds i8, ptr %101, i64 3, !dbg !1142
  tail call void @llvm.dbg.value(metadata ptr %121, metadata !1012, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata i8 %118, metadata !1143, metadata !DIExpression()), !dbg !1148
  switch i8 %118, label %122 [
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
  ], !dbg !1150

122:                                              ; preds = %120
  %123 = add nsw i32 %119, -48, !dbg !1151
  br label %129, !dbg !1153

124:                                              ; preds = %120, %120
  br label %129, !dbg !1154

125:                                              ; preds = %120, %120
  br label %129, !dbg !1155

126:                                              ; preds = %120, %120
  br label %129, !dbg !1156

127:                                              ; preds = %120, %120
  br label %129, !dbg !1157

128:                                              ; preds = %120, %120
  br label %129, !dbg !1158

129:                                              ; preds = %120, %120, %122, %124, %125, %126, %127, %128
  %130 = phi i32 [ %123, %122 ], [ 15, %128 ], [ 14, %127 ], [ 13, %126 ], [ 12, %125 ], [ 11, %124 ], [ 10, %120 ], [ 10, %120 ], !dbg !1159
  tail call void @llvm.dbg.value(metadata i32 %130, metadata !1016, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1113
  %131 = load i8, ptr %121, align 1, !dbg !1160, !tbaa !826
  tail call void @llvm.dbg.value(metadata i8 %131, metadata !1017, metadata !DIExpression()), !dbg !1130
  %132 = zext i8 %131 to i32, !dbg !1161
  tail call void @llvm.dbg.value(metadata i32 %132, metadata !1133, metadata !DIExpression()), !dbg !1163
  switch i8 %131, label %146 [
    i8 48, label %133
    i8 49, label %133
    i8 50, label %133
    i8 51, label %133
    i8 52, label %133
    i8 53, label %133
    i8 54, label %133
    i8 55, label %133
    i8 56, label %133
    i8 57, label %133
    i8 97, label %133
    i8 98, label %133
    i8 99, label %133
    i8 100, label %133
    i8 101, label %133
    i8 102, label %133
    i8 65, label %133
    i8 66, label %133
    i8 67, label %133
    i8 68, label %133
    i8 69, label %133
    i8 70, label %133
  ], !dbg !1165

133:                                              ; preds = %129, %129, %129, %129, %129, %129, %129, %129, %129, %129, %129, %129, %129, %129, %129, %129, %129, %129, %129, %129, %129, %129
  %134 = getelementptr inbounds i8, ptr %101, i64 4, !dbg !1166
  tail call void @llvm.dbg.value(metadata ptr %134, metadata !1012, metadata !DIExpression()), !dbg !1113
  %135 = shl nuw nsw i32 %130, 4, !dbg !1168
  tail call void @llvm.dbg.value(metadata i8 %131, metadata !1143, metadata !DIExpression()), !dbg !1169
  switch i8 %131, label %136 [
    i8 97, label %143
    i8 65, label %143
    i8 98, label %138
    i8 66, label %138
    i8 99, label %139
    i8 67, label %139
    i8 100, label %140
    i8 68, label %140
    i8 101, label %141
    i8 69, label %141
    i8 102, label %142
    i8 70, label %142
  ], !dbg !1171

136:                                              ; preds = %133
  %137 = add nsw i32 %132, -48, !dbg !1172
  br label %143, !dbg !1173

138:                                              ; preds = %133, %133
  br label %143, !dbg !1174

139:                                              ; preds = %133, %133
  br label %143, !dbg !1175

140:                                              ; preds = %133, %133
  br label %143, !dbg !1176

141:                                              ; preds = %133, %133
  br label %143, !dbg !1177

142:                                              ; preds = %133, %133
  br label %143, !dbg !1178

143:                                              ; preds = %133, %133, %136, %138, %139, %140, %141, %142
  %144 = phi i32 [ %137, %136 ], [ 15, %142 ], [ 14, %141 ], [ 13, %140 ], [ 12, %139 ], [ 11, %138 ], [ 10, %133 ], [ 10, %133 ], !dbg !1179
  %145 = add nuw nsw i32 %144, %135, !dbg !1180
  tail call void @llvm.dbg.value(metadata i32 %145, metadata !1016, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1113
  br label %146, !dbg !1181

146:                                              ; preds = %143, %129
  %147 = phi ptr [ %134, %143 ], [ %121, %129 ], !dbg !1130
  %148 = phi i32 [ %145, %143 ], [ %130, %129 ]
  %149 = trunc i32 %148 to i8, !dbg !1130
  tail call void @llvm.dbg.value(metadata i8 %149, metadata !1016, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata ptr %147, metadata !1012, metadata !DIExpression()), !dbg !1113
  br label %188

150:                                              ; preds = %107
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1016, metadata !DIExpression()), !dbg !1113
  %151 = load i8, ptr %108, align 1, !dbg !1182, !tbaa !826
  %152 = and i8 %151, -8, !dbg !1184
  %153 = icmp eq i8 %152, 48, !dbg !1184
  br i1 %153, label %154, label %188, !dbg !1184

154:                                              ; preds = %150
  %155 = getelementptr inbounds i8, ptr %101, i64 3, !dbg !1185
  tail call void @llvm.dbg.value(metadata ptr %155, metadata !1012, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata i8 %151, metadata !1016, metadata !DIExpression()), !dbg !1113
  br label %156, !dbg !1186

156:                                              ; preds = %107, %107, %107, %107, %107, %107, %107, %154
  %157 = phi ptr [ %108, %107 ], [ %108, %107 ], [ %108, %107 ], [ %108, %107 ], [ %108, %107 ], [ %108, %107 ], [ %108, %107 ], [ %155, %154 ], !dbg !1187
  %158 = phi i8 [ %105, %107 ], [ %105, %107 ], [ %105, %107 ], [ %105, %107 ], [ %105, %107 ], [ %105, %107 ], [ %105, %107 ], [ %151, %154 ], !dbg !1187
  tail call void @llvm.dbg.value(metadata i8 %158, metadata !1016, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata ptr %157, metadata !1012, metadata !DIExpression()), !dbg !1113
  %159 = add nsw i8 %158, -48, !dbg !1188
  tail call void @llvm.dbg.value(metadata i8 %159, metadata !1016, metadata !DIExpression()), !dbg !1113
  %160 = load i8, ptr %157, align 1, !dbg !1189, !tbaa !826
  %161 = and i8 %160, -8, !dbg !1191
  %162 = icmp eq i8 %161, 48, !dbg !1191
  %163 = shl nuw nsw i8 %159, 3, !dbg !1191
  %164 = add nsw i8 %160, -48, !dbg !1191
  %165 = add i8 %164, %163, !dbg !1191
  %166 = zext i1 %162 to i64, !dbg !1191
  %167 = getelementptr inbounds i8, ptr %157, i64 %166, !dbg !1191
  %168 = select i1 %162, i8 %165, i8 %159, !dbg !1191
  tail call void @llvm.dbg.value(metadata i8 %168, metadata !1016, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata ptr %167, metadata !1012, metadata !DIExpression()), !dbg !1113
  %169 = load i8, ptr %167, align 1, !dbg !1192, !tbaa !826
  %170 = and i8 %169, -8, !dbg !1194
  %171 = icmp eq i8 %170, 48, !dbg !1194
  br i1 %171, label %172, label %188, !dbg !1194

172:                                              ; preds = %156
  %173 = shl i8 %168, 3, !dbg !1195
  %174 = getelementptr inbounds i8, ptr %167, i64 1, !dbg !1196
  tail call void @llvm.dbg.value(metadata ptr %174, metadata !1012, metadata !DIExpression()), !dbg !1113
  %175 = add nsw i8 %169, -48, !dbg !1197
  %176 = or disjoint i8 %173, %175, !dbg !1198
  tail call void @llvm.dbg.value(metadata i8 %176, metadata !1016, metadata !DIExpression()), !dbg !1113
  br label %188, !dbg !1199

177:                                              ; preds = %117, %107
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !1016, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata ptr %108, metadata !1012, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 92, metadata !1200, metadata !DIExpression()), !dbg !1206
  %178 = load ptr, ptr @stdout, align 8, !dbg !1208, !tbaa !781
  %179 = getelementptr inbounds %struct._IO_FILE, ptr %178, i64 0, i32 5, !dbg !1208
  %180 = load ptr, ptr %179, align 8, !dbg !1208, !tbaa !1209
  %181 = getelementptr inbounds %struct._IO_FILE, ptr %178, i64 0, i32 6, !dbg !1208
  %182 = load ptr, ptr %181, align 8, !dbg !1208, !tbaa !1212
  %183 = icmp ult ptr %180, %182, !dbg !1208
  br i1 %183, label %186, label %184, !dbg !1208, !prof !1213

184:                                              ; preds = %177
  %185 = tail call i32 @__overflow(ptr noundef nonnull %178, i32 noundef 92) #38, !dbg !1208
  br label %188, !dbg !1208

186:                                              ; preds = %177
  %187 = getelementptr inbounds i8, ptr %180, i64 1, !dbg !1208
  store ptr %187, ptr %179, align 8, !dbg !1208, !tbaa !1209
  store i8 92, ptr %180, align 1, !dbg !1208, !tbaa !826
  br label %188, !dbg !1208

188:                                              ; preds = %186, %184, %146, %100, %109, %110, %111, %112, %113, %114, %115, %116, %107, %150, %172, %156, %104
  %189 = phi ptr [ %108, %107 ], [ %174, %172 ], [ %167, %156 ], [ %108, %150 ], [ %108, %116 ], [ %108, %115 ], [ %108, %114 ], [ %108, %113 ], [ %108, %112 ], [ %108, %111 ], [ %108, %110 ], [ %108, %109 ], [ %102, %104 ], [ %102, %100 ], [ %147, %146 ], [ %108, %184 ], [ %108, %186 ], !dbg !1113
  %190 = phi i8 [ %105, %107 ], [ %176, %172 ], [ %168, %156 ], [ 0, %150 ], [ 11, %116 ], [ 9, %115 ], [ 13, %114 ], [ 10, %113 ], [ 12, %112 ], [ 27, %111 ], [ 8, %110 ], [ 7, %109 ], [ 92, %104 ], [ %103, %100 ], [ %149, %146 ], [ %105, %184 ], [ %105, %186 ], !dbg !1113
  tail call void @llvm.dbg.value(metadata i8 %190, metadata !1016, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata ptr %189, metadata !1012, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %190, metadata !1200, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1214
  %191 = load ptr, ptr @stdout, align 8, !dbg !1216, !tbaa !781
  %192 = getelementptr inbounds %struct._IO_FILE, ptr %191, i64 0, i32 5, !dbg !1216
  %193 = load ptr, ptr %192, align 8, !dbg !1216, !tbaa !1209
  %194 = getelementptr inbounds %struct._IO_FILE, ptr %191, i64 0, i32 6, !dbg !1216
  %195 = load ptr, ptr %194, align 8, !dbg !1216, !tbaa !1212
  %196 = icmp ult ptr %193, %195, !dbg !1216
  br i1 %196, label %201, label %197, !dbg !1216, !prof !1213

197:                                              ; preds = %188
  %198 = zext i8 %190 to i32, !dbg !1217
  call void @llvm.dbg.value(metadata i32 %198, metadata !1200, metadata !DIExpression()), !dbg !1214
  %199 = tail call i32 @__overflow(ptr noundef nonnull %191, i32 noundef %198) #38, !dbg !1216
  br label %200, !dbg !1216

200:                                              ; preds = %197, %201
  br label %100, !dbg !1113, !llvm.loop !1218

201:                                              ; preds = %188
  %202 = getelementptr inbounds i8, ptr %193, i64 1, !dbg !1216
  store ptr %202, ptr %192, align 8, !dbg !1216, !tbaa !1209
  store i8 %190, ptr %193, align 1, !dbg !1216, !tbaa !826
  br label %200, !dbg !1216

203:                                              ; preds = %100
  %204 = add nsw i32 %97, -1, !dbg !1220
  tail call void @llvm.dbg.value(metadata i32 %204, metadata !1001, metadata !DIExpression()), !dbg !1024
  %205 = getelementptr inbounds ptr, ptr %98, i64 1, !dbg !1221
  tail call void @llvm.dbg.value(metadata ptr %205, metadata !1002, metadata !DIExpression()), !dbg !1024
  %206 = icmp eq i32 %97, 1, !dbg !1222
  br i1 %206, label %207, label %208, !dbg !1224

207:                                              ; preds = %203
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1001, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata ptr %205, metadata !1002, metadata !DIExpression()), !dbg !1024
  br i1 %83, label %242, label %253, !dbg !1103

208:                                              ; preds = %203
  call void @llvm.dbg.value(metadata i32 32, metadata !1200, metadata !DIExpression()), !dbg !1225
  %209 = load ptr, ptr @stdout, align 8, !dbg !1227, !tbaa !781
  %210 = getelementptr inbounds %struct._IO_FILE, ptr %209, i64 0, i32 5, !dbg !1227
  %211 = load ptr, ptr %210, align 8, !dbg !1227, !tbaa !1209
  %212 = getelementptr inbounds %struct._IO_FILE, ptr %209, i64 0, i32 6, !dbg !1227
  %213 = load ptr, ptr %212, align 8, !dbg !1227, !tbaa !1212
  %214 = icmp ult ptr %211, %213, !dbg !1227
  br i1 %214, label %217, label %215, !dbg !1227, !prof !1213

215:                                              ; preds = %208
  %216 = tail call i32 @__overflow(ptr noundef nonnull %209, i32 noundef 32) #38, !dbg !1227
  br label %219, !dbg !1227

217:                                              ; preds = %208
  %218 = getelementptr inbounds i8, ptr %211, i64 1, !dbg !1227
  store ptr %218, ptr %210, align 8, !dbg !1227, !tbaa !1209
  store i8 32, ptr %211, align 1, !dbg !1227, !tbaa !826
  br label %219, !dbg !1227

219:                                              ; preds = %217, %215
  tail call void @llvm.dbg.value(metadata i32 %204, metadata !1001, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata ptr %205, metadata !1002, metadata !DIExpression()), !dbg !1024
  %220 = icmp sgt i32 %97, 1, !dbg !1228
  br i1 %220, label %96, label %.loopexit1, !dbg !1111, !llvm.loop !1229

221:                                              ; preds = %.preheader2, %236
  %222 = phi ptr [ %225, %236 ], [ %82, %.preheader2 ]
  %223 = phi i32 [ %224, %236 ], [ %84, %.preheader2 ]
  %224 = add nsw i32 %223, -1, !dbg !1231
  %225 = getelementptr inbounds ptr, ptr %222, i64 1, !dbg !1232
  call void @llvm.dbg.value(metadata i32 32, metadata !1200, metadata !DIExpression()), !dbg !1233
  %226 = load ptr, ptr @stdout, align 8, !dbg !1235, !tbaa !781
  %227 = getelementptr inbounds %struct._IO_FILE, ptr %226, i64 0, i32 5, !dbg !1235
  %228 = load ptr, ptr %227, align 8, !dbg !1235, !tbaa !1209
  %229 = getelementptr inbounds %struct._IO_FILE, ptr %226, i64 0, i32 6, !dbg !1235
  %230 = load ptr, ptr %229, align 8, !dbg !1235, !tbaa !1212
  %231 = icmp ult ptr %228, %230, !dbg !1235
  br i1 %231, label %234, label %232, !dbg !1235, !prof !1213

232:                                              ; preds = %221
  %233 = tail call i32 @__overflow(ptr noundef nonnull %226, i32 noundef 32) #38, !dbg !1235
  br label %236, !dbg !1235

234:                                              ; preds = %221
  %235 = getelementptr inbounds i8, ptr %228, i64 1, !dbg !1235
  store ptr %235, ptr %227, align 8, !dbg !1235, !tbaa !1209
  store i8 32, ptr %228, align 1, !dbg !1235, !tbaa !826
  br label %236, !dbg !1235

236:                                              ; preds = %234, %232
  tail call void @llvm.dbg.value(metadata i32 %224, metadata !1001, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata ptr %225, metadata !1002, metadata !DIExpression()), !dbg !1024
  %237 = load ptr, ptr %225, align 8, !dbg !1106, !tbaa !781
  %238 = load ptr, ptr @stdout, align 8, !dbg !1106, !tbaa !781
  %239 = tail call i32 @fputs_unlocked(ptr noundef %237, ptr noundef %238), !dbg !1106
  tail call void @llvm.dbg.value(metadata i32 %224, metadata !1001, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1024
  tail call void @llvm.dbg.value(metadata ptr %225, metadata !1002, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1024
  %240 = icmp eq i32 %224, 1, !dbg !1108
  br i1 %240, label %.loopexit3, label %221, !dbg !1110, !llvm.loop !1236

.loopexit1:                                       ; preds = %219
  br label %241, !dbg !1103

.loopexit3:                                       ; preds = %236
  br label %241, !dbg !1103

241:                                              ; preds = %.loopexit3, %.loopexit1, %90, %89, %95
  br i1 %83, label %242, label %253, !dbg !1103

242:                                              ; preds = %88, %207, %241
  call void @llvm.dbg.value(metadata i32 10, metadata !1200, metadata !DIExpression()), !dbg !1238
  %243 = load ptr, ptr @stdout, align 8, !dbg !1241, !tbaa !781
  %244 = getelementptr inbounds %struct._IO_FILE, ptr %243, i64 0, i32 5, !dbg !1241
  %245 = load ptr, ptr %244, align 8, !dbg !1241, !tbaa !1209
  %246 = getelementptr inbounds %struct._IO_FILE, ptr %243, i64 0, i32 6, !dbg !1241
  %247 = load ptr, ptr %246, align 8, !dbg !1241, !tbaa !1212
  %248 = icmp ult ptr %245, %247, !dbg !1241
  br i1 %248, label %251, label %249, !dbg !1241, !prof !1213

249:                                              ; preds = %242
  %250 = tail call i32 @__overflow(ptr noundef nonnull %243, i32 noundef 10) #38, !dbg !1241
  br label %253, !dbg !1241

251:                                              ; preds = %242
  %252 = getelementptr inbounds i8, ptr %245, i64 1, !dbg !1241
  store ptr %252, ptr %244, align 8, !dbg !1241, !tbaa !1209
  store i8 10, ptr %245, align 1, !dbg !1241, !tbaa !826
  br label %253, !dbg !1241

.loopexit:                                        ; preds = %107
  br label %253, !dbg !1242

253:                                              ; preds = %.loopexit, %88, %207, %251, %249, %241, %30
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
  store ptr %0, ptr @file_name, align 8, !dbg !1258, !tbaa !781
  ret void, !dbg !1259
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #11 !dbg !1260 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1264, metadata !DIExpression()), !dbg !1265
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1266, !tbaa !1267
  ret void, !dbg !1269
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1270 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1275, !tbaa !781
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !1276
  %3 = icmp eq i32 %2, 0, !dbg !1277
  br i1 %3, label %22, label %4, !dbg !1278

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1279, !tbaa !1267, !range !1280, !noundef !894
  %6 = icmp eq i8 %5, 0, !dbg !1279
  br i1 %6, label %11, label %7, !dbg !1281

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1282
  %9 = load i32, ptr %8, align 4, !dbg !1282, !tbaa !817
  %10 = icmp eq i32 %9, 32, !dbg !1283
  br i1 %10, label %22, label %11, !dbg !1284

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1.33, i32 noundef 5) #38, !dbg !1285
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1272, metadata !DIExpression()), !dbg !1286
  %13 = load ptr, ptr @file_name, align 8, !dbg !1287, !tbaa !781
  %14 = icmp eq ptr %13, null, !dbg !1287
  %15 = tail call ptr @__errno_location() #40, !dbg !1289
  %16 = load i32, ptr %15, align 4, !dbg !1289, !tbaa !817
  br i1 %14, label %19, label %17, !dbg !1290

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !1291
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.34, ptr noundef %18, ptr noundef %12) #38, !dbg !1291
  br label %20, !dbg !1291

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.35, ptr noundef %12) #38, !dbg !1292
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1293, !tbaa !817
  tail call void @_exit(i32 noundef %21) #37, !dbg !1294
  unreachable, !dbg !1294

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1295, !tbaa !781
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !1297
  %25 = icmp eq i32 %24, 0, !dbg !1298
  br i1 %25, label %28, label %26, !dbg !1299

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1300, !tbaa !817
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
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #13 !dbg !1310 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1314, metadata !DIExpression()), !dbg !1318
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1315, metadata !DIExpression()), !dbg !1318
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1316, metadata !DIExpression()), !dbg !1318
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1317, metadata !DIExpression(DW_OP_deref)), !dbg !1318
  tail call fastcc void @flush_stdout(), !dbg !1319
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1320, !tbaa !781
  %7 = icmp eq ptr %6, null, !dbg !1320
  br i1 %7, label %9, label %8, !dbg !1322

8:                                                ; preds = %4
  tail call void %6() #38, !dbg !1323
  br label %13, !dbg !1323

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1324, !tbaa !781
  %11 = tail call ptr @getprogname() #39, !dbg !1324
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef %11) #38, !dbg !1324
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !1326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1326, !tbaa.struct !1327
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1326
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !1326
  ret void, !dbg !1328
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1329 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1331, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i32 1, metadata !1333, metadata !DIExpression()), !dbg !1336
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !1339
  %2 = icmp slt i32 %1, 0, !dbg !1340
  br i1 %2, label %6, label %3, !dbg !1341

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1342, !tbaa !781
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !1342
  br label %6, !dbg !1342

6:                                                ; preds = %3, %0
  ret void, !dbg !1343
}

declare !dbg !1344 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1382 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1388
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1384, metadata !DIExpression()), !dbg !1389
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1385, metadata !DIExpression()), !dbg !1389
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1386, metadata !DIExpression()), !dbg !1389
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1387, metadata !DIExpression(DW_OP_deref)), !dbg !1389
  %7 = load ptr, ptr @stderr, align 8, !dbg !1390, !tbaa !781
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !1391, !noalias !1400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1404
  call void @llvm.dbg.value(metadata ptr %7, metadata !1396, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata ptr %2, metadata !1397, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata ptr poison, metadata !1398, metadata !DIExpression(DW_OP_deref)), !dbg !1405
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #38, !dbg !1391
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !1391, !noalias !1400
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1406, !tbaa !817
  %10 = add i32 %9, 1, !dbg !1406
  store i32 %10, ptr @error_message_count, align 4, !dbg !1406, !tbaa !817
  %11 = icmp eq i32 %1, 0, !dbg !1407
  br i1 %11, label %21, label %12, !dbg !1409

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1410, metadata !DIExpression(), metadata !1388, metadata ptr %5, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i32 %1, metadata !1413, metadata !DIExpression()), !dbg !1418
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !1420
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !1421
  call void @llvm.dbg.value(metadata ptr %13, metadata !1414, metadata !DIExpression()), !dbg !1418
  %14 = icmp eq ptr %13, null, !dbg !1422
  br i1 %14, label %15, label %17, !dbg !1424

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.37, ptr noundef nonnull @.str.5.38, i32 noundef 5) #38, !dbg !1425
  call void @llvm.dbg.value(metadata ptr %16, metadata !1414, metadata !DIExpression()), !dbg !1418
  br label %17, !dbg !1426

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1418
  call void @llvm.dbg.value(metadata ptr %18, metadata !1414, metadata !DIExpression()), !dbg !1418
  %19 = load ptr, ptr @stderr, align 8, !dbg !1427, !tbaa !781
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.39, ptr noundef %18) #38, !dbg !1427
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !1428
  br label %21, !dbg !1429

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1430, !tbaa !781
  call void @llvm.dbg.value(metadata i32 10, metadata !1431, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata ptr %22, metadata !1436, metadata !DIExpression()), !dbg !1437
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1439
  %24 = load ptr, ptr %23, align 8, !dbg !1439, !tbaa !1209
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1439
  %26 = load ptr, ptr %25, align 8, !dbg !1439, !tbaa !1212
  %27 = icmp ult ptr %24, %26, !dbg !1439
  br i1 %27, label %30, label %28, !dbg !1439, !prof !1213

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #38, !dbg !1439
  br label %32, !dbg !1439

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1439
  store ptr %31, ptr %23, align 8, !dbg !1439, !tbaa !1209
  store i8 10, ptr %24, align 1, !dbg !1439, !tbaa !826
  br label %32, !dbg !1439

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1440, !tbaa !781
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #38, !dbg !1440
  %35 = icmp eq i32 %0, 0, !dbg !1441
  br i1 %35, label %37, label %36, !dbg !1443

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #37, !dbg !1444
  unreachable, !dbg !1444

37:                                               ; preds = %32
  ret void, !dbg !1445
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1446 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1449 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1452 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #4

declare !dbg !1455 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1459 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1467
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1466, metadata !DIExpression(), metadata !1467, metadata ptr %4, metadata !DIExpression()), !dbg !1468
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1463, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1464, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1465, metadata !DIExpression()), !dbg !1468
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #38, !dbg !1469
  call void @llvm.va_start(ptr nonnull %4), !dbg !1470
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !1471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1471, !tbaa.struct !1327
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #42, !dbg !1471
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !1471
  call void @llvm.va_end(ptr nonnull %4), !dbg !1472
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #38, !dbg !1473
  ret void, !dbg !1473
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #13 !dbg !369 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !385, metadata !DIExpression()), !dbg !1474
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !386, metadata !DIExpression()), !dbg !1474
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !387, metadata !DIExpression()), !dbg !1474
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !388, metadata !DIExpression()), !dbg !1474
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !389, metadata !DIExpression()), !dbg !1474
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !390, metadata !DIExpression(DW_OP_deref)), !dbg !1474
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1475, !tbaa !817
  %9 = icmp eq i32 %8, 0, !dbg !1475
  br i1 %9, label %24, label %10, !dbg !1477

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1478, !tbaa !817
  %12 = icmp eq i32 %11, %3, !dbg !1481
  br i1 %12, label %13, label %23, !dbg !1482

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1483, !tbaa !781
  %15 = icmp eq ptr %14, %2, !dbg !1484
  br i1 %15, label %37, label %16, !dbg !1485

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1486
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1487
  br i1 %19, label %20, label %23, !dbg !1487

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1488
  %22 = icmp eq i32 %21, 0, !dbg !1489
  br i1 %22, label %37, label %23, !dbg !1490

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1491, !tbaa !781
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1492, !tbaa !817
  br label %24, !dbg !1493

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1494
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1495, !tbaa !781
  %26 = icmp eq ptr %25, null, !dbg !1495
  br i1 %26, label %28, label %27, !dbg !1497

27:                                               ; preds = %24
  tail call void %25() #38, !dbg !1498
  br label %32, !dbg !1498

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1499, !tbaa !781
  %30 = tail call ptr @getprogname() #39, !dbg !1499
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.42, ptr noundef %30) #38, !dbg !1499
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1501, !tbaa !781
  %34 = icmp eq ptr %2, null, !dbg !1501
  %35 = select i1 %34, ptr @.str.3.43, ptr @.str.2.44, !dbg !1501
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #38, !dbg !1501
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !1502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1502, !tbaa.struct !1327
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1502
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !1502
  br label %37, !dbg !1503

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1503
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1504 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1514
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1513, metadata !DIExpression(), metadata !1514, metadata ptr %6, metadata !DIExpression()), !dbg !1515
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1508, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1509, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1510, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1511, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1512, metadata !DIExpression()), !dbg !1515
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !1516
  call void @llvm.va_start(ptr nonnull %6), !dbg !1517
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !1518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1518, !tbaa.struct !1327
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #42, !dbg !1518
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !1518
  call void @llvm.va_end(ptr nonnull %6), !dbg !1519
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !1520
  ret void, !dbg !1520
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1521 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1524, !tbaa !781
  ret ptr %1, !dbg !1525
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1526 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1528, metadata !DIExpression()), !dbg !1531
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !1532
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1529, metadata !DIExpression()), !dbg !1531
  %3 = icmp eq ptr %2, null, !dbg !1533
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1533
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1533
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1530, metadata !DIExpression()), !dbg !1531
  %6 = ptrtoint ptr %5 to i64, !dbg !1534
  %7 = ptrtoint ptr %0 to i64, !dbg !1534
  %8 = sub i64 %6, %7, !dbg !1534
  %9 = icmp sgt i64 %8, 6, !dbg !1536
  br i1 %9, label %10, label %19, !dbg !1537

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1538
  call void @llvm.dbg.value(metadata ptr %11, metadata !1539, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata ptr @.str.58, metadata !1544, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i64 7, metadata !1545, metadata !DIExpression()), !dbg !1546
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.58, i64 7), !dbg !1548
  %13 = icmp eq i32 %12, 0, !dbg !1549
  br i1 %13, label %14, label %19, !dbg !1550

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1528, metadata !DIExpression()), !dbg !1531
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.59, i64 noundef 3) #39, !dbg !1551
  %16 = icmp eq i32 %15, 0, !dbg !1554
  %17 = select i1 %16, i64 3, i64 0, !dbg !1555
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1555
  br label %19, !dbg !1555

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1531
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1530, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1528, metadata !DIExpression()), !dbg !1531
  store ptr %20, ptr @program_name, align 8, !dbg !1556, !tbaa !781
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1557, !tbaa !781
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1558, !tbaa !781
  ret void, !dbg !1559
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1560 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !427 {
  %3 = alloca i32, align 4, !DIAssignID !1561
  call void @llvm.dbg.assign(metadata i1 undef, metadata !437, metadata !DIExpression(), metadata !1561, metadata ptr %3, metadata !DIExpression()), !dbg !1562
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1563
  call void @llvm.dbg.assign(metadata i1 undef, metadata !442, metadata !DIExpression(), metadata !1563, metadata ptr %4, metadata !DIExpression()), !dbg !1562
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !1562
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !435, metadata !DIExpression()), !dbg !1562
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !1564
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !436, metadata !DIExpression()), !dbg !1562
  %6 = icmp eq ptr %5, %0, !dbg !1565
  br i1 %6, label %7, label %14, !dbg !1567

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !1568
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !1569
  call void @llvm.dbg.value(metadata ptr %4, metadata !1570, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata ptr %4, metadata !1579, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 0, metadata !1585, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 8, metadata !1586, metadata !DIExpression()), !dbg !1587
  store i64 0, ptr %4, align 8, !dbg !1589
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !1590
  %9 = icmp eq i64 %8, 2, !dbg !1592
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1593
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1562
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1594
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !1594
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1562
  ret ptr %15, !dbg !1594
}

; Function Attrs: nounwind
declare !dbg !1595 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1601 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1606, metadata !DIExpression()), !dbg !1609
  %2 = tail call ptr @__errno_location() #40, !dbg !1610
  %3 = load i32, ptr %2, align 4, !dbg !1610, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1607, metadata !DIExpression()), !dbg !1609
  %4 = icmp eq ptr %0, null, !dbg !1611
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1611
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #43, !dbg !1612
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1608, metadata !DIExpression()), !dbg !1609
  store i32 %3, ptr %2, align 4, !dbg !1613, !tbaa !817
  ret ptr %6, !dbg !1614
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1615 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1621, metadata !DIExpression()), !dbg !1622
  %2 = icmp eq ptr %0, null, !dbg !1623
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1623
  %4 = load i32, ptr %3, align 8, !dbg !1624, !tbaa !1625
  ret i32 %4, !dbg !1627
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1628 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1632, metadata !DIExpression()), !dbg !1634
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1633, metadata !DIExpression()), !dbg !1634
  %3 = icmp eq ptr %0, null, !dbg !1635
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1635
  store i32 %1, ptr %4, align 8, !dbg !1636, !tbaa !1625
  ret void, !dbg !1637
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1638 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1642, metadata !DIExpression()), !dbg !1650
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1643, metadata !DIExpression()), !dbg !1650
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1644, metadata !DIExpression()), !dbg !1650
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1645, metadata !DIExpression()), !dbg !1650
  %4 = icmp eq ptr %0, null, !dbg !1651
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1651
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1652
  %7 = lshr i8 %1, 5, !dbg !1653
  %8 = zext nneg i8 %7 to i64, !dbg !1653
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1654
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1646, metadata !DIExpression()), !dbg !1650
  %10 = and i8 %1, 31, !dbg !1655
  %11 = zext nneg i8 %10 to i32, !dbg !1655
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1648, metadata !DIExpression()), !dbg !1650
  %12 = load i32, ptr %9, align 4, !dbg !1656, !tbaa !817
  %13 = lshr i32 %12, %11, !dbg !1657
  %14 = and i32 %13, 1, !dbg !1658
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1649, metadata !DIExpression()), !dbg !1650
  %15 = xor i32 %13, %2, !dbg !1659
  %16 = and i32 %15, 1, !dbg !1659
  %17 = shl nuw i32 %16, %11, !dbg !1660
  %18 = xor i32 %17, %12, !dbg !1661
  store i32 %18, ptr %9, align 4, !dbg !1661, !tbaa !817
  ret i32 %14, !dbg !1662
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1663 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1667, metadata !DIExpression()), !dbg !1670
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1668, metadata !DIExpression()), !dbg !1670
  %3 = icmp eq ptr %0, null, !dbg !1671
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1673
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1667, metadata !DIExpression()), !dbg !1670
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1674
  %6 = load i32, ptr %5, align 4, !dbg !1674, !tbaa !1675
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1669, metadata !DIExpression()), !dbg !1670
  store i32 %1, ptr %5, align 4, !dbg !1676, !tbaa !1675
  ret i32 %6, !dbg !1677
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1678 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1682, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1683, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1684, metadata !DIExpression()), !dbg !1685
  %4 = icmp eq ptr %0, null, !dbg !1686
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1688
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1682, metadata !DIExpression()), !dbg !1685
  store i32 10, ptr %5, align 8, !dbg !1689, !tbaa !1625
  %6 = icmp ne ptr %1, null, !dbg !1690
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1692
  br i1 %8, label %10, label %9, !dbg !1692

9:                                                ; preds = %3
  tail call void @abort() #37, !dbg !1693
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
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1706, metadata !DIExpression()), !dbg !1714
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1707, metadata !DIExpression()), !dbg !1714
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1708, metadata !DIExpression()), !dbg !1714
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1709, metadata !DIExpression()), !dbg !1714
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1710, metadata !DIExpression()), !dbg !1714
  %6 = icmp eq ptr %4, null, !dbg !1715
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1715
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1711, metadata !DIExpression()), !dbg !1714
  %8 = tail call ptr @__errno_location() #40, !dbg !1716
  %9 = load i32, ptr %8, align 4, !dbg !1716, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1712, metadata !DIExpression()), !dbg !1714
  %10 = load i32, ptr %7, align 8, !dbg !1717, !tbaa !1625
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1718
  %12 = load i32, ptr %11, align 4, !dbg !1718, !tbaa !1675
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1719
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1720
  %15 = load ptr, ptr %14, align 8, !dbg !1720, !tbaa !1696
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1721
  %17 = load ptr, ptr %16, align 8, !dbg !1721, !tbaa !1699
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1722
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1713, metadata !DIExpression()), !dbg !1714
  store i32 %9, ptr %8, align 4, !dbg !1723, !tbaa !817
  ret i64 %18, !dbg !1724
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1725 {
  %10 = alloca i32, align 4, !DIAssignID !1793
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1794
  %12 = alloca i32, align 4, !DIAssignID !1795
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1796
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1797
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1771, metadata !DIExpression(), metadata !1797, metadata ptr %14, metadata !DIExpression()), !dbg !1798
  %15 = alloca i32, align 4, !DIAssignID !1799
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1774, metadata !DIExpression(), metadata !1799, metadata ptr %15, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1731, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1732, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1733, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1734, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1735, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1736, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1737, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1738, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1739, metadata !DIExpression()), !dbg !1801
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !1802
  %17 = icmp eq i64 %16, 1, !dbg !1803
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1740, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1741, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1742, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1743, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1744, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1745, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1746, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1747, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1748, metadata !DIExpression()), !dbg !1801
  %18 = and i32 %5, 2, !dbg !1804
  %19 = icmp ne i32 %18, 0, !dbg !1804
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1804

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !1805
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !1806
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !1807
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1732, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1748, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1747, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1746, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1745, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1744, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1743, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1742, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1741, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1734, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1739, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !1738, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1735, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.label(metadata !1749), !dbg !1808
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1750, metadata !DIExpression()), !dbg !1801
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
  ], !dbg !1809

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1746, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1735, metadata !DIExpression()), !dbg !1801
  br label %101, !dbg !1810

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1746, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1735, metadata !DIExpression()), !dbg !1801
  br i1 %36, label %101, label %42, !dbg !1810

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1811
  br i1 %43, label %101, label %44, !dbg !1815

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1811, !tbaa !826
  br label %101, !dbg !1811

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !543, metadata !DIExpression(), metadata !1795, metadata ptr %12, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.assign(metadata i1 undef, metadata !544, metadata !DIExpression(), metadata !1796, metadata ptr %13, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata ptr @.str.11.72, metadata !540, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i32 %28, metadata !541, metadata !DIExpression()), !dbg !1816
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.73, ptr noundef nonnull @.str.11.72, i32 noundef 5) #38, !dbg !1820
  call void @llvm.dbg.value(metadata ptr %46, metadata !542, metadata !DIExpression()), !dbg !1816
  %47 = icmp eq ptr %46, @.str.11.72, !dbg !1821
  br i1 %47, label %48, label %57, !dbg !1823

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !1824
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !1825
  call void @llvm.dbg.value(metadata ptr %13, metadata !1826, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata ptr %13, metadata !1834, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 0, metadata !1837, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 8, metadata !1838, metadata !DIExpression()), !dbg !1839
  store i64 0, ptr %13, align 8, !dbg !1841
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !1842
  %50 = icmp eq i64 %49, 3, !dbg !1844
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1845
  %54 = icmp eq i32 %28, 9, !dbg !1845
  %55 = select i1 %54, ptr @.str.10.74, ptr @.str.12.75, !dbg !1845
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1845
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !1846
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !1846
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1816
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !1738, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.assign(metadata i1 undef, metadata !543, metadata !DIExpression(), metadata !1793, metadata ptr %10, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.assign(metadata i1 undef, metadata !544, metadata !DIExpression(), metadata !1794, metadata ptr %11, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata ptr @.str.12.75, metadata !540, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 %28, metadata !541, metadata !DIExpression()), !dbg !1847
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.73, ptr noundef nonnull @.str.12.75, i32 noundef 5) #38, !dbg !1849
  call void @llvm.dbg.value(metadata ptr %59, metadata !542, metadata !DIExpression()), !dbg !1847
  %60 = icmp eq ptr %59, @.str.12.75, !dbg !1850
  br i1 %60, label %61, label %70, !dbg !1851

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !1852
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !1853
  call void @llvm.dbg.value(metadata ptr %11, metadata !1826, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata ptr %11, metadata !1834, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i32 0, metadata !1837, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i64 8, metadata !1838, metadata !DIExpression()), !dbg !1856
  store i64 0, ptr %11, align 8, !dbg !1858
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !1859
  %63 = icmp eq i64 %62, 3, !dbg !1860
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1861
  %67 = icmp eq i32 %28, 9, !dbg !1861
  %68 = select i1 %67, ptr @.str.10.74, ptr @.str.12.75, !dbg !1861
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1861
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !1862
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !1862
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1739, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1738, metadata !DIExpression()), !dbg !1801
  br i1 %36, label %88, label %73, !dbg !1863

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1751, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1741, metadata !DIExpression()), !dbg !1801
  %74 = load i8, ptr %71, align 1, !dbg !1865, !tbaa !826
  %75 = icmp eq i8 %74, 0, !dbg !1867
  br i1 %75, label %88, label %.preheader11, !dbg !1867

.preheader11:                                     ; preds = %73
  br label %76, !dbg !1867

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !1751, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !1741, metadata !DIExpression()), !dbg !1801
  %80 = icmp ult i64 %79, %39, !dbg !1868
  br i1 %80, label %81, label %83, !dbg !1871

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1868
  store i8 %77, ptr %82, align 1, !dbg !1868, !tbaa !826
  br label %83, !dbg !1868

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1871
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1741, metadata !DIExpression()), !dbg !1801
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1872
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !1751, metadata !DIExpression()), !dbg !1864
  %86 = load i8, ptr %85, align 1, !dbg !1865, !tbaa !826
  %87 = icmp eq i8 %86, 0, !dbg !1867
  br i1 %87, label %.loopexit12, label %76, !dbg !1867, !llvm.loop !1873

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !1871
  br label %88, !dbg !1875

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !1876
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1741, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1745, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1743, metadata !DIExpression()), !dbg !1801
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #39, !dbg !1875
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !1744, metadata !DIExpression()), !dbg !1801
  br label %101, !dbg !1877

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1745, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1746, metadata !DIExpression()), !dbg !1801
  br label %101, !dbg !1878

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1746, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1745, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1735, metadata !DIExpression()), !dbg !1801
  br label %101, !dbg !1879

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1746, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1745, metadata !DIExpression()), !dbg !1801
  br i1 %36, label %101, label %95, !dbg !1880

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1746, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1745, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1735, metadata !DIExpression()), !dbg !1801
  br i1 %36, label %101, label %95, !dbg !1879

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !1881
  br i1 %97, label %101, label %98, !dbg !1885

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !1881, !tbaa !826
  br label %101, !dbg !1881

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1746, metadata !DIExpression()), !dbg !1801
  br label %101, !dbg !1886

100:                                              ; preds = %27
  call void @abort() #37, !dbg !1887
  unreachable, !dbg !1887

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !1876
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.74, %42 ], [ @.str.10.74, %44 ], [ @.str.10.74, %41 ], [ %33, %27 ], [ @.str.12.75, %95 ], [ @.str.12.75, %98 ], [ @.str.12.75, %94 ], [ @.str.10.74, %40 ], [ @.str.12.75, %91 ], [ @.str.12.75, %92 ], [ @.str.12.75, %93 ], !dbg !1801
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !1801
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1746, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1745, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1744, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !1743, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !1741, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !1739, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !1738, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1735, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1756, metadata !DIExpression()), !dbg !1888
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
  br label %121, !dbg !1889

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !1876
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !1805
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !1890
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !1732, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !1756, metadata !DIExpression()), !dbg !1888
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1750, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1748, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1747, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !1742, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1741, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1734, metadata !DIExpression()), !dbg !1801
  %130 = icmp eq i64 %122, -1, !dbg !1891
  br i1 %130, label %131, label %135, !dbg !1892

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1893
  %133 = load i8, ptr %132, align 1, !dbg !1893, !tbaa !826
  %134 = icmp eq i8 %133, 0, !dbg !1894
  br i1 %134, label %573, label %137, !dbg !1895

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !1896
  br i1 %136, label %573, label %137, !dbg !1895

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1758, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1761, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1762, metadata !DIExpression()), !dbg !1897
  br i1 %113, label %138, label %151, !dbg !1898

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !1900
  %140 = select i1 %130, i1 %114, i1 false, !dbg !1901
  br i1 %140, label %141, label %143, !dbg !1901

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1902
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !1734, metadata !DIExpression()), !dbg !1801
  br label %143, !dbg !1903

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !1903
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !1734, metadata !DIExpression()), !dbg !1801
  %145 = icmp ugt i64 %139, %144, !dbg !1904
  br i1 %145, label %151, label %146, !dbg !1905

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1906
  call void @llvm.dbg.value(metadata ptr %147, metadata !1907, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata ptr %106, metadata !1910, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %107, metadata !1911, metadata !DIExpression()), !dbg !1912
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !1914
  %149 = icmp eq i32 %148, 0, !dbg !1915
  %150 = and i1 %149, %109, !dbg !1916
  br i1 %150, label %.loopexit7, label %151, !dbg !1916

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1758, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !1734, metadata !DIExpression()), !dbg !1801
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1917
  %155 = load i8, ptr %154, align 1, !dbg !1917, !tbaa !826
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !1763, metadata !DIExpression()), !dbg !1897
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
  ], !dbg !1918

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !1919

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !1920

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1761, metadata !DIExpression()), !dbg !1897
  %159 = select i1 %110, i1 true, i1 %127, !dbg !1924
  br i1 %159, label %176, label %160, !dbg !1924

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !1926
  br i1 %161, label %162, label %164, !dbg !1930

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1926
  store i8 39, ptr %163, align 1, !dbg !1926, !tbaa !826
  br label %164, !dbg !1926

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !1930
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !1741, metadata !DIExpression()), !dbg !1801
  %166 = icmp ult i64 %165, %129, !dbg !1931
  br i1 %166, label %167, label %169, !dbg !1934

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !1931
  store i8 36, ptr %168, align 1, !dbg !1931, !tbaa !826
  br label %169, !dbg !1931

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !1934
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !1741, metadata !DIExpression()), !dbg !1801
  %171 = icmp ult i64 %170, %129, !dbg !1935
  br i1 %171, label %172, label %174, !dbg !1938

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !1935
  store i8 39, ptr %173, align 1, !dbg !1935, !tbaa !826
  br label %174, !dbg !1935

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !1938
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !1741, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1750, metadata !DIExpression()), !dbg !1801
  br label %176, !dbg !1939

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !1801
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1750, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !1741, metadata !DIExpression()), !dbg !1801
  %179 = icmp ult i64 %177, %129, !dbg !1940
  br i1 %179, label %180, label %182, !dbg !1943

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !1940
  store i8 92, ptr %181, align 1, !dbg !1940, !tbaa !826
  br label %182, !dbg !1940

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !1943
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !1741, metadata !DIExpression()), !dbg !1801
  br i1 %110, label %184, label %476, !dbg !1944

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !1946
  %186 = icmp ult i64 %185, %152, !dbg !1947
  br i1 %186, label %187, label %433, !dbg !1948

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !1949
  %189 = load i8, ptr %188, align 1, !dbg !1949, !tbaa !826
  %190 = add i8 %189, -48, !dbg !1950
  %191 = icmp ult i8 %190, 10, !dbg !1950
  br i1 %191, label %192, label %433, !dbg !1950

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !1951
  br i1 %193, label %194, label %196, !dbg !1955

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !1951
  store i8 48, ptr %195, align 1, !dbg !1951, !tbaa !826
  br label %196, !dbg !1951

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !1955
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1741, metadata !DIExpression()), !dbg !1801
  %198 = icmp ult i64 %197, %129, !dbg !1956
  br i1 %198, label %199, label %201, !dbg !1959

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !1956
  store i8 48, ptr %200, align 1, !dbg !1956, !tbaa !826
  br label %201, !dbg !1956

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !1959
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !1741, metadata !DIExpression()), !dbg !1801
  br label %433, !dbg !1960

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !1961

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !1962

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !1963

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !1965

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !1967
  %209 = icmp ult i64 %208, %152, !dbg !1968
  br i1 %209, label %210, label %433, !dbg !1969

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !1970
  %212 = load i8, ptr %211, align 1, !dbg !1970, !tbaa !826
  %213 = icmp eq i8 %212, 63, !dbg !1971
  br i1 %213, label %214, label %433, !dbg !1972

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !1973
  %216 = load i8, ptr %215, align 1, !dbg !1973, !tbaa !826
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
  ], !dbg !1974

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !1975

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !1763, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !1756, metadata !DIExpression()), !dbg !1888
  %219 = icmp ult i64 %123, %129, !dbg !1977
  br i1 %219, label %220, label %222, !dbg !1980

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1977
  store i8 63, ptr %221, align 1, !dbg !1977, !tbaa !826
  br label %222, !dbg !1977

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !1741, metadata !DIExpression()), !dbg !1801
  %224 = icmp ult i64 %223, %129, !dbg !1981
  br i1 %224, label %225, label %227, !dbg !1984

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !1981
  store i8 34, ptr %226, align 1, !dbg !1981, !tbaa !826
  br label %227, !dbg !1981

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !1984
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !1741, metadata !DIExpression()), !dbg !1801
  %229 = icmp ult i64 %228, %129, !dbg !1985
  br i1 %229, label %230, label %232, !dbg !1988

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !1985
  store i8 34, ptr %231, align 1, !dbg !1985, !tbaa !826
  br label %232, !dbg !1985

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !1988
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !1741, metadata !DIExpression()), !dbg !1801
  %234 = icmp ult i64 %233, %129, !dbg !1989
  br i1 %234, label %235, label %237, !dbg !1992

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !1989
  store i8 63, ptr %236, align 1, !dbg !1989, !tbaa !826
  br label %237, !dbg !1989

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !1992
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !1741, metadata !DIExpression()), !dbg !1801
  br label %433, !dbg !1993

239:                                              ; preds = %151
  br label %249, !dbg !1994

240:                                              ; preds = %151
  br label %249, !dbg !1995

241:                                              ; preds = %151
  br label %247, !dbg !1996

242:                                              ; preds = %151
  br label %247, !dbg !1997

243:                                              ; preds = %151
  br label %249, !dbg !1998

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !1999

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !2000

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !2003

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !2005
  call void @llvm.dbg.label(metadata !1764), !dbg !2006
  br i1 %118, label %.loopexit8, label %249, !dbg !2007

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !2005
  call void @llvm.dbg.label(metadata !1767), !dbg !2009
  br i1 %108, label %487, label %444, !dbg !2010

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !2011

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !2012, !tbaa !826
  %254 = icmp eq i8 %253, 0, !dbg !2014
  br i1 %254, label %255, label %433, !dbg !2015

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !2016
  br i1 %256, label %257, label %433, !dbg !2018

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1762, metadata !DIExpression()), !dbg !1897
  br label %258, !dbg !2019

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1762, metadata !DIExpression()), !dbg !1897
  br i1 %115, label %260, label %433, !dbg !2020

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !2022

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1747, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1762, metadata !DIExpression()), !dbg !1897
  br i1 %115, label %262, label %433, !dbg !2023

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !2024

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !2027
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !2029
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !2029
  %268 = select i1 %266, i64 %129, i64 0, !dbg !2029
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !1732, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !1742, metadata !DIExpression()), !dbg !1801
  %269 = icmp ult i64 %123, %268, !dbg !2030
  br i1 %269, label %270, label %272, !dbg !2033

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2030
  store i8 39, ptr %271, align 1, !dbg !2030, !tbaa !826
  br label %272, !dbg !2030

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !1741, metadata !DIExpression()), !dbg !1801
  %274 = icmp ult i64 %273, %268, !dbg !2034
  br i1 %274, label %275, label %277, !dbg !2037

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !2034
  store i8 92, ptr %276, align 1, !dbg !2034, !tbaa !826
  br label %277, !dbg !2034

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !2037
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !1741, metadata !DIExpression()), !dbg !1801
  %279 = icmp ult i64 %278, %268, !dbg !2038
  br i1 %279, label %280, label %282, !dbg !2041

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !2038
  store i8 39, ptr %281, align 1, !dbg !2038, !tbaa !826
  br label %282, !dbg !2038

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !2041
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !1741, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1750, metadata !DIExpression()), !dbg !1801
  br label %433, !dbg !2042

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !2043

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1768, metadata !DIExpression()), !dbg !2044
  %286 = tail call ptr @__ctype_b_loc() #40, !dbg !2045
  %287 = load ptr, ptr %286, align 8, !dbg !2045, !tbaa !781
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !2045
  %290 = load i16, ptr %289, align 2, !dbg !2045, !tbaa !858
  %291 = and i16 %290, 16384, !dbg !2045
  %292 = icmp ne i16 %291, 0, !dbg !2047
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !1770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2044
  br label %334, !dbg !2048

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !2049
  call void @llvm.dbg.value(metadata ptr %14, metadata !1826, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %14, metadata !1834, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i32 0, metadata !1837, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i64 8, metadata !1838, metadata !DIExpression()), !dbg !2052
  store i64 0, ptr %14, align 8, !dbg !2054
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1768, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1770, metadata !DIExpression()), !dbg !2044
  %294 = icmp eq i64 %152, -1, !dbg !2055
  br i1 %294, label %295, label %297, !dbg !2057

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2058
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !1734, metadata !DIExpression()), !dbg !1801
  br label %297, !dbg !2059

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !1897
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !1734, metadata !DIExpression()), !dbg !1801
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !2060
  %299 = sub i64 %298, %128, !dbg !2061
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #38, !dbg !2062
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1778, metadata !DIExpression()), !dbg !1800
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !2063

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1768, metadata !DIExpression()), !dbg !2044
  %302 = icmp ult i64 %128, %298, !dbg !2064
  br i1 %302, label %.preheader5, label %329, !dbg !2066

.preheader5:                                      ; preds = %301
  br label %304, !dbg !2067

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1770, metadata !DIExpression()), !dbg !2044
  br label %329, !dbg !2068

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !1768, metadata !DIExpression()), !dbg !2044
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !2070
  %308 = load i8, ptr %307, align 1, !dbg !2070, !tbaa !826
  %309 = icmp eq i8 %308, 0, !dbg !2066
  br i1 %309, label %.loopexit6, label %310, !dbg !2067

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !2071
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !1768, metadata !DIExpression()), !dbg !2044
  %312 = add i64 %311, %128, !dbg !2072
  %313 = icmp eq i64 %311, %299, !dbg !2064
  br i1 %313, label %.loopexit6, label %304, !dbg !2066, !llvm.loop !2073

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1779, metadata !DIExpression()), !dbg !2074
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !2075
  %317 = and i1 %316, %109, !dbg !2075
  br i1 %317, label %.preheader3, label %325, !dbg !2075

.preheader3:                                      ; preds = %314
  br label %318, !dbg !2076

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !1779, metadata !DIExpression()), !dbg !2074
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !2077
  %321 = load i8, ptr %320, align 1, !dbg !2077, !tbaa !826
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !2079

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !2080
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !1779, metadata !DIExpression()), !dbg !2074
  %324 = icmp eq i64 %323, %300, !dbg !2081
  br i1 %324, label %.loopexit4, label %318, !dbg !2076, !llvm.loop !2082

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !2084

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !2084, !tbaa !817
  call void @llvm.dbg.value(metadata i32 %326, metadata !2086, metadata !DIExpression()), !dbg !2094
  %327 = call i32 @iswprint(i32 noundef %326) #38, !dbg !2096
  %328 = icmp ne i32 %327, 0, !dbg !2097
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1770, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1768, metadata !DIExpression()), !dbg !2044
  br label %329, !dbg !2098

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !2099

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1770, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !1768, metadata !DIExpression()), !dbg !2044
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2099
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2100
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1770, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1768, metadata !DIExpression()), !dbg !2044
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2099
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2100
  call void @llvm.dbg.label(metadata !1792), !dbg !2101
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !2102
  br label %624, !dbg !2102

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !1897
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !2104
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1770, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !1768, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !1734, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !1762, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1897
  %338 = icmp ult i64 %336, 2, !dbg !2105
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !2106
  br i1 %340, label %433, label %341, !dbg !2106

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !2107
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !1787, metadata !DIExpression()), !dbg !2108
  br label %343, !dbg !2109

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !1801
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !1888
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !1763, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1758, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !1756, metadata !DIExpression()), !dbg !1888
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1750, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !1741, metadata !DIExpression()), !dbg !1801
  br i1 %339, label %394, label %350, !dbg !2110

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !2115

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1761, metadata !DIExpression()), !dbg !1897
  %352 = select i1 %110, i1 true, i1 %345, !dbg !2118
  br i1 %352, label %369, label %353, !dbg !2118

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !2120
  br i1 %354, label %355, label %357, !dbg !2124

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2120
  store i8 39, ptr %356, align 1, !dbg !2120, !tbaa !826
  br label %357, !dbg !2120

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !2124
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !1741, metadata !DIExpression()), !dbg !1801
  %359 = icmp ult i64 %358, %129, !dbg !2125
  br i1 %359, label %360, label %362, !dbg !2128

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !2125
  store i8 36, ptr %361, align 1, !dbg !2125, !tbaa !826
  br label %362, !dbg !2125

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !2128
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1741, metadata !DIExpression()), !dbg !1801
  %364 = icmp ult i64 %363, %129, !dbg !2129
  br i1 %364, label %365, label %367, !dbg !2132

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !2129
  store i8 39, ptr %366, align 1, !dbg !2129, !tbaa !826
  br label %367, !dbg !2129

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !2132
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !1741, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1750, metadata !DIExpression()), !dbg !1801
  br label %369, !dbg !2133

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !1801
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1750, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !1741, metadata !DIExpression()), !dbg !1801
  %372 = icmp ult i64 %370, %129, !dbg !2134
  br i1 %372, label %373, label %375, !dbg !2137

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2134
  store i8 92, ptr %374, align 1, !dbg !2134, !tbaa !826
  br label %375, !dbg !2134

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2137
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !1741, metadata !DIExpression()), !dbg !1801
  %377 = icmp ult i64 %376, %129, !dbg !2138
  br i1 %377, label %378, label %382, !dbg !2141

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2138
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2138
  store i8 %380, ptr %381, align 1, !dbg !2138, !tbaa !826
  br label %382, !dbg !2138

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2141
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !1741, metadata !DIExpression()), !dbg !1801
  %384 = icmp ult i64 %383, %129, !dbg !2142
  br i1 %384, label %385, label %390, !dbg !2145

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2142
  %388 = or disjoint i8 %387, 48, !dbg !2142
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2142
  store i8 %388, ptr %389, align 1, !dbg !2142, !tbaa !826
  br label %390, !dbg !2142

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2145
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1741, metadata !DIExpression()), !dbg !1801
  %392 = and i8 %349, 7, !dbg !2146
  %393 = or disjoint i8 %392, 48, !dbg !2147
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !1763, metadata !DIExpression()), !dbg !1897
  br label %401, !dbg !2148

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2149

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2150
  br i1 %396, label %397, label %399, !dbg !2155

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2150
  store i8 92, ptr %398, align 1, !dbg !2150, !tbaa !826
  br label %399, !dbg !2150

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2155
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !1741, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1758, metadata !DIExpression()), !dbg !1897
  br label %401, !dbg !2156

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !1801
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !1763, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1758, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1750, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !1741, metadata !DIExpression()), !dbg !1801
  %407 = add i64 %346, 1, !dbg !2157
  %408 = icmp ugt i64 %342, %407, !dbg !2159
  br i1 %408, label %409, label %.loopexit2, !dbg !2160

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2161
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2161
  br i1 %411, label %423, label %412, !dbg !2161

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2164
  br i1 %413, label %414, label %416, !dbg !2168

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2164
  store i8 39, ptr %415, align 1, !dbg !2164, !tbaa !826
  br label %416, !dbg !2164

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2168
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !1741, metadata !DIExpression()), !dbg !1801
  %418 = icmp ult i64 %417, %129, !dbg !2169
  br i1 %418, label %419, label %421, !dbg !2172

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2169
  store i8 39, ptr %420, align 1, !dbg !2169, !tbaa !826
  br label %421, !dbg !2169

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2172
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !1741, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1750, metadata !DIExpression()), !dbg !1801
  br label %423, !dbg !2173

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2174
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1750, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !1741, metadata !DIExpression()), !dbg !1801
  %426 = icmp ult i64 %424, %129, !dbg !2175
  br i1 %426, label %427, label %429, !dbg !2178

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2175
  store i8 %406, ptr %428, align 1, !dbg !2175, !tbaa !826
  br label %429, !dbg !2175

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2178
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !1741, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !1756, metadata !DIExpression()), !dbg !1888
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2179
  %432 = load i8, ptr %431, align 1, !dbg !2179, !tbaa !826
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !1763, metadata !DIExpression()), !dbg !1897
  br label %343, !dbg !2180, !llvm.loop !2181

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2184
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !1801
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !1805
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !1888
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !1897
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !1732, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !1763, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1762, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1758, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !1756, metadata !DIExpression()), !dbg !1888
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1750, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1747, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !1742, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !1741, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !1734, metadata !DIExpression()), !dbg !1801
  br i1 %111, label %455, label %444, !dbg !2185

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
  br i1 %120, label %456, label %476, !dbg !2187

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2188

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
  %467 = lshr i8 %458, 5, !dbg !2189
  %468 = zext nneg i8 %467 to i64, !dbg !2189
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2190
  %470 = load i32, ptr %469, align 4, !dbg !2190, !tbaa !817
  %471 = and i8 %458, 31, !dbg !2191
  %472 = zext nneg i8 %471 to i32, !dbg !2191
  %473 = shl nuw i32 1, %472, !dbg !2192
  %474 = and i32 %470, %473, !dbg !2192
  %475 = icmp eq i32 %474, 0, !dbg !2192
  br i1 %475, label %476, label %487, !dbg !2193

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
  br i1 %153, label %487, label %523, !dbg !2194

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2184
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !1801
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !1805
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2195
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !1897
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1732, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1763, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1762, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1756, metadata !DIExpression()), !dbg !1888
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1750, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1747, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1742, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !1741, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1734, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.label(metadata !1790), !dbg !2196
  br i1 %109, label %.loopexit8, label %497, !dbg !2197

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1761, metadata !DIExpression()), !dbg !1897
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2199
  br i1 %498, label %515, label %499, !dbg !2199

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2201
  br i1 %500, label %501, label %503, !dbg !2205

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2201
  store i8 39, ptr %502, align 1, !dbg !2201, !tbaa !826
  br label %503, !dbg !2201

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2205
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !1741, metadata !DIExpression()), !dbg !1801
  %505 = icmp ult i64 %504, %496, !dbg !2206
  br i1 %505, label %506, label %508, !dbg !2209

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2206
  store i8 36, ptr %507, align 1, !dbg !2206, !tbaa !826
  br label %508, !dbg !2206

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2209
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !1741, metadata !DIExpression()), !dbg !1801
  %510 = icmp ult i64 %509, %496, !dbg !2210
  br i1 %510, label %511, label %513, !dbg !2213

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2210
  store i8 39, ptr %512, align 1, !dbg !2210, !tbaa !826
  br label %513, !dbg !2210

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2213
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !1741, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1750, metadata !DIExpression()), !dbg !1801
  br label %515, !dbg !2214

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !1897
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1750, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !1741, metadata !DIExpression()), !dbg !1801
  %518 = icmp ult i64 %516, %496, !dbg !2215
  br i1 %518, label %519, label %521, !dbg !2218

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2215
  store i8 92, ptr %520, align 1, !dbg !2215, !tbaa !826
  br label %521, !dbg !2215

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2218
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1732, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1763, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1762, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1756, metadata !DIExpression()), !dbg !1888
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1750, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1747, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1742, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1741, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1734, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.label(metadata !1791), !dbg !2219
  br label %547, !dbg !2220

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !1801
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !1897
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !1888
  br label %523, !dbg !2220

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2184
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !1801
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !1805
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2195
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2223
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !1732, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !1763, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1762, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1756, metadata !DIExpression()), !dbg !1888
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1750, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1747, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1742, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !1741, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !1734, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.label(metadata !1791), !dbg !2219
  %534 = xor i1 %528, true, !dbg !2220
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2220
  br i1 %535, label %547, label %536, !dbg !2220

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2224
  br i1 %537, label %538, label %540, !dbg !2228

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2224
  store i8 39, ptr %539, align 1, !dbg !2224, !tbaa !826
  br label %540, !dbg !2224

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2228
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !1741, metadata !DIExpression()), !dbg !1801
  %542 = icmp ult i64 %541, %533, !dbg !2229
  br i1 %542, label %543, label %545, !dbg !2232

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2229
  store i8 39, ptr %544, align 1, !dbg !2229, !tbaa !826
  br label %545, !dbg !2229

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2232
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !1741, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1750, metadata !DIExpression()), !dbg !1801
  br label %547, !dbg !2233

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !1897
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1750, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !1741, metadata !DIExpression()), !dbg !1801
  %557 = icmp ult i64 %555, %548, !dbg !2234
  br i1 %557, label %558, label %560, !dbg !2237

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2234
  store i8 %549, ptr %559, align 1, !dbg !2234, !tbaa !826
  br label %560, !dbg !2234

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2237
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1741, metadata !DIExpression()), !dbg !1801
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2238
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1748, metadata !DIExpression()), !dbg !1801
  br label %563, !dbg !2239

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2184
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !1801
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !1805
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2195
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !1732, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !1756, metadata !DIExpression()), !dbg !1888
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1750, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1748, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1747, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !1742, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !1741, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1734, metadata !DIExpression()), !dbg !1801
  %572 = add i64 %570, 1, !dbg !2240
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !1756, metadata !DIExpression()), !dbg !1888
  br label %121, !dbg !2241, !llvm.loop !2242

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !1876
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !1805
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !1732, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1748, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1747, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !1742, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !1741, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !1734, metadata !DIExpression()), !dbg !1801
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2244
  %575 = xor i1 %109, true, !dbg !2246
  %576 = or i1 %574, %575, !dbg !2246
  %577 = or i1 %576, %110, !dbg !2246
  br i1 %577, label %578, label %.loopexit13, !dbg !2246

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2247
  %580 = xor i1 %.lcssa38, true, !dbg !2247
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2247
  br i1 %581, label %589, label %582, !dbg !2247

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2249

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !1805
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2251
  br label %638, !dbg !2253

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2254
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2256
  br i1 %588, label %27, label %589, !dbg !2256

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !1801
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !1876
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2257
  %592 = or i1 %591, %590, !dbg !2259
  br i1 %592, label %608, label %593, !dbg !2259

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !1743, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !1741, metadata !DIExpression()), !dbg !1801
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2260, !tbaa !826
  %595 = icmp eq i8 %594, 0, !dbg !2263
  br i1 %595, label %608, label %.preheader, !dbg !2263

.preheader:                                       ; preds = %593
  br label %596, !dbg !2263

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !1743, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1741, metadata !DIExpression()), !dbg !1801
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2264
  br i1 %600, label %601, label %603, !dbg !2267

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2264
  store i8 %597, ptr %602, align 1, !dbg !2264, !tbaa !826
  br label %603, !dbg !2264

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2267
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1741, metadata !DIExpression()), !dbg !1801
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2268
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !1743, metadata !DIExpression()), !dbg !1801
  %606 = load i8, ptr %605, align 1, !dbg !2260, !tbaa !826
  %607 = icmp eq i8 %606, 0, !dbg !2263
  br i1 %607, label %.loopexit, label %596, !dbg !2263, !llvm.loop !2269

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2267
  br label %608, !dbg !2271

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !1876
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1741, metadata !DIExpression()), !dbg !1801
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2271
  br i1 %610, label %611, label %638, !dbg !2273

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2274
  store i8 0, ptr %612, align 1, !dbg !2275, !tbaa !826
  br label %638, !dbg !2274

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !1792), !dbg !2101
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2276
  br i1 %614, label %624, label %630, !dbg !2102

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !1897
  br label %615, !dbg !2276

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2276

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2276

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !1792), !dbg !2101
  %622 = icmp eq i32 %616, 2, !dbg !2276
  %623 = select i1 %619, i32 4, i32 2, !dbg !2102
  br i1 %622, label %624, label %630, !dbg !2102

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !2102

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !1903
  br label %630, !dbg !2277

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !1735, metadata !DIExpression()), !dbg !1801
  %636 = and i32 %5, -3, !dbg !2277
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2278
  br label %638, !dbg !2279

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2280
}

; Function Attrs: nounwind
declare !dbg !2281 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2284 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !2287 i32 @iswprint(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2289 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2293, metadata !DIExpression()), !dbg !2296
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2294, metadata !DIExpression()), !dbg !2296
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2295, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata ptr %0, metadata !2297, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i64 %1, metadata !2302, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata ptr null, metadata !2303, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata ptr %2, metadata !2304, metadata !DIExpression()), !dbg !2310
  %4 = icmp eq ptr %2, null, !dbg !2312
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2312
  call void @llvm.dbg.value(metadata ptr %5, metadata !2305, metadata !DIExpression()), !dbg !2310
  %6 = tail call ptr @__errno_location() #40, !dbg !2313
  %7 = load i32, ptr %6, align 4, !dbg !2313, !tbaa !817
  call void @llvm.dbg.value(metadata i32 %7, metadata !2306, metadata !DIExpression()), !dbg !2310
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2314
  %9 = load i32, ptr %8, align 4, !dbg !2314, !tbaa !1675
  %10 = or i32 %9, 1, !dbg !2315
  call void @llvm.dbg.value(metadata i32 %10, metadata !2307, metadata !DIExpression()), !dbg !2310
  %11 = load i32, ptr %5, align 8, !dbg !2316, !tbaa !1625
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2317
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2318
  %14 = load ptr, ptr %13, align 8, !dbg !2318, !tbaa !1696
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2319
  %16 = load ptr, ptr %15, align 8, !dbg !2319, !tbaa !1699
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2320
  %18 = add i64 %17, 1, !dbg !2321
  call void @llvm.dbg.value(metadata i64 %18, metadata !2308, metadata !DIExpression()), !dbg !2310
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2322
  call void @llvm.dbg.value(metadata ptr %19, metadata !2309, metadata !DIExpression()), !dbg !2310
  %20 = load i32, ptr %5, align 8, !dbg !2323, !tbaa !1625
  %21 = load ptr, ptr %13, align 8, !dbg !2324, !tbaa !1696
  %22 = load ptr, ptr %15, align 8, !dbg !2325, !tbaa !1699
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2326
  store i32 %7, ptr %6, align 4, !dbg !2327, !tbaa !817
  ret ptr %19, !dbg !2328
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2298 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2297, metadata !DIExpression()), !dbg !2329
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2302, metadata !DIExpression()), !dbg !2329
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2303, metadata !DIExpression()), !dbg !2329
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2304, metadata !DIExpression()), !dbg !2329
  %5 = icmp eq ptr %3, null, !dbg !2330
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2330
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2305, metadata !DIExpression()), !dbg !2329
  %7 = tail call ptr @__errno_location() #40, !dbg !2331
  %8 = load i32, ptr %7, align 4, !dbg !2331, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2306, metadata !DIExpression()), !dbg !2329
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2332
  %10 = load i32, ptr %9, align 4, !dbg !2332, !tbaa !1675
  %11 = icmp eq ptr %2, null, !dbg !2333
  %12 = zext i1 %11 to i32, !dbg !2333
  %13 = or i32 %10, %12, !dbg !2334
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2307, metadata !DIExpression()), !dbg !2329
  %14 = load i32, ptr %6, align 8, !dbg !2335, !tbaa !1625
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2336
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2337
  %17 = load ptr, ptr %16, align 8, !dbg !2337, !tbaa !1696
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2338
  %19 = load ptr, ptr %18, align 8, !dbg !2338, !tbaa !1699
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2339
  %21 = add i64 %20, 1, !dbg !2340
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2308, metadata !DIExpression()), !dbg !2329
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2341
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2309, metadata !DIExpression()), !dbg !2329
  %23 = load i32, ptr %6, align 8, !dbg !2342, !tbaa !1625
  %24 = load ptr, ptr %16, align 8, !dbg !2343, !tbaa !1696
  %25 = load ptr, ptr %18, align 8, !dbg !2344, !tbaa !1699
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2345
  store i32 %8, ptr %7, align 4, !dbg !2346, !tbaa !817
  br i1 %11, label %28, label %27, !dbg !2347

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2348, !tbaa !2350
  br label %28, !dbg !2351

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2352
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2353 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2358, !tbaa !781
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2355, metadata !DIExpression()), !dbg !2359
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2356, metadata !DIExpression()), !dbg !2360
  %2 = load i32, ptr @nslots, align 4, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2356, metadata !DIExpression()), !dbg !2360
  %3 = icmp sgt i32 %2, 1, !dbg !2361
  br i1 %3, label %4, label %6, !dbg !2363

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2361
  br label %10, !dbg !2363

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2364

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2364
  %8 = load ptr, ptr %7, align 8, !dbg !2364, !tbaa !2366
  %9 = icmp eq ptr %8, @slot0, !dbg !2368
  br i1 %9, label %17, label %16, !dbg !2369

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2356, metadata !DIExpression()), !dbg !2360
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2370
  %13 = load ptr, ptr %12, align 8, !dbg !2370, !tbaa !2366
  tail call void @free(ptr noundef %13) #38, !dbg !2371
  %14 = add nuw nsw i64 %11, 1, !dbg !2372
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2356, metadata !DIExpression()), !dbg !2360
  %15 = icmp eq i64 %14, %5, !dbg !2361
  br i1 %15, label %.loopexit, label %10, !dbg !2363, !llvm.loop !2373

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !2375
  store i64 256, ptr @slotvec0, align 8, !dbg !2377, !tbaa !2378
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2379, !tbaa !2366
  br label %17, !dbg !2380

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2381
  br i1 %18, label %20, label %19, !dbg !2383

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !2384
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2386, !tbaa !781
  br label %20, !dbg !2387

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2388, !tbaa !817
  ret void, !dbg !2389
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2390 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2393 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2395, metadata !DIExpression()), !dbg !2397
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2396, metadata !DIExpression()), !dbg !2397
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2398
  ret ptr %3, !dbg !2399
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2400 {
  %5 = alloca i64, align 8, !DIAssignID !2420
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2414, metadata !DIExpression(), metadata !2420, metadata ptr %5, metadata !DIExpression()), !dbg !2421
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2404, metadata !DIExpression()), !dbg !2422
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2405, metadata !DIExpression()), !dbg !2422
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2406, metadata !DIExpression()), !dbg !2422
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2407, metadata !DIExpression()), !dbg !2422
  %6 = tail call ptr @__errno_location() #40, !dbg !2423
  %7 = load i32, ptr %6, align 4, !dbg !2423, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2408, metadata !DIExpression()), !dbg !2422
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2424, !tbaa !781
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2409, metadata !DIExpression()), !dbg !2422
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2410, metadata !DIExpression()), !dbg !2422
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2425
  br i1 %9, label %10, label %11, !dbg !2425

10:                                               ; preds = %4
  tail call void @abort() #37, !dbg !2427
  unreachable, !dbg !2427

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2428, !tbaa !817
  %13 = icmp sgt i32 %12, %0, !dbg !2429
  br i1 %13, label %32, label %14, !dbg !2430

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2431
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2421
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !2432
  %16 = sext i32 %12 to i64, !dbg !2433
  store i64 %16, ptr %5, align 8, !dbg !2434, !tbaa !2350, !DIAssignID !2435
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2414, metadata !DIExpression(), metadata !2435, metadata ptr %5, metadata !DIExpression()), !dbg !2421
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2436
  %18 = add nuw nsw i32 %0, 1, !dbg !2437
  %19 = sub i32 %18, %12, !dbg !2438
  %20 = sext i32 %19 to i64, !dbg !2439
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !2440
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2409, metadata !DIExpression()), !dbg !2422
  store ptr %21, ptr @slotvec, align 8, !dbg !2441, !tbaa !781
  br i1 %15, label %22, label %23, !dbg !2442

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2443, !tbaa.struct !2445
  br label %23, !dbg !2446

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2447, !tbaa !817
  %25 = sext i32 %24 to i64, !dbg !2448
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2448
  %27 = load i64, ptr %5, align 8, !dbg !2449, !tbaa !2350
  %28 = sub nsw i64 %27, %25, !dbg !2450
  %29 = shl i64 %28, 4, !dbg !2451
  call void @llvm.dbg.value(metadata ptr %26, metadata !1834, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i32 0, metadata !1837, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i64 %29, metadata !1838, metadata !DIExpression()), !dbg !2452
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !2454
  %30 = load i64, ptr %5, align 8, !dbg !2455, !tbaa !2350
  %31 = trunc i64 %30 to i32, !dbg !2455
  store i32 %31, ptr @nslots, align 4, !dbg !2456, !tbaa !817
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !2457
  br label %32, !dbg !2458

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2422
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2409, metadata !DIExpression()), !dbg !2422
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2459
  %36 = load i64, ptr %35, align 8, !dbg !2460, !tbaa !2378
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2415, metadata !DIExpression()), !dbg !2461
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2462
  %38 = load ptr, ptr %37, align 8, !dbg !2462, !tbaa !2366
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2417, metadata !DIExpression()), !dbg !2461
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2463
  %40 = load i32, ptr %39, align 4, !dbg !2463, !tbaa !1675
  %41 = or i32 %40, 1, !dbg !2464
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2418, metadata !DIExpression()), !dbg !2461
  %42 = load i32, ptr %3, align 8, !dbg !2465, !tbaa !1625
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2466
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2467
  %45 = load ptr, ptr %44, align 8, !dbg !2467, !tbaa !1696
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2468
  %47 = load ptr, ptr %46, align 8, !dbg !2468, !tbaa !1699
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2469
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2419, metadata !DIExpression()), !dbg !2461
  %49 = icmp ugt i64 %36, %48, !dbg !2470
  br i1 %49, label %60, label %50, !dbg !2472

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2473
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2415, metadata !DIExpression()), !dbg !2461
  store i64 %51, ptr %35, align 8, !dbg !2475, !tbaa !2378
  %52 = icmp eq ptr %38, @slot0, !dbg !2476
  br i1 %52, label %54, label %53, !dbg !2478

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !2479
  br label %54, !dbg !2479

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2480
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2417, metadata !DIExpression()), !dbg !2461
  store ptr %55, ptr %37, align 8, !dbg !2481, !tbaa !2366
  %56 = load i32, ptr %3, align 8, !dbg !2482, !tbaa !1625
  %57 = load ptr, ptr %44, align 8, !dbg !2483, !tbaa !1696
  %58 = load ptr, ptr %46, align 8, !dbg !2484, !tbaa !1699
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2485
  br label %60, !dbg !2486

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2461
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2417, metadata !DIExpression()), !dbg !2461
  store i32 %7, ptr %6, align 4, !dbg !2487, !tbaa !817
  ret ptr %61, !dbg !2488
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2489 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2493, metadata !DIExpression()), !dbg !2496
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2494, metadata !DIExpression()), !dbg !2496
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2495, metadata !DIExpression()), !dbg !2496
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2497
  ret ptr %4, !dbg !2498
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2499 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2501, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i32 0, metadata !2395, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata ptr %0, metadata !2396, metadata !DIExpression()), !dbg !2503
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2505
  ret ptr %2, !dbg !2506
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2507 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2511, metadata !DIExpression()), !dbg !2513
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2512, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i32 0, metadata !2493, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata ptr %0, metadata !2494, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i64 %1, metadata !2495, metadata !DIExpression()), !dbg !2514
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2516
  ret ptr %3, !dbg !2517
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2518 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2526
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2525, metadata !DIExpression(), metadata !2526, metadata ptr %4, metadata !DIExpression()), !dbg !2527
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2522, metadata !DIExpression()), !dbg !2527
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2523, metadata !DIExpression()), !dbg !2527
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2524, metadata !DIExpression()), !dbg !2527
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2528
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2529), !dbg !2532
  call void @llvm.dbg.value(metadata i32 %1, metadata !2533, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2538, metadata !DIExpression()), !dbg !2541
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2541, !alias.scope !2529, !DIAssignID !2542
  call void @llvm.dbg.assign(metadata i8 0, metadata !2525, metadata !DIExpression(), metadata !2542, metadata ptr %4, metadata !DIExpression()), !dbg !2527
  %5 = icmp eq i32 %1, 10, !dbg !2543
  br i1 %5, label %6, label %7, !dbg !2545

6:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2546, !noalias !2529
  unreachable, !dbg !2546

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2547, !tbaa !1625, !alias.scope !2529, !DIAssignID !2548
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2525, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2548, metadata ptr %4, metadata !DIExpression()), !dbg !2527
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2549
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2550
  ret ptr %8, !dbg !2551
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2552 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2561
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2560, metadata !DIExpression(), metadata !2561, metadata ptr %5, metadata !DIExpression()), !dbg !2562
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2556, metadata !DIExpression()), !dbg !2562
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2557, metadata !DIExpression()), !dbg !2562
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2558, metadata !DIExpression()), !dbg !2562
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2559, metadata !DIExpression()), !dbg !2562
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2563
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2564), !dbg !2567
  call void @llvm.dbg.value(metadata i32 %1, metadata !2533, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2538, metadata !DIExpression()), !dbg !2570
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2570, !alias.scope !2564, !DIAssignID !2571
  call void @llvm.dbg.assign(metadata i8 0, metadata !2560, metadata !DIExpression(), metadata !2571, metadata ptr %5, metadata !DIExpression()), !dbg !2562
  %6 = icmp eq i32 %1, 10, !dbg !2572
  br i1 %6, label %7, label %8, !dbg !2573

7:                                                ; preds = %4
  tail call void @abort() #37, !dbg !2574, !noalias !2564
  unreachable, !dbg !2574

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2575, !tbaa !1625, !alias.scope !2564, !DIAssignID !2576
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2560, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2576, metadata ptr %5, metadata !DIExpression()), !dbg !2562
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2577
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2578
  ret ptr %9, !dbg !2579
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2580 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2586
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2584, metadata !DIExpression()), !dbg !2587
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2585, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2525, metadata !DIExpression(), metadata !2586, metadata ptr %3, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 0, metadata !2522, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 %0, metadata !2523, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata ptr %1, metadata !2524, metadata !DIExpression()), !dbg !2588
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2590
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2591), !dbg !2594
  call void @llvm.dbg.value(metadata i32 %0, metadata !2533, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2538, metadata !DIExpression()), !dbg !2597
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2597, !alias.scope !2591, !DIAssignID !2598
  call void @llvm.dbg.assign(metadata i8 0, metadata !2525, metadata !DIExpression(), metadata !2598, metadata ptr %3, metadata !DIExpression()), !dbg !2588
  %4 = icmp eq i32 %0, 10, !dbg !2599
  br i1 %4, label %5, label %6, !dbg !2600

5:                                                ; preds = %2
  tail call void @abort() #37, !dbg !2601, !noalias !2591
  unreachable, !dbg !2601

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2602, !tbaa !1625, !alias.scope !2591, !DIAssignID !2603
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2525, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2603, metadata ptr %3, metadata !DIExpression()), !dbg !2588
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2604
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2605
  ret ptr %7, !dbg !2606
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2607 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2614
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2611, metadata !DIExpression()), !dbg !2615
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2612, metadata !DIExpression()), !dbg !2615
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2613, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2560, metadata !DIExpression(), metadata !2614, metadata ptr %4, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 0, metadata !2556, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 %0, metadata !2557, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %1, metadata !2558, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %2, metadata !2559, metadata !DIExpression()), !dbg !2616
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2618
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2619), !dbg !2622
  call void @llvm.dbg.value(metadata i32 %0, metadata !2533, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2538, metadata !DIExpression()), !dbg !2625
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2625, !alias.scope !2619, !DIAssignID !2626
  call void @llvm.dbg.assign(metadata i8 0, metadata !2560, metadata !DIExpression(), metadata !2626, metadata ptr %4, metadata !DIExpression()), !dbg !2616
  %5 = icmp eq i32 %0, 10, !dbg !2627
  br i1 %5, label %6, label %7, !dbg !2628

6:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2629, !noalias !2619
  unreachable, !dbg !2629

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2630, !tbaa !1625, !alias.scope !2619, !DIAssignID !2631
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2560, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2631, metadata ptr %4, metadata !DIExpression()), !dbg !2616
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2632
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2633
  ret ptr %8, !dbg !2634
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2635 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2643
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2642, metadata !DIExpression(), metadata !2643, metadata ptr %4, metadata !DIExpression()), !dbg !2644
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2639, metadata !DIExpression()), !dbg !2644
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2640, metadata !DIExpression()), !dbg !2644
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2641, metadata !DIExpression()), !dbg !2644
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2646, !tbaa.struct !2647, !DIAssignID !2648
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2642, metadata !DIExpression(), metadata !2648, metadata ptr %4, metadata !DIExpression()), !dbg !2644
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1642, metadata !DIExpression()), !dbg !2649
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1643, metadata !DIExpression()), !dbg !2649
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1644, metadata !DIExpression()), !dbg !2649
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1645, metadata !DIExpression()), !dbg !2649
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2651
  %6 = lshr i8 %2, 5, !dbg !2652
  %7 = zext nneg i8 %6 to i64, !dbg !2652
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2653
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1646, metadata !DIExpression()), !dbg !2649
  %9 = and i8 %2, 31, !dbg !2654
  %10 = zext nneg i8 %9 to i32, !dbg !2654
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1648, metadata !DIExpression()), !dbg !2649
  %11 = load i32, ptr %8, align 4, !dbg !2655, !tbaa !817
  %12 = lshr i32 %11, %10, !dbg !2656
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1649, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2649
  %13 = and i32 %12, 1, !dbg !2657
  %14 = xor i32 %13, 1, !dbg !2657
  %15 = shl nuw i32 %14, %10, !dbg !2658
  %16 = xor i32 %15, %11, !dbg !2659
  store i32 %16, ptr %8, align 4, !dbg !2659, !tbaa !817
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2660
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2661
  ret ptr %17, !dbg !2662
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2663 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2669
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2667, metadata !DIExpression()), !dbg !2670
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2668, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2642, metadata !DIExpression(), metadata !2669, metadata ptr %3, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata ptr %0, metadata !2639, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i64 -1, metadata !2640, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8 %1, metadata !2641, metadata !DIExpression()), !dbg !2671
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2673
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2674, !tbaa.struct !2647, !DIAssignID !2675
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2642, metadata !DIExpression(), metadata !2675, metadata ptr %3, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata ptr %3, metadata !1642, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i8 %1, metadata !1643, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i32 1, metadata !1644, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i8 %1, metadata !1645, metadata !DIExpression()), !dbg !2676
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2678
  %5 = lshr i8 %1, 5, !dbg !2679
  %6 = zext nneg i8 %5 to i64, !dbg !2679
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2680
  call void @llvm.dbg.value(metadata ptr %7, metadata !1646, metadata !DIExpression()), !dbg !2676
  %8 = and i8 %1, 31, !dbg !2681
  %9 = zext nneg i8 %8 to i32, !dbg !2681
  call void @llvm.dbg.value(metadata i32 %9, metadata !1648, metadata !DIExpression()), !dbg !2676
  %10 = load i32, ptr %7, align 4, !dbg !2682, !tbaa !817
  %11 = lshr i32 %10, %9, !dbg !2683
  call void @llvm.dbg.value(metadata i32 %11, metadata !1649, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2676
  %12 = and i32 %11, 1, !dbg !2684
  %13 = xor i32 %12, 1, !dbg !2684
  %14 = shl nuw i32 %13, %9, !dbg !2685
  %15 = xor i32 %14, %10, !dbg !2686
  store i32 %15, ptr %7, align 4, !dbg !2686, !tbaa !817
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2687
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2688
  ret ptr %16, !dbg !2689
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2690 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2693
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2692, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata ptr %0, metadata !2667, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 58, metadata !2668, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2642, metadata !DIExpression(), metadata !2693, metadata ptr %2, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata ptr %0, metadata !2639, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 -1, metadata !2640, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 58, metadata !2641, metadata !DIExpression()), !dbg !2697
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !2699
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2700, !tbaa.struct !2647, !DIAssignID !2701
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2642, metadata !DIExpression(), metadata !2701, metadata ptr %2, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata ptr %2, metadata !1642, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i8 58, metadata !1643, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i32 1, metadata !1644, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i8 58, metadata !1645, metadata !DIExpression()), !dbg !2702
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2704
  call void @llvm.dbg.value(metadata ptr %3, metadata !1646, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i32 26, metadata !1648, metadata !DIExpression()), !dbg !2702
  %4 = load i32, ptr %3, align 4, !dbg !2705, !tbaa !817
  call void @llvm.dbg.value(metadata i32 %4, metadata !1649, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2702
  %5 = or i32 %4, 67108864, !dbg !2706
  store i32 %5, ptr %3, align 4, !dbg !2706, !tbaa !817
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2707
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !2708
  ret ptr %6, !dbg !2709
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2710 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2714
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2712, metadata !DIExpression()), !dbg !2715
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2713, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2642, metadata !DIExpression(), metadata !2714, metadata ptr %3, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata ptr %0, metadata !2639, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i64 %1, metadata !2640, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 58, metadata !2641, metadata !DIExpression()), !dbg !2716
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2719, !tbaa.struct !2647, !DIAssignID !2720
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2642, metadata !DIExpression(), metadata !2720, metadata ptr %3, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata ptr %3, metadata !1642, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i8 58, metadata !1643, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i32 1, metadata !1644, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i8 58, metadata !1645, metadata !DIExpression()), !dbg !2721
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2723
  call void @llvm.dbg.value(metadata ptr %4, metadata !1646, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i32 26, metadata !1648, metadata !DIExpression()), !dbg !2721
  %5 = load i32, ptr %4, align 4, !dbg !2724, !tbaa !817
  call void @llvm.dbg.value(metadata i32 %5, metadata !1649, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2721
  %6 = or i32 %5, 67108864, !dbg !2725
  store i32 %6, ptr %4, align 4, !dbg !2725, !tbaa !817
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2726
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2727
  ret ptr %7, !dbg !2728
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2729 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2735
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2734, metadata !DIExpression(), metadata !2735, metadata ptr %4, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2538, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2737
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2731, metadata !DIExpression()), !dbg !2736
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2732, metadata !DIExpression()), !dbg !2736
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2733, metadata !DIExpression()), !dbg !2736
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2739
  call void @llvm.dbg.value(metadata i32 %1, metadata !2533, metadata !DIExpression()), !dbg !2740
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2538, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2740
  %5 = icmp eq i32 %1, 10, !dbg !2741
  br i1 %5, label %6, label %7, !dbg !2742

6:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2743, !noalias !2744
  unreachable, !dbg !2743

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2538, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2740
  store i32 %1, ptr %4, align 8, !dbg !2747, !tbaa.struct !2647, !DIAssignID !2748
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2747
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2747
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2734, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2748, metadata ptr %4, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2734, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2749, metadata ptr %8, metadata !DIExpression()), !dbg !2736
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1642, metadata !DIExpression()), !dbg !2750
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1643, metadata !DIExpression()), !dbg !2750
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1644, metadata !DIExpression()), !dbg !2750
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1645, metadata !DIExpression()), !dbg !2750
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2752
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1646, metadata !DIExpression()), !dbg !2750
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1648, metadata !DIExpression()), !dbg !2750
  %10 = load i32, ptr %9, align 4, !dbg !2753, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1649, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2750
  %11 = or i32 %10, 67108864, !dbg !2754
  store i32 %11, ptr %9, align 4, !dbg !2754, !tbaa !817, !DIAssignID !2755
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2734, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2755, metadata ptr %9, metadata !DIExpression()), !dbg !2736
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2756
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2757
  ret ptr %12, !dbg !2758
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2759 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2767
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2763, metadata !DIExpression()), !dbg !2768
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2764, metadata !DIExpression()), !dbg !2768
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2765, metadata !DIExpression()), !dbg !2768
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2766, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2769, metadata !DIExpression(), metadata !2767, metadata ptr %5, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i32 %0, metadata !2774, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata ptr %1, metadata !2775, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata ptr %2, metadata !2776, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata ptr %3, metadata !2777, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i64 -1, metadata !2778, metadata !DIExpression()), !dbg !2779
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2781
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2782, !tbaa.struct !2647, !DIAssignID !2783
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2769, metadata !DIExpression(), metadata !2783, metadata ptr %5, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2769, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2784, metadata ptr undef, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata ptr %5, metadata !1682, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata ptr %1, metadata !1683, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata ptr %2, metadata !1684, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata ptr %5, metadata !1682, metadata !DIExpression()), !dbg !2785
  store i32 10, ptr %5, align 8, !dbg !2787, !tbaa !1625, !DIAssignID !2788
  call void @llvm.dbg.assign(metadata i32 10, metadata !2769, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2788, metadata ptr %5, metadata !DIExpression()), !dbg !2779
  %6 = icmp ne ptr %1, null, !dbg !2789
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2790
  br i1 %8, label %10, label %9, !dbg !2790

9:                                                ; preds = %4
  tail call void @abort() #37, !dbg !2791
  unreachable, !dbg !2791

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2792
  store ptr %1, ptr %11, align 8, !dbg !2793, !tbaa !1696, !DIAssignID !2794
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2769, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2794, metadata ptr %11, metadata !DIExpression()), !dbg !2779
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2795
  store ptr %2, ptr %12, align 8, !dbg !2796, !tbaa !1699, !DIAssignID !2797
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2769, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2797, metadata ptr %12, metadata !DIExpression()), !dbg !2779
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2798
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2799
  ret ptr %13, !dbg !2800
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2770 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2801
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2769, metadata !DIExpression(), metadata !2801, metadata ptr %6, metadata !DIExpression()), !dbg !2802
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2774, metadata !DIExpression()), !dbg !2802
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2775, metadata !DIExpression()), !dbg !2802
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2776, metadata !DIExpression()), !dbg !2802
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2777, metadata !DIExpression()), !dbg !2802
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2778, metadata !DIExpression()), !dbg !2802
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !2803
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2804, !tbaa.struct !2647, !DIAssignID !2805
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2769, metadata !DIExpression(), metadata !2805, metadata ptr %6, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2769, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2806, metadata ptr undef, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata ptr %6, metadata !1682, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata ptr %1, metadata !1683, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata ptr %2, metadata !1684, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata ptr %6, metadata !1682, metadata !DIExpression()), !dbg !2807
  store i32 10, ptr %6, align 8, !dbg !2809, !tbaa !1625, !DIAssignID !2810
  call void @llvm.dbg.assign(metadata i32 10, metadata !2769, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2810, metadata ptr %6, metadata !DIExpression()), !dbg !2802
  %7 = icmp ne ptr %1, null, !dbg !2811
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2812
  br i1 %9, label %11, label %10, !dbg !2812

10:                                               ; preds = %5
  tail call void @abort() #37, !dbg !2813
  unreachable, !dbg !2813

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2814
  store ptr %1, ptr %12, align 8, !dbg !2815, !tbaa !1696, !DIAssignID !2816
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2769, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2816, metadata ptr %12, metadata !DIExpression()), !dbg !2802
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2817
  store ptr %2, ptr %13, align 8, !dbg !2818, !tbaa !1699, !DIAssignID !2819
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2769, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2819, metadata ptr %13, metadata !DIExpression()), !dbg !2802
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2820
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !2821
  ret ptr %14, !dbg !2822
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2823 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2830
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2827, metadata !DIExpression()), !dbg !2831
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2828, metadata !DIExpression()), !dbg !2831
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2829, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i32 0, metadata !2763, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata ptr %0, metadata !2764, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata ptr %1, metadata !2765, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata ptr %2, metadata !2766, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2769, metadata !DIExpression(), metadata !2830, metadata ptr %4, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i32 0, metadata !2774, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata ptr %0, metadata !2775, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata ptr %1, metadata !2776, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata ptr %2, metadata !2777, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i64 -1, metadata !2778, metadata !DIExpression()), !dbg !2834
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2837, !tbaa.struct !2647, !DIAssignID !2838
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2769, metadata !DIExpression(), metadata !2838, metadata ptr %4, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2769, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2839, metadata ptr undef, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata ptr %4, metadata !1682, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata ptr %0, metadata !1683, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata ptr %1, metadata !1684, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata ptr %4, metadata !1682, metadata !DIExpression()), !dbg !2840
  store i32 10, ptr %4, align 8, !dbg !2842, !tbaa !1625, !DIAssignID !2843
  call void @llvm.dbg.assign(metadata i32 10, metadata !2769, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2843, metadata ptr %4, metadata !DIExpression()), !dbg !2834
  %5 = icmp ne ptr %0, null, !dbg !2844
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2845
  br i1 %7, label %9, label %8, !dbg !2845

8:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2846
  unreachable, !dbg !2846

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2847
  store ptr %0, ptr %10, align 8, !dbg !2848, !tbaa !1696, !DIAssignID !2849
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2769, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2849, metadata ptr %10, metadata !DIExpression()), !dbg !2834
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2850
  store ptr %1, ptr %11, align 8, !dbg !2851, !tbaa !1699, !DIAssignID !2852
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2769, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2852, metadata ptr %11, metadata !DIExpression()), !dbg !2834
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2853
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2854
  ret ptr %12, !dbg !2855
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2856 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2864
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2860, metadata !DIExpression()), !dbg !2865
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2861, metadata !DIExpression()), !dbg !2865
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2862, metadata !DIExpression()), !dbg !2865
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2863, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2769, metadata !DIExpression(), metadata !2864, metadata ptr %5, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i32 0, metadata !2774, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata ptr %0, metadata !2775, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata ptr %1, metadata !2776, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata ptr %2, metadata !2777, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i64 %3, metadata !2778, metadata !DIExpression()), !dbg !2866
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2868
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2869, !tbaa.struct !2647, !DIAssignID !2870
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2769, metadata !DIExpression(), metadata !2870, metadata ptr %5, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2769, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2871, metadata ptr undef, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata ptr %5, metadata !1682, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata ptr %0, metadata !1683, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata ptr %1, metadata !1684, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata ptr %5, metadata !1682, metadata !DIExpression()), !dbg !2872
  store i32 10, ptr %5, align 8, !dbg !2874, !tbaa !1625, !DIAssignID !2875
  call void @llvm.dbg.assign(metadata i32 10, metadata !2769, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2875, metadata ptr %5, metadata !DIExpression()), !dbg !2866
  %6 = icmp ne ptr %0, null, !dbg !2876
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2877
  br i1 %8, label %10, label %9, !dbg !2877

9:                                                ; preds = %4
  tail call void @abort() #37, !dbg !2878
  unreachable, !dbg !2878

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2879
  store ptr %0, ptr %11, align 8, !dbg !2880, !tbaa !1696, !DIAssignID !2881
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2769, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2881, metadata ptr %11, metadata !DIExpression()), !dbg !2866
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2882
  store ptr %1, ptr %12, align 8, !dbg !2883, !tbaa !1699, !DIAssignID !2884
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2769, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2884, metadata ptr %12, metadata !DIExpression()), !dbg !2866
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2885
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2886
  ret ptr %13, !dbg !2887
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2888 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2892, metadata !DIExpression()), !dbg !2895
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2893, metadata !DIExpression()), !dbg !2895
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2894, metadata !DIExpression()), !dbg !2895
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2896
  ret ptr %4, !dbg !2897
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2898 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2902, metadata !DIExpression()), !dbg !2904
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2903, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i32 0, metadata !2892, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata ptr %0, metadata !2893, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i64 %1, metadata !2894, metadata !DIExpression()), !dbg !2905
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2907
  ret ptr %3, !dbg !2908
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2909 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2913, metadata !DIExpression()), !dbg !2915
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2914, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i32 %0, metadata !2892, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata ptr %1, metadata !2893, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i64 -1, metadata !2894, metadata !DIExpression()), !dbg !2916
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2918
  ret ptr %3, !dbg !2919
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2920 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2924, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i32 0, metadata !2913, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata ptr %0, metadata !2914, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i32 0, metadata !2892, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata ptr %0, metadata !2893, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i64 -1, metadata !2894, metadata !DIExpression()), !dbg !2928
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2930
  ret ptr %2, !dbg !2931
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2932 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2971, metadata !DIExpression()), !dbg !2977
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2972, metadata !DIExpression()), !dbg !2977
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2973, metadata !DIExpression()), !dbg !2977
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2974, metadata !DIExpression()), !dbg !2977
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2975, metadata !DIExpression()), !dbg !2977
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2976, metadata !DIExpression()), !dbg !2977
  %7 = icmp eq ptr %1, null, !dbg !2978
  br i1 %7, label %10, label %8, !dbg !2980

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.78, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !2981
  br label %12, !dbg !2981

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.79, ptr noundef %2, ptr noundef %3) #38, !dbg !2982
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.3.81, i32 noundef 5) #38, !dbg !2983
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !2983
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.82, ptr noundef %0), !dbg !2984
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.5.83, i32 noundef 5) #38, !dbg !2985
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.84) #38, !dbg !2985
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.82, ptr noundef %0), !dbg !2986
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
  ], !dbg !2987

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.7.85, i32 noundef 5) #38, !dbg !2988
  %21 = load ptr, ptr %4, align 8, !dbg !2988, !tbaa !781
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !2988
  br label %147, !dbg !2990

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.8.86, i32 noundef 5) #38, !dbg !2991
  %25 = load ptr, ptr %4, align 8, !dbg !2991, !tbaa !781
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2991
  %27 = load ptr, ptr %26, align 8, !dbg !2991, !tbaa !781
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !2991
  br label %147, !dbg !2992

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.9.87, i32 noundef 5) #38, !dbg !2993
  %31 = load ptr, ptr %4, align 8, !dbg !2993, !tbaa !781
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2993
  %33 = load ptr, ptr %32, align 8, !dbg !2993, !tbaa !781
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2993
  %35 = load ptr, ptr %34, align 8, !dbg !2993, !tbaa !781
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !2993
  br label %147, !dbg !2994

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.10.88, i32 noundef 5) #38, !dbg !2995
  %39 = load ptr, ptr %4, align 8, !dbg !2995, !tbaa !781
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2995
  %41 = load ptr, ptr %40, align 8, !dbg !2995, !tbaa !781
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2995
  %43 = load ptr, ptr %42, align 8, !dbg !2995, !tbaa !781
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2995
  %45 = load ptr, ptr %44, align 8, !dbg !2995, !tbaa !781
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !2995
  br label %147, !dbg !2996

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.11.89, i32 noundef 5) #38, !dbg !2997
  %49 = load ptr, ptr %4, align 8, !dbg !2997, !tbaa !781
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2997
  %51 = load ptr, ptr %50, align 8, !dbg !2997, !tbaa !781
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2997
  %53 = load ptr, ptr %52, align 8, !dbg !2997, !tbaa !781
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2997
  %55 = load ptr, ptr %54, align 8, !dbg !2997, !tbaa !781
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2997
  %57 = load ptr, ptr %56, align 8, !dbg !2997, !tbaa !781
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !2997
  br label %147, !dbg !2998

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.12.90, i32 noundef 5) #38, !dbg !2999
  %61 = load ptr, ptr %4, align 8, !dbg !2999, !tbaa !781
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2999
  %63 = load ptr, ptr %62, align 8, !dbg !2999, !tbaa !781
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2999
  %65 = load ptr, ptr %64, align 8, !dbg !2999, !tbaa !781
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2999
  %67 = load ptr, ptr %66, align 8, !dbg !2999, !tbaa !781
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2999
  %69 = load ptr, ptr %68, align 8, !dbg !2999, !tbaa !781
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2999
  %71 = load ptr, ptr %70, align 8, !dbg !2999, !tbaa !781
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !2999
  br label %147, !dbg !3000

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.13.91, i32 noundef 5) #38, !dbg !3001
  %75 = load ptr, ptr %4, align 8, !dbg !3001, !tbaa !781
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3001
  %77 = load ptr, ptr %76, align 8, !dbg !3001, !tbaa !781
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3001
  %79 = load ptr, ptr %78, align 8, !dbg !3001, !tbaa !781
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3001
  %81 = load ptr, ptr %80, align 8, !dbg !3001, !tbaa !781
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3001
  %83 = load ptr, ptr %82, align 8, !dbg !3001, !tbaa !781
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3001
  %85 = load ptr, ptr %84, align 8, !dbg !3001, !tbaa !781
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3001
  %87 = load ptr, ptr %86, align 8, !dbg !3001, !tbaa !781
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !3001
  br label %147, !dbg !3002

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.14.92, i32 noundef 5) #38, !dbg !3003
  %91 = load ptr, ptr %4, align 8, !dbg !3003, !tbaa !781
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3003
  %93 = load ptr, ptr %92, align 8, !dbg !3003, !tbaa !781
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3003
  %95 = load ptr, ptr %94, align 8, !dbg !3003, !tbaa !781
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3003
  %97 = load ptr, ptr %96, align 8, !dbg !3003, !tbaa !781
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3003
  %99 = load ptr, ptr %98, align 8, !dbg !3003, !tbaa !781
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3003
  %101 = load ptr, ptr %100, align 8, !dbg !3003, !tbaa !781
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3003
  %103 = load ptr, ptr %102, align 8, !dbg !3003, !tbaa !781
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3003
  %105 = load ptr, ptr %104, align 8, !dbg !3003, !tbaa !781
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !3003
  br label %147, !dbg !3004

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.15.93, i32 noundef 5) #38, !dbg !3005
  %109 = load ptr, ptr %4, align 8, !dbg !3005, !tbaa !781
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3005
  %111 = load ptr, ptr %110, align 8, !dbg !3005, !tbaa !781
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3005
  %113 = load ptr, ptr %112, align 8, !dbg !3005, !tbaa !781
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3005
  %115 = load ptr, ptr %114, align 8, !dbg !3005, !tbaa !781
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3005
  %117 = load ptr, ptr %116, align 8, !dbg !3005, !tbaa !781
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3005
  %119 = load ptr, ptr %118, align 8, !dbg !3005, !tbaa !781
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3005
  %121 = load ptr, ptr %120, align 8, !dbg !3005, !tbaa !781
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3005
  %123 = load ptr, ptr %122, align 8, !dbg !3005, !tbaa !781
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3005
  %125 = load ptr, ptr %124, align 8, !dbg !3005, !tbaa !781
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !3005
  br label %147, !dbg !3006

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.16.94, i32 noundef 5) #38, !dbg !3007
  %129 = load ptr, ptr %4, align 8, !dbg !3007, !tbaa !781
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3007
  %131 = load ptr, ptr %130, align 8, !dbg !3007, !tbaa !781
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3007
  %133 = load ptr, ptr %132, align 8, !dbg !3007, !tbaa !781
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3007
  %135 = load ptr, ptr %134, align 8, !dbg !3007, !tbaa !781
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3007
  %137 = load ptr, ptr %136, align 8, !dbg !3007, !tbaa !781
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3007
  %139 = load ptr, ptr %138, align 8, !dbg !3007, !tbaa !781
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3007
  %141 = load ptr, ptr %140, align 8, !dbg !3007, !tbaa !781
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3007
  %143 = load ptr, ptr %142, align 8, !dbg !3007, !tbaa !781
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3007
  %145 = load ptr, ptr %144, align 8, !dbg !3007, !tbaa !781
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !3007
  br label %147, !dbg !3008

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3009
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3010 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3014, metadata !DIExpression()), !dbg !3020
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3015, metadata !DIExpression()), !dbg !3020
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3016, metadata !DIExpression()), !dbg !3020
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3017, metadata !DIExpression()), !dbg !3020
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3018, metadata !DIExpression()), !dbg !3020
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3019, metadata !DIExpression()), !dbg !3020
  br label %6, !dbg !3021

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3023
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3019, metadata !DIExpression()), !dbg !3020
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3024
  %9 = load ptr, ptr %8, align 8, !dbg !3024, !tbaa !781
  %10 = icmp eq ptr %9, null, !dbg !3026
  %11 = add i64 %7, 1, !dbg !3027
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3019, metadata !DIExpression()), !dbg !3020
  br i1 %10, label %12, label %6, !dbg !3026, !llvm.loop !3028

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !3023
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !3030
  ret void, !dbg !3031
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3032 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !3054
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3052, metadata !DIExpression(), metadata !3054, metadata ptr %6, metadata !DIExpression()), !dbg !3055
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3046, metadata !DIExpression()), !dbg !3055
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3047, metadata !DIExpression()), !dbg !3055
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3048, metadata !DIExpression()), !dbg !3055
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3049, metadata !DIExpression()), !dbg !3055
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3050, metadata !DIExpression(DW_OP_deref)), !dbg !3055
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !3056
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3051, metadata !DIExpression()), !dbg !3055
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3051, metadata !DIExpression()), !dbg !3055
  %10 = icmp sgt i32 %9, -1, !dbg !3057
  br i1 %10, label %18, label %11, !dbg !3057

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3057
  store i32 %12, ptr %7, align 8, !dbg !3057
  %13 = icmp ult i32 %9, -7, !dbg !3057
  br i1 %13, label %14, label %18, !dbg !3057

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3057
  %16 = sext i32 %9 to i64, !dbg !3057
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3057
  br label %22, !dbg !3057

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3057
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3057
  store ptr %21, ptr %4, align 8, !dbg !3057
  br label %22, !dbg !3057

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3057
  %25 = load ptr, ptr %24, align 8, !dbg !3057
  store ptr %25, ptr %6, align 8, !dbg !3060, !tbaa !781
  %26 = icmp eq ptr %25, null, !dbg !3061
  br i1 %26, label %197, label %27, !dbg !3062

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3051, metadata !DIExpression()), !dbg !3055
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3051, metadata !DIExpression()), !dbg !3055
  %28 = icmp sgt i32 %23, -1, !dbg !3057
  br i1 %28, label %36, label %29, !dbg !3057

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3057
  store i32 %30, ptr %7, align 8, !dbg !3057
  %31 = icmp ult i32 %23, -7, !dbg !3057
  br i1 %31, label %32, label %36, !dbg !3057

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3057
  %34 = sext i32 %23 to i64, !dbg !3057
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3057
  br label %40, !dbg !3057

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3057
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3057
  store ptr %39, ptr %4, align 8, !dbg !3057
  br label %40, !dbg !3057

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3057
  %43 = load ptr, ptr %42, align 8, !dbg !3057
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3063
  store ptr %43, ptr %44, align 8, !dbg !3060, !tbaa !781
  %45 = icmp eq ptr %43, null, !dbg !3061
  br i1 %45, label %197, label %46, !dbg !3062

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3051, metadata !DIExpression()), !dbg !3055
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3051, metadata !DIExpression()), !dbg !3055
  %47 = icmp sgt i32 %41, -1, !dbg !3057
  br i1 %47, label %55, label %48, !dbg !3057

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3057
  store i32 %49, ptr %7, align 8, !dbg !3057
  %50 = icmp ult i32 %41, -7, !dbg !3057
  br i1 %50, label %51, label %55, !dbg !3057

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3057
  %53 = sext i32 %41 to i64, !dbg !3057
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3057
  br label %59, !dbg !3057

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3057
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3057
  store ptr %58, ptr %4, align 8, !dbg !3057
  br label %59, !dbg !3057

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3057
  %62 = load ptr, ptr %61, align 8, !dbg !3057
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3063
  store ptr %62, ptr %63, align 8, !dbg !3060, !tbaa !781
  %64 = icmp eq ptr %62, null, !dbg !3061
  br i1 %64, label %197, label %65, !dbg !3062

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3051, metadata !DIExpression()), !dbg !3055
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3051, metadata !DIExpression()), !dbg !3055
  %66 = icmp sgt i32 %60, -1, !dbg !3057
  br i1 %66, label %74, label %67, !dbg !3057

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3057
  store i32 %68, ptr %7, align 8, !dbg !3057
  %69 = icmp ult i32 %60, -7, !dbg !3057
  br i1 %69, label %70, label %74, !dbg !3057

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3057
  %72 = sext i32 %60 to i64, !dbg !3057
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3057
  br label %78, !dbg !3057

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3057
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3057
  store ptr %77, ptr %4, align 8, !dbg !3057
  br label %78, !dbg !3057

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3057
  %81 = load ptr, ptr %80, align 8, !dbg !3057
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3063
  store ptr %81, ptr %82, align 8, !dbg !3060, !tbaa !781
  %83 = icmp eq ptr %81, null, !dbg !3061
  br i1 %83, label %197, label %84, !dbg !3062

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3051, metadata !DIExpression()), !dbg !3055
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3051, metadata !DIExpression()), !dbg !3055
  %85 = icmp sgt i32 %79, -1, !dbg !3057
  br i1 %85, label %93, label %86, !dbg !3057

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3057
  store i32 %87, ptr %7, align 8, !dbg !3057
  %88 = icmp ult i32 %79, -7, !dbg !3057
  br i1 %88, label %89, label %93, !dbg !3057

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3057
  %91 = sext i32 %79 to i64, !dbg !3057
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3057
  br label %97, !dbg !3057

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3057
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3057
  store ptr %96, ptr %4, align 8, !dbg !3057
  br label %97, !dbg !3057

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3057
  %100 = load ptr, ptr %99, align 8, !dbg !3057
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3063
  store ptr %100, ptr %101, align 8, !dbg !3060, !tbaa !781
  %102 = icmp eq ptr %100, null, !dbg !3061
  br i1 %102, label %197, label %103, !dbg !3062

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3051, metadata !DIExpression()), !dbg !3055
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3051, metadata !DIExpression()), !dbg !3055
  %104 = icmp sgt i32 %98, -1, !dbg !3057
  br i1 %104, label %112, label %105, !dbg !3057

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3057
  store i32 %106, ptr %7, align 8, !dbg !3057
  %107 = icmp ult i32 %98, -7, !dbg !3057
  br i1 %107, label %108, label %112, !dbg !3057

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3057
  %110 = sext i32 %98 to i64, !dbg !3057
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3057
  br label %116, !dbg !3057

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3057
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3057
  store ptr %115, ptr %4, align 8, !dbg !3057
  br label %116, !dbg !3057

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3057
  %119 = load ptr, ptr %118, align 8, !dbg !3057
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3063
  store ptr %119, ptr %120, align 8, !dbg !3060, !tbaa !781
  %121 = icmp eq ptr %119, null, !dbg !3061
  br i1 %121, label %197, label %122, !dbg !3062

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3051, metadata !DIExpression()), !dbg !3055
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3051, metadata !DIExpression()), !dbg !3055
  %123 = icmp sgt i32 %117, -1, !dbg !3057
  br i1 %123, label %131, label %124, !dbg !3057

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3057
  store i32 %125, ptr %7, align 8, !dbg !3057
  %126 = icmp ult i32 %117, -7, !dbg !3057
  br i1 %126, label %127, label %131, !dbg !3057

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3057
  %129 = sext i32 %117 to i64, !dbg !3057
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3057
  br label %135, !dbg !3057

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3057
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3057
  store ptr %134, ptr %4, align 8, !dbg !3057
  br label %135, !dbg !3057

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3057
  %138 = load ptr, ptr %137, align 8, !dbg !3057
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3063
  store ptr %138, ptr %139, align 8, !dbg !3060, !tbaa !781
  %140 = icmp eq ptr %138, null, !dbg !3061
  br i1 %140, label %197, label %141, !dbg !3062

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3051, metadata !DIExpression()), !dbg !3055
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3051, metadata !DIExpression()), !dbg !3055
  %142 = icmp sgt i32 %136, -1, !dbg !3057
  br i1 %142, label %150, label %143, !dbg !3057

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3057
  store i32 %144, ptr %7, align 8, !dbg !3057
  %145 = icmp ult i32 %136, -7, !dbg !3057
  br i1 %145, label %146, label %150, !dbg !3057

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3057
  %148 = sext i32 %136 to i64, !dbg !3057
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3057
  br label %154, !dbg !3057

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3057
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3057
  store ptr %153, ptr %4, align 8, !dbg !3057
  br label %154, !dbg !3057

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3057
  %157 = load ptr, ptr %156, align 8, !dbg !3057
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3063
  store ptr %157, ptr %158, align 8, !dbg !3060, !tbaa !781
  %159 = icmp eq ptr %157, null, !dbg !3061
  br i1 %159, label %197, label %160, !dbg !3062

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3051, metadata !DIExpression()), !dbg !3055
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3051, metadata !DIExpression()), !dbg !3055
  %161 = icmp sgt i32 %155, -1, !dbg !3057
  br i1 %161, label %169, label %162, !dbg !3057

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3057
  store i32 %163, ptr %7, align 8, !dbg !3057
  %164 = icmp ult i32 %155, -7, !dbg !3057
  br i1 %164, label %165, label %169, !dbg !3057

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3057
  %167 = sext i32 %155 to i64, !dbg !3057
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3057
  br label %173, !dbg !3057

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3057
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3057
  store ptr %172, ptr %4, align 8, !dbg !3057
  br label %173, !dbg !3057

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3057
  %176 = load ptr, ptr %175, align 8, !dbg !3057
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3063
  store ptr %176, ptr %177, align 8, !dbg !3060, !tbaa !781
  %178 = icmp eq ptr %176, null, !dbg !3061
  br i1 %178, label %197, label %179, !dbg !3062

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3051, metadata !DIExpression()), !dbg !3055
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3051, metadata !DIExpression()), !dbg !3055
  %180 = icmp sgt i32 %174, -1, !dbg !3057
  br i1 %180, label %188, label %181, !dbg !3057

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3057
  store i32 %182, ptr %7, align 8, !dbg !3057
  %183 = icmp ult i32 %174, -7, !dbg !3057
  br i1 %183, label %184, label %188, !dbg !3057

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3057
  %186 = sext i32 %174 to i64, !dbg !3057
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3057
  br label %191, !dbg !3057

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3057
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3057
  store ptr %190, ptr %4, align 8, !dbg !3057
  br label %191, !dbg !3057

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3057
  %193 = load ptr, ptr %192, align 8, !dbg !3057
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3063
  store ptr %193, ptr %194, align 8, !dbg !3060, !tbaa !781
  %195 = icmp eq ptr %193, null, !dbg !3061
  %196 = select i1 %195, i64 9, i64 10, !dbg !3062
  br label %197, !dbg !3062

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3064
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3065
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !3066
  ret void, !dbg !3066
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3067 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !3076
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3075, metadata !DIExpression(), metadata !3076, metadata ptr %5, metadata !DIExpression()), !dbg !3077
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3071, metadata !DIExpression()), !dbg !3077
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3072, metadata !DIExpression()), !dbg !3077
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3073, metadata !DIExpression()), !dbg !3077
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3074, metadata !DIExpression()), !dbg !3077
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !3078
  call void @llvm.va_start(ptr nonnull %5), !dbg !3079
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !3080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3080, !tbaa.struct !1327
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3080
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !3080
  call void @llvm.va_end(ptr nonnull %5), !dbg !3081
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !3082
  ret void, !dbg !3082
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3083 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3084, !tbaa !781
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.82, ptr noundef %1), !dbg !3084
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.17.99, i32 noundef 5) #38, !dbg !3085
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.100) #38, !dbg !3085
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.19.101, i32 noundef 5) #38, !dbg !3086
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.102, ptr noundef nonnull @.str.21.103) #38, !dbg !3086
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.22.104, i32 noundef 5) #38, !dbg !3087
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.105) #38, !dbg !3087
  ret void, !dbg !3088
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3089 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3094, metadata !DIExpression()), !dbg !3097
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3095, metadata !DIExpression()), !dbg !3097
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3096, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata ptr %0, metadata !3098, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %1, metadata !3101, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %2, metadata !3102, metadata !DIExpression()), !dbg !3103
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3105
  call void @llvm.dbg.value(metadata ptr %4, metadata !3106, metadata !DIExpression()), !dbg !3111
  %5 = icmp eq ptr %4, null, !dbg !3113
  br i1 %5, label %6, label %7, !dbg !3115

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3116
  unreachable, !dbg !3116

7:                                                ; preds = %3
  ret ptr %4, !dbg !3117
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3099 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3098, metadata !DIExpression()), !dbg !3118
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3101, metadata !DIExpression()), !dbg !3118
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3102, metadata !DIExpression()), !dbg !3118
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3119
  call void @llvm.dbg.value(metadata ptr %4, metadata !3106, metadata !DIExpression()), !dbg !3120
  %5 = icmp eq ptr %4, null, !dbg !3122
  br i1 %5, label %6, label %7, !dbg !3123

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3124
  unreachable, !dbg !3124

7:                                                ; preds = %3
  ret ptr %4, !dbg !3125
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3126 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3130, metadata !DIExpression()), !dbg !3131
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3132
  call void @llvm.dbg.value(metadata ptr %2, metadata !3106, metadata !DIExpression()), !dbg !3133
  %3 = icmp eq ptr %2, null, !dbg !3135
  br i1 %3, label %4, label %5, !dbg !3136

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3137
  unreachable, !dbg !3137

5:                                                ; preds = %1
  ret ptr %2, !dbg !3138
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3139 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3140 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3144, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i64 %0, metadata !3146, metadata !DIExpression()), !dbg !3150
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3152
  call void @llvm.dbg.value(metadata ptr %2, metadata !3106, metadata !DIExpression()), !dbg !3153
  %3 = icmp eq ptr %2, null, !dbg !3155
  br i1 %3, label %4, label %5, !dbg !3156

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3157
  unreachable, !dbg !3157

5:                                                ; preds = %1
  ret ptr %2, !dbg !3158
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3159 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3163, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i64 %0, metadata !3130, metadata !DIExpression()), !dbg !3165
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3167
  call void @llvm.dbg.value(metadata ptr %2, metadata !3106, metadata !DIExpression()), !dbg !3168
  %3 = icmp eq ptr %2, null, !dbg !3170
  br i1 %3, label %4, label %5, !dbg !3171

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3172
  unreachable, !dbg !3172

5:                                                ; preds = %1
  ret ptr %2, !dbg !3173
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3174 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3178, metadata !DIExpression()), !dbg !3180
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3179, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata ptr %0, metadata !3181, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i64 %1, metadata !3185, metadata !DIExpression()), !dbg !3186
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3188
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3189
  call void @llvm.dbg.value(metadata ptr %4, metadata !3106, metadata !DIExpression()), !dbg !3190
  %5 = icmp eq ptr %4, null, !dbg !3192
  br i1 %5, label %6, label %7, !dbg !3193

6:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3194
  unreachable, !dbg !3194

7:                                                ; preds = %2
  ret ptr %4, !dbg !3195
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3196 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3197 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3201, metadata !DIExpression()), !dbg !3203
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3202, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata ptr %0, metadata !3204, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i64 %1, metadata !3207, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata ptr %0, metadata !3181, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.value(metadata i64 %1, metadata !3185, metadata !DIExpression()), !dbg !3210
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3212
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3213
  call void @llvm.dbg.value(metadata ptr %4, metadata !3106, metadata !DIExpression()), !dbg !3214
  %5 = icmp eq ptr %4, null, !dbg !3216
  br i1 %5, label %6, label %7, !dbg !3217

6:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3218
  unreachable, !dbg !3218

7:                                                ; preds = %2
  ret ptr %4, !dbg !3219
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3220 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3224, metadata !DIExpression()), !dbg !3227
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3225, metadata !DIExpression()), !dbg !3227
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3226, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata ptr %0, metadata !3228, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i64 %1, metadata !3231, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i64 %2, metadata !3232, metadata !DIExpression()), !dbg !3233
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3235
  call void @llvm.dbg.value(metadata ptr %4, metadata !3106, metadata !DIExpression()), !dbg !3236
  %5 = icmp eq ptr %4, null, !dbg !3238
  br i1 %5, label %6, label %7, !dbg !3239

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3240
  unreachable, !dbg !3240

7:                                                ; preds = %3
  ret ptr %4, !dbg !3241
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3242 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3246, metadata !DIExpression()), !dbg !3248
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3247, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata ptr null, metadata !3098, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 %0, metadata !3101, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 %1, metadata !3102, metadata !DIExpression()), !dbg !3249
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3251
  call void @llvm.dbg.value(metadata ptr %3, metadata !3106, metadata !DIExpression()), !dbg !3252
  %4 = icmp eq ptr %3, null, !dbg !3254
  br i1 %4, label %5, label %6, !dbg !3255

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3256
  unreachable, !dbg !3256

6:                                                ; preds = %2
  ret ptr %3, !dbg !3257
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3258 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3262, metadata !DIExpression()), !dbg !3264
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3263, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata ptr null, metadata !3224, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %0, metadata !3225, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %1, metadata !3226, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata ptr null, metadata !3228, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i64 %0, metadata !3231, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i64 %1, metadata !3232, metadata !DIExpression()), !dbg !3267
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3269
  call void @llvm.dbg.value(metadata ptr %3, metadata !3106, metadata !DIExpression()), !dbg !3270
  %4 = icmp eq ptr %3, null, !dbg !3272
  br i1 %4, label %5, label %6, !dbg !3273

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3274
  unreachable, !dbg !3274

6:                                                ; preds = %2
  ret ptr %3, !dbg !3275
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3276 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3280, metadata !DIExpression()), !dbg !3282
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3281, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata ptr %0, metadata !717, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata ptr %1, metadata !718, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i64 1, metadata !719, metadata !DIExpression()), !dbg !3283
  %3 = load i64, ptr %1, align 8, !dbg !3285, !tbaa !2350
  call void @llvm.dbg.value(metadata i64 %3, metadata !720, metadata !DIExpression()), !dbg !3283
  %4 = icmp eq ptr %0, null, !dbg !3286
  br i1 %4, label %5, label %8, !dbg !3288

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3289
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3292
  br label %15, !dbg !3292

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3293
  %10 = add nuw i64 %9, 1, !dbg !3293
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3293
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3293
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3293
  call void @llvm.dbg.value(metadata i64 %13, metadata !720, metadata !DIExpression()), !dbg !3283
  br i1 %12, label %14, label %15, !dbg !3296

14:                                               ; preds = %8
  tail call void @xalloc_die() #37, !dbg !3297
  unreachable, !dbg !3297

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3283
  call void @llvm.dbg.value(metadata i64 %16, metadata !720, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata ptr %0, metadata !3098, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i64 %16, metadata !3101, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i64 1, metadata !3102, metadata !DIExpression()), !dbg !3298
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !3300
  call void @llvm.dbg.value(metadata ptr %17, metadata !3106, metadata !DIExpression()), !dbg !3301
  %18 = icmp eq ptr %17, null, !dbg !3303
  br i1 %18, label %19, label %20, !dbg !3304

19:                                               ; preds = %15
  tail call void @xalloc_die() #37, !dbg !3305
  unreachable, !dbg !3305

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !717, metadata !DIExpression()), !dbg !3283
  store i64 %16, ptr %1, align 8, !dbg !3306, !tbaa !2350
  ret ptr %17, !dbg !3307
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !712 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !717, metadata !DIExpression()), !dbg !3308
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !718, metadata !DIExpression()), !dbg !3308
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !719, metadata !DIExpression()), !dbg !3308
  %4 = load i64, ptr %1, align 8, !dbg !3309, !tbaa !2350
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !720, metadata !DIExpression()), !dbg !3308
  %5 = icmp eq ptr %0, null, !dbg !3310
  br i1 %5, label %6, label %13, !dbg !3311

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3312
  br i1 %7, label %8, label %20, !dbg !3313

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3314
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !720, metadata !DIExpression()), !dbg !3308
  %10 = icmp ugt i64 %2, 128, !dbg !3316
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3317
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !720, metadata !DIExpression()), !dbg !3308
  br label %20, !dbg !3318

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3319
  %15 = add nuw i64 %14, 1, !dbg !3319
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3319
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3319
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3319
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !720, metadata !DIExpression()), !dbg !3308
  br i1 %17, label %19, label %20, !dbg !3320

19:                                               ; preds = %13
  tail call void @xalloc_die() #37, !dbg !3321
  unreachable, !dbg !3321

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3308
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !720, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata ptr %0, metadata !3098, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 %21, metadata !3101, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 %2, metadata !3102, metadata !DIExpression()), !dbg !3322
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !3324
  call void @llvm.dbg.value(metadata ptr %22, metadata !3106, metadata !DIExpression()), !dbg !3325
  %23 = icmp eq ptr %22, null, !dbg !3327
  br i1 %23, label %24, label %25, !dbg !3328

24:                                               ; preds = %20
  tail call void @xalloc_die() #37, !dbg !3329
  unreachable, !dbg !3329

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !717, metadata !DIExpression()), !dbg !3308
  store i64 %21, ptr %1, align 8, !dbg !3330, !tbaa !2350
  ret ptr %22, !dbg !3331
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !724 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !733, metadata !DIExpression()), !dbg !3332
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !734, metadata !DIExpression()), !dbg !3332
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !735, metadata !DIExpression()), !dbg !3332
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !736, metadata !DIExpression()), !dbg !3332
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !737, metadata !DIExpression()), !dbg !3332
  %6 = load i64, ptr %1, align 8, !dbg !3333, !tbaa !2350
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !738, metadata !DIExpression()), !dbg !3332
  %7 = ashr i64 %6, 1, !dbg !3334
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3334
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3334
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3334
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !739, metadata !DIExpression()), !dbg !3332
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3336
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !739, metadata !DIExpression()), !dbg !3332
  %12 = icmp sgt i64 %3, -1, !dbg !3337
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3339
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3339
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !739, metadata !DIExpression()), !dbg !3332
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3340
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3340
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !740, metadata !DIExpression()), !dbg !3332
  %18 = icmp slt i64 %17, 128, !dbg !3340
  %19 = select i1 %18, i64 128, i64 0, !dbg !3340
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !741, metadata !DIExpression()), !dbg !3332
  %21 = icmp eq i64 %20, 0, !dbg !3341
  br i1 %21, label %28, label %22, !dbg !3343

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !3344
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !739, metadata !DIExpression()), !dbg !3332
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !3346
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !740, metadata !DIExpression()), !dbg !3332
  br label %28, !dbg !3347

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !3332
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !3332
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !740, metadata !DIExpression()), !dbg !3332
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !739, metadata !DIExpression()), !dbg !3332
  %31 = icmp eq ptr %0, null, !dbg !3348
  br i1 %31, label %32, label %33, !dbg !3350

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !3351, !tbaa !2350
  br label %33, !dbg !3352

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !3353
  %35 = icmp slt i64 %34, %2, !dbg !3355
  br i1 %35, label %36, label %48, !dbg !3356

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3357
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !3357
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !739, metadata !DIExpression()), !dbg !3332
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !3358
  br i1 %42, label %47, label %43, !dbg !3358

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !3359
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !3359
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !3359
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !740, metadata !DIExpression()), !dbg !3332
  br i1 %45, label %47, label %48, !dbg !3360

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #37, !dbg !3361
  unreachable, !dbg !3361

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !3332
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !3332
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !740, metadata !DIExpression()), !dbg !3332
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !739, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata ptr %0, metadata !3178, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i64 %50, metadata !3179, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata ptr %0, metadata !3181, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 %50, metadata !3185, metadata !DIExpression()), !dbg !3364
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !3366
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #43, !dbg !3367
  call void @llvm.dbg.value(metadata ptr %52, metadata !3106, metadata !DIExpression()), !dbg !3368
  %53 = icmp eq ptr %52, null, !dbg !3370
  br i1 %53, label %54, label %55, !dbg !3371

54:                                               ; preds = %48
  tail call void @xalloc_die() #37, !dbg !3372
  unreachable, !dbg !3372

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !733, metadata !DIExpression()), !dbg !3332
  store i64 %49, ptr %1, align 8, !dbg !3373, !tbaa !2350
  ret ptr %52, !dbg !3374
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3375 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3377, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i64 %0, metadata !3379, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 1, metadata !3382, metadata !DIExpression()), !dbg !3383
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3385
  call void @llvm.dbg.value(metadata ptr %2, metadata !3106, metadata !DIExpression()), !dbg !3386
  %3 = icmp eq ptr %2, null, !dbg !3388
  br i1 %3, label %4, label %5, !dbg !3389

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3390
  unreachable, !dbg !3390

5:                                                ; preds = %1
  ret ptr %2, !dbg !3391
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3392 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3380 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3379, metadata !DIExpression()), !dbg !3393
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3382, metadata !DIExpression()), !dbg !3393
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3394
  call void @llvm.dbg.value(metadata ptr %3, metadata !3106, metadata !DIExpression()), !dbg !3395
  %4 = icmp eq ptr %3, null, !dbg !3397
  br i1 %4, label %5, label %6, !dbg !3398

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3399
  unreachable, !dbg !3399

6:                                                ; preds = %2
  ret ptr %3, !dbg !3400
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3401 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3403, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i64 %0, metadata !3405, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i64 1, metadata !3408, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i64 %0, metadata !3411, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i64 1, metadata !3414, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i64 %0, metadata !3411, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i64 1, metadata !3414, metadata !DIExpression()), !dbg !3415
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3417
  call void @llvm.dbg.value(metadata ptr %2, metadata !3106, metadata !DIExpression()), !dbg !3418
  %3 = icmp eq ptr %2, null, !dbg !3420
  br i1 %3, label %4, label %5, !dbg !3421

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3422
  unreachable, !dbg !3422

5:                                                ; preds = %1
  ret ptr %2, !dbg !3423
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3406 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3405, metadata !DIExpression()), !dbg !3424
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3408, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i64 %0, metadata !3411, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i64 %1, metadata !3414, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i64 %0, metadata !3411, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i64 %1, metadata !3414, metadata !DIExpression()), !dbg !3425
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3427
  call void @llvm.dbg.value(metadata ptr %3, metadata !3106, metadata !DIExpression()), !dbg !3428
  %4 = icmp eq ptr %3, null, !dbg !3430
  br i1 %4, label %5, label %6, !dbg !3431

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3432
  unreachable, !dbg !3432

6:                                                ; preds = %2
  ret ptr %3, !dbg !3433
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3434 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3438, metadata !DIExpression()), !dbg !3440
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3439, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 %1, metadata !3130, metadata !DIExpression()), !dbg !3441
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3443
  call void @llvm.dbg.value(metadata ptr %3, metadata !3106, metadata !DIExpression()), !dbg !3444
  %4 = icmp eq ptr %3, null, !dbg !3446
  br i1 %4, label %5, label %6, !dbg !3447

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3448
  unreachable, !dbg !3448

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3449, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata ptr %0, metadata !3455, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 %1, metadata !3456, metadata !DIExpression()), !dbg !3457
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3459
  ret ptr %3, !dbg !3460
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3461 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3465, metadata !DIExpression()), !dbg !3467
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3466, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i64 %1, metadata !3144, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i64 %1, metadata !3146, metadata !DIExpression()), !dbg !3470
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3472
  call void @llvm.dbg.value(metadata ptr %3, metadata !3106, metadata !DIExpression()), !dbg !3473
  %4 = icmp eq ptr %3, null, !dbg !3475
  br i1 %4, label %5, label %6, !dbg !3476

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3477
  unreachable, !dbg !3477

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3449, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata ptr %0, metadata !3455, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i64 %1, metadata !3456, metadata !DIExpression()), !dbg !3478
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3480
  ret ptr %3, !dbg !3481
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3482 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3486, metadata !DIExpression()), !dbg !3489
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3487, metadata !DIExpression()), !dbg !3489
  %3 = add nsw i64 %1, 1, !dbg !3490
  call void @llvm.dbg.value(metadata i64 %3, metadata !3144, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i64 %3, metadata !3146, metadata !DIExpression()), !dbg !3493
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3495
  call void @llvm.dbg.value(metadata ptr %4, metadata !3106, metadata !DIExpression()), !dbg !3496
  %5 = icmp eq ptr %4, null, !dbg !3498
  br i1 %5, label %6, label %7, !dbg !3499

6:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3500
  unreachable, !dbg !3500

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3488, metadata !DIExpression()), !dbg !3489
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3501
  store i8 0, ptr %8, align 1, !dbg !3502, !tbaa !826
  call void @llvm.dbg.value(metadata ptr %4, metadata !3449, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata ptr %0, metadata !3455, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i64 %1, metadata !3456, metadata !DIExpression()), !dbg !3503
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3505
  ret ptr %4, !dbg !3506
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3507 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3509, metadata !DIExpression()), !dbg !3510
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !3511
  %3 = add i64 %2, 1, !dbg !3512
  call void @llvm.dbg.value(metadata ptr %0, metadata !3438, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i64 %3, metadata !3439, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i64 %3, metadata !3130, metadata !DIExpression()), !dbg !3515
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3517
  call void @llvm.dbg.value(metadata ptr %4, metadata !3106, metadata !DIExpression()), !dbg !3518
  %5 = icmp eq ptr %4, null, !dbg !3520
  br i1 %5, label %6, label %7, !dbg !3521

6:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3522
  unreachable, !dbg !3522

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3449, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata ptr %0, metadata !3455, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i64 %3, metadata !3456, metadata !DIExpression()), !dbg !3523
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !3525
  ret ptr %4, !dbg !3526
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3527 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3532, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3529, metadata !DIExpression()), !dbg !3533
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.116, ptr noundef nonnull @.str.2.117, i32 noundef 5) #38, !dbg !3532
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.118, ptr noundef %2) #38, !dbg !3532
  %3 = icmp eq i32 %1, 0, !dbg !3532
  tail call void @llvm.assume(i1 %3), !dbg !3532
  tail call void @abort() #37, !dbg !3534
  unreachable, !dbg !3534
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3535 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3573, metadata !DIExpression()), !dbg !3578
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !3579
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3574, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3578
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3580, metadata !DIExpression()), !dbg !3583
  %3 = load i32, ptr %0, align 8, !dbg !3585, !tbaa !3586
  %4 = and i32 %3, 32, !dbg !3587
  %5 = icmp eq i32 %4, 0, !dbg !3587
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3576, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3578
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !3588
  %7 = icmp eq i32 %6, 0, !dbg !3589
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3577, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3578
  br i1 %5, label %8, label %18, !dbg !3590

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3592
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3574, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3578
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3593
  %11 = xor i1 %7, true, !dbg !3593
  %12 = sext i1 %11 to i32, !dbg !3593
  br i1 %10, label %21, label %13, !dbg !3593

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3594
  %15 = load i32, ptr %14, align 4, !dbg !3594, !tbaa !817
  %16 = icmp ne i32 %15, 9, !dbg !3595
  %17 = sext i1 %16 to i32, !dbg !3596
  br label %21, !dbg !3596

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3597

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3599
  store i32 0, ptr %20, align 4, !dbg !3601, !tbaa !817
  br label %21, !dbg !3599

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3578
  ret i32 %22, !dbg !3602
}

; Function Attrs: nounwind
declare !dbg !3603 i64 @__fpending(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3607 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3645, metadata !DIExpression()), !dbg !3649
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3646, metadata !DIExpression()), !dbg !3649
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3650
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3647, metadata !DIExpression()), !dbg !3649
  %3 = icmp slt i32 %2, 0, !dbg !3651
  br i1 %3, label %4, label %6, !dbg !3653

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3654
  br label %24, !dbg !3655

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !3656
  %8 = icmp eq i32 %7, 0, !dbg !3656
  br i1 %8, label %13, label %9, !dbg !3658

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3659
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !3660
  %12 = icmp eq i64 %11, -1, !dbg !3661
  br i1 %12, label %16, label %13, !dbg !3662

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !3663
  %15 = icmp eq i32 %14, 0, !dbg !3663
  br i1 %15, label %16, label %18, !dbg !3664

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3646, metadata !DIExpression()), !dbg !3649
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3648, metadata !DIExpression()), !dbg !3649
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3665
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3648, metadata !DIExpression()), !dbg !3649
  br label %24, !dbg !3666

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3667
  %20 = load i32, ptr %19, align 4, !dbg !3667, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3646, metadata !DIExpression()), !dbg !3649
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3648, metadata !DIExpression()), !dbg !3649
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3665
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3648, metadata !DIExpression()), !dbg !3649
  %22 = icmp eq i32 %20, 0, !dbg !3668
  br i1 %22, label %24, label %23, !dbg !3666

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3670, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3648, metadata !DIExpression()), !dbg !3649
  br label %24, !dbg !3672

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3649
  ret i32 %25, !dbg !3673
}

; Function Attrs: nofree nounwind
declare !dbg !3674 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !3675 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !3676 i32 @__freading(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !3677 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3680 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3718, metadata !DIExpression()), !dbg !3719
  %2 = icmp eq ptr %0, null, !dbg !3720
  br i1 %2, label %6, label %3, !dbg !3722

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !3723
  %5 = icmp eq i32 %4, 0, !dbg !3723
  br i1 %5, label %6, label %8, !dbg !3724

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3725
  br label %16, !dbg !3726

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3727, metadata !DIExpression()), !dbg !3732
  %9 = load i32, ptr %0, align 8, !dbg !3734, !tbaa !3586
  %10 = and i32 %9, 256, !dbg !3736
  %11 = icmp eq i32 %10, 0, !dbg !3736
  br i1 %11, label %14, label %12, !dbg !3737

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !3738
  br label %14, !dbg !3738

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3739
  br label %16, !dbg !3740

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3719
  ret i32 %17, !dbg !3741
}

; Function Attrs: nofree nounwind
declare !dbg !3742 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3743 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3782, metadata !DIExpression()), !dbg !3788
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3783, metadata !DIExpression()), !dbg !3788
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3784, metadata !DIExpression()), !dbg !3788
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3789
  %5 = load ptr, ptr %4, align 8, !dbg !3789, !tbaa !3790
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3791
  %7 = load ptr, ptr %6, align 8, !dbg !3791, !tbaa !3792
  %8 = icmp eq ptr %5, %7, !dbg !3793
  br i1 %8, label %9, label %27, !dbg !3794

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3795
  %11 = load ptr, ptr %10, align 8, !dbg !3795, !tbaa !1209
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3796
  %13 = load ptr, ptr %12, align 8, !dbg !3796, !tbaa !3797
  %14 = icmp eq ptr %11, %13, !dbg !3798
  br i1 %14, label %15, label %27, !dbg !3799

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3800
  %17 = load ptr, ptr %16, align 8, !dbg !3800, !tbaa !3801
  %18 = icmp eq ptr %17, null, !dbg !3802
  br i1 %18, label %19, label %27, !dbg !3803

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3804
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !3805
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3785, metadata !DIExpression()), !dbg !3806
  %22 = icmp eq i64 %21, -1, !dbg !3807
  br i1 %22, label %29, label %23, !dbg !3809

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3810, !tbaa !3586
  %25 = and i32 %24, -17, !dbg !3810
  store i32 %25, ptr %0, align 8, !dbg !3810, !tbaa !3586
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3811
  store i64 %21, ptr %26, align 8, !dbg !3812, !tbaa !3813
  br label %29, !dbg !3814

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3815
  br label %29, !dbg !3816

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3788
  ret i32 %30, !dbg !3817
}

; Function Attrs: nofree nounwind
declare !dbg !3818 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3821 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3826, metadata !DIExpression()), !dbg !3831
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3827, metadata !DIExpression()), !dbg !3831
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3828, metadata !DIExpression()), !dbg !3831
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3829, metadata !DIExpression()), !dbg !3831
  %5 = icmp eq ptr %1, null, !dbg !3832
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3834
  %7 = select i1 %5, ptr @.str.129, ptr %1, !dbg !3834
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3834
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3828, metadata !DIExpression()), !dbg !3831
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3827, metadata !DIExpression()), !dbg !3831
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3826, metadata !DIExpression()), !dbg !3831
  %9 = icmp eq ptr %3, null, !dbg !3835
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3837
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3829, metadata !DIExpression()), !dbg !3831
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #38, !dbg !3838
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3830, metadata !DIExpression()), !dbg !3831
  %12 = icmp ult i64 %11, -3, !dbg !3839
  br i1 %12, label %13, label %17, !dbg !3841

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #39, !dbg !3842
  %15 = icmp eq i32 %14, 0, !dbg !3842
  br i1 %15, label %16, label %29, !dbg !3843

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3844, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata ptr %10, metadata !3851, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i32 0, metadata !3854, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i64 8, metadata !3855, metadata !DIExpression()), !dbg !3856
  store i64 0, ptr %10, align 1, !dbg !3858
  br label %29, !dbg !3859

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3860
  br i1 %18, label %19, label %20, !dbg !3862

19:                                               ; preds = %17
  tail call void @abort() #37, !dbg !3863
  unreachable, !dbg !3863

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3864

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #38, !dbg !3866
  br i1 %23, label %29, label %24, !dbg !3867

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3868
  br i1 %25, label %29, label %26, !dbg !3871

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3872, !tbaa !826
  %28 = zext i8 %27 to i32, !dbg !3873
  store i32 %28, ptr %6, align 4, !dbg !3874, !tbaa !817
  br label %29, !dbg !3875

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3831
  ret i64 %30, !dbg !3876
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3877 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !3883 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3885, metadata !DIExpression()), !dbg !3889
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3886, metadata !DIExpression()), !dbg !3889
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3887, metadata !DIExpression()), !dbg !3889
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !3890
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !3890
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3888, metadata !DIExpression()), !dbg !3889
  br i1 %5, label %6, label %8, !dbg !3892

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !3893
  store i32 12, ptr %7, align 4, !dbg !3895, !tbaa !817
  br label %12, !dbg !3896

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !3890
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3888, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata ptr %0, metadata !3897, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i64 %9, metadata !3900, metadata !DIExpression()), !dbg !3901
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !3903
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #43, !dbg !3904
  br label %12, !dbg !3905

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !3889
  ret ptr %13, !dbg !3906
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3907 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !3914
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3910, metadata !DIExpression(), metadata !3914, metadata ptr %2, metadata !DIExpression()), !dbg !3915
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3909, metadata !DIExpression()), !dbg !3915
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !3916
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !3917
  %4 = icmp eq i32 %3, 0, !dbg !3917
  br i1 %4, label %5, label %12, !dbg !3919

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3920, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata ptr @.str.134, metadata !3923, metadata !DIExpression()), !dbg !3924
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.134, i64 2), !dbg !3927
  %7 = icmp eq i32 %6, 0, !dbg !3928
  br i1 %7, label %11, label %8, !dbg !3929

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3920, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata ptr @.str.1.135, metadata !3923, metadata !DIExpression()), !dbg !3930
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.135, i64 6), !dbg !3932
  %10 = icmp eq i32 %9, 0, !dbg !3933
  br i1 %10, label %11, label %12, !dbg !3934

11:                                               ; preds = %8, %5
  br label %12, !dbg !3935

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3915
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !3936
  ret i1 %13, !dbg !3936
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3937 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3941, metadata !DIExpression()), !dbg !3944
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3942, metadata !DIExpression()), !dbg !3944
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3943, metadata !DIExpression()), !dbg !3944
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !3945
  ret i32 %4, !dbg !3946
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3947 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3951, metadata !DIExpression()), !dbg !3952
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !3953
  ret ptr %2, !dbg !3954
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3955 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3957, metadata !DIExpression()), !dbg !3959
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !3960
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3958, metadata !DIExpression()), !dbg !3959
  ret ptr %2, !dbg !3961
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3962 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3964, metadata !DIExpression()), !dbg !3971
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3965, metadata !DIExpression()), !dbg !3971
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3966, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i32 %0, metadata !3957, metadata !DIExpression()), !dbg !3972
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !3974
  call void @llvm.dbg.value(metadata ptr %4, metadata !3958, metadata !DIExpression()), !dbg !3972
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3967, metadata !DIExpression()), !dbg !3971
  %5 = icmp eq ptr %4, null, !dbg !3975
  br i1 %5, label %6, label %9, !dbg !3976

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3977
  br i1 %7, label %19, label %8, !dbg !3980

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3981, !tbaa !826
  br label %19, !dbg !3982

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !3983
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3968, metadata !DIExpression()), !dbg !3984
  %11 = icmp ult i64 %10, %2, !dbg !3985
  br i1 %11, label %12, label %14, !dbg !3987

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3988
  call void @llvm.dbg.value(metadata ptr %1, metadata !3990, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata ptr %4, metadata !3993, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i64 %13, metadata !3994, metadata !DIExpression()), !dbg !3995
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #38, !dbg !3997
  br label %19, !dbg !3998

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3999
  br i1 %15, label %19, label %16, !dbg !4002

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4003
  call void @llvm.dbg.value(metadata ptr %1, metadata !3990, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata ptr %4, metadata !3993, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata i64 %17, metadata !3994, metadata !DIExpression()), !dbg !4005
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !4007
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4008
  store i8 0, ptr %18, align 1, !dbg !4009, !tbaa !826
  br label %19, !dbg !4010

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4011
  ret i32 %20, !dbg !4012
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
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #35 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { noreturn }
attributes #42 = { cold }
attributes #43 = { nounwind allocsize(1) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!126, !342, !346, !361, !665, !699, !417, !431, !482, !701, !657, !708, !743, !745, !747, !749, !751, !681, !753, !755, !757, !759}
!llvm.ident = !{!761, !761, !761, !761, !761, !761, !761, !761, !761, !761, !761, !761, !761, !761, !761, !761, !761, !761, !761, !761, !761, !761}
!llvm.module.flags = !{!762, !763, !764, !765, !766, !767, !768, !769}

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
!360 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !361, file: !362, line: 66, type: !412, isLocal: false, isDefinition: true)
!361 = distinct !DICompileUnit(language: DW_LANG_C11, file: !362, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !363, globals: !364, splitDebugInlining: false, nameTableKind: None)
!362 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!363 = !{!149, !155}
!364 = !{!365, !367, !391, !393, !395, !397, !359, !399, !401, !403, !405, !410}
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !362, line: 272, type: !30, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(name: "old_file_name", scope: !369, file: !362, line: 304, type: !125, isLocal: true, isDefinition: true)
!369 = distinct !DISubprogram(name: "verror_at_line", scope: !362, file: !362, line: 298, type: !370, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !384)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !150, !150, !125, !129, !125, !372}
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !373, line: 52, baseType: !374)
!373 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !375, line: 12, baseType: !376)
!375 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !362, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !378)
!378 = !{!379, !380, !381, !382, !383}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !377, file: !362, baseType: !149, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !377, file: !362, baseType: !149, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !377, file: !362, baseType: !149, size: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !377, file: !362, baseType: !150, size: 32, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !377, file: !362, baseType: !150, size: 32, offset: 224)
!384 = !{!385, !386, !387, !388, !389, !390}
!385 = !DILocalVariable(name: "status", arg: 1, scope: !369, file: !362, line: 298, type: !150)
!386 = !DILocalVariable(name: "errnum", arg: 2, scope: !369, file: !362, line: 298, type: !150)
!387 = !DILocalVariable(name: "file_name", arg: 3, scope: !369, file: !362, line: 298, type: !125)
!388 = !DILocalVariable(name: "line_number", arg: 4, scope: !369, file: !362, line: 298, type: !129)
!389 = !DILocalVariable(name: "message", arg: 5, scope: !369, file: !362, line: 298, type: !125)
!390 = !DILocalVariable(name: "args", arg: 6, scope: !369, file: !362, line: 298, type: !372)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(name: "old_line_number", scope: !369, file: !362, line: 305, type: !129, isLocal: true, isDefinition: true)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !362, line: 338, type: !163, isLocal: true, isDefinition: true)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !362, line: 346, type: !192, isLocal: true, isDefinition: true)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !362, line: 346, type: !173, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "error_message_count", scope: !361, file: !362, line: 69, type: !129, isLocal: false, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !361, file: !362, line: 295, type: !150, isLocal: false, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !362, line: 208, type: !105, isLocal: true, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !362, line: 208, type: !407, isLocal: true, isDefinition: true)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 21)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !362, line: 214, type: !30, isLocal: true, isDefinition: true)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{null}
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(name: "program_name", scope: !417, file: !418, line: 31, type: !125, isLocal: false, isDefinition: true)
!417 = distinct !DICompileUnit(language: DW_LANG_C11, file: !418, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !419, globals: !420, splitDebugInlining: false, nameTableKind: None)
!418 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!419 = !{!149, !148}
!420 = !{!415, !421, !423}
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(scope: null, file: !418, line: 46, type: !192, isLocal: true, isDefinition: true)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(scope: null, file: !418, line: 49, type: !163, isLocal: true, isDefinition: true)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(name: "utf07FF", scope: !427, file: !428, line: 46, type: !455, isLocal: true, isDefinition: true)
!427 = distinct !DISubprogram(name: "proper_name_lite", scope: !428, file: !428, line: 38, type: !429, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !433)
!428 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!429 = !DISubroutineType(types: !430)
!430 = !{!125, !125, !125}
!431 = distinct !DICompileUnit(language: DW_LANG_C11, file: !428, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !432, splitDebugInlining: false, nameTableKind: None)
!432 = !{!425}
!433 = !{!434, !435, !436, !437, !442}
!434 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !427, file: !428, line: 38, type: !125)
!435 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !427, file: !428, line: 38, type: !125)
!436 = !DILocalVariable(name: "translation", scope: !427, file: !428, line: 40, type: !125)
!437 = !DILocalVariable(name: "w", scope: !427, file: !428, line: 47, type: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !439, line: 37, baseType: !440)
!439 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !306, line: 57, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !306, line: 42, baseType: !129)
!442 = !DILocalVariable(name: "mbs", scope: !427, file: !428, line: 48, type: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !444, line: 6, baseType: !445)
!444 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !446, line: 21, baseType: !447)
!446 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !446, line: 13, size: 64, elements: !448)
!448 = !{!449, !450}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !447, file: !446, line: 15, baseType: !150, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !447, file: !446, line: 20, baseType: !451, size: 32, offset: 32)
!451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !447, file: !446, line: 16, size: 32, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !451, file: !446, line: 18, baseType: !129, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !451, file: !446, line: 19, baseType: !163, size: 32)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 16, elements: !174)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !458, line: 78, type: !192, isLocal: true, isDefinition: true)
!458 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !458, line: 79, type: !168, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !458, line: 80, type: !463, isLocal: true, isDefinition: true)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 13)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !458, line: 81, type: !463, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !458, line: 82, type: !328, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !458, line: 83, type: !173, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !458, line: 84, type: !192, isLocal: true, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !458, line: 85, type: !105, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !458, line: 86, type: !105, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !458, line: 87, type: !192, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !482, file: !458, line: 76, type: !568, isLocal: false, isDefinition: true)
!482 = distinct !DICompileUnit(language: DW_LANG_C11, file: !458, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !483, retainedTypes: !503, globals: !504, splitDebugInlining: false, nameTableKind: None)
!483 = !{!484, !498, !132}
!484 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !485, line: 42, baseType: !129, size: 32, elements: !486)
!485 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!486 = !{!487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497}
!487 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!488 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!489 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!490 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!491 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!492 = !DIEnumerator(name: "c_quoting_style", value: 5)
!493 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!494 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!495 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!496 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!497 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!498 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !485, line: 254, baseType: !129, size: 32, elements: !499)
!499 = !{!500, !501, !502}
!500 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!501 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!502 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!503 = !{!149, !150, !151, !152}
!504 = !{!456, !459, !461, !466, !468, !470, !472, !474, !476, !478, !480, !505, !509, !519, !521, !526, !528, !530, !532, !534, !557, !564, !566}
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !482, file: !458, line: 92, type: !507, isLocal: false, isDefinition: true)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !508, size: 320, elements: !96)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !482, file: !458, line: 1040, type: !511, isLocal: false, isDefinition: true)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !458, line: 56, size: 448, elements: !512)
!512 = !{!513, !514, !515, !517, !518}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !511, file: !458, line: 59, baseType: !484, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !511, file: !458, line: 62, baseType: !150, size: 32, offset: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !511, file: !458, line: 66, baseType: !516, size: 256, offset: 64)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 256, elements: !193)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !511, file: !458, line: 69, baseType: !125, size: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !511, file: !458, line: 72, baseType: !125, size: 64, offset: 384)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !482, file: !458, line: 107, type: !511, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(name: "slot0", scope: !482, file: !458, line: 831, type: !523, isLocal: true, isDefinition: true)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !524)
!524 = !{!525}
!525 = !DISubrange(count: 256)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !458, line: 321, type: !173, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !458, line: 357, type: !173, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !458, line: 358, type: !173, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !458, line: 199, type: !105, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(name: "quote", scope: !536, file: !458, line: 228, type: !555, isLocal: true, isDefinition: true)
!536 = distinct !DISubprogram(name: "gettext_quote", scope: !458, file: !458, line: 197, type: !537, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !539)
!537 = !DISubroutineType(types: !538)
!538 = !{!125, !125, !484}
!539 = !{!540, !541, !542, !543, !544}
!540 = !DILocalVariable(name: "msgid", arg: 1, scope: !536, file: !458, line: 197, type: !125)
!541 = !DILocalVariable(name: "s", arg: 2, scope: !536, file: !458, line: 197, type: !484)
!542 = !DILocalVariable(name: "translation", scope: !536, file: !458, line: 199, type: !125)
!543 = !DILocalVariable(name: "w", scope: !536, file: !458, line: 229, type: !438)
!544 = !DILocalVariable(name: "mbs", scope: !536, file: !458, line: 230, type: !545)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !444, line: 6, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !446, line: 21, baseType: !547)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !446, line: 13, size: 64, elements: !548)
!548 = !{!549, !550}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !547, file: !446, line: 15, baseType: !150, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !547, file: !446, line: 20, baseType: !551, size: 32, offset: 32)
!551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !547, file: !446, line: 16, size: 32, elements: !552)
!552 = !{!553, !554}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !551, file: !446, line: 18, baseType: !129, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !551, file: !446, line: 19, baseType: !163, size: 32)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 64, elements: !556)
!556 = !{!175, !165}
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(name: "slotvec", scope: !482, file: !458, line: 834, type: !559, isLocal: true, isDefinition: true)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !458, line: 823, size: 128, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !560, file: !458, line: 825, baseType: !152, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !560, file: !458, line: 826, baseType: !148, size: 64, offset: 64)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(name: "nslots", scope: !482, file: !458, line: 832, type: !150, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(name: "slotvec0", scope: !482, file: !458, line: 833, type: !560, isLocal: true, isDefinition: true)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 704, elements: !10)
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(scope: null, file: !572, line: 67, type: !3, isLocal: true, isDefinition: true)
!572 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !572, line: 69, type: !105, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(scope: null, file: !572, line: 83, type: !105, isLocal: true, isDefinition: true)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !572, line: 83, type: !163, isLocal: true, isDefinition: true)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !572, line: 85, type: !173, isLocal: true, isDefinition: true)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !572, line: 88, type: !583, isLocal: true, isDefinition: true)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !584)
!584 = !{!585}
!585 = !DISubrange(count: 171)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !572, line: 88, type: !588, isLocal: true, isDefinition: true)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: 34)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !572, line: 105, type: !82, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !572, line: 109, type: !595, isLocal: true, isDefinition: true)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 23)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !572, line: 113, type: !600, isLocal: true, isDefinition: true)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 28)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !572, line: 120, type: !605, isLocal: true, isDefinition: true)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !606)
!606 = !{!607}
!607 = !DISubrange(count: 32)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !572, line: 127, type: !610, isLocal: true, isDefinition: true)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !611)
!611 = !{!612}
!612 = !DISubrange(count: 36)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !572, line: 134, type: !210, isLocal: true, isDefinition: true)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !572, line: 142, type: !617, isLocal: true, isDefinition: true)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 44)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !572, line: 150, type: !622, isLocal: true, isDefinition: true)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !623)
!623 = !{!624}
!624 = !DISubrange(count: 48)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !572, line: 159, type: !627, isLocal: true, isDefinition: true)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !628)
!628 = !{!629}
!629 = !DISubrange(count: 52)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !572, line: 170, type: !632, isLocal: true, isDefinition: true)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !633)
!633 = !{!634}
!634 = !DISubrange(count: 60)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !572, line: 248, type: !328, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !572, line: 248, type: !235, isLocal: true, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !572, line: 254, type: !328, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !572, line: 254, type: !112, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !572, line: 254, type: !210, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !572, line: 259, type: !647, isLocal: true, isDefinition: true)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !648)
!648 = !{!649}
!649 = !DISubrange(count: 39)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !572, line: 259, type: !652, isLocal: true, isDefinition: true)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !653)
!653 = !{!654}
!654 = !DISubrange(count: 29)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !657, file: !658, line: 26, type: !660, isLocal: false, isDefinition: true)
!657 = distinct !DICompileUnit(language: DW_LANG_C11, file: !658, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !659, splitDebugInlining: false, nameTableKind: None)
!658 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!659 = !{!655}
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 376, elements: !661)
!661 = !{!662}
!662 = !DISubrange(count: 47)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(name: "exit_failure", scope: !665, file: !666, line: 24, type: !668, isLocal: false, isDefinition: true)
!665 = distinct !DICompileUnit(language: DW_LANG_C11, file: !666, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !667, splitDebugInlining: false, nameTableKind: None)
!666 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!667 = !{!663}
!668 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !150)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !671, line: 34, type: !85, isLocal: true, isDefinition: true)
!671 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !671, line: 34, type: !105, isLocal: true, isDefinition: true)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !671, line: 34, type: !205, isLocal: true, isDefinition: true)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !678, line: 108, type: !90, isLocal: true, isDefinition: true)
!678 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(name: "internal_state", scope: !681, file: !678, line: 97, type: !684, isLocal: true, isDefinition: true)
!681 = distinct !DICompileUnit(language: DW_LANG_C11, file: !678, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !682, globals: !683, splitDebugInlining: false, nameTableKind: None)
!682 = !{!149, !152, !155}
!683 = !{!676, !679}
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !444, line: 6, baseType: !685)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !446, line: 21, baseType: !686)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !446, line: 13, size: 64, elements: !687)
!687 = !{!688, !689}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !686, file: !446, line: 15, baseType: !150, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !686, file: !446, line: 20, baseType: !690, size: 32, offset: 32)
!690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !686, file: !446, line: 16, size: 32, elements: !691)
!691 = !{!692, !693}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !690, file: !446, line: 18, baseType: !129, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !690, file: !446, line: 19, baseType: !163, size: 32)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !696, line: 35, type: !173, isLocal: true, isDefinition: true)
!696 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !696, line: 35, type: !168, isLocal: true, isDefinition: true)
!699 = distinct !DICompileUnit(language: DW_LANG_C11, file: !700, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!700 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!701 = distinct !DICompileUnit(language: DW_LANG_C11, file: !572, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !702, retainedTypes: !706, globals: !707, splitDebugInlining: false, nameTableKind: None)
!702 = !{!703}
!703 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !572, line: 40, baseType: !129, size: 32, elements: !704)
!704 = !{!705}
!705 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!706 = !{!149}
!707 = !{!570, !573, !575, !577, !579, !581, !586, !591, !593, !598, !603, !608, !613, !615, !620, !625, !630, !635, !637, !639, !641, !643, !645, !650}
!708 = distinct !DICompileUnit(language: DW_LANG_C11, file: !709, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !710, retainedTypes: !742, splitDebugInlining: false, nameTableKind: None)
!709 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!710 = !{!711, !723}
!711 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !712, file: !709, line: 188, baseType: !129, size: 32, elements: !721)
!712 = distinct !DISubprogram(name: "x2nrealloc", scope: !709, file: !709, line: 176, type: !713, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !716)
!713 = !DISubroutineType(types: !714)
!714 = !{!149, !149, !715, !152}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!716 = !{!717, !718, !719, !720}
!717 = !DILocalVariable(name: "p", arg: 1, scope: !712, file: !709, line: 176, type: !149)
!718 = !DILocalVariable(name: "pn", arg: 2, scope: !712, file: !709, line: 176, type: !715)
!719 = !DILocalVariable(name: "s", arg: 3, scope: !712, file: !709, line: 176, type: !152)
!720 = !DILocalVariable(name: "n", scope: !712, file: !709, line: 178, type: !152)
!721 = !{!722}
!722 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!723 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !724, file: !709, line: 228, baseType: !129, size: 32, elements: !721)
!724 = distinct !DISubprogram(name: "xpalloc", scope: !709, file: !709, line: 223, type: !725, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !732)
!725 = !DISubroutineType(types: !726)
!726 = !{!149, !149, !727, !728, !730, !728}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !729, line: 130, baseType: !730)
!729 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !731, line: 18, baseType: !307)
!731 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!732 = !{!733, !734, !735, !736, !737, !738, !739, !740, !741}
!733 = !DILocalVariable(name: "pa", arg: 1, scope: !724, file: !709, line: 223, type: !149)
!734 = !DILocalVariable(name: "pn", arg: 2, scope: !724, file: !709, line: 223, type: !727)
!735 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !724, file: !709, line: 223, type: !728)
!736 = !DILocalVariable(name: "n_max", arg: 4, scope: !724, file: !709, line: 223, type: !730)
!737 = !DILocalVariable(name: "s", arg: 5, scope: !724, file: !709, line: 223, type: !728)
!738 = !DILocalVariable(name: "n0", scope: !724, file: !709, line: 230, type: !728)
!739 = !DILocalVariable(name: "n", scope: !724, file: !709, line: 237, type: !728)
!740 = !DILocalVariable(name: "nbytes", scope: !724, file: !709, line: 248, type: !728)
!741 = !DILocalVariable(name: "adjusted_nbytes", scope: !724, file: !709, line: 252, type: !728)
!742 = !{!148, !149}
!743 = distinct !DICompileUnit(language: DW_LANG_C11, file: !671, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !744, splitDebugInlining: false, nameTableKind: None)
!744 = !{!669, !672, !674}
!745 = distinct !DICompileUnit(language: DW_LANG_C11, file: !746, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!746 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!747 = distinct !DICompileUnit(language: DW_LANG_C11, file: !748, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!748 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!749 = distinct !DICompileUnit(language: DW_LANG_C11, file: !750, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !706, splitDebugInlining: false, nameTableKind: None)
!750 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!751 = distinct !DICompileUnit(language: DW_LANG_C11, file: !752, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !706, splitDebugInlining: false, nameTableKind: None)
!752 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!753 = distinct !DICompileUnit(language: DW_LANG_C11, file: !754, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !706, splitDebugInlining: false, nameTableKind: None)
!754 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!755 = distinct !DICompileUnit(language: DW_LANG_C11, file: !696, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !756, splitDebugInlining: false, nameTableKind: None)
!756 = !{!694, !697}
!757 = distinct !DICompileUnit(language: DW_LANG_C11, file: !758, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!758 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!759 = distinct !DICompileUnit(language: DW_LANG_C11, file: !760, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !706, splitDebugInlining: false, nameTableKind: None)
!760 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!761 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!762 = !{i32 7, !"Dwarf Version", i32 5}
!763 = !{i32 2, !"Debug Info Version", i32 3}
!764 = !{i32 1, !"wchar_size", i32 4}
!765 = !{i32 8, !"PIC Level", i32 2}
!766 = !{i32 7, !"PIE Level", i32 2}
!767 = !{i32 7, !"uwtable", i32 2}
!768 = !{i32 7, !"frame-pointer", i32 1}
!769 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
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
!798 = !DISubprogram(name: "__assert_fail", scope: !799, file: !799, line: 69, type: !800, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!799 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!800 = !DISubroutineType(types: !801)
!801 = !{null, !125, !125, !129, !125}
!802 = !DISubprogram(name: "dcgettext", scope: !803, file: !803, line: 51, type: !804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!803 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!804 = !DISubroutineType(types: !805)
!805 = !{!148, !125, !125, !150}
!806 = !DISubprogram(name: "__printf_chk", scope: !807, file: !807, line: 95, type: !808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!807 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!808 = !DISubroutineType(types: !809)
!809 = !{!150, !150, !810, null}
!810 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !125)
!811 = !DISubprogram(name: "fputs_unlocked", scope: !373, file: !373, line: 691, type: !812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!812 = !DISubroutineType(types: !813)
!813 = !{!150, !810, !814}
!814 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !279)
!815 = !DILocation(line: 0, scope: !121)
!816 = !DILocation(line: 581, column: 7, scope: !264)
!817 = !{!818, !818, i64 0}
!818 = !{!"int", !783, i64 0}
!819 = !DILocation(line: 581, column: 19, scope: !264)
!820 = !DILocation(line: 581, column: 7, scope: !121)
!821 = !DILocation(line: 585, column: 26, scope: !263)
!822 = !DILocation(line: 0, scope: !263)
!823 = !DILocation(line: 586, column: 23, scope: !263)
!824 = !DILocation(line: 586, column: 28, scope: !263)
!825 = !DILocation(line: 586, column: 32, scope: !263)
!826 = !{!783, !783, i64 0}
!827 = !DILocation(line: 586, column: 38, scope: !263)
!828 = !DILocalVariable(name: "__s1", arg: 1, scope: !829, file: !830, line: 1359, type: !125)
!829 = distinct !DISubprogram(name: "streq", scope: !830, file: !830, line: 1359, type: !831, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !833)
!830 = !DIFile(filename: "./lib/string.h", directory: "/src")
!831 = !DISubroutineType(types: !832)
!832 = !{!266, !125, !125}
!833 = !{!828, !834}
!834 = !DILocalVariable(name: "__s2", arg: 2, scope: !829, file: !830, line: 1359, type: !125)
!835 = !DILocation(line: 0, scope: !829, inlinedAt: !836)
!836 = distinct !DILocation(line: 586, column: 41, scope: !263)
!837 = !DILocation(line: 1361, column: 11, scope: !829, inlinedAt: !836)
!838 = !DILocation(line: 1361, column: 10, scope: !829, inlinedAt: !836)
!839 = !DILocation(line: 586, column: 19, scope: !263)
!840 = !DILocation(line: 587, column: 5, scope: !263)
!841 = !DILocation(line: 588, column: 7, scope: !842)
!842 = distinct !DILexicalBlock(scope: !121, file: !122, line: 588, column: 7)
!843 = !DILocation(line: 588, column: 7, scope: !121)
!844 = !DILocation(line: 590, column: 7, scope: !845)
!845 = distinct !DILexicalBlock(scope: !842, file: !122, line: 589, column: 5)
!846 = !DILocation(line: 591, column: 7, scope: !845)
!847 = !DILocation(line: 595, column: 37, scope: !121)
!848 = !DILocation(line: 595, column: 35, scope: !121)
!849 = !DILocation(line: 596, column: 29, scope: !121)
!850 = !DILocation(line: 597, column: 8, scope: !272)
!851 = !DILocation(line: 597, column: 7, scope: !121)
!852 = !DILocation(line: 604, column: 24, scope: !271)
!853 = !DILocation(line: 604, column: 12, scope: !272)
!854 = !DILocation(line: 0, scope: !270)
!855 = !DILocation(line: 610, column: 16, scope: !270)
!856 = !DILocation(line: 610, column: 7, scope: !270)
!857 = !DILocation(line: 611, column: 21, scope: !270)
!858 = !{!859, !859, i64 0}
!859 = !{!"short", !783, i64 0}
!860 = !DILocation(line: 611, column: 19, scope: !270)
!861 = !DILocation(line: 611, column: 16, scope: !270)
!862 = !DILocation(line: 610, column: 30, scope: !270)
!863 = distinct !{!863, !856, !857, !864}
!864 = !{!"llvm.loop.mustprogress"}
!865 = !DILocation(line: 612, column: 18, scope: !866)
!866 = distinct !DILexicalBlock(scope: !270, file: !122, line: 612, column: 11)
!867 = !DILocation(line: 612, column: 11, scope: !270)
!868 = !DILocation(line: 620, column: 23, scope: !121)
!869 = !DILocation(line: 625, column: 39, scope: !121)
!870 = !DILocation(line: 626, column: 3, scope: !121)
!871 = !DILocation(line: 626, column: 10, scope: !121)
!872 = !DILocation(line: 626, column: 21, scope: !121)
!873 = !DILocation(line: 628, column: 44, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !122, line: 628, column: 11)
!875 = distinct !DILexicalBlock(scope: !121, file: !122, line: 627, column: 5)
!876 = !DILocation(line: 628, column: 32, scope: !874)
!877 = !DILocation(line: 628, column: 49, scope: !874)
!878 = !DILocation(line: 628, column: 11, scope: !875)
!879 = !DILocation(line: 630, column: 11, scope: !880)
!880 = distinct !DILexicalBlock(scope: !875, file: !122, line: 630, column: 11)
!881 = !DILocation(line: 630, column: 11, scope: !875)
!882 = !DILocation(line: 632, column: 26, scope: !883)
!883 = distinct !DILexicalBlock(scope: !884, file: !122, line: 632, column: 15)
!884 = distinct !DILexicalBlock(scope: !880, file: !122, line: 631, column: 9)
!885 = !DILocation(line: 632, column: 34, scope: !883)
!886 = !DILocation(line: 632, column: 37, scope: !883)
!887 = !DILocation(line: 632, column: 15, scope: !884)
!888 = !DILocation(line: 640, column: 16, scope: !875)
!889 = distinct !{!889, !870, !890, !864}
!890 = !DILocation(line: 641, column: 5, scope: !121)
!891 = !DILocation(line: 644, column: 3, scope: !121)
!892 = !DILocation(line: 0, scope: !829, inlinedAt: !893)
!893 = distinct !DILocation(line: 648, column: 31, scope: !121)
!894 = !{}
!895 = !DILocation(line: 0, scope: !829, inlinedAt: !896)
!896 = distinct !DILocation(line: 649, column: 31, scope: !121)
!897 = !DILocation(line: 0, scope: !829, inlinedAt: !898)
!898 = distinct !DILocation(line: 650, column: 31, scope: !121)
!899 = !DILocation(line: 0, scope: !829, inlinedAt: !900)
!900 = distinct !DILocation(line: 651, column: 31, scope: !121)
!901 = !DILocation(line: 0, scope: !829, inlinedAt: !902)
!902 = distinct !DILocation(line: 652, column: 31, scope: !121)
!903 = !DILocation(line: 0, scope: !829, inlinedAt: !904)
!904 = distinct !DILocation(line: 653, column: 31, scope: !121)
!905 = !DILocation(line: 0, scope: !829, inlinedAt: !906)
!906 = distinct !DILocation(line: 654, column: 31, scope: !121)
!907 = !DILocation(line: 0, scope: !829, inlinedAt: !908)
!908 = distinct !DILocation(line: 655, column: 31, scope: !121)
!909 = !DILocation(line: 0, scope: !829, inlinedAt: !910)
!910 = distinct !DILocation(line: 656, column: 31, scope: !121)
!911 = !DILocation(line: 0, scope: !829, inlinedAt: !912)
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
!961 = !DISubprogram(name: "exit", scope: !962, file: !962, line: 624, type: !771, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!962 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!963 = !DISubprogram(name: "setlocale", scope: !964, file: !964, line: 122, type: !965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!964 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!965 = !DISubroutineType(types: !966)
!966 = !{!148, !150, !125}
!967 = !DISubprogram(name: "strncmp", scope: !968, file: !968, line: 159, type: !969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!968 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!969 = !DISubroutineType(types: !970)
!970 = !{!150, !125, !125, !152}
!971 = !DISubprogram(name: "getenv", scope: !962, file: !962, line: 641, type: !972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!972 = !DISubroutineType(types: !973)
!973 = !{!148, !125}
!974 = !DISubprogram(name: "strcmp", scope: !968, file: !968, line: 156, type: !975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!975 = !DISubroutineType(types: !976)
!976 = !{!150, !125, !125}
!977 = !DISubprogram(name: "strspn", scope: !968, file: !968, line: 297, type: !978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!978 = !DISubroutineType(types: !979)
!979 = !{!154, !125, !125}
!980 = !DISubprogram(name: "strchr", scope: !968, file: !968, line: 246, type: !981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!981 = !DISubroutineType(types: !982)
!982 = !{!148, !125, !150}
!983 = !DISubprogram(name: "__ctype_b_loc", scope: !133, file: !133, line: 79, type: !984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!984 = !DISubroutineType(types: !985)
!985 = !{!986}
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!989 = !DISubprogram(name: "strcspn", scope: !968, file: !968, line: 293, type: !978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!990 = !DISubprogram(name: "fwrite_unlocked", scope: !373, file: !373, line: 704, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!991 = !DISubroutineType(types: !992)
!992 = !{!152, !993, !152, !152, !814}
!993 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !994)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!996 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 121, type: !997, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !1000)
!997 = !DISubroutineType(types: !998)
!998 = !{!150, !150, !999}
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!1000 = !{!1001, !1002, !1003, !1004, !1005, !1006, !1007, !1010, !1011, !1012, !1016, !1017, !1023}
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
!1011 = !DILabel(scope: !996, name: "just_echo", file: !2, line: 204)
!1012 = !DILocalVariable(name: "s", scope: !1013, file: !2, line: 210, type: !125)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 209, column: 9)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !2, line: 207, column: 5)
!1015 = distinct !DILexicalBlock(scope: !996, file: !2, line: 206, column: 7)
!1016 = !DILocalVariable(name: "c", scope: !1013, file: !2, line: 211, type: !155)
!1017 = !DILocalVariable(name: "ch", scope: !1018, file: !2, line: 230, type: !155)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !2, line: 229, column: 23)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 218, column: 21)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 216, column: 17)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !2, line: 215, column: 19)
!1022 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 214, column: 13)
!1023 = !DILabel(scope: !1019, name: "not_an_escape", file: !2, line: 259)
!1024 = !DILocation(line: 0, scope: !996)
!1025 = !DILocation(line: 124, column: 28, scope: !996)
!1026 = !DILocation(line: 124, column: 27, scope: !996)
!1027 = !DILocation(line: 127, column: 6, scope: !996)
!1028 = !DILocation(line: 127, column: 37, scope: !996)
!1029 = !DILocation(line: 127, column: 44, scope: !996)
!1030 = !DILocation(line: 127, column: 54, scope: !996)
!1031 = !DILocation(line: 0, scope: !829, inlinedAt: !1032)
!1032 = distinct !DILocation(line: 127, column: 47, scope: !996)
!1033 = !DILocation(line: 1361, column: 11, scope: !829, inlinedAt: !1032)
!1034 = !DILocation(line: 1361, column: 10, scope: !829, inlinedAt: !1032)
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
!1046 = !DILocation(line: 0, scope: !829, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 146, column: 11, scope: !1044)
!1048 = !DILocation(line: 1361, column: 11, scope: !829, inlinedAt: !1047)
!1049 = !DILocation(line: 1361, column: 10, scope: !829, inlinedAt: !1047)
!1050 = !DILocation(line: 146, column: 11, scope: !1045)
!1051 = !DILocation(line: 147, column: 9, scope: !1044)
!1052 = !DILocation(line: 0, scope: !829, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 149, column: 11, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 149, column: 11)
!1055 = !DILocation(line: 1361, column: 11, scope: !829, inlinedAt: !1053)
!1056 = !DILocation(line: 1361, column: 10, scope: !829, inlinedAt: !1053)
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
!1067 = !DILocation(line: 161, column: 5, scope: !1009)
!1068 = !DILocation(line: 200, column: 13, scope: !1008)
!1069 = !DILocation(line: 201, column: 13, scope: !1008)
!1070 = !DILocation(line: 161, column: 17, scope: !1009)
!1071 = !DILocation(line: 161, column: 21, scope: !1009)
!1072 = !DILocation(line: 161, column: 25, scope: !1009)
!1073 = !DILocation(line: 161, column: 24, scope: !1009)
!1074 = !DILocation(line: 161, column: 33, scope: !1009)
!1075 = !DILocation(line: 163, column: 36, scope: !1008)
!1076 = !DILocation(line: 0, scope: !1008)
!1077 = !DILocation(line: 170, column: 14, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 170, column: 9)
!1079 = !DILocation(line: 170, scope: !1078)
!1080 = !DILocation(line: 170, column: 21, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 170, column: 9)
!1082 = !DILocation(line: 170, column: 9, scope: !1078)
!1083 = !DILocation(line: 170, column: 31, scope: !1081)
!1084 = !DILocation(line: 170, column: 9, scope: !1081)
!1085 = distinct !{!1085, !1082, !1086, !864}
!1086 = !DILocation(line: 177, column: 13, scope: !1078)
!1087 = !DILocation(line: 179, column: 15, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 179, column: 13)
!1089 = !DILocation(line: 179, column: 13, scope: !1008)
!1090 = !DILocation(line: 184, column: 16, scope: !1008)
!1091 = !DILocation(line: 184, column: 9, scope: !1008)
!1092 = !DILocation(line: 185, column: 24, scope: !1008)
!1093 = !DILocation(line: 185, column: 11, scope: !1008)
!1094 = !DILocation(line: 189, column: 15, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 186, column: 13)
!1096 = !DILocation(line: 193, column: 15, scope: !1095)
!1097 = !DILocation(line: 197, column: 15, scope: !1095)
!1098 = distinct !{!1098, !1091, !1099, !864}
!1099 = !DILocation(line: 198, column: 13, scope: !1008)
!1100 = !DILocation(line: 206, column: 13, scope: !1015)
!1101 = !DILocation(line: 204, column: 1, scope: !996)
!1102 = !DILocation(line: 0, scope: !1015)
!1103 = !DILocation(line: 283, column: 7, scope: !996)
!1104 = !DILocation(line: 273, column: 7, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1015, file: !2, line: 272, column: 5)
!1106 = !DILocation(line: 275, column: 11, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 274, column: 9)
!1108 = !DILocation(line: 278, column: 20, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1107, file: !2, line: 278, column: 15)
!1110 = !DILocation(line: 278, column: 15, scope: !1107)
!1111 = !DILocation(line: 208, column: 7, scope: !1014)
!1112 = !DILocation(line: 210, column: 27, scope: !1013)
!1113 = !DILocation(line: 0, scope: !1013)
!1114 = !DILocation(line: 213, column: 11, scope: !1013)
!1115 = !DILocation(line: 213, column: 25, scope: !1013)
!1116 = !DILocation(line: 213, column: 23, scope: !1013)
!1117 = !DILocation(line: 215, column: 32, scope: !1021)
!1118 = !DILocation(line: 215, column: 19, scope: !1022)
!1119 = !DILocation(line: 217, column: 33, scope: !1020)
!1120 = !DILocation(line: 217, column: 19, scope: !1020)
!1121 = !DILocation(line: 219, column: 41, scope: !1019)
!1122 = !DILocation(line: 220, column: 41, scope: !1019)
!1123 = !DILocation(line: 222, column: 43, scope: !1019)
!1124 = !DILocation(line: 223, column: 41, scope: !1019)
!1125 = !DILocation(line: 224, column: 41, scope: !1019)
!1126 = !DILocation(line: 225, column: 41, scope: !1019)
!1127 = !DILocation(line: 226, column: 41, scope: !1019)
!1128 = !DILocation(line: 227, column: 41, scope: !1019)
!1129 = !DILocation(line: 230, column: 44, scope: !1018)
!1130 = !DILocation(line: 0, scope: !1018)
!1131 = !DILocation(line: 231, column: 43, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1018, file: !2, line: 231, column: 29)
!1133 = !DILocalVariable(name: "c", arg: 1, scope: !1134, file: !1135, line: 324, type: !150)
!1134 = distinct !DISubprogram(name: "c_isxdigit", scope: !1135, file: !1135, line: 324, type: !1136, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !1138)
!1135 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!266, !150}
!1138 = !{!1133}
!1139 = !DILocation(line: 0, scope: !1134, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 231, column: 31, scope: !1132)
!1141 = !DILocation(line: 326, column: 3, scope: !1134, inlinedAt: !1140)
!1142 = !DILocation(line: 233, column: 26, scope: !1018)
!1143 = !DILocalVariable(name: "c", arg: 1, scope: !1144, file: !2, line: 102, type: !155)
!1144 = distinct !DISubprogram(name: "hextobin", scope: !2, file: !2, line: 102, type: !1145, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !1147)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!150, !155}
!1147 = !{!1143}
!1148 = !DILocation(line: 0, scope: !1144, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 234, column: 29, scope: !1018)
!1150 = !DILocation(line: 104, column: 3, scope: !1144, inlinedAt: !1149)
!1151 = !DILocation(line: 106, column: 23, scope: !1152, inlinedAt: !1149)
!1152 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 105, column: 5)
!1153 = !DILocation(line: 106, column: 14, scope: !1152, inlinedAt: !1149)
!1154 = !DILocation(line: 108, column: 25, scope: !1152, inlinedAt: !1149)
!1155 = !DILocation(line: 109, column: 25, scope: !1152, inlinedAt: !1149)
!1156 = !DILocation(line: 110, column: 25, scope: !1152, inlinedAt: !1149)
!1157 = !DILocation(line: 111, column: 25, scope: !1152, inlinedAt: !1149)
!1158 = !DILocation(line: 112, column: 25, scope: !1152, inlinedAt: !1149)
!1159 = !DILocation(line: 0, scope: !1152, inlinedAt: !1149)
!1160 = !DILocation(line: 235, column: 30, scope: !1018)
!1161 = !DILocation(line: 236, column: 41, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1018, file: !2, line: 236, column: 29)
!1163 = !DILocation(line: 0, scope: !1134, inlinedAt: !1164)
!1164 = distinct !DILocation(line: 236, column: 29, scope: !1162)
!1165 = !DILocation(line: 326, column: 3, scope: !1134, inlinedAt: !1164)
!1166 = !DILocation(line: 238, column: 30, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 237, column: 27)
!1168 = !DILocation(line: 239, column: 35, scope: !1167)
!1169 = !DILocation(line: 0, scope: !1144, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 239, column: 42, scope: !1167)
!1171 = !DILocation(line: 104, column: 3, scope: !1144, inlinedAt: !1170)
!1172 = !DILocation(line: 106, column: 23, scope: !1152, inlinedAt: !1170)
!1173 = !DILocation(line: 106, column: 14, scope: !1152, inlinedAt: !1170)
!1174 = !DILocation(line: 108, column: 25, scope: !1152, inlinedAt: !1170)
!1175 = !DILocation(line: 109, column: 25, scope: !1152, inlinedAt: !1170)
!1176 = !DILocation(line: 110, column: 25, scope: !1152, inlinedAt: !1170)
!1177 = !DILocation(line: 111, column: 25, scope: !1152, inlinedAt: !1170)
!1178 = !DILocation(line: 112, column: 25, scope: !1152, inlinedAt: !1170)
!1179 = !DILocation(line: 0, scope: !1152, inlinedAt: !1170)
!1180 = !DILocation(line: 239, column: 40, scope: !1167)
!1181 = !DILocation(line: 240, column: 27, scope: !1167)
!1182 = !DILocation(line: 245, column: 37, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1019, file: !2, line: 245, column: 27)
!1184 = !DILocation(line: 245, column: 40, scope: !1183)
!1185 = !DILocation(line: 247, column: 29, scope: !1019)
!1186 = !DILocation(line: 247, column: 23, scope: !1019)
!1187 = !DILocation(line: 0, scope: !1020)
!1188 = !DILocation(line: 251, column: 25, scope: !1019)
!1189 = !DILocation(line: 252, column: 34, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1019, file: !2, line: 252, column: 27)
!1191 = !DILocation(line: 252, column: 37, scope: !1190)
!1192 = !DILocation(line: 254, column: 34, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1019, file: !2, line: 254, column: 27)
!1194 = !DILocation(line: 254, column: 37, scope: !1193)
!1195 = !DILocation(line: 255, column: 31, scope: !1193)
!1196 = !DILocation(line: 255, column: 40, scope: !1193)
!1197 = !DILocation(line: 255, column: 43, scope: !1193)
!1198 = !DILocation(line: 255, column: 35, scope: !1193)
!1199 = !DILocation(line: 255, column: 25, scope: !1193)
!1200 = !DILocalVariable(name: "__c", arg: 1, scope: !1201, file: !1202, line: 108, type: !150)
!1201 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1202, file: !1202, line: 108, type: !1203, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !1205)
!1202 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!150, !150}
!1205 = !{!1200}
!1206 = !DILocation(line: 0, scope: !1201, inlinedAt: !1207)
!1207 = distinct !DILocation(line: 260, column: 31, scope: !1019)
!1208 = !DILocation(line: 110, column: 10, scope: !1201, inlinedAt: !1207)
!1209 = !{!1210, !782, i64 40}
!1210 = !{!"_IO_FILE", !818, i64 0, !782, i64 8, !782, i64 16, !782, i64 24, !782, i64 32, !782, i64 40, !782, i64 48, !782, i64 56, !782, i64 64, !782, i64 72, !782, i64 80, !782, i64 88, !782, i64 96, !782, i64 104, !818, i64 112, !818, i64 116, !1211, i64 120, !859, i64 128, !783, i64 130, !783, i64 131, !782, i64 136, !1211, i64 144, !782, i64 152, !782, i64 160, !782, i64 168, !782, i64 176, !1211, i64 184, !818, i64 192, !783, i64 196}
!1211 = !{!"long", !783, i64 0}
!1212 = !{!1210, !782, i64 48}
!1213 = !{!"branch_weights", i32 2000, i32 1}
!1214 = !DILocation(line: 0, scope: !1201, inlinedAt: !1215)
!1215 = distinct !DILocation(line: 263, column: 15, scope: !1022)
!1216 = !DILocation(line: 110, column: 10, scope: !1201, inlinedAt: !1215)
!1217 = !DILocation(line: 263, column: 15, scope: !1022)
!1218 = distinct !{!1218, !1114, !1219, !864}
!1219 = !DILocation(line: 264, column: 13, scope: !1013)
!1220 = !DILocation(line: 265, column: 15, scope: !1013)
!1221 = !DILocation(line: 266, column: 15, scope: !1013)
!1222 = !DILocation(line: 267, column: 20, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 267, column: 15)
!1224 = !DILocation(line: 267, column: 15, scope: !1013)
!1225 = !DILocation(line: 0, scope: !1201, inlinedAt: !1226)
!1226 = distinct !DILocation(line: 268, column: 13, scope: !1223)
!1227 = !DILocation(line: 110, column: 10, scope: !1201, inlinedAt: !1226)
!1228 = !DILocation(line: 208, column: 19, scope: !1014)
!1229 = distinct !{!1229, !1111, !1230, !864}
!1230 = !DILocation(line: 269, column: 9, scope: !1014)
!1231 = !DILocation(line: 276, column: 15, scope: !1107)
!1232 = !DILocation(line: 277, column: 15, scope: !1107)
!1233 = !DILocation(line: 0, scope: !1201, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 279, column: 13, scope: !1109)
!1235 = !DILocation(line: 110, column: 10, scope: !1201, inlinedAt: !1234)
!1236 = distinct !{!1236, !1104, !1237, !864}
!1237 = !DILocation(line: 280, column: 9, scope: !1105)
!1238 = !DILocation(line: 0, scope: !1201, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 284, column: 5, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !996, file: !2, line: 283, column: 7)
!1241 = !DILocation(line: 110, column: 10, scope: !1201, inlinedAt: !1239)
!1242 = !DILocation(line: 286, column: 1, scope: !996)
!1243 = !DISubprogram(name: "bindtextdomain", scope: !803, file: !803, line: 86, type: !1244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!148, !125, !125}
!1246 = !DISubprogram(name: "textdomain", scope: !803, file: !803, line: 82, type: !972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1247 = !DISubprogram(name: "atexit", scope: !962, file: !962, line: 602, type: !1248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!150, !412}
!1250 = !DISubprogram(name: "__overflow", scope: !373, file: !373, line: 886, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
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
!1270 = distinct !DISubprogram(name: "close_stdout", scope: !347, file: !347, line: 116, type: !413, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !346, retainedNodes: !1271)
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
!1308 = !DISubprogram(name: "_exit", scope: !1309, file: !1309, line: 624, type: !771, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
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
!1327 = !{i64 0, i64 8, !781, i64 8, i64 8, !781, i64 16, i64 8, !781, i64 24, i64 4, !817, i64 28, i64 4, !817}
!1328 = !DILocation(line: 282, column: 1, scope: !1310)
!1329 = distinct !DISubprogram(name: "flush_stdout", scope: !362, file: !362, line: 163, type: !413, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1330)
!1330 = !{!1331}
!1331 = !DILocalVariable(name: "stdout_fd", scope: !1329, file: !362, line: 166, type: !150)
!1332 = !DILocation(line: 0, scope: !1329)
!1333 = !DILocalVariable(name: "fd", arg: 1, scope: !1334, file: !362, line: 145, type: !150)
!1334 = distinct !DISubprogram(name: "is_open", scope: !362, file: !362, line: 145, type: !1203, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1335)
!1335 = !{!1333}
!1336 = !DILocation(line: 0, scope: !1334, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 182, column: 25, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1329, file: !362, line: 182, column: 7)
!1339 = !DILocation(line: 157, column: 15, scope: !1334, inlinedAt: !1337)
!1340 = !DILocation(line: 157, column: 12, scope: !1334, inlinedAt: !1337)
!1341 = !DILocation(line: 182, column: 7, scope: !1329)
!1342 = !DILocation(line: 184, column: 5, scope: !1338)
!1343 = !DILocation(line: 185, column: 1, scope: !1329)
!1344 = !DISubprogram(name: "__fprintf_chk", scope: !807, file: !807, line: 93, type: !1345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!150, !1347, !150, !810, null}
!1347 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1348)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !281, line: 7, baseType: !1350)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !283, line: 49, size: 1728, elements: !1351)
!1351 = !{!1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1350, file: !283, line: 51, baseType: !150, size: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1350, file: !283, line: 54, baseType: !148, size: 64, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1350, file: !283, line: 55, baseType: !148, size: 64, offset: 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1350, file: !283, line: 56, baseType: !148, size: 64, offset: 192)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1350, file: !283, line: 57, baseType: !148, size: 64, offset: 256)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1350, file: !283, line: 58, baseType: !148, size: 64, offset: 320)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1350, file: !283, line: 59, baseType: !148, size: 64, offset: 384)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1350, file: !283, line: 60, baseType: !148, size: 64, offset: 448)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1350, file: !283, line: 61, baseType: !148, size: 64, offset: 512)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1350, file: !283, line: 64, baseType: !148, size: 64, offset: 576)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1350, file: !283, line: 65, baseType: !148, size: 64, offset: 640)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1350, file: !283, line: 66, baseType: !148, size: 64, offset: 704)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1350, file: !283, line: 68, baseType: !298, size: 64, offset: 768)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1350, file: !283, line: 70, baseType: !1366, size: 64, offset: 832)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1350, file: !283, line: 72, baseType: !150, size: 32, offset: 896)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1350, file: !283, line: 73, baseType: !150, size: 32, offset: 928)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1350, file: !283, line: 74, baseType: !305, size: 64, offset: 960)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1350, file: !283, line: 77, baseType: !151, size: 16, offset: 1024)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1350, file: !283, line: 78, baseType: !310, size: 8, offset: 1040)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1350, file: !283, line: 79, baseType: !90, size: 8, offset: 1048)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1350, file: !283, line: 81, baseType: !313, size: 64, offset: 1088)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1350, file: !283, line: 89, baseType: !316, size: 64, offset: 1152)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1350, file: !283, line: 91, baseType: !318, size: 64, offset: 1216)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1350, file: !283, line: 92, baseType: !321, size: 64, offset: 1280)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1350, file: !283, line: 93, baseType: !1366, size: 64, offset: 1344)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1350, file: !283, line: 94, baseType: !149, size: 64, offset: 1408)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1350, file: !283, line: 95, baseType: !152, size: 64, offset: 1472)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1350, file: !283, line: 96, baseType: !150, size: 32, offset: 1536)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1350, file: !283, line: 98, baseType: !328, size: 160, offset: 1568)
!1382 = distinct !DISubprogram(name: "error_tail", scope: !362, file: !362, line: 219, type: !1311, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1383)
!1383 = !{!1384, !1385, !1386, !1387}
!1384 = !DILocalVariable(name: "status", arg: 1, scope: !1382, file: !362, line: 219, type: !150)
!1385 = !DILocalVariable(name: "errnum", arg: 2, scope: !1382, file: !362, line: 219, type: !150)
!1386 = !DILocalVariable(name: "message", arg: 3, scope: !1382, file: !362, line: 219, type: !125)
!1387 = !DILocalVariable(name: "args", arg: 4, scope: !1382, file: !362, line: 219, type: !372)
!1388 = distinct !DIAssignID()
!1389 = !DILocation(line: 0, scope: !1382)
!1390 = !DILocation(line: 229, column: 13, scope: !1382)
!1391 = !DILocation(line: 135, column: 10, scope: !1392, inlinedAt: !1399)
!1392 = distinct !DISubprogram(name: "vfprintf", scope: !807, file: !807, line: 132, type: !1393, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1395)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!150, !1347, !810, !374}
!1395 = !{!1396, !1397, !1398}
!1396 = !DILocalVariable(name: "__stream", arg: 1, scope: !1392, file: !807, line: 132, type: !1347)
!1397 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1392, file: !807, line: 133, type: !810)
!1398 = !DILocalVariable(name: "__ap", arg: 3, scope: !1392, file: !807, line: 133, type: !374)
!1399 = distinct !DILocation(line: 229, column: 3, scope: !1382)
!1400 = !{!1401, !1403}
!1401 = distinct !{!1401, !1402, !"vfprintf.inline: argument 0"}
!1402 = distinct !{!1402, !"vfprintf.inline"}
!1403 = distinct !{!1403, !1402, !"vfprintf.inline: argument 1"}
!1404 = !DILocation(line: 229, column: 3, scope: !1382)
!1405 = !DILocation(line: 0, scope: !1392, inlinedAt: !1399)
!1406 = !DILocation(line: 232, column: 3, scope: !1382)
!1407 = !DILocation(line: 233, column: 7, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1382, file: !362, line: 233, column: 7)
!1409 = !DILocation(line: 233, column: 7, scope: !1382)
!1410 = !DILocalVariable(name: "errbuf", scope: !1411, file: !362, line: 193, type: !1415)
!1411 = distinct !DISubprogram(name: "print_errno_message", scope: !362, file: !362, line: 188, type: !771, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1412)
!1412 = !{!1413, !1414, !1410}
!1413 = !DILocalVariable(name: "errnum", arg: 1, scope: !1411, file: !362, line: 188, type: !150)
!1414 = !DILocalVariable(name: "s", scope: !1411, file: !362, line: 190, type: !125)
!1415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1416)
!1416 = !{!1417}
!1417 = !DISubrange(count: 1024)
!1418 = !DILocation(line: 0, scope: !1411, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 234, column: 5, scope: !1408)
!1420 = !DILocation(line: 193, column: 3, scope: !1411, inlinedAt: !1419)
!1421 = !DILocation(line: 195, column: 7, scope: !1411, inlinedAt: !1419)
!1422 = !DILocation(line: 207, column: 9, scope: !1423, inlinedAt: !1419)
!1423 = distinct !DILexicalBlock(scope: !1411, file: !362, line: 207, column: 7)
!1424 = !DILocation(line: 207, column: 7, scope: !1411, inlinedAt: !1419)
!1425 = !DILocation(line: 208, column: 9, scope: !1423, inlinedAt: !1419)
!1426 = !DILocation(line: 208, column: 5, scope: !1423, inlinedAt: !1419)
!1427 = !DILocation(line: 214, column: 3, scope: !1411, inlinedAt: !1419)
!1428 = !DILocation(line: 216, column: 1, scope: !1411, inlinedAt: !1419)
!1429 = !DILocation(line: 234, column: 5, scope: !1408)
!1430 = !DILocation(line: 238, column: 3, scope: !1382)
!1431 = !DILocalVariable(name: "__c", arg: 1, scope: !1432, file: !1202, line: 101, type: !150)
!1432 = distinct !DISubprogram(name: "putc_unlocked", scope: !1202, file: !1202, line: 101, type: !1433, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1435)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!150, !150, !1348}
!1435 = !{!1431, !1436}
!1436 = !DILocalVariable(name: "__stream", arg: 2, scope: !1432, file: !1202, line: 101, type: !1348)
!1437 = !DILocation(line: 0, scope: !1432, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 238, column: 3, scope: !1382)
!1439 = !DILocation(line: 103, column: 10, scope: !1432, inlinedAt: !1438)
!1440 = !DILocation(line: 240, column: 3, scope: !1382)
!1441 = !DILocation(line: 241, column: 7, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1382, file: !362, line: 241, column: 7)
!1443 = !DILocation(line: 241, column: 7, scope: !1382)
!1444 = !DILocation(line: 242, column: 5, scope: !1442)
!1445 = !DILocation(line: 243, column: 1, scope: !1382)
!1446 = !DISubprogram(name: "__vfprintf_chk", scope: !807, file: !807, line: 96, type: !1447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!150, !1347, !150, !810, !374}
!1449 = !DISubprogram(name: "strerror_r", scope: !968, file: !968, line: 444, type: !1450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!148, !150, !148, !152}
!1452 = !DISubprogram(name: "fflush_unlocked", scope: !373, file: !373, line: 239, type: !1453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!150, !1348}
!1455 = !DISubprogram(name: "fcntl", scope: !1456, file: !1456, line: 149, type: !1457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1456 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!150, !150, !150, null}
!1459 = distinct !DISubprogram(name: "error", scope: !362, file: !362, line: 285, type: !1460, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1462)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{null, !150, !150, !125, null}
!1462 = !{!1463, !1464, !1465, !1466}
!1463 = !DILocalVariable(name: "status", arg: 1, scope: !1459, file: !362, line: 285, type: !150)
!1464 = !DILocalVariable(name: "errnum", arg: 2, scope: !1459, file: !362, line: 285, type: !150)
!1465 = !DILocalVariable(name: "message", arg: 3, scope: !1459, file: !362, line: 285, type: !125)
!1466 = !DILocalVariable(name: "ap", scope: !1459, file: !362, line: 287, type: !372)
!1467 = distinct !DIAssignID()
!1468 = !DILocation(line: 0, scope: !1459)
!1469 = !DILocation(line: 287, column: 3, scope: !1459)
!1470 = !DILocation(line: 288, column: 3, scope: !1459)
!1471 = !DILocation(line: 289, column: 3, scope: !1459)
!1472 = !DILocation(line: 290, column: 3, scope: !1459)
!1473 = !DILocation(line: 291, column: 1, scope: !1459)
!1474 = !DILocation(line: 0, scope: !369)
!1475 = !DILocation(line: 302, column: 7, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !369, file: !362, line: 302, column: 7)
!1477 = !DILocation(line: 302, column: 7, scope: !369)
!1478 = !DILocation(line: 307, column: 11, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !362, line: 307, column: 11)
!1480 = distinct !DILexicalBlock(scope: !1476, file: !362, line: 303, column: 5)
!1481 = !DILocation(line: 307, column: 27, scope: !1479)
!1482 = !DILocation(line: 308, column: 11, scope: !1479)
!1483 = !DILocation(line: 308, column: 28, scope: !1479)
!1484 = !DILocation(line: 308, column: 25, scope: !1479)
!1485 = !DILocation(line: 309, column: 15, scope: !1479)
!1486 = !DILocation(line: 309, column: 33, scope: !1479)
!1487 = !DILocation(line: 310, column: 19, scope: !1479)
!1488 = !DILocation(line: 311, column: 22, scope: !1479)
!1489 = !DILocation(line: 311, column: 56, scope: !1479)
!1490 = !DILocation(line: 307, column: 11, scope: !1480)
!1491 = !DILocation(line: 316, column: 21, scope: !1480)
!1492 = !DILocation(line: 317, column: 23, scope: !1480)
!1493 = !DILocation(line: 318, column: 5, scope: !1480)
!1494 = !DILocation(line: 327, column: 3, scope: !369)
!1495 = !DILocation(line: 331, column: 7, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !369, file: !362, line: 331, column: 7)
!1497 = !DILocation(line: 331, column: 7, scope: !369)
!1498 = !DILocation(line: 332, column: 5, scope: !1496)
!1499 = !DILocation(line: 338, column: 7, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1496, file: !362, line: 334, column: 5)
!1501 = !DILocation(line: 346, column: 3, scope: !369)
!1502 = !DILocation(line: 350, column: 3, scope: !369)
!1503 = !DILocation(line: 356, column: 1, scope: !369)
!1504 = distinct !DISubprogram(name: "error_at_line", scope: !362, file: !362, line: 359, type: !1505, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1507)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{null, !150, !150, !125, !129, !125, null}
!1507 = !{!1508, !1509, !1510, !1511, !1512, !1513}
!1508 = !DILocalVariable(name: "status", arg: 1, scope: !1504, file: !362, line: 359, type: !150)
!1509 = !DILocalVariable(name: "errnum", arg: 2, scope: !1504, file: !362, line: 359, type: !150)
!1510 = !DILocalVariable(name: "file_name", arg: 3, scope: !1504, file: !362, line: 359, type: !125)
!1511 = !DILocalVariable(name: "line_number", arg: 4, scope: !1504, file: !362, line: 360, type: !129)
!1512 = !DILocalVariable(name: "message", arg: 5, scope: !1504, file: !362, line: 360, type: !125)
!1513 = !DILocalVariable(name: "ap", scope: !1504, file: !362, line: 362, type: !372)
!1514 = distinct !DIAssignID()
!1515 = !DILocation(line: 0, scope: !1504)
!1516 = !DILocation(line: 362, column: 3, scope: !1504)
!1517 = !DILocation(line: 363, column: 3, scope: !1504)
!1518 = !DILocation(line: 364, column: 3, scope: !1504)
!1519 = !DILocation(line: 366, column: 3, scope: !1504)
!1520 = !DILocation(line: 367, column: 1, scope: !1504)
!1521 = distinct !DISubprogram(name: "getprogname", scope: !700, file: !700, line: 54, type: !1522, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!125}
!1524 = !DILocation(line: 58, column: 10, scope: !1521)
!1525 = !DILocation(line: 58, column: 3, scope: !1521)
!1526 = distinct !DISubprogram(name: "set_program_name", scope: !418, file: !418, line: 37, type: !1254, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !1527)
!1527 = !{!1528, !1529, !1530}
!1528 = !DILocalVariable(name: "argv0", arg: 1, scope: !1526, file: !418, line: 37, type: !125)
!1529 = !DILocalVariable(name: "slash", scope: !1526, file: !418, line: 44, type: !125)
!1530 = !DILocalVariable(name: "base", scope: !1526, file: !418, line: 45, type: !125)
!1531 = !DILocation(line: 0, scope: !1526)
!1532 = !DILocation(line: 44, column: 23, scope: !1526)
!1533 = !DILocation(line: 45, column: 22, scope: !1526)
!1534 = !DILocation(line: 46, column: 17, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1526, file: !418, line: 46, column: 7)
!1536 = !DILocation(line: 46, column: 9, scope: !1535)
!1537 = !DILocation(line: 46, column: 25, scope: !1535)
!1538 = !DILocation(line: 46, column: 40, scope: !1535)
!1539 = !DILocalVariable(name: "__s1", arg: 1, scope: !1540, file: !830, line: 974, type: !994)
!1540 = distinct !DISubprogram(name: "memeq", scope: !830, file: !830, line: 974, type: !1541, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !1543)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!266, !994, !994, !152}
!1543 = !{!1539, !1544, !1545}
!1544 = !DILocalVariable(name: "__s2", arg: 2, scope: !1540, file: !830, line: 974, type: !994)
!1545 = !DILocalVariable(name: "__n", arg: 3, scope: !1540, file: !830, line: 974, type: !152)
!1546 = !DILocation(line: 0, scope: !1540, inlinedAt: !1547)
!1547 = distinct !DILocation(line: 46, column: 28, scope: !1535)
!1548 = !DILocation(line: 976, column: 11, scope: !1540, inlinedAt: !1547)
!1549 = !DILocation(line: 976, column: 10, scope: !1540, inlinedAt: !1547)
!1550 = !DILocation(line: 46, column: 7, scope: !1526)
!1551 = !DILocation(line: 49, column: 11, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !418, line: 49, column: 11)
!1553 = distinct !DILexicalBlock(scope: !1535, file: !418, line: 47, column: 5)
!1554 = !DILocation(line: 49, column: 36, scope: !1552)
!1555 = !DILocation(line: 49, column: 11, scope: !1553)
!1556 = !DILocation(line: 65, column: 16, scope: !1526)
!1557 = !DILocation(line: 71, column: 27, scope: !1526)
!1558 = !DILocation(line: 74, column: 33, scope: !1526)
!1559 = !DILocation(line: 76, column: 1, scope: !1526)
!1560 = !DISubprogram(name: "strrchr", scope: !968, file: !968, line: 273, type: !981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1561 = distinct !DIAssignID()
!1562 = !DILocation(line: 0, scope: !427)
!1563 = distinct !DIAssignID()
!1564 = !DILocation(line: 40, column: 29, scope: !427)
!1565 = !DILocation(line: 41, column: 19, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !427, file: !428, line: 41, column: 7)
!1567 = !DILocation(line: 41, column: 7, scope: !427)
!1568 = !DILocation(line: 47, column: 3, scope: !427)
!1569 = !DILocation(line: 48, column: 3, scope: !427)
!1570 = !DILocalVariable(name: "ps", arg: 1, scope: !1571, file: !1572, line: 1135, type: !1575)
!1571 = distinct !DISubprogram(name: "mbszero", scope: !1572, file: !1572, line: 1135, type: !1573, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1576)
!1572 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null, !1575}
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!1576 = !{!1570}
!1577 = !DILocation(line: 0, scope: !1571, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 48, column: 18, scope: !427)
!1579 = !DILocalVariable(name: "__dest", arg: 1, scope: !1580, file: !1581, line: 57, type: !149)
!1580 = distinct !DISubprogram(name: "memset", scope: !1581, file: !1581, line: 57, type: !1582, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1584)
!1581 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!149, !149, !150, !152}
!1584 = !{!1579, !1585, !1586}
!1585 = !DILocalVariable(name: "__ch", arg: 2, scope: !1580, file: !1581, line: 57, type: !150)
!1586 = !DILocalVariable(name: "__len", arg: 3, scope: !1580, file: !1581, line: 57, type: !152)
!1587 = !DILocation(line: 0, scope: !1580, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 1137, column: 3, scope: !1571, inlinedAt: !1578)
!1589 = !DILocation(line: 59, column: 10, scope: !1580, inlinedAt: !1588)
!1590 = !DILocation(line: 49, column: 7, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !427, file: !428, line: 49, column: 7)
!1592 = !DILocation(line: 49, column: 39, scope: !1591)
!1593 = !DILocation(line: 49, column: 44, scope: !1591)
!1594 = !DILocation(line: 54, column: 1, scope: !427)
!1595 = !DISubprogram(name: "mbrtoc32", scope: !439, file: !439, line: 57, type: !1596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!152, !1598, !810, !152, !1600}
!1598 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1599)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1575)
!1601 = distinct !DISubprogram(name: "clone_quoting_options", scope: !458, file: !458, line: 113, type: !1602, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1605)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!1604, !1604}
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!1605 = !{!1606, !1607, !1608}
!1606 = !DILocalVariable(name: "o", arg: 1, scope: !1601, file: !458, line: 113, type: !1604)
!1607 = !DILocalVariable(name: "saved_errno", scope: !1601, file: !458, line: 115, type: !150)
!1608 = !DILocalVariable(name: "p", scope: !1601, file: !458, line: 116, type: !1604)
!1609 = !DILocation(line: 0, scope: !1601)
!1610 = !DILocation(line: 115, column: 21, scope: !1601)
!1611 = !DILocation(line: 116, column: 40, scope: !1601)
!1612 = !DILocation(line: 116, column: 31, scope: !1601)
!1613 = !DILocation(line: 118, column: 9, scope: !1601)
!1614 = !DILocation(line: 119, column: 3, scope: !1601)
!1615 = distinct !DISubprogram(name: "get_quoting_style", scope: !458, file: !458, line: 124, type: !1616, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1620)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!484, !1618}
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !511)
!1620 = !{!1621}
!1621 = !DILocalVariable(name: "o", arg: 1, scope: !1615, file: !458, line: 124, type: !1618)
!1622 = !DILocation(line: 0, scope: !1615)
!1623 = !DILocation(line: 126, column: 11, scope: !1615)
!1624 = !DILocation(line: 126, column: 46, scope: !1615)
!1625 = !{!1626, !818, i64 0}
!1626 = !{!"quoting_options", !818, i64 0, !818, i64 4, !783, i64 8, !782, i64 40, !782, i64 48}
!1627 = !DILocation(line: 126, column: 3, scope: !1615)
!1628 = distinct !DISubprogram(name: "set_quoting_style", scope: !458, file: !458, line: 132, type: !1629, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1631)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{null, !1604, !484}
!1631 = !{!1632, !1633}
!1632 = !DILocalVariable(name: "o", arg: 1, scope: !1628, file: !458, line: 132, type: !1604)
!1633 = !DILocalVariable(name: "s", arg: 2, scope: !1628, file: !458, line: 132, type: !484)
!1634 = !DILocation(line: 0, scope: !1628)
!1635 = !DILocation(line: 134, column: 4, scope: !1628)
!1636 = !DILocation(line: 134, column: 45, scope: !1628)
!1637 = !DILocation(line: 135, column: 1, scope: !1628)
!1638 = distinct !DISubprogram(name: "set_char_quoting", scope: !458, file: !458, line: 143, type: !1639, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1641)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!150, !1604, !4, !150}
!1641 = !{!1642, !1643, !1644, !1645, !1646, !1648, !1649}
!1642 = !DILocalVariable(name: "o", arg: 1, scope: !1638, file: !458, line: 143, type: !1604)
!1643 = !DILocalVariable(name: "c", arg: 2, scope: !1638, file: !458, line: 143, type: !4)
!1644 = !DILocalVariable(name: "i", arg: 3, scope: !1638, file: !458, line: 143, type: !150)
!1645 = !DILocalVariable(name: "uc", scope: !1638, file: !458, line: 145, type: !155)
!1646 = !DILocalVariable(name: "p", scope: !1638, file: !458, line: 146, type: !1647)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!1648 = !DILocalVariable(name: "shift", scope: !1638, file: !458, line: 148, type: !150)
!1649 = !DILocalVariable(name: "r", scope: !1638, file: !458, line: 149, type: !129)
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
!1663 = distinct !DISubprogram(name: "set_quoting_flags", scope: !458, file: !458, line: 159, type: !1664, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1666)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!150, !1604, !150}
!1666 = !{!1667, !1668, !1669}
!1667 = !DILocalVariable(name: "o", arg: 1, scope: !1663, file: !458, line: 159, type: !1604)
!1668 = !DILocalVariable(name: "i", arg: 2, scope: !1663, file: !458, line: 159, type: !150)
!1669 = !DILocalVariable(name: "r", scope: !1663, file: !458, line: 163, type: !150)
!1670 = !DILocation(line: 0, scope: !1663)
!1671 = !DILocation(line: 161, column: 8, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1663, file: !458, line: 161, column: 7)
!1673 = !DILocation(line: 161, column: 7, scope: !1663)
!1674 = !DILocation(line: 163, column: 14, scope: !1663)
!1675 = !{!1626, !818, i64 4}
!1676 = !DILocation(line: 164, column: 12, scope: !1663)
!1677 = !DILocation(line: 165, column: 3, scope: !1663)
!1678 = distinct !DISubprogram(name: "set_custom_quoting", scope: !458, file: !458, line: 169, type: !1679, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1681)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{null, !1604, !125, !125}
!1681 = !{!1682, !1683, !1684}
!1682 = !DILocalVariable(name: "o", arg: 1, scope: !1678, file: !458, line: 169, type: !1604)
!1683 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1678, file: !458, line: 170, type: !125)
!1684 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1678, file: !458, line: 170, type: !125)
!1685 = !DILocation(line: 0, scope: !1678)
!1686 = !DILocation(line: 172, column: 8, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1678, file: !458, line: 172, column: 7)
!1688 = !DILocation(line: 172, column: 7, scope: !1678)
!1689 = !DILocation(line: 174, column: 12, scope: !1678)
!1690 = !DILocation(line: 175, column: 8, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1678, file: !458, line: 175, column: 7)
!1692 = !DILocation(line: 175, column: 19, scope: !1691)
!1693 = !DILocation(line: 176, column: 5, scope: !1691)
!1694 = !DILocation(line: 177, column: 6, scope: !1678)
!1695 = !DILocation(line: 177, column: 17, scope: !1678)
!1696 = !{!1626, !782, i64 40}
!1697 = !DILocation(line: 178, column: 6, scope: !1678)
!1698 = !DILocation(line: 178, column: 18, scope: !1678)
!1699 = !{!1626, !782, i64 48}
!1700 = !DILocation(line: 179, column: 1, scope: !1678)
!1701 = !DISubprogram(name: "abort", scope: !962, file: !962, line: 598, type: !413, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1702 = distinct !DISubprogram(name: "quotearg_buffer", scope: !458, file: !458, line: 774, type: !1703, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1705)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!152, !148, !152, !125, !152, !1618}
!1705 = !{!1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713}
!1706 = !DILocalVariable(name: "buffer", arg: 1, scope: !1702, file: !458, line: 774, type: !148)
!1707 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1702, file: !458, line: 774, type: !152)
!1708 = !DILocalVariable(name: "arg", arg: 3, scope: !1702, file: !458, line: 775, type: !125)
!1709 = !DILocalVariable(name: "argsize", arg: 4, scope: !1702, file: !458, line: 775, type: !152)
!1710 = !DILocalVariable(name: "o", arg: 5, scope: !1702, file: !458, line: 776, type: !1618)
!1711 = !DILocalVariable(name: "p", scope: !1702, file: !458, line: 778, type: !1618)
!1712 = !DILocalVariable(name: "saved_errno", scope: !1702, file: !458, line: 779, type: !150)
!1713 = !DILocalVariable(name: "r", scope: !1702, file: !458, line: 780, type: !152)
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
!1725 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !458, file: !458, line: 251, type: !1726, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1730)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!152, !148, !152, !125, !152, !484, !150, !1728, !125, !125}
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!1730 = !{!1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1756, !1758, !1761, !1762, !1763, !1764, !1767, !1768, !1770, !1771, !1774, !1778, !1779, !1787, !1790, !1791, !1792}
!1731 = !DILocalVariable(name: "buffer", arg: 1, scope: !1725, file: !458, line: 251, type: !148)
!1732 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1725, file: !458, line: 251, type: !152)
!1733 = !DILocalVariable(name: "arg", arg: 3, scope: !1725, file: !458, line: 252, type: !125)
!1734 = !DILocalVariable(name: "argsize", arg: 4, scope: !1725, file: !458, line: 252, type: !152)
!1735 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1725, file: !458, line: 253, type: !484)
!1736 = !DILocalVariable(name: "flags", arg: 6, scope: !1725, file: !458, line: 253, type: !150)
!1737 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1725, file: !458, line: 254, type: !1728)
!1738 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1725, file: !458, line: 255, type: !125)
!1739 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1725, file: !458, line: 256, type: !125)
!1740 = !DILocalVariable(name: "unibyte_locale", scope: !1725, file: !458, line: 258, type: !266)
!1741 = !DILocalVariable(name: "len", scope: !1725, file: !458, line: 260, type: !152)
!1742 = !DILocalVariable(name: "orig_buffersize", scope: !1725, file: !458, line: 261, type: !152)
!1743 = !DILocalVariable(name: "quote_string", scope: !1725, file: !458, line: 262, type: !125)
!1744 = !DILocalVariable(name: "quote_string_len", scope: !1725, file: !458, line: 263, type: !152)
!1745 = !DILocalVariable(name: "backslash_escapes", scope: !1725, file: !458, line: 264, type: !266)
!1746 = !DILocalVariable(name: "elide_outer_quotes", scope: !1725, file: !458, line: 265, type: !266)
!1747 = !DILocalVariable(name: "encountered_single_quote", scope: !1725, file: !458, line: 266, type: !266)
!1748 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1725, file: !458, line: 267, type: !266)
!1749 = !DILabel(scope: !1725, name: "process_input", file: !458, line: 308)
!1750 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1725, file: !458, line: 309, type: !266)
!1751 = !DILocalVariable(name: "lq", scope: !1752, file: !458, line: 361, type: !125)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !458, line: 361, column: 11)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !458, line: 360, column: 13)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !458, line: 333, column: 7)
!1755 = distinct !DILexicalBlock(scope: !1725, file: !458, line: 312, column: 5)
!1756 = !DILocalVariable(name: "i", scope: !1757, file: !458, line: 395, type: !152)
!1757 = distinct !DILexicalBlock(scope: !1725, file: !458, line: 395, column: 3)
!1758 = !DILocalVariable(name: "is_right_quote", scope: !1759, file: !458, line: 397, type: !266)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !458, line: 396, column: 5)
!1760 = distinct !DILexicalBlock(scope: !1757, file: !458, line: 395, column: 3)
!1761 = !DILocalVariable(name: "escaping", scope: !1759, file: !458, line: 398, type: !266)
!1762 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1759, file: !458, line: 399, type: !266)
!1763 = !DILocalVariable(name: "c", scope: !1759, file: !458, line: 417, type: !155)
!1764 = !DILabel(scope: !1765, name: "c_and_shell_escape", file: !458, line: 502)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !458, line: 478, column: 9)
!1766 = distinct !DILexicalBlock(scope: !1759, file: !458, line: 419, column: 9)
!1767 = !DILabel(scope: !1765, name: "c_escape", file: !458, line: 507)
!1768 = !DILocalVariable(name: "m", scope: !1769, file: !458, line: 598, type: !152)
!1769 = distinct !DILexicalBlock(scope: !1766, file: !458, line: 596, column: 11)
!1770 = !DILocalVariable(name: "printable", scope: !1769, file: !458, line: 600, type: !266)
!1771 = !DILocalVariable(name: "mbs", scope: !1772, file: !458, line: 609, type: !545)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !458, line: 608, column: 15)
!1773 = distinct !DILexicalBlock(scope: !1769, file: !458, line: 602, column: 17)
!1774 = !DILocalVariable(name: "w", scope: !1775, file: !458, line: 618, type: !438)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !458, line: 617, column: 19)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !458, line: 616, column: 17)
!1777 = distinct !DILexicalBlock(scope: !1772, file: !458, line: 616, column: 17)
!1778 = !DILocalVariable(name: "bytes", scope: !1775, file: !458, line: 619, type: !152)
!1779 = !DILocalVariable(name: "j", scope: !1780, file: !458, line: 648, type: !152)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !458, line: 648, column: 29)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !458, line: 647, column: 27)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !458, line: 645, column: 29)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !458, line: 636, column: 23)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !458, line: 628, column: 30)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !458, line: 623, column: 30)
!1786 = distinct !DILexicalBlock(scope: !1775, file: !458, line: 621, column: 25)
!1787 = !DILocalVariable(name: "ilim", scope: !1788, file: !458, line: 674, type: !152)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !458, line: 671, column: 15)
!1789 = distinct !DILexicalBlock(scope: !1769, file: !458, line: 670, column: 17)
!1790 = !DILabel(scope: !1759, name: "store_escape", file: !458, line: 709)
!1791 = !DILabel(scope: !1759, name: "store_c", file: !458, line: 712)
!1792 = !DILabel(scope: !1725, name: "force_outer_quoting_style", file: !458, line: 753)
!1793 = distinct !DIAssignID()
!1794 = distinct !DIAssignID()
!1795 = distinct !DIAssignID()
!1796 = distinct !DIAssignID()
!1797 = distinct !DIAssignID()
!1798 = !DILocation(line: 0, scope: !1772)
!1799 = distinct !DIAssignID()
!1800 = !DILocation(line: 0, scope: !1775)
!1801 = !DILocation(line: 0, scope: !1725)
!1802 = !DILocation(line: 258, column: 25, scope: !1725)
!1803 = !DILocation(line: 258, column: 36, scope: !1725)
!1804 = !DILocation(line: 267, column: 3, scope: !1725)
!1805 = !DILocation(line: 261, column: 10, scope: !1725)
!1806 = !DILocation(line: 262, column: 15, scope: !1725)
!1807 = !DILocation(line: 263, column: 10, scope: !1725)
!1808 = !DILocation(line: 308, column: 2, scope: !1725)
!1809 = !DILocation(line: 311, column: 3, scope: !1725)
!1810 = !DILocation(line: 318, column: 11, scope: !1755)
!1811 = !DILocation(line: 319, column: 9, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !458, line: 319, column: 9)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !458, line: 319, column: 9)
!1814 = distinct !DILexicalBlock(scope: !1755, file: !458, line: 318, column: 11)
!1815 = !DILocation(line: 319, column: 9, scope: !1813)
!1816 = !DILocation(line: 0, scope: !536, inlinedAt: !1817)
!1817 = distinct !DILocation(line: 357, column: 26, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !458, line: 335, column: 11)
!1819 = distinct !DILexicalBlock(scope: !1754, file: !458, line: 334, column: 13)
!1820 = !DILocation(line: 199, column: 29, scope: !536, inlinedAt: !1817)
!1821 = !DILocation(line: 201, column: 19, scope: !1822, inlinedAt: !1817)
!1822 = distinct !DILexicalBlock(scope: !536, file: !458, line: 201, column: 7)
!1823 = !DILocation(line: 201, column: 7, scope: !536, inlinedAt: !1817)
!1824 = !DILocation(line: 229, column: 3, scope: !536, inlinedAt: !1817)
!1825 = !DILocation(line: 230, column: 3, scope: !536, inlinedAt: !1817)
!1826 = !DILocalVariable(name: "ps", arg: 1, scope: !1827, file: !1572, line: 1135, type: !1830)
!1827 = distinct !DISubprogram(name: "mbszero", scope: !1572, file: !1572, line: 1135, type: !1828, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1831)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{null, !1830}
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!1831 = !{!1826}
!1832 = !DILocation(line: 0, scope: !1827, inlinedAt: !1833)
!1833 = distinct !DILocation(line: 230, column: 18, scope: !536, inlinedAt: !1817)
!1834 = !DILocalVariable(name: "__dest", arg: 1, scope: !1835, file: !1581, line: 57, type: !149)
!1835 = distinct !DISubprogram(name: "memset", scope: !1581, file: !1581, line: 57, type: !1582, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1836)
!1836 = !{!1834, !1837, !1838}
!1837 = !DILocalVariable(name: "__ch", arg: 2, scope: !1835, file: !1581, line: 57, type: !150)
!1838 = !DILocalVariable(name: "__len", arg: 3, scope: !1835, file: !1581, line: 57, type: !152)
!1839 = !DILocation(line: 0, scope: !1835, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 1137, column: 3, scope: !1827, inlinedAt: !1833)
!1841 = !DILocation(line: 59, column: 10, scope: !1835, inlinedAt: !1840)
!1842 = !DILocation(line: 231, column: 7, scope: !1843, inlinedAt: !1817)
!1843 = distinct !DILexicalBlock(scope: !536, file: !458, line: 231, column: 7)
!1844 = !DILocation(line: 231, column: 40, scope: !1843, inlinedAt: !1817)
!1845 = !DILocation(line: 231, column: 45, scope: !1843, inlinedAt: !1817)
!1846 = !DILocation(line: 235, column: 1, scope: !536, inlinedAt: !1817)
!1847 = !DILocation(line: 0, scope: !536, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 358, column: 27, scope: !1818)
!1849 = !DILocation(line: 199, column: 29, scope: !536, inlinedAt: !1848)
!1850 = !DILocation(line: 201, column: 19, scope: !1822, inlinedAt: !1848)
!1851 = !DILocation(line: 201, column: 7, scope: !536, inlinedAt: !1848)
!1852 = !DILocation(line: 229, column: 3, scope: !536, inlinedAt: !1848)
!1853 = !DILocation(line: 230, column: 3, scope: !536, inlinedAt: !1848)
!1854 = !DILocation(line: 0, scope: !1827, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 230, column: 18, scope: !536, inlinedAt: !1848)
!1856 = !DILocation(line: 0, scope: !1835, inlinedAt: !1857)
!1857 = distinct !DILocation(line: 1137, column: 3, scope: !1827, inlinedAt: !1855)
!1858 = !DILocation(line: 59, column: 10, scope: !1835, inlinedAt: !1857)
!1859 = !DILocation(line: 231, column: 7, scope: !1843, inlinedAt: !1848)
!1860 = !DILocation(line: 231, column: 40, scope: !1843, inlinedAt: !1848)
!1861 = !DILocation(line: 231, column: 45, scope: !1843, inlinedAt: !1848)
!1862 = !DILocation(line: 235, column: 1, scope: !536, inlinedAt: !1848)
!1863 = !DILocation(line: 360, column: 13, scope: !1754)
!1864 = !DILocation(line: 0, scope: !1752)
!1865 = !DILocation(line: 361, column: 45, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1752, file: !458, line: 361, column: 11)
!1867 = !DILocation(line: 361, column: 11, scope: !1752)
!1868 = !DILocation(line: 362, column: 13, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !458, line: 362, column: 13)
!1870 = distinct !DILexicalBlock(scope: !1866, file: !458, line: 362, column: 13)
!1871 = !DILocation(line: 362, column: 13, scope: !1870)
!1872 = !DILocation(line: 361, column: 52, scope: !1866)
!1873 = distinct !{!1873, !1867, !1874, !864}
!1874 = !DILocation(line: 362, column: 13, scope: !1752)
!1875 = !DILocation(line: 365, column: 28, scope: !1754)
!1876 = !DILocation(line: 260, column: 10, scope: !1725)
!1877 = !DILocation(line: 367, column: 7, scope: !1755)
!1878 = !DILocation(line: 373, column: 7, scope: !1755)
!1879 = !DILocation(line: 381, column: 11, scope: !1755)
!1880 = !DILocation(line: 376, column: 11, scope: !1755)
!1881 = !DILocation(line: 382, column: 9, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !458, line: 382, column: 9)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !458, line: 382, column: 9)
!1884 = distinct !DILexicalBlock(scope: !1755, file: !458, line: 381, column: 11)
!1885 = !DILocation(line: 382, column: 9, scope: !1883)
!1886 = !DILocation(line: 389, column: 7, scope: !1755)
!1887 = !DILocation(line: 392, column: 7, scope: !1755)
!1888 = !DILocation(line: 0, scope: !1757)
!1889 = !DILocation(line: 395, column: 8, scope: !1757)
!1890 = !DILocation(line: 395, scope: !1757)
!1891 = !DILocation(line: 395, column: 34, scope: !1760)
!1892 = !DILocation(line: 395, column: 26, scope: !1760)
!1893 = !DILocation(line: 395, column: 48, scope: !1760)
!1894 = !DILocation(line: 395, column: 55, scope: !1760)
!1895 = !DILocation(line: 395, column: 3, scope: !1757)
!1896 = !DILocation(line: 395, column: 67, scope: !1760)
!1897 = !DILocation(line: 0, scope: !1759)
!1898 = !DILocation(line: 402, column: 11, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1759, file: !458, line: 401, column: 11)
!1900 = !DILocation(line: 404, column: 17, scope: !1899)
!1901 = !DILocation(line: 405, column: 39, scope: !1899)
!1902 = !DILocation(line: 409, column: 32, scope: !1899)
!1903 = !DILocation(line: 405, column: 19, scope: !1899)
!1904 = !DILocation(line: 405, column: 15, scope: !1899)
!1905 = !DILocation(line: 410, column: 11, scope: !1899)
!1906 = !DILocation(line: 410, column: 25, scope: !1899)
!1907 = !DILocalVariable(name: "__s1", arg: 1, scope: !1908, file: !830, line: 974, type: !994)
!1908 = distinct !DISubprogram(name: "memeq", scope: !830, file: !830, line: 974, type: !1541, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1909)
!1909 = !{!1907, !1910, !1911}
!1910 = !DILocalVariable(name: "__s2", arg: 2, scope: !1908, file: !830, line: 974, type: !994)
!1911 = !DILocalVariable(name: "__n", arg: 3, scope: !1908, file: !830, line: 974, type: !152)
!1912 = !DILocation(line: 0, scope: !1908, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 410, column: 14, scope: !1899)
!1914 = !DILocation(line: 976, column: 11, scope: !1908, inlinedAt: !1913)
!1915 = !DILocation(line: 976, column: 10, scope: !1908, inlinedAt: !1913)
!1916 = !DILocation(line: 401, column: 11, scope: !1759)
!1917 = !DILocation(line: 417, column: 25, scope: !1759)
!1918 = !DILocation(line: 418, column: 7, scope: !1759)
!1919 = !DILocation(line: 421, column: 15, scope: !1766)
!1920 = !DILocation(line: 423, column: 15, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !458, line: 423, column: 15)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !458, line: 422, column: 13)
!1923 = distinct !DILexicalBlock(scope: !1766, file: !458, line: 421, column: 15)
!1924 = !DILocation(line: 423, column: 15, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1921, file: !458, line: 423, column: 15)
!1926 = !DILocation(line: 423, column: 15, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !458, line: 423, column: 15)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !458, line: 423, column: 15)
!1929 = distinct !DILexicalBlock(scope: !1925, file: !458, line: 423, column: 15)
!1930 = !DILocation(line: 423, column: 15, scope: !1928)
!1931 = !DILocation(line: 423, column: 15, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !458, line: 423, column: 15)
!1933 = distinct !DILexicalBlock(scope: !1929, file: !458, line: 423, column: 15)
!1934 = !DILocation(line: 423, column: 15, scope: !1933)
!1935 = !DILocation(line: 423, column: 15, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !458, line: 423, column: 15)
!1937 = distinct !DILexicalBlock(scope: !1929, file: !458, line: 423, column: 15)
!1938 = !DILocation(line: 423, column: 15, scope: !1937)
!1939 = !DILocation(line: 423, column: 15, scope: !1929)
!1940 = !DILocation(line: 423, column: 15, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !458, line: 423, column: 15)
!1942 = distinct !DILexicalBlock(scope: !1921, file: !458, line: 423, column: 15)
!1943 = !DILocation(line: 423, column: 15, scope: !1942)
!1944 = !DILocation(line: 431, column: 19, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1922, file: !458, line: 430, column: 19)
!1946 = !DILocation(line: 431, column: 24, scope: !1945)
!1947 = !DILocation(line: 431, column: 28, scope: !1945)
!1948 = !DILocation(line: 431, column: 38, scope: !1945)
!1949 = !DILocation(line: 431, column: 48, scope: !1945)
!1950 = !DILocation(line: 431, column: 59, scope: !1945)
!1951 = !DILocation(line: 433, column: 19, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !458, line: 433, column: 19)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !458, line: 433, column: 19)
!1954 = distinct !DILexicalBlock(scope: !1945, file: !458, line: 432, column: 17)
!1955 = !DILocation(line: 433, column: 19, scope: !1953)
!1956 = !DILocation(line: 434, column: 19, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !458, line: 434, column: 19)
!1958 = distinct !DILexicalBlock(scope: !1954, file: !458, line: 434, column: 19)
!1959 = !DILocation(line: 434, column: 19, scope: !1958)
!1960 = !DILocation(line: 435, column: 17, scope: !1954)
!1961 = !DILocation(line: 442, column: 20, scope: !1923)
!1962 = !DILocation(line: 447, column: 11, scope: !1766)
!1963 = !DILocation(line: 450, column: 19, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1766, file: !458, line: 448, column: 13)
!1965 = !DILocation(line: 456, column: 19, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1964, file: !458, line: 455, column: 19)
!1967 = !DILocation(line: 456, column: 24, scope: !1966)
!1968 = !DILocation(line: 456, column: 28, scope: !1966)
!1969 = !DILocation(line: 456, column: 38, scope: !1966)
!1970 = !DILocation(line: 456, column: 41, scope: !1966)
!1971 = !DILocation(line: 456, column: 52, scope: !1966)
!1972 = !DILocation(line: 455, column: 19, scope: !1964)
!1973 = !DILocation(line: 457, column: 25, scope: !1966)
!1974 = !DILocation(line: 457, column: 17, scope: !1966)
!1975 = !DILocation(line: 464, column: 25, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1966, file: !458, line: 458, column: 19)
!1977 = !DILocation(line: 468, column: 21, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !458, line: 468, column: 21)
!1979 = distinct !DILexicalBlock(scope: !1976, file: !458, line: 468, column: 21)
!1980 = !DILocation(line: 468, column: 21, scope: !1979)
!1981 = !DILocation(line: 469, column: 21, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !458, line: 469, column: 21)
!1983 = distinct !DILexicalBlock(scope: !1976, file: !458, line: 469, column: 21)
!1984 = !DILocation(line: 469, column: 21, scope: !1983)
!1985 = !DILocation(line: 470, column: 21, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !458, line: 470, column: 21)
!1987 = distinct !DILexicalBlock(scope: !1976, file: !458, line: 470, column: 21)
!1988 = !DILocation(line: 470, column: 21, scope: !1987)
!1989 = !DILocation(line: 471, column: 21, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !458, line: 471, column: 21)
!1991 = distinct !DILexicalBlock(scope: !1976, file: !458, line: 471, column: 21)
!1992 = !DILocation(line: 471, column: 21, scope: !1991)
!1993 = !DILocation(line: 472, column: 21, scope: !1976)
!1994 = !DILocation(line: 482, column: 33, scope: !1765)
!1995 = !DILocation(line: 483, column: 33, scope: !1765)
!1996 = !DILocation(line: 485, column: 33, scope: !1765)
!1997 = !DILocation(line: 486, column: 33, scope: !1765)
!1998 = !DILocation(line: 487, column: 33, scope: !1765)
!1999 = !DILocation(line: 490, column: 17, scope: !1765)
!2000 = !DILocation(line: 492, column: 21, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !458, line: 491, column: 15)
!2002 = distinct !DILexicalBlock(scope: !1765, file: !458, line: 490, column: 17)
!2003 = !DILocation(line: 499, column: 35, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1765, file: !458, line: 499, column: 17)
!2005 = !DILocation(line: 0, scope: !1765)
!2006 = !DILocation(line: 502, column: 11, scope: !1765)
!2007 = !DILocation(line: 504, column: 17, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1765, file: !458, line: 503, column: 17)
!2009 = !DILocation(line: 507, column: 11, scope: !1765)
!2010 = !DILocation(line: 508, column: 17, scope: !1765)
!2011 = !DILocation(line: 517, column: 15, scope: !1766)
!2012 = !DILocation(line: 517, column: 40, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1766, file: !458, line: 517, column: 15)
!2014 = !DILocation(line: 517, column: 47, scope: !2013)
!2015 = !DILocation(line: 517, column: 18, scope: !2013)
!2016 = !DILocation(line: 521, column: 17, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1766, file: !458, line: 521, column: 15)
!2018 = !DILocation(line: 521, column: 15, scope: !1766)
!2019 = !DILocation(line: 525, column: 11, scope: !1766)
!2020 = !DILocation(line: 537, column: 15, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1766, file: !458, line: 536, column: 15)
!2022 = !DILocation(line: 536, column: 15, scope: !1766)
!2023 = !DILocation(line: 544, column: 15, scope: !1766)
!2024 = !DILocation(line: 546, column: 19, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !458, line: 545, column: 13)
!2026 = distinct !DILexicalBlock(scope: !1766, file: !458, line: 544, column: 15)
!2027 = !DILocation(line: 549, column: 19, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2025, file: !458, line: 549, column: 19)
!2029 = !DILocation(line: 549, column: 30, scope: !2028)
!2030 = !DILocation(line: 558, column: 15, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !458, line: 558, column: 15)
!2032 = distinct !DILexicalBlock(scope: !2025, file: !458, line: 558, column: 15)
!2033 = !DILocation(line: 558, column: 15, scope: !2032)
!2034 = !DILocation(line: 559, column: 15, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !458, line: 559, column: 15)
!2036 = distinct !DILexicalBlock(scope: !2025, file: !458, line: 559, column: 15)
!2037 = !DILocation(line: 559, column: 15, scope: !2036)
!2038 = !DILocation(line: 560, column: 15, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !458, line: 560, column: 15)
!2040 = distinct !DILexicalBlock(scope: !2025, file: !458, line: 560, column: 15)
!2041 = !DILocation(line: 560, column: 15, scope: !2040)
!2042 = !DILocation(line: 562, column: 13, scope: !2025)
!2043 = !DILocation(line: 602, column: 17, scope: !1769)
!2044 = !DILocation(line: 0, scope: !1769)
!2045 = !DILocation(line: 605, column: 29, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !1773, file: !458, line: 603, column: 15)
!2047 = !DILocation(line: 605, column: 41, scope: !2046)
!2048 = !DILocation(line: 606, column: 15, scope: !2046)
!2049 = !DILocation(line: 609, column: 17, scope: !1772)
!2050 = !DILocation(line: 0, scope: !1827, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 609, column: 32, scope: !1772)
!2052 = !DILocation(line: 0, scope: !1835, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 1137, column: 3, scope: !1827, inlinedAt: !2051)
!2054 = !DILocation(line: 59, column: 10, scope: !1835, inlinedAt: !2053)
!2055 = !DILocation(line: 613, column: 29, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !1772, file: !458, line: 613, column: 21)
!2057 = !DILocation(line: 613, column: 21, scope: !1772)
!2058 = !DILocation(line: 614, column: 29, scope: !2056)
!2059 = !DILocation(line: 614, column: 19, scope: !2056)
!2060 = !DILocation(line: 618, column: 21, scope: !1775)
!2061 = !DILocation(line: 620, column: 54, scope: !1775)
!2062 = !DILocation(line: 619, column: 36, scope: !1775)
!2063 = !DILocation(line: 621, column: 25, scope: !1775)
!2064 = !DILocation(line: 631, column: 38, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !1784, file: !458, line: 629, column: 23)
!2066 = !DILocation(line: 631, column: 48, scope: !2065)
!2067 = !DILocation(line: 631, column: 25, scope: !2065)
!2068 = !DILocation(line: 626, column: 25, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !1785, file: !458, line: 624, column: 23)
!2070 = !DILocation(line: 631, column: 51, scope: !2065)
!2071 = !DILocation(line: 632, column: 28, scope: !2065)
!2072 = !DILocation(line: 631, column: 34, scope: !2065)
!2073 = distinct !{!2073, !2067, !2071, !864}
!2074 = !DILocation(line: 0, scope: !1780)
!2075 = !DILocation(line: 646, column: 29, scope: !1782)
!2076 = !DILocation(line: 648, column: 29, scope: !1780)
!2077 = !DILocation(line: 649, column: 39, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !1780, file: !458, line: 648, column: 29)
!2079 = !DILocation(line: 649, column: 31, scope: !2078)
!2080 = !DILocation(line: 648, column: 60, scope: !2078)
!2081 = !DILocation(line: 648, column: 50, scope: !2078)
!2082 = distinct !{!2082, !2076, !2083, !864}
!2083 = !DILocation(line: 654, column: 33, scope: !1780)
!2084 = !DILocation(line: 657, column: 43, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !1783, file: !458, line: 657, column: 29)
!2086 = !DILocalVariable(name: "wc", arg: 1, scope: !2087, file: !2088, line: 865, type: !2091)
!2087 = distinct !DISubprogram(name: "c32isprint", scope: !2088, file: !2088, line: 865, type: !2089, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2093)
!2088 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!150, !2091}
!2091 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2092, line: 20, baseType: !129)
!2092 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2093 = !{!2086}
!2094 = !DILocation(line: 0, scope: !2087, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 657, column: 31, scope: !2085)
!2096 = !DILocation(line: 871, column: 10, scope: !2087, inlinedAt: !2095)
!2097 = !DILocation(line: 657, column: 31, scope: !2085)
!2098 = !DILocation(line: 664, column: 23, scope: !1775)
!2099 = !DILocation(line: 665, column: 19, scope: !1776)
!2100 = !DILocation(line: 666, column: 15, scope: !1773)
!2101 = !DILocation(line: 753, column: 2, scope: !1725)
!2102 = !DILocation(line: 756, column: 51, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !1725, file: !458, line: 756, column: 7)
!2104 = !DILocation(line: 0, scope: !1773)
!2105 = !DILocation(line: 670, column: 19, scope: !1789)
!2106 = !DILocation(line: 670, column: 23, scope: !1789)
!2107 = !DILocation(line: 674, column: 33, scope: !1788)
!2108 = !DILocation(line: 0, scope: !1788)
!2109 = !DILocation(line: 676, column: 17, scope: !1788)
!2110 = !DILocation(line: 678, column: 43, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !458, line: 678, column: 25)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !458, line: 677, column: 19)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !458, line: 676, column: 17)
!2114 = distinct !DILexicalBlock(scope: !1788, file: !458, line: 676, column: 17)
!2115 = !DILocation(line: 680, column: 25, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !458, line: 680, column: 25)
!2117 = distinct !DILexicalBlock(scope: !2111, file: !458, line: 679, column: 23)
!2118 = !DILocation(line: 680, column: 25, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2116, file: !458, line: 680, column: 25)
!2120 = !DILocation(line: 680, column: 25, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !458, line: 680, column: 25)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !458, line: 680, column: 25)
!2123 = distinct !DILexicalBlock(scope: !2119, file: !458, line: 680, column: 25)
!2124 = !DILocation(line: 680, column: 25, scope: !2122)
!2125 = !DILocation(line: 680, column: 25, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !458, line: 680, column: 25)
!2127 = distinct !DILexicalBlock(scope: !2123, file: !458, line: 680, column: 25)
!2128 = !DILocation(line: 680, column: 25, scope: !2127)
!2129 = !DILocation(line: 680, column: 25, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !458, line: 680, column: 25)
!2131 = distinct !DILexicalBlock(scope: !2123, file: !458, line: 680, column: 25)
!2132 = !DILocation(line: 680, column: 25, scope: !2131)
!2133 = !DILocation(line: 680, column: 25, scope: !2123)
!2134 = !DILocation(line: 680, column: 25, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !458, line: 680, column: 25)
!2136 = distinct !DILexicalBlock(scope: !2116, file: !458, line: 680, column: 25)
!2137 = !DILocation(line: 680, column: 25, scope: !2136)
!2138 = !DILocation(line: 681, column: 25, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !458, line: 681, column: 25)
!2140 = distinct !DILexicalBlock(scope: !2117, file: !458, line: 681, column: 25)
!2141 = !DILocation(line: 681, column: 25, scope: !2140)
!2142 = !DILocation(line: 682, column: 25, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !458, line: 682, column: 25)
!2144 = distinct !DILexicalBlock(scope: !2117, file: !458, line: 682, column: 25)
!2145 = !DILocation(line: 682, column: 25, scope: !2144)
!2146 = !DILocation(line: 683, column: 38, scope: !2117)
!2147 = !DILocation(line: 683, column: 33, scope: !2117)
!2148 = !DILocation(line: 684, column: 23, scope: !2117)
!2149 = !DILocation(line: 685, column: 30, scope: !2111)
!2150 = !DILocation(line: 687, column: 25, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !458, line: 687, column: 25)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !458, line: 687, column: 25)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !458, line: 686, column: 23)
!2154 = distinct !DILexicalBlock(scope: !2111, file: !458, line: 685, column: 30)
!2155 = !DILocation(line: 687, column: 25, scope: !2152)
!2156 = !DILocation(line: 689, column: 23, scope: !2153)
!2157 = !DILocation(line: 690, column: 35, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2112, file: !458, line: 690, column: 25)
!2159 = !DILocation(line: 690, column: 30, scope: !2158)
!2160 = !DILocation(line: 690, column: 25, scope: !2112)
!2161 = !DILocation(line: 692, column: 21, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !458, line: 692, column: 21)
!2163 = distinct !DILexicalBlock(scope: !2112, file: !458, line: 692, column: 21)
!2164 = !DILocation(line: 692, column: 21, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !458, line: 692, column: 21)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !458, line: 692, column: 21)
!2167 = distinct !DILexicalBlock(scope: !2162, file: !458, line: 692, column: 21)
!2168 = !DILocation(line: 692, column: 21, scope: !2166)
!2169 = !DILocation(line: 692, column: 21, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !458, line: 692, column: 21)
!2171 = distinct !DILexicalBlock(scope: !2167, file: !458, line: 692, column: 21)
!2172 = !DILocation(line: 692, column: 21, scope: !2171)
!2173 = !DILocation(line: 692, column: 21, scope: !2167)
!2174 = !DILocation(line: 0, scope: !2112)
!2175 = !DILocation(line: 693, column: 21, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !458, line: 693, column: 21)
!2177 = distinct !DILexicalBlock(scope: !2112, file: !458, line: 693, column: 21)
!2178 = !DILocation(line: 693, column: 21, scope: !2177)
!2179 = !DILocation(line: 694, column: 25, scope: !2112)
!2180 = !DILocation(line: 676, column: 17, scope: !2113)
!2181 = distinct !{!2181, !2182, !2183}
!2182 = !DILocation(line: 676, column: 17, scope: !2114)
!2183 = !DILocation(line: 695, column: 19, scope: !2114)
!2184 = !DILocation(line: 409, column: 30, scope: !1899)
!2185 = !DILocation(line: 702, column: 34, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !1759, file: !458, line: 702, column: 11)
!2187 = !DILocation(line: 704, column: 14, scope: !2186)
!2188 = !DILocation(line: 705, column: 14, scope: !2186)
!2189 = !DILocation(line: 705, column: 35, scope: !2186)
!2190 = !DILocation(line: 705, column: 17, scope: !2186)
!2191 = !DILocation(line: 705, column: 47, scope: !2186)
!2192 = !DILocation(line: 705, column: 65, scope: !2186)
!2193 = !DILocation(line: 706, column: 11, scope: !2186)
!2194 = !DILocation(line: 702, column: 11, scope: !1759)
!2195 = !DILocation(line: 395, column: 15, scope: !1757)
!2196 = !DILocation(line: 709, column: 5, scope: !1759)
!2197 = !DILocation(line: 710, column: 7, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !1759, file: !458, line: 710, column: 7)
!2199 = !DILocation(line: 710, column: 7, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2198, file: !458, line: 710, column: 7)
!2201 = !DILocation(line: 710, column: 7, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !458, line: 710, column: 7)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !458, line: 710, column: 7)
!2204 = distinct !DILexicalBlock(scope: !2200, file: !458, line: 710, column: 7)
!2205 = !DILocation(line: 710, column: 7, scope: !2203)
!2206 = !DILocation(line: 710, column: 7, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !458, line: 710, column: 7)
!2208 = distinct !DILexicalBlock(scope: !2204, file: !458, line: 710, column: 7)
!2209 = !DILocation(line: 710, column: 7, scope: !2208)
!2210 = !DILocation(line: 710, column: 7, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !458, line: 710, column: 7)
!2212 = distinct !DILexicalBlock(scope: !2204, file: !458, line: 710, column: 7)
!2213 = !DILocation(line: 710, column: 7, scope: !2212)
!2214 = !DILocation(line: 710, column: 7, scope: !2204)
!2215 = !DILocation(line: 710, column: 7, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !458, line: 710, column: 7)
!2217 = distinct !DILexicalBlock(scope: !2198, file: !458, line: 710, column: 7)
!2218 = !DILocation(line: 710, column: 7, scope: !2217)
!2219 = !DILocation(line: 712, column: 5, scope: !1759)
!2220 = !DILocation(line: 713, column: 7, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !458, line: 713, column: 7)
!2222 = distinct !DILexicalBlock(scope: !1759, file: !458, line: 713, column: 7)
!2223 = !DILocation(line: 417, column: 21, scope: !1759)
!2224 = !DILocation(line: 713, column: 7, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !458, line: 713, column: 7)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !458, line: 713, column: 7)
!2227 = distinct !DILexicalBlock(scope: !2221, file: !458, line: 713, column: 7)
!2228 = !DILocation(line: 713, column: 7, scope: !2226)
!2229 = !DILocation(line: 713, column: 7, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !458, line: 713, column: 7)
!2231 = distinct !DILexicalBlock(scope: !2227, file: !458, line: 713, column: 7)
!2232 = !DILocation(line: 713, column: 7, scope: !2231)
!2233 = !DILocation(line: 713, column: 7, scope: !2227)
!2234 = !DILocation(line: 714, column: 7, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !458, line: 714, column: 7)
!2236 = distinct !DILexicalBlock(scope: !1759, file: !458, line: 714, column: 7)
!2237 = !DILocation(line: 714, column: 7, scope: !2236)
!2238 = !DILocation(line: 716, column: 11, scope: !1759)
!2239 = !DILocation(line: 718, column: 5, scope: !1760)
!2240 = !DILocation(line: 395, column: 82, scope: !1760)
!2241 = !DILocation(line: 395, column: 3, scope: !1760)
!2242 = distinct !{!2242, !1895, !2243, !864}
!2243 = !DILocation(line: 718, column: 5, scope: !1757)
!2244 = !DILocation(line: 720, column: 11, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !1725, file: !458, line: 720, column: 7)
!2246 = !DILocation(line: 720, column: 16, scope: !2245)
!2247 = !DILocation(line: 728, column: 51, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !1725, file: !458, line: 728, column: 7)
!2249 = !DILocation(line: 731, column: 11, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2248, file: !458, line: 730, column: 5)
!2251 = !DILocation(line: 732, column: 16, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2250, file: !458, line: 731, column: 11)
!2253 = !DILocation(line: 732, column: 9, scope: !2252)
!2254 = !DILocation(line: 736, column: 18, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2252, file: !458, line: 736, column: 16)
!2256 = !DILocation(line: 736, column: 29, scope: !2255)
!2257 = !DILocation(line: 745, column: 7, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !1725, file: !458, line: 745, column: 7)
!2259 = !DILocation(line: 745, column: 20, scope: !2258)
!2260 = !DILocation(line: 746, column: 12, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !458, line: 746, column: 5)
!2262 = distinct !DILexicalBlock(scope: !2258, file: !458, line: 746, column: 5)
!2263 = !DILocation(line: 746, column: 5, scope: !2262)
!2264 = !DILocation(line: 747, column: 7, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !458, line: 747, column: 7)
!2266 = distinct !DILexicalBlock(scope: !2261, file: !458, line: 747, column: 7)
!2267 = !DILocation(line: 747, column: 7, scope: !2266)
!2268 = !DILocation(line: 746, column: 39, scope: !2261)
!2269 = distinct !{!2269, !2263, !2270, !864}
!2270 = !DILocation(line: 747, column: 7, scope: !2262)
!2271 = !DILocation(line: 749, column: 11, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !1725, file: !458, line: 749, column: 7)
!2273 = !DILocation(line: 749, column: 7, scope: !1725)
!2274 = !DILocation(line: 750, column: 5, scope: !2272)
!2275 = !DILocation(line: 750, column: 17, scope: !2272)
!2276 = !DILocation(line: 756, column: 21, scope: !2103)
!2277 = !DILocation(line: 760, column: 42, scope: !1725)
!2278 = !DILocation(line: 758, column: 10, scope: !1725)
!2279 = !DILocation(line: 758, column: 3, scope: !1725)
!2280 = !DILocation(line: 762, column: 1, scope: !1725)
!2281 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !962, file: !962, line: 98, type: !2282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!152}
!2284 = !DISubprogram(name: "strlen", scope: !968, file: !968, line: 407, type: !2285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!154, !125}
!2287 = !DISubprogram(name: "iswprint", scope: !2288, file: !2288, line: 120, type: !2089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2288 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2289 = distinct !DISubprogram(name: "quotearg_alloc", scope: !458, file: !458, line: 788, type: !2290, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2292)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!148, !125, !152, !1618}
!2292 = !{!2293, !2294, !2295}
!2293 = !DILocalVariable(name: "arg", arg: 1, scope: !2289, file: !458, line: 788, type: !125)
!2294 = !DILocalVariable(name: "argsize", arg: 2, scope: !2289, file: !458, line: 788, type: !152)
!2295 = !DILocalVariable(name: "o", arg: 3, scope: !2289, file: !458, line: 789, type: !1618)
!2296 = !DILocation(line: 0, scope: !2289)
!2297 = !DILocalVariable(name: "arg", arg: 1, scope: !2298, file: !458, line: 801, type: !125)
!2298 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !458, file: !458, line: 801, type: !2299, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2301)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!148, !125, !152, !715, !1618}
!2301 = !{!2297, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309}
!2302 = !DILocalVariable(name: "argsize", arg: 2, scope: !2298, file: !458, line: 801, type: !152)
!2303 = !DILocalVariable(name: "size", arg: 3, scope: !2298, file: !458, line: 801, type: !715)
!2304 = !DILocalVariable(name: "o", arg: 4, scope: !2298, file: !458, line: 802, type: !1618)
!2305 = !DILocalVariable(name: "p", scope: !2298, file: !458, line: 804, type: !1618)
!2306 = !DILocalVariable(name: "saved_errno", scope: !2298, file: !458, line: 805, type: !150)
!2307 = !DILocalVariable(name: "flags", scope: !2298, file: !458, line: 807, type: !150)
!2308 = !DILocalVariable(name: "bufsize", scope: !2298, file: !458, line: 808, type: !152)
!2309 = !DILocalVariable(name: "buf", scope: !2298, file: !458, line: 812, type: !148)
!2310 = !DILocation(line: 0, scope: !2298, inlinedAt: !2311)
!2311 = distinct !DILocation(line: 791, column: 10, scope: !2289)
!2312 = !DILocation(line: 804, column: 37, scope: !2298, inlinedAt: !2311)
!2313 = !DILocation(line: 805, column: 21, scope: !2298, inlinedAt: !2311)
!2314 = !DILocation(line: 807, column: 18, scope: !2298, inlinedAt: !2311)
!2315 = !DILocation(line: 807, column: 24, scope: !2298, inlinedAt: !2311)
!2316 = !DILocation(line: 808, column: 72, scope: !2298, inlinedAt: !2311)
!2317 = !DILocation(line: 809, column: 56, scope: !2298, inlinedAt: !2311)
!2318 = !DILocation(line: 810, column: 49, scope: !2298, inlinedAt: !2311)
!2319 = !DILocation(line: 811, column: 49, scope: !2298, inlinedAt: !2311)
!2320 = !DILocation(line: 808, column: 20, scope: !2298, inlinedAt: !2311)
!2321 = !DILocation(line: 811, column: 62, scope: !2298, inlinedAt: !2311)
!2322 = !DILocation(line: 812, column: 15, scope: !2298, inlinedAt: !2311)
!2323 = !DILocation(line: 813, column: 60, scope: !2298, inlinedAt: !2311)
!2324 = !DILocation(line: 815, column: 32, scope: !2298, inlinedAt: !2311)
!2325 = !DILocation(line: 815, column: 47, scope: !2298, inlinedAt: !2311)
!2326 = !DILocation(line: 813, column: 3, scope: !2298, inlinedAt: !2311)
!2327 = !DILocation(line: 816, column: 9, scope: !2298, inlinedAt: !2311)
!2328 = !DILocation(line: 791, column: 3, scope: !2289)
!2329 = !DILocation(line: 0, scope: !2298)
!2330 = !DILocation(line: 804, column: 37, scope: !2298)
!2331 = !DILocation(line: 805, column: 21, scope: !2298)
!2332 = !DILocation(line: 807, column: 18, scope: !2298)
!2333 = !DILocation(line: 807, column: 27, scope: !2298)
!2334 = !DILocation(line: 807, column: 24, scope: !2298)
!2335 = !DILocation(line: 808, column: 72, scope: !2298)
!2336 = !DILocation(line: 809, column: 56, scope: !2298)
!2337 = !DILocation(line: 810, column: 49, scope: !2298)
!2338 = !DILocation(line: 811, column: 49, scope: !2298)
!2339 = !DILocation(line: 808, column: 20, scope: !2298)
!2340 = !DILocation(line: 811, column: 62, scope: !2298)
!2341 = !DILocation(line: 812, column: 15, scope: !2298)
!2342 = !DILocation(line: 813, column: 60, scope: !2298)
!2343 = !DILocation(line: 815, column: 32, scope: !2298)
!2344 = !DILocation(line: 815, column: 47, scope: !2298)
!2345 = !DILocation(line: 813, column: 3, scope: !2298)
!2346 = !DILocation(line: 816, column: 9, scope: !2298)
!2347 = !DILocation(line: 817, column: 7, scope: !2298)
!2348 = !DILocation(line: 818, column: 11, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2298, file: !458, line: 817, column: 7)
!2350 = !{!1211, !1211, i64 0}
!2351 = !DILocation(line: 818, column: 5, scope: !2349)
!2352 = !DILocation(line: 819, column: 3, scope: !2298)
!2353 = distinct !DISubprogram(name: "quotearg_free", scope: !458, file: !458, line: 837, type: !413, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2354)
!2354 = !{!2355, !2356}
!2355 = !DILocalVariable(name: "sv", scope: !2353, file: !458, line: 839, type: !559)
!2356 = !DILocalVariable(name: "i", scope: !2357, file: !458, line: 840, type: !150)
!2357 = distinct !DILexicalBlock(scope: !2353, file: !458, line: 840, column: 3)
!2358 = !DILocation(line: 839, column: 24, scope: !2353)
!2359 = !DILocation(line: 0, scope: !2353)
!2360 = !DILocation(line: 0, scope: !2357)
!2361 = !DILocation(line: 840, column: 21, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2357, file: !458, line: 840, column: 3)
!2363 = !DILocation(line: 840, column: 3, scope: !2357)
!2364 = !DILocation(line: 842, column: 13, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2353, file: !458, line: 842, column: 7)
!2366 = !{!2367, !782, i64 8}
!2367 = !{!"slotvec", !1211, i64 0, !782, i64 8}
!2368 = !DILocation(line: 842, column: 17, scope: !2365)
!2369 = !DILocation(line: 842, column: 7, scope: !2353)
!2370 = !DILocation(line: 841, column: 17, scope: !2362)
!2371 = !DILocation(line: 841, column: 5, scope: !2362)
!2372 = !DILocation(line: 840, column: 32, scope: !2362)
!2373 = distinct !{!2373, !2363, !2374, !864}
!2374 = !DILocation(line: 841, column: 20, scope: !2357)
!2375 = !DILocation(line: 844, column: 7, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2365, file: !458, line: 843, column: 5)
!2377 = !DILocation(line: 845, column: 21, scope: !2376)
!2378 = !{!2367, !1211, i64 0}
!2379 = !DILocation(line: 846, column: 20, scope: !2376)
!2380 = !DILocation(line: 847, column: 5, scope: !2376)
!2381 = !DILocation(line: 848, column: 10, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2353, file: !458, line: 848, column: 7)
!2383 = !DILocation(line: 848, column: 7, scope: !2353)
!2384 = !DILocation(line: 850, column: 7, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2382, file: !458, line: 849, column: 5)
!2386 = !DILocation(line: 851, column: 15, scope: !2385)
!2387 = !DILocation(line: 852, column: 5, scope: !2385)
!2388 = !DILocation(line: 853, column: 10, scope: !2353)
!2389 = !DILocation(line: 854, column: 1, scope: !2353)
!2390 = !DISubprogram(name: "free", scope: !1572, file: !1572, line: 786, type: !2391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{null, !149}
!2393 = distinct !DISubprogram(name: "quotearg_n", scope: !458, file: !458, line: 919, type: !965, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2394)
!2394 = !{!2395, !2396}
!2395 = !DILocalVariable(name: "n", arg: 1, scope: !2393, file: !458, line: 919, type: !150)
!2396 = !DILocalVariable(name: "arg", arg: 2, scope: !2393, file: !458, line: 919, type: !125)
!2397 = !DILocation(line: 0, scope: !2393)
!2398 = !DILocation(line: 921, column: 10, scope: !2393)
!2399 = !DILocation(line: 921, column: 3, scope: !2393)
!2400 = distinct !DISubprogram(name: "quotearg_n_options", scope: !458, file: !458, line: 866, type: !2401, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2403)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!148, !150, !125, !152, !1618}
!2403 = !{!2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2414, !2415, !2417, !2418, !2419}
!2404 = !DILocalVariable(name: "n", arg: 1, scope: !2400, file: !458, line: 866, type: !150)
!2405 = !DILocalVariable(name: "arg", arg: 2, scope: !2400, file: !458, line: 866, type: !125)
!2406 = !DILocalVariable(name: "argsize", arg: 3, scope: !2400, file: !458, line: 866, type: !152)
!2407 = !DILocalVariable(name: "options", arg: 4, scope: !2400, file: !458, line: 867, type: !1618)
!2408 = !DILocalVariable(name: "saved_errno", scope: !2400, file: !458, line: 869, type: !150)
!2409 = !DILocalVariable(name: "sv", scope: !2400, file: !458, line: 871, type: !559)
!2410 = !DILocalVariable(name: "nslots_max", scope: !2400, file: !458, line: 873, type: !150)
!2411 = !DILocalVariable(name: "preallocated", scope: !2412, file: !458, line: 879, type: !266)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !458, line: 878, column: 5)
!2413 = distinct !DILexicalBlock(scope: !2400, file: !458, line: 877, column: 7)
!2414 = !DILocalVariable(name: "new_nslots", scope: !2412, file: !458, line: 880, type: !728)
!2415 = !DILocalVariable(name: "size", scope: !2416, file: !458, line: 891, type: !152)
!2416 = distinct !DILexicalBlock(scope: !2400, file: !458, line: 890, column: 3)
!2417 = !DILocalVariable(name: "val", scope: !2416, file: !458, line: 892, type: !148)
!2418 = !DILocalVariable(name: "flags", scope: !2416, file: !458, line: 894, type: !150)
!2419 = !DILocalVariable(name: "qsize", scope: !2416, file: !458, line: 895, type: !152)
!2420 = distinct !DIAssignID()
!2421 = !DILocation(line: 0, scope: !2412)
!2422 = !DILocation(line: 0, scope: !2400)
!2423 = !DILocation(line: 869, column: 21, scope: !2400)
!2424 = !DILocation(line: 871, column: 24, scope: !2400)
!2425 = !DILocation(line: 874, column: 17, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2400, file: !458, line: 874, column: 7)
!2427 = !DILocation(line: 875, column: 5, scope: !2426)
!2428 = !DILocation(line: 877, column: 7, scope: !2413)
!2429 = !DILocation(line: 877, column: 14, scope: !2413)
!2430 = !DILocation(line: 877, column: 7, scope: !2400)
!2431 = !DILocation(line: 879, column: 31, scope: !2412)
!2432 = !DILocation(line: 880, column: 7, scope: !2412)
!2433 = !DILocation(line: 880, column: 26, scope: !2412)
!2434 = !DILocation(line: 880, column: 13, scope: !2412)
!2435 = distinct !DIAssignID()
!2436 = !DILocation(line: 882, column: 31, scope: !2412)
!2437 = !DILocation(line: 883, column: 33, scope: !2412)
!2438 = !DILocation(line: 883, column: 42, scope: !2412)
!2439 = !DILocation(line: 883, column: 31, scope: !2412)
!2440 = !DILocation(line: 882, column: 22, scope: !2412)
!2441 = !DILocation(line: 882, column: 15, scope: !2412)
!2442 = !DILocation(line: 884, column: 11, scope: !2412)
!2443 = !DILocation(line: 885, column: 15, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2412, file: !458, line: 884, column: 11)
!2445 = !{i64 0, i64 8, !2350, i64 8, i64 8, !781}
!2446 = !DILocation(line: 885, column: 9, scope: !2444)
!2447 = !DILocation(line: 886, column: 20, scope: !2412)
!2448 = !DILocation(line: 886, column: 18, scope: !2412)
!2449 = !DILocation(line: 886, column: 32, scope: !2412)
!2450 = !DILocation(line: 886, column: 43, scope: !2412)
!2451 = !DILocation(line: 886, column: 53, scope: !2412)
!2452 = !DILocation(line: 0, scope: !1835, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 886, column: 7, scope: !2412)
!2454 = !DILocation(line: 59, column: 10, scope: !1835, inlinedAt: !2453)
!2455 = !DILocation(line: 887, column: 16, scope: !2412)
!2456 = !DILocation(line: 887, column: 14, scope: !2412)
!2457 = !DILocation(line: 888, column: 5, scope: !2413)
!2458 = !DILocation(line: 888, column: 5, scope: !2412)
!2459 = !DILocation(line: 891, column: 19, scope: !2416)
!2460 = !DILocation(line: 891, column: 25, scope: !2416)
!2461 = !DILocation(line: 0, scope: !2416)
!2462 = !DILocation(line: 892, column: 23, scope: !2416)
!2463 = !DILocation(line: 894, column: 26, scope: !2416)
!2464 = !DILocation(line: 894, column: 32, scope: !2416)
!2465 = !DILocation(line: 896, column: 55, scope: !2416)
!2466 = !DILocation(line: 897, column: 55, scope: !2416)
!2467 = !DILocation(line: 898, column: 55, scope: !2416)
!2468 = !DILocation(line: 899, column: 55, scope: !2416)
!2469 = !DILocation(line: 895, column: 20, scope: !2416)
!2470 = !DILocation(line: 901, column: 14, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2416, file: !458, line: 901, column: 9)
!2472 = !DILocation(line: 901, column: 9, scope: !2416)
!2473 = !DILocation(line: 903, column: 35, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2471, file: !458, line: 902, column: 7)
!2475 = !DILocation(line: 903, column: 20, scope: !2474)
!2476 = !DILocation(line: 904, column: 17, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2474, file: !458, line: 904, column: 13)
!2478 = !DILocation(line: 904, column: 13, scope: !2474)
!2479 = !DILocation(line: 905, column: 11, scope: !2477)
!2480 = !DILocation(line: 906, column: 27, scope: !2474)
!2481 = !DILocation(line: 906, column: 19, scope: !2474)
!2482 = !DILocation(line: 907, column: 69, scope: !2474)
!2483 = !DILocation(line: 909, column: 44, scope: !2474)
!2484 = !DILocation(line: 910, column: 44, scope: !2474)
!2485 = !DILocation(line: 907, column: 9, scope: !2474)
!2486 = !DILocation(line: 911, column: 7, scope: !2474)
!2487 = !DILocation(line: 913, column: 11, scope: !2416)
!2488 = !DILocation(line: 914, column: 5, scope: !2416)
!2489 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !458, file: !458, line: 925, type: !2490, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2492)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!148, !150, !125, !152}
!2492 = !{!2493, !2494, !2495}
!2493 = !DILocalVariable(name: "n", arg: 1, scope: !2489, file: !458, line: 925, type: !150)
!2494 = !DILocalVariable(name: "arg", arg: 2, scope: !2489, file: !458, line: 925, type: !125)
!2495 = !DILocalVariable(name: "argsize", arg: 3, scope: !2489, file: !458, line: 925, type: !152)
!2496 = !DILocation(line: 0, scope: !2489)
!2497 = !DILocation(line: 927, column: 10, scope: !2489)
!2498 = !DILocation(line: 927, column: 3, scope: !2489)
!2499 = distinct !DISubprogram(name: "quotearg", scope: !458, file: !458, line: 931, type: !972, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2500)
!2500 = !{!2501}
!2501 = !DILocalVariable(name: "arg", arg: 1, scope: !2499, file: !458, line: 931, type: !125)
!2502 = !DILocation(line: 0, scope: !2499)
!2503 = !DILocation(line: 0, scope: !2393, inlinedAt: !2504)
!2504 = distinct !DILocation(line: 933, column: 10, scope: !2499)
!2505 = !DILocation(line: 921, column: 10, scope: !2393, inlinedAt: !2504)
!2506 = !DILocation(line: 933, column: 3, scope: !2499)
!2507 = distinct !DISubprogram(name: "quotearg_mem", scope: !458, file: !458, line: 937, type: !2508, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2510)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!148, !125, !152}
!2510 = !{!2511, !2512}
!2511 = !DILocalVariable(name: "arg", arg: 1, scope: !2507, file: !458, line: 937, type: !125)
!2512 = !DILocalVariable(name: "argsize", arg: 2, scope: !2507, file: !458, line: 937, type: !152)
!2513 = !DILocation(line: 0, scope: !2507)
!2514 = !DILocation(line: 0, scope: !2489, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 939, column: 10, scope: !2507)
!2516 = !DILocation(line: 927, column: 10, scope: !2489, inlinedAt: !2515)
!2517 = !DILocation(line: 939, column: 3, scope: !2507)
!2518 = distinct !DISubprogram(name: "quotearg_n_style", scope: !458, file: !458, line: 943, type: !2519, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2521)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!148, !150, !484, !125}
!2521 = !{!2522, !2523, !2524, !2525}
!2522 = !DILocalVariable(name: "n", arg: 1, scope: !2518, file: !458, line: 943, type: !150)
!2523 = !DILocalVariable(name: "s", arg: 2, scope: !2518, file: !458, line: 943, type: !484)
!2524 = !DILocalVariable(name: "arg", arg: 3, scope: !2518, file: !458, line: 943, type: !125)
!2525 = !DILocalVariable(name: "o", scope: !2518, file: !458, line: 945, type: !1619)
!2526 = distinct !DIAssignID()
!2527 = !DILocation(line: 0, scope: !2518)
!2528 = !DILocation(line: 945, column: 3, scope: !2518)
!2529 = !{!2530}
!2530 = distinct !{!2530, !2531, !"quoting_options_from_style: argument 0"}
!2531 = distinct !{!2531, !"quoting_options_from_style"}
!2532 = !DILocation(line: 945, column: 36, scope: !2518)
!2533 = !DILocalVariable(name: "style", arg: 1, scope: !2534, file: !458, line: 183, type: !484)
!2534 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !458, file: !458, line: 183, type: !2535, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2537)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!511, !484}
!2537 = !{!2533, !2538}
!2538 = !DILocalVariable(name: "o", scope: !2534, file: !458, line: 185, type: !511)
!2539 = !DILocation(line: 0, scope: !2534, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 945, column: 36, scope: !2518)
!2541 = !DILocation(line: 185, column: 26, scope: !2534, inlinedAt: !2540)
!2542 = distinct !DIAssignID()
!2543 = !DILocation(line: 186, column: 13, scope: !2544, inlinedAt: !2540)
!2544 = distinct !DILexicalBlock(scope: !2534, file: !458, line: 186, column: 7)
!2545 = !DILocation(line: 186, column: 7, scope: !2534, inlinedAt: !2540)
!2546 = !DILocation(line: 187, column: 5, scope: !2544, inlinedAt: !2540)
!2547 = !DILocation(line: 188, column: 11, scope: !2534, inlinedAt: !2540)
!2548 = distinct !DIAssignID()
!2549 = !DILocation(line: 946, column: 10, scope: !2518)
!2550 = !DILocation(line: 947, column: 1, scope: !2518)
!2551 = !DILocation(line: 946, column: 3, scope: !2518)
!2552 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !458, file: !458, line: 950, type: !2553, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2555)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!148, !150, !484, !125, !152}
!2555 = !{!2556, !2557, !2558, !2559, !2560}
!2556 = !DILocalVariable(name: "n", arg: 1, scope: !2552, file: !458, line: 950, type: !150)
!2557 = !DILocalVariable(name: "s", arg: 2, scope: !2552, file: !458, line: 950, type: !484)
!2558 = !DILocalVariable(name: "arg", arg: 3, scope: !2552, file: !458, line: 951, type: !125)
!2559 = !DILocalVariable(name: "argsize", arg: 4, scope: !2552, file: !458, line: 951, type: !152)
!2560 = !DILocalVariable(name: "o", scope: !2552, file: !458, line: 953, type: !1619)
!2561 = distinct !DIAssignID()
!2562 = !DILocation(line: 0, scope: !2552)
!2563 = !DILocation(line: 953, column: 3, scope: !2552)
!2564 = !{!2565}
!2565 = distinct !{!2565, !2566, !"quoting_options_from_style: argument 0"}
!2566 = distinct !{!2566, !"quoting_options_from_style"}
!2567 = !DILocation(line: 953, column: 36, scope: !2552)
!2568 = !DILocation(line: 0, scope: !2534, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 953, column: 36, scope: !2552)
!2570 = !DILocation(line: 185, column: 26, scope: !2534, inlinedAt: !2569)
!2571 = distinct !DIAssignID()
!2572 = !DILocation(line: 186, column: 13, scope: !2544, inlinedAt: !2569)
!2573 = !DILocation(line: 186, column: 7, scope: !2534, inlinedAt: !2569)
!2574 = !DILocation(line: 187, column: 5, scope: !2544, inlinedAt: !2569)
!2575 = !DILocation(line: 188, column: 11, scope: !2534, inlinedAt: !2569)
!2576 = distinct !DIAssignID()
!2577 = !DILocation(line: 954, column: 10, scope: !2552)
!2578 = !DILocation(line: 955, column: 1, scope: !2552)
!2579 = !DILocation(line: 954, column: 3, scope: !2552)
!2580 = distinct !DISubprogram(name: "quotearg_style", scope: !458, file: !458, line: 958, type: !2581, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2583)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!148, !484, !125}
!2583 = !{!2584, !2585}
!2584 = !DILocalVariable(name: "s", arg: 1, scope: !2580, file: !458, line: 958, type: !484)
!2585 = !DILocalVariable(name: "arg", arg: 2, scope: !2580, file: !458, line: 958, type: !125)
!2586 = distinct !DIAssignID()
!2587 = !DILocation(line: 0, scope: !2580)
!2588 = !DILocation(line: 0, scope: !2518, inlinedAt: !2589)
!2589 = distinct !DILocation(line: 960, column: 10, scope: !2580)
!2590 = !DILocation(line: 945, column: 3, scope: !2518, inlinedAt: !2589)
!2591 = !{!2592}
!2592 = distinct !{!2592, !2593, !"quoting_options_from_style: argument 0"}
!2593 = distinct !{!2593, !"quoting_options_from_style"}
!2594 = !DILocation(line: 945, column: 36, scope: !2518, inlinedAt: !2589)
!2595 = !DILocation(line: 0, scope: !2534, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 945, column: 36, scope: !2518, inlinedAt: !2589)
!2597 = !DILocation(line: 185, column: 26, scope: !2534, inlinedAt: !2596)
!2598 = distinct !DIAssignID()
!2599 = !DILocation(line: 186, column: 13, scope: !2544, inlinedAt: !2596)
!2600 = !DILocation(line: 186, column: 7, scope: !2534, inlinedAt: !2596)
!2601 = !DILocation(line: 187, column: 5, scope: !2544, inlinedAt: !2596)
!2602 = !DILocation(line: 188, column: 11, scope: !2534, inlinedAt: !2596)
!2603 = distinct !DIAssignID()
!2604 = !DILocation(line: 946, column: 10, scope: !2518, inlinedAt: !2589)
!2605 = !DILocation(line: 947, column: 1, scope: !2518, inlinedAt: !2589)
!2606 = !DILocation(line: 960, column: 3, scope: !2580)
!2607 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !458, file: !458, line: 964, type: !2608, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2610)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!148, !484, !125, !152}
!2610 = !{!2611, !2612, !2613}
!2611 = !DILocalVariable(name: "s", arg: 1, scope: !2607, file: !458, line: 964, type: !484)
!2612 = !DILocalVariable(name: "arg", arg: 2, scope: !2607, file: !458, line: 964, type: !125)
!2613 = !DILocalVariable(name: "argsize", arg: 3, scope: !2607, file: !458, line: 964, type: !152)
!2614 = distinct !DIAssignID()
!2615 = !DILocation(line: 0, scope: !2607)
!2616 = !DILocation(line: 0, scope: !2552, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 966, column: 10, scope: !2607)
!2618 = !DILocation(line: 953, column: 3, scope: !2552, inlinedAt: !2617)
!2619 = !{!2620}
!2620 = distinct !{!2620, !2621, !"quoting_options_from_style: argument 0"}
!2621 = distinct !{!2621, !"quoting_options_from_style"}
!2622 = !DILocation(line: 953, column: 36, scope: !2552, inlinedAt: !2617)
!2623 = !DILocation(line: 0, scope: !2534, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 953, column: 36, scope: !2552, inlinedAt: !2617)
!2625 = !DILocation(line: 185, column: 26, scope: !2534, inlinedAt: !2624)
!2626 = distinct !DIAssignID()
!2627 = !DILocation(line: 186, column: 13, scope: !2544, inlinedAt: !2624)
!2628 = !DILocation(line: 186, column: 7, scope: !2534, inlinedAt: !2624)
!2629 = !DILocation(line: 187, column: 5, scope: !2544, inlinedAt: !2624)
!2630 = !DILocation(line: 188, column: 11, scope: !2534, inlinedAt: !2624)
!2631 = distinct !DIAssignID()
!2632 = !DILocation(line: 954, column: 10, scope: !2552, inlinedAt: !2617)
!2633 = !DILocation(line: 955, column: 1, scope: !2552, inlinedAt: !2617)
!2634 = !DILocation(line: 966, column: 3, scope: !2607)
!2635 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !458, file: !458, line: 970, type: !2636, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2638)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!148, !125, !152, !4}
!2638 = !{!2639, !2640, !2641, !2642}
!2639 = !DILocalVariable(name: "arg", arg: 1, scope: !2635, file: !458, line: 970, type: !125)
!2640 = !DILocalVariable(name: "argsize", arg: 2, scope: !2635, file: !458, line: 970, type: !152)
!2641 = !DILocalVariable(name: "ch", arg: 3, scope: !2635, file: !458, line: 970, type: !4)
!2642 = !DILocalVariable(name: "options", scope: !2635, file: !458, line: 972, type: !511)
!2643 = distinct !DIAssignID()
!2644 = !DILocation(line: 0, scope: !2635)
!2645 = !DILocation(line: 972, column: 3, scope: !2635)
!2646 = !DILocation(line: 973, column: 13, scope: !2635)
!2647 = !{i64 0, i64 4, !817, i64 4, i64 4, !817, i64 8, i64 32, !826, i64 40, i64 8, !781, i64 48, i64 8, !781}
!2648 = distinct !DIAssignID()
!2649 = !DILocation(line: 0, scope: !1638, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 974, column: 3, scope: !2635)
!2651 = !DILocation(line: 147, column: 41, scope: !1638, inlinedAt: !2650)
!2652 = !DILocation(line: 147, column: 62, scope: !1638, inlinedAt: !2650)
!2653 = !DILocation(line: 147, column: 57, scope: !1638, inlinedAt: !2650)
!2654 = !DILocation(line: 148, column: 15, scope: !1638, inlinedAt: !2650)
!2655 = !DILocation(line: 149, column: 21, scope: !1638, inlinedAt: !2650)
!2656 = !DILocation(line: 149, column: 24, scope: !1638, inlinedAt: !2650)
!2657 = !DILocation(line: 150, column: 19, scope: !1638, inlinedAt: !2650)
!2658 = !DILocation(line: 150, column: 24, scope: !1638, inlinedAt: !2650)
!2659 = !DILocation(line: 150, column: 6, scope: !1638, inlinedAt: !2650)
!2660 = !DILocation(line: 975, column: 10, scope: !2635)
!2661 = !DILocation(line: 976, column: 1, scope: !2635)
!2662 = !DILocation(line: 975, column: 3, scope: !2635)
!2663 = distinct !DISubprogram(name: "quotearg_char", scope: !458, file: !458, line: 979, type: !2664, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2666)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!148, !125, !4}
!2666 = !{!2667, !2668}
!2667 = !DILocalVariable(name: "arg", arg: 1, scope: !2663, file: !458, line: 979, type: !125)
!2668 = !DILocalVariable(name: "ch", arg: 2, scope: !2663, file: !458, line: 979, type: !4)
!2669 = distinct !DIAssignID()
!2670 = !DILocation(line: 0, scope: !2663)
!2671 = !DILocation(line: 0, scope: !2635, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 981, column: 10, scope: !2663)
!2673 = !DILocation(line: 972, column: 3, scope: !2635, inlinedAt: !2672)
!2674 = !DILocation(line: 973, column: 13, scope: !2635, inlinedAt: !2672)
!2675 = distinct !DIAssignID()
!2676 = !DILocation(line: 0, scope: !1638, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 974, column: 3, scope: !2635, inlinedAt: !2672)
!2678 = !DILocation(line: 147, column: 41, scope: !1638, inlinedAt: !2677)
!2679 = !DILocation(line: 147, column: 62, scope: !1638, inlinedAt: !2677)
!2680 = !DILocation(line: 147, column: 57, scope: !1638, inlinedAt: !2677)
!2681 = !DILocation(line: 148, column: 15, scope: !1638, inlinedAt: !2677)
!2682 = !DILocation(line: 149, column: 21, scope: !1638, inlinedAt: !2677)
!2683 = !DILocation(line: 149, column: 24, scope: !1638, inlinedAt: !2677)
!2684 = !DILocation(line: 150, column: 19, scope: !1638, inlinedAt: !2677)
!2685 = !DILocation(line: 150, column: 24, scope: !1638, inlinedAt: !2677)
!2686 = !DILocation(line: 150, column: 6, scope: !1638, inlinedAt: !2677)
!2687 = !DILocation(line: 975, column: 10, scope: !2635, inlinedAt: !2672)
!2688 = !DILocation(line: 976, column: 1, scope: !2635, inlinedAt: !2672)
!2689 = !DILocation(line: 981, column: 3, scope: !2663)
!2690 = distinct !DISubprogram(name: "quotearg_colon", scope: !458, file: !458, line: 985, type: !972, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2691)
!2691 = !{!2692}
!2692 = !DILocalVariable(name: "arg", arg: 1, scope: !2690, file: !458, line: 985, type: !125)
!2693 = distinct !DIAssignID()
!2694 = !DILocation(line: 0, scope: !2690)
!2695 = !DILocation(line: 0, scope: !2663, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 987, column: 10, scope: !2690)
!2697 = !DILocation(line: 0, scope: !2635, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 981, column: 10, scope: !2663, inlinedAt: !2696)
!2699 = !DILocation(line: 972, column: 3, scope: !2635, inlinedAt: !2698)
!2700 = !DILocation(line: 973, column: 13, scope: !2635, inlinedAt: !2698)
!2701 = distinct !DIAssignID()
!2702 = !DILocation(line: 0, scope: !1638, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 974, column: 3, scope: !2635, inlinedAt: !2698)
!2704 = !DILocation(line: 147, column: 57, scope: !1638, inlinedAt: !2703)
!2705 = !DILocation(line: 149, column: 21, scope: !1638, inlinedAt: !2703)
!2706 = !DILocation(line: 150, column: 6, scope: !1638, inlinedAt: !2703)
!2707 = !DILocation(line: 975, column: 10, scope: !2635, inlinedAt: !2698)
!2708 = !DILocation(line: 976, column: 1, scope: !2635, inlinedAt: !2698)
!2709 = !DILocation(line: 987, column: 3, scope: !2690)
!2710 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !458, file: !458, line: 991, type: !2508, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2711)
!2711 = !{!2712, !2713}
!2712 = !DILocalVariable(name: "arg", arg: 1, scope: !2710, file: !458, line: 991, type: !125)
!2713 = !DILocalVariable(name: "argsize", arg: 2, scope: !2710, file: !458, line: 991, type: !152)
!2714 = distinct !DIAssignID()
!2715 = !DILocation(line: 0, scope: !2710)
!2716 = !DILocation(line: 0, scope: !2635, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 993, column: 10, scope: !2710)
!2718 = !DILocation(line: 972, column: 3, scope: !2635, inlinedAt: !2717)
!2719 = !DILocation(line: 973, column: 13, scope: !2635, inlinedAt: !2717)
!2720 = distinct !DIAssignID()
!2721 = !DILocation(line: 0, scope: !1638, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 974, column: 3, scope: !2635, inlinedAt: !2717)
!2723 = !DILocation(line: 147, column: 57, scope: !1638, inlinedAt: !2722)
!2724 = !DILocation(line: 149, column: 21, scope: !1638, inlinedAt: !2722)
!2725 = !DILocation(line: 150, column: 6, scope: !1638, inlinedAt: !2722)
!2726 = !DILocation(line: 975, column: 10, scope: !2635, inlinedAt: !2717)
!2727 = !DILocation(line: 976, column: 1, scope: !2635, inlinedAt: !2717)
!2728 = !DILocation(line: 993, column: 3, scope: !2710)
!2729 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !458, file: !458, line: 997, type: !2519, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2730)
!2730 = !{!2731, !2732, !2733, !2734}
!2731 = !DILocalVariable(name: "n", arg: 1, scope: !2729, file: !458, line: 997, type: !150)
!2732 = !DILocalVariable(name: "s", arg: 2, scope: !2729, file: !458, line: 997, type: !484)
!2733 = !DILocalVariable(name: "arg", arg: 3, scope: !2729, file: !458, line: 997, type: !125)
!2734 = !DILocalVariable(name: "options", scope: !2729, file: !458, line: 999, type: !511)
!2735 = distinct !DIAssignID()
!2736 = !DILocation(line: 0, scope: !2729)
!2737 = !DILocation(line: 185, column: 26, scope: !2534, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 1000, column: 13, scope: !2729)
!2739 = !DILocation(line: 999, column: 3, scope: !2729)
!2740 = !DILocation(line: 0, scope: !2534, inlinedAt: !2738)
!2741 = !DILocation(line: 186, column: 13, scope: !2544, inlinedAt: !2738)
!2742 = !DILocation(line: 186, column: 7, scope: !2534, inlinedAt: !2738)
!2743 = !DILocation(line: 187, column: 5, scope: !2544, inlinedAt: !2738)
!2744 = !{!2745}
!2745 = distinct !{!2745, !2746, !"quoting_options_from_style: argument 0"}
!2746 = distinct !{!2746, !"quoting_options_from_style"}
!2747 = !DILocation(line: 1000, column: 13, scope: !2729)
!2748 = distinct !DIAssignID()
!2749 = distinct !DIAssignID()
!2750 = !DILocation(line: 0, scope: !1638, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 1001, column: 3, scope: !2729)
!2752 = !DILocation(line: 147, column: 57, scope: !1638, inlinedAt: !2751)
!2753 = !DILocation(line: 149, column: 21, scope: !1638, inlinedAt: !2751)
!2754 = !DILocation(line: 150, column: 6, scope: !1638, inlinedAt: !2751)
!2755 = distinct !DIAssignID()
!2756 = !DILocation(line: 1002, column: 10, scope: !2729)
!2757 = !DILocation(line: 1003, column: 1, scope: !2729)
!2758 = !DILocation(line: 1002, column: 3, scope: !2729)
!2759 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !458, file: !458, line: 1006, type: !2760, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2762)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!148, !150, !125, !125, !125}
!2762 = !{!2763, !2764, !2765, !2766}
!2763 = !DILocalVariable(name: "n", arg: 1, scope: !2759, file: !458, line: 1006, type: !150)
!2764 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2759, file: !458, line: 1006, type: !125)
!2765 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2759, file: !458, line: 1007, type: !125)
!2766 = !DILocalVariable(name: "arg", arg: 4, scope: !2759, file: !458, line: 1007, type: !125)
!2767 = distinct !DIAssignID()
!2768 = !DILocation(line: 0, scope: !2759)
!2769 = !DILocalVariable(name: "o", scope: !2770, file: !458, line: 1018, type: !511)
!2770 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !458, file: !458, line: 1014, type: !2771, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2773)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!148, !150, !125, !125, !125, !152}
!2773 = !{!2774, !2775, !2776, !2777, !2778, !2769}
!2774 = !DILocalVariable(name: "n", arg: 1, scope: !2770, file: !458, line: 1014, type: !150)
!2775 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2770, file: !458, line: 1014, type: !125)
!2776 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2770, file: !458, line: 1015, type: !125)
!2777 = !DILocalVariable(name: "arg", arg: 4, scope: !2770, file: !458, line: 1016, type: !125)
!2778 = !DILocalVariable(name: "argsize", arg: 5, scope: !2770, file: !458, line: 1016, type: !152)
!2779 = !DILocation(line: 0, scope: !2770, inlinedAt: !2780)
!2780 = distinct !DILocation(line: 1009, column: 10, scope: !2759)
!2781 = !DILocation(line: 1018, column: 3, scope: !2770, inlinedAt: !2780)
!2782 = !DILocation(line: 1018, column: 30, scope: !2770, inlinedAt: !2780)
!2783 = distinct !DIAssignID()
!2784 = distinct !DIAssignID()
!2785 = !DILocation(line: 0, scope: !1678, inlinedAt: !2786)
!2786 = distinct !DILocation(line: 1019, column: 3, scope: !2770, inlinedAt: !2780)
!2787 = !DILocation(line: 174, column: 12, scope: !1678, inlinedAt: !2786)
!2788 = distinct !DIAssignID()
!2789 = !DILocation(line: 175, column: 8, scope: !1691, inlinedAt: !2786)
!2790 = !DILocation(line: 175, column: 19, scope: !1691, inlinedAt: !2786)
!2791 = !DILocation(line: 176, column: 5, scope: !1691, inlinedAt: !2786)
!2792 = !DILocation(line: 177, column: 6, scope: !1678, inlinedAt: !2786)
!2793 = !DILocation(line: 177, column: 17, scope: !1678, inlinedAt: !2786)
!2794 = distinct !DIAssignID()
!2795 = !DILocation(line: 178, column: 6, scope: !1678, inlinedAt: !2786)
!2796 = !DILocation(line: 178, column: 18, scope: !1678, inlinedAt: !2786)
!2797 = distinct !DIAssignID()
!2798 = !DILocation(line: 1020, column: 10, scope: !2770, inlinedAt: !2780)
!2799 = !DILocation(line: 1021, column: 1, scope: !2770, inlinedAt: !2780)
!2800 = !DILocation(line: 1009, column: 3, scope: !2759)
!2801 = distinct !DIAssignID()
!2802 = !DILocation(line: 0, scope: !2770)
!2803 = !DILocation(line: 1018, column: 3, scope: !2770)
!2804 = !DILocation(line: 1018, column: 30, scope: !2770)
!2805 = distinct !DIAssignID()
!2806 = distinct !DIAssignID()
!2807 = !DILocation(line: 0, scope: !1678, inlinedAt: !2808)
!2808 = distinct !DILocation(line: 1019, column: 3, scope: !2770)
!2809 = !DILocation(line: 174, column: 12, scope: !1678, inlinedAt: !2808)
!2810 = distinct !DIAssignID()
!2811 = !DILocation(line: 175, column: 8, scope: !1691, inlinedAt: !2808)
!2812 = !DILocation(line: 175, column: 19, scope: !1691, inlinedAt: !2808)
!2813 = !DILocation(line: 176, column: 5, scope: !1691, inlinedAt: !2808)
!2814 = !DILocation(line: 177, column: 6, scope: !1678, inlinedAt: !2808)
!2815 = !DILocation(line: 177, column: 17, scope: !1678, inlinedAt: !2808)
!2816 = distinct !DIAssignID()
!2817 = !DILocation(line: 178, column: 6, scope: !1678, inlinedAt: !2808)
!2818 = !DILocation(line: 178, column: 18, scope: !1678, inlinedAt: !2808)
!2819 = distinct !DIAssignID()
!2820 = !DILocation(line: 1020, column: 10, scope: !2770)
!2821 = !DILocation(line: 1021, column: 1, scope: !2770)
!2822 = !DILocation(line: 1020, column: 3, scope: !2770)
!2823 = distinct !DISubprogram(name: "quotearg_custom", scope: !458, file: !458, line: 1024, type: !2824, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2826)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!148, !125, !125, !125}
!2826 = !{!2827, !2828, !2829}
!2827 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2823, file: !458, line: 1024, type: !125)
!2828 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2823, file: !458, line: 1024, type: !125)
!2829 = !DILocalVariable(name: "arg", arg: 3, scope: !2823, file: !458, line: 1025, type: !125)
!2830 = distinct !DIAssignID()
!2831 = !DILocation(line: 0, scope: !2823)
!2832 = !DILocation(line: 0, scope: !2759, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 1027, column: 10, scope: !2823)
!2834 = !DILocation(line: 0, scope: !2770, inlinedAt: !2835)
!2835 = distinct !DILocation(line: 1009, column: 10, scope: !2759, inlinedAt: !2833)
!2836 = !DILocation(line: 1018, column: 3, scope: !2770, inlinedAt: !2835)
!2837 = !DILocation(line: 1018, column: 30, scope: !2770, inlinedAt: !2835)
!2838 = distinct !DIAssignID()
!2839 = distinct !DIAssignID()
!2840 = !DILocation(line: 0, scope: !1678, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 1019, column: 3, scope: !2770, inlinedAt: !2835)
!2842 = !DILocation(line: 174, column: 12, scope: !1678, inlinedAt: !2841)
!2843 = distinct !DIAssignID()
!2844 = !DILocation(line: 175, column: 8, scope: !1691, inlinedAt: !2841)
!2845 = !DILocation(line: 175, column: 19, scope: !1691, inlinedAt: !2841)
!2846 = !DILocation(line: 176, column: 5, scope: !1691, inlinedAt: !2841)
!2847 = !DILocation(line: 177, column: 6, scope: !1678, inlinedAt: !2841)
!2848 = !DILocation(line: 177, column: 17, scope: !1678, inlinedAt: !2841)
!2849 = distinct !DIAssignID()
!2850 = !DILocation(line: 178, column: 6, scope: !1678, inlinedAt: !2841)
!2851 = !DILocation(line: 178, column: 18, scope: !1678, inlinedAt: !2841)
!2852 = distinct !DIAssignID()
!2853 = !DILocation(line: 1020, column: 10, scope: !2770, inlinedAt: !2835)
!2854 = !DILocation(line: 1021, column: 1, scope: !2770, inlinedAt: !2835)
!2855 = !DILocation(line: 1027, column: 3, scope: !2823)
!2856 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !458, file: !458, line: 1031, type: !2857, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2859)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!148, !125, !125, !125, !152}
!2859 = !{!2860, !2861, !2862, !2863}
!2860 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2856, file: !458, line: 1031, type: !125)
!2861 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2856, file: !458, line: 1031, type: !125)
!2862 = !DILocalVariable(name: "arg", arg: 3, scope: !2856, file: !458, line: 1032, type: !125)
!2863 = !DILocalVariable(name: "argsize", arg: 4, scope: !2856, file: !458, line: 1032, type: !152)
!2864 = distinct !DIAssignID()
!2865 = !DILocation(line: 0, scope: !2856)
!2866 = !DILocation(line: 0, scope: !2770, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 1034, column: 10, scope: !2856)
!2868 = !DILocation(line: 1018, column: 3, scope: !2770, inlinedAt: !2867)
!2869 = !DILocation(line: 1018, column: 30, scope: !2770, inlinedAt: !2867)
!2870 = distinct !DIAssignID()
!2871 = distinct !DIAssignID()
!2872 = !DILocation(line: 0, scope: !1678, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 1019, column: 3, scope: !2770, inlinedAt: !2867)
!2874 = !DILocation(line: 174, column: 12, scope: !1678, inlinedAt: !2873)
!2875 = distinct !DIAssignID()
!2876 = !DILocation(line: 175, column: 8, scope: !1691, inlinedAt: !2873)
!2877 = !DILocation(line: 175, column: 19, scope: !1691, inlinedAt: !2873)
!2878 = !DILocation(line: 176, column: 5, scope: !1691, inlinedAt: !2873)
!2879 = !DILocation(line: 177, column: 6, scope: !1678, inlinedAt: !2873)
!2880 = !DILocation(line: 177, column: 17, scope: !1678, inlinedAt: !2873)
!2881 = distinct !DIAssignID()
!2882 = !DILocation(line: 178, column: 6, scope: !1678, inlinedAt: !2873)
!2883 = !DILocation(line: 178, column: 18, scope: !1678, inlinedAt: !2873)
!2884 = distinct !DIAssignID()
!2885 = !DILocation(line: 1020, column: 10, scope: !2770, inlinedAt: !2867)
!2886 = !DILocation(line: 1021, column: 1, scope: !2770, inlinedAt: !2867)
!2887 = !DILocation(line: 1034, column: 3, scope: !2856)
!2888 = distinct !DISubprogram(name: "quote_n_mem", scope: !458, file: !458, line: 1049, type: !2889, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2891)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!125, !150, !125, !152}
!2891 = !{!2892, !2893, !2894}
!2892 = !DILocalVariable(name: "n", arg: 1, scope: !2888, file: !458, line: 1049, type: !150)
!2893 = !DILocalVariable(name: "arg", arg: 2, scope: !2888, file: !458, line: 1049, type: !125)
!2894 = !DILocalVariable(name: "argsize", arg: 3, scope: !2888, file: !458, line: 1049, type: !152)
!2895 = !DILocation(line: 0, scope: !2888)
!2896 = !DILocation(line: 1051, column: 10, scope: !2888)
!2897 = !DILocation(line: 1051, column: 3, scope: !2888)
!2898 = distinct !DISubprogram(name: "quote_mem", scope: !458, file: !458, line: 1055, type: !2899, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2901)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!125, !125, !152}
!2901 = !{!2902, !2903}
!2902 = !DILocalVariable(name: "arg", arg: 1, scope: !2898, file: !458, line: 1055, type: !125)
!2903 = !DILocalVariable(name: "argsize", arg: 2, scope: !2898, file: !458, line: 1055, type: !152)
!2904 = !DILocation(line: 0, scope: !2898)
!2905 = !DILocation(line: 0, scope: !2888, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 1057, column: 10, scope: !2898)
!2907 = !DILocation(line: 1051, column: 10, scope: !2888, inlinedAt: !2906)
!2908 = !DILocation(line: 1057, column: 3, scope: !2898)
!2909 = distinct !DISubprogram(name: "quote_n", scope: !458, file: !458, line: 1061, type: !2910, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2912)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!125, !150, !125}
!2912 = !{!2913, !2914}
!2913 = !DILocalVariable(name: "n", arg: 1, scope: !2909, file: !458, line: 1061, type: !150)
!2914 = !DILocalVariable(name: "arg", arg: 2, scope: !2909, file: !458, line: 1061, type: !125)
!2915 = !DILocation(line: 0, scope: !2909)
!2916 = !DILocation(line: 0, scope: !2888, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 1063, column: 10, scope: !2909)
!2918 = !DILocation(line: 1051, column: 10, scope: !2888, inlinedAt: !2917)
!2919 = !DILocation(line: 1063, column: 3, scope: !2909)
!2920 = distinct !DISubprogram(name: "quote", scope: !458, file: !458, line: 1067, type: !2921, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2923)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!125, !125}
!2923 = !{!2924}
!2924 = !DILocalVariable(name: "arg", arg: 1, scope: !2920, file: !458, line: 1067, type: !125)
!2925 = !DILocation(line: 0, scope: !2920)
!2926 = !DILocation(line: 0, scope: !2909, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 1069, column: 10, scope: !2920)
!2928 = !DILocation(line: 0, scope: !2888, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 1063, column: 10, scope: !2909, inlinedAt: !2927)
!2930 = !DILocation(line: 1051, column: 10, scope: !2888, inlinedAt: !2929)
!2931 = !DILocation(line: 1069, column: 3, scope: !2920)
!2932 = distinct !DISubprogram(name: "version_etc_arn", scope: !572, file: !572, line: 61, type: !2933, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !2970)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{null, !2935, !125, !125, !125, !2969, !152}
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !281, line: 7, baseType: !2937)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !283, line: 49, size: 1728, elements: !2938)
!2938 = !{!2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2937, file: !283, line: 51, baseType: !150, size: 32)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2937, file: !283, line: 54, baseType: !148, size: 64, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2937, file: !283, line: 55, baseType: !148, size: 64, offset: 128)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2937, file: !283, line: 56, baseType: !148, size: 64, offset: 192)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2937, file: !283, line: 57, baseType: !148, size: 64, offset: 256)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2937, file: !283, line: 58, baseType: !148, size: 64, offset: 320)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2937, file: !283, line: 59, baseType: !148, size: 64, offset: 384)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2937, file: !283, line: 60, baseType: !148, size: 64, offset: 448)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2937, file: !283, line: 61, baseType: !148, size: 64, offset: 512)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2937, file: !283, line: 64, baseType: !148, size: 64, offset: 576)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2937, file: !283, line: 65, baseType: !148, size: 64, offset: 640)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2937, file: !283, line: 66, baseType: !148, size: 64, offset: 704)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2937, file: !283, line: 68, baseType: !298, size: 64, offset: 768)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2937, file: !283, line: 70, baseType: !2953, size: 64, offset: 832)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2937, file: !283, line: 72, baseType: !150, size: 32, offset: 896)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2937, file: !283, line: 73, baseType: !150, size: 32, offset: 928)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2937, file: !283, line: 74, baseType: !305, size: 64, offset: 960)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2937, file: !283, line: 77, baseType: !151, size: 16, offset: 1024)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2937, file: !283, line: 78, baseType: !310, size: 8, offset: 1040)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2937, file: !283, line: 79, baseType: !90, size: 8, offset: 1048)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2937, file: !283, line: 81, baseType: !313, size: 64, offset: 1088)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2937, file: !283, line: 89, baseType: !316, size: 64, offset: 1152)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2937, file: !283, line: 91, baseType: !318, size: 64, offset: 1216)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2937, file: !283, line: 92, baseType: !321, size: 64, offset: 1280)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2937, file: !283, line: 93, baseType: !2953, size: 64, offset: 1344)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2937, file: !283, line: 94, baseType: !149, size: 64, offset: 1408)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2937, file: !283, line: 95, baseType: !152, size: 64, offset: 1472)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2937, file: !283, line: 96, baseType: !150, size: 32, offset: 1536)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2937, file: !283, line: 98, baseType: !328, size: 160, offset: 1568)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!2970 = !{!2971, !2972, !2973, !2974, !2975, !2976}
!2971 = !DILocalVariable(name: "stream", arg: 1, scope: !2932, file: !572, line: 61, type: !2935)
!2972 = !DILocalVariable(name: "command_name", arg: 2, scope: !2932, file: !572, line: 62, type: !125)
!2973 = !DILocalVariable(name: "package", arg: 3, scope: !2932, file: !572, line: 62, type: !125)
!2974 = !DILocalVariable(name: "version", arg: 4, scope: !2932, file: !572, line: 63, type: !125)
!2975 = !DILocalVariable(name: "authors", arg: 5, scope: !2932, file: !572, line: 64, type: !2969)
!2976 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2932, file: !572, line: 64, type: !152)
!2977 = !DILocation(line: 0, scope: !2932)
!2978 = !DILocation(line: 66, column: 7, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2932, file: !572, line: 66, column: 7)
!2980 = !DILocation(line: 66, column: 7, scope: !2932)
!2981 = !DILocation(line: 67, column: 5, scope: !2979)
!2982 = !DILocation(line: 69, column: 5, scope: !2979)
!2983 = !DILocation(line: 83, column: 3, scope: !2932)
!2984 = !DILocation(line: 85, column: 3, scope: !2932)
!2985 = !DILocation(line: 88, column: 3, scope: !2932)
!2986 = !DILocation(line: 95, column: 3, scope: !2932)
!2987 = !DILocation(line: 97, column: 3, scope: !2932)
!2988 = !DILocation(line: 105, column: 7, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2932, file: !572, line: 98, column: 5)
!2990 = !DILocation(line: 106, column: 7, scope: !2989)
!2991 = !DILocation(line: 109, column: 7, scope: !2989)
!2992 = !DILocation(line: 110, column: 7, scope: !2989)
!2993 = !DILocation(line: 113, column: 7, scope: !2989)
!2994 = !DILocation(line: 115, column: 7, scope: !2989)
!2995 = !DILocation(line: 120, column: 7, scope: !2989)
!2996 = !DILocation(line: 122, column: 7, scope: !2989)
!2997 = !DILocation(line: 127, column: 7, scope: !2989)
!2998 = !DILocation(line: 129, column: 7, scope: !2989)
!2999 = !DILocation(line: 134, column: 7, scope: !2989)
!3000 = !DILocation(line: 137, column: 7, scope: !2989)
!3001 = !DILocation(line: 142, column: 7, scope: !2989)
!3002 = !DILocation(line: 145, column: 7, scope: !2989)
!3003 = !DILocation(line: 150, column: 7, scope: !2989)
!3004 = !DILocation(line: 154, column: 7, scope: !2989)
!3005 = !DILocation(line: 159, column: 7, scope: !2989)
!3006 = !DILocation(line: 163, column: 7, scope: !2989)
!3007 = !DILocation(line: 170, column: 7, scope: !2989)
!3008 = !DILocation(line: 174, column: 7, scope: !2989)
!3009 = !DILocation(line: 176, column: 1, scope: !2932)
!3010 = distinct !DISubprogram(name: "version_etc_ar", scope: !572, file: !572, line: 183, type: !3011, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3013)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{null, !2935, !125, !125, !125, !2969}
!3013 = !{!3014, !3015, !3016, !3017, !3018, !3019}
!3014 = !DILocalVariable(name: "stream", arg: 1, scope: !3010, file: !572, line: 183, type: !2935)
!3015 = !DILocalVariable(name: "command_name", arg: 2, scope: !3010, file: !572, line: 184, type: !125)
!3016 = !DILocalVariable(name: "package", arg: 3, scope: !3010, file: !572, line: 184, type: !125)
!3017 = !DILocalVariable(name: "version", arg: 4, scope: !3010, file: !572, line: 185, type: !125)
!3018 = !DILocalVariable(name: "authors", arg: 5, scope: !3010, file: !572, line: 185, type: !2969)
!3019 = !DILocalVariable(name: "n_authors", scope: !3010, file: !572, line: 187, type: !152)
!3020 = !DILocation(line: 0, scope: !3010)
!3021 = !DILocation(line: 189, column: 8, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3010, file: !572, line: 189, column: 3)
!3023 = !DILocation(line: 189, scope: !3022)
!3024 = !DILocation(line: 189, column: 23, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3022, file: !572, line: 189, column: 3)
!3026 = !DILocation(line: 189, column: 3, scope: !3022)
!3027 = !DILocation(line: 189, column: 52, scope: !3025)
!3028 = distinct !{!3028, !3026, !3029, !864}
!3029 = !DILocation(line: 190, column: 5, scope: !3022)
!3030 = !DILocation(line: 191, column: 3, scope: !3010)
!3031 = !DILocation(line: 192, column: 1, scope: !3010)
!3032 = distinct !DISubprogram(name: "version_etc_va", scope: !572, file: !572, line: 199, type: !3033, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3045)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{null, !2935, !125, !125, !125, !3035}
!3035 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !373, line: 52, baseType: !3036)
!3036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !375, line: 12, baseType: !3037)
!3037 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !572, baseType: !3038)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3039)
!3039 = !{!3040, !3041, !3042, !3043, !3044}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3038, file: !572, line: 192, baseType: !149, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3038, file: !572, line: 192, baseType: !149, size: 64, offset: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3038, file: !572, line: 192, baseType: !149, size: 64, offset: 128)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3038, file: !572, line: 192, baseType: !150, size: 32, offset: 192)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3038, file: !572, line: 192, baseType: !150, size: 32, offset: 224)
!3045 = !{!3046, !3047, !3048, !3049, !3050, !3051, !3052}
!3046 = !DILocalVariable(name: "stream", arg: 1, scope: !3032, file: !572, line: 199, type: !2935)
!3047 = !DILocalVariable(name: "command_name", arg: 2, scope: !3032, file: !572, line: 200, type: !125)
!3048 = !DILocalVariable(name: "package", arg: 3, scope: !3032, file: !572, line: 200, type: !125)
!3049 = !DILocalVariable(name: "version", arg: 4, scope: !3032, file: !572, line: 201, type: !125)
!3050 = !DILocalVariable(name: "authors", arg: 5, scope: !3032, file: !572, line: 201, type: !3035)
!3051 = !DILocalVariable(name: "n_authors", scope: !3032, file: !572, line: 203, type: !152)
!3052 = !DILocalVariable(name: "authtab", scope: !3032, file: !572, line: 204, type: !3053)
!3053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 640, elements: !96)
!3054 = distinct !DIAssignID()
!3055 = !DILocation(line: 0, scope: !3032)
!3056 = !DILocation(line: 204, column: 3, scope: !3032)
!3057 = !DILocation(line: 208, column: 35, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !572, line: 206, column: 3)
!3059 = distinct !DILexicalBlock(scope: !3032, file: !572, line: 206, column: 3)
!3060 = !DILocation(line: 208, column: 33, scope: !3058)
!3061 = !DILocation(line: 208, column: 67, scope: !3058)
!3062 = !DILocation(line: 206, column: 3, scope: !3059)
!3063 = !DILocation(line: 208, column: 14, scope: !3058)
!3064 = !DILocation(line: 0, scope: !3059)
!3065 = !DILocation(line: 211, column: 3, scope: !3032)
!3066 = !DILocation(line: 213, column: 1, scope: !3032)
!3067 = distinct !DISubprogram(name: "version_etc", scope: !572, file: !572, line: 230, type: !3068, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3070)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{null, !2935, !125, !125, !125, null}
!3070 = !{!3071, !3072, !3073, !3074, !3075}
!3071 = !DILocalVariable(name: "stream", arg: 1, scope: !3067, file: !572, line: 230, type: !2935)
!3072 = !DILocalVariable(name: "command_name", arg: 2, scope: !3067, file: !572, line: 231, type: !125)
!3073 = !DILocalVariable(name: "package", arg: 3, scope: !3067, file: !572, line: 231, type: !125)
!3074 = !DILocalVariable(name: "version", arg: 4, scope: !3067, file: !572, line: 232, type: !125)
!3075 = !DILocalVariable(name: "authors", scope: !3067, file: !572, line: 234, type: !3035)
!3076 = distinct !DIAssignID()
!3077 = !DILocation(line: 0, scope: !3067)
!3078 = !DILocation(line: 234, column: 3, scope: !3067)
!3079 = !DILocation(line: 235, column: 3, scope: !3067)
!3080 = !DILocation(line: 236, column: 3, scope: !3067)
!3081 = !DILocation(line: 237, column: 3, scope: !3067)
!3082 = !DILocation(line: 238, column: 1, scope: !3067)
!3083 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !572, file: !572, line: 241, type: !413, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701)
!3084 = !DILocation(line: 243, column: 3, scope: !3083)
!3085 = !DILocation(line: 248, column: 3, scope: !3083)
!3086 = !DILocation(line: 254, column: 3, scope: !3083)
!3087 = !DILocation(line: 259, column: 3, scope: !3083)
!3088 = !DILocation(line: 261, column: 1, scope: !3083)
!3089 = distinct !DISubprogram(name: "xnrealloc", scope: !3090, file: !3090, line: 147, type: !3091, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3093)
!3090 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!149, !149, !152, !152}
!3093 = !{!3094, !3095, !3096}
!3094 = !DILocalVariable(name: "p", arg: 1, scope: !3089, file: !3090, line: 147, type: !149)
!3095 = !DILocalVariable(name: "n", arg: 2, scope: !3089, file: !3090, line: 147, type: !152)
!3096 = !DILocalVariable(name: "s", arg: 3, scope: !3089, file: !3090, line: 147, type: !152)
!3097 = !DILocation(line: 0, scope: !3089)
!3098 = !DILocalVariable(name: "p", arg: 1, scope: !3099, file: !709, line: 83, type: !149)
!3099 = distinct !DISubprogram(name: "xreallocarray", scope: !709, file: !709, line: 83, type: !3091, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3100)
!3100 = !{!3098, !3101, !3102}
!3101 = !DILocalVariable(name: "n", arg: 2, scope: !3099, file: !709, line: 83, type: !152)
!3102 = !DILocalVariable(name: "s", arg: 3, scope: !3099, file: !709, line: 83, type: !152)
!3103 = !DILocation(line: 0, scope: !3099, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 149, column: 10, scope: !3089)
!3105 = !DILocation(line: 85, column: 25, scope: !3099, inlinedAt: !3104)
!3106 = !DILocalVariable(name: "p", arg: 1, scope: !3107, file: !709, line: 37, type: !149)
!3107 = distinct !DISubprogram(name: "check_nonnull", scope: !709, file: !709, line: 37, type: !3108, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3110)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!149, !149}
!3110 = !{!3106}
!3111 = !DILocation(line: 0, scope: !3107, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 85, column: 10, scope: !3099, inlinedAt: !3104)
!3113 = !DILocation(line: 39, column: 8, scope: !3114, inlinedAt: !3112)
!3114 = distinct !DILexicalBlock(scope: !3107, file: !709, line: 39, column: 7)
!3115 = !DILocation(line: 39, column: 7, scope: !3107, inlinedAt: !3112)
!3116 = !DILocation(line: 40, column: 5, scope: !3114, inlinedAt: !3112)
!3117 = !DILocation(line: 149, column: 3, scope: !3089)
!3118 = !DILocation(line: 0, scope: !3099)
!3119 = !DILocation(line: 85, column: 25, scope: !3099)
!3120 = !DILocation(line: 0, scope: !3107, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 85, column: 10, scope: !3099)
!3122 = !DILocation(line: 39, column: 8, scope: !3114, inlinedAt: !3121)
!3123 = !DILocation(line: 39, column: 7, scope: !3107, inlinedAt: !3121)
!3124 = !DILocation(line: 40, column: 5, scope: !3114, inlinedAt: !3121)
!3125 = !DILocation(line: 85, column: 3, scope: !3099)
!3126 = distinct !DISubprogram(name: "xmalloc", scope: !709, file: !709, line: 47, type: !3127, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3129)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!149, !152}
!3129 = !{!3130}
!3130 = !DILocalVariable(name: "s", arg: 1, scope: !3126, file: !709, line: 47, type: !152)
!3131 = !DILocation(line: 0, scope: !3126)
!3132 = !DILocation(line: 49, column: 25, scope: !3126)
!3133 = !DILocation(line: 0, scope: !3107, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 49, column: 10, scope: !3126)
!3135 = !DILocation(line: 39, column: 8, scope: !3114, inlinedAt: !3134)
!3136 = !DILocation(line: 39, column: 7, scope: !3107, inlinedAt: !3134)
!3137 = !DILocation(line: 40, column: 5, scope: !3114, inlinedAt: !3134)
!3138 = !DILocation(line: 49, column: 3, scope: !3126)
!3139 = !DISubprogram(name: "malloc", scope: !962, file: !962, line: 540, type: !3127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3140 = distinct !DISubprogram(name: "ximalloc", scope: !709, file: !709, line: 53, type: !3141, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3143)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!149, !728}
!3143 = !{!3144}
!3144 = !DILocalVariable(name: "s", arg: 1, scope: !3140, file: !709, line: 53, type: !728)
!3145 = !DILocation(line: 0, scope: !3140)
!3146 = !DILocalVariable(name: "s", arg: 1, scope: !3147, file: !3148, line: 55, type: !728)
!3147 = distinct !DISubprogram(name: "imalloc", scope: !3148, file: !3148, line: 55, type: !3141, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3149)
!3148 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3149 = !{!3146}
!3150 = !DILocation(line: 0, scope: !3147, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 55, column: 25, scope: !3140)
!3152 = !DILocation(line: 57, column: 26, scope: !3147, inlinedAt: !3151)
!3153 = !DILocation(line: 0, scope: !3107, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 55, column: 10, scope: !3140)
!3155 = !DILocation(line: 39, column: 8, scope: !3114, inlinedAt: !3154)
!3156 = !DILocation(line: 39, column: 7, scope: !3107, inlinedAt: !3154)
!3157 = !DILocation(line: 40, column: 5, scope: !3114, inlinedAt: !3154)
!3158 = !DILocation(line: 55, column: 3, scope: !3140)
!3159 = distinct !DISubprogram(name: "xcharalloc", scope: !709, file: !709, line: 59, type: !3160, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3162)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!148, !152}
!3162 = !{!3163}
!3163 = !DILocalVariable(name: "n", arg: 1, scope: !3159, file: !709, line: 59, type: !152)
!3164 = !DILocation(line: 0, scope: !3159)
!3165 = !DILocation(line: 0, scope: !3126, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 61, column: 10, scope: !3159)
!3167 = !DILocation(line: 49, column: 25, scope: !3126, inlinedAt: !3166)
!3168 = !DILocation(line: 0, scope: !3107, inlinedAt: !3169)
!3169 = distinct !DILocation(line: 49, column: 10, scope: !3126, inlinedAt: !3166)
!3170 = !DILocation(line: 39, column: 8, scope: !3114, inlinedAt: !3169)
!3171 = !DILocation(line: 39, column: 7, scope: !3107, inlinedAt: !3169)
!3172 = !DILocation(line: 40, column: 5, scope: !3114, inlinedAt: !3169)
!3173 = !DILocation(line: 61, column: 3, scope: !3159)
!3174 = distinct !DISubprogram(name: "xrealloc", scope: !709, file: !709, line: 68, type: !3175, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3177)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!149, !149, !152}
!3177 = !{!3178, !3179}
!3178 = !DILocalVariable(name: "p", arg: 1, scope: !3174, file: !709, line: 68, type: !149)
!3179 = !DILocalVariable(name: "s", arg: 2, scope: !3174, file: !709, line: 68, type: !152)
!3180 = !DILocation(line: 0, scope: !3174)
!3181 = !DILocalVariable(name: "ptr", arg: 1, scope: !3182, file: !3183, line: 2057, type: !149)
!3182 = distinct !DISubprogram(name: "rpl_realloc", scope: !3183, file: !3183, line: 2057, type: !3175, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3184)
!3183 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3184 = !{!3181, !3185}
!3185 = !DILocalVariable(name: "size", arg: 2, scope: !3182, file: !3183, line: 2057, type: !152)
!3186 = !DILocation(line: 0, scope: !3182, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 70, column: 25, scope: !3174)
!3188 = !DILocation(line: 2059, column: 24, scope: !3182, inlinedAt: !3187)
!3189 = !DILocation(line: 2059, column: 10, scope: !3182, inlinedAt: !3187)
!3190 = !DILocation(line: 0, scope: !3107, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 70, column: 10, scope: !3174)
!3192 = !DILocation(line: 39, column: 8, scope: !3114, inlinedAt: !3191)
!3193 = !DILocation(line: 39, column: 7, scope: !3107, inlinedAt: !3191)
!3194 = !DILocation(line: 40, column: 5, scope: !3114, inlinedAt: !3191)
!3195 = !DILocation(line: 70, column: 3, scope: !3174)
!3196 = !DISubprogram(name: "realloc", scope: !962, file: !962, line: 551, type: !3175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3197 = distinct !DISubprogram(name: "xirealloc", scope: !709, file: !709, line: 74, type: !3198, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3200)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!149, !149, !728}
!3200 = !{!3201, !3202}
!3201 = !DILocalVariable(name: "p", arg: 1, scope: !3197, file: !709, line: 74, type: !149)
!3202 = !DILocalVariable(name: "s", arg: 2, scope: !3197, file: !709, line: 74, type: !728)
!3203 = !DILocation(line: 0, scope: !3197)
!3204 = !DILocalVariable(name: "p", arg: 1, scope: !3205, file: !3148, line: 66, type: !149)
!3205 = distinct !DISubprogram(name: "irealloc", scope: !3148, file: !3148, line: 66, type: !3198, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3206)
!3206 = !{!3204, !3207}
!3207 = !DILocalVariable(name: "s", arg: 2, scope: !3205, file: !3148, line: 66, type: !728)
!3208 = !DILocation(line: 0, scope: !3205, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 76, column: 25, scope: !3197)
!3210 = !DILocation(line: 0, scope: !3182, inlinedAt: !3211)
!3211 = distinct !DILocation(line: 68, column: 26, scope: !3205, inlinedAt: !3209)
!3212 = !DILocation(line: 2059, column: 24, scope: !3182, inlinedAt: !3211)
!3213 = !DILocation(line: 2059, column: 10, scope: !3182, inlinedAt: !3211)
!3214 = !DILocation(line: 0, scope: !3107, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 76, column: 10, scope: !3197)
!3216 = !DILocation(line: 39, column: 8, scope: !3114, inlinedAt: !3215)
!3217 = !DILocation(line: 39, column: 7, scope: !3107, inlinedAt: !3215)
!3218 = !DILocation(line: 40, column: 5, scope: !3114, inlinedAt: !3215)
!3219 = !DILocation(line: 76, column: 3, scope: !3197)
!3220 = distinct !DISubprogram(name: "xireallocarray", scope: !709, file: !709, line: 89, type: !3221, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3223)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!149, !149, !728, !728}
!3223 = !{!3224, !3225, !3226}
!3224 = !DILocalVariable(name: "p", arg: 1, scope: !3220, file: !709, line: 89, type: !149)
!3225 = !DILocalVariable(name: "n", arg: 2, scope: !3220, file: !709, line: 89, type: !728)
!3226 = !DILocalVariable(name: "s", arg: 3, scope: !3220, file: !709, line: 89, type: !728)
!3227 = !DILocation(line: 0, scope: !3220)
!3228 = !DILocalVariable(name: "p", arg: 1, scope: !3229, file: !3148, line: 98, type: !149)
!3229 = distinct !DISubprogram(name: "ireallocarray", scope: !3148, file: !3148, line: 98, type: !3221, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3230)
!3230 = !{!3228, !3231, !3232}
!3231 = !DILocalVariable(name: "n", arg: 2, scope: !3229, file: !3148, line: 98, type: !728)
!3232 = !DILocalVariable(name: "s", arg: 3, scope: !3229, file: !3148, line: 98, type: !728)
!3233 = !DILocation(line: 0, scope: !3229, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 91, column: 25, scope: !3220)
!3235 = !DILocation(line: 101, column: 13, scope: !3229, inlinedAt: !3234)
!3236 = !DILocation(line: 0, scope: !3107, inlinedAt: !3237)
!3237 = distinct !DILocation(line: 91, column: 10, scope: !3220)
!3238 = !DILocation(line: 39, column: 8, scope: !3114, inlinedAt: !3237)
!3239 = !DILocation(line: 39, column: 7, scope: !3107, inlinedAt: !3237)
!3240 = !DILocation(line: 40, column: 5, scope: !3114, inlinedAt: !3237)
!3241 = !DILocation(line: 91, column: 3, scope: !3220)
!3242 = distinct !DISubprogram(name: "xnmalloc", scope: !709, file: !709, line: 98, type: !3243, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3245)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!149, !152, !152}
!3245 = !{!3246, !3247}
!3246 = !DILocalVariable(name: "n", arg: 1, scope: !3242, file: !709, line: 98, type: !152)
!3247 = !DILocalVariable(name: "s", arg: 2, scope: !3242, file: !709, line: 98, type: !152)
!3248 = !DILocation(line: 0, scope: !3242)
!3249 = !DILocation(line: 0, scope: !3099, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 100, column: 10, scope: !3242)
!3251 = !DILocation(line: 85, column: 25, scope: !3099, inlinedAt: !3250)
!3252 = !DILocation(line: 0, scope: !3107, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 85, column: 10, scope: !3099, inlinedAt: !3250)
!3254 = !DILocation(line: 39, column: 8, scope: !3114, inlinedAt: !3253)
!3255 = !DILocation(line: 39, column: 7, scope: !3107, inlinedAt: !3253)
!3256 = !DILocation(line: 40, column: 5, scope: !3114, inlinedAt: !3253)
!3257 = !DILocation(line: 100, column: 3, scope: !3242)
!3258 = distinct !DISubprogram(name: "xinmalloc", scope: !709, file: !709, line: 104, type: !3259, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3261)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!149, !728, !728}
!3261 = !{!3262, !3263}
!3262 = !DILocalVariable(name: "n", arg: 1, scope: !3258, file: !709, line: 104, type: !728)
!3263 = !DILocalVariable(name: "s", arg: 2, scope: !3258, file: !709, line: 104, type: !728)
!3264 = !DILocation(line: 0, scope: !3258)
!3265 = !DILocation(line: 0, scope: !3220, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 106, column: 10, scope: !3258)
!3267 = !DILocation(line: 0, scope: !3229, inlinedAt: !3268)
!3268 = distinct !DILocation(line: 91, column: 25, scope: !3220, inlinedAt: !3266)
!3269 = !DILocation(line: 101, column: 13, scope: !3229, inlinedAt: !3268)
!3270 = !DILocation(line: 0, scope: !3107, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 91, column: 10, scope: !3220, inlinedAt: !3266)
!3272 = !DILocation(line: 39, column: 8, scope: !3114, inlinedAt: !3271)
!3273 = !DILocation(line: 39, column: 7, scope: !3107, inlinedAt: !3271)
!3274 = !DILocation(line: 40, column: 5, scope: !3114, inlinedAt: !3271)
!3275 = !DILocation(line: 106, column: 3, scope: !3258)
!3276 = distinct !DISubprogram(name: "x2realloc", scope: !709, file: !709, line: 116, type: !3277, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3279)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!149, !149, !715}
!3279 = !{!3280, !3281}
!3280 = !DILocalVariable(name: "p", arg: 1, scope: !3276, file: !709, line: 116, type: !149)
!3281 = !DILocalVariable(name: "ps", arg: 2, scope: !3276, file: !709, line: 116, type: !715)
!3282 = !DILocation(line: 0, scope: !3276)
!3283 = !DILocation(line: 0, scope: !712, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 118, column: 10, scope: !3276)
!3285 = !DILocation(line: 178, column: 14, scope: !712, inlinedAt: !3284)
!3286 = !DILocation(line: 180, column: 9, scope: !3287, inlinedAt: !3284)
!3287 = distinct !DILexicalBlock(scope: !712, file: !709, line: 180, column: 7)
!3288 = !DILocation(line: 180, column: 7, scope: !712, inlinedAt: !3284)
!3289 = !DILocation(line: 182, column: 13, scope: !3290, inlinedAt: !3284)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !709, line: 182, column: 11)
!3291 = distinct !DILexicalBlock(scope: !3287, file: !709, line: 181, column: 5)
!3292 = !DILocation(line: 182, column: 11, scope: !3291, inlinedAt: !3284)
!3293 = !DILocation(line: 197, column: 11, scope: !3294, inlinedAt: !3284)
!3294 = distinct !DILexicalBlock(scope: !3295, file: !709, line: 197, column: 11)
!3295 = distinct !DILexicalBlock(scope: !3287, file: !709, line: 195, column: 5)
!3296 = !DILocation(line: 197, column: 11, scope: !3295, inlinedAt: !3284)
!3297 = !DILocation(line: 198, column: 9, scope: !3294, inlinedAt: !3284)
!3298 = !DILocation(line: 0, scope: !3099, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 201, column: 7, scope: !712, inlinedAt: !3284)
!3300 = !DILocation(line: 85, column: 25, scope: !3099, inlinedAt: !3299)
!3301 = !DILocation(line: 0, scope: !3107, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 85, column: 10, scope: !3099, inlinedAt: !3299)
!3303 = !DILocation(line: 39, column: 8, scope: !3114, inlinedAt: !3302)
!3304 = !DILocation(line: 39, column: 7, scope: !3107, inlinedAt: !3302)
!3305 = !DILocation(line: 40, column: 5, scope: !3114, inlinedAt: !3302)
!3306 = !DILocation(line: 202, column: 7, scope: !712, inlinedAt: !3284)
!3307 = !DILocation(line: 118, column: 3, scope: !3276)
!3308 = !DILocation(line: 0, scope: !712)
!3309 = !DILocation(line: 178, column: 14, scope: !712)
!3310 = !DILocation(line: 180, column: 9, scope: !3287)
!3311 = !DILocation(line: 180, column: 7, scope: !712)
!3312 = !DILocation(line: 182, column: 13, scope: !3290)
!3313 = !DILocation(line: 182, column: 11, scope: !3291)
!3314 = !DILocation(line: 190, column: 30, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3290, file: !709, line: 183, column: 9)
!3316 = !DILocation(line: 191, column: 16, scope: !3315)
!3317 = !DILocation(line: 191, column: 13, scope: !3315)
!3318 = !DILocation(line: 192, column: 9, scope: !3315)
!3319 = !DILocation(line: 197, column: 11, scope: !3294)
!3320 = !DILocation(line: 197, column: 11, scope: !3295)
!3321 = !DILocation(line: 198, column: 9, scope: !3294)
!3322 = !DILocation(line: 0, scope: !3099, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 201, column: 7, scope: !712)
!3324 = !DILocation(line: 85, column: 25, scope: !3099, inlinedAt: !3323)
!3325 = !DILocation(line: 0, scope: !3107, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 85, column: 10, scope: !3099, inlinedAt: !3323)
!3327 = !DILocation(line: 39, column: 8, scope: !3114, inlinedAt: !3326)
!3328 = !DILocation(line: 39, column: 7, scope: !3107, inlinedAt: !3326)
!3329 = !DILocation(line: 40, column: 5, scope: !3114, inlinedAt: !3326)
!3330 = !DILocation(line: 202, column: 7, scope: !712)
!3331 = !DILocation(line: 203, column: 3, scope: !712)
!3332 = !DILocation(line: 0, scope: !724)
!3333 = !DILocation(line: 230, column: 14, scope: !724)
!3334 = !DILocation(line: 238, column: 7, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !724, file: !709, line: 238, column: 7)
!3336 = !DILocation(line: 238, column: 7, scope: !724)
!3337 = !DILocation(line: 240, column: 9, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !724, file: !709, line: 240, column: 7)
!3339 = !DILocation(line: 240, column: 18, scope: !3338)
!3340 = !DILocation(line: 253, column: 8, scope: !724)
!3341 = !DILocation(line: 256, column: 7, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !724, file: !709, line: 256, column: 7)
!3343 = !DILocation(line: 256, column: 7, scope: !724)
!3344 = !DILocation(line: 258, column: 27, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3342, file: !709, line: 257, column: 5)
!3346 = !DILocation(line: 259, column: 32, scope: !3345)
!3347 = !DILocation(line: 260, column: 5, scope: !3345)
!3348 = !DILocation(line: 262, column: 9, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !724, file: !709, line: 262, column: 7)
!3350 = !DILocation(line: 262, column: 7, scope: !724)
!3351 = !DILocation(line: 263, column: 9, scope: !3349)
!3352 = !DILocation(line: 263, column: 5, scope: !3349)
!3353 = !DILocation(line: 264, column: 9, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !724, file: !709, line: 264, column: 7)
!3355 = !DILocation(line: 264, column: 14, scope: !3354)
!3356 = !DILocation(line: 265, column: 7, scope: !3354)
!3357 = !DILocation(line: 265, column: 11, scope: !3354)
!3358 = !DILocation(line: 266, column: 11, scope: !3354)
!3359 = !DILocation(line: 267, column: 14, scope: !3354)
!3360 = !DILocation(line: 264, column: 7, scope: !724)
!3361 = !DILocation(line: 268, column: 5, scope: !3354)
!3362 = !DILocation(line: 0, scope: !3174, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 269, column: 8, scope: !724)
!3364 = !DILocation(line: 0, scope: !3182, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 70, column: 25, scope: !3174, inlinedAt: !3363)
!3366 = !DILocation(line: 2059, column: 24, scope: !3182, inlinedAt: !3365)
!3367 = !DILocation(line: 2059, column: 10, scope: !3182, inlinedAt: !3365)
!3368 = !DILocation(line: 0, scope: !3107, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 70, column: 10, scope: !3174, inlinedAt: !3363)
!3370 = !DILocation(line: 39, column: 8, scope: !3114, inlinedAt: !3369)
!3371 = !DILocation(line: 39, column: 7, scope: !3107, inlinedAt: !3369)
!3372 = !DILocation(line: 40, column: 5, scope: !3114, inlinedAt: !3369)
!3373 = !DILocation(line: 270, column: 7, scope: !724)
!3374 = !DILocation(line: 271, column: 3, scope: !724)
!3375 = distinct !DISubprogram(name: "xzalloc", scope: !709, file: !709, line: 279, type: !3127, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3376)
!3376 = !{!3377}
!3377 = !DILocalVariable(name: "s", arg: 1, scope: !3375, file: !709, line: 279, type: !152)
!3378 = !DILocation(line: 0, scope: !3375)
!3379 = !DILocalVariable(name: "n", arg: 1, scope: !3380, file: !709, line: 294, type: !152)
!3380 = distinct !DISubprogram(name: "xcalloc", scope: !709, file: !709, line: 294, type: !3243, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3381)
!3381 = !{!3379, !3382}
!3382 = !DILocalVariable(name: "s", arg: 2, scope: !3380, file: !709, line: 294, type: !152)
!3383 = !DILocation(line: 0, scope: !3380, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 281, column: 10, scope: !3375)
!3385 = !DILocation(line: 296, column: 25, scope: !3380, inlinedAt: !3384)
!3386 = !DILocation(line: 0, scope: !3107, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 296, column: 10, scope: !3380, inlinedAt: !3384)
!3388 = !DILocation(line: 39, column: 8, scope: !3114, inlinedAt: !3387)
!3389 = !DILocation(line: 39, column: 7, scope: !3107, inlinedAt: !3387)
!3390 = !DILocation(line: 40, column: 5, scope: !3114, inlinedAt: !3387)
!3391 = !DILocation(line: 281, column: 3, scope: !3375)
!3392 = !DISubprogram(name: "calloc", scope: !962, file: !962, line: 543, type: !3243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3393 = !DILocation(line: 0, scope: !3380)
!3394 = !DILocation(line: 296, column: 25, scope: !3380)
!3395 = !DILocation(line: 0, scope: !3107, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 296, column: 10, scope: !3380)
!3397 = !DILocation(line: 39, column: 8, scope: !3114, inlinedAt: !3396)
!3398 = !DILocation(line: 39, column: 7, scope: !3107, inlinedAt: !3396)
!3399 = !DILocation(line: 40, column: 5, scope: !3114, inlinedAt: !3396)
!3400 = !DILocation(line: 296, column: 3, scope: !3380)
!3401 = distinct !DISubprogram(name: "xizalloc", scope: !709, file: !709, line: 285, type: !3141, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3402)
!3402 = !{!3403}
!3403 = !DILocalVariable(name: "s", arg: 1, scope: !3401, file: !709, line: 285, type: !728)
!3404 = !DILocation(line: 0, scope: !3401)
!3405 = !DILocalVariable(name: "n", arg: 1, scope: !3406, file: !709, line: 300, type: !728)
!3406 = distinct !DISubprogram(name: "xicalloc", scope: !709, file: !709, line: 300, type: !3259, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3407)
!3407 = !{!3405, !3408}
!3408 = !DILocalVariable(name: "s", arg: 2, scope: !3406, file: !709, line: 300, type: !728)
!3409 = !DILocation(line: 0, scope: !3406, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 287, column: 10, scope: !3401)
!3411 = !DILocalVariable(name: "n", arg: 1, scope: !3412, file: !3148, line: 77, type: !728)
!3412 = distinct !DISubprogram(name: "icalloc", scope: !3148, file: !3148, line: 77, type: !3259, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3413)
!3413 = !{!3411, !3414}
!3414 = !DILocalVariable(name: "s", arg: 2, scope: !3412, file: !3148, line: 77, type: !728)
!3415 = !DILocation(line: 0, scope: !3412, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 302, column: 25, scope: !3406, inlinedAt: !3410)
!3417 = !DILocation(line: 91, column: 10, scope: !3412, inlinedAt: !3416)
!3418 = !DILocation(line: 0, scope: !3107, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 302, column: 10, scope: !3406, inlinedAt: !3410)
!3420 = !DILocation(line: 39, column: 8, scope: !3114, inlinedAt: !3419)
!3421 = !DILocation(line: 39, column: 7, scope: !3107, inlinedAt: !3419)
!3422 = !DILocation(line: 40, column: 5, scope: !3114, inlinedAt: !3419)
!3423 = !DILocation(line: 287, column: 3, scope: !3401)
!3424 = !DILocation(line: 0, scope: !3406)
!3425 = !DILocation(line: 0, scope: !3412, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 302, column: 25, scope: !3406)
!3427 = !DILocation(line: 91, column: 10, scope: !3412, inlinedAt: !3426)
!3428 = !DILocation(line: 0, scope: !3107, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 302, column: 10, scope: !3406)
!3430 = !DILocation(line: 39, column: 8, scope: !3114, inlinedAt: !3429)
!3431 = !DILocation(line: 39, column: 7, scope: !3107, inlinedAt: !3429)
!3432 = !DILocation(line: 40, column: 5, scope: !3114, inlinedAt: !3429)
!3433 = !DILocation(line: 302, column: 3, scope: !3406)
!3434 = distinct !DISubprogram(name: "xmemdup", scope: !709, file: !709, line: 310, type: !3435, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3437)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!149, !994, !152}
!3437 = !{!3438, !3439}
!3438 = !DILocalVariable(name: "p", arg: 1, scope: !3434, file: !709, line: 310, type: !994)
!3439 = !DILocalVariable(name: "s", arg: 2, scope: !3434, file: !709, line: 310, type: !152)
!3440 = !DILocation(line: 0, scope: !3434)
!3441 = !DILocation(line: 0, scope: !3126, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 312, column: 18, scope: !3434)
!3443 = !DILocation(line: 49, column: 25, scope: !3126, inlinedAt: !3442)
!3444 = !DILocation(line: 0, scope: !3107, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 49, column: 10, scope: !3126, inlinedAt: !3442)
!3446 = !DILocation(line: 39, column: 8, scope: !3114, inlinedAt: !3445)
!3447 = !DILocation(line: 39, column: 7, scope: !3107, inlinedAt: !3445)
!3448 = !DILocation(line: 40, column: 5, scope: !3114, inlinedAt: !3445)
!3449 = !DILocalVariable(name: "__dest", arg: 1, scope: !3450, file: !1581, line: 26, type: !3453)
!3450 = distinct !DISubprogram(name: "memcpy", scope: !1581, file: !1581, line: 26, type: !3451, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3454)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!149, !3453, !993, !152}
!3453 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !149)
!3454 = !{!3449, !3455, !3456}
!3455 = !DILocalVariable(name: "__src", arg: 2, scope: !3450, file: !1581, line: 26, type: !993)
!3456 = !DILocalVariable(name: "__len", arg: 3, scope: !3450, file: !1581, line: 26, type: !152)
!3457 = !DILocation(line: 0, scope: !3450, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 312, column: 10, scope: !3434)
!3459 = !DILocation(line: 29, column: 10, scope: !3450, inlinedAt: !3458)
!3460 = !DILocation(line: 312, column: 3, scope: !3434)
!3461 = distinct !DISubprogram(name: "ximemdup", scope: !709, file: !709, line: 316, type: !3462, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3464)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!149, !994, !728}
!3464 = !{!3465, !3466}
!3465 = !DILocalVariable(name: "p", arg: 1, scope: !3461, file: !709, line: 316, type: !994)
!3466 = !DILocalVariable(name: "s", arg: 2, scope: !3461, file: !709, line: 316, type: !728)
!3467 = !DILocation(line: 0, scope: !3461)
!3468 = !DILocation(line: 0, scope: !3140, inlinedAt: !3469)
!3469 = distinct !DILocation(line: 318, column: 18, scope: !3461)
!3470 = !DILocation(line: 0, scope: !3147, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 55, column: 25, scope: !3140, inlinedAt: !3469)
!3472 = !DILocation(line: 57, column: 26, scope: !3147, inlinedAt: !3471)
!3473 = !DILocation(line: 0, scope: !3107, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 55, column: 10, scope: !3140, inlinedAt: !3469)
!3475 = !DILocation(line: 39, column: 8, scope: !3114, inlinedAt: !3474)
!3476 = !DILocation(line: 39, column: 7, scope: !3107, inlinedAt: !3474)
!3477 = !DILocation(line: 40, column: 5, scope: !3114, inlinedAt: !3474)
!3478 = !DILocation(line: 0, scope: !3450, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 318, column: 10, scope: !3461)
!3480 = !DILocation(line: 29, column: 10, scope: !3450, inlinedAt: !3479)
!3481 = !DILocation(line: 318, column: 3, scope: !3461)
!3482 = distinct !DISubprogram(name: "ximemdup0", scope: !709, file: !709, line: 325, type: !3483, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3485)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!148, !994, !728}
!3485 = !{!3486, !3487, !3488}
!3486 = !DILocalVariable(name: "p", arg: 1, scope: !3482, file: !709, line: 325, type: !994)
!3487 = !DILocalVariable(name: "s", arg: 2, scope: !3482, file: !709, line: 325, type: !728)
!3488 = !DILocalVariable(name: "result", scope: !3482, file: !709, line: 327, type: !148)
!3489 = !DILocation(line: 0, scope: !3482)
!3490 = !DILocation(line: 327, column: 30, scope: !3482)
!3491 = !DILocation(line: 0, scope: !3140, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 327, column: 18, scope: !3482)
!3493 = !DILocation(line: 0, scope: !3147, inlinedAt: !3494)
!3494 = distinct !DILocation(line: 55, column: 25, scope: !3140, inlinedAt: !3492)
!3495 = !DILocation(line: 57, column: 26, scope: !3147, inlinedAt: !3494)
!3496 = !DILocation(line: 0, scope: !3107, inlinedAt: !3497)
!3497 = distinct !DILocation(line: 55, column: 10, scope: !3140, inlinedAt: !3492)
!3498 = !DILocation(line: 39, column: 8, scope: !3114, inlinedAt: !3497)
!3499 = !DILocation(line: 39, column: 7, scope: !3107, inlinedAt: !3497)
!3500 = !DILocation(line: 40, column: 5, scope: !3114, inlinedAt: !3497)
!3501 = !DILocation(line: 328, column: 3, scope: !3482)
!3502 = !DILocation(line: 328, column: 13, scope: !3482)
!3503 = !DILocation(line: 0, scope: !3450, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 329, column: 10, scope: !3482)
!3505 = !DILocation(line: 29, column: 10, scope: !3450, inlinedAt: !3504)
!3506 = !DILocation(line: 329, column: 3, scope: !3482)
!3507 = distinct !DISubprogram(name: "xstrdup", scope: !709, file: !709, line: 335, type: !972, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3508)
!3508 = !{!3509}
!3509 = !DILocalVariable(name: "string", arg: 1, scope: !3507, file: !709, line: 335, type: !125)
!3510 = !DILocation(line: 0, scope: !3507)
!3511 = !DILocation(line: 337, column: 27, scope: !3507)
!3512 = !DILocation(line: 337, column: 43, scope: !3507)
!3513 = !DILocation(line: 0, scope: !3434, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 337, column: 10, scope: !3507)
!3515 = !DILocation(line: 0, scope: !3126, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 312, column: 18, scope: !3434, inlinedAt: !3514)
!3517 = !DILocation(line: 49, column: 25, scope: !3126, inlinedAt: !3516)
!3518 = !DILocation(line: 0, scope: !3107, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 49, column: 10, scope: !3126, inlinedAt: !3516)
!3520 = !DILocation(line: 39, column: 8, scope: !3114, inlinedAt: !3519)
!3521 = !DILocation(line: 39, column: 7, scope: !3107, inlinedAt: !3519)
!3522 = !DILocation(line: 40, column: 5, scope: !3114, inlinedAt: !3519)
!3523 = !DILocation(line: 0, scope: !3450, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 312, column: 10, scope: !3434, inlinedAt: !3514)
!3525 = !DILocation(line: 29, column: 10, scope: !3450, inlinedAt: !3524)
!3526 = !DILocation(line: 337, column: 3, scope: !3507)
!3527 = distinct !DISubprogram(name: "xalloc_die", scope: !671, file: !671, line: 32, type: !413, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3528)
!3528 = !{!3529}
!3529 = !DILocalVariable(name: "__errstatus", scope: !3530, file: !671, line: 34, type: !3531)
!3530 = distinct !DILexicalBlock(scope: !3527, file: !671, line: 34, column: 3)
!3531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!3532 = !DILocation(line: 34, column: 3, scope: !3530)
!3533 = !DILocation(line: 0, scope: !3530)
!3534 = !DILocation(line: 40, column: 3, scope: !3527)
!3535 = distinct !DISubprogram(name: "close_stream", scope: !746, file: !746, line: 55, type: !3536, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3572)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{!150, !3538}
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !281, line: 7, baseType: !3540)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !283, line: 49, size: 1728, elements: !3541)
!3541 = !{!3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3540, file: !283, line: 51, baseType: !150, size: 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3540, file: !283, line: 54, baseType: !148, size: 64, offset: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3540, file: !283, line: 55, baseType: !148, size: 64, offset: 128)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3540, file: !283, line: 56, baseType: !148, size: 64, offset: 192)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3540, file: !283, line: 57, baseType: !148, size: 64, offset: 256)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3540, file: !283, line: 58, baseType: !148, size: 64, offset: 320)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3540, file: !283, line: 59, baseType: !148, size: 64, offset: 384)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3540, file: !283, line: 60, baseType: !148, size: 64, offset: 448)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3540, file: !283, line: 61, baseType: !148, size: 64, offset: 512)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3540, file: !283, line: 64, baseType: !148, size: 64, offset: 576)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3540, file: !283, line: 65, baseType: !148, size: 64, offset: 640)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3540, file: !283, line: 66, baseType: !148, size: 64, offset: 704)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3540, file: !283, line: 68, baseType: !298, size: 64, offset: 768)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3540, file: !283, line: 70, baseType: !3556, size: 64, offset: 832)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3540, file: !283, line: 72, baseType: !150, size: 32, offset: 896)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3540, file: !283, line: 73, baseType: !150, size: 32, offset: 928)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3540, file: !283, line: 74, baseType: !305, size: 64, offset: 960)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3540, file: !283, line: 77, baseType: !151, size: 16, offset: 1024)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3540, file: !283, line: 78, baseType: !310, size: 8, offset: 1040)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3540, file: !283, line: 79, baseType: !90, size: 8, offset: 1048)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3540, file: !283, line: 81, baseType: !313, size: 64, offset: 1088)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3540, file: !283, line: 89, baseType: !316, size: 64, offset: 1152)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3540, file: !283, line: 91, baseType: !318, size: 64, offset: 1216)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3540, file: !283, line: 92, baseType: !321, size: 64, offset: 1280)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3540, file: !283, line: 93, baseType: !3556, size: 64, offset: 1344)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3540, file: !283, line: 94, baseType: !149, size: 64, offset: 1408)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3540, file: !283, line: 95, baseType: !152, size: 64, offset: 1472)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3540, file: !283, line: 96, baseType: !150, size: 32, offset: 1536)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3540, file: !283, line: 98, baseType: !328, size: 160, offset: 1568)
!3572 = !{!3573, !3574, !3576, !3577}
!3573 = !DILocalVariable(name: "stream", arg: 1, scope: !3535, file: !746, line: 55, type: !3538)
!3574 = !DILocalVariable(name: "some_pending", scope: !3535, file: !746, line: 57, type: !3575)
!3575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!3576 = !DILocalVariable(name: "prev_fail", scope: !3535, file: !746, line: 58, type: !3575)
!3577 = !DILocalVariable(name: "fclose_fail", scope: !3535, file: !746, line: 59, type: !3575)
!3578 = !DILocation(line: 0, scope: !3535)
!3579 = !DILocation(line: 57, column: 30, scope: !3535)
!3580 = !DILocalVariable(name: "__stream", arg: 1, scope: !3581, file: !1202, line: 135, type: !3538)
!3581 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1202, file: !1202, line: 135, type: !3536, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3582)
!3582 = !{!3580}
!3583 = !DILocation(line: 0, scope: !3581, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 58, column: 27, scope: !3535)
!3585 = !DILocation(line: 137, column: 10, scope: !3581, inlinedAt: !3584)
!3586 = !{!1210, !818, i64 0}
!3587 = !DILocation(line: 58, column: 43, scope: !3535)
!3588 = !DILocation(line: 59, column: 29, scope: !3535)
!3589 = !DILocation(line: 59, column: 45, scope: !3535)
!3590 = !DILocation(line: 69, column: 17, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3535, file: !746, line: 69, column: 7)
!3592 = !DILocation(line: 57, column: 50, scope: !3535)
!3593 = !DILocation(line: 69, column: 33, scope: !3591)
!3594 = !DILocation(line: 69, column: 53, scope: !3591)
!3595 = !DILocation(line: 69, column: 59, scope: !3591)
!3596 = !DILocation(line: 69, column: 7, scope: !3535)
!3597 = !DILocation(line: 71, column: 11, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3591, file: !746, line: 70, column: 5)
!3599 = !DILocation(line: 72, column: 9, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3598, file: !746, line: 71, column: 11)
!3601 = !DILocation(line: 72, column: 15, scope: !3600)
!3602 = !DILocation(line: 77, column: 1, scope: !3535)
!3603 = !DISubprogram(name: "__fpending", scope: !3604, file: !3604, line: 75, type: !3605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3604 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!152, !3538}
!3607 = distinct !DISubprogram(name: "rpl_fclose", scope: !748, file: !748, line: 58, type: !3608, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !747, retainedNodes: !3644)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!150, !3610}
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !281, line: 7, baseType: !3612)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !283, line: 49, size: 1728, elements: !3613)
!3613 = !{!3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3612, file: !283, line: 51, baseType: !150, size: 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3612, file: !283, line: 54, baseType: !148, size: 64, offset: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3612, file: !283, line: 55, baseType: !148, size: 64, offset: 128)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3612, file: !283, line: 56, baseType: !148, size: 64, offset: 192)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3612, file: !283, line: 57, baseType: !148, size: 64, offset: 256)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3612, file: !283, line: 58, baseType: !148, size: 64, offset: 320)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3612, file: !283, line: 59, baseType: !148, size: 64, offset: 384)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3612, file: !283, line: 60, baseType: !148, size: 64, offset: 448)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3612, file: !283, line: 61, baseType: !148, size: 64, offset: 512)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3612, file: !283, line: 64, baseType: !148, size: 64, offset: 576)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3612, file: !283, line: 65, baseType: !148, size: 64, offset: 640)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3612, file: !283, line: 66, baseType: !148, size: 64, offset: 704)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3612, file: !283, line: 68, baseType: !298, size: 64, offset: 768)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3612, file: !283, line: 70, baseType: !3628, size: 64, offset: 832)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3612, file: !283, line: 72, baseType: !150, size: 32, offset: 896)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3612, file: !283, line: 73, baseType: !150, size: 32, offset: 928)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3612, file: !283, line: 74, baseType: !305, size: 64, offset: 960)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3612, file: !283, line: 77, baseType: !151, size: 16, offset: 1024)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3612, file: !283, line: 78, baseType: !310, size: 8, offset: 1040)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3612, file: !283, line: 79, baseType: !90, size: 8, offset: 1048)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3612, file: !283, line: 81, baseType: !313, size: 64, offset: 1088)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3612, file: !283, line: 89, baseType: !316, size: 64, offset: 1152)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3612, file: !283, line: 91, baseType: !318, size: 64, offset: 1216)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3612, file: !283, line: 92, baseType: !321, size: 64, offset: 1280)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3612, file: !283, line: 93, baseType: !3628, size: 64, offset: 1344)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3612, file: !283, line: 94, baseType: !149, size: 64, offset: 1408)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3612, file: !283, line: 95, baseType: !152, size: 64, offset: 1472)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3612, file: !283, line: 96, baseType: !150, size: 32, offset: 1536)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3612, file: !283, line: 98, baseType: !328, size: 160, offset: 1568)
!3644 = !{!3645, !3646, !3647, !3648}
!3645 = !DILocalVariable(name: "fp", arg: 1, scope: !3607, file: !748, line: 58, type: !3610)
!3646 = !DILocalVariable(name: "saved_errno", scope: !3607, file: !748, line: 60, type: !150)
!3647 = !DILocalVariable(name: "fd", scope: !3607, file: !748, line: 63, type: !150)
!3648 = !DILocalVariable(name: "result", scope: !3607, file: !748, line: 74, type: !150)
!3649 = !DILocation(line: 0, scope: !3607)
!3650 = !DILocation(line: 63, column: 12, scope: !3607)
!3651 = !DILocation(line: 64, column: 10, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3607, file: !748, line: 64, column: 7)
!3653 = !DILocation(line: 64, column: 7, scope: !3607)
!3654 = !DILocation(line: 65, column: 12, scope: !3652)
!3655 = !DILocation(line: 65, column: 5, scope: !3652)
!3656 = !DILocation(line: 70, column: 9, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3607, file: !748, line: 70, column: 7)
!3658 = !DILocation(line: 70, column: 23, scope: !3657)
!3659 = !DILocation(line: 70, column: 33, scope: !3657)
!3660 = !DILocation(line: 70, column: 26, scope: !3657)
!3661 = !DILocation(line: 70, column: 59, scope: !3657)
!3662 = !DILocation(line: 71, column: 7, scope: !3657)
!3663 = !DILocation(line: 71, column: 10, scope: !3657)
!3664 = !DILocation(line: 70, column: 7, scope: !3607)
!3665 = !DILocation(line: 100, column: 12, scope: !3607)
!3666 = !DILocation(line: 105, column: 7, scope: !3607)
!3667 = !DILocation(line: 72, column: 19, scope: !3657)
!3668 = !DILocation(line: 105, column: 19, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3607, file: !748, line: 105, column: 7)
!3670 = !DILocation(line: 107, column: 13, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3669, file: !748, line: 106, column: 5)
!3672 = !DILocation(line: 109, column: 5, scope: !3671)
!3673 = !DILocation(line: 112, column: 1, scope: !3607)
!3674 = !DISubprogram(name: "fileno", scope: !373, file: !373, line: 809, type: !3608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3675 = !DISubprogram(name: "fclose", scope: !373, file: !373, line: 178, type: !3608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3676 = !DISubprogram(name: "__freading", scope: !3604, file: !3604, line: 51, type: !3608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3677 = !DISubprogram(name: "lseek", scope: !1309, file: !1309, line: 339, type: !3678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!305, !150, !305, !150}
!3680 = distinct !DISubprogram(name: "rpl_fflush", scope: !750, file: !750, line: 130, type: !3681, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !749, retainedNodes: !3717)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!150, !3683}
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !281, line: 7, baseType: !3685)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !283, line: 49, size: 1728, elements: !3686)
!3686 = !{!3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3685, file: !283, line: 51, baseType: !150, size: 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3685, file: !283, line: 54, baseType: !148, size: 64, offset: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3685, file: !283, line: 55, baseType: !148, size: 64, offset: 128)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3685, file: !283, line: 56, baseType: !148, size: 64, offset: 192)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3685, file: !283, line: 57, baseType: !148, size: 64, offset: 256)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3685, file: !283, line: 58, baseType: !148, size: 64, offset: 320)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3685, file: !283, line: 59, baseType: !148, size: 64, offset: 384)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3685, file: !283, line: 60, baseType: !148, size: 64, offset: 448)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3685, file: !283, line: 61, baseType: !148, size: 64, offset: 512)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3685, file: !283, line: 64, baseType: !148, size: 64, offset: 576)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3685, file: !283, line: 65, baseType: !148, size: 64, offset: 640)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3685, file: !283, line: 66, baseType: !148, size: 64, offset: 704)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3685, file: !283, line: 68, baseType: !298, size: 64, offset: 768)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3685, file: !283, line: 70, baseType: !3701, size: 64, offset: 832)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3685, file: !283, line: 72, baseType: !150, size: 32, offset: 896)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3685, file: !283, line: 73, baseType: !150, size: 32, offset: 928)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3685, file: !283, line: 74, baseType: !305, size: 64, offset: 960)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3685, file: !283, line: 77, baseType: !151, size: 16, offset: 1024)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3685, file: !283, line: 78, baseType: !310, size: 8, offset: 1040)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3685, file: !283, line: 79, baseType: !90, size: 8, offset: 1048)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3685, file: !283, line: 81, baseType: !313, size: 64, offset: 1088)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3685, file: !283, line: 89, baseType: !316, size: 64, offset: 1152)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3685, file: !283, line: 91, baseType: !318, size: 64, offset: 1216)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3685, file: !283, line: 92, baseType: !321, size: 64, offset: 1280)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3685, file: !283, line: 93, baseType: !3701, size: 64, offset: 1344)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3685, file: !283, line: 94, baseType: !149, size: 64, offset: 1408)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3685, file: !283, line: 95, baseType: !152, size: 64, offset: 1472)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3685, file: !283, line: 96, baseType: !150, size: 32, offset: 1536)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3685, file: !283, line: 98, baseType: !328, size: 160, offset: 1568)
!3717 = !{!3718}
!3718 = !DILocalVariable(name: "stream", arg: 1, scope: !3680, file: !750, line: 130, type: !3683)
!3719 = !DILocation(line: 0, scope: !3680)
!3720 = !DILocation(line: 151, column: 14, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3680, file: !750, line: 151, column: 7)
!3722 = !DILocation(line: 151, column: 22, scope: !3721)
!3723 = !DILocation(line: 151, column: 27, scope: !3721)
!3724 = !DILocation(line: 151, column: 7, scope: !3680)
!3725 = !DILocation(line: 152, column: 12, scope: !3721)
!3726 = !DILocation(line: 152, column: 5, scope: !3721)
!3727 = !DILocalVariable(name: "fp", arg: 1, scope: !3728, file: !750, line: 42, type: !3683)
!3728 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !750, file: !750, line: 42, type: !3729, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !749, retainedNodes: !3731)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{null, !3683}
!3731 = !{!3727}
!3732 = !DILocation(line: 0, scope: !3728, inlinedAt: !3733)
!3733 = distinct !DILocation(line: 157, column: 3, scope: !3680)
!3734 = !DILocation(line: 44, column: 12, scope: !3735, inlinedAt: !3733)
!3735 = distinct !DILexicalBlock(scope: !3728, file: !750, line: 44, column: 7)
!3736 = !DILocation(line: 44, column: 19, scope: !3735, inlinedAt: !3733)
!3737 = !DILocation(line: 44, column: 7, scope: !3728, inlinedAt: !3733)
!3738 = !DILocation(line: 46, column: 5, scope: !3735, inlinedAt: !3733)
!3739 = !DILocation(line: 159, column: 10, scope: !3680)
!3740 = !DILocation(line: 159, column: 3, scope: !3680)
!3741 = !DILocation(line: 236, column: 1, scope: !3680)
!3742 = !DISubprogram(name: "fflush", scope: !373, file: !373, line: 230, type: !3681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3743 = distinct !DISubprogram(name: "rpl_fseeko", scope: !752, file: !752, line: 28, type: !3744, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !3781)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!150, !3746, !3780, !150}
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !281, line: 7, baseType: !3748)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !283, line: 49, size: 1728, elements: !3749)
!3749 = !{!3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3748, file: !283, line: 51, baseType: !150, size: 32)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3748, file: !283, line: 54, baseType: !148, size: 64, offset: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3748, file: !283, line: 55, baseType: !148, size: 64, offset: 128)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3748, file: !283, line: 56, baseType: !148, size: 64, offset: 192)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3748, file: !283, line: 57, baseType: !148, size: 64, offset: 256)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3748, file: !283, line: 58, baseType: !148, size: 64, offset: 320)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3748, file: !283, line: 59, baseType: !148, size: 64, offset: 384)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3748, file: !283, line: 60, baseType: !148, size: 64, offset: 448)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3748, file: !283, line: 61, baseType: !148, size: 64, offset: 512)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3748, file: !283, line: 64, baseType: !148, size: 64, offset: 576)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3748, file: !283, line: 65, baseType: !148, size: 64, offset: 640)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3748, file: !283, line: 66, baseType: !148, size: 64, offset: 704)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3748, file: !283, line: 68, baseType: !298, size: 64, offset: 768)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3748, file: !283, line: 70, baseType: !3764, size: 64, offset: 832)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3748, file: !283, line: 72, baseType: !150, size: 32, offset: 896)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3748, file: !283, line: 73, baseType: !150, size: 32, offset: 928)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3748, file: !283, line: 74, baseType: !305, size: 64, offset: 960)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3748, file: !283, line: 77, baseType: !151, size: 16, offset: 1024)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3748, file: !283, line: 78, baseType: !310, size: 8, offset: 1040)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3748, file: !283, line: 79, baseType: !90, size: 8, offset: 1048)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3748, file: !283, line: 81, baseType: !313, size: 64, offset: 1088)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3748, file: !283, line: 89, baseType: !316, size: 64, offset: 1152)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3748, file: !283, line: 91, baseType: !318, size: 64, offset: 1216)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3748, file: !283, line: 92, baseType: !321, size: 64, offset: 1280)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3748, file: !283, line: 93, baseType: !3764, size: 64, offset: 1344)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3748, file: !283, line: 94, baseType: !149, size: 64, offset: 1408)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3748, file: !283, line: 95, baseType: !152, size: 64, offset: 1472)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3748, file: !283, line: 96, baseType: !150, size: 32, offset: 1536)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3748, file: !283, line: 98, baseType: !328, size: 160, offset: 1568)
!3780 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !373, line: 63, baseType: !305)
!3781 = !{!3782, !3783, !3784, !3785}
!3782 = !DILocalVariable(name: "fp", arg: 1, scope: !3743, file: !752, line: 28, type: !3746)
!3783 = !DILocalVariable(name: "offset", arg: 2, scope: !3743, file: !752, line: 28, type: !3780)
!3784 = !DILocalVariable(name: "whence", arg: 3, scope: !3743, file: !752, line: 28, type: !150)
!3785 = !DILocalVariable(name: "pos", scope: !3786, file: !752, line: 123, type: !3780)
!3786 = distinct !DILexicalBlock(scope: !3787, file: !752, line: 119, column: 5)
!3787 = distinct !DILexicalBlock(scope: !3743, file: !752, line: 55, column: 7)
!3788 = !DILocation(line: 0, scope: !3743)
!3789 = !DILocation(line: 55, column: 12, scope: !3787)
!3790 = !{!1210, !782, i64 16}
!3791 = !DILocation(line: 55, column: 33, scope: !3787)
!3792 = !{!1210, !782, i64 8}
!3793 = !DILocation(line: 55, column: 25, scope: !3787)
!3794 = !DILocation(line: 56, column: 7, scope: !3787)
!3795 = !DILocation(line: 56, column: 15, scope: !3787)
!3796 = !DILocation(line: 56, column: 37, scope: !3787)
!3797 = !{!1210, !782, i64 32}
!3798 = !DILocation(line: 56, column: 29, scope: !3787)
!3799 = !DILocation(line: 57, column: 7, scope: !3787)
!3800 = !DILocation(line: 57, column: 15, scope: !3787)
!3801 = !{!1210, !782, i64 72}
!3802 = !DILocation(line: 57, column: 29, scope: !3787)
!3803 = !DILocation(line: 55, column: 7, scope: !3743)
!3804 = !DILocation(line: 123, column: 26, scope: !3786)
!3805 = !DILocation(line: 123, column: 19, scope: !3786)
!3806 = !DILocation(line: 0, scope: !3786)
!3807 = !DILocation(line: 124, column: 15, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3786, file: !752, line: 124, column: 11)
!3809 = !DILocation(line: 124, column: 11, scope: !3786)
!3810 = !DILocation(line: 135, column: 19, scope: !3786)
!3811 = !DILocation(line: 136, column: 12, scope: !3786)
!3812 = !DILocation(line: 136, column: 20, scope: !3786)
!3813 = !{!1210, !1211, i64 144}
!3814 = !DILocation(line: 167, column: 7, scope: !3786)
!3815 = !DILocation(line: 169, column: 10, scope: !3743)
!3816 = !DILocation(line: 169, column: 3, scope: !3743)
!3817 = !DILocation(line: 170, column: 1, scope: !3743)
!3818 = !DISubprogram(name: "fseeko", scope: !373, file: !373, line: 736, type: !3819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!150, !3746, !305, !150}
!3821 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !678, file: !678, line: 100, type: !3822, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3825)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!152, !1599, !125, !152, !3824}
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!3825 = !{!3826, !3827, !3828, !3829, !3830}
!3826 = !DILocalVariable(name: "pwc", arg: 1, scope: !3821, file: !678, line: 100, type: !1599)
!3827 = !DILocalVariable(name: "s", arg: 2, scope: !3821, file: !678, line: 100, type: !125)
!3828 = !DILocalVariable(name: "n", arg: 3, scope: !3821, file: !678, line: 100, type: !152)
!3829 = !DILocalVariable(name: "ps", arg: 4, scope: !3821, file: !678, line: 100, type: !3824)
!3830 = !DILocalVariable(name: "ret", scope: !3821, file: !678, line: 130, type: !152)
!3831 = !DILocation(line: 0, scope: !3821)
!3832 = !DILocation(line: 105, column: 9, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3821, file: !678, line: 105, column: 7)
!3834 = !DILocation(line: 105, column: 7, scope: !3821)
!3835 = !DILocation(line: 117, column: 10, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3821, file: !678, line: 117, column: 7)
!3837 = !DILocation(line: 117, column: 7, scope: !3821)
!3838 = !DILocation(line: 130, column: 16, scope: !3821)
!3839 = !DILocation(line: 135, column: 11, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3821, file: !678, line: 135, column: 7)
!3841 = !DILocation(line: 135, column: 25, scope: !3840)
!3842 = !DILocation(line: 135, column: 30, scope: !3840)
!3843 = !DILocation(line: 135, column: 7, scope: !3821)
!3844 = !DILocalVariable(name: "ps", arg: 1, scope: !3845, file: !1572, line: 1135, type: !3824)
!3845 = distinct !DISubprogram(name: "mbszero", scope: !1572, file: !1572, line: 1135, type: !3846, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3848)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{null, !3824}
!3848 = !{!3844}
!3849 = !DILocation(line: 0, scope: !3845, inlinedAt: !3850)
!3850 = distinct !DILocation(line: 137, column: 5, scope: !3840)
!3851 = !DILocalVariable(name: "__dest", arg: 1, scope: !3852, file: !1581, line: 57, type: !149)
!3852 = distinct !DISubprogram(name: "memset", scope: !1581, file: !1581, line: 57, type: !1582, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3853)
!3853 = !{!3851, !3854, !3855}
!3854 = !DILocalVariable(name: "__ch", arg: 2, scope: !3852, file: !1581, line: 57, type: !150)
!3855 = !DILocalVariable(name: "__len", arg: 3, scope: !3852, file: !1581, line: 57, type: !152)
!3856 = !DILocation(line: 0, scope: !3852, inlinedAt: !3857)
!3857 = distinct !DILocation(line: 1137, column: 3, scope: !3845, inlinedAt: !3850)
!3858 = !DILocation(line: 59, column: 10, scope: !3852, inlinedAt: !3857)
!3859 = !DILocation(line: 137, column: 5, scope: !3840)
!3860 = !DILocation(line: 138, column: 11, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3821, file: !678, line: 138, column: 7)
!3862 = !DILocation(line: 138, column: 7, scope: !3821)
!3863 = !DILocation(line: 139, column: 5, scope: !3861)
!3864 = !DILocation(line: 143, column: 26, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3821, file: !678, line: 143, column: 7)
!3866 = !DILocation(line: 143, column: 41, scope: !3865)
!3867 = !DILocation(line: 143, column: 7, scope: !3821)
!3868 = !DILocation(line: 145, column: 15, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3870, file: !678, line: 145, column: 11)
!3870 = distinct !DILexicalBlock(scope: !3865, file: !678, line: 144, column: 5)
!3871 = !DILocation(line: 145, column: 11, scope: !3870)
!3872 = !DILocation(line: 146, column: 32, scope: !3869)
!3873 = !DILocation(line: 146, column: 16, scope: !3869)
!3874 = !DILocation(line: 146, column: 14, scope: !3869)
!3875 = !DILocation(line: 146, column: 9, scope: !3869)
!3876 = !DILocation(line: 286, column: 1, scope: !3821)
!3877 = !DISubprogram(name: "mbsinit", scope: !3878, file: !3878, line: 293, type: !3879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3878 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!150, !3881}
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !684)
!3883 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !754, file: !754, line: 27, type: !3091, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3884)
!3884 = !{!3885, !3886, !3887, !3888}
!3885 = !DILocalVariable(name: "ptr", arg: 1, scope: !3883, file: !754, line: 27, type: !149)
!3886 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3883, file: !754, line: 27, type: !152)
!3887 = !DILocalVariable(name: "size", arg: 3, scope: !3883, file: !754, line: 27, type: !152)
!3888 = !DILocalVariable(name: "nbytes", scope: !3883, file: !754, line: 29, type: !152)
!3889 = !DILocation(line: 0, scope: !3883)
!3890 = !DILocation(line: 30, column: 7, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3883, file: !754, line: 30, column: 7)
!3892 = !DILocation(line: 30, column: 7, scope: !3883)
!3893 = !DILocation(line: 32, column: 7, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3891, file: !754, line: 31, column: 5)
!3895 = !DILocation(line: 32, column: 13, scope: !3894)
!3896 = !DILocation(line: 33, column: 7, scope: !3894)
!3897 = !DILocalVariable(name: "ptr", arg: 1, scope: !3898, file: !3183, line: 2057, type: !149)
!3898 = distinct !DISubprogram(name: "rpl_realloc", scope: !3183, file: !3183, line: 2057, type: !3175, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3899)
!3899 = !{!3897, !3900}
!3900 = !DILocalVariable(name: "size", arg: 2, scope: !3898, file: !3183, line: 2057, type: !152)
!3901 = !DILocation(line: 0, scope: !3898, inlinedAt: !3902)
!3902 = distinct !DILocation(line: 37, column: 10, scope: !3883)
!3903 = !DILocation(line: 2059, column: 24, scope: !3898, inlinedAt: !3902)
!3904 = !DILocation(line: 2059, column: 10, scope: !3898, inlinedAt: !3902)
!3905 = !DILocation(line: 37, column: 3, scope: !3883)
!3906 = !DILocation(line: 38, column: 1, scope: !3883)
!3907 = distinct !DISubprogram(name: "hard_locale", scope: !696, file: !696, line: 28, type: !1136, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !3908)
!3908 = !{!3909, !3910}
!3909 = !DILocalVariable(name: "category", arg: 1, scope: !3907, file: !696, line: 28, type: !150)
!3910 = !DILocalVariable(name: "locale", scope: !3907, file: !696, line: 30, type: !3911)
!3911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3912)
!3912 = !{!3913}
!3913 = !DISubrange(count: 257)
!3914 = distinct !DIAssignID()
!3915 = !DILocation(line: 0, scope: !3907)
!3916 = !DILocation(line: 30, column: 3, scope: !3907)
!3917 = !DILocation(line: 32, column: 7, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3907, file: !696, line: 32, column: 7)
!3919 = !DILocation(line: 32, column: 7, scope: !3907)
!3920 = !DILocalVariable(name: "__s1", arg: 1, scope: !3921, file: !830, line: 1359, type: !125)
!3921 = distinct !DISubprogram(name: "streq", scope: !830, file: !830, line: 1359, type: !831, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !3922)
!3922 = !{!3920, !3923}
!3923 = !DILocalVariable(name: "__s2", arg: 2, scope: !3921, file: !830, line: 1359, type: !125)
!3924 = !DILocation(line: 0, scope: !3921, inlinedAt: !3925)
!3925 = distinct !DILocation(line: 35, column: 9, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3907, file: !696, line: 35, column: 7)
!3927 = !DILocation(line: 1361, column: 11, scope: !3921, inlinedAt: !3925)
!3928 = !DILocation(line: 1361, column: 10, scope: !3921, inlinedAt: !3925)
!3929 = !DILocation(line: 35, column: 29, scope: !3926)
!3930 = !DILocation(line: 0, scope: !3921, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 35, column: 32, scope: !3926)
!3932 = !DILocation(line: 1361, column: 11, scope: !3921, inlinedAt: !3931)
!3933 = !DILocation(line: 1361, column: 10, scope: !3921, inlinedAt: !3931)
!3934 = !DILocation(line: 35, column: 7, scope: !3907)
!3935 = !DILocation(line: 46, column: 3, scope: !3907)
!3936 = !DILocation(line: 47, column: 1, scope: !3907)
!3937 = distinct !DISubprogram(name: "setlocale_null_r", scope: !758, file: !758, line: 154, type: !3938, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !3940)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!150, !150, !148, !152}
!3940 = !{!3941, !3942, !3943}
!3941 = !DILocalVariable(name: "category", arg: 1, scope: !3937, file: !758, line: 154, type: !150)
!3942 = !DILocalVariable(name: "buf", arg: 2, scope: !3937, file: !758, line: 154, type: !148)
!3943 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3937, file: !758, line: 154, type: !152)
!3944 = !DILocation(line: 0, scope: !3937)
!3945 = !DILocation(line: 159, column: 10, scope: !3937)
!3946 = !DILocation(line: 159, column: 3, scope: !3937)
!3947 = distinct !DISubprogram(name: "setlocale_null", scope: !758, file: !758, line: 186, type: !3948, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !3950)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!125, !150}
!3950 = !{!3951}
!3951 = !DILocalVariable(name: "category", arg: 1, scope: !3947, file: !758, line: 186, type: !150)
!3952 = !DILocation(line: 0, scope: !3947)
!3953 = !DILocation(line: 189, column: 10, scope: !3947)
!3954 = !DILocation(line: 189, column: 3, scope: !3947)
!3955 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !760, file: !760, line: 35, type: !3948, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3956)
!3956 = !{!3957, !3958}
!3957 = !DILocalVariable(name: "category", arg: 1, scope: !3955, file: !760, line: 35, type: !150)
!3958 = !DILocalVariable(name: "result", scope: !3955, file: !760, line: 37, type: !125)
!3959 = !DILocation(line: 0, scope: !3955)
!3960 = !DILocation(line: 37, column: 24, scope: !3955)
!3961 = !DILocation(line: 62, column: 3, scope: !3955)
!3962 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !760, file: !760, line: 66, type: !3938, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3963)
!3963 = !{!3964, !3965, !3966, !3967, !3968}
!3964 = !DILocalVariable(name: "category", arg: 1, scope: !3962, file: !760, line: 66, type: !150)
!3965 = !DILocalVariable(name: "buf", arg: 2, scope: !3962, file: !760, line: 66, type: !148)
!3966 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3962, file: !760, line: 66, type: !152)
!3967 = !DILocalVariable(name: "result", scope: !3962, file: !760, line: 111, type: !125)
!3968 = !DILocalVariable(name: "length", scope: !3969, file: !760, line: 125, type: !152)
!3969 = distinct !DILexicalBlock(scope: !3970, file: !760, line: 124, column: 5)
!3970 = distinct !DILexicalBlock(scope: !3962, file: !760, line: 113, column: 7)
!3971 = !DILocation(line: 0, scope: !3962)
!3972 = !DILocation(line: 0, scope: !3955, inlinedAt: !3973)
!3973 = distinct !DILocation(line: 111, column: 24, scope: !3962)
!3974 = !DILocation(line: 37, column: 24, scope: !3955, inlinedAt: !3973)
!3975 = !DILocation(line: 113, column: 14, scope: !3970)
!3976 = !DILocation(line: 113, column: 7, scope: !3962)
!3977 = !DILocation(line: 116, column: 19, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3979, file: !760, line: 116, column: 11)
!3979 = distinct !DILexicalBlock(scope: !3970, file: !760, line: 114, column: 5)
!3980 = !DILocation(line: 116, column: 11, scope: !3979)
!3981 = !DILocation(line: 120, column: 16, scope: !3978)
!3982 = !DILocation(line: 120, column: 9, scope: !3978)
!3983 = !DILocation(line: 125, column: 23, scope: !3969)
!3984 = !DILocation(line: 0, scope: !3969)
!3985 = !DILocation(line: 126, column: 18, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3969, file: !760, line: 126, column: 11)
!3987 = !DILocation(line: 126, column: 11, scope: !3969)
!3988 = !DILocation(line: 128, column: 39, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3986, file: !760, line: 127, column: 9)
!3990 = !DILocalVariable(name: "__dest", arg: 1, scope: !3991, file: !1581, line: 26, type: !3453)
!3991 = distinct !DISubprogram(name: "memcpy", scope: !1581, file: !1581, line: 26, type: !3451, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3992)
!3992 = !{!3990, !3993, !3994}
!3993 = !DILocalVariable(name: "__src", arg: 2, scope: !3991, file: !1581, line: 26, type: !993)
!3994 = !DILocalVariable(name: "__len", arg: 3, scope: !3991, file: !1581, line: 26, type: !152)
!3995 = !DILocation(line: 0, scope: !3991, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 128, column: 11, scope: !3989)
!3997 = !DILocation(line: 29, column: 10, scope: !3991, inlinedAt: !3996)
!3998 = !DILocation(line: 129, column: 11, scope: !3989)
!3999 = !DILocation(line: 133, column: 23, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !4001, file: !760, line: 133, column: 15)
!4001 = distinct !DILexicalBlock(scope: !3986, file: !760, line: 132, column: 9)
!4002 = !DILocation(line: 133, column: 15, scope: !4001)
!4003 = !DILocation(line: 138, column: 44, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !4000, file: !760, line: 134, column: 13)
!4005 = !DILocation(line: 0, scope: !3991, inlinedAt: !4006)
!4006 = distinct !DILocation(line: 138, column: 15, scope: !4004)
!4007 = !DILocation(line: 29, column: 10, scope: !3991, inlinedAt: !4006)
!4008 = !DILocation(line: 139, column: 15, scope: !4004)
!4009 = !DILocation(line: 139, column: 32, scope: !4004)
!4010 = !DILocation(line: 140, column: 13, scope: !4004)
!4011 = !DILocation(line: 0, scope: !3970)
!4012 = !DILocation(line: 145, column: 1, scope: !3962)
