; ModuleID = 'src/cut.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.field_range_pair = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s OPTION... [FILE]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [66 x i8] c"Print selected parts of lines from each FILE to standard output.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [4 x i8] c"cut\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [53 x i8] c"  -b, --bytes=LIST\0A         select only these bytes\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [63 x i8] c"  -c, --characters=LIST\0A         select only these characters\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [79 x i8] c"  -d, --delimiter=DELIM\0A         use DELIM instead of TAB for field delimiter\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [158 x i8] c"  -f, --fields=LIST\0A         select only these fields;  also print any line that contains\0A         no delimiter character, unless the -s option is specified\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [25 x i8] c"  -n\0A         (ignored)\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [88 x i8] c"      --complement\0A         complement the set of selected bytes, characters or fields\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [78 x i8] c"  -s, --only-delimited\0A         do not print lines not containing delimiters\0A\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [129 x i8] c"      --output-delimiter=STRING\0A         use STRING as the output delimiter;\0A         the default is to use the input delimiter\0A\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [69 x i8] c"  -z, --zero-terminated\0A         line delimiter is NUL, not newline\0A\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !67
@.str.14 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !72
@.str.15 = private unnamed_addr constant [204 x i8] c"\0AUse one, and only one of -b, -c or -f.  Each LIST is made up of one\0Arange, or many ranges separated by commas.  Selected input is written\0Ain the same order that it is read, and is written exactly once.\0A\00", align 1, !dbg !77
@.str.16 = private unnamed_addr constant [262 x i8] c"Each range is one of:\0A\0A  N     N'th byte, character or field, counted from 1\0A  N-    from N'th byte, character or field, to end of line\0A  N-M   from N'th to M'th (included) byte, character or field\0A  -M    from first to M'th (included) byte, character or field\0A\00", align 1, !dbg !82
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !87
@.str.18 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !92
@.str.19 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !97
@.str.20 = private unnamed_addr constant [12 x i8] c"b:c:d:f:nsz\00", align 1, !dbg !102
@longopts = internal constant [11 x %struct.option] [%struct.option { ptr @.str.68, i32 1, ptr null, i32 98 }, %struct.option { ptr @.str.69, i32 1, ptr null, i32 99 }, %struct.option { ptr @.str.70, i32 1, ptr null, i32 102 }, %struct.option { ptr @.str.71, i32 1, ptr null, i32 100 }, %struct.option { ptr @.str.72, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.73, i32 1, ptr null, i32 128 }, %struct.option { ptr @.str.74, i32 0, ptr null, i32 129 }, %struct.option { ptr @.str.75, i32 0, ptr null, i32 122 }, %struct.option { ptr @.str.76, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.77, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !107
@.str.21 = private unnamed_addr constant [31 x i8] c"only one list may be specified\00", align 1, !dbg !178
@optarg = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [41 x i8] c"the delimiter must be a single character\00", align 1, !dbg !180
@delim = internal unnamed_addr global i8 0, align 1, !dbg !227
@output_delimiter_length = internal unnamed_addr global i64 0, align 8, !dbg !229
@output_delimiter_string = internal unnamed_addr global ptr null, align 8, !dbg !231
@suppress_non_delimited = internal unnamed_addr global i1 false, align 1, !dbg !491
@line_delim = internal unnamed_addr global i1 false, align 1, !dbg !492
@complement = internal unnamed_addr global i1 false, align 1, !dbg !493
@.str.23 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !185
@.str.24 = private unnamed_addr constant [15 x i8] c"David M. Ihnat\00", align 1, !dbg !190
@.str.25 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !195
@.str.26 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1, !dbg !200
@.str.27 = private unnamed_addr constant [56 x i8] c"you must specify a list of bytes, characters, or fields\00", align 1, !dbg !205
@.str.28 = private unnamed_addr constant [66 x i8] c"an input delimiter may be specified only when operating on fields\00", align 1, !dbg !210
@.str.29 = private unnamed_addr constant [75 x i8] c"suppressing non-delimited lines makes sense\0A\09only when operating on fields\00", align 1, !dbg !212
@output_delimiter_default = internal global [1 x i8] zeroinitializer, align 1, !dbg !233
@optind = external local_unnamed_addr global i32, align 4
@.str.30 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !217
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !494
@stdin = external local_unnamed_addr global ptr, align 8
@.str.31 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !237
@.str.32 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !239
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !241
@.str.33 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !323
@.str.34 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !328
@.str.35 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !330
@.str.36 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !332
@.str.50 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !372
@.str.51 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !374
@.str.52 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !376
@.str.53 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !381
@.str.54 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !386
@.str.55 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !388
@.str.56 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !393
@.str.57 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !395
@.str.58 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !397
@.str.59 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !399
@.str.63 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !410
@.str.64 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !412
@.str.65 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !417
@.str.66 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !422
@.str.67 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !427
@.str.68 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1, !dbg !429
@.str.69 = private unnamed_addr constant [11 x i8] c"characters\00", align 1, !dbg !431
@.str.70 = private unnamed_addr constant [7 x i8] c"fields\00", align 1, !dbg !436
@.str.71 = private unnamed_addr constant [10 x i8] c"delimiter\00", align 1, !dbg !438
@.str.72 = private unnamed_addr constant [15 x i8] c"only-delimited\00", align 1, !dbg !440
@.str.73 = private unnamed_addr constant [17 x i8] c"output-delimiter\00", align 1, !dbg !442
@.str.74 = private unnamed_addr constant [11 x i8] c"complement\00", align 1, !dbg !444
@.str.75 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1, !dbg !446
@.str.76 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !448
@.str.77 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !450
@current_rp = internal unnamed_addr global ptr null, align 8, !dbg !454
@.str.78 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !464
@field_1_buffer = internal global ptr null, align 8, !dbg !473
@field_1_bufsize = internal global i64 0, align 8, !dbg !475
@.str.79 = private unnamed_addr constant [13 x i8] c"n_bytes != 0\00", align 1, !dbg !466
@.str.80 = private unnamed_addr constant [10 x i8] c"src/cut.c\00", align 1, !dbg !468
@__PRETTY_FUNCTION__.cut_fields = private unnamed_addr constant [24 x i8] c"void cut_fields(FILE *)\00", align 1, !dbg !470
@.str.81 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !477
@.str.82 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !479
@.str.37 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !495
@.str.1.39 = private unnamed_addr constant [32 x i8] c"invalid byte or character range\00", align 1, !dbg !498
@.str.2.38 = private unnamed_addr constant [20 x i8] c"invalid field range\00", align 1, !dbg !503
@.str.3.41 = private unnamed_addr constant [45 x i8] c"byte/character positions are numbered from 1\00", align 1, !dbg !505
@.str.4.40 = private unnamed_addr constant [27 x i8] c"fields are numbered from 1\00", align 1, !dbg !510
@.str.5.42 = private unnamed_addr constant [34 x i8] c"invalid range with no endpoint: -\00", align 1, !dbg !512
@.str.6.43 = private unnamed_addr constant [25 x i8] c"invalid decreasing range\00", align 1, !dbg !517
@set_fields.num_start = internal unnamed_addr global ptr null, align 8, !dbg !519
@.str.7.44 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1, !dbg !528
@.str.8.46 = private unnamed_addr constant [38 x i8] c"byte/character offset %s is too large\00", align 1, !dbg !530
@.str.9.45 = private unnamed_addr constant [29 x i8] c"field number %s is too large\00", align 1, !dbg !535
@.str.10.48 = private unnamed_addr constant [35 x i8] c"invalid byte/character position %s\00", align 1, !dbg !540
@.str.11.47 = private unnamed_addr constant [23 x i8] c"invalid field value %s\00", align 1, !dbg !545
@n_frp = dso_local local_unnamed_addr global i64 0, align 8, !dbg !561
@.str.12.50 = private unnamed_addr constant [41 x i8] c"missing list of byte/character positions\00", align 1, !dbg !550
@.str.13.49 = private unnamed_addr constant [23 x i8] c"missing list of fields\00", align 1, !dbg !552
@frp = dso_local local_unnamed_addr global ptr null, align 8, !dbg !554
@n_frp_allocated = internal global i64 0, align 8, !dbg !566
@.str.60 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !591
@Version = dso_local local_unnamed_addr global ptr @.str.60, align 8, !dbg !594
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !598
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !611
@.str.83 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !603
@.str.1.84 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !605
@.str.2.85 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !607
@.str.3.86 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !609
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !613
@stderr = external local_unnamed_addr global ptr, align 8
@.str.87 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !619
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !651
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !621
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !641
@.str.1.93 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !643
@.str.2.95 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !645
@.str.3.94 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !647
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !649
@.str.4.88 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !653
@.str.5.89 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !655
@.str.6.90 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !660
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !665
@.str.118 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !671
@.str.1.119 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !673
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !675
@.str.122 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !706
@.str.1.123 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !709
@.str.2.124 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !711
@.str.3.125 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !713
@.str.4.126 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !715
@.str.5.127 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !717
@.str.6.128 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !719
@.str.7.129 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !721
@.str.8.130 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !723
@.str.9.131 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !725
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.122, ptr @.str.1.123, ptr @.str.2.124, ptr @.str.3.125, ptr @.str.4.126, ptr @.str.5.127, ptr @.str.6.128, ptr @.str.7.129, ptr @.str.8.130, ptr @.str.9.131, ptr null], align 16, !dbg !727
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !738
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !752
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !790
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !797
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !754
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !799
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !742
@.str.10.134 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !759
@.str.11.132 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !761
@.str.12.135 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !763
@.str.13.133 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !765
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !767
@.str.142 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !803
@.str.1.143 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !806
@.str.2.144 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !808
@.str.3.145 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !810
@.str.4.146 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !812
@.str.5.147 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !814
@.str.6.148 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !819
@.str.7.149 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !821
@.str.8.150 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !823
@.str.9.151 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !825
@.str.10.152 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !830
@.str.11.153 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !832
@.str.12.154 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !837
@.str.13.155 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !839
@.str.14.156 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !844
@.str.15.157 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !849
@.str.16.158 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !854
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.163 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !859
@.str.18.164 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !861
@.str.19.165 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !863
@.str.20.166 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !865
@.str.21.167 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !867
@.str.22.168 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !869
@.str.23.169 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !871
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !873
@exit_failure = dso_local global i32 1, align 4, !dbg !881
@.str.186 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !887
@.str.1.184 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !890
@.str.2.185 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !892
@.str.197 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !894
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !897
@.str.1.204 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !912

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1007 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1011, metadata !DIExpression()), !dbg !1012
  %2 = icmp eq i32 %0, 0, !dbg !1013
  br i1 %2, label %8, label %3, !dbg !1015

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1016, !tbaa !1018
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #41, !dbg !1016
  %6 = load ptr, ptr @program_name, align 8, !dbg !1016, !tbaa !1018
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #41, !dbg !1016
  br label %52, !dbg !1016

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #41, !dbg !1022
  %10 = load ptr, ptr @program_name, align 8, !dbg !1022, !tbaa !1018
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #41, !dbg !1022
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #41, !dbg !1024
  %13 = load ptr, ptr @stdout, align 8, !dbg !1024, !tbaa !1018
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1024
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #41, !dbg !1025
  %16 = load ptr, ptr @stdout, align 8, !dbg !1025, !tbaa !1018
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !1025
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #41, !dbg !1029
  %19 = load ptr, ptr @stdout, align 8, !dbg !1029, !tbaa !1018
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !1029
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #41, !dbg !1032
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1032
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #41, !dbg !1033
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1033
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #41, !dbg !1034
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1034
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #41, !dbg !1035
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1035
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #41, !dbg !1036
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !1036
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #41, !dbg !1037
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !1037
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #41, !dbg !1038
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !1038
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #41, !dbg !1039
  tail call fastcc void @oputs_(ptr noundef %28), !dbg !1039
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #41, !dbg !1040
  tail call fastcc void @oputs_(ptr noundef %29), !dbg !1040
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #41, !dbg !1041
  tail call fastcc void @oputs_(ptr noundef %30), !dbg !1041
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #41, !dbg !1042
  tail call fastcc void @oputs_(ptr noundef %31), !dbg !1042
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #41, !dbg !1043
  %33 = load ptr, ptr @stdout, align 8, !dbg !1043, !tbaa !1018
  %34 = tail call i32 @fputs_unlocked(ptr noundef %32, ptr noundef %33), !dbg !1043
  %35 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #41, !dbg !1044
  %36 = load ptr, ptr @stdout, align 8, !dbg !1044, !tbaa !1018
  %37 = tail call i32 @fputs_unlocked(ptr noundef %35, ptr noundef %36), !dbg !1044
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1045, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1057, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata ptr poison, metadata !1057, metadata !DIExpression()), !dbg !1062
  tail call void @emit_bug_reporting_address() #41, !dbg !1064
  %38 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #41, !dbg !1065
  call void @llvm.dbg.value(metadata ptr %38, metadata !1060, metadata !DIExpression()), !dbg !1062
  %39 = icmp eq ptr %38, null, !dbg !1066
  br i1 %39, label %47, label %40, !dbg !1068

40:                                               ; preds = %8
  %41 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(4) @.str.63, i64 noundef 3) #42, !dbg !1069
  %42 = icmp eq i32 %41, 0, !dbg !1069
  br i1 %42, label %47, label %43, !dbg !1070

43:                                               ; preds = %40
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #41, !dbg !1071
  %45 = load ptr, ptr @stdout, align 8, !dbg !1071, !tbaa !1018
  %46 = tail call i32 @fputs_unlocked(ptr noundef %44, ptr noundef %45), !dbg !1071
  br label %47, !dbg !1073

47:                                               ; preds = %8, %40, %43
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1057, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1061, metadata !DIExpression()), !dbg !1062
  %48 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #41, !dbg !1074
  %49 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %48, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.3) #41, !dbg !1074
  %50 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #41, !dbg !1075
  %51 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %50, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.67) #41, !dbg !1075
  br label %52

52:                                               ; preds = %47, %3
  tail call void @exit(i32 noundef %0) #43, !dbg !1076
  unreachable, !dbg !1076
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1077 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1081 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1087 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1090 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !243 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !247, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !1094
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1095, !tbaa !1096
  %3 = icmp eq i32 %2, -1, !dbg !1098
  br i1 %3, label %4, label %16, !dbg !1099

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.33) #41, !dbg !1100
  call void @llvm.dbg.value(metadata ptr %5, metadata !249, metadata !DIExpression()), !dbg !1101
  %6 = icmp eq ptr %5, null, !dbg !1102
  br i1 %6, label %14, label %7, !dbg !1103

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1104, !tbaa !1105
  %9 = icmp eq i8 %8, 0, !dbg !1104
  br i1 %9, label %14, label %10, !dbg !1106

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1107, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata ptr @.str.34, metadata !1113, metadata !DIExpression()), !dbg !1114
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.34) #42, !dbg !1116
  %12 = icmp eq i32 %11, 0, !dbg !1117
  %13 = zext i1 %12 to i32, !dbg !1106
  br label %14, !dbg !1106

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1118, !tbaa !1096
  br label %16, !dbg !1119

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1120
  %18 = icmp eq i32 %17, 0, !dbg !1120
  br i1 %18, label %22, label %19, !dbg !1122

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1123, !tbaa !1018
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1123
  br label %128, !dbg !1125

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !252, metadata !DIExpression()), !dbg !1094
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.35) #42, !dbg !1126
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1127
  call void @llvm.dbg.value(metadata ptr %24, metadata !253, metadata !DIExpression()), !dbg !1094
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #42, !dbg !1128
  call void @llvm.dbg.value(metadata ptr %25, metadata !254, metadata !DIExpression()), !dbg !1094
  %26 = icmp eq ptr %25, null, !dbg !1129
  br i1 %26, label %58, label %27, !dbg !1130

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1131
  br i1 %28, label %58, label %29, !dbg !1132

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !255, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i64 0, metadata !259, metadata !DIExpression()), !dbg !1133
  %30 = icmp ult ptr %24, %25, !dbg !1134
  br i1 %30, label %31, label %52, !dbg !1135

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #44, !dbg !1094
  %33 = load ptr, ptr %32, align 8, !tbaa !1018
  br label %34, !dbg !1135

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !255, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i64 %36, metadata !259, metadata !DIExpression()), !dbg !1133
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1136
  call void @llvm.dbg.value(metadata ptr %37, metadata !255, metadata !DIExpression()), !dbg !1133
  %38 = load i8, ptr %35, align 1, !dbg !1136, !tbaa !1105
  %39 = sext i8 %38 to i64, !dbg !1136
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1136
  %41 = load i16, ptr %40, align 2, !dbg !1136, !tbaa !1137
  %42 = freeze i16 %41, !dbg !1139
  %43 = lshr i16 %42, 13, !dbg !1139
  %44 = and i16 %43, 1, !dbg !1139
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1140
  call void @llvm.dbg.value(metadata i64 %46, metadata !259, metadata !DIExpression()), !dbg !1133
  %47 = icmp ult ptr %37, %25, !dbg !1134
  %48 = icmp ult i64 %46, 2, !dbg !1141
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1141
  br i1 %49, label %34, label %50, !dbg !1135, !llvm.loop !1142

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1144
  br i1 %51, label %52, label %54, !dbg !1146

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1146

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !1146
  call void @llvm.dbg.value(metadata i8 %57, metadata !252, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata ptr %56, metadata !254, metadata !DIExpression()), !dbg !1094
  br label %58, !dbg !1147

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !1094
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !1094
  call void @llvm.dbg.value(metadata i8 %60, metadata !252, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata ptr %59, metadata !254, metadata !DIExpression()), !dbg !1094
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.36) #42, !dbg !1148
  call void @llvm.dbg.value(metadata i64 %61, metadata !260, metadata !DIExpression()), !dbg !1094
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !1149
  call void @llvm.dbg.value(metadata ptr %62, metadata !261, metadata !DIExpression()), !dbg !1094
  br label %63, !dbg !1150

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !1094
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !1094
  call void @llvm.dbg.value(metadata i8 %65, metadata !252, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata ptr %64, metadata !261, metadata !DIExpression()), !dbg !1094
  %66 = load i8, ptr %64, align 1, !dbg !1151, !tbaa !1105
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !1152

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1153
  %69 = load i8, ptr %68, align 1, !dbg !1156, !tbaa !1105
  %70 = icmp eq i8 %69, 45, !dbg !1157
  %71 = select i1 %70, i8 0, i8 %65, !dbg !1158
  br label %72, !dbg !1158

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !1094
  call void @llvm.dbg.value(metadata i8 %73, metadata !252, metadata !DIExpression()), !dbg !1094
  %74 = tail call ptr @__ctype_b_loc() #44, !dbg !1159
  %75 = load ptr, ptr %74, align 8, !dbg !1159, !tbaa !1018
  %76 = sext i8 %66 to i64, !dbg !1159
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !1159
  %78 = load i16, ptr %77, align 2, !dbg !1159, !tbaa !1137
  %79 = and i16 %78, 8192, !dbg !1159
  %80 = icmp eq i16 %79, 0, !dbg !1159
  br i1 %80, label %96, label %81, !dbg !1161

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !1162
  br i1 %82, label %98, label %83, !dbg !1165

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1166
  %85 = load i8, ptr %84, align 1, !dbg !1166, !tbaa !1105
  %86 = sext i8 %85 to i64, !dbg !1166
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !1166
  %88 = load i16, ptr %87, align 2, !dbg !1166, !tbaa !1137
  %89 = and i16 %88, 8192, !dbg !1166
  %90 = icmp eq i16 %89, 0, !dbg !1166
  br i1 %90, label %91, label %98, !dbg !1167

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !1168
  %93 = icmp ne i8 %92, 0, !dbg !1168
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !1170
  br i1 %95, label %96, label %98, !dbg !1170

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1171
  call void @llvm.dbg.value(metadata ptr %97, metadata !261, metadata !DIExpression()), !dbg !1094
  br label %63, !dbg !1150, !llvm.loop !1172

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !1174
  %100 = load ptr, ptr @stdout, align 8, !dbg !1174, !tbaa !1018
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !1174
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1107, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1107, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1107, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1107, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1107, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1107, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1107, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1107, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1107, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1107, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !318, metadata !DIExpression()), !dbg !1094
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.50, i64 noundef 6) #42, !dbg !1195
  %103 = icmp eq i32 %102, 0, !dbg !1195
  br i1 %103, label %107, label %104, !dbg !1197

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.51, i64 noundef 9) #42, !dbg !1198
  %106 = icmp eq i32 %105, 0, !dbg !1198
  br i1 %106, label %107, label %110, !dbg !1199

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1200
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #41, !dbg !1200
  br label %113, !dbg !1202

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1203
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #41, !dbg !1203
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1205, !tbaa !1018
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.56, ptr noundef %114), !dbg !1205
  %116 = load ptr, ptr @stdout, align 8, !dbg !1206, !tbaa !1018
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.57, ptr noundef %116), !dbg !1206
  %118 = ptrtoint ptr %64 to i64, !dbg !1207
  %119 = sub i64 %118, %99, !dbg !1207
  %120 = load ptr, ptr @stdout, align 8, !dbg !1207, !tbaa !1018
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1207
  %122 = load ptr, ptr @stdout, align 8, !dbg !1208, !tbaa !1018
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.58, ptr noundef %122), !dbg !1208
  %124 = load ptr, ptr @stdout, align 8, !dbg !1209, !tbaa !1018
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.59, ptr noundef %124), !dbg !1209
  %126 = load ptr, ptr @stdout, align 8, !dbg !1210, !tbaa !1018
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1210
  br label %128, !dbg !1211

128:                                              ; preds = %113, %19
  ret void, !dbg !1211
}

; Function Attrs: nounwind
declare !dbg !1212 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1216 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1220 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1222 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1225 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1228 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1231 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1234 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1240 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1241 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1247 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1252, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata ptr %1, metadata !1253, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i8 0, metadata !1256, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i8 0, metadata !1257, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata ptr null, metadata !1258, metadata !DIExpression()), !dbg !1263
  %3 = load ptr, ptr %1, align 8, !dbg !1264, !tbaa !1018
  tail call void @set_program_name(ptr noundef %3) #41, !dbg !1265
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.17) #41, !dbg !1266
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #41, !dbg !1267
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.18) #41, !dbg !1268
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #41, !dbg !1269
  br label %8, !dbg !1270

8:                                                ; preds = %36, %2
  %9 = phi i1 [ false, %36 ], [ true, %2 ]
  %10 = phi i8 [ %13, %36 ], [ 0, %2 ]
  %11 = phi ptr [ %14, %36 ], [ null, %2 ]
  br label %12, !dbg !1270

12:                                               ; preds = %8, %24
  %13 = phi i8 [ %10, %8 ], [ %20, %24 ]
  %14 = phi ptr [ %11, %8 ], [ %25, %24 ]
  br label %15, !dbg !1270

15:                                               ; preds = %17, %12
  call void @llvm.dbg.value(metadata ptr %14, metadata !1258, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i8 %13, metadata !1257, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i8 poison, metadata !1256, metadata !DIExpression()), !dbg !1263
  %16 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.20, ptr noundef nonnull @longopts, ptr noundef null) #41, !dbg !1271
  call void @llvm.dbg.value(metadata i32 %16, metadata !1254, metadata !DIExpression()), !dbg !1263
  switch i32 %16, label %55 [
    i32 -1, label %56
    i32 98, label %19
    i32 99, label %19
    i32 102, label %18
    i32 100, label %26
    i32 128, label %37
    i32 110, label %17
    i32 115, label %45
    i32 122, label %46
    i32 129, label %47
    i32 -130, label %48
    i32 -131, label %49
  ], !dbg !1270

17:                                               ; preds = %15, %47, %46, %45, %43
  br label %15, !dbg !1263, !llvm.loop !1272

18:                                               ; preds = %15
  br label %19, !dbg !1274

19:                                               ; preds = %15, %15, %18
  %20 = phi i8 [ %13, %18 ], [ 1, %15 ], [ 1, %15 ], !dbg !1263
  call void @llvm.dbg.value(metadata i8 %20, metadata !1257, metadata !DIExpression()), !dbg !1263
  %21 = icmp eq ptr %14, null, !dbg !1274
  br i1 %21, label %24, label %22, !dbg !1278

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #41, !dbg !1279
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %23) #41, !dbg !1279
  tail call void @usage(i32 noundef 1) #45, !dbg !1279
  unreachable, !dbg !1279

24:                                               ; preds = %19
  %25 = load ptr, ptr @optarg, align 8, !dbg !1281, !tbaa !1018
  call void @llvm.dbg.value(metadata ptr %25, metadata !1258, metadata !DIExpression()), !dbg !1263
  br label %12, !dbg !1282, !llvm.loop !1272

26:                                               ; preds = %15
  %27 = load ptr, ptr @optarg, align 8, !dbg !1283, !tbaa !1018
  %28 = load i8, ptr %27, align 1, !dbg !1283, !tbaa !1105
  %29 = icmp eq i8 %28, 0, !dbg !1285
  br i1 %29, label %36, label %30, !dbg !1286

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %27, i64 1, !dbg !1287
  %32 = load i8, ptr %31, align 1, !dbg !1287, !tbaa !1105
  %33 = icmp eq i8 %32, 0, !dbg !1288
  br i1 %33, label %36, label %34, !dbg !1289

34:                                               ; preds = %30
  %35 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #41, !dbg !1290
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %35) #41, !dbg !1290
  tail call void @usage(i32 noundef 1) #45, !dbg !1290
  unreachable, !dbg !1290

36:                                               ; preds = %30, %26
  store i8 %28, ptr @delim, align 1, !dbg !1292, !tbaa !1105
  call void @llvm.dbg.value(metadata i8 1, metadata !1256, metadata !DIExpression()), !dbg !1263
  br label %8, !dbg !1293, !llvm.loop !1272

37:                                               ; preds = %15
  %38 = load ptr, ptr @optarg, align 8, !dbg !1294, !tbaa !1018
  %39 = load i8, ptr %38, align 1, !dbg !1294, !tbaa !1105
  %40 = icmp eq i8 %39, 0, !dbg !1295
  br i1 %40, label %43, label %41, !dbg !1294

41:                                               ; preds = %37
  %42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %38) #42, !dbg !1296
  br label %43, !dbg !1294

43:                                               ; preds = %37, %41
  %44 = phi i64 [ %42, %41 ], [ 1, %37 ], !dbg !1294
  store i64 %44, ptr @output_delimiter_length, align 8, !dbg !1297, !tbaa !1298
  store ptr %38, ptr @output_delimiter_string, align 8, !dbg !1300, !tbaa !1018
  br label %17, !dbg !1301

45:                                               ; preds = %15
  store i1 true, ptr @suppress_non_delimited, align 1, !dbg !1302
  br label %17, !dbg !1303

46:                                               ; preds = %15
  store i1 true, ptr @line_delim, align 1, !dbg !1304
  br label %17, !dbg !1305

47:                                               ; preds = %15
  store i1 true, ptr @complement, align 1, !dbg !1306
  br label %17, !dbg !1307

48:                                               ; preds = %15
  tail call void @usage(i32 noundef 0) #45, !dbg !1308
  unreachable, !dbg !1308

49:                                               ; preds = %15
  %50 = load ptr, ptr @stdout, align 8, !dbg !1309, !tbaa !1018
  %51 = load ptr, ptr @Version, align 8, !dbg !1309, !tbaa !1018
  %52 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.24) #41, !dbg !1309
  %53 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.25) #41, !dbg !1309
  %54 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.26) #41, !dbg !1309
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %50, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23, ptr noundef %51, ptr noundef %52, ptr noundef %53, ptr noundef %54, ptr noundef null) #41, !dbg !1309
  tail call void @exit(i32 noundef 0) #43, !dbg !1309
  unreachable, !dbg !1309

55:                                               ; preds = %15
  tail call void @usage(i32 noundef 1) #45, !dbg !1310
  unreachable, !dbg !1310

56:                                               ; preds = %15
  %57 = icmp eq ptr %14, null, !dbg !1311
  br i1 %57, label %58, label %60, !dbg !1313

58:                                               ; preds = %56
  %59 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #41, !dbg !1314
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %59) #41, !dbg !1314
  tail call void @usage(i32 noundef 1) #45, !dbg !1314
  unreachable, !dbg !1314

60:                                               ; preds = %56
  %61 = and i8 %13, 1, !dbg !1316
  %62 = icmp eq i8 %61, 0, !dbg !1316
  br i1 %62, label %70, label %63, !dbg !1318

63:                                               ; preds = %60
  br i1 %9, label %66, label %64, !dbg !1319

64:                                               ; preds = %63
  %65 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #41, !dbg !1321
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %65) #41, !dbg !1321
  tail call void @usage(i32 noundef 1) #45, !dbg !1321
  unreachable, !dbg !1321

66:                                               ; preds = %63
  %67 = load i1, ptr @suppress_non_delimited, align 1, !dbg !1324
  br i1 %67, label %68, label %76, !dbg !1326

68:                                               ; preds = %66
  %69 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #41, !dbg !1327
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %69) #41, !dbg !1327
  tail call void @usage(i32 noundef 1) #45, !dbg !1327
  unreachable, !dbg !1327

70:                                               ; preds = %60
  %71 = shl nuw nsw i8 %61, 2, !dbg !1329
  %72 = zext i8 %71 to i32, !dbg !1329
  %73 = load i1, ptr @complement, align 1, !dbg !1330
  %74 = select i1 %73, i32 2, i32 0, !dbg !1330
  %75 = or i32 %74, %72, !dbg !1331
  tail call void @set_fields(ptr noundef nonnull %14, i32 noundef %75) #41, !dbg !1332
  br i1 %9, label %82, label %83, !dbg !1333

76:                                               ; preds = %66
  %77 = shl nuw nsw i8 %61, 2, !dbg !1329
  %78 = zext i8 %77 to i32, !dbg !1329
  %79 = load i1, ptr @complement, align 1, !dbg !1330
  %80 = select i1 %79, i32 2, i32 0, !dbg !1330
  %81 = or i32 %80, %78, !dbg !1331
  tail call void @set_fields(ptr noundef nonnull %14, i32 noundef %81) #41, !dbg !1332
  br label %82, !dbg !1333

82:                                               ; preds = %76, %70
  store i8 9, ptr @delim, align 1, !dbg !1334, !tbaa !1105
  br label %83, !dbg !1336

83:                                               ; preds = %82, %70
  %84 = load ptr, ptr @output_delimiter_string, align 8, !dbg !1337, !tbaa !1018
  %85 = icmp eq ptr %84, null, !dbg !1339
  br i1 %85, label %86, label %88, !dbg !1340

86:                                               ; preds = %83
  %87 = load i8, ptr @delim, align 1, !dbg !1341, !tbaa !1105
  store i8 %87, ptr @output_delimiter_default, align 1, !dbg !1343, !tbaa !1105
  store ptr @output_delimiter_default, ptr @output_delimiter_string, align 8, !dbg !1344, !tbaa !1018
  store i64 1, ptr @output_delimiter_length, align 8, !dbg !1345, !tbaa !1298
  br label %88, !dbg !1346

88:                                               ; preds = %86, %83
  %89 = select i1 %62, ptr @cut_fields, ptr @cut_bytes, !dbg !1347
  call void @llvm.dbg.value(metadata ptr %89, metadata !1259, metadata !DIExpression()), !dbg !1263
  %90 = load i32, ptr @optind, align 4, !dbg !1348, !tbaa !1096
  %91 = icmp eq i32 %90, %0, !dbg !1350
  br i1 %91, label %94, label %92, !dbg !1351

92:                                               ; preds = %88
  call void @llvm.dbg.value(metadata i8 1, metadata !1255, metadata !DIExpression()), !dbg !1263
  %93 = icmp slt i32 %90, %0, !dbg !1352
  br i1 %93, label %96, label %107, !dbg !1355

94:                                               ; preds = %88
  %95 = tail call fastcc zeroext i1 @cut_file(ptr noundef nonnull @.str.30, ptr noundef nonnull %89), !dbg !1356
  call void @llvm.dbg.value(metadata i1 %95, metadata !1255, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1263
  br label %107, !dbg !1357

96:                                               ; preds = %92, %96
  %97 = phi i32 [ %105, %96 ], [ %90, %92 ]
  %98 = phi i1 [ %103, %96 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1255, metadata !DIExpression()), !dbg !1263
  %99 = sext i32 %97 to i64, !dbg !1358
  %100 = getelementptr inbounds ptr, ptr %1, i64 %99, !dbg !1358
  %101 = load ptr, ptr %100, align 8, !dbg !1358, !tbaa !1018
  %102 = tail call fastcc zeroext i1 @cut_file(ptr noundef %101, ptr noundef nonnull %89), !dbg !1359
  %103 = and i1 %98, %102, !dbg !1360
  call void @llvm.dbg.value(metadata i1 %103, metadata !1255, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1263
  %104 = load i32, ptr @optind, align 4, !dbg !1361, !tbaa !1096
  %105 = add nsw i32 %104, 1, !dbg !1361
  store i32 %105, ptr @optind, align 4, !dbg !1361, !tbaa !1096
  %106 = icmp slt i32 %105, %0, !dbg !1352
  br i1 %106, label %96, label %107, !dbg !1355, !llvm.loop !1362

107:                                              ; preds = %96, %92, %94
  %108 = phi i1 [ %95, %94 ], [ true, %92 ], [ %103, %96 ]
  call void @llvm.dbg.value(metadata i1 %108, metadata !1255, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1263
  %109 = load i1, ptr @have_read_stdin, align 1, !dbg !1364
  br i1 %109, label %110, label %117, !dbg !1366

110:                                              ; preds = %107
  %111 = load ptr, ptr @stdin, align 8, !dbg !1367, !tbaa !1018
  %112 = tail call i32 @rpl_fclose(ptr noundef %111) #41, !dbg !1368
  %113 = icmp eq i32 %112, -1, !dbg !1369
  br i1 %113, label %114, label %117, !dbg !1370

114:                                              ; preds = %110
  %115 = tail call ptr @__errno_location() #44, !dbg !1371
  %116 = load i32, ptr %115, align 4, !dbg !1371, !tbaa !1096
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %116, ptr noundef nonnull @.str.30) #41, !dbg !1371
  call void @llvm.dbg.value(metadata i8 0, metadata !1255, metadata !DIExpression()), !dbg !1263
  br label %117, !dbg !1373

117:                                              ; preds = %114, %110, %107
  %118 = phi i1 [ false, %114 ], [ %108, %110 ], [ %108, %107 ]
  call void @llvm.dbg.value(metadata i1 %118, metadata !1255, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1263
  %119 = xor i1 %118, true, !dbg !1374
  %120 = zext i1 %119 to i32, !dbg !1374
  ret i32 %120, !dbg !1375
}

; Function Attrs: nounwind
declare !dbg !1376 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1379 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1380 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1383 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1389 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @cut_fields(ptr noundef %0) #10 !dbg !1392 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1394, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 1, metadata !1396, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 0, metadata !1397, metadata !DIExpression()), !dbg !1438
  %2 = load ptr, ptr @frp, align 8, !dbg !1439, !tbaa !1018
  store ptr %2, ptr @current_rp, align 8, !dbg !1440, !tbaa !1018
  call void @llvm.dbg.value(metadata ptr %0, metadata !1441, metadata !DIExpression()), !dbg !1447
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !1449
  %4 = load ptr, ptr %3, align 8, !dbg !1449, !tbaa !1450
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !1449
  %6 = load ptr, ptr %5, align 8, !dbg !1449, !tbaa !1452
  %7 = icmp ult ptr %4, %6, !dbg !1449
  br i1 %7, label %8, label %12, !dbg !1449, !prof !1453

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !1449
  store ptr %9, ptr %3, align 8, !dbg !1449, !tbaa !1450
  %10 = load i8, ptr %4, align 1, !dbg !1449, !tbaa !1105
  %11 = zext i8 %10 to i32, !dbg !1449
  call void @llvm.dbg.value(metadata i32 %11, metadata !1395, metadata !DIExpression()), !dbg !1438
  br label %15, !dbg !1454

12:                                               ; preds = %1
  %13 = tail call i32 @__uflow(ptr noundef nonnull %0) #41, !dbg !1449
  call void @llvm.dbg.value(metadata i32 %13, metadata !1395, metadata !DIExpression()), !dbg !1438
  %14 = icmp eq i32 %13, -1, !dbg !1455
  br i1 %14, label %337, label %15, !dbg !1454

15:                                               ; preds = %8, %12
  %16 = phi i32 [ %11, %8 ], [ %13, %12 ]
  %17 = tail call i32 @ungetc(i32 noundef %16, ptr noundef nonnull %0), !dbg !1457
  call void @llvm.dbg.value(metadata i32 0, metadata !1395, metadata !DIExpression()), !dbg !1438
  %18 = load i1, ptr @suppress_non_delimited, align 1, !dbg !1458
  call void @llvm.dbg.value(metadata i64 1, metadata !1459, metadata !DIExpression()), !dbg !1464
  %19 = load ptr, ptr @current_rp, align 8, !dbg !1466, !tbaa !1018
  %20 = load i64, ptr %19, align 8, !dbg !1467, !tbaa !1468
  %21 = icmp ult i64 %20, 2, !dbg !1470
  %22 = xor i1 %18, %21, !dbg !1471
  call void @llvm.dbg.value(metadata i1 %22, metadata !1398, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1438
  br label %23, !dbg !1472

23:                                               ; preds = %77, %15
  %24 = phi i64 [ 1, %15 ], [ %78, %77 ], !dbg !1438
  %25 = phi i8 [ 0, %15 ], [ %79, %77 ], !dbg !1438
  %26 = phi i32 [ 0, %15 ], [ %80, %77 ], !dbg !1438
  call void @llvm.dbg.value(metadata i32 %26, metadata !1395, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %25, metadata !1397, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %24, metadata !1396, metadata !DIExpression()), !dbg !1438
  %27 = icmp ne i64 %24, 1, !dbg !1473
  %28 = select i1 %27, i1 true, i1 %22, !dbg !1474
  br i1 %28, label %29, label %31, !dbg !1474

29:                                               ; preds = %23
  %30 = load ptr, ptr @current_rp, align 8, !dbg !1475, !tbaa !1018
  br label %151, !dbg !1474

31:                                               ; preds = %23
  %32 = load i8, ptr @delim, align 1, !dbg !1477, !tbaa !1105
  %33 = zext i8 %32 to i32, !dbg !1477
  %34 = load i1, ptr @line_delim, align 1, !dbg !1478
  %35 = select i1 %34, i32 0, i32 10, !dbg !1478
  %36 = tail call i64 @getndelim2(ptr noundef nonnull @field_1_buffer, ptr noundef nonnull @field_1_bufsize, i64 noundef 0, i64 noundef -1, i32 noundef %33, i32 noundef %35, ptr noundef %0) #41, !dbg !1479
  call void @llvm.dbg.value(metadata i64 %36, metadata !1399, metadata !DIExpression()), !dbg !1480
  %37 = icmp slt i64 %36, 0, !dbg !1481
  br i1 %37, label %38, label %44, !dbg !1483

38:                                               ; preds = %31
  %39 = load ptr, ptr @field_1_buffer, align 8, !dbg !1484, !tbaa !1018
  tail call void @free(ptr noundef %39) #41, !dbg !1486
  store ptr null, ptr @field_1_buffer, align 8, !dbg !1487, !tbaa !1018
  call void @llvm.dbg.value(metadata ptr %0, metadata !1488, metadata !DIExpression()), !dbg !1491
  %40 = load i32, ptr %0, align 8, !dbg !1494, !tbaa !1495
  %41 = and i32 %40, 48, !dbg !1496
  %42 = icmp eq i32 %41, 0, !dbg !1496
  br i1 %42, label %43, label %337, !dbg !1496

43:                                               ; preds = %38
  tail call void @xalloc_die() #43, !dbg !1497
  unreachable, !dbg !1497

44:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i64 %36, metadata !1405, metadata !DIExpression()), !dbg !1480
  %45 = icmp eq i64 %36, 0, !dbg !1498
  br i1 %45, label %46, label %47, !dbg !1501

46:                                               ; preds = %44
  tail call void @__assert_fail(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef 335, ptr noundef nonnull @__PRETTY_FUNCTION__.cut_fields) #43, !dbg !1498
  unreachable, !dbg !1498

47:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i32 0, metadata !1395, metadata !DIExpression()), !dbg !1438
  %48 = load ptr, ptr @field_1_buffer, align 8, !dbg !1502, !tbaa !1018
  %49 = add nsw i64 %36, -1, !dbg !1503
  %50 = getelementptr inbounds i8, ptr %48, i64 %49, !dbg !1502
  %51 = load i8, ptr %50, align 1, !dbg !1502, !tbaa !1105
  %52 = load i8, ptr @delim, align 1, !dbg !1504, !tbaa !1105
  %53 = icmp eq i8 %51, %52, !dbg !1505
  br i1 %53, label %106, label %54, !dbg !1506

54:                                               ; preds = %47
  %55 = load i1, ptr @suppress_non_delimited, align 1, !dbg !1507
  br i1 %55, label %77, label %56, !dbg !1508

56:                                               ; preds = %54
  %57 = load ptr, ptr @stdout, align 8, !dbg !1509, !tbaa !1018
  %58 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %48, i64 noundef 1, i64 noundef %36, ptr noundef %57), !dbg !1509
  %59 = icmp eq i64 %58, %36, !dbg !1510
  br i1 %59, label %69, label %60, !dbg !1511

60:                                               ; preds = %56
  %61 = tail call ptr @__errno_location() #44, !dbg !1512
  %62 = load i32, ptr %61, align 4, !dbg !1512, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 %62, metadata !1515, metadata !DIExpression()), !dbg !1517
  %63 = load ptr, ptr @stdout, align 8, !dbg !1518, !tbaa !1018
  %64 = tail call i32 @fflush_unlocked(ptr noundef %63) #41, !dbg !1518
  %65 = load ptr, ptr @stdout, align 8, !dbg !1519, !tbaa !1018
  %66 = tail call i32 @fpurge(ptr noundef %65) #41, !dbg !1520
  %67 = load ptr, ptr @stdout, align 8, !dbg !1521, !tbaa !1018
  tail call void @clearerr_unlocked(ptr noundef %67) #41, !dbg !1521
  %68 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #41, !dbg !1522
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %62, ptr noundef %68) #41, !dbg !1522
  unreachable, !dbg !1522

69:                                               ; preds = %56
  %70 = load ptr, ptr @field_1_buffer, align 8, !dbg !1523, !tbaa !1018
  %71 = getelementptr inbounds i8, ptr %70, i64 %49, !dbg !1523
  %72 = load i8, ptr %71, align 1, !dbg !1523, !tbaa !1105
  %73 = sext i8 %72 to i32, !dbg !1523
  %74 = load i1, ptr @line_delim, align 1, !dbg !1525
  %75 = select i1 %74, i32 0, i32 10, !dbg !1525
  %76 = icmp eq i32 %75, %73, !dbg !1526
  br i1 %76, label %77, label %81, !dbg !1527

77:                                               ; preds = %69, %88, %94, %335, %289, %281, %287, %54
  %78 = phi i64 [ 1, %54 ], [ 1, %335 ], [ %153, %289 ], [ %282, %281 ], [ %282, %287 ], [ 1, %94 ], [ 1, %88 ], [ 1, %69 ]
  %79 = phi i8 [ %25, %54 ], [ 0, %335 ], [ %249, %289 ], [ %249, %281 ], [ %249, %287 ], [ %25, %94 ], [ %25, %88 ], [ %25, %69 ]
  %80 = phi i32 [ 0, %54 ], [ %298, %335 ], [ %250, %289 ], [ %250, %281 ], [ %250, %287 ], [ %96, %94 ], [ %75, %88 ], [ %75, %69 ]
  br label %23, !dbg !1438, !llvm.loop !1528

81:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i32 %75, metadata !1530, metadata !DIExpression()), !dbg !1535
  %82 = load ptr, ptr @stdout, align 8, !dbg !1539, !tbaa !1018
  %83 = getelementptr inbounds %struct._IO_FILE, ptr %82, i64 0, i32 5, !dbg !1539
  %84 = load ptr, ptr %83, align 8, !dbg !1539, !tbaa !1540
  %85 = getelementptr inbounds %struct._IO_FILE, ptr %82, i64 0, i32 6, !dbg !1539
  %86 = load ptr, ptr %85, align 8, !dbg !1539, !tbaa !1541
  %87 = icmp ult ptr %84, %86, !dbg !1539
  br i1 %87, label %88, label %91, !dbg !1539, !prof !1453

88:                                               ; preds = %81
  %89 = trunc i32 %75 to i8, !dbg !1539
  %90 = getelementptr inbounds i8, ptr %84, i64 1, !dbg !1539
  store ptr %90, ptr %83, align 8, !dbg !1539, !tbaa !1540
  store i8 %89, ptr %84, align 1, !dbg !1539, !tbaa !1105
  br label %77, !dbg !1542

91:                                               ; preds = %81
  %92 = tail call i32 @__overflow(ptr noundef nonnull %82, i32 noundef %75) #41, !dbg !1539
  %93 = icmp slt i32 %92, 0, !dbg !1543
  br i1 %93, label %97, label %94, !dbg !1542

94:                                               ; preds = %91
  %95 = load i1, ptr @line_delim, align 1, !dbg !1544
  %96 = select i1 %95, i32 0, i32 10, !dbg !1544
  br label %77, !dbg !1542

97:                                               ; preds = %91
  %98 = tail call ptr @__errno_location() #44, !dbg !1545
  %99 = load i32, ptr %98, align 4, !dbg !1545, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 %99, metadata !1515, metadata !DIExpression()), !dbg !1547
  %100 = load ptr, ptr @stdout, align 8, !dbg !1548, !tbaa !1018
  %101 = tail call i32 @fflush_unlocked(ptr noundef %100) #41, !dbg !1548
  %102 = load ptr, ptr @stdout, align 8, !dbg !1549, !tbaa !1018
  %103 = tail call i32 @fpurge(ptr noundef %102) #41, !dbg !1550
  %104 = load ptr, ptr @stdout, align 8, !dbg !1551, !tbaa !1018
  tail call void @clearerr_unlocked(ptr noundef %104) #41, !dbg !1551
  %105 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #41, !dbg !1552
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %99, ptr noundef %105) #41, !dbg !1552
  unreachable, !dbg !1552

106:                                              ; preds = %47
  call void @llvm.dbg.value(metadata i64 1, metadata !1459, metadata !DIExpression()), !dbg !1553
  %107 = load ptr, ptr @current_rp, align 8, !dbg !1555, !tbaa !1018
  %108 = load i64, ptr %107, align 8, !dbg !1556, !tbaa !1468
  %109 = icmp ult i64 %108, 2, !dbg !1557
  br i1 %109, label %110, label %143, !dbg !1558

110:                                              ; preds = %106
  %111 = load ptr, ptr @stdout, align 8, !dbg !1559, !tbaa !1018
  %112 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %48, i64 noundef 1, i64 noundef %49, ptr noundef %111), !dbg !1559
  %113 = icmp eq i64 %112, %49, !dbg !1560
  br i1 %113, label %123, label %114, !dbg !1561

114:                                              ; preds = %110
  %115 = tail call ptr @__errno_location() #44, !dbg !1562
  %116 = load i32, ptr %115, align 4, !dbg !1562, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 %116, metadata !1515, metadata !DIExpression()), !dbg !1564
  %117 = load ptr, ptr @stdout, align 8, !dbg !1565, !tbaa !1018
  %118 = tail call i32 @fflush_unlocked(ptr noundef %117) #41, !dbg !1565
  %119 = load ptr, ptr @stdout, align 8, !dbg !1566, !tbaa !1018
  %120 = tail call i32 @fpurge(ptr noundef %119) #41, !dbg !1567
  %121 = load ptr, ptr @stdout, align 8, !dbg !1568, !tbaa !1018
  tail call void @clearerr_unlocked(ptr noundef %121) #41, !dbg !1568
  %122 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #41, !dbg !1569
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %116, ptr noundef %122) #41, !dbg !1569
  unreachable, !dbg !1569

123:                                              ; preds = %110
  %124 = load i8, ptr @delim, align 1, !dbg !1570, !tbaa !1105
  %125 = zext i8 %124 to i32, !dbg !1570
  %126 = load i1, ptr @line_delim, align 1, !dbg !1571
  %127 = select i1 %126, i32 0, i32 10, !dbg !1571
  %128 = icmp eq i32 %127, %125, !dbg !1572
  br i1 %128, label %129, label %143, !dbg !1573

129:                                              ; preds = %123
  call void @llvm.dbg.value(metadata ptr %0, metadata !1441, metadata !DIExpression()), !dbg !1574
  %130 = load ptr, ptr %3, align 8, !dbg !1576, !tbaa !1450
  %131 = load ptr, ptr %5, align 8, !dbg !1576, !tbaa !1452
  %132 = icmp ult ptr %130, %131, !dbg !1576
  br i1 %132, label %133, label %137, !dbg !1576, !prof !1453

133:                                              ; preds = %129
  %134 = getelementptr inbounds i8, ptr %130, i64 1, !dbg !1576
  store ptr %134, ptr %3, align 8, !dbg !1576, !tbaa !1450
  %135 = load i8, ptr %130, align 1, !dbg !1576, !tbaa !1105
  %136 = zext i8 %135 to i32, !dbg !1576
  call void @llvm.dbg.value(metadata i32 %136, metadata !1422, metadata !DIExpression()), !dbg !1577
  br label %140, !dbg !1578

137:                                              ; preds = %129
  %138 = tail call i32 @__uflow(ptr noundef nonnull %0) #41, !dbg !1576
  call void @llvm.dbg.value(metadata i32 %138, metadata !1422, metadata !DIExpression()), !dbg !1577
  %139 = icmp eq i32 %138, -1, !dbg !1579
  br i1 %139, label %143, label %140, !dbg !1578

140:                                              ; preds = %133, %137
  %141 = phi i32 [ %136, %133 ], [ %138, %137 ]
  %142 = tail call i32 @ungetc(i32 noundef %141, ptr noundef nonnull %0), !dbg !1581
  call void @llvm.dbg.value(metadata i8 1, metadata !1397, metadata !DIExpression()), !dbg !1438
  br label %143, !dbg !1583

143:                                              ; preds = %123, %137, %140, %106
  %144 = phi i8 [ %25, %106 ], [ 1, %140 ], [ %25, %137 ], [ 1, %123 ], !dbg !1438
  call void @llvm.dbg.value(metadata i8 %144, metadata !1397, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata ptr undef, metadata !1584, metadata !DIExpression()), !dbg !1590
  %145 = load ptr, ptr @current_rp, align 8, !dbg !1592, !tbaa !1018
  %146 = getelementptr inbounds %struct.field_range_pair, ptr %145, i64 0, i32 1, !dbg !1594
  %147 = load i64, ptr %146, align 8, !dbg !1594, !tbaa !1595
  %148 = icmp ult i64 %147, 2, !dbg !1596
  br i1 %148, label %149, label %151, !dbg !1597

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.field_range_pair, ptr %145, i64 1, !dbg !1598
  store ptr %150, ptr @current_rp, align 8, !dbg !1598, !tbaa !1018
  br label %151, !dbg !1599

151:                                              ; preds = %29, %149, %143
  %152 = phi ptr [ %30, %29 ], [ %145, %143 ], [ %150, %149 ], !dbg !1475
  %153 = phi i64 [ %24, %29 ], [ 2, %143 ], [ 2, %149 ], !dbg !1600
  %154 = phi i8 [ %25, %29 ], [ %144, %143 ], [ %144, %149 ], !dbg !1601
  %155 = phi i32 [ %26, %29 ], [ 0, %143 ], [ 0, %149 ], !dbg !1602
  call void @llvm.dbg.value(metadata i32 %155, metadata !1395, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %154, metadata !1397, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i32 %155, metadata !1425, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %153, metadata !1396, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %153, metadata !1459, metadata !DIExpression()), !dbg !1604
  %156 = load i64, ptr %152, align 8, !dbg !1605, !tbaa !1468
  %157 = icmp ugt i64 %156, %153, !dbg !1606
  br i1 %157, label %224, label %158, !dbg !1607

158:                                              ; preds = %151
  %159 = and i8 %154, 1, !dbg !1608
  %160 = icmp eq i8 %159, 0, !dbg !1608
  br i1 %160, label %161, label %162, !dbg !1609

161:                                              ; preds = %162, %158
  br label %178, !dbg !1610

162:                                              ; preds = %158
  %163 = load i64, ptr @output_delimiter_length, align 8, !dbg !1611, !tbaa !1298
  %164 = load ptr, ptr @output_delimiter_string, align 8, !dbg !1611, !tbaa !1018
  %165 = load ptr, ptr @stdout, align 8, !dbg !1611, !tbaa !1018
  %166 = tail call i64 @fwrite_unlocked(ptr noundef %164, i64 noundef 1, i64 noundef %163, ptr noundef %165), !dbg !1611
  %167 = load i64, ptr @output_delimiter_length, align 8, !dbg !1612, !tbaa !1298
  %168 = icmp eq i64 %166, %167, !dbg !1613
  br i1 %168, label %161, label %169, !dbg !1614

169:                                              ; preds = %162
  %170 = tail call ptr @__errno_location() #44, !dbg !1615
  %171 = load i32, ptr %170, align 4, !dbg !1615, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 %171, metadata !1515, metadata !DIExpression()), !dbg !1617
  %172 = load ptr, ptr @stdout, align 8, !dbg !1618, !tbaa !1018
  %173 = tail call i32 @fflush_unlocked(ptr noundef %172) #41, !dbg !1618
  %174 = load ptr, ptr @stdout, align 8, !dbg !1619, !tbaa !1018
  %175 = tail call i32 @fpurge(ptr noundef %174) #41, !dbg !1620
  %176 = load ptr, ptr @stdout, align 8, !dbg !1621, !tbaa !1018
  tail call void @clearerr_unlocked(ptr noundef %176) #41, !dbg !1621
  %177 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #41, !dbg !1622
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %171, ptr noundef %177) #41, !dbg !1622
  unreachable, !dbg !1622

178:                                              ; preds = %210, %161
  %179 = phi i32 [ %155, %161 ], [ %190, %210 ], !dbg !1603
  call void @llvm.dbg.value(metadata i32 %179, metadata !1425, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata ptr %0, metadata !1441, metadata !DIExpression()), !dbg !1623
  %180 = load ptr, ptr %3, align 8, !dbg !1625, !tbaa !1450
  %181 = load ptr, ptr %5, align 8, !dbg !1625, !tbaa !1452
  %182 = icmp ult ptr %180, %181, !dbg !1625
  br i1 %182, label %185, label %183, !dbg !1625, !prof !1453

183:                                              ; preds = %178
  %184 = tail call i32 @__uflow(ptr noundef nonnull %0) #41, !dbg !1625
  br label %189, !dbg !1625

185:                                              ; preds = %178
  %186 = getelementptr inbounds i8, ptr %180, i64 1, !dbg !1625
  store ptr %186, ptr %3, align 8, !dbg !1625, !tbaa !1450
  %187 = load i8, ptr %180, align 1, !dbg !1625, !tbaa !1105
  %188 = zext i8 %187 to i32, !dbg !1625
  br label %189, !dbg !1625

189:                                              ; preds = %183, %185
  %190 = phi i32 [ %184, %183 ], [ %188, %185 ], !dbg !1625
  call void @llvm.dbg.value(metadata i32 %190, metadata !1395, metadata !DIExpression()), !dbg !1438
  %191 = load i8, ptr @delim, align 1, !dbg !1626, !tbaa !1105
  %192 = zext i8 %191 to i32, !dbg !1626
  %193 = icmp eq i32 %190, %192, !dbg !1627
  br i1 %193, label %246, label %194, !dbg !1628

194:                                              ; preds = %189
  %195 = load i1, ptr @line_delim, align 1, !dbg !1629
  %196 = select i1 %195, i32 0, i32 10, !dbg !1629
  %197 = icmp ne i32 %190, %196, !dbg !1630
  %198 = icmp ne i32 %190, -1
  %199 = and i1 %198, %197, !dbg !1631
  br i1 %199, label %200, label %246, !dbg !1631

200:                                              ; preds = %194
  call void @llvm.dbg.value(metadata i32 %190, metadata !1530, metadata !DIExpression()), !dbg !1632
  %201 = load ptr, ptr @stdout, align 8, !dbg !1636, !tbaa !1018
  %202 = getelementptr inbounds %struct._IO_FILE, ptr %201, i64 0, i32 5, !dbg !1636
  %203 = load ptr, ptr %202, align 8, !dbg !1636, !tbaa !1540
  %204 = getelementptr inbounds %struct._IO_FILE, ptr %201, i64 0, i32 6, !dbg !1636
  %205 = load ptr, ptr %204, align 8, !dbg !1636, !tbaa !1541
  %206 = icmp ult ptr %203, %205, !dbg !1636
  br i1 %206, label %207, label %211, !dbg !1636, !prof !1453

207:                                              ; preds = %200
  %208 = trunc i32 %190 to i8, !dbg !1636
  %209 = getelementptr inbounds i8, ptr %203, i64 1, !dbg !1636
  store ptr %209, ptr %202, align 8, !dbg !1636, !tbaa !1540
  store i8 %208, ptr %203, align 1, !dbg !1636, !tbaa !1105
  br label %210, !dbg !1637

210:                                              ; preds = %207, %211
  br label %178, !dbg !1603, !llvm.loop !1638

211:                                              ; preds = %200
  %212 = and i32 %190, 255, !dbg !1636
  %213 = tail call i32 @__overflow(ptr noundef nonnull %201, i32 noundef %212) #41, !dbg !1636
  %214 = icmp slt i32 %213, 0, !dbg !1640
  br i1 %214, label %215, label %210, !dbg !1637

215:                                              ; preds = %211
  %216 = tail call ptr @__errno_location() #44, !dbg !1641
  %217 = load i32, ptr %216, align 4, !dbg !1641, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 %217, metadata !1515, metadata !DIExpression()), !dbg !1643
  %218 = load ptr, ptr @stdout, align 8, !dbg !1644, !tbaa !1018
  %219 = tail call i32 @fflush_unlocked(ptr noundef %218) #41, !dbg !1644
  %220 = load ptr, ptr @stdout, align 8, !dbg !1645, !tbaa !1018
  %221 = tail call i32 @fpurge(ptr noundef %220) #41, !dbg !1646
  %222 = load ptr, ptr @stdout, align 8, !dbg !1647, !tbaa !1018
  tail call void @clearerr_unlocked(ptr noundef %222) #41, !dbg !1647
  %223 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #41, !dbg !1648
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %217, ptr noundef %223) #41, !dbg !1648
  unreachable, !dbg !1648

224:                                              ; preds = %151, %240
  %225 = phi i32 [ %236, %240 ], [ %155, %151 ], !dbg !1603
  call void @llvm.dbg.value(metadata i32 %225, metadata !1425, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata ptr %0, metadata !1441, metadata !DIExpression()), !dbg !1649
  %226 = load ptr, ptr %3, align 8, !dbg !1652, !tbaa !1450
  %227 = load ptr, ptr %5, align 8, !dbg !1652, !tbaa !1452
  %228 = icmp ult ptr %226, %227, !dbg !1652
  br i1 %228, label %231, label %229, !dbg !1652, !prof !1453

229:                                              ; preds = %224
  %230 = tail call i32 @__uflow(ptr noundef nonnull %0) #41, !dbg !1652
  br label %235, !dbg !1652

231:                                              ; preds = %224
  %232 = getelementptr inbounds i8, ptr %226, i64 1, !dbg !1652
  store ptr %232, ptr %3, align 8, !dbg !1652, !tbaa !1450
  %233 = load i8, ptr %226, align 1, !dbg !1652, !tbaa !1105
  %234 = zext i8 %233 to i32, !dbg !1652
  br label %235, !dbg !1652

235:                                              ; preds = %229, %231
  %236 = phi i32 [ %230, %229 ], [ %234, %231 ], !dbg !1652
  call void @llvm.dbg.value(metadata i32 %236, metadata !1395, metadata !DIExpression()), !dbg !1438
  %237 = load i8, ptr @delim, align 1, !dbg !1653, !tbaa !1105
  %238 = zext i8 %237 to i32, !dbg !1653
  %239 = icmp eq i32 %236, %238, !dbg !1654
  br i1 %239, label %246, label %240, !dbg !1655

240:                                              ; preds = %235
  %241 = load i1, ptr @line_delim, align 1, !dbg !1656
  %242 = select i1 %241, i32 0, i32 10, !dbg !1656
  %243 = icmp ne i32 %236, %242, !dbg !1657
  %244 = icmp ne i32 %236, -1
  %245 = and i1 %244, %243, !dbg !1658
  br i1 %245, label %224, label %246, !dbg !1658, !llvm.loop !1659

246:                                              ; preds = %189, %194, %235, %240
  %247 = phi i8 [ %237, %240 ], [ %237, %235 ], [ %191, %194 ], [ %191, %189 ]
  %248 = phi i32 [ %225, %240 ], [ %225, %235 ], [ %179, %194 ], [ %179, %189 ], !dbg !1662
  %249 = phi i8 [ %154, %240 ], [ %154, %235 ], [ 1, %194 ], [ 1, %189 ], !dbg !1438
  %250 = phi i32 [ %236, %240 ], [ %236, %235 ], [ %190, %194 ], [ %190, %189 ], !dbg !1663
  %251 = zext i8 %247 to i32, !dbg !1663
  call void @llvm.dbg.value(metadata i32 %250, metadata !1395, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %249, metadata !1397, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i32 %248, metadata !1425, metadata !DIExpression()), !dbg !1603
  %252 = load i1, ptr @line_delim, align 1, !dbg !1664
  %253 = select i1 %252, i32 0, i32 10, !dbg !1664
  %254 = icmp eq i32 %253, %251, !dbg !1665
  %255 = icmp eq i32 %250, %251
  %256 = select i1 %254, i1 %255, i1 false, !dbg !1666
  br i1 %256, label %257, label %278, !dbg !1666

257:                                              ; preds = %246
  call void @llvm.dbg.value(metadata ptr %0, metadata !1441, metadata !DIExpression()), !dbg !1667
  %258 = load ptr, ptr %3, align 8, !dbg !1669, !tbaa !1450
  %259 = load ptr, ptr %5, align 8, !dbg !1669, !tbaa !1452
  %260 = icmp ult ptr %258, %259, !dbg !1669
  br i1 %260, label %261, label %265, !dbg !1669, !prof !1453

261:                                              ; preds = %257
  %262 = getelementptr inbounds i8, ptr %258, i64 1, !dbg !1669
  store ptr %262, ptr %3, align 8, !dbg !1669, !tbaa !1450
  %263 = load i8, ptr %258, align 1, !dbg !1669, !tbaa !1105
  %264 = zext i8 %263 to i32, !dbg !1669
  call void @llvm.dbg.value(metadata i32 %264, metadata !1435, metadata !DIExpression()), !dbg !1670
  br label %273, !dbg !1671

265:                                              ; preds = %257
  %266 = tail call i32 @__uflow(ptr noundef nonnull %0) #41, !dbg !1669
  call void @llvm.dbg.value(metadata i32 %266, metadata !1435, metadata !DIExpression()), !dbg !1670
  %267 = icmp eq i32 %266, -1, !dbg !1672
  br i1 %267, label %268, label %273, !dbg !1671

268:                                              ; preds = %265
  call void @llvm.dbg.value(metadata i32 -1, metadata !1395, metadata !DIExpression()), !dbg !1438
  %269 = load i8, ptr @delim, align 1, !dbg !1674, !tbaa !1105
  %270 = zext i8 %269 to i32, !dbg !1674
  %271 = load i1, ptr @line_delim, align 1, !dbg !1676
  %272 = select i1 %271, i32 0, i32 10, !dbg !1676
  br label %295, !dbg !1678

273:                                              ; preds = %261, %265
  %274 = phi i32 [ %264, %261 ], [ %266, %265 ]
  %275 = tail call i32 @ungetc(i32 noundef %274, ptr noundef nonnull %0), !dbg !1679
  %276 = load i8, ptr @delim, align 1, !dbg !1674, !tbaa !1105
  %277 = zext i8 %276 to i32, !dbg !1674
  br label %278, !dbg !1679

278:                                              ; preds = %273, %246
  %279 = phi i32 [ %277, %273 ], [ %251, %246 ], !dbg !1674
  call void @llvm.dbg.value(metadata i32 %250, metadata !1395, metadata !DIExpression()), !dbg !1438
  %280 = icmp eq i32 %250, %279, !dbg !1680
  br i1 %280, label %281, label %289, !dbg !1681

281:                                              ; preds = %278
  call void @llvm.dbg.value(metadata ptr undef, metadata !1584, metadata !DIExpression()), !dbg !1682
  %282 = add i64 %153, 1, !dbg !1684
  %283 = load ptr, ptr @current_rp, align 8, !dbg !1685, !tbaa !1018
  %284 = getelementptr inbounds %struct.field_range_pair, ptr %283, i64 0, i32 1, !dbg !1686
  %285 = load i64, ptr %284, align 8, !dbg !1686, !tbaa !1595
  %286 = icmp ugt i64 %282, %285, !dbg !1687
  br i1 %286, label %287, label %77, !dbg !1688

287:                                              ; preds = %281
  %288 = getelementptr inbounds %struct.field_range_pair, ptr %283, i64 1, !dbg !1689
  store ptr %288, ptr @current_rp, align 8, !dbg !1689, !tbaa !1018
  br label %77, !dbg !1690

289:                                              ; preds = %278
  %290 = load i1, ptr @line_delim, align 1, !dbg !1676
  %291 = select i1 %290, i32 0, i32 10, !dbg !1676
  %292 = icmp eq i32 %250, %291, !dbg !1691
  %293 = icmp eq i32 %250, -1
  %294 = or i1 %293, %292, !dbg !1678
  br i1 %294, label %295, label %77, !dbg !1678

295:                                              ; preds = %268, %289
  %296 = phi i1 [ true, %268 ], [ %293, %289 ]
  %297 = phi i32 [ %272, %268 ], [ %291, %289 ]
  %298 = phi i32 [ -1, %268 ], [ %250, %289 ]
  %299 = phi i32 [ %270, %268 ], [ %279, %289 ]
  %300 = and i8 %249, 1, !dbg !1692
  %301 = icmp eq i8 %300, 0, !dbg !1692
  br i1 %301, label %302, label %306, !dbg !1695

302:                                              ; preds = %295
  %303 = load i1, ptr @suppress_non_delimited, align 1, !dbg !1696
  call void @llvm.dbg.value(metadata i64 %153, metadata !1396, metadata !DIExpression()), !dbg !1438
  %304 = icmp eq i64 %153, 1
  %305 = select i1 %303, i1 %304, i1 false, !dbg !1697
  br i1 %305, label %334, label %306, !dbg !1697

306:                                              ; preds = %302, %295
  %307 = icmp eq i32 %298, %297, !dbg !1698
  %308 = icmp ne i32 %248, %297
  %309 = select i1 %307, i1 true, i1 %308, !dbg !1701
  %310 = icmp eq i32 %297, %299
  %311 = select i1 %309, i1 true, i1 %310, !dbg !1701
  br i1 %311, label %312, label %334, !dbg !1701

312:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i32 %291, metadata !1530, metadata !DIExpression()), !dbg !1702
  %313 = load ptr, ptr @stdout, align 8, !dbg !1706, !tbaa !1018
  %314 = getelementptr inbounds %struct._IO_FILE, ptr %313, i64 0, i32 5, !dbg !1706
  %315 = load ptr, ptr %314, align 8, !dbg !1706, !tbaa !1540
  %316 = getelementptr inbounds %struct._IO_FILE, ptr %313, i64 0, i32 6, !dbg !1706
  %317 = load ptr, ptr %316, align 8, !dbg !1706, !tbaa !1541
  %318 = icmp ult ptr %315, %317, !dbg !1706
  br i1 %318, label %319, label %322, !dbg !1706, !prof !1453

319:                                              ; preds = %312
  %320 = trunc i32 %297 to i8, !dbg !1706
  %321 = getelementptr inbounds i8, ptr %315, i64 1, !dbg !1706
  store ptr %321, ptr %314, align 8, !dbg !1706, !tbaa !1540
  store i8 %320, ptr %315, align 1, !dbg !1706, !tbaa !1105
  br i1 %296, label %337, label %335, !dbg !1707

322:                                              ; preds = %312
  %323 = tail call i32 @__overflow(ptr noundef nonnull %313, i32 noundef %297) #41, !dbg !1706
  %324 = icmp slt i32 %323, 0, !dbg !1708
  br i1 %324, label %325, label %334, !dbg !1709

325:                                              ; preds = %322
  %326 = tail call ptr @__errno_location() #44, !dbg !1710
  %327 = load i32, ptr %326, align 4, !dbg !1710, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 %327, metadata !1515, metadata !DIExpression()), !dbg !1712
  %328 = load ptr, ptr @stdout, align 8, !dbg !1713, !tbaa !1018
  %329 = tail call i32 @fflush_unlocked(ptr noundef %328) #41, !dbg !1713
  %330 = load ptr, ptr @stdout, align 8, !dbg !1714, !tbaa !1018
  %331 = tail call i32 @fpurge(ptr noundef %330) #41, !dbg !1715
  %332 = load ptr, ptr @stdout, align 8, !dbg !1716, !tbaa !1018
  tail call void @clearerr_unlocked(ptr noundef %332) #41, !dbg !1716
  %333 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #41, !dbg !1717
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %327, ptr noundef %333) #41, !dbg !1717
  unreachable, !dbg !1717

334:                                              ; preds = %306, %322, %302
  br i1 %296, label %337, label %335, !dbg !1707

335:                                              ; preds = %319, %334
  call void @llvm.dbg.value(metadata i64 1, metadata !1396, metadata !DIExpression()), !dbg !1438
  %336 = load ptr, ptr @frp, align 8, !dbg !1718, !tbaa !1018
  store ptr %336, ptr @current_rp, align 8, !dbg !1719, !tbaa !1018
  call void @llvm.dbg.value(metadata i8 0, metadata !1397, metadata !DIExpression()), !dbg !1438
  br label %77, !dbg !1720

337:                                              ; preds = %319, %334, %38, %12
  ret void, !dbg !1721
}

; Function Attrs: nounwind uwtable
define internal void @cut_bytes(ptr noundef %0) #10 !dbg !1722 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1724, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i64 0, metadata !1725, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 0, metadata !1726, metadata !DIExpression()), !dbg !1743
  %2 = load ptr, ptr @frp, align 8, !dbg !1744, !tbaa !1018
  store ptr %2, ptr @current_rp, align 8, !dbg !1745, !tbaa !1018
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  br label %5, !dbg !1746

5:                                                ; preds = %49, %1
  %6 = phi i64 [ 0, %1 ], [ %50, %49 ]
  %7 = phi i8 [ 0, %1 ], [ %51, %49 ]
  br label %8, !dbg !1747

8:                                                ; preds = %5, %86
  %9 = phi i64 [ %79, %86 ], [ %6, %5 ], !dbg !1743
  call void @llvm.dbg.value(metadata i8 %7, metadata !1726, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata ptr %0, metadata !1441, metadata !DIExpression()), !dbg !1749
  %10 = load ptr, ptr %3, align 8, !dbg !1747, !tbaa !1450
  %11 = load ptr, ptr %4, align 8, !dbg !1747, !tbaa !1452
  %12 = icmp ult ptr %10, %11, !dbg !1747
  br i1 %12, label %15, label %13, !dbg !1747, !prof !1453

13:                                               ; preds = %8
  %14 = tail call i32 @__uflow(ptr noundef nonnull %0) #41, !dbg !1747
  br label %19, !dbg !1747

15:                                               ; preds = %8
  %16 = getelementptr inbounds i8, ptr %10, i64 1, !dbg !1747
  store ptr %16, ptr %3, align 8, !dbg !1747, !tbaa !1450
  %17 = load i8, ptr %10, align 1, !dbg !1747, !tbaa !1105
  %18 = zext i8 %17 to i32, !dbg !1747
  br label %19, !dbg !1747

19:                                               ; preds = %13, %15
  %20 = phi i32 [ %14, %13 ], [ %18, %15 ], !dbg !1747
  call void @llvm.dbg.value(metadata i32 %20, metadata !1727, metadata !DIExpression()), !dbg !1750
  %21 = load i1, ptr @line_delim, align 1, !dbg !1751
  %22 = select i1 %21, i32 0, i32 10, !dbg !1751
  %23 = icmp eq i32 %20, %22, !dbg !1752
  br i1 %23, label %24, label %52, !dbg !1753

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %20, metadata !1530, metadata !DIExpression()), !dbg !1754
  %25 = load ptr, ptr @stdout, align 8, !dbg !1758, !tbaa !1018
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %25, i64 0, i32 5, !dbg !1758
  %27 = load ptr, ptr %26, align 8, !dbg !1758, !tbaa !1540
  %28 = getelementptr inbounds %struct._IO_FILE, ptr %25, i64 0, i32 6, !dbg !1758
  %29 = load ptr, ptr %28, align 8, !dbg !1758, !tbaa !1541
  %30 = icmp ult ptr %27, %29, !dbg !1758
  br i1 %30, label %31, label %34, !dbg !1758, !prof !1453

31:                                               ; preds = %24
  %32 = trunc i32 %20 to i8, !dbg !1758
  %33 = getelementptr inbounds i8, ptr %27, i64 1, !dbg !1758
  store ptr %33, ptr %26, align 8, !dbg !1758, !tbaa !1540
  store i8 %32, ptr %27, align 1, !dbg !1758, !tbaa !1105
  br label %47, !dbg !1759

34:                                               ; preds = %24
  %35 = and i32 %20, 255, !dbg !1758
  %36 = tail call i32 @__overflow(ptr noundef nonnull %25, i32 noundef %35) #41, !dbg !1758
  %37 = icmp slt i32 %36, 0, !dbg !1760
  br i1 %37, label %38, label %47, !dbg !1759

38:                                               ; preds = %34
  %39 = tail call ptr @__errno_location() #44, !dbg !1761
  %40 = load i32, ptr %39, align 4, !dbg !1761, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 %40, metadata !1515, metadata !DIExpression()), !dbg !1763
  %41 = load ptr, ptr @stdout, align 8, !dbg !1764, !tbaa !1018
  %42 = tail call i32 @fflush_unlocked(ptr noundef %41) #41, !dbg !1764
  %43 = load ptr, ptr @stdout, align 8, !dbg !1765, !tbaa !1018
  %44 = tail call i32 @fpurge(ptr noundef %43) #41, !dbg !1766
  %45 = load ptr, ptr @stdout, align 8, !dbg !1767, !tbaa !1018
  tail call void @clearerr_unlocked(ptr noundef %45) #41, !dbg !1767
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #41, !dbg !1768
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %40, ptr noundef %46) #41, !dbg !1768
  unreachable, !dbg !1768

47:                                               ; preds = %31, %34
  call void @llvm.dbg.value(metadata i64 0, metadata !1725, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 0, metadata !1726, metadata !DIExpression()), !dbg !1743
  %48 = load ptr, ptr @frp, align 8, !dbg !1769, !tbaa !1018
  store ptr %48, ptr @current_rp, align 8, !dbg !1770, !tbaa !1018
  br label %49, !dbg !1771

49:                                               ; preds = %47, %124, %121
  %50 = phi i64 [ %79, %121 ], [ %79, %124 ], [ 0, %47 ]
  %51 = phi i8 [ %114, %121 ], [ %114, %124 ], [ 0, %47 ]
  br label %5, !dbg !1747

52:                                               ; preds = %19
  %53 = icmp eq i32 %20, -1, !dbg !1772
  br i1 %53, label %54, label %78, !dbg !1773

54:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i64 %9, metadata !1725, metadata !DIExpression()), !dbg !1743
  %55 = icmp eq i64 %9, 0, !dbg !1774
  br i1 %55, label %137, label %56, !dbg !1777

56:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 %22, metadata !1530, metadata !DIExpression()), !dbg !1778
  %57 = load ptr, ptr @stdout, align 8, !dbg !1782, !tbaa !1018
  %58 = getelementptr inbounds %struct._IO_FILE, ptr %57, i64 0, i32 5, !dbg !1782
  %59 = load ptr, ptr %58, align 8, !dbg !1782, !tbaa !1540
  %60 = getelementptr inbounds %struct._IO_FILE, ptr %57, i64 0, i32 6, !dbg !1782
  %61 = load ptr, ptr %60, align 8, !dbg !1782, !tbaa !1541
  %62 = icmp ult ptr %59, %61, !dbg !1782
  br i1 %62, label %63, label %66, !dbg !1782, !prof !1453

63:                                               ; preds = %56
  %64 = trunc i32 %22 to i8, !dbg !1782
  %65 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1782
  store ptr %65, ptr %58, align 8, !dbg !1782, !tbaa !1540
  store i8 %64, ptr %59, align 1, !dbg !1782, !tbaa !1105
  br label %137, !dbg !1783

66:                                               ; preds = %56
  %67 = tail call i32 @__overflow(ptr noundef nonnull %57, i32 noundef %22) #41, !dbg !1782
  %68 = icmp slt i32 %67, 0, !dbg !1784
  br i1 %68, label %69, label %137, !dbg !1783

69:                                               ; preds = %66
  %70 = tail call ptr @__errno_location() #44, !dbg !1785
  %71 = load i32, ptr %70, align 4, !dbg !1785, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 %71, metadata !1515, metadata !DIExpression()), !dbg !1787
  %72 = load ptr, ptr @stdout, align 8, !dbg !1788, !tbaa !1018
  %73 = tail call i32 @fflush_unlocked(ptr noundef %72) #41, !dbg !1788
  %74 = load ptr, ptr @stdout, align 8, !dbg !1789, !tbaa !1018
  %75 = tail call i32 @fpurge(ptr noundef %74) #41, !dbg !1790
  %76 = load ptr, ptr @stdout, align 8, !dbg !1791, !tbaa !1018
  tail call void @clearerr_unlocked(ptr noundef %76) #41, !dbg !1791
  %77 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #41, !dbg !1792
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %71, ptr noundef %77) #41, !dbg !1792
  unreachable, !dbg !1792

78:                                               ; preds = %52
  call void @llvm.dbg.value(metadata ptr undef, metadata !1584, metadata !DIExpression()), !dbg !1793
  %79 = add i64 %9, 1, !dbg !1795
  %80 = load ptr, ptr @current_rp, align 8, !dbg !1796, !tbaa !1018
  %81 = getelementptr inbounds %struct.field_range_pair, ptr %80, i64 0, i32 1, !dbg !1797
  %82 = load i64, ptr %81, align 8, !dbg !1797, !tbaa !1595
  %83 = icmp ugt i64 %79, %82, !dbg !1798
  br i1 %83, label %84, label %86, !dbg !1799

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.field_range_pair, ptr %80, i64 1, !dbg !1800
  store ptr %85, ptr @current_rp, align 8, !dbg !1800, !tbaa !1018
  br label %86, !dbg !1801

86:                                               ; preds = %78, %84
  %87 = phi ptr [ %80, %78 ], [ %85, %84 ], !dbg !1802
  call void @llvm.dbg.value(metadata i64 %79, metadata !1725, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i64 %79, metadata !1459, metadata !DIExpression()), !dbg !1804
  %88 = load i64, ptr %87, align 8, !dbg !1805, !tbaa !1468
  %89 = icmp ugt i64 %88, %79, !dbg !1806
  br i1 %89, label %8, label %90, !dbg !1807

90:                                               ; preds = %86
  %91 = load ptr, ptr @output_delimiter_string, align 8, !dbg !1808, !tbaa !1018
  %92 = icmp eq ptr %91, @output_delimiter_default, !dbg !1809
  br i1 %92, label %113, label %93, !dbg !1810

93:                                               ; preds = %90
  %94 = and i8 %7, 1, !dbg !1811
  %95 = icmp ne i8 %94, 0, !dbg !1811
  %96 = icmp eq i64 %88, %79
  %97 = select i1 %95, i1 %96, i1 false, !dbg !1812
  call void @llvm.dbg.value(metadata i64 %79, metadata !1725, metadata !DIExpression()), !dbg !1743
  br i1 %97, label %98, label %113, !dbg !1812

98:                                               ; preds = %93
  %99 = load i64, ptr @output_delimiter_length, align 8, !dbg !1813, !tbaa !1298
  %100 = load ptr, ptr @stdout, align 8, !dbg !1813, !tbaa !1018
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %91, i64 noundef 1, i64 noundef %99, ptr noundef %100), !dbg !1813
  %102 = load i64, ptr @output_delimiter_length, align 8, !dbg !1814, !tbaa !1298
  %103 = icmp eq i64 %101, %102, !dbg !1815
  br i1 %103, label %113, label %104, !dbg !1816

104:                                              ; preds = %98
  %105 = tail call ptr @__errno_location() #44, !dbg !1817
  %106 = load i32, ptr %105, align 4, !dbg !1817, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 %106, metadata !1515, metadata !DIExpression()), !dbg !1819
  %107 = load ptr, ptr @stdout, align 8, !dbg !1820, !tbaa !1018
  %108 = tail call i32 @fflush_unlocked(ptr noundef %107) #41, !dbg !1820
  %109 = load ptr, ptr @stdout, align 8, !dbg !1821, !tbaa !1018
  %110 = tail call i32 @fpurge(ptr noundef %109) #41, !dbg !1822
  %111 = load ptr, ptr @stdout, align 8, !dbg !1823, !tbaa !1018
  tail call void @clearerr_unlocked(ptr noundef %111) #41, !dbg !1823
  %112 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #41, !dbg !1824
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %106, ptr noundef %112) #41, !dbg !1824
  unreachable, !dbg !1824

113:                                              ; preds = %93, %98, %90
  %114 = phi i8 [ %7, %90 ], [ 1, %98 ], [ 1, %93 ], !dbg !1743
  call void @llvm.dbg.value(metadata i8 %114, metadata !1726, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i32 %20, metadata !1530, metadata !DIExpression()), !dbg !1825
  %115 = load ptr, ptr @stdout, align 8, !dbg !1828, !tbaa !1018
  %116 = getelementptr inbounds %struct._IO_FILE, ptr %115, i64 0, i32 5, !dbg !1828
  %117 = load ptr, ptr %116, align 8, !dbg !1828, !tbaa !1540
  %118 = getelementptr inbounds %struct._IO_FILE, ptr %115, i64 0, i32 6, !dbg !1828
  %119 = load ptr, ptr %118, align 8, !dbg !1828, !tbaa !1541
  %120 = icmp ult ptr %117, %119, !dbg !1828
  br i1 %120, label %121, label %124, !dbg !1828, !prof !1453

121:                                              ; preds = %113
  %122 = trunc i32 %20 to i8, !dbg !1828
  %123 = getelementptr inbounds i8, ptr %117, i64 1, !dbg !1828
  store ptr %123, ptr %116, align 8, !dbg !1828, !tbaa !1540
  store i8 %122, ptr %117, align 1, !dbg !1828, !tbaa !1105
  br label %49, !dbg !1829

124:                                              ; preds = %113
  %125 = and i32 %20, 255, !dbg !1828
  %126 = tail call i32 @__overflow(ptr noundef nonnull %115, i32 noundef %125) #41, !dbg !1828
  %127 = icmp slt i32 %126, 0, !dbg !1830
  br i1 %127, label %128, label %49, !dbg !1829

128:                                              ; preds = %124
  %129 = tail call ptr @__errno_location() #44, !dbg !1831
  %130 = load i32, ptr %129, align 4, !dbg !1831, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 %130, metadata !1515, metadata !DIExpression()), !dbg !1833
  %131 = load ptr, ptr @stdout, align 8, !dbg !1834, !tbaa !1018
  %132 = tail call i32 @fflush_unlocked(ptr noundef %131) #41, !dbg !1834
  %133 = load ptr, ptr @stdout, align 8, !dbg !1835, !tbaa !1018
  %134 = tail call i32 @fpurge(ptr noundef %133) #41, !dbg !1836
  %135 = load ptr, ptr @stdout, align 8, !dbg !1837, !tbaa !1018
  tail call void @clearerr_unlocked(ptr noundef %135) #41, !dbg !1837
  %136 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #41, !dbg !1838
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %130, ptr noundef %136) #41, !dbg !1838
  unreachable, !dbg !1838

137:                                              ; preds = %66, %54, %63
  call void @llvm.dbg.value(metadata i8 poison, metadata !1726, metadata !DIExpression()), !dbg !1743
  ret void, !dbg !1839
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @cut_file(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !dbg !1840 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1844, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata ptr %1, metadata !1845, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata ptr %0, metadata !1107, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata ptr @.str.30, metadata !1113, metadata !DIExpression()), !dbg !1849
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.30) #42, !dbg !1852
  %4 = icmp eq i32 %3, 0, !dbg !1853
  br i1 %4, label %5, label %7, !dbg !1854

5:                                                ; preds = %2
  store i1 true, ptr @have_read_stdin, align 1, !dbg !1855
  %6 = load ptr, ptr @stdin, align 8, !dbg !1857, !tbaa !1018, !nonnull !1027
  call void @llvm.dbg.value(metadata ptr %6, metadata !1846, metadata !DIExpression()), !dbg !1848
  br label %13, !dbg !1858

7:                                                ; preds = %2
  %8 = tail call noalias ptr @rpl_fopen(ptr noundef %0, ptr noundef nonnull @.str.81) #41, !dbg !1859
  call void @llvm.dbg.value(metadata ptr %8, metadata !1846, metadata !DIExpression()), !dbg !1848
  %9 = icmp eq ptr %8, null, !dbg !1861
  br i1 %9, label %10, label %13, !dbg !1863

10:                                               ; preds = %7
  %11 = tail call ptr @__errno_location() #44, !dbg !1864
  %12 = load i32, ptr %11, align 4, !dbg !1864, !tbaa !1096
  br label %32, !dbg !1866

13:                                               ; preds = %7, %5
  %14 = phi ptr [ %6, %5 ], [ %8, %7 ], !dbg !1867
  call void @llvm.dbg.value(metadata ptr %14, metadata !1846, metadata !DIExpression()), !dbg !1848
  tail call void @fadvise(ptr noundef nonnull %14, i32 noundef 2) #41, !dbg !1868
  tail call void %1(ptr noundef nonnull %14) #41, !dbg !1869, !callees !1870
  %15 = tail call ptr @__errno_location() #44, !dbg !1871
  %16 = load i32, ptr %15, align 4, !dbg !1871, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 %16, metadata !1847, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata ptr %14, metadata !1488, metadata !DIExpression()), !dbg !1872
  %17 = load i32, ptr %14, align 8, !dbg !1875, !tbaa !1495
  %18 = and i32 %17, 32, !dbg !1876
  %19 = icmp eq i32 %18, 0, !dbg !1876
  %20 = select i1 %19, i32 0, i32 %16, !dbg !1877
  call void @llvm.dbg.value(metadata i32 %20, metadata !1847, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata ptr %0, metadata !1107, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata ptr @.str.30, metadata !1113, metadata !DIExpression()), !dbg !1878
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.30) #42, !dbg !1881
  %22 = icmp eq i32 %21, 0, !dbg !1882
  br i1 %22, label %23, label %24, !dbg !1883

23:                                               ; preds = %13
  tail call void @clearerr_unlocked(ptr noundef nonnull %14) #41, !dbg !1884
  br label %29, !dbg !1884

24:                                               ; preds = %13
  %25 = tail call i32 @rpl_fclose(ptr noundef nonnull %14) #41, !dbg !1885
  %26 = icmp eq i32 %25, -1, !dbg !1887
  br i1 %26, label %27, label %29, !dbg !1888

27:                                               ; preds = %24
  %28 = load i32, ptr %15, align 4, !dbg !1889, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 %28, metadata !1847, metadata !DIExpression()), !dbg !1848
  br label %29, !dbg !1890

29:                                               ; preds = %24, %27, %23
  %30 = phi i32 [ %20, %23 ], [ %28, %27 ], [ %20, %24 ], !dbg !1848
  call void @llvm.dbg.value(metadata i32 %30, metadata !1847, metadata !DIExpression()), !dbg !1848
  %31 = icmp eq i32 %30, 0, !dbg !1891
  br i1 %31, label %35, label %32, !dbg !1893

32:                                               ; preds = %29, %10
  %33 = phi i32 [ %12, %10 ], [ %30, %29 ]
  %34 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #41, !dbg !1848
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %33, ptr noundef nonnull @.str.82, ptr noundef %34) #41, !dbg !1848
  br label %35, !dbg !1894

35:                                               ; preds = %32, %29
  %36 = phi i1 [ true, %29 ], [ false, %32 ], !dbg !1848
  ret i1 %36, !dbg !1894
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1895 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1899 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

declare !dbg !1900 i32 @__uflow(ptr noundef) local_unnamed_addr #3

declare !dbg !1901 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1904 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1905 noundef i32 @ungetc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1908 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare !dbg !1911 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @set_fields(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !521 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !569, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i32 %1, metadata !570, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i64 1, metadata !571, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i64 0, metadata !572, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 0, metadata !573, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 0, metadata !574, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 0, metadata !575, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 0, metadata !576, metadata !DIExpression()), !dbg !1915
  %3 = and i32 %1, 1, !dbg !1916
  %4 = icmp ne i32 %3, 0, !dbg !1916
  br i1 %4, label %5, label %10, !dbg !1918

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %0, metadata !1919, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata ptr @.str.37, metadata !1922, metadata !DIExpression()), !dbg !1923
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.37) #42, !dbg !1925
  %7 = icmp eq i32 %6, 0, !dbg !1926
  br i1 %7, label %8, label %10, !dbg !1927

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 1, metadata !572, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 1, metadata !573, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 1, metadata !575, metadata !DIExpression()), !dbg !1915
  %9 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1928
  call void @llvm.dbg.value(metadata ptr %9, metadata !569, metadata !DIExpression()), !dbg !1915
  br label %10, !dbg !1930

10:                                               ; preds = %8, %5, %2
  %11 = phi i64 [ 0, %2 ], [ 0, %5 ], [ 1, %8 ]
  %12 = phi i8 [ 0, %2 ], [ 0, %5 ], [ 1, %8 ]
  %13 = phi ptr [ %0, %2 ], [ %0, %5 ], [ %9, %8 ]
  br label %14, !dbg !1931

14:                                               ; preds = %10, %167
  %15 = phi i64 [ %168, %167 ], [ 1, %10 ], !dbg !1915
  %16 = phi i64 [ %169, %167 ], [ %11, %10 ], !dbg !1915
  %17 = phi i8 [ %170, %167 ], [ %12, %10 ], !dbg !1932
  %18 = phi i8 [ %171, %167 ], [ 0, %10 ], !dbg !1933
  %19 = phi i8 [ %172, %167 ], [ %12, %10 ], !dbg !1915
  %20 = phi i1 [ %173, %167 ], [ false, %10 ], !dbg !1915
  %21 = phi ptr [ %174, %167 ], [ %13, %10 ], !dbg !1915
  call void @llvm.dbg.value(metadata ptr %21, metadata !569, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 poison, metadata !576, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %19, metadata !575, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %18, metadata !574, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %17, metadata !573, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i64 %16, metadata !572, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i64 %15, metadata !571, metadata !DIExpression()), !dbg !1915
  %22 = load i8, ptr %21, align 1, !dbg !1934, !tbaa !1105
  switch i8 %22, label %43 [
    i8 45, label %23
    i8 44, label %53
  ], !dbg !1935

23:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8 0, metadata !576, metadata !DIExpression()), !dbg !1915
  %24 = and i8 %19, 1, !dbg !1936
  %25 = icmp eq i8 %24, 0, !dbg !1936
  br i1 %25, label %31, label %26, !dbg !1939

26:                                               ; preds = %23
  %27 = and i32 %1, 4, !dbg !1940
  %28 = icmp eq i32 %27, 0, !dbg !1940
  %29 = select i1 %28, ptr @.str.2.38, ptr @.str.1.39, !dbg !1940
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %29, i32 noundef 5) #41, !dbg !1940
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %30) #41, !dbg !1940
  tail call void @usage(i32 noundef 1) #43, !dbg !1940
  unreachable, !dbg !1940

31:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8 1, metadata !575, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata ptr %21, metadata !569, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1915
  %32 = and i8 %17, 1, !dbg !1942
  %33 = icmp eq i8 %32, 0, !dbg !1942
  %34 = icmp ne i64 %16, 0
  %35 = select i1 %33, i1 true, i1 %34, !dbg !1944
  br i1 %35, label %41, label %36, !dbg !1944

36:                                               ; preds = %31
  %37 = and i32 %1, 4, !dbg !1945
  %38 = icmp eq i32 %37, 0, !dbg !1945
  %39 = select i1 %38, ptr @.str.4.40, ptr @.str.3.41, !dbg !1945
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %39, i32 noundef 5) #41, !dbg !1945
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %40) #41, !dbg !1945
  tail call void @usage(i32 noundef 1) #43, !dbg !1945
  unreachable, !dbg !1945

41:                                               ; preds = %31
  call void @llvm.dbg.value(metadata ptr %21, metadata !569, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1915
  %42 = select i1 %33, i64 1, i64 %16, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %42, metadata !571, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i64 0, metadata !572, metadata !DIExpression()), !dbg !1915
  br label %167, !dbg !1948

43:                                               ; preds = %14
  %44 = tail call ptr @__ctype_b_loc() #44, !dbg !1949
  %45 = load ptr, ptr %44, align 8, !dbg !1949, !tbaa !1018
  %46 = zext i8 %22 to i64
  %47 = getelementptr inbounds i16, ptr %45, i64 %46, !dbg !1949
  %48 = load i16, ptr %47, align 2, !dbg !1949, !tbaa !1137
  %49 = and i16 %48, 1, !dbg !1949
  %50 = icmp ne i16 %49, 0, !dbg !1949
  %51 = icmp eq i8 %22, 0
  %52 = or i1 %51, %50, !dbg !1950
  br i1 %52, label %53, label %125, !dbg !1950

53:                                               ; preds = %14, %43
  call void @llvm.dbg.value(metadata i8 0, metadata !576, metadata !DIExpression()), !dbg !1915
  %54 = and i8 %19, 1, !dbg !1951
  %55 = icmp eq i8 %54, 0, !dbg !1951
  br i1 %55, label %95, label %56, !dbg !1954

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8 0, metadata !575, metadata !DIExpression()), !dbg !1915
  %57 = and i8 %17, 1, !dbg !1955
  %58 = icmp ne i8 %57, 0, !dbg !1955
  %59 = and i8 %18, 1
  %60 = icmp ne i8 %59, 0
  %61 = select i1 %58, i1 true, i1 %60, !dbg !1958
  %62 = or i1 %4, %61, !dbg !1958
  %63 = select i1 %61, i64 %15, i64 1, !dbg !1958
  br i1 %62, label %66, label %64, !dbg !1958

64:                                               ; preds = %56
  %65 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5.42, i32 noundef 5) #41, !dbg !1959
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %65) #41, !dbg !1959
  tail call void @usage(i32 noundef 1) #43, !dbg !1959
  unreachable, !dbg !1959

66:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i64 %63, metadata !571, metadata !DIExpression()), !dbg !1915
  br i1 %60, label %79, label %67, !dbg !1963

67:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 %63, metadata !1964, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 -1, metadata !1969, metadata !DIExpression()), !dbg !1970
  %68 = load i64, ptr @n_frp, align 8, !dbg !1974, !tbaa !1298
  %69 = load i64, ptr @n_frp_allocated, align 8, !dbg !1976, !tbaa !1298
  %70 = icmp eq i64 %68, %69, !dbg !1977
  %71 = load ptr, ptr @frp, align 8, !dbg !1970, !tbaa !1018
  br i1 %70, label %72, label %75, !dbg !1978

72:                                               ; preds = %67
  %73 = tail call nonnull ptr @xpalloc(ptr noundef %71, ptr noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #41, !dbg !1979
  store ptr %73, ptr @frp, align 8, !dbg !1980, !tbaa !1018
  %74 = load i64, ptr @n_frp, align 8, !dbg !1981, !tbaa !1298
  br label %75, !dbg !1982

75:                                               ; preds = %67, %72
  %76 = phi i64 [ %74, %72 ], [ %68, %67 ], !dbg !1981
  %77 = phi ptr [ %73, %72 ], [ %71, %67 ], !dbg !1983
  %78 = getelementptr inbounds %struct.field_range_pair, ptr %77, i64 %76, !dbg !1983
  store i64 %63, ptr %78, align 8, !dbg !1984, !tbaa !1468
  br label %114, !dbg !1985

79:                                               ; preds = %66
  %80 = icmp ult i64 %16, %63, !dbg !1986
  br i1 %80, label %81, label %83, !dbg !1989

81:                                               ; preds = %79
  %82 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6.43, i32 noundef 5) #41, !dbg !1990
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %82) #41, !dbg !1990
  tail call void @usage(i32 noundef 1) #43, !dbg !1990
  unreachable, !dbg !1990

83:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i64 %63, metadata !1964, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i64 %16, metadata !1969, metadata !DIExpression()), !dbg !1992
  %84 = load i64, ptr @n_frp, align 8, !dbg !1994, !tbaa !1298
  %85 = load i64, ptr @n_frp_allocated, align 8, !dbg !1995, !tbaa !1298
  %86 = icmp eq i64 %84, %85, !dbg !1996
  %87 = load ptr, ptr @frp, align 8, !dbg !1992, !tbaa !1018
  br i1 %86, label %88, label %91, !dbg !1997

88:                                               ; preds = %83
  %89 = tail call nonnull ptr @xpalloc(ptr noundef %87, ptr noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #41, !dbg !1998
  store ptr %89, ptr @frp, align 8, !dbg !1999, !tbaa !1018
  %90 = load i64, ptr @n_frp, align 8, !dbg !2000, !tbaa !1298
  br label %91, !dbg !2001

91:                                               ; preds = %83, %88
  %92 = phi i64 [ %90, %88 ], [ %84, %83 ], !dbg !2000
  %93 = phi ptr [ %89, %88 ], [ %87, %83 ], !dbg !2002
  %94 = getelementptr inbounds %struct.field_range_pair, ptr %93, i64 %92, !dbg !2002
  store i64 %63, ptr %94, align 8, !dbg !2003, !tbaa !1468
  br label %114

95:                                               ; preds = %53
  %96 = icmp eq i64 %16, 0, !dbg !2004
  br i1 %96, label %97, label %102, !dbg !2007

97:                                               ; preds = %95
  %98 = and i32 %1, 4, !dbg !2008
  %99 = icmp eq i32 %98, 0, !dbg !2008
  %100 = select i1 %99, ptr @.str.4.40, ptr @.str.3.41, !dbg !2008
  %101 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %100, i32 noundef 5) #41, !dbg !2008
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %101) #41, !dbg !2008
  tail call void @usage(i32 noundef 1) #43, !dbg !2008
  unreachable, !dbg !2008

102:                                              ; preds = %95
  call void @llvm.dbg.value(metadata i64 %16, metadata !1964, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata i64 %16, metadata !1969, metadata !DIExpression()), !dbg !2010
  %103 = load i64, ptr @n_frp, align 8, !dbg !2012, !tbaa !1298
  %104 = load i64, ptr @n_frp_allocated, align 8, !dbg !2013, !tbaa !1298
  %105 = icmp eq i64 %103, %104, !dbg !2014
  %106 = load ptr, ptr @frp, align 8, !dbg !2010, !tbaa !1018
  br i1 %105, label %107, label %110, !dbg !2015

107:                                              ; preds = %102
  %108 = tail call nonnull ptr @xpalloc(ptr noundef %106, ptr noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #41, !dbg !2016
  store ptr %108, ptr @frp, align 8, !dbg !2017, !tbaa !1018
  %109 = load i64, ptr @n_frp, align 8, !dbg !2018, !tbaa !1298
  br label %110, !dbg !2019

110:                                              ; preds = %102, %107
  %111 = phi i64 [ %109, %107 ], [ %103, %102 ], !dbg !2018
  %112 = phi ptr [ %108, %107 ], [ %106, %102 ], !dbg !2020
  %113 = getelementptr inbounds %struct.field_range_pair, ptr %112, i64 %111, !dbg !2020
  store i64 %16, ptr %113, align 8, !dbg !2021, !tbaa !1468
  call void @llvm.dbg.value(metadata i64 0, metadata !572, metadata !DIExpression()), !dbg !1915
  br label %114

114:                                              ; preds = %75, %91, %110
  %115 = phi ptr [ %77, %75 ], [ %93, %91 ], [ %112, %110 ]
  %116 = phi i64 [ -1, %75 ], [ %16, %91 ], [ %16, %110 ]
  %117 = phi i64 [ %63, %75 ], [ %63, %91 ], [ %15, %110 ], !dbg !2022
  %118 = phi i8 [ 0, %75 ], [ 0, %91 ], [ %19, %110 ], !dbg !1915
  %119 = load i64, ptr @n_frp, align 8, !dbg !2023, !tbaa !1298
  %120 = getelementptr inbounds %struct.field_range_pair, ptr %115, i64 %119, i32 1, !dbg !2023
  store i64 %116, ptr %120, align 8, !dbg !2023, !tbaa !1595
  %121 = load i64, ptr @n_frp, align 8, !dbg !2023, !tbaa !1298
  %122 = add nsw i64 %121, 1, !dbg !2023
  store i64 %122, ptr @n_frp, align 8, !dbg !2023, !tbaa !1298
  call void @llvm.dbg.value(metadata i8 %118, metadata !575, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i64 0, metadata !572, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i64 %117, metadata !571, metadata !DIExpression()), !dbg !1915
  %123 = load i8, ptr %21, align 1, !dbg !2024, !tbaa !1105
  %124 = icmp eq i8 %123, 0, !dbg !2026
  br i1 %124, label %175, label %167, !dbg !2027

125:                                              ; preds = %43
  %126 = sext i8 %22 to i32, !dbg !2028
  call void @llvm.dbg.value(metadata i32 %126, metadata !2029, metadata !DIExpression()), !dbg !2035
  %127 = add nsw i32 %126, -48, !dbg !2037
  %128 = icmp ult i32 %127, 10, !dbg !2037
  br i1 %128, label %129, label %161, !dbg !2038

129:                                              ; preds = %125
  %130 = load ptr, ptr @set_fields.num_start, align 8
  %131 = icmp ne ptr %130, null
  %132 = select i1 %20, i1 %131, i1 false, !dbg !2039
  br i1 %132, label %134, label %133, !dbg !2039

133:                                              ; preds = %129
  store ptr %21, ptr @set_fields.num_start, align 8, !dbg !2041, !tbaa !1018
  br label %134, !dbg !2042

134:                                              ; preds = %129, %133
  %135 = phi ptr [ %130, %129 ], [ %21, %133 ]
  call void @llvm.dbg.value(metadata i8 1, metadata !576, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 poison, metadata !574, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 poison, metadata !573, metadata !DIExpression()), !dbg !1915
  %136 = icmp ult i64 %16, 1844674407370955162, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %16, metadata !572, metadata !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value)), !dbg !1915
  br i1 %136, label %137, label %153, !dbg !2043

137:                                              ; preds = %134
  %138 = and i8 %19, 1, !dbg !2044
  %139 = icmp eq i8 %138, 0, !dbg !2044
  %140 = select i1 %139, i8 %18, i8 1
  call void @llvm.dbg.value(metadata i8 %140, metadata !574, metadata !DIExpression()), !dbg !1915
  %141 = select i1 %139, i8 1, i8 %17
  call void @llvm.dbg.value(metadata i8 %141, metadata !573, metadata !DIExpression()), !dbg !1915
  %142 = mul nuw i64 %16, 10, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %142, metadata !572, metadata !DIExpression()), !dbg !1915
  %143 = zext i64 %142 to i65, !dbg !2043
  %144 = zext i32 %127 to i65, !dbg !2043
  %145 = tail call { i65, i1 } @llvm.sadd.with.overflow.i65(i65 %143, i65 %144), !dbg !2043
  %146 = extractvalue { i65, i1 } %145, 1, !dbg !2043
  %147 = extractvalue { i65, i1 } %145, 0, !dbg !2043
  %148 = trunc i65 %147 to i64, !dbg !2043
  %149 = icmp slt i65 %147, 0, !dbg !2043
  %150 = or i1 %146, %149, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %148, metadata !572, metadata !DIExpression()), !dbg !1915
  %151 = icmp eq i64 %148, -1
  %152 = or i1 %150, %151, !dbg !2046
  br i1 %152, label %153, label %167, !dbg !2046

153:                                              ; preds = %137, %134
  %154 = tail call i64 @strspn(ptr noundef nonnull %135, ptr noundef nonnull @.str.7.44) #42, !dbg !2047
  %155 = tail call noalias nonnull ptr @ximemdup0(ptr noundef nonnull %135, i64 noundef %154) #41, !dbg !2048
  call void @llvm.dbg.value(metadata ptr %155, metadata !577, metadata !DIExpression()), !dbg !2049
  %156 = and i32 %1, 4, !dbg !2050
  %157 = icmp eq i32 %156, 0, !dbg !2050
  %158 = select i1 %157, ptr @.str.9.45, ptr @.str.8.46, !dbg !2050
  %159 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %158, i32 noundef 5) #41, !dbg !2050
  %160 = tail call ptr @quote(ptr noundef nonnull %155) #41, !dbg !2050
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %159, ptr noundef %160) #41, !dbg !2050
  tail call void @free(ptr noundef nonnull %155) #41, !dbg !2051
  tail call void @usage(i32 noundef 1) #43, !dbg !2052
  unreachable, !dbg !2052

161:                                              ; preds = %125
  %162 = and i32 %1, 4, !dbg !2053
  %163 = icmp eq i32 %162, 0, !dbg !2053
  %164 = select i1 %163, ptr @.str.11.47, ptr @.str.10.48, !dbg !2053
  %165 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %164, i32 noundef 5) #41, !dbg !2053
  %166 = tail call ptr @quote(ptr noundef nonnull %21) #41, !dbg !2053
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %165, ptr noundef %166) #41, !dbg !2053
  tail call void @usage(i32 noundef 1) #43, !dbg !2055
  unreachable, !dbg !2055

167:                                              ; preds = %137, %114, %41
  %168 = phi i64 [ %42, %41 ], [ %117, %114 ], [ %15, %137 ], !dbg !1915
  %169 = phi i64 [ 0, %41 ], [ 0, %114 ], [ %148, %137 ], !dbg !2056
  %170 = phi i8 [ %17, %41 ], [ 0, %114 ], [ %141, %137 ], !dbg !1915
  %171 = phi i8 [ %18, %41 ], [ 0, %114 ], [ %140, %137 ], !dbg !1915
  %172 = phi i8 [ 1, %41 ], [ %118, %114 ], [ %19, %137 ], !dbg !1915
  %173 = phi i1 [ false, %41 ], [ false, %114 ], [ true, %137 ], !dbg !2056
  %174 = getelementptr inbounds i8, ptr %21, i64 1, !dbg !2056
  call void @llvm.dbg.value(metadata ptr %174, metadata !569, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 poison, metadata !576, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %172, metadata !575, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %171, metadata !574, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %170, metadata !573, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i64 %169, metadata !572, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i64 %168, metadata !571, metadata !DIExpression()), !dbg !1915
  br label %14, !dbg !1931, !llvm.loop !2057

175:                                              ; preds = %114
  %176 = icmp eq i64 %122, 0, !dbg !2059
  br i1 %176, label %177, label %182, !dbg !2061

177:                                              ; preds = %175
  %178 = and i32 %1, 4, !dbg !2062
  %179 = icmp eq i32 %178, 0, !dbg !2062
  %180 = select i1 %179, ptr @.str.13.49, ptr @.str.12.50, !dbg !2062
  %181 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %180, i32 noundef 5) #41, !dbg !2062
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %181) #41, !dbg !2062
  tail call void @usage(i32 noundef 1) #43, !dbg !2062
  unreachable, !dbg !2062

182:                                              ; preds = %175
  tail call void @qsort(ptr noundef nonnull %115, i64 noundef %122, i64 noundef 16, ptr noundef nonnull @compare_ranges) #41, !dbg !2064
  call void @llvm.dbg.value(metadata i64 0, metadata !585, metadata !DIExpression()), !dbg !2065
  %183 = load i64, ptr @n_frp, align 8, !dbg !2066, !tbaa !1298
  %184 = icmp sgt i64 %183, 0, !dbg !2067
  br i1 %184, label %189, label %185, !dbg !2068

185:                                              ; preds = %224, %182
  %186 = phi i64 [ %183, %182 ], [ %225, %224 ], !dbg !2066
  %187 = and i32 %1, 2, !dbg !2069
  %188 = icmp eq i32 %187, 0, !dbg !2069
  br i1 %188, label %299, label %227, !dbg !2071

189:                                              ; preds = %182, %224
  %190 = phi i64 [ %225, %224 ], [ %183, %182 ]
  %191 = phi i64 [ %192, %224 ], [ 0, %182 ]
  call void @llvm.dbg.value(metadata i64 %191, metadata !585, metadata !DIExpression()), !dbg !2065
  %192 = add nuw nsw i64 %191, 1, !dbg !2072
  call void @llvm.dbg.value(metadata i64 %192, metadata !587, metadata !DIExpression()), !dbg !2073
  %193 = icmp slt i64 %192, %190, !dbg !2074
  br i1 %193, label %194, label %224, !dbg !2076

194:                                              ; preds = %189
  %195 = sub nsw i64 1152921504606846974, %191
  %196 = load ptr, ptr @frp, align 8, !dbg !2077, !tbaa !1018
  %197 = getelementptr inbounds %struct.field_range_pair, ptr %196, i64 %192, !dbg !2077
  %198 = load i64, ptr %197, align 8, !dbg !2080, !tbaa !1468
  %199 = getelementptr inbounds %struct.field_range_pair, ptr %196, i64 %191, i32 1, !dbg !2081
  %200 = load i64, ptr %199, align 8, !dbg !2081, !tbaa !1595
  %201 = icmp ugt i64 %198, %200, !dbg !2082
  br i1 %201, label %224, label %209, !dbg !2083

202:                                              ; preds = %209
  %203 = load ptr, ptr @frp, align 8, !dbg !2077, !tbaa !1018
  %204 = getelementptr inbounds %struct.field_range_pair, ptr %203, i64 %192, !dbg !2077
  %205 = load i64, ptr %204, align 8, !dbg !2080, !tbaa !1468
  %206 = getelementptr inbounds %struct.field_range_pair, ptr %203, i64 %191, i32 1, !dbg !2081
  %207 = load i64, ptr %206, align 8, !dbg !2081, !tbaa !1595
  %208 = icmp ugt i64 %205, %207, !dbg !2082
  br i1 %208, label %224, label %209, !dbg !2083, !llvm.loop !2084

209:                                              ; preds = %194, %202
  %210 = phi i64 [ %207, %202 ], [ %200, %194 ]
  %211 = phi ptr [ %206, %202 ], [ %199, %194 ]
  %212 = phi ptr [ %204, %202 ], [ %197, %194 ]
  %213 = phi ptr [ %203, %202 ], [ %196, %194 ]
  %214 = getelementptr inbounds %struct.field_range_pair, ptr %213, i64 %192, i32 1, !dbg !2086
  %215 = load i64, ptr %214, align 8, !dbg !2086, !tbaa !1595
  %216 = tail call i64 @llvm.umax.i64(i64 %215, i64 %210), !dbg !2086
  store i64 %216, ptr %211, align 8, !dbg !2088, !tbaa !1595
  %217 = getelementptr inbounds %struct.field_range_pair, ptr %212, i64 1, !dbg !2089
  %218 = load i64, ptr @n_frp, align 8, !dbg !2090, !tbaa !1298
  %219 = add i64 %195, %218, !dbg !2091
  %220 = shl i64 %219, 4, !dbg !2092
  call void @llvm.dbg.value(metadata ptr %212, metadata !2093, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata ptr %217, metadata !2099, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %220, metadata !2100, metadata !DIExpression()), !dbg !2101
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %212, ptr noundef nonnull align 1 %217, i64 noundef %220, i1 noundef false) #41, !dbg !2103
  %221 = load i64, ptr @n_frp, align 8, !dbg !2104, !tbaa !1298
  %222 = add nsw i64 %221, -1, !dbg !2104
  store i64 %222, ptr @n_frp, align 8, !dbg !2104, !tbaa !1298
  call void @llvm.dbg.value(metadata i64 %192, metadata !587, metadata !DIExpression()), !dbg !2073
  %223 = icmp slt i64 %192, %222, !dbg !2074
  br i1 %223, label %202, label %224, !dbg !2076, !llvm.loop !2084

224:                                              ; preds = %202, %209, %194, %189
  %225 = phi i64 [ %190, %189 ], [ %190, %194 ], [ %222, %209 ], [ %222, %202 ], !dbg !2066
  call void @llvm.dbg.value(metadata i64 %192, metadata !585, metadata !DIExpression()), !dbg !2065
  %226 = icmp slt i64 %192, %225, !dbg !2067
  br i1 %226, label %189, label %185, !dbg !2068, !llvm.loop !2105

227:                                              ; preds = %185
  %228 = load ptr, ptr @frp, align 8, !dbg !2107, !tbaa !1018
  call void @llvm.dbg.value(metadata ptr %228, metadata !2110, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %186, metadata !2111, metadata !DIExpression()), !dbg !2115
  store ptr null, ptr @frp, align 8, !dbg !2116, !tbaa !1018
  store i64 0, ptr @n_frp, align 8, !dbg !2117, !tbaa !1298
  store i64 0, ptr @n_frp_allocated, align 8, !dbg !2118, !tbaa !1298
  %229 = load i64, ptr %228, align 8, !dbg !2119, !tbaa !1468
  %230 = icmp ugt i64 %229, 1, !dbg !2121
  br i1 %230, label %231, label %240, !dbg !2122

231:                                              ; preds = %227
  %232 = add i64 %229, -1, !dbg !2123
  call void @llvm.dbg.value(metadata i64 1, metadata !1964, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i64 %232, metadata !1969, metadata !DIExpression()), !dbg !2124
  %233 = tail call nonnull ptr @xpalloc(ptr noundef null, ptr noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #41, !dbg !2126
  store ptr %233, ptr @frp, align 8, !dbg !2127, !tbaa !1018
  %234 = load i64, ptr @n_frp, align 8, !dbg !2128, !tbaa !1298
  %235 = getelementptr inbounds %struct.field_range_pair, ptr %233, i64 %234, !dbg !2129
  store i64 1, ptr %235, align 8, !dbg !2130, !tbaa !1468
  %236 = load i64, ptr @n_frp, align 8, !dbg !2131, !tbaa !1298
  %237 = getelementptr inbounds %struct.field_range_pair, ptr %233, i64 %236, i32 1, !dbg !2132
  store i64 %232, ptr %237, align 8, !dbg !2133, !tbaa !1595
  %238 = load i64, ptr @n_frp, align 8, !dbg !2134, !tbaa !1298
  %239 = add nsw i64 %238, 1, !dbg !2134
  store i64 %239, ptr @n_frp, align 8, !dbg !2134, !tbaa !1298
  br label %240, !dbg !2135

240:                                              ; preds = %231, %227
  %241 = phi ptr [ %233, %231 ], [ null, %227 ]
  %242 = phi i64 [ %239, %231 ], [ 0, %227 ]
  call void @llvm.dbg.value(metadata i64 1, metadata !2112, metadata !DIExpression()), !dbg !2136
  %243 = icmp sgt i64 %186, 1, !dbg !2137
  br i1 %243, label %251, label %244, !dbg !2139

244:                                              ; preds = %277, %240
  %245 = phi ptr [ %241, %240 ], [ %278, %277 ]
  %246 = phi i64 [ %242, %240 ], [ %279, %277 ]
  %247 = add nsw i64 %186, -1, !dbg !2140
  %248 = getelementptr inbounds %struct.field_range_pair, ptr %228, i64 %247, i32 1, !dbg !2142
  %249 = load i64, ptr %248, align 8, !dbg !2142, !tbaa !1595
  %250 = icmp eq i64 %249, -1, !dbg !2143
  br i1 %250, label %297, label %282, !dbg !2144

251:                                              ; preds = %240, %277
  %252 = phi ptr [ %278, %277 ], [ %241, %240 ]
  %253 = phi i64 [ %279, %277 ], [ %242, %240 ]
  %254 = phi i64 [ %280, %277 ], [ 1, %240 ]
  call void @llvm.dbg.value(metadata i64 %254, metadata !2112, metadata !DIExpression()), !dbg !2136
  %255 = add nsw i64 %254, -1, !dbg !2145
  %256 = getelementptr inbounds %struct.field_range_pair, ptr %228, i64 %255, i32 1, !dbg !2148
  %257 = load i64, ptr %256, align 8, !dbg !2148, !tbaa !1595
  %258 = add i64 %257, 1, !dbg !2149
  %259 = getelementptr inbounds %struct.field_range_pair, ptr %228, i64 %254, !dbg !2150
  %260 = load i64, ptr %259, align 8, !dbg !2151, !tbaa !1468
  %261 = icmp eq i64 %258, %260, !dbg !2152
  br i1 %261, label %277, label %262, !dbg !2153

262:                                              ; preds = %251
  %263 = add i64 %260, -1, !dbg !2154
  call void @llvm.dbg.value(metadata i64 %258, metadata !1964, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i64 %263, metadata !1969, metadata !DIExpression()), !dbg !2155
  %264 = load i64, ptr @n_frp_allocated, align 8, !dbg !2157, !tbaa !1298
  %265 = icmp eq i64 %253, %264, !dbg !2158
  br i1 %265, label %266, label %269, !dbg !2159

266:                                              ; preds = %262
  %267 = tail call nonnull ptr @xpalloc(ptr noundef %252, ptr noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #41, !dbg !2160
  store ptr %267, ptr @frp, align 8, !dbg !2161, !tbaa !1018
  %268 = load i64, ptr @n_frp, align 8, !dbg !2162, !tbaa !1298
  br label %269, !dbg !2163

269:                                              ; preds = %266, %262
  %270 = phi ptr [ %267, %266 ], [ %252, %262 ]
  %271 = phi i64 [ %268, %266 ], [ %253, %262 ], !dbg !2162
  %272 = getelementptr inbounds %struct.field_range_pair, ptr %270, i64 %271, !dbg !2164
  store i64 %258, ptr %272, align 8, !dbg !2165, !tbaa !1468
  %273 = load i64, ptr @n_frp, align 8, !dbg !2166, !tbaa !1298
  %274 = getelementptr inbounds %struct.field_range_pair, ptr %270, i64 %273, i32 1, !dbg !2167
  store i64 %263, ptr %274, align 8, !dbg !2168, !tbaa !1595
  %275 = load i64, ptr @n_frp, align 8, !dbg !2169, !tbaa !1298
  %276 = add nsw i64 %275, 1, !dbg !2169
  store i64 %276, ptr @n_frp, align 8, !dbg !2169, !tbaa !1298
  br label %277, !dbg !2170

277:                                              ; preds = %269, %251
  %278 = phi ptr [ %252, %251 ], [ %270, %269 ]
  %279 = phi i64 [ %253, %251 ], [ %276, %269 ]
  %280 = add nuw nsw i64 %254, 1, !dbg !2171
  call void @llvm.dbg.value(metadata i64 %280, metadata !2112, metadata !DIExpression()), !dbg !2136
  %281 = icmp eq i64 %280, %186, !dbg !2137
  br i1 %281, label %244, label %251, !dbg !2139, !llvm.loop !2172

282:                                              ; preds = %244
  %283 = add nuw i64 %249, 1, !dbg !2174
  call void @llvm.dbg.value(metadata i64 %283, metadata !1964, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i64 -1, metadata !1969, metadata !DIExpression()), !dbg !2175
  %284 = load i64, ptr @n_frp_allocated, align 8, !dbg !2177, !tbaa !1298
  %285 = icmp eq i64 %246, %284, !dbg !2178
  br i1 %285, label %286, label %289, !dbg !2179

286:                                              ; preds = %282
  %287 = tail call nonnull ptr @xpalloc(ptr noundef %245, ptr noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #41, !dbg !2180
  store ptr %287, ptr @frp, align 8, !dbg !2181, !tbaa !1018
  %288 = load i64, ptr @n_frp, align 8, !dbg !2182, !tbaa !1298
  br label %289, !dbg !2183

289:                                              ; preds = %286, %282
  %290 = phi i64 [ %288, %286 ], [ %246, %282 ], !dbg !2182
  %291 = phi ptr [ %287, %286 ], [ %245, %282 ], !dbg !2184
  %292 = getelementptr inbounds %struct.field_range_pair, ptr %291, i64 %290, !dbg !2184
  store i64 %283, ptr %292, align 8, !dbg !2185, !tbaa !1468
  %293 = load i64, ptr @n_frp, align 8, !dbg !2186, !tbaa !1298
  %294 = getelementptr inbounds %struct.field_range_pair, ptr %291, i64 %293, i32 1, !dbg !2187
  store i64 -1, ptr %294, align 8, !dbg !2188, !tbaa !1595
  %295 = load i64, ptr @n_frp, align 8, !dbg !2189, !tbaa !1298
  %296 = add nsw i64 %295, 1, !dbg !2189
  store i64 %296, ptr @n_frp, align 8, !dbg !2189, !tbaa !1298
  br label %297, !dbg !2190

297:                                              ; preds = %244, %289
  tail call void @free(ptr noundef nonnull %228) #41, !dbg !2191
  %298 = load i64, ptr @n_frp, align 8, !dbg !2192, !tbaa !1298
  br label %299, !dbg !2193

299:                                              ; preds = %297, %185
  %300 = phi i64 [ %298, %297 ], [ %186, %185 ], !dbg !2192
  %301 = add nsw i64 %300, 1, !dbg !2192
  store i64 %301, ptr @n_frp, align 8, !dbg !2192, !tbaa !1298
  %302 = load ptr, ptr @frp, align 8, !dbg !2194, !tbaa !1018
  %303 = shl i64 %301, 4, !dbg !2195
  %304 = tail call ptr @xrealloc(ptr noundef %302, i64 noundef %303) #46, !dbg !2196
  store ptr %304, ptr @frp, align 8, !dbg !2197, !tbaa !1018
  %305 = load i64, ptr @n_frp, align 8, !dbg !2198, !tbaa !1298
  %306 = add nsw i64 %305, -1, !dbg !2199
  %307 = getelementptr inbounds %struct.field_range_pair, ptr %304, i64 %306, i32 1, !dbg !2200
  store i64 -1, ptr %307, align 8, !dbg !2201, !tbaa !1595
  %308 = load i64, ptr @n_frp, align 8, !dbg !2202, !tbaa !1298
  %309 = add nsw i64 %308, -1, !dbg !2203
  %310 = getelementptr inbounds %struct.field_range_pair, ptr %304, i64 %309, !dbg !2204
  store i64 -1, ptr %310, align 8, !dbg !2205, !tbaa !1468
  ret void, !dbg !2206
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i65, i1 } @llvm.sadd.with.overflow.i65(i65, i65) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @compare_ranges(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !dbg !2207 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2211, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata ptr %1, metadata !2212, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata ptr %0, metadata !2213, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata ptr %1, metadata !2216, metadata !DIExpression()), !dbg !2217
  %3 = load i64, ptr %0, align 8, !dbg !2218, !tbaa !1468
  %4 = load i64, ptr %1, align 8, !dbg !2218, !tbaa !1468
  %5 = icmp ugt i64 %3, %4, !dbg !2218
  %6 = zext i1 %5 to i32, !dbg !2218
  %7 = icmp ult i64 %3, %4, !dbg !2218
  %8 = sext i1 %7 to i32, !dbg !2218
  %9 = add nsw i32 %8, %6, !dbg !2218
  ret i32 %9, !dbg !2219
}

; Function Attrs: nofree
declare !dbg !2220 void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #15 !dbg !2225 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2227, metadata !DIExpression()), !dbg !2228
  store ptr %0, ptr @file_name, align 8, !dbg !2229, !tbaa !1018
  ret void, !dbg !2230
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #15 !dbg !2231 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2235, metadata !DIExpression()), !dbg !2236
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !2237, !tbaa !2238
  ret void, !dbg !2240
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2241 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2246, !tbaa !1018
  %2 = tail call i32 @close_stream(ptr noundef %1) #41, !dbg !2247
  %3 = icmp eq i32 %2, 0, !dbg !2248
  br i1 %3, label %22, label %4, !dbg !2249

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !2250, !tbaa !2238, !range !2251, !noundef !1027
  %6 = icmp eq i8 %5, 0, !dbg !2250
  br i1 %6, label %11, label %7, !dbg !2252

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #44, !dbg !2253
  %9 = load i32, ptr %8, align 4, !dbg !2253, !tbaa !1096
  %10 = icmp eq i32 %9, 32, !dbg !2254
  br i1 %10, label %22, label %11, !dbg !2255

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.1.84, i32 noundef 5) #41, !dbg !2256
  call void @llvm.dbg.value(metadata ptr %12, metadata !2243, metadata !DIExpression()), !dbg !2257
  %13 = load ptr, ptr @file_name, align 8, !dbg !2258, !tbaa !1018
  %14 = icmp eq ptr %13, null, !dbg !2258
  %15 = tail call ptr @__errno_location() #44, !dbg !2260
  %16 = load i32, ptr %15, align 4, !dbg !2260, !tbaa !1096
  br i1 %14, label %19, label %17, !dbg !2261

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #41, !dbg !2262
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.85, ptr noundef %18, ptr noundef %12) #41, !dbg !2262
  br label %20, !dbg !2262

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.86, ptr noundef %12) #41, !dbg !2263
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2264, !tbaa !1096
  tail call void @_exit(i32 noundef %21) #43, !dbg !2265
  unreachable, !dbg !2265

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2266, !tbaa !1018
  %24 = tail call i32 @close_stream(ptr noundef %23) #41, !dbg !2268
  %25 = icmp eq i32 %24, 0, !dbg !2269
  br i1 %25, label %28, label %26, !dbg !2270

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2271, !tbaa !1096
  tail call void @_exit(i32 noundef %27) #43, !dbg !2272
  unreachable, !dbg !2272

28:                                               ; preds = %22
  ret void, !dbg !2273
}

; Function Attrs: noreturn
declare !dbg !2274 void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #17 !dbg !2276 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2280, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i32 %1, metadata !2281, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata ptr %2, metadata !2282, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata ptr %3, metadata !2283, metadata !DIExpression()), !dbg !2284
  tail call fastcc void @flush_stdout(), !dbg !2285
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2286, !tbaa !1018
  %6 = icmp eq ptr %5, null, !dbg !2286
  br i1 %6, label %8, label %7, !dbg !2288

7:                                                ; preds = %4
  tail call void %5() #41, !dbg !2289
  br label %12, !dbg !2289

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2290, !tbaa !1018
  %10 = tail call ptr @getprogname() #42, !dbg !2290
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.87, ptr noundef %10) #41, !dbg !2290
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2292
  ret void, !dbg !2293
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2294 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2296, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i32 1, metadata !2298, metadata !DIExpression()), !dbg !2301
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #41, !dbg !2304
  %2 = icmp slt i32 %1, 0, !dbg !2305
  br i1 %2, label %6, label %3, !dbg !2306

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2307, !tbaa !1018
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #41, !dbg !2307
  br label %6, !dbg !2307

6:                                                ; preds = %3, %0
  ret void, !dbg !2308
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !2309 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2311, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i32 %1, metadata !2312, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata ptr %2, metadata !2313, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata ptr %3, metadata !2314, metadata !DIExpression()), !dbg !2315
  %6 = load ptr, ptr @stderr, align 8, !dbg !2316, !tbaa !1018
  call void @llvm.dbg.value(metadata ptr %6, metadata !2317, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata ptr %2, metadata !2357, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata ptr %3, metadata !2358, metadata !DIExpression()), !dbg !2359
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #41, !dbg !2361
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2362, !tbaa !1096
  %9 = add i32 %8, 1, !dbg !2362
  store i32 %9, ptr @error_message_count, align 4, !dbg !2362, !tbaa !1096
  %10 = icmp eq i32 %1, 0, !dbg !2363
  br i1 %10, label %20, label %11, !dbg !2365

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2366, metadata !DIExpression()), !dbg !2374
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #41, !dbg !2376
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2370, metadata !DIExpression()), !dbg !2377
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #41, !dbg !2378
  call void @llvm.dbg.value(metadata ptr %12, metadata !2369, metadata !DIExpression()), !dbg !2374
  %13 = icmp eq ptr %12, null, !dbg !2379
  br i1 %13, label %14, label %16, !dbg !2381

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.88, ptr noundef nonnull @.str.5.89, i32 noundef 5) #41, !dbg !2382
  call void @llvm.dbg.value(metadata ptr %15, metadata !2369, metadata !DIExpression()), !dbg !2374
  br label %16, !dbg !2383

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2374
  call void @llvm.dbg.value(metadata ptr %17, metadata !2369, metadata !DIExpression()), !dbg !2374
  %18 = load ptr, ptr @stderr, align 8, !dbg !2384, !tbaa !1018
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.90, ptr noundef %17) #41, !dbg !2384
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #41, !dbg !2385
  br label %20, !dbg !2386

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2387, !tbaa !1018
  call void @llvm.dbg.value(metadata i32 10, metadata !2388, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata ptr %21, metadata !2393, metadata !DIExpression()), !dbg !2394
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2396
  %23 = load ptr, ptr %22, align 8, !dbg !2396, !tbaa !1540
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2396
  %25 = load ptr, ptr %24, align 8, !dbg !2396, !tbaa !1541
  %26 = icmp ult ptr %23, %25, !dbg !2396
  br i1 %26, label %29, label %27, !dbg !2396, !prof !1453

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #41, !dbg !2396
  br label %31, !dbg !2396

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2396
  store ptr %30, ptr %22, align 8, !dbg !2396, !tbaa !1540
  store i8 10, ptr %23, align 1, !dbg !2396, !tbaa !1105
  br label %31, !dbg !2396

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2397, !tbaa !1018
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #41, !dbg !2397
  %34 = icmp eq i32 %0, 0, !dbg !2398
  br i1 %34, label %36, label %35, !dbg !2400

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #43, !dbg !2401
  unreachable, !dbg !2401

36:                                               ; preds = %31
  ret void, !dbg !2402
}

declare !dbg !2403 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !2406 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #18

declare !dbg !2409 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2413 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2417, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata i32 %1, metadata !2418, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata ptr %2, metadata !2419, metadata !DIExpression()), !dbg !2426
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #41, !dbg !2427
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2420, metadata !DIExpression()), !dbg !2428
  call void @llvm.va_start(ptr nonnull %4), !dbg !2429
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #47, !dbg !2430
  call void @llvm.va_end(ptr nonnull %4), !dbg !2431
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #41, !dbg !2432
  ret void, !dbg !2432
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #17 !dbg !623 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !635, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %1, metadata !636, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata ptr %2, metadata !637, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %3, metadata !638, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata ptr %4, metadata !639, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata ptr %5, metadata !640, metadata !DIExpression()), !dbg !2433
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2434, !tbaa !1096
  %8 = icmp eq i32 %7, 0, !dbg !2434
  br i1 %8, label %23, label %9, !dbg !2436

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2437, !tbaa !1096
  %11 = icmp eq i32 %10, %3, !dbg !2440
  br i1 %11, label %12, label %22, !dbg !2441

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2442, !tbaa !1018
  %14 = icmp eq ptr %13, %2, !dbg !2443
  br i1 %14, label %36, label %15, !dbg !2444

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2445
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2446
  br i1 %18, label %19, label %22, !dbg !2446

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !2447
  %21 = icmp eq i32 %20, 0, !dbg !2448
  br i1 %21, label %36, label %22, !dbg !2449

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2450, !tbaa !1018
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2451, !tbaa !1096
  br label %23, !dbg !2452

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2453
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2454, !tbaa !1018
  %25 = icmp eq ptr %24, null, !dbg !2454
  br i1 %25, label %27, label %26, !dbg !2456

26:                                               ; preds = %23
  tail call void %24() #41, !dbg !2457
  br label %31, !dbg !2457

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2458, !tbaa !1018
  %29 = tail call ptr @getprogname() #42, !dbg !2458
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.93, ptr noundef %29) #41, !dbg !2458
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2460, !tbaa !1018
  %33 = icmp eq ptr %2, null, !dbg !2460
  %34 = select i1 %33, ptr @.str.3.94, ptr @.str.2.95, !dbg !2460
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #41, !dbg !2460
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2461
  br label %36, !dbg !2462

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2462
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2463 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2467, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i32 %1, metadata !2468, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata ptr %2, metadata !2469, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i32 %3, metadata !2470, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata ptr %4, metadata !2471, metadata !DIExpression()), !dbg !2473
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #41, !dbg !2474
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2472, metadata !DIExpression()), !dbg !2475
  call void @llvm.va_start(ptr nonnull %6), !dbg !2476
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #47, !dbg !2477
  call void @llvm.va_end(ptr nonnull %6), !dbg !2478
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #41, !dbg !2479
  ret void, !dbg !2479
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2480 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2486, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i64 %1, metadata !2487, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i64 %2, metadata !2488, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i32 %3, metadata !2489, metadata !DIExpression()), !dbg !2490
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #41, !dbg !2491
  ret void, !dbg !2492
}

; Function Attrs: nounwind
declare !dbg !2493 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2496 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2534, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i32 %1, metadata !2535, metadata !DIExpression()), !dbg !2536
  %3 = icmp eq ptr %0, null, !dbg !2537
  br i1 %3, label %7, label %4, !dbg !2539

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !2540
  call void @llvm.dbg.value(metadata i32 %5, metadata !2486, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i64 0, metadata !2487, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i64 0, metadata !2488, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i32 %1, metadata !2489, metadata !DIExpression()), !dbg !2541
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #41, !dbg !2543
  br label %7, !dbg !2544

7:                                                ; preds = %4, %2
  ret void, !dbg !2545
}

; Function Attrs: nofree nounwind
declare !dbg !2546 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2549 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2587, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i32 0, metadata !2588, metadata !DIExpression()), !dbg !2591
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !2592
  call void @llvm.dbg.value(metadata i32 %2, metadata !2589, metadata !DIExpression()), !dbg !2591
  %3 = icmp slt i32 %2, 0, !dbg !2593
  br i1 %3, label %4, label %6, !dbg !2595

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2596
  br label %24, !dbg !2597

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #41, !dbg !2598
  %8 = icmp eq i32 %7, 0, !dbg !2598
  br i1 %8, label %13, label %9, !dbg !2600

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !2601
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #41, !dbg !2602
  %12 = icmp eq i64 %11, -1, !dbg !2603
  br i1 %12, label %16, label %13, !dbg !2604

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #41, !dbg !2605
  %15 = icmp eq i32 %14, 0, !dbg !2605
  br i1 %15, label %16, label %18, !dbg !2606

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !2588, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i32 0, metadata !2590, metadata !DIExpression()), !dbg !2591
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2607
  call void @llvm.dbg.value(metadata i32 %17, metadata !2590, metadata !DIExpression()), !dbg !2591
  br label %24, !dbg !2608

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #44, !dbg !2609
  %20 = load i32, ptr %19, align 4, !dbg !2609, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 %20, metadata !2588, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i32 0, metadata !2590, metadata !DIExpression()), !dbg !2591
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2607
  call void @llvm.dbg.value(metadata i32 %21, metadata !2590, metadata !DIExpression()), !dbg !2591
  %22 = icmp eq i32 %20, 0, !dbg !2610
  br i1 %22, label %24, label %23, !dbg !2608

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2612, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 -1, metadata !2590, metadata !DIExpression()), !dbg !2591
  br label %24, !dbg !2614

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2591
  ret i32 %25, !dbg !2615
}

; Function Attrs: nofree nounwind
declare !dbg !2616 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2617 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2619 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2622 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2660, metadata !DIExpression()), !dbg !2661
  %2 = icmp eq ptr %0, null, !dbg !2662
  br i1 %2, label %6, label %3, !dbg !2664

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #41, !dbg !2665
  %5 = icmp eq i32 %4, 0, !dbg !2665
  br i1 %5, label %6, label %8, !dbg !2666

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2667
  br label %16, !dbg !2668

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2669, metadata !DIExpression()), !dbg !2674
  %9 = load i32, ptr %0, align 8, !dbg !2676, !tbaa !1495
  %10 = and i32 %9, 256, !dbg !2678
  %11 = icmp eq i32 %10, 0, !dbg !2678
  br i1 %11, label %14, label %12, !dbg !2679

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #41, !dbg !2680
  br label %14, !dbg !2680

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2681
  br label %16, !dbg !2682

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2661
  ret i32 %17, !dbg !2683
}

; Function Attrs: nofree nounwind
declare !dbg !2684 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2685 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2723, metadata !DIExpression()), !dbg !2724
  tail call void @__fpurge(ptr noundef nonnull %0) #41, !dbg !2725
  ret i32 0, !dbg !2726
}

; Function Attrs: nounwind
declare !dbg !2727 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2730 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2768, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i64 %1, metadata !2769, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i32 %2, metadata !2770, metadata !DIExpression()), !dbg !2774
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2775
  %5 = load ptr, ptr %4, align 8, !dbg !2775, !tbaa !1452
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2776
  %7 = load ptr, ptr %6, align 8, !dbg !2776, !tbaa !1450
  %8 = icmp eq ptr %5, %7, !dbg !2777
  br i1 %8, label %9, label %27, !dbg !2778

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2779
  %11 = load ptr, ptr %10, align 8, !dbg !2779, !tbaa !1540
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2780
  %13 = load ptr, ptr %12, align 8, !dbg !2780, !tbaa !2781
  %14 = icmp eq ptr %11, %13, !dbg !2782
  br i1 %14, label %15, label %27, !dbg !2783

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2784
  %17 = load ptr, ptr %16, align 8, !dbg !2784, !tbaa !2785
  %18 = icmp eq ptr %17, null, !dbg !2786
  br i1 %18, label %19, label %27, !dbg !2787

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !2788
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #41, !dbg !2789
  call void @llvm.dbg.value(metadata i64 %21, metadata !2771, metadata !DIExpression()), !dbg !2790
  %22 = icmp eq i64 %21, -1, !dbg !2791
  br i1 %22, label %29, label %23, !dbg !2793

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2794, !tbaa !1495
  %25 = and i32 %24, -17, !dbg !2794
  store i32 %25, ptr %0, align 8, !dbg !2794, !tbaa !1495
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2795
  store i64 %21, ptr %26, align 8, !dbg !2796, !tbaa !2797
  br label %29, !dbg !2798

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2799
  br label %29, !dbg !2800

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2774
  ret i32 %30, !dbg !2801
}

; Function Attrs: nofree nounwind
declare !dbg !2802 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @getndelim2(ptr nocapture noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #10 !dbg !2805 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2843, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata ptr %1, metadata !2844, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %2, metadata !2845, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %3, metadata !2846, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i32 %4, metadata !2847, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i32 %5, metadata !2848, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata ptr %6, metadata !2849, metadata !DIExpression()), !dbg !2877
  %9 = load ptr, ptr %0, align 8, !dbg !2878, !tbaa !1018
  call void @llvm.dbg.value(metadata ptr %9, metadata !2850, metadata !DIExpression()), !dbg !2877
  %10 = load i64, ptr %1, align 8, !dbg !2879, !tbaa !1298
  call void @llvm.dbg.value(metadata i64 %10, metadata !2851, metadata !DIExpression()), !dbg !2877
  %11 = icmp eq ptr %9, null, !dbg !2880
  br i1 %11, label %12, label %16, !dbg !2882

12:                                               ; preds = %7
  %13 = tail call i64 @llvm.umin.i64(i64 %3, i64 64), !dbg !2883
  call void @llvm.dbg.value(metadata i64 %13, metadata !2851, metadata !DIExpression()), !dbg !2877
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #48, !dbg !2885
  call void @llvm.dbg.value(metadata ptr %14, metadata !2850, metadata !DIExpression()), !dbg !2877
  %15 = icmp eq ptr %14, null, !dbg !2886
  br i1 %15, label %156, label %16, !dbg !2888

16:                                               ; preds = %12, %7
  %17 = phi i64 [ %10, %7 ], [ %13, %12 ], !dbg !2877
  %18 = phi ptr [ %9, %7 ], [ %14, %12 ], !dbg !2877
  call void @llvm.dbg.value(metadata ptr %18, metadata !2850, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %17, metadata !2851, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 -1, metadata !2852, metadata !DIExpression()), !dbg !2877
  %19 = icmp ult i64 %17, %2, !dbg !2889
  br i1 %19, label %142, label %20, !dbg !2891

20:                                               ; preds = %16
  %21 = sub i64 %17, %2, !dbg !2892
  call void @llvm.dbg.value(metadata i64 %21, metadata !2853, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata !DIArgList(ptr %18, i64 %2), metadata !2854, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2877
  %22 = icmp ne i64 %21, 0, !dbg !2893
  %23 = icmp ult i64 %17, %3
  %24 = or i1 %23, %22, !dbg !2895
  br i1 %24, label %25, label %142, !dbg !2895

25:                                               ; preds = %20
  %26 = getelementptr inbounds i8, ptr %18, i64 %2, !dbg !2896
  call void @llvm.dbg.value(metadata ptr %26, metadata !2854, metadata !DIExpression()), !dbg !2877
  %27 = icmp eq i32 %4, -1, !dbg !2897
  %28 = icmp eq i32 %5, -1, !dbg !2899
  %29 = select i1 %28, i32 %4, i32 %5, !dbg !2899
  %30 = select i1 %27, i32 %5, i32 %29, !dbg !2899
  %31 = select i1 %27, i32 %5, i32 %4, !dbg !2899
  call void @llvm.dbg.value(metadata i32 %31, metadata !2847, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i32 %30, metadata !2848, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 0, metadata !2855, metadata !DIExpression()), !dbg !2877
  %32 = icmp eq i32 %31, -1
  %33 = getelementptr inbounds %struct._IO_FILE, ptr %6, i64 0, i32 1
  %34 = getelementptr inbounds %struct._IO_FILE, ptr %6, i64 0, i32 2
  %35 = xor i64 %2, -9223372036854775808
  br label %36, !dbg !2900

36:                                               ; preds = %135, %25
  %37 = phi i64 [ %17, %25 ], [ %113, %135 ], !dbg !2877
  %38 = phi i64 [ %21, %25 ], [ %129, %135 ], !dbg !2877
  %39 = phi ptr [ %26, %25 ], [ %130, %135 ], !dbg !2877
  %40 = phi i8 [ 0, %25 ], [ %77, %135 ], !dbg !2877
  %41 = phi i32 [ undef, %25 ], [ %78, %135 ]
  %42 = phi ptr [ %18, %25 ], [ %116, %135 ], !dbg !2877
  call void @llvm.dbg.value(metadata ptr %42, metadata !2850, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i32 %41, metadata !2856, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i8 %40, metadata !2855, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata ptr %39, metadata !2854, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %38, metadata !2853, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %37, metadata !2851, metadata !DIExpression()), !dbg !2877
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #41, !dbg !2902
  call void @llvm.dbg.value(metadata ptr %8, metadata !2859, metadata !DIExpression(DW_OP_deref)), !dbg !2901
  %43 = call ptr @freadptr(ptr noundef %6, ptr noundef nonnull %8) #41, !dbg !2903
  call void @llvm.dbg.value(metadata ptr %43, metadata !2858, metadata !DIExpression()), !dbg !2901
  %44 = icmp eq ptr %43, null, !dbg !2904
  br i1 %44, label %55, label %45, !dbg !2905

45:                                               ; preds = %36
  %46 = load i64, ptr %8, align 8, !dbg !2901, !tbaa !1298
  br i1 %32, label %75, label %47, !dbg !2906

47:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i64 %46, metadata !2859, metadata !DIExpression()), !dbg !2901
  %48 = call ptr @memchr2(ptr noundef nonnull %43, i32 noundef %31, i32 noundef %30, i64 noundef %46) #42, !dbg !2907
  call void @llvm.dbg.value(metadata ptr %48, metadata !2860, metadata !DIExpression()), !dbg !2908
  %49 = icmp eq ptr %48, null, !dbg !2909
  br i1 %49, label %75, label %50, !dbg !2911

50:                                               ; preds = %47
  %51 = ptrtoint ptr %48 to i64, !dbg !2912
  %52 = ptrtoint ptr %43 to i64, !dbg !2912
  %53 = sub i64 1, %52, !dbg !2912
  %54 = add i64 %53, %51, !dbg !2914
  call void @llvm.dbg.value(metadata i64 %54, metadata !2859, metadata !DIExpression()), !dbg !2901
  store i64 %54, ptr %8, align 8, !dbg !2915, !tbaa !1298
  call void @llvm.dbg.value(metadata i8 1, metadata !2855, metadata !DIExpression()), !dbg !2877
  br label %75, !dbg !2916

55:                                               ; preds = %36
  call void @llvm.dbg.value(metadata ptr %6, metadata !2917, metadata !DIExpression()), !dbg !2922
  %56 = load ptr, ptr %33, align 8, !dbg !2925, !tbaa !1450
  %57 = load ptr, ptr %34, align 8, !dbg !2925, !tbaa !1452
  %58 = icmp ult ptr %56, %57, !dbg !2925
  br i1 %58, label %59, label %63, !dbg !2925, !prof !1453

59:                                               ; preds = %55
  %60 = getelementptr inbounds i8, ptr %56, i64 1, !dbg !2925
  store ptr %60, ptr %33, align 8, !dbg !2925, !tbaa !1450
  %61 = load i8, ptr %56, align 1, !dbg !2925, !tbaa !1105
  %62 = zext i8 %61 to i32, !dbg !2925
  call void @llvm.dbg.value(metadata i32 %62, metadata !2856, metadata !DIExpression()), !dbg !2901
  br label %69, !dbg !2926

63:                                               ; preds = %55
  %64 = call i32 @__uflow(ptr noundef nonnull %6) #41, !dbg !2925
  call void @llvm.dbg.value(metadata i32 %64, metadata !2856, metadata !DIExpression()), !dbg !2901
  %65 = icmp eq i32 %64, -1, !dbg !2927
  br i1 %65, label %66, label %69, !dbg !2926

66:                                               ; preds = %63
  %67 = icmp eq ptr %39, %42, !dbg !2929
  br i1 %67, label %138, label %68, !dbg !2932

68:                                               ; preds = %66
  call void @llvm.dbg.value(metadata ptr %42, metadata !2850, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i32 poison, metadata !2856, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i8 poison, metadata !2855, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata ptr %39, metadata !2854, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 poison, metadata !2853, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %37, metadata !2851, metadata !DIExpression()), !dbg !2877
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #41, !dbg !2933
  br label %145

69:                                               ; preds = %59, %63
  %70 = phi i32 [ %62, %59 ], [ %64, %63 ]
  %71 = icmp eq i32 %70, %31, !dbg !2934
  %72 = icmp eq i32 %70, %30
  %73 = or i1 %71, %72, !dbg !2936
  %74 = select i1 %73, i8 1, i8 %40, !dbg !2936
  call void @llvm.dbg.value(metadata i8 %74, metadata !2855, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 1, metadata !2859, metadata !DIExpression()), !dbg !2901
  store i64 1, ptr %8, align 8, !dbg !2937, !tbaa !1298
  br label %75

75:                                               ; preds = %45, %47, %50, %69
  %76 = phi i64 [ 1, %69 ], [ %54, %50 ], [ %46, %47 ], [ %46, %45 ], !dbg !2938
  %77 = phi i8 [ %74, %69 ], [ 1, %50 ], [ %40, %47 ], [ %40, %45 ], !dbg !2877
  %78 = phi i32 [ %70, %69 ], [ %41, %50 ], [ %41, %47 ], [ %41, %45 ]
  call void @llvm.dbg.value(metadata i32 %78, metadata !2856, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i8 %77, metadata !2855, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %76, metadata !2859, metadata !DIExpression()), !dbg !2901
  %79 = add i64 %76, 1, !dbg !2939
  %80 = icmp ult i64 %38, %79, !dbg !2940
  %81 = icmp ult i64 %37, %3
  %82 = select i1 %80, i1 %81, i1 false, !dbg !2941
  br i1 %82, label %83, label %112, !dbg !2941

83:                                               ; preds = %75
  %84 = icmp ult i64 %37, 64, !dbg !2942
  %85 = add i64 %37, 64, !dbg !2943
  %86 = shl i64 %37, 1, !dbg !2943
  %87 = select i1 %84, i64 %85, i64 %86, !dbg !2943
  call void @llvm.dbg.value(metadata i64 %87, metadata !2865, metadata !DIExpression()), !dbg !2944
  %88 = ptrtoint ptr %39 to i64, !dbg !2945
  %89 = ptrtoint ptr %42 to i64, !dbg !2945
  %90 = sub i64 %88, %89, !dbg !2945
  %91 = sub i64 %87, %90, !dbg !2947
  %92 = icmp ult i64 %91, %79, !dbg !2948
  %93 = add i64 %79, %90, !dbg !2949
  %94 = select i1 %92, i64 %93, i64 %87, !dbg !2949
  call void @llvm.dbg.value(metadata i64 %94, metadata !2865, metadata !DIExpression()), !dbg !2944
  %95 = icmp uge i64 %37, %94, !dbg !2950
  %96 = icmp ugt i64 %94, %3
  %97 = or i1 %95, %96, !dbg !2952
  %98 = select i1 %97, i64 %3, i64 %94, !dbg !2952
  call void @llvm.dbg.value(metadata i64 %98, metadata !2865, metadata !DIExpression()), !dbg !2944
  %99 = sub i64 %98, %2, !dbg !2953
  %100 = icmp slt i64 %99, 0, !dbg !2954
  br i1 %100, label %101, label %103, !dbg !2955

101:                                              ; preds = %83
  call void @llvm.dbg.value(metadata i64 %35, metadata !2869, metadata !DIExpression()), !dbg !2956
  %102 = icmp eq i64 %37, %35, !dbg !2957
  call void @llvm.dbg.value(metadata i64 poison, metadata !2865, metadata !DIExpression()), !dbg !2944
  br i1 %102, label %141, label %103

103:                                              ; preds = %101, %83
  %104 = phi i64 [ %35, %101 ], [ %98, %83 ], !dbg !2959
  call void @llvm.dbg.value(metadata i64 %104, metadata !2865, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata !DIArgList(i64 %104, i64 %90), metadata !2853, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2877
  call void @llvm.dbg.value(metadata ptr %42, metadata !2960, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %104, metadata !2966, metadata !DIExpression()), !dbg !2967
  %105 = icmp eq i64 %104, 0, !dbg !2969
  %106 = select i1 %105, i64 1, i64 %104, !dbg !2969
  %107 = call ptr @realloc(ptr noundef %42, i64 noundef %106) #46, !dbg !2970
  call void @llvm.dbg.value(metadata ptr %107, metadata !2868, metadata !DIExpression()), !dbg !2944
  %108 = icmp eq ptr %107, null, !dbg !2971
  br i1 %108, label %138, label %109, !dbg !2973

109:                                              ; preds = %103
  %110 = sub i64 %104, %90, !dbg !2974
  call void @llvm.dbg.value(metadata i64 %110, metadata !2853, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata ptr %107, metadata !2850, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %104, metadata !2851, metadata !DIExpression()), !dbg !2877
  %111 = getelementptr inbounds i8, ptr %107, i64 %90, !dbg !2975
  call void @llvm.dbg.value(metadata ptr %111, metadata !2854, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata !DIArgList(i64 %104, i64 %90), metadata !2853, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2877
  br label %112

112:                                              ; preds = %109, %75
  %113 = phi i64 [ %37, %75 ], [ %104, %109 ], !dbg !2877
  %114 = phi i64 [ %38, %75 ], [ %110, %109 ], !dbg !2877
  %115 = phi ptr [ %39, %75 ], [ %111, %109 ], !dbg !2877
  %116 = phi ptr [ %42, %75 ], [ %107, %109 ], !dbg !2877
  call void @llvm.dbg.value(metadata ptr %116, metadata !2850, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata ptr %115, metadata !2854, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %114, metadata !2853, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %113, metadata !2851, metadata !DIExpression()), !dbg !2877
  %117 = icmp ugt i64 %114, 1, !dbg !2976
  br i1 %117, label %118, label %128, !dbg !2977

118:                                              ; preds = %112
  %119 = add i64 %114, -1, !dbg !2978
  call void @llvm.dbg.value(metadata i64 %119, metadata !2872, metadata !DIExpression()), !dbg !2979
  %120 = load i64, ptr %8, align 8, !dbg !2980, !tbaa !1298
  call void @llvm.dbg.value(metadata i64 %120, metadata !2859, metadata !DIExpression()), !dbg !2901
  %121 = call i64 @llvm.umin.i64(i64 %120, i64 %119), !dbg !2982
  call void @llvm.dbg.value(metadata i64 %121, metadata !2872, metadata !DIExpression()), !dbg !2979
  br i1 %44, label %123, label %122, !dbg !2983

122:                                              ; preds = %118
  call void @llvm.dbg.value(metadata ptr %115, metadata !2984, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %43, metadata !2990, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %121, metadata !2991, metadata !DIExpression()), !dbg !2992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %115, ptr noundef nonnull align 1 %43, i64 noundef %121, i1 noundef false) #41, !dbg !2995
  br label %125, !dbg !2996

123:                                              ; preds = %118
  %124 = trunc i32 %78 to i8, !dbg !2997
  store i8 %124, ptr %115, align 1, !dbg !2998, !tbaa !1105
  br label %125

125:                                              ; preds = %123, %122
  %126 = getelementptr inbounds i8, ptr %115, i64 %121, !dbg !2999
  call void @llvm.dbg.value(metadata ptr %126, metadata !2854, metadata !DIExpression()), !dbg !2877
  %127 = sub i64 %114, %121, !dbg !3000
  call void @llvm.dbg.value(metadata i64 %127, metadata !2853, metadata !DIExpression()), !dbg !2877
  br label %128, !dbg !3001

128:                                              ; preds = %125, %112
  %129 = phi i64 [ %127, %125 ], [ %114, %112 ], !dbg !2901
  %130 = phi ptr [ %126, %125 ], [ %115, %112 ], !dbg !2901
  call void @llvm.dbg.value(metadata ptr %130, metadata !2854, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %129, metadata !2853, metadata !DIExpression()), !dbg !2877
  br i1 %44, label %135, label %131, !dbg !3002

131:                                              ; preds = %128
  %132 = load i64, ptr %8, align 8, !dbg !3004, !tbaa !1298
  call void @llvm.dbg.value(metadata i64 %132, metadata !2859, metadata !DIExpression()), !dbg !2901
  %133 = call i32 @freadseek(ptr noundef %6, i64 noundef %132) #41, !dbg !3005
  %134 = icmp eq i32 %133, 0, !dbg !3005
  br i1 %134, label %135, label %138, !dbg !3006

135:                                              ; preds = %128, %131
  call void @llvm.dbg.value(metadata ptr %116, metadata !2850, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i32 %78, metadata !2856, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i8 %77, metadata !2855, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata ptr %130, metadata !2854, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %129, metadata !2853, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %113, metadata !2851, metadata !DIExpression()), !dbg !2877
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #41, !dbg !2933
  %136 = and i8 %77, 1, !dbg !3007
  %137 = icmp eq i8 %136, 0, !dbg !3007
  br i1 %137, label %36, label %145, !dbg !3008, !llvm.loop !3009

138:                                              ; preds = %131, %103, %66
  %139 = phi i64 [ %37, %66 ], [ %37, %103 ], [ %113, %131 ]
  %140 = phi ptr [ %39, %66 ], [ %42, %103 ], [ %116, %131 ]
  call void @llvm.dbg.value(metadata ptr %140, metadata !2850, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i32 poison, metadata !2856, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i8 poison, metadata !2855, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata ptr poison, metadata !2854, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 poison, metadata !2853, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %139, metadata !2851, metadata !DIExpression()), !dbg !2877
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #41, !dbg !2933
  br label %142

141:                                              ; preds = %101
  call void @llvm.dbg.value(metadata ptr %42, metadata !2850, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i32 %78, metadata !2856, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i8 %77, metadata !2855, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata ptr undef, metadata !2854, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %38, metadata !2853, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %35, metadata !2851, metadata !DIExpression()), !dbg !2877
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #41, !dbg !2933
  br label %142

142:                                              ; preds = %141, %16, %20, %138
  %143 = phi i64 [ %139, %138 ], [ %17, %20 ], [ %35, %141 ], [ %17, %16 ]
  %144 = phi ptr [ %140, %138 ], [ %18, %20 ], [ %42, %141 ], [ %18, %16 ]
  call void @llvm.dbg.value(metadata ptr %144, metadata !2850, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 -1, metadata !2852, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %143, metadata !2851, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.label(metadata !2876), !dbg !3011
  store ptr %144, ptr %0, align 8, !dbg !3012, !tbaa !1018
  store i64 %143, ptr %1, align 8, !dbg !3013, !tbaa !1298
  br label %156, !dbg !3014

145:                                              ; preds = %135, %68
  %146 = phi ptr [ %42, %68 ], [ %116, %135 ]
  %147 = phi ptr [ %39, %68 ], [ %130, %135 ]
  %148 = phi i64 [ %37, %68 ], [ %113, %135 ]
  %149 = freeze ptr %146, !dbg !3015
  store i8 0, ptr %147, align 1, !dbg !3016, !tbaa !1105
  %150 = getelementptr i8, ptr %149, i64 %2, !dbg !3015
  %151 = ptrtoint ptr %147 to i64, !dbg !3017
  %152 = ptrtoint ptr %150 to i64, !dbg !3017
  %153 = sub i64 %151, %152, !dbg !3017
  call void @llvm.dbg.value(metadata ptr %146, metadata !2850, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %153, metadata !2852, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %148, metadata !2851, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.label(metadata !2876), !dbg !3011
  store ptr %149, ptr %0, align 8, !dbg !3012, !tbaa !1018
  store i64 %148, ptr %1, align 8, !dbg !3013, !tbaa !1298
  %154 = icmp eq ptr %147, %150, !dbg !3014
  %155 = select i1 %154, i64 -1, i64 %153, !dbg !3014
  br label %156, !dbg !3014

156:                                              ; preds = %145, %142, %12
  %157 = phi i64 [ -1, %12 ], [ -1, %142 ], [ %155, %145 ], !dbg !2877
  ret i64 %157, !dbg !3018
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3019 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3022 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #22 !dbg !3023 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !3025, !tbaa !1018
  ret ptr %1, !dbg !3026
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @memchr2(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #23 !dbg !3027 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3031, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %1, metadata !3032, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %2, metadata !3033, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i64 %3, metadata !3034, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %1, metadata !3035, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %2, metadata !3036, metadata !DIExpression()), !dbg !3055
  %5 = and i32 %1, 255, !dbg !3056
  %6 = and i32 %2, 255, !dbg !3058
  %7 = icmp eq i32 %5, %6, !dbg !3059
  br i1 %7, label %14, label %8, !dbg !3060

8:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i64 %3, metadata !3034, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %0, metadata !3037, metadata !DIExpression()), !dbg !3055
  %9 = icmp ne i64 %3, 0, !dbg !3061
  %10 = ptrtoint ptr %0 to i64, !dbg !3062
  %11 = and i64 %10, 7, !dbg !3062
  %12 = icmp ne i64 %11, 0, !dbg !3062
  %13 = and i1 %9, %12, !dbg !3062
  br i1 %13, label %16, label %123, !dbg !3063

14:                                               ; preds = %4
  %15 = tail call ptr @memchr(ptr noundef %0, i32 noundef %5, i64 noundef %3) #42, !dbg !3064
  br label %166, !dbg !3065

16:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i64 %3, metadata !3034, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %0, metadata !3037, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %0, metadata !3038, metadata !DIExpression()), !dbg !3066
  %17 = load i8, ptr %0, align 1, !dbg !3067, !tbaa !1105
  %18 = zext i8 %17 to i32, !dbg !3067
  %19 = icmp ne i32 %5, %18, !dbg !3069
  %20 = icmp ne i32 %6, %18
  %21 = and i1 %19, %20, !dbg !3070
  call void @llvm.dbg.value(metadata ptr poison, metadata !3037, metadata !DIExpression()), !dbg !3055
  br i1 %21, label %22, label %166

22:                                               ; preds = %16
  %23 = getelementptr i8, ptr %0, i64 1, !dbg !3070
  call void @llvm.dbg.value(metadata ptr %23, metadata !3037, metadata !DIExpression()), !dbg !3055
  %24 = add i64 %3, -1, !dbg !3071
  call void @llvm.dbg.value(metadata i64 %24, metadata !3034, metadata !DIExpression()), !dbg !3055
  %25 = icmp ne i64 %24, 0, !dbg !3061
  %26 = ptrtoint ptr %23 to i64, !dbg !3062
  %27 = and i64 %26, 7, !dbg !3062
  %28 = icmp ne i64 %27, 0, !dbg !3062
  %29 = and i1 %25, %28, !dbg !3062
  br i1 %29, label %30, label %123, !dbg !3063, !llvm.loop !3072

30:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 %24, metadata !3034, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %23, metadata !3037, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %23, metadata !3038, metadata !DIExpression()), !dbg !3066
  %31 = load i8, ptr %23, align 1, !dbg !3067, !tbaa !1105
  %32 = zext i8 %31 to i32, !dbg !3067
  %33 = icmp ne i32 %5, %32, !dbg !3069
  %34 = icmp ne i32 %6, %32
  %35 = and i1 %33, %34, !dbg !3070
  call void @llvm.dbg.value(metadata ptr poison, metadata !3037, metadata !DIExpression()), !dbg !3055
  br i1 %35, label %36, label %166

36:                                               ; preds = %30
  %37 = getelementptr i8, ptr %0, i64 2, !dbg !3070
  call void @llvm.dbg.value(metadata ptr %37, metadata !3037, metadata !DIExpression()), !dbg !3055
  %38 = add i64 %3, -2, !dbg !3071
  call void @llvm.dbg.value(metadata i64 %38, metadata !3034, metadata !DIExpression()), !dbg !3055
  %39 = icmp ne i64 %38, 0, !dbg !3061
  %40 = ptrtoint ptr %37 to i64, !dbg !3062
  %41 = and i64 %40, 7, !dbg !3062
  %42 = icmp ne i64 %41, 0, !dbg !3062
  %43 = and i1 %39, %42, !dbg !3062
  br i1 %43, label %44, label %123, !dbg !3063, !llvm.loop !3072

44:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i64 %38, metadata !3034, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %37, metadata !3037, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %37, metadata !3038, metadata !DIExpression()), !dbg !3066
  %45 = load i8, ptr %37, align 1, !dbg !3067, !tbaa !1105
  %46 = zext i8 %45 to i32, !dbg !3067
  %47 = icmp ne i32 %5, %46, !dbg !3069
  %48 = icmp ne i32 %6, %46
  %49 = and i1 %47, %48, !dbg !3070
  call void @llvm.dbg.value(metadata ptr poison, metadata !3037, metadata !DIExpression()), !dbg !3055
  br i1 %49, label %50, label %166

50:                                               ; preds = %44
  %51 = getelementptr i8, ptr %0, i64 3, !dbg !3070
  call void @llvm.dbg.value(metadata ptr %51, metadata !3037, metadata !DIExpression()), !dbg !3055
  %52 = add i64 %3, -3, !dbg !3071
  call void @llvm.dbg.value(metadata i64 %52, metadata !3034, metadata !DIExpression()), !dbg !3055
  %53 = icmp ne i64 %52, 0, !dbg !3061
  %54 = ptrtoint ptr %51 to i64, !dbg !3062
  %55 = and i64 %54, 7, !dbg !3062
  %56 = icmp ne i64 %55, 0, !dbg !3062
  %57 = and i1 %53, %56, !dbg !3062
  br i1 %57, label %58, label %123, !dbg !3063, !llvm.loop !3072

58:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 %52, metadata !3034, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %51, metadata !3037, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %51, metadata !3038, metadata !DIExpression()), !dbg !3066
  %59 = load i8, ptr %51, align 1, !dbg !3067, !tbaa !1105
  %60 = zext i8 %59 to i32, !dbg !3067
  %61 = icmp ne i32 %5, %60, !dbg !3069
  %62 = icmp ne i32 %6, %60
  %63 = and i1 %61, %62, !dbg !3070
  call void @llvm.dbg.value(metadata ptr poison, metadata !3037, metadata !DIExpression()), !dbg !3055
  br i1 %63, label %64, label %166

64:                                               ; preds = %58
  %65 = getelementptr i8, ptr %0, i64 4, !dbg !3070
  call void @llvm.dbg.value(metadata ptr %65, metadata !3037, metadata !DIExpression()), !dbg !3055
  %66 = add i64 %3, -4, !dbg !3071
  call void @llvm.dbg.value(metadata i64 %66, metadata !3034, metadata !DIExpression()), !dbg !3055
  %67 = icmp ne i64 %66, 0, !dbg !3061
  %68 = ptrtoint ptr %65 to i64, !dbg !3062
  %69 = and i64 %68, 7, !dbg !3062
  %70 = icmp ne i64 %69, 0, !dbg !3062
  %71 = and i1 %67, %70, !dbg !3062
  br i1 %71, label %72, label %123, !dbg !3063, !llvm.loop !3072

72:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 %66, metadata !3034, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %65, metadata !3037, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %65, metadata !3038, metadata !DIExpression()), !dbg !3066
  %73 = load i8, ptr %65, align 1, !dbg !3067, !tbaa !1105
  %74 = zext i8 %73 to i32, !dbg !3067
  %75 = icmp ne i32 %5, %74, !dbg !3069
  %76 = icmp ne i32 %6, %74
  %77 = and i1 %75, %76, !dbg !3070
  call void @llvm.dbg.value(metadata ptr poison, metadata !3037, metadata !DIExpression()), !dbg !3055
  br i1 %77, label %78, label %166

78:                                               ; preds = %72
  %79 = getelementptr i8, ptr %0, i64 5, !dbg !3070
  call void @llvm.dbg.value(metadata ptr %79, metadata !3037, metadata !DIExpression()), !dbg !3055
  %80 = add i64 %3, -5, !dbg !3071
  call void @llvm.dbg.value(metadata i64 %80, metadata !3034, metadata !DIExpression()), !dbg !3055
  %81 = icmp ne i64 %80, 0, !dbg !3061
  %82 = ptrtoint ptr %79 to i64, !dbg !3062
  %83 = and i64 %82, 7, !dbg !3062
  %84 = icmp ne i64 %83, 0, !dbg !3062
  %85 = and i1 %81, %84, !dbg !3062
  br i1 %85, label %86, label %123, !dbg !3063, !llvm.loop !3072

86:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 %80, metadata !3034, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %79, metadata !3037, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %79, metadata !3038, metadata !DIExpression()), !dbg !3066
  %87 = load i8, ptr %79, align 1, !dbg !3067, !tbaa !1105
  %88 = zext i8 %87 to i32, !dbg !3067
  %89 = icmp ne i32 %5, %88, !dbg !3069
  %90 = icmp ne i32 %6, %88
  %91 = and i1 %89, %90, !dbg !3070
  call void @llvm.dbg.value(metadata ptr poison, metadata !3037, metadata !DIExpression()), !dbg !3055
  br i1 %91, label %92, label %166

92:                                               ; preds = %86
  %93 = getelementptr i8, ptr %0, i64 6, !dbg !3070
  call void @llvm.dbg.value(metadata ptr %93, metadata !3037, metadata !DIExpression()), !dbg !3055
  %94 = add i64 %3, -6, !dbg !3071
  call void @llvm.dbg.value(metadata i64 %94, metadata !3034, metadata !DIExpression()), !dbg !3055
  %95 = icmp ne i64 %94, 0, !dbg !3061
  %96 = ptrtoint ptr %93 to i64, !dbg !3062
  %97 = and i64 %96, 7, !dbg !3062
  %98 = icmp ne i64 %97, 0, !dbg !3062
  %99 = and i1 %95, %98, !dbg !3062
  br i1 %99, label %100, label %123, !dbg !3063, !llvm.loop !3072

100:                                              ; preds = %92
  call void @llvm.dbg.value(metadata i64 %94, metadata !3034, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %93, metadata !3037, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %93, metadata !3038, metadata !DIExpression()), !dbg !3066
  %101 = load i8, ptr %93, align 1, !dbg !3067, !tbaa !1105
  %102 = zext i8 %101 to i32, !dbg !3067
  %103 = icmp ne i32 %5, %102, !dbg !3069
  %104 = icmp ne i32 %6, %102
  %105 = and i1 %103, %104, !dbg !3070
  call void @llvm.dbg.value(metadata ptr poison, metadata !3037, metadata !DIExpression()), !dbg !3055
  br i1 %105, label %106, label %166

106:                                              ; preds = %100
  %107 = getelementptr i8, ptr %0, i64 7, !dbg !3070
  call void @llvm.dbg.value(metadata ptr %107, metadata !3037, metadata !DIExpression()), !dbg !3055
  %108 = add i64 %3, -7, !dbg !3071
  call void @llvm.dbg.value(metadata i64 %108, metadata !3034, metadata !DIExpression()), !dbg !3055
  %109 = icmp ne i64 %108, 0, !dbg !3061
  %110 = ptrtoint ptr %107 to i64, !dbg !3062
  %111 = and i64 %110, 7, !dbg !3062
  %112 = icmp ne i64 %111, 0, !dbg !3062
  %113 = and i1 %109, %112, !dbg !3062
  br i1 %113, label %114, label %123, !dbg !3063, !llvm.loop !3072

114:                                              ; preds = %106
  call void @llvm.dbg.value(metadata i64 %108, metadata !3034, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %107, metadata !3037, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %107, metadata !3038, metadata !DIExpression()), !dbg !3066
  %115 = load i8, ptr %107, align 1, !dbg !3067, !tbaa !1105
  %116 = zext i8 %115 to i32, !dbg !3067
  %117 = icmp ne i32 %5, %116, !dbg !3069
  %118 = icmp ne i32 %6, %116
  %119 = and i1 %117, %118, !dbg !3070
  call void @llvm.dbg.value(metadata ptr poison, metadata !3037, metadata !DIExpression()), !dbg !3055
  br i1 %119, label %120, label %166

120:                                              ; preds = %114
  %121 = getelementptr i8, ptr %0, i64 8, !dbg !3070
  call void @llvm.dbg.value(metadata ptr %121, metadata !3037, metadata !DIExpression()), !dbg !3055
  %122 = add i64 %3, -8, !dbg !3071
  call void @llvm.dbg.value(metadata i64 %122, metadata !3034, metadata !DIExpression()), !dbg !3055
  br label %123

123:                                              ; preds = %22, %36, %50, %64, %78, %92, %106, %120, %8
  %124 = phi ptr [ %0, %8 ], [ %23, %22 ], [ %37, %36 ], [ %51, %50 ], [ %65, %64 ], [ %79, %78 ], [ %93, %92 ], [ %107, %106 ], [ %121, %120 ], !dbg !3074
  %125 = phi i64 [ %3, %8 ], [ %24, %22 ], [ %38, %36 ], [ %52, %50 ], [ %66, %64 ], [ %80, %78 ], [ %94, %92 ], [ %108, %106 ], [ %122, %120 ]
  call void @llvm.dbg.value(metadata ptr %124, metadata !3042, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i64 16843009, metadata !3046, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 %5, metadata !3048, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3075
  call void @llvm.dbg.value(metadata i32 %6, metadata !3049, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3075
  %126 = mul nuw i32 %5, 16843009, !dbg !3076
  %127 = zext i32 %126 to i64, !dbg !3076
  call void @llvm.dbg.value(metadata i64 %127, metadata !3048, metadata !DIExpression()), !dbg !3075
  %128 = mul nuw i32 %6, 16843009, !dbg !3077
  %129 = zext i32 %128 to i64, !dbg !3077
  call void @llvm.dbg.value(metadata i64 %129, metadata !3049, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i64 72340172838076673, metadata !3046, metadata !DIExpression()), !dbg !3075
  %130 = mul nuw i64 %127, 4294967297, !dbg !3078
  call void @llvm.dbg.value(metadata i64 %130, metadata !3048, metadata !DIExpression()), !dbg !3075
  %131 = mul nuw i64 %129, 4294967297, !dbg !3081
  call void @llvm.dbg.value(metadata i64 %131, metadata !3049, metadata !DIExpression()), !dbg !3075
  br label %132, !dbg !3082

132:                                              ; preds = %136, %123
  %133 = phi ptr [ %124, %123 ], [ %149, %136 ], !dbg !3083
  %134 = phi i64 [ %125, %123 ], [ %150, %136 ]
  call void @llvm.dbg.value(metadata i64 %134, metadata !3034, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %133, metadata !3042, metadata !DIExpression()), !dbg !3055
  %135 = icmp ugt i64 %134, 7, !dbg !3084
  br i1 %135, label %136, label %151, !dbg !3082

136:                                              ; preds = %132
  %137 = load i64, ptr %133, align 8, !dbg !3085, !tbaa !1298
  %138 = xor i64 %137, %130, !dbg !3086
  call void @llvm.dbg.value(metadata i64 %138, metadata !3050, metadata !DIExpression()), !dbg !3087
  %139 = xor i64 %137, %131, !dbg !3088
  call void @llvm.dbg.value(metadata i64 %139, metadata !3052, metadata !DIExpression()), !dbg !3087
  %140 = add i64 %138, -72340172838076673, !dbg !3089
  %141 = xor i64 %138, -1, !dbg !3091
  %142 = and i64 %140, %141, !dbg !3092
  %143 = add i64 %139, -72340172838076673, !dbg !3093
  %144 = xor i64 %139, -1, !dbg !3094
  %145 = and i64 %143, %144, !dbg !3095
  %146 = or i64 %142, %145, !dbg !3096
  %147 = and i64 %146, -9187201950435737472, !dbg !3097
  %148 = icmp eq i64 %147, 0, !dbg !3098
  %149 = getelementptr inbounds i64, ptr %133, i64 1, !dbg !3099
  %150 = add i64 %134, -8, !dbg !3099
  call void @llvm.dbg.value(metadata i64 poison, metadata !3034, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr poison, metadata !3042, metadata !DIExpression()), !dbg !3055
  br i1 %148, label %132, label %153

151:                                              ; preds = %132
  call void @llvm.dbg.value(metadata i64 %134, metadata !3034, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %133, metadata !3042, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %133, metadata !3053, metadata !DIExpression()), !dbg !3100
  %152 = icmp eq i64 %134, 0, !dbg !3101
  br i1 %152, label %166, label %153, !dbg !3104

153:                                              ; preds = %136, %151
  br label %154, !dbg !3104

154:                                              ; preds = %153, %162
  %155 = phi ptr [ %164, %162 ], [ %133, %153 ]
  %156 = phi i64 [ %163, %162 ], [ %134, %153 ]
  call void @llvm.dbg.value(metadata ptr %155, metadata !3053, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i64 %156, metadata !3034, metadata !DIExpression()), !dbg !3055
  %157 = load i8, ptr %155, align 1, !dbg !3105, !tbaa !1105
  %158 = zext i8 %157 to i32, !dbg !3105
  %159 = icmp eq i32 %5, %158, !dbg !3108
  %160 = icmp eq i32 %6, %158
  %161 = or i1 %159, %160, !dbg !3109
  br i1 %161, label %166, label %162, !dbg !3109

162:                                              ; preds = %154
  %163 = add i64 %156, -1, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %163, metadata !3034, metadata !DIExpression()), !dbg !3055
  %164 = getelementptr inbounds i8, ptr %155, i64 1, !dbg !3111
  call void @llvm.dbg.value(metadata ptr %164, metadata !3053, metadata !DIExpression()), !dbg !3100
  %165 = icmp eq i64 %163, 0, !dbg !3101
  br i1 %165, label %166, label %154, !dbg !3104, !llvm.loop !3112

166:                                              ; preds = %16, %30, %44, %58, %72, %86, %100, %114, %162, %154, %151, %14
  %167 = phi ptr [ %15, %14 ], [ null, %151 ], [ null, %162 ], [ %155, %154 ], [ %0, %16 ], [ %23, %30 ], [ %37, %44 ], [ %51, %58 ], [ %65, %72 ], [ %79, %86 ], [ %93, %100 ], [ %107, %114 ], !dbg !3055
  ret ptr %167, !dbg !3114
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3115 ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #24 !dbg !3118 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3120, metadata !DIExpression()), !dbg !3123
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #42, !dbg !3124
  call void @llvm.dbg.value(metadata ptr %2, metadata !3121, metadata !DIExpression()), !dbg !3123
  %3 = icmp eq ptr %2, null, !dbg !3125
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !3125
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !3125
  call void @llvm.dbg.value(metadata ptr %5, metadata !3122, metadata !DIExpression()), !dbg !3123
  %6 = ptrtoint ptr %5 to i64, !dbg !3126
  %7 = ptrtoint ptr %0 to i64, !dbg !3126
  %8 = sub i64 %6, %7, !dbg !3126
  %9 = icmp sgt i64 %8, 6, !dbg !3128
  br i1 %9, label %10, label %19, !dbg !3129

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !3130
  call void @llvm.dbg.value(metadata ptr %11, metadata !3131, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata ptr @.str.118, metadata !3136, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i64 7, metadata !3137, metadata !DIExpression()), !dbg !3138
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.118, i64 7), !dbg !3140
  %13 = icmp eq i32 %12, 0, !dbg !3141
  br i1 %13, label %14, label %19, !dbg !3142

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !3120, metadata !DIExpression()), !dbg !3123
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.119, i64 noundef 3) #42, !dbg !3143
  %16 = icmp eq i32 %15, 0, !dbg !3146
  %17 = select i1 %16, i64 3, i64 0, !dbg !3147
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !3147
  br label %19, !dbg !3147

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !3123
  call void @llvm.dbg.value(metadata ptr %21, metadata !3122, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata ptr %20, metadata !3120, metadata !DIExpression()), !dbg !3123
  store ptr %20, ptr @program_name, align 8, !dbg !3148, !tbaa !1018
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !3149, !tbaa !1018
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !3150, !tbaa !1018
  ret void, !dbg !3151
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3152 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #25

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !677 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !684, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata ptr %1, metadata !685, metadata !DIExpression()), !dbg !3153
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #41, !dbg !3154
  call void @llvm.dbg.value(metadata ptr %5, metadata !686, metadata !DIExpression()), !dbg !3153
  %6 = icmp eq ptr %5, %0, !dbg !3155
  br i1 %6, label %7, label %14, !dbg !3157

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #41, !dbg !3158
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #41, !dbg !3159
  call void @llvm.dbg.declare(metadata ptr %4, metadata !692, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata ptr %4, metadata !3161, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata ptr %4, metadata !3170, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i32 0, metadata !3175, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i64 8, metadata !3176, metadata !DIExpression()), !dbg !3177
  store i64 0, ptr %4, align 8, !dbg !3179
  call void @llvm.dbg.value(metadata ptr %3, metadata !687, metadata !DIExpression(DW_OP_deref)), !dbg !3153
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #41, !dbg !3180
  %9 = icmp eq i64 %8, 2, !dbg !3182
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !687, metadata !DIExpression()), !dbg !3153
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !3183
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !3153
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #41, !dbg !3184
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #41, !dbg !3184
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !3153
  ret ptr %15, !dbg !3184
}

; Function Attrs: nounwind
declare !dbg !3185 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !3191 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3196, metadata !DIExpression()), !dbg !3199
  %2 = tail call ptr @__errno_location() #44, !dbg !3200
  %3 = load i32, ptr %2, align 4, !dbg !3200, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 %3, metadata !3197, metadata !DIExpression()), !dbg !3199
  %4 = icmp eq ptr %0, null, !dbg !3201
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3201
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #46, !dbg !3202
  call void @llvm.dbg.value(metadata ptr %6, metadata !3198, metadata !DIExpression()), !dbg !3199
  store i32 %3, ptr %2, align 4, !dbg !3203, !tbaa !1096
  ret ptr %6, !dbg !3204
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #26 !dbg !3205 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3211, metadata !DIExpression()), !dbg !3212
  %2 = icmp eq ptr %0, null, !dbg !3213
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !3213
  %4 = load i32, ptr %3, align 8, !dbg !3214, !tbaa !3215
  ret i32 %4, !dbg !3217
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #27 !dbg !3218 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3222, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i32 %1, metadata !3223, metadata !DIExpression()), !dbg !3224
  %3 = icmp eq ptr %0, null, !dbg !3225
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3225
  store i32 %1, ptr %4, align 8, !dbg !3226, !tbaa !3215
  ret void, !dbg !3227
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #28 !dbg !3228 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3232, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i8 %1, metadata !3233, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i32 %2, metadata !3234, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i8 %1, metadata !3235, metadata !DIExpression()), !dbg !3240
  %4 = icmp eq ptr %0, null, !dbg !3241
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3241
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3242
  %7 = lshr i8 %1, 5, !dbg !3243
  %8 = zext i8 %7 to i64, !dbg !3243
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !3244
  call void @llvm.dbg.value(metadata ptr %9, metadata !3236, metadata !DIExpression()), !dbg !3240
  %10 = and i8 %1, 31, !dbg !3245
  %11 = zext i8 %10 to i32, !dbg !3245
  call void @llvm.dbg.value(metadata i32 %11, metadata !3238, metadata !DIExpression()), !dbg !3240
  %12 = load i32, ptr %9, align 4, !dbg !3246, !tbaa !1096
  %13 = lshr i32 %12, %11, !dbg !3247
  %14 = and i32 %13, 1, !dbg !3248
  call void @llvm.dbg.value(metadata i32 %14, metadata !3239, metadata !DIExpression()), !dbg !3240
  %15 = xor i32 %13, %2, !dbg !3249
  %16 = and i32 %15, 1, !dbg !3249
  %17 = shl nuw i32 %16, %11, !dbg !3250
  %18 = xor i32 %17, %12, !dbg !3251
  store i32 %18, ptr %9, align 4, !dbg !3251, !tbaa !1096
  ret i32 %14, !dbg !3252
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #28 !dbg !3253 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3257, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i32 %1, metadata !3258, metadata !DIExpression()), !dbg !3260
  %3 = icmp eq ptr %0, null, !dbg !3261
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3263
  call void @llvm.dbg.value(metadata ptr %4, metadata !3257, metadata !DIExpression()), !dbg !3260
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !3264
  %6 = load i32, ptr %5, align 4, !dbg !3264, !tbaa !3265
  call void @llvm.dbg.value(metadata i32 %6, metadata !3259, metadata !DIExpression()), !dbg !3260
  store i32 %1, ptr %5, align 4, !dbg !3266, !tbaa !3265
  ret i32 %6, !dbg !3267
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3268 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3272, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata ptr %1, metadata !3273, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata ptr %2, metadata !3274, metadata !DIExpression()), !dbg !3275
  %4 = icmp eq ptr %0, null, !dbg !3276
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3278
  call void @llvm.dbg.value(metadata ptr %5, metadata !3272, metadata !DIExpression()), !dbg !3275
  store i32 10, ptr %5, align 8, !dbg !3279, !tbaa !3215
  %6 = icmp ne ptr %1, null, !dbg !3280
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3282
  br i1 %8, label %10, label %9, !dbg !3282

9:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3283
  unreachable, !dbg !3283

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3284
  store ptr %1, ptr %11, align 8, !dbg !3285, !tbaa !3286
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3287
  store ptr %2, ptr %12, align 8, !dbg !3288, !tbaa !3289
  ret void, !dbg !3290
}

; Function Attrs: noreturn nounwind
declare !dbg !3291 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !3292 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3296, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %1, metadata !3297, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata ptr %2, metadata !3298, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %3, metadata !3299, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata ptr %4, metadata !3300, metadata !DIExpression()), !dbg !3304
  %6 = icmp eq ptr %4, null, !dbg !3305
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !3305
  call void @llvm.dbg.value(metadata ptr %7, metadata !3301, metadata !DIExpression()), !dbg !3304
  %8 = tail call ptr @__errno_location() #44, !dbg !3306
  %9 = load i32, ptr %8, align 4, !dbg !3306, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 %9, metadata !3302, metadata !DIExpression()), !dbg !3304
  %10 = load i32, ptr %7, align 8, !dbg !3307, !tbaa !3215
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !3308
  %12 = load i32, ptr %11, align 4, !dbg !3308, !tbaa !3265
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !3309
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !3310
  %15 = load ptr, ptr %14, align 8, !dbg !3310, !tbaa !3286
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !3311
  %17 = load ptr, ptr %16, align 8, !dbg !3311, !tbaa !3289
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !3312
  call void @llvm.dbg.value(metadata i64 %18, metadata !3303, metadata !DIExpression()), !dbg !3304
  store i32 %9, ptr %8, align 4, !dbg !3313, !tbaa !1096
  ret i64 %18, !dbg !3314
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !3315 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !3321, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %1, metadata !3322, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata ptr %2, metadata !3323, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %3, metadata !3324, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i32 %4, metadata !3325, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i32 %5, metadata !3326, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata ptr %6, metadata !3327, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata ptr %7, metadata !3328, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata ptr %8, metadata !3329, metadata !DIExpression()), !dbg !3383
  %16 = tail call i64 @__ctype_get_mb_cur_max() #41, !dbg !3384
  %17 = icmp eq i64 %16, 1, !dbg !3385
  call void @llvm.dbg.value(metadata i1 %17, metadata !3330, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3383
  call void @llvm.dbg.value(metadata i64 0, metadata !3331, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 0, metadata !3332, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata ptr null, metadata !3333, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 0, metadata !3334, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 0, metadata !3335, metadata !DIExpression()), !dbg !3383
  %18 = trunc i32 %5 to i8, !dbg !3386
  %19 = lshr i8 %18, 1, !dbg !3386
  %20 = and i8 %19, 1, !dbg !3386
  call void @llvm.dbg.value(metadata i8 %20, metadata !3336, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 0, metadata !3337, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 1, metadata !3338, metadata !DIExpression()), !dbg !3383
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !3387

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !3388
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !3389
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !3390
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !3391
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !3383
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !3392
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !3393
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !3322, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 %39, metadata !3338, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 %38, metadata !3337, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 %37, metadata !3336, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 %36, metadata !3335, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %35, metadata !3334, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata ptr %34, metadata !3333, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %33, metadata !3332, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 0, metadata !3331, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %32, metadata !3324, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata ptr %31, metadata !3329, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata ptr %30, metadata !3328, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i32 %29, metadata !3325, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.label(metadata !3376), !dbg !3394
  call void @llvm.dbg.value(metadata i8 0, metadata !3339, metadata !DIExpression()), !dbg !3383
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
  ], !dbg !3395

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !3336, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i32 5, metadata !3325, metadata !DIExpression()), !dbg !3383
  br label %115, !dbg !3396

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !3336, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i32 5, metadata !3325, metadata !DIExpression()), !dbg !3383
  %43 = and i8 %37, 1, !dbg !3397
  %44 = icmp eq i8 %43, 0, !dbg !3397
  br i1 %44, label %45, label %115, !dbg !3396

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !3399
  br i1 %46, label %115, label %47, !dbg !3402

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !3399, !tbaa !1105
  br label %115, !dbg !3399

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.132, metadata !773, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 %29, metadata !774, metadata !DIExpression()), !dbg !3403
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.133, ptr noundef nonnull @.str.11.132, i32 noundef 5) #41, !dbg !3407
  call void @llvm.dbg.value(metadata ptr %49, metadata !775, metadata !DIExpression()), !dbg !3403
  %50 = icmp eq ptr %49, @.str.11.132, !dbg !3408
  br i1 %50, label %51, label %60, !dbg !3410

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #41, !dbg !3411
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #41, !dbg !3412
  call void @llvm.dbg.declare(metadata ptr %13, metadata !777, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata ptr %13, metadata !3414, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata ptr %13, metadata !3422, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i32 0, metadata !3425, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i64 8, metadata !3426, metadata !DIExpression()), !dbg !3427
  store i64 0, ptr %13, align 8, !dbg !3429
  call void @llvm.dbg.value(metadata ptr %12, metadata !776, metadata !DIExpression(DW_OP_deref)), !dbg !3403
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #41, !dbg !3430
  %53 = icmp eq i64 %52, 3, !dbg !3432
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !776, metadata !DIExpression()), !dbg !3403
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !3433
  %57 = icmp eq i32 %29, 9, !dbg !3433
  %58 = select i1 %57, ptr @.str.10.134, ptr @.str.12.135, !dbg !3433
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !3433
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #41, !dbg !3434
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #41, !dbg !3434
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !3403
  call void @llvm.dbg.value(metadata ptr %61, metadata !3328, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata ptr @.str.12.135, metadata !773, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i32 %29, metadata !774, metadata !DIExpression()), !dbg !3435
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.133, ptr noundef nonnull @.str.12.135, i32 noundef 5) #41, !dbg !3437
  call void @llvm.dbg.value(metadata ptr %62, metadata !775, metadata !DIExpression()), !dbg !3435
  %63 = icmp eq ptr %62, @.str.12.135, !dbg !3438
  br i1 %63, label %64, label %73, !dbg !3439

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #41, !dbg !3440
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #41, !dbg !3441
  call void @llvm.dbg.declare(metadata ptr %11, metadata !777, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata ptr %11, metadata !3414, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata ptr %11, metadata !3422, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i32 0, metadata !3425, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 8, metadata !3426, metadata !DIExpression()), !dbg !3445
  store i64 0, ptr %11, align 8, !dbg !3447
  call void @llvm.dbg.value(metadata ptr %10, metadata !776, metadata !DIExpression(DW_OP_deref)), !dbg !3435
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #41, !dbg !3448
  %66 = icmp eq i64 %65, 3, !dbg !3449
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !776, metadata !DIExpression()), !dbg !3435
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !3450
  %70 = icmp eq i32 %29, 9, !dbg !3450
  %71 = select i1 %70, ptr @.str.10.134, ptr @.str.12.135, !dbg !3450
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !3450
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #41, !dbg !3451
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #41, !dbg !3451
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !3329, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata ptr %74, metadata !3328, metadata !DIExpression()), !dbg !3383
  %76 = and i8 %37, 1, !dbg !3452
  %77 = icmp eq i8 %76, 0, !dbg !3452
  br i1 %77, label %78, label %93, !dbg !3453

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !3340, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i64 0, metadata !3331, metadata !DIExpression()), !dbg !3383
  %79 = load i8, ptr %74, align 1, !dbg !3455, !tbaa !1105
  %80 = icmp eq i8 %79, 0, !dbg !3457
  br i1 %80, label %93, label %81, !dbg !3457

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !3340, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i64 %84, metadata !3331, metadata !DIExpression()), !dbg !3383
  %85 = icmp ult i64 %84, %40, !dbg !3458
  br i1 %85, label %86, label %88, !dbg !3461

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !3458
  store i8 %82, ptr %87, align 1, !dbg !3458, !tbaa !1105
  br label %88, !dbg !3458

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !3461
  call void @llvm.dbg.value(metadata i64 %89, metadata !3331, metadata !DIExpression()), !dbg !3383
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !3462
  call void @llvm.dbg.value(metadata ptr %90, metadata !3340, metadata !DIExpression()), !dbg !3454
  %91 = load i8, ptr %90, align 1, !dbg !3455, !tbaa !1105
  %92 = icmp eq i8 %91, 0, !dbg !3457
  br i1 %92, label %93, label %81, !dbg !3457, !llvm.loop !3463

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !3465
  call void @llvm.dbg.value(metadata i64 %94, metadata !3331, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 1, metadata !3335, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata ptr %75, metadata !3333, metadata !DIExpression()), !dbg !3383
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #42, !dbg !3466
  call void @llvm.dbg.value(metadata i64 %95, metadata !3334, metadata !DIExpression()), !dbg !3383
  br label %115, !dbg !3467

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !3335, metadata !DIExpression()), !dbg !3383
  br label %97, !dbg !3468

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !3383
  call void @llvm.dbg.value(metadata i8 %98, metadata !3335, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 1, metadata !3336, metadata !DIExpression()), !dbg !3383
  br label %99, !dbg !3469

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !3391
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !3383
  call void @llvm.dbg.value(metadata i8 %101, metadata !3336, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 %100, metadata !3335, metadata !DIExpression()), !dbg !3383
  %102 = and i8 %101, 1, !dbg !3470
  %103 = icmp eq i8 %102, 0, !dbg !3470
  %104 = select i1 %103, i8 1, i8 %100, !dbg !3472
  br label %105, !dbg !3472

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !3383
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !3386
  call void @llvm.dbg.value(metadata i8 %107, metadata !3336, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 %106, metadata !3335, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i32 2, metadata !3325, metadata !DIExpression()), !dbg !3383
  %108 = and i8 %107, 1, !dbg !3473
  %109 = icmp eq i8 %108, 0, !dbg !3473
  br i1 %109, label %110, label %115, !dbg !3475

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !3476
  br i1 %111, label %115, label %112, !dbg !3479

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !3476, !tbaa !1105
  br label %115, !dbg !3476

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !3336, metadata !DIExpression()), !dbg !3383
  br label %115, !dbg !3480

114:                                              ; preds = %28
  call void @abort() #43, !dbg !3481
  unreachable, !dbg !3481

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !3465
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.134, %45 ], [ @.str.10.134, %47 ], [ @.str.10.134, %42 ], [ %34, %28 ], [ @.str.12.135, %110 ], [ @.str.12.135, %112 ], [ @.str.12.135, %105 ], [ @.str.10.134, %41 ], !dbg !3383
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !3383
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !3383
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !3383
  call void @llvm.dbg.value(metadata i8 %123, metadata !3336, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 %122, metadata !3335, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %121, metadata !3334, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata ptr %120, metadata !3333, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %119, metadata !3331, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata ptr %118, metadata !3329, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata ptr %117, metadata !3328, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i32 %116, metadata !3325, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 0, metadata !3345, metadata !DIExpression()), !dbg !3482
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
  br label %138, !dbg !3483

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !3465
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !3388
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !3392
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !3393
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !3484
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !3485
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !3322, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %145, metadata !3345, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i8 %144, metadata !3339, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 %143, metadata !3338, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 %142, metadata !3337, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %141, metadata !3332, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %140, metadata !3331, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %139, metadata !3324, metadata !DIExpression()), !dbg !3383
  %147 = icmp eq i64 %139, -1, !dbg !3486
  br i1 %147, label %148, label %152, !dbg !3487

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3488
  %150 = load i8, ptr %149, align 1, !dbg !3488, !tbaa !1105
  %151 = icmp eq i8 %150, 0, !dbg !3489
  br i1 %151, label %627, label %154, !dbg !3490

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !3491
  br i1 %153, label %627, label %154, !dbg !3490

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !3347, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8 0, metadata !3350, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8 0, metadata !3351, metadata !DIExpression()), !dbg !3492
  br i1 %129, label %155, label %170, !dbg !3493

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !3495
  %157 = select i1 %147, i1 %130, i1 false, !dbg !3496
  br i1 %157, label %158, label %160, !dbg !3496

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !3497
  call void @llvm.dbg.value(metadata i64 %159, metadata !3324, metadata !DIExpression()), !dbg !3383
  br label %160, !dbg !3498

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !3498
  call void @llvm.dbg.value(metadata i64 %161, metadata !3324, metadata !DIExpression()), !dbg !3383
  %162 = icmp ugt i64 %156, %161, !dbg !3499
  br i1 %162, label %170, label %163, !dbg !3500

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3501
  call void @llvm.dbg.value(metadata ptr %164, metadata !3502, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata ptr %120, metadata !3505, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i64 %121, metadata !3506, metadata !DIExpression()), !dbg !3507
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !3509
  %166 = icmp ne i32 %165, 0, !dbg !3510
  %167 = select i1 %166, i1 true, i1 %132, !dbg !3511
  %168 = xor i1 %166, true, !dbg !3511
  %169 = zext i1 %168 to i8, !dbg !3511
  br i1 %167, label %170, label %688, !dbg !3511

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !3492
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !3492
  call void @llvm.dbg.value(metadata i8 %173, metadata !3347, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 %171, metadata !3324, metadata !DIExpression()), !dbg !3383
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3512
  %175 = load i8, ptr %174, align 1, !dbg !3512, !tbaa !1105
  call void @llvm.dbg.value(metadata i8 %175, metadata !3352, metadata !DIExpression()), !dbg !3492
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
  ], !dbg !3513

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !3514

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !3515

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !3350, metadata !DIExpression()), !dbg !3492
  %179 = and i8 %144, 1, !dbg !3519
  %180 = icmp eq i8 %179, 0, !dbg !3519
  %181 = select i1 %133, i1 %180, i1 false, !dbg !3519
  br i1 %181, label %182, label %198, !dbg !3519

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !3521
  br i1 %183, label %184, label %186, !dbg !3525

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3521
  store i8 39, ptr %185, align 1, !dbg !3521, !tbaa !1105
  br label %186, !dbg !3521

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !3525
  call void @llvm.dbg.value(metadata i64 %187, metadata !3331, metadata !DIExpression()), !dbg !3383
  %188 = icmp ult i64 %187, %146, !dbg !3526
  br i1 %188, label %189, label %191, !dbg !3529

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !3526
  store i8 36, ptr %190, align 1, !dbg !3526, !tbaa !1105
  br label %191, !dbg !3526

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !3529
  call void @llvm.dbg.value(metadata i64 %192, metadata !3331, metadata !DIExpression()), !dbg !3383
  %193 = icmp ult i64 %192, %146, !dbg !3530
  br i1 %193, label %194, label %196, !dbg !3533

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !3530
  store i8 39, ptr %195, align 1, !dbg !3530, !tbaa !1105
  br label %196, !dbg !3530

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !3533
  call void @llvm.dbg.value(metadata i64 %197, metadata !3331, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 1, metadata !3339, metadata !DIExpression()), !dbg !3383
  br label %198, !dbg !3534

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !3383
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !3383
  call void @llvm.dbg.value(metadata i8 %200, metadata !3339, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %199, metadata !3331, metadata !DIExpression()), !dbg !3383
  %201 = icmp ult i64 %199, %146, !dbg !3535
  br i1 %201, label %202, label %204, !dbg !3538

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !3535
  store i8 92, ptr %203, align 1, !dbg !3535, !tbaa !1105
  br label %204, !dbg !3535

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !3538
  call void @llvm.dbg.value(metadata i64 %205, metadata !3331, metadata !DIExpression()), !dbg !3383
  br i1 %126, label %206, label %491, !dbg !3539

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !3541
  %208 = icmp ult i64 %207, %171, !dbg !3542
  br i1 %208, label %209, label %480, !dbg !3543

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !3544
  %211 = load i8, ptr %210, align 1, !dbg !3544, !tbaa !1105
  %212 = add i8 %211, -48, !dbg !3545
  %213 = icmp ult i8 %212, 10, !dbg !3545
  br i1 %213, label %214, label %480, !dbg !3545

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !3546
  br i1 %215, label %216, label %218, !dbg !3550

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !3546
  store i8 48, ptr %217, align 1, !dbg !3546, !tbaa !1105
  br label %218, !dbg !3546

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !3550
  call void @llvm.dbg.value(metadata i64 %219, metadata !3331, metadata !DIExpression()), !dbg !3383
  %220 = icmp ult i64 %219, %146, !dbg !3551
  br i1 %220, label %221, label %223, !dbg !3554

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !3551
  store i8 48, ptr %222, align 1, !dbg !3551, !tbaa !1105
  br label %223, !dbg !3551

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !3554
  call void @llvm.dbg.value(metadata i64 %224, metadata !3331, metadata !DIExpression()), !dbg !3383
  br label %480, !dbg !3555

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !3556

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !3557

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !3558

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !3560

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !3562
  %231 = icmp ult i64 %230, %171, !dbg !3563
  br i1 %231, label %232, label %480, !dbg !3564

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !3565
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !3566
  %235 = load i8, ptr %234, align 1, !dbg !3566, !tbaa !1105
  %236 = icmp eq i8 %235, 63, !dbg !3567
  br i1 %236, label %237, label %480, !dbg !3568

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !3569
  %239 = load i8, ptr %238, align 1, !dbg !3569, !tbaa !1105
  %240 = sext i8 %239 to i32, !dbg !3569
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
  ], !dbg !3570

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !3571

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !3352, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 %230, metadata !3345, metadata !DIExpression()), !dbg !3482
  %243 = icmp ult i64 %140, %146, !dbg !3573
  br i1 %243, label %244, label %246, !dbg !3576

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3573
  store i8 63, ptr %245, align 1, !dbg !3573, !tbaa !1105
  br label %246, !dbg !3573

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !3576
  call void @llvm.dbg.value(metadata i64 %247, metadata !3331, metadata !DIExpression()), !dbg !3383
  %248 = icmp ult i64 %247, %146, !dbg !3577
  br i1 %248, label %249, label %251, !dbg !3580

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !3577
  store i8 34, ptr %250, align 1, !dbg !3577, !tbaa !1105
  br label %251, !dbg !3577

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !3580
  call void @llvm.dbg.value(metadata i64 %252, metadata !3331, metadata !DIExpression()), !dbg !3383
  %253 = icmp ult i64 %252, %146, !dbg !3581
  br i1 %253, label %254, label %256, !dbg !3584

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !3581
  store i8 34, ptr %255, align 1, !dbg !3581, !tbaa !1105
  br label %256, !dbg !3581

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !3584
  call void @llvm.dbg.value(metadata i64 %257, metadata !3331, metadata !DIExpression()), !dbg !3383
  %258 = icmp ult i64 %257, %146, !dbg !3585
  br i1 %258, label %259, label %261, !dbg !3588

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !3585
  store i8 63, ptr %260, align 1, !dbg !3585, !tbaa !1105
  br label %261, !dbg !3585

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !3588
  call void @llvm.dbg.value(metadata i64 %262, metadata !3331, metadata !DIExpression()), !dbg !3383
  br label %480, !dbg !3589

263:                                              ; preds = %170
  br label %274, !dbg !3590

264:                                              ; preds = %170
  br label %274, !dbg !3591

265:                                              ; preds = %170
  br label %272, !dbg !3592

266:                                              ; preds = %170
  br label %272, !dbg !3593

267:                                              ; preds = %170
  br label %274, !dbg !3594

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !3595

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !3596

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !3599

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !3601

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !3602
  call void @llvm.dbg.label(metadata !3377), !dbg !3603
  br i1 %134, label %274, label %670, !dbg !3604

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !3602
  call void @llvm.dbg.label(metadata !3379), !dbg !3606
  br i1 %125, label %535, label %491, !dbg !3607

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !3608

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !3609, !tbaa !1105
  %279 = icmp eq i8 %278, 0, !dbg !3611
  br i1 %279, label %280, label %480, !dbg !3612

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !3613
  br i1 %281, label %282, label %480, !dbg !3615

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !3351, metadata !DIExpression()), !dbg !3492
  br label %283, !dbg !3616

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !3492
  call void @llvm.dbg.value(metadata i8 %284, metadata !3351, metadata !DIExpression()), !dbg !3492
  br i1 %134, label %480, label %670, !dbg !3617

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !3337, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 1, metadata !3351, metadata !DIExpression()), !dbg !3492
  br i1 %133, label %286, label %480, !dbg !3619

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !3620

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !3623
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !3625
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !3625
  %292 = select i1 %290, i64 %146, i64 0, !dbg !3625
  call void @llvm.dbg.value(metadata i64 %292, metadata !3322, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %291, metadata !3332, metadata !DIExpression()), !dbg !3383
  %293 = icmp ult i64 %140, %292, !dbg !3626
  br i1 %293, label %294, label %296, !dbg !3629

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3626
  store i8 39, ptr %295, align 1, !dbg !3626, !tbaa !1105
  br label %296, !dbg !3626

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !3629
  call void @llvm.dbg.value(metadata i64 %297, metadata !3331, metadata !DIExpression()), !dbg !3383
  %298 = icmp ult i64 %297, %292, !dbg !3630
  br i1 %298, label %299, label %301, !dbg !3633

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !3630
  store i8 92, ptr %300, align 1, !dbg !3630, !tbaa !1105
  br label %301, !dbg !3630

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !3633
  call void @llvm.dbg.value(metadata i64 %302, metadata !3331, metadata !DIExpression()), !dbg !3383
  %303 = icmp ult i64 %302, %292, !dbg !3634
  br i1 %303, label %304, label %306, !dbg !3637

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !3634
  store i8 39, ptr %305, align 1, !dbg !3634, !tbaa !1105
  br label %306, !dbg !3634

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !3637
  call void @llvm.dbg.value(metadata i64 %307, metadata !3331, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 0, metadata !3339, metadata !DIExpression()), !dbg !3383
  br label %480, !dbg !3638

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !3639

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !3353, metadata !DIExpression()), !dbg !3640
  %310 = tail call ptr @__ctype_b_loc() #44, !dbg !3641
  %311 = load ptr, ptr %310, align 8, !dbg !3641, !tbaa !1018
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !3641
  %314 = load i16, ptr %313, align 2, !dbg !3641, !tbaa !1137
  %315 = lshr i16 %314, 14, !dbg !3643
  %316 = trunc i16 %315 to i8, !dbg !3643
  %317 = and i8 %316, 1, !dbg !3643
  call void @llvm.dbg.value(metadata i8 %317, metadata !3356, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i64 %171, metadata !3324, metadata !DIExpression()), !dbg !3383
  %318 = icmp eq i8 %317, 0, !dbg !3644
  call void @llvm.dbg.value(metadata i1 %318, metadata !3351, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3492
  br label %368, !dbg !3645

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #41, !dbg !3646
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3357, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata ptr %14, metadata !3414, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata ptr %14, metadata !3422, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i32 0, metadata !3425, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i64 8, metadata !3426, metadata !DIExpression()), !dbg !3650
  store i64 0, ptr %14, align 8, !dbg !3652
  call void @llvm.dbg.value(metadata i64 0, metadata !3353, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i8 1, metadata !3356, metadata !DIExpression()), !dbg !3640
  %320 = icmp eq i64 %171, -1, !dbg !3653
  br i1 %320, label %321, label %323, !dbg !3655

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !3656
  call void @llvm.dbg.value(metadata i64 %322, metadata !3324, metadata !DIExpression()), !dbg !3383
  br label %323, !dbg !3657

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !3492
  call void @llvm.dbg.value(metadata i64 %324, metadata !3324, metadata !DIExpression()), !dbg !3383
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #41, !dbg !3658
  %325 = sub i64 %324, %145, !dbg !3659
  call void @llvm.dbg.value(metadata ptr %15, metadata !3360, metadata !DIExpression(DW_OP_deref)), !dbg !3660
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #41, !dbg !3661
  call void @llvm.dbg.value(metadata i64 %326, metadata !3364, metadata !DIExpression()), !dbg !3660
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !3662

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !3353, metadata !DIExpression()), !dbg !3640
  %328 = icmp ugt i64 %324, %145, !dbg !3663
  br i1 %328, label %331, label %329, !dbg !3665

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !3356, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i64 0, metadata !3353, metadata !DIExpression()), !dbg !3640
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !3666
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !3667
  call void @llvm.dbg.value(metadata i64 %324, metadata !3324, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i1 true, metadata !3351, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3492
  br label %368, !dbg !3645

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !3356, metadata !DIExpression()), !dbg !3640
  br label %360, !dbg !3668

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !3353, metadata !DIExpression()), !dbg !3640
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !3670
  %335 = load i8, ptr %334, align 1, !dbg !3670, !tbaa !1105
  %336 = icmp eq i8 %335, 0, !dbg !3665
  br i1 %336, label %363, label %337, !dbg !3671

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !3672
  call void @llvm.dbg.value(metadata i64 %338, metadata !3353, metadata !DIExpression()), !dbg !3640
  %339 = add i64 %338, %145, !dbg !3673
  %340 = icmp eq i64 %338, %325, !dbg !3663
  br i1 %340, label %363, label %331, !dbg !3665, !llvm.loop !3674

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !3675
  %344 = and i1 %343, %133, !dbg !3675
  call void @llvm.dbg.value(metadata i64 1, metadata !3365, metadata !DIExpression()), !dbg !3676
  br i1 %344, label %345, label %354, !dbg !3675

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !3365, metadata !DIExpression()), !dbg !3676
  %347 = add i64 %346, %145, !dbg !3677
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !3679
  %349 = load i8, ptr %348, align 1, !dbg !3679, !tbaa !1105
  %350 = sext i8 %349 to i32, !dbg !3679
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !3680

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !3681
  call void @llvm.dbg.value(metadata i64 %352, metadata !3365, metadata !DIExpression()), !dbg !3676
  %353 = icmp eq i64 %352, %326, !dbg !3682
  br i1 %353, label %354, label %345, !dbg !3683, !llvm.loop !3684

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !3686, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 %355, metadata !3360, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32 %355, metadata !3688, metadata !DIExpression()), !dbg !3696
  %356 = call i32 @iswprint(i32 noundef %355) #41, !dbg !3698
  %357 = icmp ne i32 %356, 0, !dbg !3699
  %358 = zext i1 %357 to i8, !dbg !3700
  call void @llvm.dbg.value(metadata i8 %358, metadata !3356, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i64 %326, metadata !3353, metadata !DIExpression()), !dbg !3640
  br label %363, !dbg !3701

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !3356, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i64 0, metadata !3353, metadata !DIExpression()), !dbg !3640
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !3666
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !3667
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !3356, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i64 0, metadata !3353, metadata !DIExpression()), !dbg !3640
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !3666
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !3667
  call void @llvm.dbg.value(metadata i64 %324, metadata !3324, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i1 %361, metadata !3351, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3492
  br label %368, !dbg !3645

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !3356, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i64 %364, metadata !3353, metadata !DIExpression()), !dbg !3640
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !3666
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !3667
  call void @llvm.dbg.value(metadata i64 %324, metadata !3324, metadata !DIExpression()), !dbg !3383
  %366 = icmp eq i8 %365, 0, !dbg !3644
  call void @llvm.dbg.value(metadata i1 %366, metadata !3351, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3492
  %367 = icmp ugt i64 %364, 1, !dbg !3702
  br i1 %367, label %374, label %368, !dbg !3645

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !3703
  br i1 %373, label %374, label %480, !dbg !3703

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !3704
  call void @llvm.dbg.value(metadata i64 %379, metadata !3373, metadata !DIExpression()), !dbg !3705
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !3706

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !3383
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !3484
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !3482
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !3492
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !3707
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !3492
  call void @llvm.dbg.value(metadata i8 %387, metadata !3352, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8 %386, metadata !3350, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8 %385, metadata !3347, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 %384, metadata !3345, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i8 %383, metadata !3339, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %382, metadata !3331, metadata !DIExpression()), !dbg !3383
  br i1 %380, label %388, label %434, !dbg !3708

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !3713

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !3350, metadata !DIExpression()), !dbg !3492
  %390 = and i8 %383, 1, !dbg !3716
  %391 = icmp eq i8 %390, 0, !dbg !3716
  %392 = select i1 %133, i1 %391, i1 false, !dbg !3716
  br i1 %392, label %393, label %409, !dbg !3716

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !3718
  br i1 %394, label %395, label %397, !dbg !3722

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3718
  store i8 39, ptr %396, align 1, !dbg !3718, !tbaa !1105
  br label %397, !dbg !3718

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !3722
  call void @llvm.dbg.value(metadata i64 %398, metadata !3331, metadata !DIExpression()), !dbg !3383
  %399 = icmp ult i64 %398, %146, !dbg !3723
  br i1 %399, label %400, label %402, !dbg !3726

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !3723
  store i8 36, ptr %401, align 1, !dbg !3723, !tbaa !1105
  br label %402, !dbg !3723

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !3726
  call void @llvm.dbg.value(metadata i64 %403, metadata !3331, metadata !DIExpression()), !dbg !3383
  %404 = icmp ult i64 %403, %146, !dbg !3727
  br i1 %404, label %405, label %407, !dbg !3730

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !3727
  store i8 39, ptr %406, align 1, !dbg !3727, !tbaa !1105
  br label %407, !dbg !3727

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !3730
  call void @llvm.dbg.value(metadata i64 %408, metadata !3331, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 1, metadata !3339, metadata !DIExpression()), !dbg !3383
  br label %409, !dbg !3731

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !3383
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !3383
  call void @llvm.dbg.value(metadata i8 %411, metadata !3339, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %410, metadata !3331, metadata !DIExpression()), !dbg !3383
  %412 = icmp ult i64 %410, %146, !dbg !3732
  br i1 %412, label %413, label %415, !dbg !3735

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !3732
  store i8 92, ptr %414, align 1, !dbg !3732, !tbaa !1105
  br label %415, !dbg !3732

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !3735
  call void @llvm.dbg.value(metadata i64 %416, metadata !3331, metadata !DIExpression()), !dbg !3383
  %417 = icmp ult i64 %416, %146, !dbg !3736
  br i1 %417, label %418, label %422, !dbg !3739

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !3736
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !3736
  store i8 %420, ptr %421, align 1, !dbg !3736, !tbaa !1105
  br label %422, !dbg !3736

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !3739
  call void @llvm.dbg.value(metadata i64 %423, metadata !3331, metadata !DIExpression()), !dbg !3383
  %424 = icmp ult i64 %423, %146, !dbg !3740
  br i1 %424, label %425, label %430, !dbg !3743

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !3740
  %428 = or i8 %427, 48, !dbg !3740
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !3740
  store i8 %428, ptr %429, align 1, !dbg !3740, !tbaa !1105
  br label %430, !dbg !3740

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !3743
  call void @llvm.dbg.value(metadata i64 %431, metadata !3331, metadata !DIExpression()), !dbg !3383
  %432 = and i8 %387, 7, !dbg !3744
  %433 = or i8 %432, 48, !dbg !3745
  call void @llvm.dbg.value(metadata i8 %433, metadata !3352, metadata !DIExpression()), !dbg !3492
  br label %443, !dbg !3746

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !3747
  %436 = icmp eq i8 %435, 0, !dbg !3747
  br i1 %436, label %443, label %437, !dbg !3749

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !3750
  br i1 %438, label %439, label %441, !dbg !3754

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3750
  store i8 92, ptr %440, align 1, !dbg !3750, !tbaa !1105
  br label %441, !dbg !3750

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !3754
  call void @llvm.dbg.value(metadata i64 %442, metadata !3331, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 0, metadata !3347, metadata !DIExpression()), !dbg !3492
  br label %443, !dbg !3755

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !3383
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !3484
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !3492
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !3492
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !3492
  call void @llvm.dbg.value(metadata i8 %448, metadata !3352, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8 %447, metadata !3350, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8 %446, metadata !3347, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8 %445, metadata !3339, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %444, metadata !3331, metadata !DIExpression()), !dbg !3383
  %449 = add i64 %384, 1, !dbg !3756
  %450 = icmp ugt i64 %379, %449, !dbg !3758
  br i1 %450, label %451, label %478, !dbg !3759

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !3760
  %453 = icmp ne i8 %452, 0, !dbg !3760
  %454 = and i8 %447, 1, !dbg !3760
  %455 = icmp eq i8 %454, 0, !dbg !3760
  %456 = select i1 %453, i1 %455, i1 false, !dbg !3760
  br i1 %456, label %457, label %468, !dbg !3760

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !3763
  br i1 %458, label %459, label %461, !dbg !3767

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !3763
  store i8 39, ptr %460, align 1, !dbg !3763, !tbaa !1105
  br label %461, !dbg !3763

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !3767
  call void @llvm.dbg.value(metadata i64 %462, metadata !3331, metadata !DIExpression()), !dbg !3383
  %463 = icmp ult i64 %462, %146, !dbg !3768
  br i1 %463, label %464, label %466, !dbg !3771

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !3768
  store i8 39, ptr %465, align 1, !dbg !3768, !tbaa !1105
  br label %466, !dbg !3768

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !3771
  call void @llvm.dbg.value(metadata i64 %467, metadata !3331, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 0, metadata !3339, metadata !DIExpression()), !dbg !3383
  br label %468, !dbg !3772

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !3773
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !3383
  call void @llvm.dbg.value(metadata i8 %470, metadata !3339, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %469, metadata !3331, metadata !DIExpression()), !dbg !3383
  %471 = icmp ult i64 %469, %146, !dbg !3774
  br i1 %471, label %472, label %474, !dbg !3777

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !3774
  store i8 %448, ptr %473, align 1, !dbg !3774, !tbaa !1105
  br label %474, !dbg !3774

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !3777
  call void @llvm.dbg.value(metadata i64 %475, metadata !3331, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %449, metadata !3345, metadata !DIExpression()), !dbg !3482
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !3778
  %477 = load i8, ptr %476, align 1, !dbg !3778, !tbaa !1105
  call void @llvm.dbg.value(metadata i8 %477, metadata !3352, metadata !DIExpression()), !dbg !3492
  br label %381, !dbg !3779, !llvm.loop !3780

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !3492
  call void @llvm.dbg.value(metadata i8 %448, metadata !3352, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8 %479, metadata !3351, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8 %447, metadata !3350, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8 %446, metadata !3347, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 %384, metadata !3345, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i8 %445, metadata !3339, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %444, metadata !3331, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %378, metadata !3324, metadata !DIExpression()), !dbg !3383
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !3783
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !3383
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !3388
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !3383
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !3383
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !3482
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !3492
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !3492
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !3492
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !3322, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 %489, metadata !3352, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8 %488, metadata !3351, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8 %487, metadata !3350, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8 %173, metadata !3347, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 %486, metadata !3345, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i8 %485, metadata !3339, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 %484, metadata !3337, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %483, metadata !3332, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %482, metadata !3331, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %481, metadata !3324, metadata !DIExpression()), !dbg !3383
  br i1 %127, label %502, label %491, !dbg !3784

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
  br i1 %137, label %503, label %524, !dbg !3786

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !3787

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
  %514 = lshr i8 %505, 5, !dbg !3788
  %515 = zext i8 %514 to i64, !dbg !3788
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !3789
  %517 = load i32, ptr %516, align 4, !dbg !3789, !tbaa !1096
  %518 = and i8 %505, 31, !dbg !3790
  %519 = zext i8 %518 to i32, !dbg !3790
  %520 = shl nuw i32 1, %519, !dbg !3791
  %521 = and i32 %517, %520, !dbg !3791
  %522 = icmp eq i32 %521, 0, !dbg !3791
  %523 = and i1 %172, %522, !dbg !3792
  br i1 %523, label %573, label %535, !dbg !3792

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
  br i1 %172, label %573, label %535, !dbg !3793

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !3783
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !3383
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !3388
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !3392
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !3484
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !3794
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !3492
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !3492
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !3322, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 %543, metadata !3352, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8 %542, metadata !3351, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 %541, metadata !3345, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i8 %540, metadata !3339, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 %539, metadata !3337, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %538, metadata !3332, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %537, metadata !3331, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %536, metadata !3324, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.label(metadata !3380), !dbg !3795
  br i1 %132, label %545, label %674, !dbg !3796

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !3350, metadata !DIExpression()), !dbg !3492
  %546 = and i8 %540, 1, !dbg !3798
  %547 = icmp eq i8 %546, 0, !dbg !3798
  %548 = select i1 %133, i1 %547, i1 false, !dbg !3798
  br i1 %548, label %549, label %565, !dbg !3798

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !3800
  br i1 %550, label %551, label %553, !dbg !3804

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !3800
  store i8 39, ptr %552, align 1, !dbg !3800, !tbaa !1105
  br label %553, !dbg !3800

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !3804
  call void @llvm.dbg.value(metadata i64 %554, metadata !3331, metadata !DIExpression()), !dbg !3383
  %555 = icmp ult i64 %554, %544, !dbg !3805
  br i1 %555, label %556, label %558, !dbg !3808

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !3805
  store i8 36, ptr %557, align 1, !dbg !3805, !tbaa !1105
  br label %558, !dbg !3805

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !3808
  call void @llvm.dbg.value(metadata i64 %559, metadata !3331, metadata !DIExpression()), !dbg !3383
  %560 = icmp ult i64 %559, %544, !dbg !3809
  br i1 %560, label %561, label %563, !dbg !3812

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !3809
  store i8 39, ptr %562, align 1, !dbg !3809, !tbaa !1105
  br label %563, !dbg !3809

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !3812
  call void @llvm.dbg.value(metadata i64 %564, metadata !3331, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 1, metadata !3339, metadata !DIExpression()), !dbg !3383
  br label %565, !dbg !3813

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !3492
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !3383
  call void @llvm.dbg.value(metadata i8 %567, metadata !3339, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %566, metadata !3331, metadata !DIExpression()), !dbg !3383
  %568 = icmp ult i64 %566, %544, !dbg !3814
  br i1 %568, label %569, label %571, !dbg !3817

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !3814
  store i8 92, ptr %570, align 1, !dbg !3814, !tbaa !1105
  br label %571, !dbg !3814

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !3817
  call void @llvm.dbg.value(metadata i64 %544, metadata !3322, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 %543, metadata !3352, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8 %542, metadata !3351, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8 1, metadata !3350, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 %541, metadata !3345, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i8 %567, metadata !3339, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 %539, metadata !3337, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %538, metadata !3332, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %572, metadata !3331, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %536, metadata !3324, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.label(metadata !3381), !dbg !3818
  br label %600, !dbg !3819

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !3783
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !3383
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !3388
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !3392
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !3484
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !3794
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !3492
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !3492
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !3822
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !3322, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 %582, metadata !3352, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8 %581, metadata !3351, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8 %580, metadata !3350, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 %579, metadata !3345, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i8 %578, metadata !3339, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 %577, metadata !3337, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %576, metadata !3332, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %575, metadata !3331, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %574, metadata !3324, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.label(metadata !3381), !dbg !3818
  %584 = and i8 %578, 1, !dbg !3819
  %585 = icmp ne i8 %584, 0, !dbg !3819
  %586 = and i8 %580, 1, !dbg !3819
  %587 = icmp eq i8 %586, 0, !dbg !3819
  %588 = select i1 %585, i1 %587, i1 false, !dbg !3819
  br i1 %588, label %589, label %600, !dbg !3819

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !3823
  br i1 %590, label %591, label %593, !dbg !3827

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !3823
  store i8 39, ptr %592, align 1, !dbg !3823, !tbaa !1105
  br label %593, !dbg !3823

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !3827
  call void @llvm.dbg.value(metadata i64 %594, metadata !3331, metadata !DIExpression()), !dbg !3383
  %595 = icmp ult i64 %594, %583, !dbg !3828
  br i1 %595, label %596, label %598, !dbg !3831

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !3828
  store i8 39, ptr %597, align 1, !dbg !3828, !tbaa !1105
  br label %598, !dbg !3828

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !3831
  call void @llvm.dbg.value(metadata i64 %599, metadata !3331, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 0, metadata !3339, metadata !DIExpression()), !dbg !3383
  br label %600, !dbg !3832

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !3492
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !3383
  call void @llvm.dbg.value(metadata i8 %609, metadata !3339, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %608, metadata !3331, metadata !DIExpression()), !dbg !3383
  %610 = icmp ult i64 %608, %601, !dbg !3833
  br i1 %610, label %611, label %613, !dbg !3836

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !3833
  store i8 %602, ptr %612, align 1, !dbg !3833, !tbaa !1105
  br label %613, !dbg !3833

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !3836
  call void @llvm.dbg.value(metadata i64 %614, metadata !3331, metadata !DIExpression()), !dbg !3383
  %615 = icmp eq i8 %603, 0, !dbg !3837
  %616 = select i1 %615, i8 0, i8 %143, !dbg !3839
  call void @llvm.dbg.value(metadata i8 %616, metadata !3338, metadata !DIExpression()), !dbg !3383
  br label %617, !dbg !3840

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !3783
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !3383
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !3388
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !3392
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !3393
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !3484
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !3794
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !3322, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %624, metadata !3345, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i8 %623, metadata !3339, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 %622, metadata !3338, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 %621, metadata !3337, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %620, metadata !3332, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %619, metadata !3331, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %618, metadata !3324, metadata !DIExpression()), !dbg !3383
  %626 = add i64 %624, 1, !dbg !3841
  call void @llvm.dbg.value(metadata i64 %626, metadata !3345, metadata !DIExpression()), !dbg !3482
  br label %138, !dbg !3842, !llvm.loop !3843

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !3322, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 %143, metadata !3338, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 %142, metadata !3337, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %141, metadata !3332, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %140, metadata !3331, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %139, metadata !3324, metadata !DIExpression()), !dbg !3383
  %628 = icmp eq i64 %140, 0, !dbg !3845
  %629 = and i1 %133, %628, !dbg !3847
  %630 = xor i1 %629, true, !dbg !3847
  %631 = select i1 %630, i1 true, i1 %132, !dbg !3847
  br i1 %631, label %632, label %670, !dbg !3847

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !3848
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !3848
  br i1 %636, label %637, label %646, !dbg !3848

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !3850
  %639 = icmp eq i8 %638, 0, !dbg !3850
  br i1 %639, label %642, label %640, !dbg !3853

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !3854
  br label %694, !dbg !3855

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !3856
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !3858
  br i1 %645, label %28, label %646, !dbg !3858

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !3859
  %649 = select i1 %648, i1 %647, i1 false, !dbg !3861
  br i1 %649, label %650, label %665, !dbg !3861

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !3333, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %140, metadata !3331, metadata !DIExpression()), !dbg !3383
  %651 = load i8, ptr %120, align 1, !dbg !3862, !tbaa !1105
  %652 = icmp eq i8 %651, 0, !dbg !3865
  br i1 %652, label %665, label %653, !dbg !3865

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !3333, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %656, metadata !3331, metadata !DIExpression()), !dbg !3383
  %657 = icmp ult i64 %656, %146, !dbg !3866
  br i1 %657, label %658, label %660, !dbg !3869

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !3866
  store i8 %654, ptr %659, align 1, !dbg !3866, !tbaa !1105
  br label %660, !dbg !3866

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !3869
  call void @llvm.dbg.value(metadata i64 %661, metadata !3331, metadata !DIExpression()), !dbg !3383
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !3870
  call void @llvm.dbg.value(metadata ptr %662, metadata !3333, metadata !DIExpression()), !dbg !3383
  %663 = load i8, ptr %662, align 1, !dbg !3862, !tbaa !1105
  %664 = icmp eq i8 %663, 0, !dbg !3865
  br i1 %664, label %665, label %653, !dbg !3865, !llvm.loop !3871

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !3465
  call void @llvm.dbg.value(metadata i64 %666, metadata !3331, metadata !DIExpression()), !dbg !3383
  %667 = icmp ult i64 %666, %146, !dbg !3873
  br i1 %667, label %668, label %694, !dbg !3875

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !3876
  store i8 0, ptr %669, align 1, !dbg !3877, !tbaa !1105
  br label %694, !dbg !3876

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !3382), !dbg !3878
  %672 = icmp eq i8 %124, 0, !dbg !3879
  %673 = select i1 %672, i32 2, i32 4, !dbg !3879
  br label %684, !dbg !3879

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !3879
  %678 = select i1 %677, i32 2, i32 4, !dbg !3879
  br label %679, !dbg !3881

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !3382), !dbg !3878
  %683 = icmp eq i32 %116, 2, !dbg !3881
  br i1 %683, label %684, label %688, !dbg !3879

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !3879

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !3325, metadata !DIExpression()), !dbg !3383
  %692 = and i32 %5, -3, !dbg !3882
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !3883
  br label %694, !dbg !3884

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !3885
}

; Function Attrs: nounwind
declare !dbg !3886 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3889 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3891 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3895, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i64 %1, metadata !3896, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata ptr %2, metadata !3897, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata ptr %0, metadata !3899, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata i64 %1, metadata !3904, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata ptr null, metadata !3905, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata ptr %2, metadata !3906, metadata !DIExpression()), !dbg !3912
  %4 = icmp eq ptr %2, null, !dbg !3914
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3914
  call void @llvm.dbg.value(metadata ptr %5, metadata !3907, metadata !DIExpression()), !dbg !3912
  %6 = tail call ptr @__errno_location() #44, !dbg !3915
  %7 = load i32, ptr %6, align 4, !dbg !3915, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 %7, metadata !3908, metadata !DIExpression()), !dbg !3912
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3916
  %9 = load i32, ptr %8, align 4, !dbg !3916, !tbaa !3265
  %10 = or i32 %9, 1, !dbg !3917
  call void @llvm.dbg.value(metadata i32 %10, metadata !3909, metadata !DIExpression()), !dbg !3912
  %11 = load i32, ptr %5, align 8, !dbg !3918, !tbaa !3215
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3919
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3920
  %14 = load ptr, ptr %13, align 8, !dbg !3920, !tbaa !3286
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3921
  %16 = load ptr, ptr %15, align 8, !dbg !3921, !tbaa !3289
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3922
  %18 = add i64 %17, 1, !dbg !3923
  call void @llvm.dbg.value(metadata i64 %18, metadata !3910, metadata !DIExpression()), !dbg !3912
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #48, !dbg !3924
  call void @llvm.dbg.value(metadata ptr %19, metadata !3911, metadata !DIExpression()), !dbg !3912
  %20 = load i32, ptr %5, align 8, !dbg !3925, !tbaa !3215
  %21 = load ptr, ptr %13, align 8, !dbg !3926, !tbaa !3286
  %22 = load ptr, ptr %15, align 8, !dbg !3927, !tbaa !3289
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3928
  store i32 %7, ptr %6, align 4, !dbg !3929, !tbaa !1096
  ret ptr %19, !dbg !3930
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3900 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3899, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i64 %1, metadata !3904, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata ptr %2, metadata !3905, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata ptr %3, metadata !3906, metadata !DIExpression()), !dbg !3931
  %5 = icmp eq ptr %3, null, !dbg !3932
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3932
  call void @llvm.dbg.value(metadata ptr %6, metadata !3907, metadata !DIExpression()), !dbg !3931
  %7 = tail call ptr @__errno_location() #44, !dbg !3933
  %8 = load i32, ptr %7, align 4, !dbg !3933, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 %8, metadata !3908, metadata !DIExpression()), !dbg !3931
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3934
  %10 = load i32, ptr %9, align 4, !dbg !3934, !tbaa !3265
  %11 = icmp eq ptr %2, null, !dbg !3935
  %12 = zext i1 %11 to i32, !dbg !3935
  %13 = or i32 %10, %12, !dbg !3936
  call void @llvm.dbg.value(metadata i32 %13, metadata !3909, metadata !DIExpression()), !dbg !3931
  %14 = load i32, ptr %6, align 8, !dbg !3937, !tbaa !3215
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3938
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3939
  %17 = load ptr, ptr %16, align 8, !dbg !3939, !tbaa !3286
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3940
  %19 = load ptr, ptr %18, align 8, !dbg !3940, !tbaa !3289
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3941
  %21 = add i64 %20, 1, !dbg !3942
  call void @llvm.dbg.value(metadata i64 %21, metadata !3910, metadata !DIExpression()), !dbg !3931
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #48, !dbg !3943
  call void @llvm.dbg.value(metadata ptr %22, metadata !3911, metadata !DIExpression()), !dbg !3931
  %23 = load i32, ptr %6, align 8, !dbg !3944, !tbaa !3215
  %24 = load ptr, ptr %16, align 8, !dbg !3945, !tbaa !3286
  %25 = load ptr, ptr %18, align 8, !dbg !3946, !tbaa !3289
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3947
  store i32 %8, ptr %7, align 4, !dbg !3948, !tbaa !1096
  br i1 %11, label %28, label %27, !dbg !3949

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3950, !tbaa !1298
  br label %28, !dbg !3952

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3953
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3954 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3959, !tbaa !1018
  call void @llvm.dbg.value(metadata ptr %1, metadata !3956, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata i32 1, metadata !3957, metadata !DIExpression()), !dbg !3961
  %2 = load i32, ptr @nslots, align 4, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 1, metadata !3957, metadata !DIExpression()), !dbg !3961
  %3 = icmp sgt i32 %2, 1, !dbg !3962
  br i1 %3, label %4, label %6, !dbg !3964

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3962
  br label %10, !dbg !3964

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3965
  %8 = load ptr, ptr %7, align 8, !dbg !3965, !tbaa !3967
  %9 = icmp eq ptr %8, @slot0, !dbg !3969
  br i1 %9, label %17, label %16, !dbg !3970

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3957, metadata !DIExpression()), !dbg !3961
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3971
  %13 = load ptr, ptr %12, align 8, !dbg !3971, !tbaa !3967
  tail call void @free(ptr noundef %13) #41, !dbg !3972
  %14 = add nuw nsw i64 %11, 1, !dbg !3973
  call void @llvm.dbg.value(metadata i64 %14, metadata !3957, metadata !DIExpression()), !dbg !3961
  %15 = icmp eq i64 %14, %5, !dbg !3962
  br i1 %15, label %6, label %10, !dbg !3964, !llvm.loop !3974

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #41, !dbg !3976
  store i64 256, ptr @slotvec0, align 8, !dbg !3978, !tbaa !3979
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3980, !tbaa !3967
  br label %17, !dbg !3981

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3982
  br i1 %18, label %20, label %19, !dbg !3984

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #41, !dbg !3985
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3987, !tbaa !1018
  br label %20, !dbg !3988

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3989, !tbaa !1096
  ret void, !dbg !3990
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3991 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3993, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata ptr %1, metadata !3994, metadata !DIExpression()), !dbg !3995
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3996
  ret ptr %3, !dbg !3997
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3998 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4002, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata ptr %1, metadata !4003, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i64 %2, metadata !4004, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata ptr %3, metadata !4005, metadata !DIExpression()), !dbg !4018
  %6 = tail call ptr @__errno_location() #44, !dbg !4019
  %7 = load i32, ptr %6, align 4, !dbg !4019, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 %7, metadata !4006, metadata !DIExpression()), !dbg !4018
  %8 = load ptr, ptr @slotvec, align 8, !dbg !4020, !tbaa !1018
  call void @llvm.dbg.value(metadata ptr %8, metadata !4007, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !4008, metadata !DIExpression()), !dbg !4018
  %9 = icmp ugt i32 %0, 2147483646, !dbg !4021
  br i1 %9, label %10, label %11, !dbg !4021

10:                                               ; preds = %4
  tail call void @abort() #43, !dbg !4023
  unreachable, !dbg !4023

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !4024, !tbaa !1096
  %13 = icmp sgt i32 %12, %0, !dbg !4025
  br i1 %13, label %32, label %14, !dbg !4026

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !4027
  call void @llvm.dbg.value(metadata i1 %15, metadata !4009, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4028
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #41, !dbg !4029
  %16 = sext i32 %12 to i64, !dbg !4030
  call void @llvm.dbg.value(metadata i64 %16, metadata !4012, metadata !DIExpression()), !dbg !4028
  store i64 %16, ptr %5, align 8, !dbg !4031, !tbaa !1298
  %17 = select i1 %15, ptr null, ptr %8, !dbg !4032
  %18 = add nuw nsw i32 %0, 1, !dbg !4033
  %19 = sub i32 %18, %12, !dbg !4034
  %20 = sext i32 %19 to i64, !dbg !4035
  call void @llvm.dbg.value(metadata ptr %5, metadata !4012, metadata !DIExpression(DW_OP_deref)), !dbg !4028
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #41, !dbg !4036
  call void @llvm.dbg.value(metadata ptr %21, metadata !4007, metadata !DIExpression()), !dbg !4018
  store ptr %21, ptr @slotvec, align 8, !dbg !4037, !tbaa !1018
  br i1 %15, label %22, label %23, !dbg !4038

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !4039, !tbaa.struct !4041
  br label %23, !dbg !4042

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !4043, !tbaa !1096
  %25 = sext i32 %24 to i64, !dbg !4044
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !4044
  %27 = load i64, ptr %5, align 8, !dbg !4045, !tbaa !1298
  call void @llvm.dbg.value(metadata i64 %27, metadata !4012, metadata !DIExpression()), !dbg !4028
  %28 = sub nsw i64 %27, %25, !dbg !4046
  %29 = shl i64 %28, 4, !dbg !4047
  call void @llvm.dbg.value(metadata ptr %26, metadata !3422, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i32 0, metadata !3425, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i64 %29, metadata !3426, metadata !DIExpression()), !dbg !4048
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #41, !dbg !4050
  %30 = load i64, ptr %5, align 8, !dbg !4051, !tbaa !1298
  call void @llvm.dbg.value(metadata i64 %30, metadata !4012, metadata !DIExpression()), !dbg !4028
  %31 = trunc i64 %30 to i32, !dbg !4051
  store i32 %31, ptr @nslots, align 4, !dbg !4052, !tbaa !1096
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #41, !dbg !4053
  br label %32, !dbg !4054

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !4018
  call void @llvm.dbg.value(metadata ptr %33, metadata !4007, metadata !DIExpression()), !dbg !4018
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !4055
  %36 = load i64, ptr %35, align 8, !dbg !4056, !tbaa !3979
  call void @llvm.dbg.value(metadata i64 %36, metadata !4013, metadata !DIExpression()), !dbg !4057
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !4058
  %38 = load ptr, ptr %37, align 8, !dbg !4058, !tbaa !3967
  call void @llvm.dbg.value(metadata ptr %38, metadata !4015, metadata !DIExpression()), !dbg !4057
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !4059
  %40 = load i32, ptr %39, align 4, !dbg !4059, !tbaa !3265
  %41 = or i32 %40, 1, !dbg !4060
  call void @llvm.dbg.value(metadata i32 %41, metadata !4016, metadata !DIExpression()), !dbg !4057
  %42 = load i32, ptr %3, align 8, !dbg !4061, !tbaa !3215
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !4062
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !4063
  %45 = load ptr, ptr %44, align 8, !dbg !4063, !tbaa !3286
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !4064
  %47 = load ptr, ptr %46, align 8, !dbg !4064, !tbaa !3289
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !4065
  call void @llvm.dbg.value(metadata i64 %48, metadata !4017, metadata !DIExpression()), !dbg !4057
  %49 = icmp ugt i64 %36, %48, !dbg !4066
  br i1 %49, label %60, label %50, !dbg !4068

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !4069
  call void @llvm.dbg.value(metadata i64 %51, metadata !4013, metadata !DIExpression()), !dbg !4057
  store i64 %51, ptr %35, align 8, !dbg !4071, !tbaa !3979
  %52 = icmp eq ptr %38, @slot0, !dbg !4072
  br i1 %52, label %54, label %53, !dbg !4074

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #41, !dbg !4075
  br label %54, !dbg !4075

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #48, !dbg !4076
  call void @llvm.dbg.value(metadata ptr %55, metadata !4015, metadata !DIExpression()), !dbg !4057
  store ptr %55, ptr %37, align 8, !dbg !4077, !tbaa !3967
  %56 = load i32, ptr %3, align 8, !dbg !4078, !tbaa !3215
  %57 = load ptr, ptr %44, align 8, !dbg !4079, !tbaa !3286
  %58 = load ptr, ptr %46, align 8, !dbg !4080, !tbaa !3289
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !4081
  br label %60, !dbg !4082

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !4057
  call void @llvm.dbg.value(metadata ptr %61, metadata !4015, metadata !DIExpression()), !dbg !4057
  store i32 %7, ptr %6, align 4, !dbg !4083, !tbaa !1096
  ret ptr %61, !dbg !4084
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #29

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4085 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4089, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata ptr %1, metadata !4090, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i64 %2, metadata !4091, metadata !DIExpression()), !dbg !4092
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !4093
  ret ptr %4, !dbg !4094
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !4095 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4097, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i32 0, metadata !3993, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata ptr %0, metadata !3994, metadata !DIExpression()), !dbg !4099
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !4101
  ret ptr %2, !dbg !4102
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4103 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4107, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i64 %1, metadata !4108, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i32 0, metadata !4089, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata ptr %0, metadata !4090, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i64 %1, metadata !4091, metadata !DIExpression()), !dbg !4110
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !4112
  ret ptr %3, !dbg !4113
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4114 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4118, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i32 %1, metadata !4119, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata ptr %2, metadata !4120, metadata !DIExpression()), !dbg !4122
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !4123
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4121, metadata !DIExpression()), !dbg !4124
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4125), !dbg !4128
  call void @llvm.dbg.value(metadata i32 %1, metadata !4129, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4134, metadata !DIExpression()), !dbg !4137
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !4137, !alias.scope !4125
  %5 = icmp eq i32 %1, 10, !dbg !4138
  br i1 %5, label %6, label %7, !dbg !4140

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !4141, !noalias !4125
  unreachable, !dbg !4141

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !4142, !tbaa !3215, !alias.scope !4125
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4143
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !4144
  ret ptr %8, !dbg !4145
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4146 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4150, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i32 %1, metadata !4151, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata ptr %2, metadata !4152, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i64 %3, metadata !4153, metadata !DIExpression()), !dbg !4155
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !4156
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4154, metadata !DIExpression()), !dbg !4157
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4158), !dbg !4161
  call void @llvm.dbg.value(metadata i32 %1, metadata !4129, metadata !DIExpression()), !dbg !4162
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4134, metadata !DIExpression()), !dbg !4164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !4164, !alias.scope !4158
  %6 = icmp eq i32 %1, 10, !dbg !4165
  br i1 %6, label %7, label %8, !dbg !4166

7:                                                ; preds = %4
  tail call void @abort() #43, !dbg !4167, !noalias !4158
  unreachable, !dbg !4167

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !4168, !tbaa !3215, !alias.scope !4158
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4169
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !4170
  ret ptr %9, !dbg !4171
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4172 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4176, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.value(metadata ptr %1, metadata !4177, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.value(metadata i32 0, metadata !4118, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata i32 %0, metadata !4119, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata ptr %1, metadata !4120, metadata !DIExpression()), !dbg !4179
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !4181
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4121, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4183), !dbg !4186
  call void @llvm.dbg.value(metadata i32 %0, metadata !4129, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4134, metadata !DIExpression()), !dbg !4189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !4189, !alias.scope !4183
  %4 = icmp eq i32 %0, 10, !dbg !4190
  br i1 %4, label %5, label %6, !dbg !4191

5:                                                ; preds = %2
  tail call void @abort() #43, !dbg !4192, !noalias !4183
  unreachable, !dbg !4192

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !4193, !tbaa !3215, !alias.scope !4183
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !4194
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !4195
  ret ptr %7, !dbg !4196
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4197 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4201, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata ptr %1, metadata !4202, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata i64 %2, metadata !4203, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata i32 0, metadata !4150, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i32 %0, metadata !4151, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata ptr %1, metadata !4152, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i64 %2, metadata !4153, metadata !DIExpression()), !dbg !4205
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !4207
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4154, metadata !DIExpression()), !dbg !4208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4209), !dbg !4212
  call void @llvm.dbg.value(metadata i32 %0, metadata !4129, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4134, metadata !DIExpression()), !dbg !4215
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !4215, !alias.scope !4209
  %5 = icmp eq i32 %0, 10, !dbg !4216
  br i1 %5, label %6, label %7, !dbg !4217

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !4218, !noalias !4209
  unreachable, !dbg !4218

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !4219, !tbaa !3215, !alias.scope !4209
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !4220
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !4221
  ret ptr %8, !dbg !4222
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !4223 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4227, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i64 %1, metadata !4228, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i8 %2, metadata !4229, metadata !DIExpression()), !dbg !4231
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !4232
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4230, metadata !DIExpression()), !dbg !4233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4234, !tbaa.struct !4235
  call void @llvm.dbg.value(metadata ptr %4, metadata !3232, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata i8 %2, metadata !3233, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata i32 1, metadata !3234, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata i8 %2, metadata !3235, metadata !DIExpression()), !dbg !4236
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !4238
  %6 = lshr i8 %2, 5, !dbg !4239
  %7 = zext i8 %6 to i64, !dbg !4239
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !4240
  call void @llvm.dbg.value(metadata ptr %8, metadata !3236, metadata !DIExpression()), !dbg !4236
  %9 = and i8 %2, 31, !dbg !4241
  %10 = zext i8 %9 to i32, !dbg !4241
  call void @llvm.dbg.value(metadata i32 %10, metadata !3238, metadata !DIExpression()), !dbg !4236
  %11 = load i32, ptr %8, align 4, !dbg !4242, !tbaa !1096
  %12 = lshr i32 %11, %10, !dbg !4243
  call void @llvm.dbg.value(metadata i32 %12, metadata !3239, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4236
  %13 = and i32 %12, 1, !dbg !4244
  %14 = xor i32 %13, 1, !dbg !4244
  %15 = shl nuw i32 %14, %10, !dbg !4245
  %16 = xor i32 %15, %11, !dbg !4246
  store i32 %16, ptr %8, align 4, !dbg !4246, !tbaa !1096
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !4247
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !4248
  ret ptr %17, !dbg !4249
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !4250 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4254, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata i8 %1, metadata !4255, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata ptr %0, metadata !4227, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i64 -1, metadata !4228, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i8 %1, metadata !4229, metadata !DIExpression()), !dbg !4257
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !4259
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4230, metadata !DIExpression()), !dbg !4260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4261, !tbaa.struct !4235
  call void @llvm.dbg.value(metadata ptr %3, metadata !3232, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata i8 %1, metadata !3233, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata i32 1, metadata !3234, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata i8 %1, metadata !3235, metadata !DIExpression()), !dbg !4262
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !4264
  %5 = lshr i8 %1, 5, !dbg !4265
  %6 = zext i8 %5 to i64, !dbg !4265
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !4266
  call void @llvm.dbg.value(metadata ptr %7, metadata !3236, metadata !DIExpression()), !dbg !4262
  %8 = and i8 %1, 31, !dbg !4267
  %9 = zext i8 %8 to i32, !dbg !4267
  call void @llvm.dbg.value(metadata i32 %9, metadata !3238, metadata !DIExpression()), !dbg !4262
  %10 = load i32, ptr %7, align 4, !dbg !4268, !tbaa !1096
  %11 = lshr i32 %10, %9, !dbg !4269
  call void @llvm.dbg.value(metadata i32 %11, metadata !3239, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4262
  %12 = and i32 %11, 1, !dbg !4270
  %13 = xor i32 %12, 1, !dbg !4270
  %14 = shl nuw i32 %13, %9, !dbg !4271
  %15 = xor i32 %14, %10, !dbg !4272
  store i32 %15, ptr %7, align 4, !dbg !4272, !tbaa !1096
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !4273
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !4274
  ret ptr %16, !dbg !4275
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !4276 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4278, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata ptr %0, metadata !4254, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i8 58, metadata !4255, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr %0, metadata !4227, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i64 -1, metadata !4228, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i8 58, metadata !4229, metadata !DIExpression()), !dbg !4282
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #41, !dbg !4284
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4230, metadata !DIExpression()), !dbg !4285
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4286, !tbaa.struct !4235
  call void @llvm.dbg.value(metadata ptr %2, metadata !3232, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i8 58, metadata !3233, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i32 1, metadata !3234, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i8 58, metadata !3235, metadata !DIExpression()), !dbg !4287
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !4289
  call void @llvm.dbg.value(metadata ptr %3, metadata !3236, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i32 26, metadata !3238, metadata !DIExpression()), !dbg !4287
  %4 = load i32, ptr %3, align 4, !dbg !4290, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 %4, metadata !3239, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4287
  %5 = or i32 %4, 67108864, !dbg !4291
  store i32 %5, ptr %3, align 4, !dbg !4291, !tbaa !1096
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !4292
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #41, !dbg !4293
  ret ptr %6, !dbg !4294
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4295 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4297, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata i64 %1, metadata !4298, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata ptr %0, metadata !4227, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata i64 %1, metadata !4228, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata i8 58, metadata !4229, metadata !DIExpression()), !dbg !4300
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !4302
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4230, metadata !DIExpression()), !dbg !4303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4304, !tbaa.struct !4235
  call void @llvm.dbg.value(metadata ptr %3, metadata !3232, metadata !DIExpression()), !dbg !4305
  call void @llvm.dbg.value(metadata i8 58, metadata !3233, metadata !DIExpression()), !dbg !4305
  call void @llvm.dbg.value(metadata i32 1, metadata !3234, metadata !DIExpression()), !dbg !4305
  call void @llvm.dbg.value(metadata i8 58, metadata !3235, metadata !DIExpression()), !dbg !4305
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !4307
  call void @llvm.dbg.value(metadata ptr %4, metadata !3236, metadata !DIExpression()), !dbg !4305
  call void @llvm.dbg.value(metadata i32 26, metadata !3238, metadata !DIExpression()), !dbg !4305
  %5 = load i32, ptr %4, align 4, !dbg !4308, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 %5, metadata !3239, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4305
  %6 = or i32 %5, 67108864, !dbg !4309
  store i32 %6, ptr %4, align 4, !dbg !4309, !tbaa !1096
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !4310
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !4311
  ret ptr %7, !dbg !4312
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4313 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !4134, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4319
  call void @llvm.dbg.value(metadata i32 %0, metadata !4315, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata i32 %1, metadata !4316, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata ptr %2, metadata !4317, metadata !DIExpression()), !dbg !4321
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !4322
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4318, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i32 %1, metadata !4129, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 0, metadata !4134, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4324
  %5 = icmp eq i32 %1, 10, !dbg !4325
  br i1 %5, label %6, label %7, !dbg !4326

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !4327, !noalias !4328
  unreachable, !dbg !4327

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !4134, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4324
  store i32 %1, ptr %4, align 8, !dbg !4331, !tbaa.struct !4235
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !4331
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !4331
  call void @llvm.dbg.value(metadata ptr %4, metadata !3232, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i8 58, metadata !3233, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i32 1, metadata !3234, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i8 58, metadata !3235, metadata !DIExpression()), !dbg !4332
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !4334
  call void @llvm.dbg.value(metadata ptr %9, metadata !3236, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i32 26, metadata !3238, metadata !DIExpression()), !dbg !4332
  %10 = load i32, ptr %9, align 4, !dbg !4335, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 %10, metadata !3239, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4332
  %11 = or i32 %10, 67108864, !dbg !4336
  store i32 %11, ptr %9, align 4, !dbg !4336, !tbaa !1096
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4337
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !4338
  ret ptr %12, !dbg !4339
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4340 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4344, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata ptr %1, metadata !4345, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata ptr %2, metadata !4346, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata ptr %3, metadata !4347, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i32 %0, metadata !4349, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.value(metadata ptr %1, metadata !4354, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.value(metadata ptr %2, metadata !4355, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.value(metadata ptr %3, metadata !4356, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.value(metadata i64 -1, metadata !4357, metadata !DIExpression()), !dbg !4359
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !4361
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4358, metadata !DIExpression()), !dbg !4362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4363, !tbaa.struct !4235
  call void @llvm.dbg.value(metadata ptr %5, metadata !3272, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata ptr %1, metadata !3273, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata ptr %2, metadata !3274, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata ptr %5, metadata !3272, metadata !DIExpression()), !dbg !4364
  store i32 10, ptr %5, align 8, !dbg !4366, !tbaa !3215
  %6 = icmp ne ptr %1, null, !dbg !4367
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4368
  br i1 %8, label %10, label %9, !dbg !4368

9:                                                ; preds = %4
  tail call void @abort() #43, !dbg !4369
  unreachable, !dbg !4369

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4370
  store ptr %1, ptr %11, align 8, !dbg !4371, !tbaa !3286
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4372
  store ptr %2, ptr %12, align 8, !dbg !4373, !tbaa !3289
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4374
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !4375
  ret ptr %13, !dbg !4376
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !4350 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4349, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.value(metadata ptr %1, metadata !4354, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.value(metadata ptr %2, metadata !4355, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.value(metadata ptr %3, metadata !4356, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.value(metadata i64 %4, metadata !4357, metadata !DIExpression()), !dbg !4377
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #41, !dbg !4378
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4358, metadata !DIExpression()), !dbg !4379
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4380, !tbaa.struct !4235
  call void @llvm.dbg.value(metadata ptr %6, metadata !3272, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata ptr %1, metadata !3273, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata ptr %2, metadata !3274, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata ptr %6, metadata !3272, metadata !DIExpression()), !dbg !4381
  store i32 10, ptr %6, align 8, !dbg !4383, !tbaa !3215
  %7 = icmp ne ptr %1, null, !dbg !4384
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4385
  br i1 %9, label %11, label %10, !dbg !4385

10:                                               ; preds = %5
  tail call void @abort() #43, !dbg !4386
  unreachable, !dbg !4386

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4387
  store ptr %1, ptr %12, align 8, !dbg !4388, !tbaa !3286
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4389
  store ptr %2, ptr %13, align 8, !dbg !4390, !tbaa !3289
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4391
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #41, !dbg !4392
  ret ptr %14, !dbg !4393
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4394 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4398, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata ptr %1, metadata !4399, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata ptr %2, metadata !4400, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata i32 0, metadata !4344, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata ptr %0, metadata !4345, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata ptr %1, metadata !4346, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata ptr %2, metadata !4347, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata i32 0, metadata !4349, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata ptr %0, metadata !4354, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata ptr %1, metadata !4355, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata ptr %2, metadata !4356, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i64 -1, metadata !4357, metadata !DIExpression()), !dbg !4404
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !4406
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4358, metadata !DIExpression()), !dbg !4407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4408, !tbaa.struct !4235
  call void @llvm.dbg.value(metadata ptr %4, metadata !3272, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata ptr %0, metadata !3273, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata ptr %1, metadata !3274, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata ptr %4, metadata !3272, metadata !DIExpression()), !dbg !4409
  store i32 10, ptr %4, align 8, !dbg !4411, !tbaa !3215
  %5 = icmp ne ptr %0, null, !dbg !4412
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4413
  br i1 %7, label %9, label %8, !dbg !4413

8:                                                ; preds = %3
  tail call void @abort() #43, !dbg !4414
  unreachable, !dbg !4414

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4415
  store ptr %0, ptr %10, align 8, !dbg !4416, !tbaa !3286
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4417
  store ptr %1, ptr %11, align 8, !dbg !4418, !tbaa !3289
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4419
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !4420
  ret ptr %12, !dbg !4421
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4422 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4426, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata ptr %1, metadata !4427, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata ptr %2, metadata !4428, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64 %3, metadata !4429, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i32 0, metadata !4349, metadata !DIExpression()), !dbg !4431
  call void @llvm.dbg.value(metadata ptr %0, metadata !4354, metadata !DIExpression()), !dbg !4431
  call void @llvm.dbg.value(metadata ptr %1, metadata !4355, metadata !DIExpression()), !dbg !4431
  call void @llvm.dbg.value(metadata ptr %2, metadata !4356, metadata !DIExpression()), !dbg !4431
  call void @llvm.dbg.value(metadata i64 %3, metadata !4357, metadata !DIExpression()), !dbg !4431
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !4433
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4358, metadata !DIExpression()), !dbg !4434
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4435, !tbaa.struct !4235
  call void @llvm.dbg.value(metadata ptr %5, metadata !3272, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata ptr %0, metadata !3273, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata ptr %1, metadata !3274, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata ptr %5, metadata !3272, metadata !DIExpression()), !dbg !4436
  store i32 10, ptr %5, align 8, !dbg !4438, !tbaa !3215
  %6 = icmp ne ptr %0, null, !dbg !4439
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4440
  br i1 %8, label %10, label %9, !dbg !4440

9:                                                ; preds = %4
  tail call void @abort() #43, !dbg !4441
  unreachable, !dbg !4441

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4442
  store ptr %0, ptr %11, align 8, !dbg !4443, !tbaa !3286
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4444
  store ptr %1, ptr %12, align 8, !dbg !4445, !tbaa !3289
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4446
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !4447
  ret ptr %13, !dbg !4448
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4449 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4453, metadata !DIExpression()), !dbg !4456
  call void @llvm.dbg.value(metadata ptr %1, metadata !4454, metadata !DIExpression()), !dbg !4456
  call void @llvm.dbg.value(metadata i64 %2, metadata !4455, metadata !DIExpression()), !dbg !4456
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4457
  ret ptr %4, !dbg !4458
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4459 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4463, metadata !DIExpression()), !dbg !4465
  call void @llvm.dbg.value(metadata i64 %1, metadata !4464, metadata !DIExpression()), !dbg !4465
  call void @llvm.dbg.value(metadata i32 0, metadata !4453, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata ptr %0, metadata !4454, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i64 %1, metadata !4455, metadata !DIExpression()), !dbg !4466
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4468
  ret ptr %3, !dbg !4469
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4470 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4474, metadata !DIExpression()), !dbg !4476
  call void @llvm.dbg.value(metadata ptr %1, metadata !4475, metadata !DIExpression()), !dbg !4476
  call void @llvm.dbg.value(metadata i32 %0, metadata !4453, metadata !DIExpression()), !dbg !4477
  call void @llvm.dbg.value(metadata ptr %1, metadata !4454, metadata !DIExpression()), !dbg !4477
  call void @llvm.dbg.value(metadata i64 -1, metadata !4455, metadata !DIExpression()), !dbg !4477
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4479
  ret ptr %3, !dbg !4480
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4481 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4485, metadata !DIExpression()), !dbg !4486
  call void @llvm.dbg.value(metadata i32 0, metadata !4474, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata ptr %0, metadata !4475, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i32 0, metadata !4453, metadata !DIExpression()), !dbg !4489
  call void @llvm.dbg.value(metadata ptr %0, metadata !4454, metadata !DIExpression()), !dbg !4489
  call void @llvm.dbg.value(metadata i64 -1, metadata !4455, metadata !DIExpression()), !dbg !4489
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4491
  ret ptr %2, !dbg !4492
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4493 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4532, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata ptr %1, metadata !4533, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata ptr %2, metadata !4534, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata ptr %3, metadata !4535, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata ptr %4, metadata !4536, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata i64 %5, metadata !4537, metadata !DIExpression()), !dbg !4538
  %7 = icmp eq ptr %1, null, !dbg !4539
  br i1 %7, label %10, label %8, !dbg !4541

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.142, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #41, !dbg !4542
  br label %12, !dbg !4542

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.143, ptr noundef %2, ptr noundef %3) #41, !dbg !4543
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.3.145, i32 noundef 5) #41, !dbg !4544
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #41, !dbg !4544
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.146, ptr noundef %0), !dbg !4545
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.5.147, i32 noundef 5) #41, !dbg !4546
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.148) #41, !dbg !4546
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.146, ptr noundef %0), !dbg !4547
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
  ], !dbg !4548

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.7.149, i32 noundef 5) #41, !dbg !4549
  %21 = load ptr, ptr %4, align 8, !dbg !4549, !tbaa !1018
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #41, !dbg !4549
  br label %147, !dbg !4551

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.8.150, i32 noundef 5) #41, !dbg !4552
  %25 = load ptr, ptr %4, align 8, !dbg !4552, !tbaa !1018
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4552
  %27 = load ptr, ptr %26, align 8, !dbg !4552, !tbaa !1018
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #41, !dbg !4552
  br label %147, !dbg !4553

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.9.151, i32 noundef 5) #41, !dbg !4554
  %31 = load ptr, ptr %4, align 8, !dbg !4554, !tbaa !1018
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4554
  %33 = load ptr, ptr %32, align 8, !dbg !4554, !tbaa !1018
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4554
  %35 = load ptr, ptr %34, align 8, !dbg !4554, !tbaa !1018
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #41, !dbg !4554
  br label %147, !dbg !4555

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.10.152, i32 noundef 5) #41, !dbg !4556
  %39 = load ptr, ptr %4, align 8, !dbg !4556, !tbaa !1018
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4556
  %41 = load ptr, ptr %40, align 8, !dbg !4556, !tbaa !1018
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4556
  %43 = load ptr, ptr %42, align 8, !dbg !4556, !tbaa !1018
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4556
  %45 = load ptr, ptr %44, align 8, !dbg !4556, !tbaa !1018
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #41, !dbg !4556
  br label %147, !dbg !4557

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.11.153, i32 noundef 5) #41, !dbg !4558
  %49 = load ptr, ptr %4, align 8, !dbg !4558, !tbaa !1018
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4558
  %51 = load ptr, ptr %50, align 8, !dbg !4558, !tbaa !1018
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4558
  %53 = load ptr, ptr %52, align 8, !dbg !4558, !tbaa !1018
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4558
  %55 = load ptr, ptr %54, align 8, !dbg !4558, !tbaa !1018
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4558
  %57 = load ptr, ptr %56, align 8, !dbg !4558, !tbaa !1018
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #41, !dbg !4558
  br label %147, !dbg !4559

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.12.154, i32 noundef 5) #41, !dbg !4560
  %61 = load ptr, ptr %4, align 8, !dbg !4560, !tbaa !1018
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4560
  %63 = load ptr, ptr %62, align 8, !dbg !4560, !tbaa !1018
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4560
  %65 = load ptr, ptr %64, align 8, !dbg !4560, !tbaa !1018
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4560
  %67 = load ptr, ptr %66, align 8, !dbg !4560, !tbaa !1018
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4560
  %69 = load ptr, ptr %68, align 8, !dbg !4560, !tbaa !1018
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4560
  %71 = load ptr, ptr %70, align 8, !dbg !4560, !tbaa !1018
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #41, !dbg !4560
  br label %147, !dbg !4561

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.13.155, i32 noundef 5) #41, !dbg !4562
  %75 = load ptr, ptr %4, align 8, !dbg !4562, !tbaa !1018
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4562
  %77 = load ptr, ptr %76, align 8, !dbg !4562, !tbaa !1018
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4562
  %79 = load ptr, ptr %78, align 8, !dbg !4562, !tbaa !1018
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4562
  %81 = load ptr, ptr %80, align 8, !dbg !4562, !tbaa !1018
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4562
  %83 = load ptr, ptr %82, align 8, !dbg !4562, !tbaa !1018
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4562
  %85 = load ptr, ptr %84, align 8, !dbg !4562, !tbaa !1018
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4562
  %87 = load ptr, ptr %86, align 8, !dbg !4562, !tbaa !1018
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #41, !dbg !4562
  br label %147, !dbg !4563

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.14.156, i32 noundef 5) #41, !dbg !4564
  %91 = load ptr, ptr %4, align 8, !dbg !4564, !tbaa !1018
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4564
  %93 = load ptr, ptr %92, align 8, !dbg !4564, !tbaa !1018
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4564
  %95 = load ptr, ptr %94, align 8, !dbg !4564, !tbaa !1018
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4564
  %97 = load ptr, ptr %96, align 8, !dbg !4564, !tbaa !1018
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4564
  %99 = load ptr, ptr %98, align 8, !dbg !4564, !tbaa !1018
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4564
  %101 = load ptr, ptr %100, align 8, !dbg !4564, !tbaa !1018
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4564
  %103 = load ptr, ptr %102, align 8, !dbg !4564, !tbaa !1018
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4564
  %105 = load ptr, ptr %104, align 8, !dbg !4564, !tbaa !1018
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #41, !dbg !4564
  br label %147, !dbg !4565

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.15.157, i32 noundef 5) #41, !dbg !4566
  %109 = load ptr, ptr %4, align 8, !dbg !4566, !tbaa !1018
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4566
  %111 = load ptr, ptr %110, align 8, !dbg !4566, !tbaa !1018
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4566
  %113 = load ptr, ptr %112, align 8, !dbg !4566, !tbaa !1018
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4566
  %115 = load ptr, ptr %114, align 8, !dbg !4566, !tbaa !1018
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4566
  %117 = load ptr, ptr %116, align 8, !dbg !4566, !tbaa !1018
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4566
  %119 = load ptr, ptr %118, align 8, !dbg !4566, !tbaa !1018
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4566
  %121 = load ptr, ptr %120, align 8, !dbg !4566, !tbaa !1018
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4566
  %123 = load ptr, ptr %122, align 8, !dbg !4566, !tbaa !1018
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4566
  %125 = load ptr, ptr %124, align 8, !dbg !4566, !tbaa !1018
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #41, !dbg !4566
  br label %147, !dbg !4567

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.16.158, i32 noundef 5) #41, !dbg !4568
  %129 = load ptr, ptr %4, align 8, !dbg !4568, !tbaa !1018
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4568
  %131 = load ptr, ptr %130, align 8, !dbg !4568, !tbaa !1018
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4568
  %133 = load ptr, ptr %132, align 8, !dbg !4568, !tbaa !1018
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4568
  %135 = load ptr, ptr %134, align 8, !dbg !4568, !tbaa !1018
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4568
  %137 = load ptr, ptr %136, align 8, !dbg !4568, !tbaa !1018
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4568
  %139 = load ptr, ptr %138, align 8, !dbg !4568, !tbaa !1018
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4568
  %141 = load ptr, ptr %140, align 8, !dbg !4568, !tbaa !1018
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4568
  %143 = load ptr, ptr %142, align 8, !dbg !4568, !tbaa !1018
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4568
  %145 = load ptr, ptr %144, align 8, !dbg !4568, !tbaa !1018
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #41, !dbg !4568
  br label %147, !dbg !4569

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4570
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4571 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4575, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata ptr %1, metadata !4576, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata ptr %2, metadata !4577, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata ptr %3, metadata !4578, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata ptr %4, metadata !4579, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata i64 0, metadata !4580, metadata !DIExpression()), !dbg !4581
  br label %6, !dbg !4582

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4584
  call void @llvm.dbg.value(metadata i64 %7, metadata !4580, metadata !DIExpression()), !dbg !4581
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4585
  %9 = load ptr, ptr %8, align 8, !dbg !4585, !tbaa !1018
  %10 = icmp eq ptr %9, null, !dbg !4587
  %11 = add i64 %7, 1, !dbg !4588
  call void @llvm.dbg.value(metadata i64 %11, metadata !4580, metadata !DIExpression()), !dbg !4581
  br i1 %10, label %12, label %6, !dbg !4587, !llvm.loop !4589

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4591
  ret void, !dbg !4592
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4593 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4605, metadata !DIExpression()), !dbg !4613
  call void @llvm.dbg.value(metadata ptr %1, metadata !4606, metadata !DIExpression()), !dbg !4613
  call void @llvm.dbg.value(metadata ptr %2, metadata !4607, metadata !DIExpression()), !dbg !4613
  call void @llvm.dbg.value(metadata ptr %3, metadata !4608, metadata !DIExpression()), !dbg !4613
  call void @llvm.dbg.value(metadata ptr %4, metadata !4609, metadata !DIExpression()), !dbg !4613
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #41, !dbg !4614
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4611, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 0, metadata !4610, metadata !DIExpression()), !dbg !4613
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4610, metadata !DIExpression()), !dbg !4613
  %10 = icmp ult i32 %9, 41, !dbg !4616
  br i1 %10, label %11, label %16, !dbg !4616

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4616
  %13 = zext i32 %9 to i64, !dbg !4616
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4616
  %15 = add nuw nsw i32 %9, 8, !dbg !4616
  store i32 %15, ptr %4, align 8, !dbg !4616
  br label %19, !dbg !4616

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4616
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4616
  store ptr %18, ptr %7, align 8, !dbg !4616
  br label %19, !dbg !4616

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4616
  %22 = load ptr, ptr %21, align 8, !dbg !4616
  store ptr %22, ptr %6, align 16, !dbg !4619, !tbaa !1018
  %23 = icmp eq ptr %22, null, !dbg !4620
  br i1 %23, label %128, label %24, !dbg !4621

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !4610, metadata !DIExpression()), !dbg !4613
  call void @llvm.dbg.value(metadata i64 1, metadata !4610, metadata !DIExpression()), !dbg !4613
  %25 = icmp ult i32 %20, 41, !dbg !4616
  br i1 %25, label %29, label %26, !dbg !4616

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4616
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4616
  store ptr %28, ptr %7, align 8, !dbg !4616
  br label %34, !dbg !4616

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4616
  %31 = zext i32 %20 to i64, !dbg !4616
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4616
  %33 = add nuw nsw i32 %20, 8, !dbg !4616
  store i32 %33, ptr %4, align 8, !dbg !4616
  br label %34, !dbg !4616

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4616
  %37 = load ptr, ptr %36, align 8, !dbg !4616
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4622
  store ptr %37, ptr %38, align 8, !dbg !4619, !tbaa !1018
  %39 = icmp eq ptr %37, null, !dbg !4620
  br i1 %39, label %128, label %40, !dbg !4621

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !4610, metadata !DIExpression()), !dbg !4613
  call void @llvm.dbg.value(metadata i64 2, metadata !4610, metadata !DIExpression()), !dbg !4613
  %41 = icmp ult i32 %35, 41, !dbg !4616
  br i1 %41, label %45, label %42, !dbg !4616

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4616
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4616
  store ptr %44, ptr %7, align 8, !dbg !4616
  br label %50, !dbg !4616

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4616
  %47 = zext i32 %35 to i64, !dbg !4616
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4616
  %49 = add nuw nsw i32 %35, 8, !dbg !4616
  store i32 %49, ptr %4, align 8, !dbg !4616
  br label %50, !dbg !4616

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4616
  %53 = load ptr, ptr %52, align 8, !dbg !4616
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4622
  store ptr %53, ptr %54, align 16, !dbg !4619, !tbaa !1018
  %55 = icmp eq ptr %53, null, !dbg !4620
  br i1 %55, label %128, label %56, !dbg !4621

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !4610, metadata !DIExpression()), !dbg !4613
  call void @llvm.dbg.value(metadata i64 3, metadata !4610, metadata !DIExpression()), !dbg !4613
  %57 = icmp ult i32 %51, 41, !dbg !4616
  br i1 %57, label %61, label %58, !dbg !4616

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4616
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4616
  store ptr %60, ptr %7, align 8, !dbg !4616
  br label %66, !dbg !4616

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4616
  %63 = zext i32 %51 to i64, !dbg !4616
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4616
  %65 = add nuw nsw i32 %51, 8, !dbg !4616
  store i32 %65, ptr %4, align 8, !dbg !4616
  br label %66, !dbg !4616

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4616
  %69 = load ptr, ptr %68, align 8, !dbg !4616
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4622
  store ptr %69, ptr %70, align 8, !dbg !4619, !tbaa !1018
  %71 = icmp eq ptr %69, null, !dbg !4620
  br i1 %71, label %128, label %72, !dbg !4621

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !4610, metadata !DIExpression()), !dbg !4613
  call void @llvm.dbg.value(metadata i64 4, metadata !4610, metadata !DIExpression()), !dbg !4613
  %73 = icmp ult i32 %67, 41, !dbg !4616
  br i1 %73, label %77, label %74, !dbg !4616

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4616
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4616
  store ptr %76, ptr %7, align 8, !dbg !4616
  br label %82, !dbg !4616

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4616
  %79 = zext i32 %67 to i64, !dbg !4616
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4616
  %81 = add nuw nsw i32 %67, 8, !dbg !4616
  store i32 %81, ptr %4, align 8, !dbg !4616
  br label %82, !dbg !4616

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4616
  %85 = load ptr, ptr %84, align 8, !dbg !4616
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4622
  store ptr %85, ptr %86, align 16, !dbg !4619, !tbaa !1018
  %87 = icmp eq ptr %85, null, !dbg !4620
  br i1 %87, label %128, label %88, !dbg !4621

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !4610, metadata !DIExpression()), !dbg !4613
  call void @llvm.dbg.value(metadata i64 5, metadata !4610, metadata !DIExpression()), !dbg !4613
  %89 = icmp ult i32 %83, 41, !dbg !4616
  br i1 %89, label %93, label %90, !dbg !4616

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4616
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4616
  store ptr %92, ptr %7, align 8, !dbg !4616
  br label %98, !dbg !4616

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4616
  %95 = zext i32 %83 to i64, !dbg !4616
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4616
  %97 = add nuw nsw i32 %83, 8, !dbg !4616
  store i32 %97, ptr %4, align 8, !dbg !4616
  br label %98, !dbg !4616

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4616
  %100 = load ptr, ptr %99, align 8, !dbg !4616
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4622
  store ptr %100, ptr %101, align 8, !dbg !4619, !tbaa !1018
  %102 = icmp eq ptr %100, null, !dbg !4620
  br i1 %102, label %128, label %103, !dbg !4621

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !4610, metadata !DIExpression()), !dbg !4613
  %104 = load ptr, ptr %7, align 8, !dbg !4616
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4616
  store ptr %105, ptr %7, align 8, !dbg !4616
  %106 = load ptr, ptr %104, align 8, !dbg !4616
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4622
  store ptr %106, ptr %107, align 16, !dbg !4619, !tbaa !1018
  %108 = icmp eq ptr %106, null, !dbg !4620
  br i1 %108, label %128, label %109, !dbg !4621

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !4610, metadata !DIExpression()), !dbg !4613
  %110 = load ptr, ptr %7, align 8, !dbg !4616
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4616
  store ptr %111, ptr %7, align 8, !dbg !4616
  %112 = load ptr, ptr %110, align 8, !dbg !4616
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4622
  store ptr %112, ptr %113, align 8, !dbg !4619, !tbaa !1018
  %114 = icmp eq ptr %112, null, !dbg !4620
  br i1 %114, label %128, label %115, !dbg !4621

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !4610, metadata !DIExpression()), !dbg !4613
  %116 = load ptr, ptr %7, align 8, !dbg !4616
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4616
  store ptr %117, ptr %7, align 8, !dbg !4616
  %118 = load ptr, ptr %116, align 8, !dbg !4616
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4622
  store ptr %118, ptr %119, align 16, !dbg !4619, !tbaa !1018
  %120 = icmp eq ptr %118, null, !dbg !4620
  br i1 %120, label %128, label %121, !dbg !4621

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !4610, metadata !DIExpression()), !dbg !4613
  %122 = load ptr, ptr %7, align 8, !dbg !4616
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4616
  store ptr %123, ptr %7, align 8, !dbg !4616
  %124 = load ptr, ptr %122, align 8, !dbg !4616
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4622
  store ptr %124, ptr %125, align 8, !dbg !4619, !tbaa !1018
  %126 = icmp eq ptr %124, null, !dbg !4620
  %127 = select i1 %126, i64 9, i64 10, !dbg !4621
  br label %128, !dbg !4621

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4623
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4624
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #41, !dbg !4625
  ret void, !dbg !4625
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4626 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4630, metadata !DIExpression()), !dbg !4639
  call void @llvm.dbg.value(metadata ptr %1, metadata !4631, metadata !DIExpression()), !dbg !4639
  call void @llvm.dbg.value(metadata ptr %2, metadata !4632, metadata !DIExpression()), !dbg !4639
  call void @llvm.dbg.value(metadata ptr %3, metadata !4633, metadata !DIExpression()), !dbg !4639
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #41, !dbg !4640
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4634, metadata !DIExpression()), !dbg !4641
  call void @llvm.va_start(ptr nonnull %5), !dbg !4642
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4643
  call void @llvm.va_end(ptr nonnull %5), !dbg !4644
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #41, !dbg !4645
  ret void, !dbg !4645
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4646 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4647, !tbaa !1018
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.146, ptr noundef %1), !dbg !4647
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.17.163, i32 noundef 5) #41, !dbg !4648
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.164) #41, !dbg !4648
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.19.165, i32 noundef 5) #41, !dbg !4649
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.166, ptr noundef nonnull @.str.21.167) #41, !dbg !4649
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.22.168, i32 noundef 5) #41, !dbg !4650
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.169) #41, !dbg !4650
  ret void, !dbg !4651
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4652 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4657, metadata !DIExpression()), !dbg !4660
  call void @llvm.dbg.value(metadata i64 %1, metadata !4658, metadata !DIExpression()), !dbg !4660
  call void @llvm.dbg.value(metadata i64 %2, metadata !4659, metadata !DIExpression()), !dbg !4660
  call void @llvm.dbg.value(metadata ptr %0, metadata !4661, metadata !DIExpression()), !dbg !4666
  call void @llvm.dbg.value(metadata i64 %1, metadata !4664, metadata !DIExpression()), !dbg !4666
  call void @llvm.dbg.value(metadata i64 %2, metadata !4665, metadata !DIExpression()), !dbg !4666
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4668
  call void @llvm.dbg.value(metadata ptr %4, metadata !4669, metadata !DIExpression()), !dbg !4674
  %5 = icmp eq ptr %4, null, !dbg !4676
  br i1 %5, label %6, label %7, !dbg !4678

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4679
  unreachable, !dbg !4679

7:                                                ; preds = %3
  ret ptr %4, !dbg !4680
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !4662 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4661, metadata !DIExpression()), !dbg !4681
  call void @llvm.dbg.value(metadata i64 %1, metadata !4664, metadata !DIExpression()), !dbg !4681
  call void @llvm.dbg.value(metadata i64 %2, metadata !4665, metadata !DIExpression()), !dbg !4681
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4682
  call void @llvm.dbg.value(metadata ptr %4, metadata !4669, metadata !DIExpression()), !dbg !4683
  %5 = icmp eq ptr %4, null, !dbg !4685
  br i1 %5, label %6, label %7, !dbg !4686

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4687
  unreachable, !dbg !4687

7:                                                ; preds = %3
  ret ptr %4, !dbg !4688
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4689 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4691, metadata !DIExpression()), !dbg !4692
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4693
  call void @llvm.dbg.value(metadata ptr %2, metadata !4669, metadata !DIExpression()), !dbg !4694
  %3 = icmp eq ptr %2, null, !dbg !4696
  br i1 %3, label %4, label %5, !dbg !4697

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4698
  unreachable, !dbg !4698

5:                                                ; preds = %1
  ret ptr %2, !dbg !4699
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4700 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4704, metadata !DIExpression()), !dbg !4705
  call void @llvm.dbg.value(metadata i64 %0, metadata !4706, metadata !DIExpression()), !dbg !4710
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4712
  call void @llvm.dbg.value(metadata ptr %2, metadata !4669, metadata !DIExpression()), !dbg !4713
  %3 = icmp eq ptr %2, null, !dbg !4715
  br i1 %3, label %4, label %5, !dbg !4716

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4717
  unreachable, !dbg !4717

5:                                                ; preds = %1
  ret ptr %2, !dbg !4718
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4719 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4723, metadata !DIExpression()), !dbg !4724
  call void @llvm.dbg.value(metadata i64 %0, metadata !4691, metadata !DIExpression()), !dbg !4725
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4727
  call void @llvm.dbg.value(metadata ptr %2, metadata !4669, metadata !DIExpression()), !dbg !4728
  %3 = icmp eq ptr %2, null, !dbg !4730
  br i1 %3, label %4, label %5, !dbg !4731

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4732
  unreachable, !dbg !4732

5:                                                ; preds = %1
  ret ptr %2, !dbg !4733
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4734 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4736, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i64 %1, metadata !4737, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata ptr %0, metadata !4739, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.value(metadata i64 %1, metadata !4742, metadata !DIExpression()), !dbg !4743
  %3 = icmp eq i64 %1, 0, !dbg !4745
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4745
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !4746
  call void @llvm.dbg.value(metadata ptr %5, metadata !4669, metadata !DIExpression()), !dbg !4747
  %6 = icmp eq ptr %5, null, !dbg !4749
  br i1 %6, label %7, label %8, !dbg !4750

7:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4751
  unreachable, !dbg !4751

8:                                                ; preds = %2
  ret ptr %5, !dbg !4752
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4753 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4757, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata i64 %1, metadata !4758, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata ptr %0, metadata !4760, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata i64 %1, metadata !4763, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata ptr %0, metadata !4739, metadata !DIExpression()), !dbg !4766
  call void @llvm.dbg.value(metadata i64 %1, metadata !4742, metadata !DIExpression()), !dbg !4766
  %3 = icmp eq i64 %1, 0, !dbg !4768
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4768
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !4769
  call void @llvm.dbg.value(metadata ptr %5, metadata !4669, metadata !DIExpression()), !dbg !4770
  %6 = icmp eq ptr %5, null, !dbg !4772
  br i1 %6, label %7, label %8, !dbg !4773

7:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4774
  unreachable, !dbg !4774

8:                                                ; preds = %2
  ret ptr %5, !dbg !4775
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !4776 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4780, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.value(metadata i64 %1, metadata !4781, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.value(metadata i64 %2, metadata !4782, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.value(metadata ptr %0, metadata !4784, metadata !DIExpression()), !dbg !4789
  call void @llvm.dbg.value(metadata i64 %1, metadata !4787, metadata !DIExpression()), !dbg !4789
  call void @llvm.dbg.value(metadata i64 %2, metadata !4788, metadata !DIExpression()), !dbg !4789
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4791
  call void @llvm.dbg.value(metadata ptr %4, metadata !4669, metadata !DIExpression()), !dbg !4792
  %5 = icmp eq ptr %4, null, !dbg !4794
  br i1 %5, label %6, label %7, !dbg !4795

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4796
  unreachable, !dbg !4796

7:                                                ; preds = %3
  ret ptr %4, !dbg !4797
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4798 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4802, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i64 %1, metadata !4803, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata ptr null, metadata !4661, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.value(metadata i64 %0, metadata !4664, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.value(metadata i64 %1, metadata !4665, metadata !DIExpression()), !dbg !4805
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #41, !dbg !4807
  call void @llvm.dbg.value(metadata ptr %3, metadata !4669, metadata !DIExpression()), !dbg !4808
  %4 = icmp eq ptr %3, null, !dbg !4810
  br i1 %4, label %5, label %6, !dbg !4811

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4812
  unreachable, !dbg !4812

6:                                                ; preds = %2
  ret ptr %3, !dbg !4813
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4814 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4818, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata i64 %1, metadata !4819, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata ptr null, metadata !4780, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.value(metadata i64 %0, metadata !4781, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.value(metadata i64 %1, metadata !4782, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.value(metadata ptr null, metadata !4784, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata i64 %0, metadata !4787, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata i64 %1, metadata !4788, metadata !DIExpression()), !dbg !4823
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #41, !dbg !4825
  call void @llvm.dbg.value(metadata ptr %3, metadata !4669, metadata !DIExpression()), !dbg !4826
  %4 = icmp eq ptr %3, null, !dbg !4828
  br i1 %4, label %5, label %6, !dbg !4829

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4830
  unreachable, !dbg !4830

6:                                                ; preds = %2
  ret ptr %3, !dbg !4831
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4832 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4836, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata ptr %1, metadata !4837, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata ptr %0, metadata !953, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata ptr %1, metadata !954, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata i64 1, metadata !955, metadata !DIExpression()), !dbg !4839
  %3 = load i64, ptr %1, align 8, !dbg !4841, !tbaa !1298
  call void @llvm.dbg.value(metadata i64 %3, metadata !956, metadata !DIExpression()), !dbg !4839
  %4 = icmp eq ptr %0, null, !dbg !4842
  br i1 %4, label %5, label %8, !dbg !4844

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4845
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4848
  br label %15, !dbg !4848

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4849
  %10 = add nuw i64 %9, 1, !dbg !4849
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4849
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4849
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4849
  call void @llvm.dbg.value(metadata i64 %13, metadata !956, metadata !DIExpression()), !dbg !4839
  br i1 %12, label %14, label %15, !dbg !4852

14:                                               ; preds = %8
  tail call void @xalloc_die() #43, !dbg !4853
  unreachable, !dbg !4853

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4839
  call void @llvm.dbg.value(metadata i64 %16, metadata !956, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata ptr %0, metadata !4661, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.value(metadata i64 %16, metadata !4664, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.value(metadata i64 1, metadata !4665, metadata !DIExpression()), !dbg !4854
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #41, !dbg !4856
  call void @llvm.dbg.value(metadata ptr %17, metadata !4669, metadata !DIExpression()), !dbg !4857
  %18 = icmp eq ptr %17, null, !dbg !4859
  br i1 %18, label %19, label %20, !dbg !4860

19:                                               ; preds = %15
  tail call void @xalloc_die() #43, !dbg !4861
  unreachable, !dbg !4861

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !953, metadata !DIExpression()), !dbg !4839
  store i64 %16, ptr %1, align 8, !dbg !4862, !tbaa !1298
  ret ptr %17, !dbg !4863
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !948 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !953, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata ptr %1, metadata !954, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata i64 %2, metadata !955, metadata !DIExpression()), !dbg !4864
  %4 = load i64, ptr %1, align 8, !dbg !4865, !tbaa !1298
  call void @llvm.dbg.value(metadata i64 %4, metadata !956, metadata !DIExpression()), !dbg !4864
  %5 = icmp eq ptr %0, null, !dbg !4866
  br i1 %5, label %6, label %13, !dbg !4867

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4868
  br i1 %7, label %8, label %20, !dbg !4869

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4870
  call void @llvm.dbg.value(metadata i64 %9, metadata !956, metadata !DIExpression()), !dbg !4864
  %10 = icmp ugt i64 %2, 128, !dbg !4872
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4873
  call void @llvm.dbg.value(metadata i64 %12, metadata !956, metadata !DIExpression()), !dbg !4864
  br label %20, !dbg !4874

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4875
  %15 = add nuw i64 %14, 1, !dbg !4875
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4875
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4875
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4875
  call void @llvm.dbg.value(metadata i64 %18, metadata !956, metadata !DIExpression()), !dbg !4864
  br i1 %17, label %19, label %20, !dbg !4876

19:                                               ; preds = %13
  tail call void @xalloc_die() #43, !dbg !4877
  unreachable, !dbg !4877

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4864
  call void @llvm.dbg.value(metadata i64 %21, metadata !956, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata ptr %0, metadata !4661, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata i64 %21, metadata !4664, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata i64 %2, metadata !4665, metadata !DIExpression()), !dbg !4878
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #41, !dbg !4880
  call void @llvm.dbg.value(metadata ptr %22, metadata !4669, metadata !DIExpression()), !dbg !4881
  %23 = icmp eq ptr %22, null, !dbg !4883
  br i1 %23, label %24, label %25, !dbg !4884

24:                                               ; preds = %20
  tail call void @xalloc_die() #43, !dbg !4885
  unreachable, !dbg !4885

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !953, metadata !DIExpression()), !dbg !4864
  store i64 %21, ptr %1, align 8, !dbg !4886, !tbaa !1298
  ret ptr %22, !dbg !4887
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !960 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !965, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata ptr %1, metadata !966, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata i64 %2, metadata !967, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata i64 %3, metadata !968, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata i64 %4, metadata !969, metadata !DIExpression()), !dbg !4888
  %6 = load i64, ptr %1, align 8, !dbg !4889, !tbaa !1298
  call void @llvm.dbg.value(metadata i64 %6, metadata !970, metadata !DIExpression()), !dbg !4888
  %7 = ashr i64 %6, 1, !dbg !4890
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4890
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4890
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4890
  call void @llvm.dbg.value(metadata i64 %10, metadata !971, metadata !DIExpression()), !dbg !4888
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4892
  call void @llvm.dbg.value(metadata i64 %11, metadata !971, metadata !DIExpression()), !dbg !4888
  %12 = icmp sgt i64 %3, -1, !dbg !4893
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4895
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4895
  call void @llvm.dbg.value(metadata i64 %15, metadata !971, metadata !DIExpression()), !dbg !4888
  %16 = icmp slt i64 %4, 0, !dbg !4896
  br i1 %16, label %17, label %30, !dbg !4896

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4896
  br i1 %18, label %19, label %24, !dbg !4896

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4896
  %21 = udiv i64 9223372036854775807, %20, !dbg !4896
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4896
  br i1 %23, label %46, label %43, !dbg !4896

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4896
  br i1 %25, label %43, label %26, !dbg !4896

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4896
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4896
  %29 = icmp ult i64 %28, %15, !dbg !4896
  br i1 %29, label %46, label %43, !dbg !4896

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4896
  br i1 %31, label %43, label %32, !dbg !4896

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4896
  br i1 %33, label %34, label %40, !dbg !4896

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4896
  br i1 %35, label %43, label %36, !dbg !4896

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4896
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4896
  %39 = icmp ult i64 %38, %4, !dbg !4896
  br i1 %39, label %46, label %43, !dbg !4896

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4896
  br i1 %42, label %46, label %43, !dbg !4896

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !972, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4888
  %44 = mul i64 %15, %4, !dbg !4896
  call void @llvm.dbg.value(metadata i64 %44, metadata !972, metadata !DIExpression()), !dbg !4888
  %45 = icmp slt i64 %44, 128, !dbg !4896
  br i1 %45, label %46, label %51, !dbg !4896

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !973, metadata !DIExpression()), !dbg !4888
  %48 = sdiv i64 %47, %4, !dbg !4897
  call void @llvm.dbg.value(metadata i64 %48, metadata !971, metadata !DIExpression()), !dbg !4888
  %49 = srem i64 %47, %4, !dbg !4900
  %50 = sub nsw i64 %47, %49, !dbg !4901
  call void @llvm.dbg.value(metadata i64 %50, metadata !972, metadata !DIExpression()), !dbg !4888
  br label %51, !dbg !4902

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4888
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !4888
  call void @llvm.dbg.value(metadata i64 %53, metadata !972, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata i64 %52, metadata !971, metadata !DIExpression()), !dbg !4888
  %54 = icmp eq ptr %0, null, !dbg !4903
  br i1 %54, label %55, label %56, !dbg !4905

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !4906, !tbaa !1298
  br label %56, !dbg !4907

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !4908
  %58 = icmp slt i64 %57, %2, !dbg !4910
  br i1 %58, label %59, label %96, !dbg !4911

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4912
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !4912
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !4912
  call void @llvm.dbg.value(metadata i64 %62, metadata !971, metadata !DIExpression()), !dbg !4888
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !4913
  br i1 %65, label %95, label %66, !dbg !4913

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !4914

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !4914
  br i1 %68, label %69, label %74, !dbg !4914

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !4914
  %71 = udiv i64 9223372036854775807, %70, !dbg !4914
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !4914
  br i1 %73, label %95, label %93, !dbg !4914

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !4914
  br i1 %75, label %93, label %76, !dbg !4914

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !4914
  %78 = udiv i64 -9223372036854775808, %77, !dbg !4914
  %79 = icmp ult i64 %78, %62, !dbg !4914
  br i1 %79, label %95, label %93, !dbg !4914

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !4914
  br i1 %81, label %93, label %82, !dbg !4914

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !4914
  br i1 %83, label %84, label %90, !dbg !4914

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !4914
  br i1 %85, label %93, label %86, !dbg !4914

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !4914
  %88 = udiv i64 -9223372036854775808, %87, !dbg !4914
  %89 = icmp ult i64 %88, %4, !dbg !4914
  br i1 %89, label %95, label %93, !dbg !4914

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !4914
  br i1 %92, label %95, label %93, !dbg !4914

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !972, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4888
  %94 = mul i64 %62, %4, !dbg !4914
  call void @llvm.dbg.value(metadata i64 %94, metadata !972, metadata !DIExpression()), !dbg !4888
  br label %96, !dbg !4915

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #43, !dbg !4916
  unreachable, !dbg !4916

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !4888
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !4888
  call void @llvm.dbg.value(metadata i64 %98, metadata !972, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata i64 %97, metadata !971, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata ptr %0, metadata !4736, metadata !DIExpression()), !dbg !4917
  call void @llvm.dbg.value(metadata i64 %98, metadata !4737, metadata !DIExpression()), !dbg !4917
  call void @llvm.dbg.value(metadata ptr %0, metadata !4739, metadata !DIExpression()), !dbg !4919
  call void @llvm.dbg.value(metadata i64 %98, metadata !4742, metadata !DIExpression()), !dbg !4919
  %99 = icmp eq i64 %98, 0, !dbg !4921
  %100 = select i1 %99, i64 1, i64 %98, !dbg !4921
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #46, !dbg !4922
  call void @llvm.dbg.value(metadata ptr %101, metadata !4669, metadata !DIExpression()), !dbg !4923
  %102 = icmp eq ptr %101, null, !dbg !4925
  br i1 %102, label %103, label %104, !dbg !4926

103:                                              ; preds = %96
  tail call void @xalloc_die() #43, !dbg !4927
  unreachable, !dbg !4927

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !965, metadata !DIExpression()), !dbg !4888
  store i64 %97, ptr %1, align 8, !dbg !4928, !tbaa !1298
  ret ptr %101, !dbg !4929
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4930 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4932, metadata !DIExpression()), !dbg !4933
  call void @llvm.dbg.value(metadata i64 %0, metadata !4934, metadata !DIExpression()), !dbg !4938
  call void @llvm.dbg.value(metadata i64 1, metadata !4937, metadata !DIExpression()), !dbg !4938
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #49, !dbg !4940
  call void @llvm.dbg.value(metadata ptr %2, metadata !4669, metadata !DIExpression()), !dbg !4941
  %3 = icmp eq ptr %2, null, !dbg !4943
  br i1 %3, label %4, label %5, !dbg !4944

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4945
  unreachable, !dbg !4945

5:                                                ; preds = %1
  ret ptr %2, !dbg !4946
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4947 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4935 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4934, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.value(metadata i64 %1, metadata !4937, metadata !DIExpression()), !dbg !4948
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #49, !dbg !4949
  call void @llvm.dbg.value(metadata ptr %3, metadata !4669, metadata !DIExpression()), !dbg !4950
  %4 = icmp eq ptr %3, null, !dbg !4952
  br i1 %4, label %5, label %6, !dbg !4953

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4954
  unreachable, !dbg !4954

6:                                                ; preds = %2
  ret ptr %3, !dbg !4955
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4956 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4958, metadata !DIExpression()), !dbg !4959
  call void @llvm.dbg.value(metadata i64 %0, metadata !4960, metadata !DIExpression()), !dbg !4964
  call void @llvm.dbg.value(metadata i64 1, metadata !4963, metadata !DIExpression()), !dbg !4964
  call void @llvm.dbg.value(metadata i64 %0, metadata !4966, metadata !DIExpression()), !dbg !4970
  call void @llvm.dbg.value(metadata i64 1, metadata !4969, metadata !DIExpression()), !dbg !4970
  call void @llvm.dbg.value(metadata i64 %0, metadata !4966, metadata !DIExpression()), !dbg !4970
  call void @llvm.dbg.value(metadata i64 1, metadata !4969, metadata !DIExpression()), !dbg !4970
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #49, !dbg !4972
  call void @llvm.dbg.value(metadata ptr %2, metadata !4669, metadata !DIExpression()), !dbg !4973
  %3 = icmp eq ptr %2, null, !dbg !4975
  br i1 %3, label %4, label %5, !dbg !4976

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4977
  unreachable, !dbg !4977

5:                                                ; preds = %1
  ret ptr %2, !dbg !4978
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4961 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4960, metadata !DIExpression()), !dbg !4979
  call void @llvm.dbg.value(metadata i64 %1, metadata !4963, metadata !DIExpression()), !dbg !4979
  call void @llvm.dbg.value(metadata i64 %0, metadata !4966, metadata !DIExpression()), !dbg !4980
  call void @llvm.dbg.value(metadata i64 %1, metadata !4969, metadata !DIExpression()), !dbg !4980
  call void @llvm.dbg.value(metadata i64 %0, metadata !4966, metadata !DIExpression()), !dbg !4980
  call void @llvm.dbg.value(metadata i64 %1, metadata !4969, metadata !DIExpression()), !dbg !4980
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #49, !dbg !4982
  call void @llvm.dbg.value(metadata ptr %3, metadata !4669, metadata !DIExpression()), !dbg !4983
  %4 = icmp eq ptr %3, null, !dbg !4985
  br i1 %4, label %5, label %6, !dbg !4986

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4987
  unreachable, !dbg !4987

6:                                                ; preds = %2
  ret ptr %3, !dbg !4988
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4989 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4993, metadata !DIExpression()), !dbg !4995
  call void @llvm.dbg.value(metadata i64 %1, metadata !4994, metadata !DIExpression()), !dbg !4995
  call void @llvm.dbg.value(metadata i64 %1, metadata !4691, metadata !DIExpression()), !dbg !4996
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !4998
  call void @llvm.dbg.value(metadata ptr %3, metadata !4669, metadata !DIExpression()), !dbg !4999
  %4 = icmp eq ptr %3, null, !dbg !5001
  br i1 %4, label %5, label %6, !dbg !5002

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !5003
  unreachable, !dbg !5003

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !5004, metadata !DIExpression()), !dbg !5009
  call void @llvm.dbg.value(metadata ptr %0, metadata !5007, metadata !DIExpression()), !dbg !5009
  call void @llvm.dbg.value(metadata i64 %1, metadata !5008, metadata !DIExpression()), !dbg !5009
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !5011
  ret ptr %3, !dbg !5012
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !5013 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5017, metadata !DIExpression()), !dbg !5019
  call void @llvm.dbg.value(metadata i64 %1, metadata !5018, metadata !DIExpression()), !dbg !5019
  call void @llvm.dbg.value(metadata i64 %1, metadata !4704, metadata !DIExpression()), !dbg !5020
  call void @llvm.dbg.value(metadata i64 %1, metadata !4706, metadata !DIExpression()), !dbg !5022
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !5024
  call void @llvm.dbg.value(metadata ptr %3, metadata !4669, metadata !DIExpression()), !dbg !5025
  %4 = icmp eq ptr %3, null, !dbg !5027
  br i1 %4, label %5, label %6, !dbg !5028

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !5029
  unreachable, !dbg !5029

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !5004, metadata !DIExpression()), !dbg !5030
  call void @llvm.dbg.value(metadata ptr %0, metadata !5007, metadata !DIExpression()), !dbg !5030
  call void @llvm.dbg.value(metadata i64 %1, metadata !5008, metadata !DIExpression()), !dbg !5030
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !5032
  ret ptr %3, !dbg !5033
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !5034 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5038, metadata !DIExpression()), !dbg !5041
  call void @llvm.dbg.value(metadata i64 %1, metadata !5039, metadata !DIExpression()), !dbg !5041
  %3 = add nsw i64 %1, 1, !dbg !5042
  call void @llvm.dbg.value(metadata i64 %3, metadata !4704, metadata !DIExpression()), !dbg !5043
  call void @llvm.dbg.value(metadata i64 %3, metadata !4706, metadata !DIExpression()), !dbg !5045
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !5047
  call void @llvm.dbg.value(metadata ptr %4, metadata !4669, metadata !DIExpression()), !dbg !5048
  %5 = icmp eq ptr %4, null, !dbg !5050
  br i1 %5, label %6, label %7, !dbg !5051

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !5052
  unreachable, !dbg !5052

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !5040, metadata !DIExpression()), !dbg !5041
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !5053
  store i8 0, ptr %8, align 1, !dbg !5054, !tbaa !1105
  call void @llvm.dbg.value(metadata ptr %4, metadata !5004, metadata !DIExpression()), !dbg !5055
  call void @llvm.dbg.value(metadata ptr %0, metadata !5007, metadata !DIExpression()), !dbg !5055
  call void @llvm.dbg.value(metadata i64 %1, metadata !5008, metadata !DIExpression()), !dbg !5055
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !5057
  ret ptr %4, !dbg !5058
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !5059 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5061, metadata !DIExpression()), !dbg !5062
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #42, !dbg !5063
  %3 = add i64 %2, 1, !dbg !5064
  call void @llvm.dbg.value(metadata ptr %0, metadata !4993, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata i64 %3, metadata !4994, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata i64 %3, metadata !4691, metadata !DIExpression()), !dbg !5067
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !5069
  call void @llvm.dbg.value(metadata ptr %4, metadata !4669, metadata !DIExpression()), !dbg !5070
  %5 = icmp eq ptr %4, null, !dbg !5072
  br i1 %5, label %6, label %7, !dbg !5073

6:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !5074
  unreachable, !dbg !5074

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !5004, metadata !DIExpression()), !dbg !5075
  call void @llvm.dbg.value(metadata ptr %0, metadata !5007, metadata !DIExpression()), !dbg !5075
  call void @llvm.dbg.value(metadata i64 %3, metadata !5008, metadata !DIExpression()), !dbg !5075
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #41, !dbg !5077
  ret ptr %4, !dbg !5078
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !5079 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !5084, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 %1, metadata !5081, metadata !DIExpression()), !dbg !5085
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.184, ptr noundef nonnull @.str.2.185, i32 noundef 5) #41, !dbg !5084
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.186, ptr noundef %2) #41, !dbg !5084
  %3 = icmp eq i32 %1, 0, !dbg !5084
  tail call void @llvm.assume(i1 %3), !dbg !5084
  tail call void @abort() #43, !dbg !5086
  unreachable, !dbg !5086
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #30

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !5087 {
  %3 = alloca [81 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !5125, metadata !DIExpression()), !dbg !5149
  call void @llvm.dbg.value(metadata ptr %1, metadata !5126, metadata !DIExpression()), !dbg !5149
  call void @llvm.dbg.value(metadata i32 0, metadata !5127, metadata !DIExpression()), !dbg !5149
  call void @llvm.dbg.value(metadata i32 0, metadata !5128, metadata !DIExpression()), !dbg !5149
  call void @llvm.dbg.value(metadata i8 0, metadata !5129, metadata !DIExpression()), !dbg !5149
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #41, !dbg !5150
  call void @llvm.dbg.declare(metadata ptr %3, metadata !5130, metadata !DIExpression()), !dbg !5151
  call void @llvm.dbg.value(metadata ptr %1, metadata !5134, metadata !DIExpression()), !dbg !5152
  call void @llvm.dbg.value(metadata ptr %3, metadata !5136, metadata !DIExpression()), !dbg !5152
  call void @llvm.dbg.value(metadata i32 0, metadata !5127, metadata !DIExpression()), !dbg !5149
  call void @llvm.dbg.value(metadata i32 0, metadata !5128, metadata !DIExpression()), !dbg !5149
  call void @llvm.dbg.value(metadata i8 0, metadata !5129, metadata !DIExpression()), !dbg !5149
  %4 = load i8, ptr %1, align 1, !dbg !5153, !tbaa !1105
  %5 = icmp eq i8 %4, 0, !dbg !5154
  br i1 %5, label %6, label %7, !dbg !5155

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !5136, metadata !DIExpression()), !dbg !5152
  store i8 0, ptr %3, align 16, !dbg !5156, !tbaa !1105
  br label %74, !dbg !5157

7:                                                ; preds = %2, %47
  %8 = phi i8 [ %54, %47 ], [ %4, %2 ]
  %9 = phi ptr [ %53, %47 ], [ %3, %2 ]
  %10 = phi i32 [ %51, %47 ], [ 0, %2 ]
  %11 = phi i32 [ %50, %47 ], [ 0, %2 ]
  %12 = phi i64 [ %49, %47 ], [ 0, %2 ]
  %13 = phi ptr [ %52, %47 ], [ %1, %2 ]
  %14 = phi i8 [ %48, %47 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !5127, metadata !DIExpression()), !dbg !5149
  call void @llvm.dbg.value(metadata i32 %11, metadata !5128, metadata !DIExpression()), !dbg !5149
  call void @llvm.dbg.value(metadata ptr %13, metadata !5134, metadata !DIExpression()), !dbg !5152
  call void @llvm.dbg.value(metadata i8 %14, metadata !5129, metadata !DIExpression()), !dbg !5149
  %15 = sext i8 %8 to i32, !dbg !5153
  switch i32 %15, label %42 [
    i32 114, label %16
    i32 119, label %20
    i32 97, label %25
    i32 98, label %30
    i32 43, label %34
    i32 120, label %38
    i32 101, label %40
  ], !dbg !5158

16:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !5127, metadata !DIExpression()), !dbg !5149
  %17 = icmp slt i64 %12, 80, !dbg !5159
  br i1 %17, label %18, label %47, !dbg !5162

18:                                               ; preds = %16
  %19 = add nsw i64 %12, 1, !dbg !5163
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %19), metadata !5136, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5152
  store i8 %8, ptr %9, align 1, !dbg !5164, !tbaa !1105
  br label %47, !dbg !5165

20:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !5127, metadata !DIExpression()), !dbg !5149
  %21 = or i32 %11, 576, !dbg !5166
  call void @llvm.dbg.value(metadata i32 %21, metadata !5128, metadata !DIExpression()), !dbg !5149
  %22 = icmp slt i64 %12, 80, !dbg !5167
  br i1 %22, label %23, label %47, !dbg !5169

23:                                               ; preds = %20
  %24 = add nsw i64 %12, 1, !dbg !5170
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %24), metadata !5136, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5152
  store i8 %8, ptr %9, align 1, !dbg !5171, !tbaa !1105
  br label %47, !dbg !5172

25:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !5127, metadata !DIExpression()), !dbg !5149
  %26 = or i32 %11, 1088, !dbg !5173
  call void @llvm.dbg.value(metadata i32 %26, metadata !5128, metadata !DIExpression()), !dbg !5149
  %27 = icmp slt i64 %12, 80, !dbg !5174
  br i1 %27, label %28, label %47, !dbg !5176

28:                                               ; preds = %25
  %29 = add nsw i64 %12, 1, !dbg !5177
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !5136, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5152
  store i8 %8, ptr %9, align 1, !dbg !5178, !tbaa !1105
  br label %47, !dbg !5179

30:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 %11, metadata !5128, metadata !DIExpression()), !dbg !5149
  %31 = icmp slt i64 %12, 80, !dbg !5180
  br i1 %31, label %32, label %47, !dbg !5182

32:                                               ; preds = %30
  %33 = add nsw i64 %12, 1, !dbg !5183
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !5136, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5152
  store i8 %8, ptr %9, align 1, !dbg !5184, !tbaa !1105
  br label %47, !dbg !5185

34:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 2, metadata !5127, metadata !DIExpression()), !dbg !5149
  %35 = icmp slt i64 %12, 80, !dbg !5186
  br i1 %35, label %36, label %47, !dbg !5188

36:                                               ; preds = %34
  %37 = add nsw i64 %12, 1, !dbg !5189
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %37), metadata !5136, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5152
  store i8 %8, ptr %9, align 1, !dbg !5190, !tbaa !1105
  br label %47, !dbg !5191

38:                                               ; preds = %7
  %39 = or i32 %11, 128, !dbg !5192
  call void @llvm.dbg.value(metadata i32 %39, metadata !5128, metadata !DIExpression()), !dbg !5149
  call void @llvm.dbg.value(metadata i8 1, metadata !5129, metadata !DIExpression()), !dbg !5149
  br label %47, !dbg !5193

40:                                               ; preds = %7
  %41 = or i32 %11, 524288, !dbg !5194
  call void @llvm.dbg.value(metadata i32 %41, metadata !5128, metadata !DIExpression()), !dbg !5149
  call void @llvm.dbg.value(metadata i8 1, metadata !5129, metadata !DIExpression()), !dbg !5149
  br label %47, !dbg !5195

42:                                               ; preds = %7
  %43 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #42, !dbg !5196
  call void @llvm.dbg.value(metadata i64 %43, metadata !5137, metadata !DIExpression()), !dbg !5197
  %44 = sub nsw i64 80, %12, !dbg !5198
  %45 = tail call i64 @llvm.umin.i64(i64 %43, i64 %44), !dbg !5200
  call void @llvm.dbg.value(metadata i64 %45, metadata !5137, metadata !DIExpression()), !dbg !5197
  call void @llvm.dbg.value(metadata ptr %9, metadata !5201, metadata !DIExpression()), !dbg !5206
  call void @llvm.dbg.value(metadata ptr %13, metadata !5204, metadata !DIExpression()), !dbg !5206
  call void @llvm.dbg.value(metadata i64 %45, metadata !5205, metadata !DIExpression()), !dbg !5206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %9, ptr noundef nonnull align 1 %13, i64 noundef %45, i1 noundef false) #41, !dbg !5208
  %46 = getelementptr inbounds i8, ptr %9, i64 %45, !dbg !5209
  call void @llvm.dbg.value(metadata ptr %46, metadata !5136, metadata !DIExpression()), !dbg !5152
  br label %56, !dbg !5210

47:                                               ; preds = %34, %36, %30, %32, %25, %28, %20, %23, %16, %18, %40, %38
  %48 = phi i8 [ 1, %40 ], [ 1, %38 ], [ %14, %36 ], [ %14, %34 ], [ %14, %32 ], [ %14, %30 ], [ %14, %28 ], [ %14, %25 ], [ %14, %23 ], [ %14, %20 ], [ %14, %18 ], [ %14, %16 ], !dbg !5149
  %49 = phi i64 [ %12, %40 ], [ %12, %38 ], [ %37, %36 ], [ %12, %34 ], [ %33, %32 ], [ %12, %30 ], [ %29, %28 ], [ %12, %25 ], [ %24, %23 ], [ %12, %20 ], [ %19, %18 ], [ %12, %16 ]
  %50 = phi i32 [ %41, %40 ], [ %39, %38 ], [ %11, %36 ], [ %11, %34 ], [ %11, %32 ], [ %11, %30 ], [ %26, %28 ], [ %26, %25 ], [ %21, %23 ], [ %21, %20 ], [ %11, %18 ], [ %11, %16 ], !dbg !5149
  %51 = phi i32 [ %10, %40 ], [ %10, %38 ], [ 2, %36 ], [ 2, %34 ], [ %10, %32 ], [ %10, %30 ], [ 1, %28 ], [ 1, %25 ], [ 1, %23 ], [ 1, %20 ], [ 0, %18 ], [ 0, %16 ], !dbg !5149
  call void @llvm.dbg.value(metadata i32 %51, metadata !5127, metadata !DIExpression()), !dbg !5149
  call void @llvm.dbg.value(metadata i32 %50, metadata !5128, metadata !DIExpression()), !dbg !5149
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %49), metadata !5136, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5152
  call void @llvm.dbg.value(metadata i8 %48, metadata !5129, metadata !DIExpression()), !dbg !5149
  %52 = getelementptr inbounds i8, ptr %13, i64 1, !dbg !5211
  call void @llvm.dbg.value(metadata ptr %52, metadata !5134, metadata !DIExpression()), !dbg !5152
  %53 = getelementptr inbounds i8, ptr %3, i64 %49, !dbg !5149
  call void @llvm.dbg.value(metadata ptr %53, metadata !5136, metadata !DIExpression()), !dbg !5152
  %54 = load i8, ptr %52, align 1, !dbg !5153, !tbaa !1105
  %55 = icmp eq i8 %54, 0, !dbg !5154
  br i1 %55, label %56, label %7, !dbg !5155, !llvm.loop !5212

56:                                               ; preds = %47, %42
  %57 = phi i8 [ %14, %42 ], [ %48, %47 ]
  %58 = phi i32 [ %11, %42 ], [ %50, %47 ]
  %59 = phi i32 [ %10, %42 ], [ %51, %47 ]
  %60 = phi ptr [ %46, %42 ], [ %53, %47 ], !dbg !5152
  call void @llvm.dbg.value(metadata ptr %60, metadata !5136, metadata !DIExpression()), !dbg !5152
  store i8 0, ptr %60, align 1, !dbg !5156, !tbaa !1105
  %61 = and i8 %57, 1, !dbg !5214
  %62 = icmp eq i8 %61, 0, !dbg !5214
  br i1 %62, label %74, label %63, !dbg !5157

63:                                               ; preds = %56
  %64 = or i32 %59, %58, !dbg !5215
  %65 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %64, i32 noundef 438) #41, !dbg !5216
  call void @llvm.dbg.value(metadata i32 %65, metadata !5142, metadata !DIExpression()), !dbg !5217
  %66 = icmp slt i32 %65, 0, !dbg !5218
  br i1 %66, label %76, label %67, !dbg !5220

67:                                               ; preds = %63
  %68 = call noalias ptr @fdopen(i32 noundef %65, ptr noundef nonnull %3) #41, !dbg !5221
  call void @llvm.dbg.value(metadata ptr %68, metadata !5145, metadata !DIExpression()), !dbg !5217
  %69 = icmp eq ptr %68, null, !dbg !5222
  br i1 %69, label %70, label %76, !dbg !5223

70:                                               ; preds = %67
  %71 = tail call ptr @__errno_location() #44, !dbg !5224
  %72 = load i32, ptr %71, align 4, !dbg !5224, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 %72, metadata !5146, metadata !DIExpression()), !dbg !5225
  %73 = tail call i32 @close(i32 noundef %65) #41, !dbg !5226
  store i32 %72, ptr %71, align 4, !dbg !5227, !tbaa !1096
  br label %76, !dbg !5228

74:                                               ; preds = %6, %56
  call void @llvm.dbg.value(metadata ptr %0, metadata !5229, metadata !DIExpression()), !dbg !5233
  call void @llvm.dbg.value(metadata ptr %1, metadata !5232, metadata !DIExpression()), !dbg !5233
  %75 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !5235
  br label %76, !dbg !5236

76:                                               ; preds = %63, %70, %67, %74
  %77 = phi ptr [ %75, %74 ], [ null, %63 ], [ null, %70 ], [ %68, %67 ], !dbg !5149
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #41, !dbg !5237
  ret ptr %77, !dbg !5237
}

; Function Attrs: nofree
declare !dbg !5238 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare !dbg !5241 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !5244 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !5245 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !5248 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5286, metadata !DIExpression()), !dbg !5291
  %2 = tail call i64 @__fpending(ptr noundef %0) #41, !dbg !5292
  call void @llvm.dbg.value(metadata i1 poison, metadata !5287, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5291
  call void @llvm.dbg.value(metadata ptr %0, metadata !5293, metadata !DIExpression()), !dbg !5296
  %3 = load i32, ptr %0, align 8, !dbg !5298, !tbaa !1495
  %4 = and i32 %3, 32, !dbg !5299
  %5 = icmp eq i32 %4, 0, !dbg !5299
  call void @llvm.dbg.value(metadata i1 %5, metadata !5289, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5291
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #41, !dbg !5300
  %7 = icmp eq i32 %6, 0, !dbg !5301
  call void @llvm.dbg.value(metadata i1 %7, metadata !5290, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5291
  br i1 %5, label %8, label %18, !dbg !5302

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5304
  call void @llvm.dbg.value(metadata i1 %9, metadata !5287, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5291
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5305
  %11 = xor i1 %7, true, !dbg !5305
  %12 = sext i1 %11 to i32, !dbg !5305
  br i1 %10, label %21, label %13, !dbg !5305

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #44, !dbg !5306
  %15 = load i32, ptr %14, align 4, !dbg !5306, !tbaa !1096
  %16 = icmp ne i32 %15, 9, !dbg !5307
  %17 = sext i1 %16 to i32, !dbg !5308
  br label %21, !dbg !5308

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5309

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #44, !dbg !5311
  store i32 0, ptr %20, align 4, !dbg !5313, !tbaa !1096
  br label %21, !dbg !5311

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5291
  ret i32 %22, !dbg !5314
}

; Function Attrs: nounwind
declare !dbg !5315 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @freadptr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #37 !dbg !5318 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5356, metadata !DIExpression()), !dbg !5359
  call void @llvm.dbg.value(metadata ptr %1, metadata !5357, metadata !DIExpression()), !dbg !5359
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !5360
  %4 = load ptr, ptr %3, align 8, !dbg !5360, !tbaa !1540
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !5362
  %6 = load ptr, ptr %5, align 8, !dbg !5362, !tbaa !2781
  %7 = icmp ugt ptr %4, %6, !dbg !5363
  br i1 %7, label %18, label %8, !dbg !5364

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !5365
  %10 = load ptr, ptr %9, align 8, !dbg !5365, !tbaa !1452
  %11 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !5366
  %12 = load ptr, ptr %11, align 8, !dbg !5366, !tbaa !1450
  call void @llvm.dbg.value(metadata !DIArgList(ptr %10, ptr %12), metadata !5358, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5359
  %13 = icmp eq ptr %10, %12, !dbg !5367
  br i1 %13, label %18, label %14, !dbg !5369

14:                                               ; preds = %8
  %15 = ptrtoint ptr %12 to i64, !dbg !5370
  call void @llvm.dbg.value(metadata !DIArgList(ptr %10, i64 %15), metadata !5358, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5359
  %16 = ptrtoint ptr %10 to i64, !dbg !5370
  call void @llvm.dbg.value(metadata !DIArgList(i64 %16, ptr %12), metadata !5358, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5359
  %17 = sub i64 %16, %15, !dbg !5370
  call void @llvm.dbg.value(metadata i64 %17, metadata !5358, metadata !DIExpression()), !dbg !5359
  store i64 %17, ptr %1, align 8, !dbg !5371, !tbaa !1298
  br label %18, !dbg !5372

18:                                               ; preds = %8, %2, %14
  %19 = phi ptr [ %12, %14 ], [ null, %2 ], [ null, %8 ], !dbg !5359
  ret ptr %19, !dbg !5373
}

; Function Attrs: nounwind uwtable
define dso_local i32 @freadseek(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !5374 {
  %3 = alloca i64, align 8
  %4 = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !5412, metadata !DIExpression()), !dbg !5430
  call void @llvm.dbg.value(metadata i64 %1, metadata !5413, metadata !DIExpression()), !dbg !5430
  %5 = icmp eq i64 %1, 0, !dbg !5431
  br i1 %5, label %66, label %6, !dbg !5433

6:                                                ; preds = %2
  %7 = tail call i64 @freadahead(ptr noundef %0) #42, !dbg !5434
  call void @llvm.dbg.value(metadata i64 %7, metadata !5414, metadata !DIExpression()), !dbg !5430
  %8 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  br label %9, !dbg !5435

9:                                                ; preds = %40, %6
  %10 = phi i64 [ %7, %6 ], [ %41, %40 ], !dbg !5436
  %11 = phi i64 [ %1, %6 ], [ %43, %40 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !5413, metadata !DIExpression()), !dbg !5430
  call void @llvm.dbg.value(metadata i64 %10, metadata !5414, metadata !DIExpression()), !dbg !5430
  %12 = icmp eq i64 %10, 0, !dbg !5437
  br i1 %12, label %44, label %13, !dbg !5435

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #41, !dbg !5438
  call void @llvm.dbg.value(metadata ptr %3, metadata !5415, metadata !DIExpression(DW_OP_deref)), !dbg !5439
  %14 = call ptr @freadptr(ptr noundef %0, ptr noundef nonnull %3) #41, !dbg !5440
  %15 = icmp ne ptr %14, null, !dbg !5441
  %16 = load i64, ptr %3, align 8
  call void @llvm.dbg.value(metadata i64 %16, metadata !5415, metadata !DIExpression()), !dbg !5439
  %17 = icmp ne i64 %16, 0
  %18 = select i1 %15, i1 %17, i1 false, !dbg !5442
  br i1 %18, label %19, label %28, !dbg !5442

19:                                               ; preds = %13
  %20 = call i64 @llvm.umin.i64(i64 %16, i64 %11), !dbg !5443
  call void @llvm.dbg.value(metadata i64 %20, metadata !5417, metadata !DIExpression()), !dbg !5444
  call void @llvm.dbg.value(metadata ptr %0, metadata !5445, metadata !DIExpression()), !dbg !5451
  call void @llvm.dbg.value(metadata i64 %20, metadata !5450, metadata !DIExpression()), !dbg !5451
  %21 = load ptr, ptr %8, align 8, !dbg !5453, !tbaa !1450
  %22 = getelementptr inbounds i8, ptr %21, i64 %20, !dbg !5453
  store ptr %22, ptr %8, align 8, !dbg !5453, !tbaa !1450
  %23 = sub i64 %11, %20, !dbg !5454
  call void @llvm.dbg.value(metadata i64 %23, metadata !5413, metadata !DIExpression()), !dbg !5430
  %24 = icmp eq i64 %23, 0, !dbg !5455
  br i1 %24, label %39, label %25, !dbg !5457

25:                                               ; preds = %19
  %26 = sub i64 %10, %20, !dbg !5458
  call void @llvm.dbg.value(metadata i64 %26, metadata !5414, metadata !DIExpression()), !dbg !5430
  %27 = icmp eq i64 %26, 0, !dbg !5459
  br i1 %27, label %40, label %28

28:                                               ; preds = %25, %13
  %29 = phi i64 [ %26, %25 ], [ %10, %13 ], !dbg !5436
  %30 = phi i64 [ %23, %25 ], [ %11, %13 ]
  call void @llvm.dbg.value(metadata i64 %30, metadata !5413, metadata !DIExpression()), !dbg !5430
  call void @llvm.dbg.value(metadata i64 %29, metadata !5414, metadata !DIExpression()), !dbg !5430
  %31 = call i32 @fgetc(ptr noundef %0), !dbg !5461
  %32 = icmp eq i32 %31, -1, !dbg !5463
  br i1 %32, label %33, label %34, !dbg !5464

33:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i64 poison, metadata !5413, metadata !DIExpression()), !dbg !5430
  call void @llvm.dbg.value(metadata i64 poison, metadata !5414, metadata !DIExpression()), !dbg !5430
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41, !dbg !5465
  br label %62

34:                                               ; preds = %28
  %35 = add i64 %30, -1, !dbg !5466
  call void @llvm.dbg.value(metadata i64 %35, metadata !5413, metadata !DIExpression()), !dbg !5430
  %36 = icmp eq i64 %35, 0, !dbg !5467
  br i1 %36, label %39, label %37, !dbg !5469

37:                                               ; preds = %34
  %38 = add i64 %29, -1, !dbg !5470
  call void @llvm.dbg.value(metadata i64 %38, metadata !5414, metadata !DIExpression()), !dbg !5430
  br label %40, !dbg !5465

39:                                               ; preds = %34, %19
  call void @llvm.dbg.value(metadata i64 poison, metadata !5413, metadata !DIExpression()), !dbg !5430
  call void @llvm.dbg.value(metadata i64 poison, metadata !5414, metadata !DIExpression()), !dbg !5430
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41, !dbg !5465
  br label %66

40:                                               ; preds = %25, %37
  %41 = phi i64 [ %38, %37 ], [ 0, %25 ], !dbg !5430
  %42 = phi i32 [ 0, %37 ], [ 3, %25 ]
  %43 = phi i64 [ %35, %37 ], [ %23, %25 ], !dbg !5439
  call void @llvm.dbg.value(metadata i64 %43, metadata !5413, metadata !DIExpression()), !dbg !5430
  call void @llvm.dbg.value(metadata i64 %41, metadata !5414, metadata !DIExpression()), !dbg !5430
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41, !dbg !5465
  switch i32 %42, label %66 [
    i32 0, label %9
    i32 3, label %44
  ], !llvm.loop !5471

44:                                               ; preds = %40, %9
  %45 = phi i64 [ %43, %40 ], [ %11, %9 ]
  call void @llvm.dbg.value(metadata i64 %45, metadata !5413, metadata !DIExpression()), !dbg !5430
  %46 = call i32 @fileno(ptr noundef %0) #41, !dbg !5472
  call void @llvm.dbg.value(metadata i32 %46, metadata !5420, metadata !DIExpression()), !dbg !5430
  %47 = icmp sgt i32 %46, -1, !dbg !5473
  br i1 %47, label %49, label %48, !dbg !5474

48:                                               ; preds = %49, %44
  br label %54, !dbg !5475

49:                                               ; preds = %44
  %50 = call i64 @lseek(i32 noundef %46, i64 noundef 0, i32 noundef 1) #41, !dbg !5476
  %51 = icmp sgt i64 %50, -1, !dbg !5477
  br i1 %51, label %52, label %48, !dbg !5478

52:                                               ; preds = %49
  %53 = call i32 @rpl_fseeko(ptr noundef %0, i64 noundef %45, i32 noundef 1) #41, !dbg !5479
  br label %66, !dbg !5481

54:                                               ; preds = %48, %59
  %55 = phi i64 [ %60, %59 ], [ %45, %48 ], !dbg !5454
  call void @llvm.dbg.value(metadata i64 %55, metadata !5413, metadata !DIExpression()), !dbg !5430
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #41, !dbg !5482
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5421, metadata !DIExpression()), !dbg !5483
  %56 = call i64 @llvm.umin.i64(i64 %55, i64 4096), !dbg !5484
  call void @llvm.dbg.value(metadata i64 %56, metadata !5428, metadata !DIExpression()), !dbg !5485
  call void @llvm.dbg.value(metadata ptr %4, metadata !5486, metadata !DIExpression()), !dbg !5496
  call void @llvm.dbg.value(metadata i64 1, metadata !5492, metadata !DIExpression()), !dbg !5496
  call void @llvm.dbg.value(metadata i64 %56, metadata !5493, metadata !DIExpression()), !dbg !5496
  call void @llvm.dbg.value(metadata ptr %0, metadata !5494, metadata !DIExpression()), !dbg !5496
  call void @llvm.dbg.value(metadata i64 4096, metadata !5495, metadata !DIExpression()), !dbg !5496
  %57 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef %56, ptr noundef %0), !dbg !5499
  %58 = icmp ult i64 %57, %56, !dbg !5501
  call void @llvm.dbg.value(metadata i64 poison, metadata !5413, metadata !DIExpression()), !dbg !5430
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #41, !dbg !5502
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = sub i64 %55, %56, !dbg !5503
  call void @llvm.dbg.value(metadata i64 %60, metadata !5413, metadata !DIExpression()), !dbg !5430
  %61 = icmp eq i64 %60, 0, !dbg !5504
  br i1 %61, label %66, label %54, !dbg !5505, !llvm.loop !5506

62:                                               ; preds = %54, %33
  call void @llvm.dbg.label(metadata !5429), !dbg !5508
  %63 = call i32 @ferror(ptr noundef %0) #41, !dbg !5509
  %64 = icmp ne i32 %63, 0, !dbg !5509
  %65 = sext i1 %64 to i32, !dbg !5511
  br label %66, !dbg !5511

66:                                               ; preds = %40, %59, %39, %52, %62, %2
  %67 = phi i32 [ 0, %2 ], [ %53, %52 ], [ %65, %62 ], [ 0, %39 ], [ 0, %59 ], [ 0, %40 ], !dbg !5430
  ret i32 %67, !dbg !5512
}

; Function Attrs: nofree nounwind
declare !dbg !5513 noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: alwaysinline nobuiltin nounwind uwtable
declare !dbg !5516 i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #38

; Function Attrs: nofree nounwind memory(read)
declare !dbg !5519 noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5520 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5525, metadata !DIExpression()), !dbg !5530
  call void @llvm.dbg.value(metadata ptr %1, metadata !5526, metadata !DIExpression()), !dbg !5530
  call void @llvm.dbg.value(metadata i64 %2, metadata !5527, metadata !DIExpression()), !dbg !5530
  call void @llvm.dbg.value(metadata ptr %3, metadata !5528, metadata !DIExpression()), !dbg !5530
  %5 = icmp eq ptr %1, null, !dbg !5531
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5533
  %7 = select i1 %5, ptr @.str.197, ptr %1, !dbg !5533
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5533
  call void @llvm.dbg.value(metadata i64 %8, metadata !5527, metadata !DIExpression()), !dbg !5530
  call void @llvm.dbg.value(metadata ptr %7, metadata !5526, metadata !DIExpression()), !dbg !5530
  call void @llvm.dbg.value(metadata ptr %6, metadata !5525, metadata !DIExpression()), !dbg !5530
  %9 = icmp eq ptr %3, null, !dbg !5534
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5536
  call void @llvm.dbg.value(metadata ptr %10, metadata !5528, metadata !DIExpression()), !dbg !5530
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #41, !dbg !5537
  call void @llvm.dbg.value(metadata i64 %11, metadata !5529, metadata !DIExpression()), !dbg !5530
  %12 = icmp ult i64 %11, -3, !dbg !5538
  br i1 %12, label %13, label %17, !dbg !5540

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #42, !dbg !5541
  %15 = icmp eq i32 %14, 0, !dbg !5541
  br i1 %15, label %16, label %29, !dbg !5542

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5543, metadata !DIExpression()), !dbg !5548
  call void @llvm.dbg.value(metadata ptr %10, metadata !5550, metadata !DIExpression()), !dbg !5555
  call void @llvm.dbg.value(metadata i32 0, metadata !5553, metadata !DIExpression()), !dbg !5555
  call void @llvm.dbg.value(metadata i64 8, metadata !5554, metadata !DIExpression()), !dbg !5555
  store i64 0, ptr %10, align 1, !dbg !5557
  br label %29, !dbg !5558

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5559
  br i1 %18, label %19, label %20, !dbg !5561

19:                                               ; preds = %17
  tail call void @abort() #43, !dbg !5562
  unreachable, !dbg !5562

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5563

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #41, !dbg !5565
  br i1 %23, label %29, label %24, !dbg !5566

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5567
  br i1 %25, label %29, label %26, !dbg !5570

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5571, !tbaa !1105
  %28 = zext i8 %27 to i32, !dbg !5572
  store i32 %28, ptr %6, align 4, !dbg !5573, !tbaa !1096
  br label %29, !dbg !5574

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5530
  ret i64 %30, !dbg !5575
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5576 i32 @mbsinit(ptr noundef) local_unnamed_addr #39

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #40 !dbg !5582 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5584, metadata !DIExpression()), !dbg !5588
  call void @llvm.dbg.value(metadata i64 %1, metadata !5585, metadata !DIExpression()), !dbg !5588
  call void @llvm.dbg.value(metadata i64 %2, metadata !5586, metadata !DIExpression()), !dbg !5588
  %4 = icmp eq i64 %2, 0, !dbg !5589
  br i1 %4, label %8, label %5, !dbg !5589

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5589
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5589
  br i1 %7, label %13, label %8, !dbg !5589

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5587, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5588
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5587, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5588
  %9 = mul i64 %2, %1, !dbg !5589
  call void @llvm.dbg.value(metadata i64 %9, metadata !5587, metadata !DIExpression()), !dbg !5588
  call void @llvm.dbg.value(metadata ptr %0, metadata !5591, metadata !DIExpression()), !dbg !5595
  call void @llvm.dbg.value(metadata i64 %9, metadata !5594, metadata !DIExpression()), !dbg !5595
  %10 = icmp eq i64 %9, 0, !dbg !5597
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5597
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #46, !dbg !5598
  br label %15, !dbg !5599

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5587, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5588
  %14 = tail call ptr @__errno_location() #44, !dbg !5600
  store i32 12, ptr %14, align 4, !dbg !5602, !tbaa !1096
  br label %15, !dbg !5603

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5588
  ret ptr %16, !dbg !5604
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @freadahead(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !5605 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5643, metadata !DIExpression()), !dbg !5644
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !5645
  %3 = load ptr, ptr %2, align 8, !dbg !5645, !tbaa !1540
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !5647
  %5 = load ptr, ptr %4, align 8, !dbg !5647, !tbaa !2781
  %6 = icmp ugt ptr %3, %5, !dbg !5648
  br i1 %6, label %29, label %7, !dbg !5649

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !5650
  %9 = load ptr, ptr %8, align 8, !dbg !5650, !tbaa !1452
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !5651
  %11 = load ptr, ptr %10, align 8, !dbg !5651, !tbaa !1450
  %12 = ptrtoint ptr %9 to i64, !dbg !5652
  %13 = ptrtoint ptr %11 to i64, !dbg !5652
  %14 = sub i64 %12, %13, !dbg !5652
  %15 = load i32, ptr %0, align 8, !dbg !5653, !tbaa !1495
  %16 = and i32 %15, 256, !dbg !5654
  %17 = icmp eq i32 %16, 0, !dbg !5654
  br i1 %17, label %26, label %18, !dbg !5655

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 11, !dbg !5656
  %20 = load ptr, ptr %19, align 8, !dbg !5656, !tbaa !5657
  %21 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !5658
  %22 = load ptr, ptr %21, align 8, !dbg !5658, !tbaa !2785
  %23 = ptrtoint ptr %20 to i64, !dbg !5659
  %24 = ptrtoint ptr %22 to i64, !dbg !5659
  %25 = sub i64 %23, %24, !dbg !5659
  br label %26, !dbg !5655

26:                                               ; preds = %7, %18
  %27 = phi i64 [ %25, %18 ], [ 0, %7 ], !dbg !5655
  %28 = add nsw i64 %14, %27, !dbg !5660
  br label %29, !dbg !5661

29:                                               ; preds = %1, %26
  %30 = phi i64 [ %28, %26 ], [ 0, %1 ], !dbg !5644
  ret i64 %30, !dbg !5662
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5663 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !5665, metadata !DIExpression()), !dbg !5670
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #41, !dbg !5671
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5666, metadata !DIExpression()), !dbg !5672
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #41, !dbg !5673
  %4 = icmp eq i32 %3, 0, !dbg !5673
  br i1 %4, label %5, label %12, !dbg !5675

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5676, metadata !DIExpression()), !dbg !5680
  %6 = load i16, ptr %2, align 16, !dbg !5683
  %7 = icmp eq i16 %6, 67, !dbg !5683
  br i1 %7, label %11, label %8, !dbg !5684

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5676, metadata !DIExpression()), !dbg !5685
  call void @llvm.dbg.value(metadata ptr @.str.1.204, metadata !5679, metadata !DIExpression()), !dbg !5685
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.204, i64 6), !dbg !5687
  %10 = icmp eq i32 %9, 0, !dbg !5688
  br i1 %10, label %11, label %12, !dbg !5689

11:                                               ; preds = %8, %5
  br label %12, !dbg !5690

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5670
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #41, !dbg !5691
  ret i1 %13, !dbg !5691
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5692 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5696, metadata !DIExpression()), !dbg !5699
  call void @llvm.dbg.value(metadata ptr %1, metadata !5697, metadata !DIExpression()), !dbg !5699
  call void @llvm.dbg.value(metadata i64 %2, metadata !5698, metadata !DIExpression()), !dbg !5699
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #41, !dbg !5700
  ret i32 %4, !dbg !5701
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5702 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5706, metadata !DIExpression()), !dbg !5707
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #41, !dbg !5708
  ret ptr %2, !dbg !5709
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5710 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5712, metadata !DIExpression()), !dbg !5714
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #41, !dbg !5715
  call void @llvm.dbg.value(metadata ptr %2, metadata !5713, metadata !DIExpression()), !dbg !5714
  ret ptr %2, !dbg !5716
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5717 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5719, metadata !DIExpression()), !dbg !5726
  call void @llvm.dbg.value(metadata ptr %1, metadata !5720, metadata !DIExpression()), !dbg !5726
  call void @llvm.dbg.value(metadata i64 %2, metadata !5721, metadata !DIExpression()), !dbg !5726
  call void @llvm.dbg.value(metadata i32 %0, metadata !5712, metadata !DIExpression()), !dbg !5727
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #41, !dbg !5729
  call void @llvm.dbg.value(metadata ptr %4, metadata !5713, metadata !DIExpression()), !dbg !5727
  call void @llvm.dbg.value(metadata ptr %4, metadata !5722, metadata !DIExpression()), !dbg !5726
  %5 = icmp eq ptr %4, null, !dbg !5730
  br i1 %5, label %6, label %9, !dbg !5731

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5732
  br i1 %7, label %19, label %8, !dbg !5735

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5736, !tbaa !1105
  br label %19, !dbg !5737

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #42, !dbg !5738
  call void @llvm.dbg.value(metadata i64 %10, metadata !5723, metadata !DIExpression()), !dbg !5739
  %11 = icmp ult i64 %10, %2, !dbg !5740
  br i1 %11, label %12, label %14, !dbg !5742

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5743
  call void @llvm.dbg.value(metadata ptr %1, metadata !5745, metadata !DIExpression()), !dbg !5750
  call void @llvm.dbg.value(metadata ptr %4, metadata !5748, metadata !DIExpression()), !dbg !5750
  call void @llvm.dbg.value(metadata i64 %13, metadata !5749, metadata !DIExpression()), !dbg !5750
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #41, !dbg !5752
  br label %19, !dbg !5753

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5754
  br i1 %15, label %19, label %16, !dbg !5757

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5758
  call void @llvm.dbg.value(metadata ptr %1, metadata !5745, metadata !DIExpression()), !dbg !5760
  call void @llvm.dbg.value(metadata ptr %4, metadata !5748, metadata !DIExpression()), !dbg !5760
  call void @llvm.dbg.value(metadata i64 %17, metadata !5749, metadata !DIExpression()), !dbg !5760
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #41, !dbg !5762
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5763
  store i8 0, ptr %18, align 1, !dbg !5764, !tbaa !1105
  br label %19, !dbg !5765

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5766
  ret i32 %20, !dbg !5767
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
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind willreturn memory(argmem: read) }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { alwaysinline nobuiltin nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { nounwind }
attributes #42 = { nounwind willreturn memory(read) }
attributes #43 = { noreturn nounwind }
attributes #44 = { nounwind willreturn memory(none) }
attributes #45 = { noreturn }
attributes #46 = { nounwind allocsize(1) }
attributes #47 = { cold }
attributes #48 = { nounwind allocsize(0) }
attributes #49 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!109, !524, !596, !600, !615, !883, !915, !918, !920, !923, !925, !927, !930, !932, !667, !681, !729, !938, !875, !944, !975, !977, !979, !981, !984, !899, !987, !990, !992, !996, !998}
!llvm.ident = !{!1000, !1000, !1000, !1000, !1000, !1000, !1000, !1000, !1000, !1000, !1000, !1000, !1000, !1000, !1000, !1000, !1000, !1000, !1000, !1000, !1000, !1000, !1000, !1000, !1000, !1000, !1000, !1000, !1000, !1000, !1000}
!llvm.module.flags = !{!1001, !1002, !1003, !1004, !1005, !1006}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 128, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/cut.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b9f2457426dca29db9725f5b9c21ca1")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 31)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 135, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 66)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 4)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 53)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 146, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 63)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 150, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 632, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 79)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 154, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1264, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 158)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 25)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 163, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 704, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 88)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 167, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 624, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 78)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 171, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1032, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 129)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 176, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 552, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 69)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 180, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 50)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 181, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 62)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 182, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1632, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 204)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2096, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 262)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 505, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 1)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 506, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 10)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 506, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 24)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 511, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 12)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "longopts", scope: !109, file: !2, line: 109, type: !481, isLocal: true, isDefinition: true)
!109 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, retainedTypes: !166, globals: !177, splitDebugInlining: false, nameTableKind: None)
!110 = !{!111, !116, !122, !128, !143, !157}
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 103, baseType: !112, size: 32, elements: !113)
!112 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!113 = !{!114, !115}
!114 = !DIEnumerator(name: "OUTPUT_DELIMITER_OPTION", value: 128)
!115 = !DIEnumerator(name: "COMPLEMENT_OPTION", value: 129)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !117, line: 337, baseType: !118, size: 32, elements: !119)
!117 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!118 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!119 = !{!120, !121}
!120 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!121 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !123, line: 33, baseType: !112, size: 32, elements: !124)
!123 = !DIFile(filename: "src/set-fields.h", directory: "/src", checksumkind: CSK_MD5, checksum: "e845057753a5660d0a0c171d86abf414")
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "SETFLD_ALLOW_DASH", value: 1)
!126 = !DIEnumerator(name: "SETFLD_COMPLEMENT", value: 2)
!127 = !DIEnumerator(name: "SETFLD_ERRMSG_USE_POS", value: 4)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !129, line: 46, baseType: !112, size: 32, elements: !130)
!129 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142}
!131 = !DIEnumerator(name: "_ISupper", value: 256)
!132 = !DIEnumerator(name: "_ISlower", value: 512)
!133 = !DIEnumerator(name: "_ISalpha", value: 1024)
!134 = !DIEnumerator(name: "_ISdigit", value: 2048)
!135 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!136 = !DIEnumerator(name: "_ISspace", value: 8192)
!137 = !DIEnumerator(name: "_ISprint", value: 16384)
!138 = !DIEnumerator(name: "_ISgraph", value: 32768)
!139 = !DIEnumerator(name: "_ISblank", value: 1)
!140 = !DIEnumerator(name: "_IScntrl", value: 2)
!141 = !DIEnumerator(name: "_ISpunct", value: 4)
!142 = !DIEnumerator(name: "_ISalnum", value: 8)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !144, line: 42, baseType: !112, size: 32, elements: !145)
!144 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156}
!146 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!147 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!148 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!149 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!150 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!151 = !DIEnumerator(name: "c_quoting_style", value: 5)
!152 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!153 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!154 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!155 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!156 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !158, line: 44, baseType: !112, size: 32, elements: !159)
!158 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!159 = !{!160, !161, !162, !163, !164, !165}
!160 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!161 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!162 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!163 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!164 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!165 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!166 = !{!167, !168, !118, !169, !170, !173, !175, !176}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!169 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !171, line: 46, baseType: !172)
!171 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!172 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!175 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!177 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !67, !72, !77, !82, !87, !92, !97, !102, !178, !180, !185, !190, !195, !200, !205, !210, !212, !217, !222, !225, !227, !229, !231, !233, !235, !237, !239, !241, !323, !328, !330, !332, !337, !339, !341, !343, !348, !350, !352, !354, !359, !364, !366, !368, !370, !372, !374, !376, !381, !386, !388, !393, !395, !397, !399, !401, !403, !408, !410, !412, !417, !422, !427, !429, !431, !436, !438, !440, !442, !444, !446, !448, !450, !107, !452, !454, !464, !466, !468, !470, !473, !475, !477, !479}
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !2, line: 524, type: !9, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !2, line: 532, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 41)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !2, line: 561, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 14)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !2, line: 561, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 15)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !2, line: 561, type: !197, isLocal: true, isDefinition: true)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 16)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !2, line: 561, type: !202, isLocal: true, isDefinition: true)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 13)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(scope: null, file: !2, line: 568, type: !207, isLocal: true, isDefinition: true)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 56)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(scope: null, file: !2, line: 573, type: !14, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !2, line: 577, type: !214, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 75)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !2, line: 597, type: !219, isLocal: true, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 2)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "suppress_non_delimited", scope: !109, file: !2, line: 76, type: !224, isLocal: true, isDefinition: true)
!224 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "complement", scope: !109, file: !2, line: 80, type: !224, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(name: "delim", scope: !109, file: !2, line: 83, type: !175, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(name: "output_delimiter_length", scope: !109, file: !2, line: 89, type: !170, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "output_delimiter_string", scope: !109, file: !2, line: 93, type: !167, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "output_delimiter_default", scope: !109, file: !2, line: 96, type: !89, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !109, file: !2, line: 99, type: !224, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !117, line: 729, type: !207, isLocal: true, isDefinition: true)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !117, line: 736, type: !214, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !243, file: !117, line: 575, type: !118, isLocal: true, isDefinition: true)
!243 = distinct !DISubprogram(name: "oputs_", scope: !117, file: !117, line: 573, type: !244, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !246)
!244 = !DISubroutineType(cc: DW_CC_nocall, types: !245)
!245 = !{null, !173, !173}
!246 = !{!247, !248, !249, !252, !253, !254, !255, !259, !260, !261, !262, !264, !317, !318, !319, !321, !322}
!247 = !DILocalVariable(name: "program", arg: 1, scope: !243, file: !117, line: 573, type: !173)
!248 = !DILocalVariable(name: "option", arg: 2, scope: !243, file: !117, line: 573, type: !173)
!249 = !DILocalVariable(name: "term", scope: !250, file: !117, line: 585, type: !173)
!250 = distinct !DILexicalBlock(scope: !251, file: !117, line: 582, column: 5)
!251 = distinct !DILexicalBlock(scope: !243, file: !117, line: 581, column: 7)
!252 = !DILocalVariable(name: "double_space", scope: !243, file: !117, line: 594, type: !224)
!253 = !DILocalVariable(name: "first_word", scope: !243, file: !117, line: 595, type: !173)
!254 = !DILocalVariable(name: "option_text", scope: !243, file: !117, line: 596, type: !173)
!255 = !DILocalVariable(name: "s", scope: !256, file: !117, line: 608, type: !173)
!256 = distinct !DILexicalBlock(scope: !257, file: !117, line: 605, column: 5)
!257 = distinct !DILexicalBlock(scope: !258, file: !117, line: 604, column: 12)
!258 = distinct !DILexicalBlock(scope: !243, file: !117, line: 597, column: 7)
!259 = !DILocalVariable(name: "spaces", scope: !256, file: !117, line: 609, type: !170)
!260 = !DILocalVariable(name: "anchor_len", scope: !243, file: !117, line: 620, type: !170)
!261 = !DILocalVariable(name: "desc_text", scope: !243, file: !117, line: 625, type: !173)
!262 = !DILocalVariable(name: "__ptr", scope: !263, file: !117, line: 644, type: !173)
!263 = distinct !DILexicalBlock(scope: !243, file: !117, line: 644, column: 3)
!264 = !DILocalVariable(name: "__stream", scope: !263, file: !117, line: 644, type: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !268)
!267 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !270)
!269 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!270 = !{!271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !286, !288, !289, !290, !294, !295, !297, !298, !301, !303, !306, !309, !310, !311, !312, !313}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !268, file: !269, line: 51, baseType: !118, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !268, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !268, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !268, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !268, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !268, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !268, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !268, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !268, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !268, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !268, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !268, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !268, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !269, line: 36, flags: DIFlagFwdDecl)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !268, file: !269, line: 70, baseType: !287, size: 64, offset: 832)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !268, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !268, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !268, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !292, line: 152, baseType: !293)
!292 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!293 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !268, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !268, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!296 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !268, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !268, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !269, line: 43, baseType: null)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !268, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !292, line: 153, baseType: !293)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !268, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !269, line: 37, flags: DIFlagFwdDecl)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !268, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !269, line: 38, flags: DIFlagFwdDecl)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !268, file: !269, line: 93, baseType: !287, size: 64, offset: 1344)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !268, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !268, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !268, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !268, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 20)
!317 = !DILocalVariable(name: "__cnt", scope: !263, file: !117, line: 644, type: !170)
!318 = !DILocalVariable(name: "url_program", scope: !243, file: !117, line: 648, type: !173)
!319 = !DILocalVariable(name: "__ptr", scope: !320, file: !117, line: 686, type: !173)
!320 = distinct !DILexicalBlock(scope: !243, file: !117, line: 686, column: 3)
!321 = !DILocalVariable(name: "__stream", scope: !320, file: !117, line: 686, type: !265)
!322 = !DILocalVariable(name: "__cnt", scope: !320, file: !117, line: 686, type: !170)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !117, line: 585, type: !325, isLocal: true, isDefinition: true)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 5)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !117, line: 586, type: !325, isLocal: true, isDefinition: true)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !117, line: 595, type: !19, isLocal: true, isDefinition: true)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !117, line: 620, type: !334, isLocal: true, isDefinition: true)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 6)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !117, line: 648, type: !219, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !117, line: 648, type: !325, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !117, line: 649, type: !19, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !117, line: 649, type: !345, isLocal: true, isDefinition: true)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 3)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !117, line: 650, type: !325, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !117, line: 651, type: !334, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !117, line: 651, type: !334, isLocal: true, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !117, line: 652, type: !356, isLocal: true, isDefinition: true)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 7)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !117, line: 653, type: !361, isLocal: true, isDefinition: true)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 8)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !117, line: 654, type: !94, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !117, line: 655, type: !94, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !117, line: 656, type: !94, isLocal: true, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !117, line: 657, type: !94, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !117, line: 663, type: !356, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !117, line: 664, type: !94, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !117, line: 669, type: !378, isLocal: true, isDefinition: true)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 17)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !117, line: 669, type: !383, isLocal: true, isDefinition: true)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 40)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !117, line: 676, type: !192, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !117, line: 676, type: !390, isLocal: true, isDefinition: true)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 61)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !117, line: 679, type: !345, isLocal: true, isDefinition: true)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !117, line: 683, type: !325, isLocal: true, isDefinition: true)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !117, line: 688, type: !325, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !117, line: 691, type: !361, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !117, line: 839, type: !197, isLocal: true, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !117, line: 840, type: !405, isLocal: true, isDefinition: true)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !406)
!406 = !{!407}
!407 = !DISubrange(count: 22)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !117, line: 841, type: !192, isLocal: true, isDefinition: true)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !117, line: 862, type: !19, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !117, line: 868, type: !414, isLocal: true, isDefinition: true)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 71)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !117, line: 875, type: !419, isLocal: true, isDefinition: true)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 27)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !117, line: 877, type: !424, isLocal: true, isDefinition: true)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 51)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !117, line: 877, type: !104, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !334, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !433, isLocal: true, isDefinition: true)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !434)
!434 = !{!435}
!435 = !DISubrange(count: 11)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !356, isLocal: true, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !2, line: 114, type: !94, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !192, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !378, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !2, line: 117, type: !433, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !2, line: 118, type: !197, isLocal: true, isDefinition: true)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !2, line: 119, type: !325, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !361, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(name: "line_delim", scope: !109, file: !2, line: 86, type: !175, isLocal: true, isDefinition: true)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(name: "current_rp", scope: !109, file: !2, line: 59, type: !456, isLocal: true, isDefinition: true)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "field_range_pair", file: !123, line: 20, size: 128, elements: !458)
!458 = !{!459, !463}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "lo", scope: !457, file: !123, line: 22, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !461, line: 102, baseType: !462)
!461 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !292, line: 73, baseType: !172)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "hi", scope: !457, file: !123, line: 23, baseType: !460, size: 64, offset: 64)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !117, line: 952, type: !104, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !2, line: 335, type: !202, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !2, line: 335, type: !94, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !2, line: 335, type: !472, isLocal: true, isDefinition: true)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 192, elements: !100)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(name: "field_1_buffer", scope: !109, file: !2, line: 68, type: !167, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(name: "field_1_bufsize", scope: !109, file: !2, line: 71, type: !170, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !2, line: 467, type: !219, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !2, line: 470, type: !345, isLocal: true, isDefinition: true)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 2816, elements: !434)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !484, line: 50, size: 256, elements: !485)
!484 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!485 = !{!486, !487, !488, !490}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !483, file: !484, line: 52, baseType: !173, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !483, file: !484, line: 55, baseType: !118, size: 32, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !483, file: !484, line: 56, baseType: !489, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !483, file: !484, line: 57, baseType: !118, size: 32, offset: 192)
!491 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!492 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551606, DW_OP_mul, DW_OP_constu, 10, DW_OP_plus, DW_OP_stack_value))
!493 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!494 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !497, line: 149, type: !219, isLocal: true, isDefinition: true)
!497 = !DIFile(filename: "src/set-fields.c", directory: "/src", checksumkind: CSK_MD5, checksum: "014157063ff9565a7e56051a9de2b9a1")
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(scope: null, file: !497, line: 164, type: !500, isLocal: true, isDefinition: true)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !501)
!501 = !{!502}
!502 = !DISubrange(count: 32)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(scope: null, file: !497, line: 164, type: !314, isLocal: true, isDefinition: true)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(scope: null, file: !497, line: 172, type: !507, isLocal: true, isDefinition: true)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !508)
!508 = !{!509}
!509 = !DISubrange(count: 45)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !497, line: 172, type: !419, isLocal: true, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !497, line: 194, type: !514, isLocal: true, isDefinition: true)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !515)
!515 = !{!516}
!516 = !DISubrange(count: 34)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(scope: null, file: !497, line: 208, type: !44, isLocal: true, isDefinition: true)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(name: "num_start", scope: !521, file: !497, line: 237, type: !173, isLocal: true, isDefinition: true)
!521 = distinct !DISubprogram(name: "set_fields", scope: !497, file: !497, line: 136, type: !522, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !568)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !173, !112}
!524 = distinct !DICompileUnit(language: DW_LANG_C11, file: !497, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !525, retainedTypes: !526, globals: !527, splitDebugInlining: false, nameTableKind: None)
!525 = !{!122, !128}
!526 = !{!118, !169, !224, !172}
!527 = !{!495, !498, !503, !505, !510, !512, !517, !519, !528, !530, !535, !540, !545, !550, !552, !554, !561, !566}
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !497, line: 254, type: !433, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !497, line: 255, type: !532, isLocal: true, isDefinition: true)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 38)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !497, line: 255, type: !537, isLocal: true, isDefinition: true)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !538)
!538 = !{!539}
!539 = !DISubrange(count: 29)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !497, line: 267, type: !542, isLocal: true, isDefinition: true)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !543)
!543 = !{!544}
!544 = !DISubrange(count: 35)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !497, line: 267, type: !547, isLocal: true, isDefinition: true)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !548)
!548 = !{!549}
!549 = !DISubrange(count: 23)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !497, line: 276, type: !182, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(scope: null, file: !497, line: 276, type: !547, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(name: "frp", scope: !524, file: !497, line: 27, type: !556, isLocal: false, isDefinition: true)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "field_range_pair", file: !123, line: 20, size: 128, elements: !558)
!558 = !{!559, !560}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "lo", scope: !557, file: !123, line: 22, baseType: !460, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "hi", scope: !557, file: !123, line: 23, baseType: !460, size: 64, offset: 64)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(name: "n_frp", scope: !524, file: !497, line: 30, type: !563, isLocal: false, isDefinition: true)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !564, line: 130, baseType: !565)
!564 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !171, line: 35, baseType: !293)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(name: "n_frp_allocated", scope: !524, file: !497, line: 33, type: !563, isLocal: true, isDefinition: true)
!568 = !{!569, !570, !571, !572, !573, !574, !575, !576, !577, !585, !587}
!569 = !DILocalVariable(name: "fieldstr", arg: 1, scope: !521, file: !497, line: 136, type: !173)
!570 = !DILocalVariable(name: "options", arg: 2, scope: !521, file: !497, line: 136, type: !112)
!571 = !DILocalVariable(name: "initial", scope: !521, file: !497, line: 138, type: !460)
!572 = !DILocalVariable(name: "value", scope: !521, file: !497, line: 139, type: !460)
!573 = !DILocalVariable(name: "lhs_specified", scope: !521, file: !497, line: 140, type: !224)
!574 = !DILocalVariable(name: "rhs_specified", scope: !521, file: !497, line: 141, type: !224)
!575 = !DILocalVariable(name: "dash_found", scope: !521, file: !497, line: 142, type: !224)
!576 = !DILocalVariable(name: "in_digits", scope: !521, file: !497, line: 144, type: !224)
!577 = !DILocalVariable(name: "bad_num", scope: !578, file: !497, line: 253, type: !167)
!578 = distinct !DILexicalBlock(scope: !579, file: !497, line: 250, column: 13)
!579 = distinct !DILexicalBlock(scope: !580, file: !497, line: 248, column: 15)
!580 = distinct !DILexicalBlock(scope: !581, file: !497, line: 234, column: 9)
!581 = distinct !DILexicalBlock(scope: !582, file: !497, line: 233, column: 16)
!582 = distinct !DILexicalBlock(scope: !583, file: !497, line: 179, column: 16)
!583 = distinct !DILexicalBlock(scope: !584, file: !497, line: 159, column: 11)
!584 = distinct !DILexicalBlock(scope: !521, file: !497, line: 158, column: 5)
!585 = !DILocalVariable(name: "i", scope: !586, file: !497, line: 283, type: !563)
!586 = distinct !DILexicalBlock(scope: !521, file: !497, line: 283, column: 3)
!587 = !DILocalVariable(name: "j", scope: !588, file: !497, line: 285, type: !563)
!588 = distinct !DILexicalBlock(scope: !589, file: !497, line: 285, column: 7)
!589 = distinct !DILexicalBlock(scope: !590, file: !497, line: 284, column: 5)
!590 = distinct !DILexicalBlock(scope: !586, file: !497, line: 283, column: 3)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !593, line: 3, type: !192, isLocal: true, isDefinition: true)
!593 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(name: "Version", scope: !596, file: !593, line: 3, type: !173, isLocal: false, isDefinition: true)
!596 = distinct !DICompileUnit(language: DW_LANG_C11, file: !593, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !597, splitDebugInlining: false, nameTableKind: None)
!597 = !{!591, !594}
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(name: "file_name", scope: !600, file: !601, line: 45, type: !173, isLocal: true, isDefinition: true)
!600 = distinct !DICompileUnit(language: DW_LANG_C11, file: !601, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !602, splitDebugInlining: false, nameTableKind: None)
!601 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!602 = !{!603, !605, !607, !609, !598, !611}
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !601, line: 121, type: !356, isLocal: true, isDefinition: true)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !601, line: 121, type: !104, isLocal: true, isDefinition: true)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !601, line: 123, type: !356, isLocal: true, isDefinition: true)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !601, line: 126, type: !345, isLocal: true, isDefinition: true)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !600, file: !601, line: 55, type: !224, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !615, file: !616, line: 66, type: !662, isLocal: false, isDefinition: true)
!615 = distinct !DICompileUnit(language: DW_LANG_C11, file: !616, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !617, globals: !618, splitDebugInlining: false, nameTableKind: None)
!616 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!617 = !{!168, !175}
!618 = !{!619, !621, !641, !643, !645, !647, !613, !649, !651, !653, !655, !660}
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !616, line: 272, type: !325, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(name: "old_file_name", scope: !623, file: !616, line: 304, type: !173, isLocal: true, isDefinition: true)
!623 = distinct !DISubprogram(name: "verror_at_line", scope: !616, file: !616, line: 298, type: !624, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !634)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !118, !118, !173, !112, !173, !626}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !628)
!628 = !{!629, !631, !632, !633}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !627, file: !630, baseType: !112, size: 32)
!630 = !DIFile(filename: "lib/error.c", directory: "/src")
!631 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !627, file: !630, baseType: !112, size: 32, offset: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !627, file: !630, baseType: !168, size: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !627, file: !630, baseType: !168, size: 64, offset: 128)
!634 = !{!635, !636, !637, !638, !639, !640}
!635 = !DILocalVariable(name: "status", arg: 1, scope: !623, file: !616, line: 298, type: !118)
!636 = !DILocalVariable(name: "errnum", arg: 2, scope: !623, file: !616, line: 298, type: !118)
!637 = !DILocalVariable(name: "file_name", arg: 3, scope: !623, file: !616, line: 298, type: !173)
!638 = !DILocalVariable(name: "line_number", arg: 4, scope: !623, file: !616, line: 298, type: !112)
!639 = !DILocalVariable(name: "message", arg: 5, scope: !623, file: !616, line: 298, type: !173)
!640 = !DILocalVariable(name: "args", arg: 6, scope: !623, file: !616, line: 298, type: !626)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(name: "old_line_number", scope: !623, file: !616, line: 305, type: !112, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !616, line: 338, type: !19, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !616, line: 346, type: !361, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !616, line: 346, type: !219, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(name: "error_message_count", scope: !615, file: !616, line: 69, type: !112, isLocal: false, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !615, file: !616, line: 295, type: !118, isLocal: false, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !616, line: 208, type: !356, isLocal: true, isDefinition: true)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !616, line: 208, type: !657, isLocal: true, isDefinition: true)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !658)
!658 = !{!659}
!659 = !DISubrange(count: 21)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !616, line: 214, type: !325, isLocal: true, isDefinition: true)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{null}
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(name: "program_name", scope: !667, file: !668, line: 31, type: !173, isLocal: false, isDefinition: true)
!667 = distinct !DICompileUnit(language: DW_LANG_C11, file: !668, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !669, globals: !670, splitDebugInlining: false, nameTableKind: None)
!668 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!669 = !{!167}
!670 = !{!665, !671, !673}
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !668, line: 46, type: !361, isLocal: true, isDefinition: true)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !668, line: 49, type: !19, isLocal: true, isDefinition: true)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(name: "utf07FF", scope: !677, file: !678, line: 46, type: !705, isLocal: true, isDefinition: true)
!677 = distinct !DISubprogram(name: "proper_name_lite", scope: !678, file: !678, line: 38, type: !679, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !683)
!678 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!679 = !DISubroutineType(types: !680)
!680 = !{!173, !173, !173}
!681 = distinct !DICompileUnit(language: DW_LANG_C11, file: !678, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !682, splitDebugInlining: false, nameTableKind: None)
!682 = !{!675}
!683 = !{!684, !685, !686, !687, !692}
!684 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !677, file: !678, line: 38, type: !173)
!685 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !677, file: !678, line: 38, type: !173)
!686 = !DILocalVariable(name: "translation", scope: !677, file: !678, line: 40, type: !173)
!687 = !DILocalVariable(name: "w", scope: !677, file: !678, line: 47, type: !688)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !689, line: 37, baseType: !690)
!689 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !292, line: 57, baseType: !691)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !292, line: 42, baseType: !112)
!692 = !DILocalVariable(name: "mbs", scope: !677, file: !678, line: 48, type: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !694, line: 6, baseType: !695)
!694 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !696, line: 21, baseType: !697)
!696 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !696, line: 13, size: 64, elements: !698)
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !697, file: !696, line: 15, baseType: !118, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !697, file: !696, line: 20, baseType: !701, size: 32, offset: 32)
!701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !697, file: !696, line: 16, size: 32, elements: !702)
!702 = !{!703, !704}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !701, file: !696, line: 18, baseType: !112, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !701, file: !696, line: 19, baseType: !19, size: 32)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 16, elements: !220)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !708, line: 78, type: !361, isLocal: true, isDefinition: true)
!708 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !708, line: 79, type: !334, isLocal: true, isDefinition: true)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(scope: null, file: !708, line: 80, type: !202, isLocal: true, isDefinition: true)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(scope: null, file: !708, line: 81, type: !202, isLocal: true, isDefinition: true)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(scope: null, file: !708, line: 82, type: !314, isLocal: true, isDefinition: true)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(scope: null, file: !708, line: 83, type: !219, isLocal: true, isDefinition: true)
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression())
!720 = distinct !DIGlobalVariable(scope: null, file: !708, line: 84, type: !361, isLocal: true, isDefinition: true)
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(scope: null, file: !708, line: 85, type: !356, isLocal: true, isDefinition: true)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(scope: null, file: !708, line: 86, type: !356, isLocal: true, isDefinition: true)
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(scope: null, file: !708, line: 87, type: !361, isLocal: true, isDefinition: true)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !729, file: !708, line: 76, type: !801, isLocal: false, isDefinition: true)
!729 = distinct !DICompileUnit(language: DW_LANG_C11, file: !708, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !730, retainedTypes: !736, globals: !737, splitDebugInlining: false, nameTableKind: None)
!730 = !{!143, !731, !128}
!731 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !144, line: 254, baseType: !112, size: 32, elements: !732)
!732 = !{!733, !734, !735}
!733 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!734 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!735 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!736 = !{!118, !169, !170}
!737 = !{!706, !709, !711, !713, !715, !717, !719, !721, !723, !725, !727, !738, !742, !752, !754, !759, !761, !763, !765, !767, !790, !797, !799}
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !729, file: !708, line: 92, type: !740, isLocal: false, isDefinition: true)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 320, elements: !95)
!741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !729, file: !708, line: 1040, type: !744, isLocal: false, isDefinition: true)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !708, line: 56, size: 448, elements: !745)
!745 = !{!746, !747, !748, !750, !751}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !744, file: !708, line: 59, baseType: !143, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !744, file: !708, line: 62, baseType: !118, size: 32, offset: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !744, file: !708, line: 66, baseType: !749, size: 256, offset: 64)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 256, elements: !362)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !744, file: !708, line: 69, baseType: !173, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !744, file: !708, line: 72, baseType: !173, size: 64, offset: 384)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !729, file: !708, line: 107, type: !744, isLocal: true, isDefinition: true)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(name: "slot0", scope: !729, file: !708, line: 831, type: !756, isLocal: true, isDefinition: true)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !757)
!757 = !{!758}
!758 = !DISubrange(count: 256)
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !708, line: 321, type: !219, isLocal: true, isDefinition: true)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !708, line: 357, type: !219, isLocal: true, isDefinition: true)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(scope: null, file: !708, line: 358, type: !219, isLocal: true, isDefinition: true)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(scope: null, file: !708, line: 199, type: !356, isLocal: true, isDefinition: true)
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(name: "quote", scope: !769, file: !708, line: 228, type: !788, isLocal: true, isDefinition: true)
!769 = distinct !DISubprogram(name: "gettext_quote", scope: !708, file: !708, line: 197, type: !770, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !772)
!770 = !DISubroutineType(types: !771)
!771 = !{!173, !173, !143}
!772 = !{!773, !774, !775, !776, !777}
!773 = !DILocalVariable(name: "msgid", arg: 1, scope: !769, file: !708, line: 197, type: !173)
!774 = !DILocalVariable(name: "s", arg: 2, scope: !769, file: !708, line: 197, type: !143)
!775 = !DILocalVariable(name: "translation", scope: !769, file: !708, line: 199, type: !173)
!776 = !DILocalVariable(name: "w", scope: !769, file: !708, line: 229, type: !688)
!777 = !DILocalVariable(name: "mbs", scope: !769, file: !708, line: 230, type: !778)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !694, line: 6, baseType: !779)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !696, line: 21, baseType: !780)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !696, line: 13, size: 64, elements: !781)
!781 = !{!782, !783}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !780, file: !696, line: 15, baseType: !118, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !780, file: !696, line: 20, baseType: !784, size: 32, offset: 32)
!784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !780, file: !696, line: 16, size: 32, elements: !785)
!785 = !{!786, !787}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !784, file: !696, line: 18, baseType: !112, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !784, file: !696, line: 19, baseType: !19, size: 32)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 64, elements: !789)
!789 = !{!221, !21}
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(name: "slotvec", scope: !729, file: !708, line: 834, type: !792, isLocal: true, isDefinition: true)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !708, line: 823, size: 128, elements: !794)
!794 = !{!795, !796}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !793, file: !708, line: 825, baseType: !170, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !793, file: !708, line: 826, baseType: !167, size: 64, offset: 64)
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression())
!798 = distinct !DIGlobalVariable(name: "nslots", scope: !729, file: !708, line: 832, type: !118, isLocal: true, isDefinition: true)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(name: "slotvec0", scope: !729, file: !708, line: 833, type: !793, isLocal: true, isDefinition: true)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 704, elements: !434)
!802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!803 = !DIGlobalVariableExpression(var: !804, expr: !DIExpression())
!804 = distinct !DIGlobalVariable(scope: null, file: !805, line: 67, type: !104, isLocal: true, isDefinition: true)
!805 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(scope: null, file: !805, line: 69, type: !356, isLocal: true, isDefinition: true)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(scope: null, file: !805, line: 83, type: !356, isLocal: true, isDefinition: true)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(scope: null, file: !805, line: 83, type: !19, isLocal: true, isDefinition: true)
!812 = !DIGlobalVariableExpression(var: !813, expr: !DIExpression())
!813 = distinct !DIGlobalVariable(scope: null, file: !805, line: 85, type: !219, isLocal: true, isDefinition: true)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(scope: null, file: !805, line: 88, type: !816, isLocal: true, isDefinition: true)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !817)
!817 = !{!818}
!818 = !DISubrange(count: 171)
!819 = !DIGlobalVariableExpression(var: !820, expr: !DIExpression())
!820 = distinct !DIGlobalVariable(scope: null, file: !805, line: 88, type: !514, isLocal: true, isDefinition: true)
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(scope: null, file: !805, line: 105, type: !197, isLocal: true, isDefinition: true)
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(scope: null, file: !805, line: 109, type: !547, isLocal: true, isDefinition: true)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(scope: null, file: !805, line: 113, type: !827, isLocal: true, isDefinition: true)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 28)
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(scope: null, file: !805, line: 120, type: !500, isLocal: true, isDefinition: true)
!832 = !DIGlobalVariableExpression(var: !833, expr: !DIExpression())
!833 = distinct !DIGlobalVariable(scope: null, file: !805, line: 127, type: !834, isLocal: true, isDefinition: true)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !835)
!835 = !{!836}
!836 = !DISubrange(count: 36)
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression())
!838 = distinct !DIGlobalVariable(scope: null, file: !805, line: 134, type: !383, isLocal: true, isDefinition: true)
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression())
!840 = distinct !DIGlobalVariable(scope: null, file: !805, line: 142, type: !841, isLocal: true, isDefinition: true)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !842)
!842 = !{!843}
!843 = !DISubrange(count: 44)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(scope: null, file: !805, line: 150, type: !846, isLocal: true, isDefinition: true)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !847)
!847 = !{!848}
!848 = !DISubrange(count: 48)
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(scope: null, file: !805, line: 159, type: !851, isLocal: true, isDefinition: true)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !852)
!852 = !{!853}
!853 = !DISubrange(count: 52)
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(scope: null, file: !805, line: 170, type: !856, isLocal: true, isDefinition: true)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !857)
!857 = !{!858}
!858 = !DISubrange(count: 60)
!859 = !DIGlobalVariableExpression(var: !860, expr: !DIExpression())
!860 = distinct !DIGlobalVariable(scope: null, file: !805, line: 248, type: !314, isLocal: true, isDefinition: true)
!861 = !DIGlobalVariableExpression(var: !862, expr: !DIExpression())
!862 = distinct !DIGlobalVariable(scope: null, file: !805, line: 248, type: !405, isLocal: true, isDefinition: true)
!863 = !DIGlobalVariableExpression(var: !864, expr: !DIExpression())
!864 = distinct !DIGlobalVariable(scope: null, file: !805, line: 254, type: !314, isLocal: true, isDefinition: true)
!865 = !DIGlobalVariableExpression(var: !866, expr: !DIExpression())
!866 = distinct !DIGlobalVariable(scope: null, file: !805, line: 254, type: !187, isLocal: true, isDefinition: true)
!867 = !DIGlobalVariableExpression(var: !868, expr: !DIExpression())
!868 = distinct !DIGlobalVariable(scope: null, file: !805, line: 254, type: !383, isLocal: true, isDefinition: true)
!869 = !DIGlobalVariableExpression(var: !870, expr: !DIExpression())
!870 = distinct !DIGlobalVariable(scope: null, file: !805, line: 259, type: !3, isLocal: true, isDefinition: true)
!871 = !DIGlobalVariableExpression(var: !872, expr: !DIExpression())
!872 = distinct !DIGlobalVariable(scope: null, file: !805, line: 259, type: !537, isLocal: true, isDefinition: true)
!873 = !DIGlobalVariableExpression(var: !874, expr: !DIExpression())
!874 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !875, file: !876, line: 26, type: !878, isLocal: false, isDefinition: true)
!875 = distinct !DICompileUnit(language: DW_LANG_C11, file: !876, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !877, splitDebugInlining: false, nameTableKind: None)
!876 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!877 = !{!873}
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 376, elements: !879)
!879 = !{!880}
!880 = !DISubrange(count: 47)
!881 = !DIGlobalVariableExpression(var: !882, expr: !DIExpression())
!882 = distinct !DIGlobalVariable(name: "exit_failure", scope: !883, file: !884, line: 24, type: !886, isLocal: false, isDefinition: true)
!883 = distinct !DICompileUnit(language: DW_LANG_C11, file: !884, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !885, splitDebugInlining: false, nameTableKind: None)
!884 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!885 = !{!881}
!886 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !118)
!887 = !DIGlobalVariableExpression(var: !888, expr: !DIExpression())
!888 = distinct !DIGlobalVariable(scope: null, file: !889, line: 34, type: !345, isLocal: true, isDefinition: true)
!889 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!890 = !DIGlobalVariableExpression(var: !891, expr: !DIExpression())
!891 = distinct !DIGlobalVariable(scope: null, file: !889, line: 34, type: !356, isLocal: true, isDefinition: true)
!892 = !DIGlobalVariableExpression(var: !893, expr: !DIExpression())
!893 = distinct !DIGlobalVariable(scope: null, file: !889, line: 34, type: !378, isLocal: true, isDefinition: true)
!894 = !DIGlobalVariableExpression(var: !895, expr: !DIExpression())
!895 = distinct !DIGlobalVariable(scope: null, file: !896, line: 108, type: !89, isLocal: true, isDefinition: true)
!896 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!897 = !DIGlobalVariableExpression(var: !898, expr: !DIExpression())
!898 = distinct !DIGlobalVariable(name: "internal_state", scope: !899, file: !896, line: 97, type: !902, isLocal: true, isDefinition: true)
!899 = distinct !DICompileUnit(language: DW_LANG_C11, file: !896, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !900, globals: !901, splitDebugInlining: false, nameTableKind: None)
!900 = !{!168, !170, !175}
!901 = !{!894, !897}
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !694, line: 6, baseType: !903)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !696, line: 21, baseType: !904)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !696, line: 13, size: 64, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !904, file: !696, line: 15, baseType: !118, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !904, file: !696, line: 20, baseType: !908, size: 32, offset: 32)
!908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !904, file: !696, line: 16, size: 32, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !908, file: !696, line: 18, baseType: !112, size: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !908, file: !696, line: 19, baseType: !19, size: 32)
!912 = !DIGlobalVariableExpression(var: !913, expr: !DIExpression())
!913 = distinct !DIGlobalVariable(scope: null, file: !914, line: 35, type: !334, isLocal: true, isDefinition: true)
!914 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!915 = distinct !DICompileUnit(language: DW_LANG_C11, file: !916, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !917, splitDebugInlining: false, nameTableKind: None)
!916 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!917 = !{!157}
!918 = distinct !DICompileUnit(language: DW_LANG_C11, file: !919, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!919 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!920 = distinct !DICompileUnit(language: DW_LANG_C11, file: !921, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !922, splitDebugInlining: false, nameTableKind: None)
!921 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!922 = !{!168}
!923 = distinct !DICompileUnit(language: DW_LANG_C11, file: !924, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!924 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!925 = distinct !DICompileUnit(language: DW_LANG_C11, file: !926, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !922, splitDebugInlining: false, nameTableKind: None)
!926 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!927 = distinct !DICompileUnit(language: DW_LANG_C11, file: !928, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !929, splitDebugInlining: false, nameTableKind: None)
!928 = !DIFile(filename: "lib/getndelim2.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d286772550dcd0d4e4164dd1f736b40f")
!929 = !{!176}
!930 = distinct !DICompileUnit(language: DW_LANG_C11, file: !931, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!931 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!932 = distinct !DICompileUnit(language: DW_LANG_C11, file: !933, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !934, splitDebugInlining: false, nameTableKind: None)
!933 = !DIFile(filename: "lib/memchr2.c", directory: "/src", checksumkind: CSK_MD5, checksum: "02120b13899f3db9fd2d834284ba56fe")
!934 = !{!175, !168, !935, !936}
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !461, line: 90, baseType: !172)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!938 = distinct !DICompileUnit(language: DW_LANG_C11, file: !805, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !939, retainedTypes: !922, globals: !943, splitDebugInlining: false, nameTableKind: None)
!939 = !{!940}
!940 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !805, line: 40, baseType: !112, size: 32, elements: !941)
!941 = !{!942}
!942 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!943 = !{!803, !806, !808, !810, !812, !814, !819, !821, !823, !825, !830, !832, !837, !839, !844, !849, !854, !859, !861, !863, !865, !867, !869, !871}
!944 = distinct !DICompileUnit(language: DW_LANG_C11, file: !945, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !946, retainedTypes: !974, splitDebugInlining: false, nameTableKind: None)
!945 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!946 = !{!947, !959}
!947 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !948, file: !945, line: 188, baseType: !112, size: 32, elements: !957)
!948 = distinct !DISubprogram(name: "x2nrealloc", scope: !945, file: !945, line: 176, type: !949, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !952)
!949 = !DISubroutineType(types: !950)
!950 = !{!168, !168, !951, !170}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!952 = !{!953, !954, !955, !956}
!953 = !DILocalVariable(name: "p", arg: 1, scope: !948, file: !945, line: 176, type: !168)
!954 = !DILocalVariable(name: "pn", arg: 2, scope: !948, file: !945, line: 176, type: !951)
!955 = !DILocalVariable(name: "s", arg: 3, scope: !948, file: !945, line: 176, type: !170)
!956 = !DILocalVariable(name: "n", scope: !948, file: !945, line: 178, type: !170)
!957 = !{!958}
!958 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!959 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !960, file: !945, line: 228, baseType: !112, size: 32, elements: !957)
!960 = distinct !DISubprogram(name: "xpalloc", scope: !945, file: !945, line: 223, type: !961, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !964)
!961 = !DISubroutineType(types: !962)
!962 = !{!168, !168, !963, !563, !565, !563}
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!964 = !{!965, !966, !967, !968, !969, !970, !971, !972, !973}
!965 = !DILocalVariable(name: "pa", arg: 1, scope: !960, file: !945, line: 223, type: !168)
!966 = !DILocalVariable(name: "pn", arg: 2, scope: !960, file: !945, line: 223, type: !963)
!967 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !960, file: !945, line: 223, type: !563)
!968 = !DILocalVariable(name: "n_max", arg: 4, scope: !960, file: !945, line: 223, type: !565)
!969 = !DILocalVariable(name: "s", arg: 5, scope: !960, file: !945, line: 223, type: !563)
!970 = !DILocalVariable(name: "n0", scope: !960, file: !945, line: 230, type: !563)
!971 = !DILocalVariable(name: "n", scope: !960, file: !945, line: 237, type: !563)
!972 = !DILocalVariable(name: "nbytes", scope: !960, file: !945, line: 248, type: !563)
!973 = !DILocalVariable(name: "adjusted_nbytes", scope: !960, file: !945, line: 252, type: !563)
!974 = !{!167, !168, !224, !293, !172}
!975 = distinct !DICompileUnit(language: DW_LANG_C11, file: !889, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !976, splitDebugInlining: false, nameTableKind: None)
!976 = !{!887, !890, !892}
!977 = distinct !DICompileUnit(language: DW_LANG_C11, file: !978, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !922, splitDebugInlining: false, nameTableKind: None)
!978 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!979 = distinct !DICompileUnit(language: DW_LANG_C11, file: !980, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!980 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!981 = distinct !DICompileUnit(language: DW_LANG_C11, file: !982, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !983, splitDebugInlining: false, nameTableKind: None)
!982 = !DIFile(filename: "lib/freadptr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c5958d0c7223ea506787ed1086f8c77f")
!983 = !{!173}
!984 = distinct !DICompileUnit(language: DW_LANG_C11, file: !985, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !986, splitDebugInlining: false, nameTableKind: None)
!985 = !DIFile(filename: "lib/freadseek.c", directory: "/src", checksumkind: CSK_MD5, checksum: "65aa8ebe67d000642bdd4080692a0013")
!986 = !{!168, !172}
!987 = distinct !DICompileUnit(language: DW_LANG_C11, file: !988, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !989, splitDebugInlining: false, nameTableKind: None)
!988 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!989 = !{!224, !172, !168}
!990 = distinct !DICompileUnit(language: DW_LANG_C11, file: !991, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!991 = !DIFile(filename: "lib/freadahead.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0335573db6cc583acb894a308e230b2b")
!992 = distinct !DICompileUnit(language: DW_LANG_C11, file: !914, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !993, splitDebugInlining: false, nameTableKind: None)
!993 = !{!994, !912}
!994 = !DIGlobalVariableExpression(var: !995, expr: !DIExpression())
!995 = distinct !DIGlobalVariable(scope: null, file: !914, line: 35, type: !219, isLocal: true, isDefinition: true)
!996 = distinct !DICompileUnit(language: DW_LANG_C11, file: !997, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!997 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!998 = distinct !DICompileUnit(language: DW_LANG_C11, file: !999, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !922, splitDebugInlining: false, nameTableKind: None)
!999 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1000 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!1001 = !{i32 7, !"Dwarf Version", i32 5}
!1002 = !{i32 2, !"Debug Info Version", i32 3}
!1003 = !{i32 1, !"wchar_size", i32 4}
!1004 = !{i32 8, !"PIC Level", i32 2}
!1005 = !{i32 7, !"PIE Level", i32 2}
!1006 = !{i32 7, !"uwtable", i32 2}
!1007 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 125, type: !1008, scopeLine: 126, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1010)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{null, !118}
!1010 = !{!1011}
!1011 = !DILocalVariable(name: "status", arg: 1, scope: !1007, file: !2, line: 125, type: !118)
!1012 = !DILocation(line: 0, scope: !1007)
!1013 = !DILocation(line: 127, column: 14, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 127, column: 7)
!1015 = !DILocation(line: 127, column: 7, scope: !1007)
!1016 = !DILocation(line: 128, column: 5, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 128, column: 5)
!1018 = !{!1019, !1019, i64 0}
!1019 = !{!"any pointer", !1020, i64 0}
!1020 = !{!"omnipotent char", !1021, i64 0}
!1021 = !{!"Simple C/C++ TBAA"}
!1022 = !DILocation(line: 131, column: 7, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 130, column: 5)
!1024 = !DILocation(line: 135, column: 7, scope: !1023)
!1025 = !DILocation(line: 729, column: 3, scope: !1026, inlinedAt: !1028)
!1026 = distinct !DISubprogram(name: "emit_stdin_note", scope: !117, file: !117, line: 727, type: !663, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1027)
!1027 = !{}
!1028 = distinct !DILocation(line: 139, column: 7, scope: !1023)
!1029 = !DILocation(line: 736, column: 3, scope: !1030, inlinedAt: !1031)
!1030 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !117, file: !117, line: 734, type: !663, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1027)
!1031 = distinct !DILocation(line: 140, column: 7, scope: !1023)
!1032 = !DILocation(line: 142, column: 7, scope: !1023)
!1033 = !DILocation(line: 146, column: 7, scope: !1023)
!1034 = !DILocation(line: 150, column: 7, scope: !1023)
!1035 = !DILocation(line: 154, column: 7, scope: !1023)
!1036 = !DILocation(line: 159, column: 7, scope: !1023)
!1037 = !DILocation(line: 163, column: 7, scope: !1023)
!1038 = !DILocation(line: 167, column: 7, scope: !1023)
!1039 = !DILocation(line: 171, column: 7, scope: !1023)
!1040 = !DILocation(line: 176, column: 7, scope: !1023)
!1041 = !DILocation(line: 180, column: 7, scope: !1023)
!1042 = !DILocation(line: 181, column: 7, scope: !1023)
!1043 = !DILocation(line: 182, column: 7, scope: !1023)
!1044 = !DILocation(line: 188, column: 7, scope: !1023)
!1045 = !DILocalVariable(name: "program", arg: 1, scope: !1046, file: !117, line: 836, type: !173)
!1046 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !117, file: !117, line: 836, type: !1047, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1049)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !173}
!1049 = !{!1045, !1050, !1057, !1058, !1060, !1061}
!1050 = !DILocalVariable(name: "infomap", scope: !1046, file: !117, line: 838, type: !1051)
!1051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1052, size: 896, elements: !357)
!1052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1053)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1046, file: !117, line: 838, size: 128, elements: !1054)
!1054 = !{!1055, !1056}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1053, file: !117, line: 838, baseType: !173, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1053, file: !117, line: 838, baseType: !173, size: 64, offset: 64)
!1057 = !DILocalVariable(name: "node", scope: !1046, file: !117, line: 848, type: !173)
!1058 = !DILocalVariable(name: "map_prog", scope: !1046, file: !117, line: 849, type: !1059)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1060 = !DILocalVariable(name: "lc_messages", scope: !1046, file: !117, line: 861, type: !173)
!1061 = !DILocalVariable(name: "url_program", scope: !1046, file: !117, line: 874, type: !173)
!1062 = !DILocation(line: 0, scope: !1046, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 196, column: 7, scope: !1023)
!1064 = !DILocation(line: 857, column: 3, scope: !1046, inlinedAt: !1063)
!1065 = !DILocation(line: 861, column: 29, scope: !1046, inlinedAt: !1063)
!1066 = !DILocation(line: 862, column: 7, scope: !1067, inlinedAt: !1063)
!1067 = distinct !DILexicalBlock(scope: !1046, file: !117, line: 862, column: 7)
!1068 = !DILocation(line: 862, column: 19, scope: !1067, inlinedAt: !1063)
!1069 = !DILocation(line: 862, column: 22, scope: !1067, inlinedAt: !1063)
!1070 = !DILocation(line: 862, column: 7, scope: !1046, inlinedAt: !1063)
!1071 = !DILocation(line: 868, column: 7, scope: !1072, inlinedAt: !1063)
!1072 = distinct !DILexicalBlock(scope: !1067, file: !117, line: 863, column: 5)
!1073 = !DILocation(line: 870, column: 5, scope: !1072, inlinedAt: !1063)
!1074 = !DILocation(line: 875, column: 3, scope: !1046, inlinedAt: !1063)
!1075 = !DILocation(line: 877, column: 3, scope: !1046, inlinedAt: !1063)
!1076 = !DILocation(line: 198, column: 3, scope: !1007)
!1077 = !DISubprogram(name: "dcgettext", scope: !1078, file: !1078, line: 51, type: !1079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1078 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!167, !173, !173, !118}
!1081 = !DISubprogram(name: "__fprintf_chk", scope: !1082, file: !1082, line: 93, type: !1083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1082 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!118, !1085, !118, !1086, null}
!1085 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !265)
!1086 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !173)
!1087 = !DISubprogram(name: "__printf_chk", scope: !1082, file: !1082, line: 95, type: !1088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!118, !118, !1086, null}
!1090 = !DISubprogram(name: "fputs_unlocked", scope: !1091, file: !1091, line: 691, type: !1092, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1091 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!118, !1086, !1085}
!1094 = !DILocation(line: 0, scope: !243)
!1095 = !DILocation(line: 581, column: 7, scope: !251)
!1096 = !{!1097, !1097, i64 0}
!1097 = !{!"int", !1020, i64 0}
!1098 = !DILocation(line: 581, column: 19, scope: !251)
!1099 = !DILocation(line: 581, column: 7, scope: !243)
!1100 = !DILocation(line: 585, column: 26, scope: !250)
!1101 = !DILocation(line: 0, scope: !250)
!1102 = !DILocation(line: 586, column: 23, scope: !250)
!1103 = !DILocation(line: 586, column: 28, scope: !250)
!1104 = !DILocation(line: 586, column: 32, scope: !250)
!1105 = !{!1020, !1020, i64 0}
!1106 = !DILocation(line: 586, column: 38, scope: !250)
!1107 = !DILocalVariable(name: "__s1", arg: 1, scope: !1108, file: !1109, line: 1359, type: !173)
!1108 = distinct !DISubprogram(name: "streq", scope: !1109, file: !1109, line: 1359, type: !1110, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1112)
!1109 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!224, !173, !173}
!1112 = !{!1107, !1113}
!1113 = !DILocalVariable(name: "__s2", arg: 2, scope: !1108, file: !1109, line: 1359, type: !173)
!1114 = !DILocation(line: 0, scope: !1108, inlinedAt: !1115)
!1115 = distinct !DILocation(line: 586, column: 41, scope: !250)
!1116 = !DILocation(line: 1361, column: 11, scope: !1108, inlinedAt: !1115)
!1117 = !DILocation(line: 1361, column: 10, scope: !1108, inlinedAt: !1115)
!1118 = !DILocation(line: 586, column: 19, scope: !250)
!1119 = !DILocation(line: 587, column: 5, scope: !250)
!1120 = !DILocation(line: 588, column: 7, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !243, file: !117, line: 588, column: 7)
!1122 = !DILocation(line: 588, column: 7, scope: !243)
!1123 = !DILocation(line: 590, column: 7, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1121, file: !117, line: 589, column: 5)
!1125 = !DILocation(line: 591, column: 7, scope: !1124)
!1126 = !DILocation(line: 595, column: 37, scope: !243)
!1127 = !DILocation(line: 595, column: 35, scope: !243)
!1128 = !DILocation(line: 596, column: 29, scope: !243)
!1129 = !DILocation(line: 597, column: 8, scope: !258)
!1130 = !DILocation(line: 597, column: 7, scope: !243)
!1131 = !DILocation(line: 604, column: 24, scope: !257)
!1132 = !DILocation(line: 604, column: 12, scope: !258)
!1133 = !DILocation(line: 0, scope: !256)
!1134 = !DILocation(line: 610, column: 16, scope: !256)
!1135 = !DILocation(line: 610, column: 7, scope: !256)
!1136 = !DILocation(line: 611, column: 21, scope: !256)
!1137 = !{!1138, !1138, i64 0}
!1138 = !{!"short", !1020, i64 0}
!1139 = !DILocation(line: 611, column: 19, scope: !256)
!1140 = !DILocation(line: 611, column: 16, scope: !256)
!1141 = !DILocation(line: 610, column: 30, scope: !256)
!1142 = distinct !{!1142, !1135, !1136, !1143}
!1143 = !{!"llvm.loop.mustprogress"}
!1144 = !DILocation(line: 612, column: 18, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !256, file: !117, line: 612, column: 11)
!1146 = !DILocation(line: 612, column: 11, scope: !256)
!1147 = !DILocation(line: 618, column: 5, scope: !256)
!1148 = !DILocation(line: 620, column: 23, scope: !243)
!1149 = !DILocation(line: 625, column: 39, scope: !243)
!1150 = !DILocation(line: 626, column: 3, scope: !243)
!1151 = !DILocation(line: 626, column: 10, scope: !243)
!1152 = !DILocation(line: 626, column: 21, scope: !243)
!1153 = !DILocation(line: 628, column: 44, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !117, line: 628, column: 11)
!1155 = distinct !DILexicalBlock(scope: !243, file: !117, line: 627, column: 5)
!1156 = !DILocation(line: 628, column: 32, scope: !1154)
!1157 = !DILocation(line: 628, column: 49, scope: !1154)
!1158 = !DILocation(line: 628, column: 11, scope: !1155)
!1159 = !DILocation(line: 630, column: 11, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1155, file: !117, line: 630, column: 11)
!1161 = !DILocation(line: 630, column: 11, scope: !1155)
!1162 = !DILocation(line: 632, column: 26, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !117, line: 632, column: 15)
!1164 = distinct !DILexicalBlock(scope: !1160, file: !117, line: 631, column: 9)
!1165 = !DILocation(line: 632, column: 34, scope: !1163)
!1166 = !DILocation(line: 632, column: 37, scope: !1163)
!1167 = !DILocation(line: 632, column: 15, scope: !1164)
!1168 = !DILocation(line: 636, column: 16, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1164, file: !117, line: 636, column: 15)
!1170 = !DILocation(line: 636, column: 29, scope: !1169)
!1171 = !DILocation(line: 640, column: 16, scope: !1155)
!1172 = distinct !{!1172, !1150, !1173, !1143}
!1173 = !DILocation(line: 641, column: 5, scope: !243)
!1174 = !DILocation(line: 644, column: 3, scope: !243)
!1175 = !DILocation(line: 0, scope: !1108, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 648, column: 31, scope: !243)
!1177 = !DILocation(line: 0, scope: !1108, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 649, column: 31, scope: !243)
!1179 = !DILocation(line: 0, scope: !1108, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 650, column: 31, scope: !243)
!1181 = !DILocation(line: 0, scope: !1108, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 651, column: 31, scope: !243)
!1183 = !DILocation(line: 0, scope: !1108, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 652, column: 31, scope: !243)
!1185 = !DILocation(line: 0, scope: !1108, inlinedAt: !1186)
!1186 = distinct !DILocation(line: 653, column: 31, scope: !243)
!1187 = !DILocation(line: 0, scope: !1108, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 654, column: 31, scope: !243)
!1189 = !DILocation(line: 0, scope: !1108, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 655, column: 31, scope: !243)
!1191 = !DILocation(line: 0, scope: !1108, inlinedAt: !1192)
!1192 = distinct !DILocation(line: 656, column: 31, scope: !243)
!1193 = !DILocation(line: 0, scope: !1108, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 657, column: 31, scope: !243)
!1195 = !DILocation(line: 663, column: 7, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !243, file: !117, line: 663, column: 7)
!1197 = !DILocation(line: 664, column: 7, scope: !1196)
!1198 = !DILocation(line: 664, column: 10, scope: !1196)
!1199 = !DILocation(line: 663, column: 7, scope: !243)
!1200 = !DILocation(line: 669, column: 7, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1196, file: !117, line: 665, column: 5)
!1202 = !DILocation(line: 671, column: 5, scope: !1201)
!1203 = !DILocation(line: 676, column: 7, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1196, file: !117, line: 673, column: 5)
!1205 = !DILocation(line: 679, column: 3, scope: !243)
!1206 = !DILocation(line: 683, column: 3, scope: !243)
!1207 = !DILocation(line: 686, column: 3, scope: !243)
!1208 = !DILocation(line: 688, column: 3, scope: !243)
!1209 = !DILocation(line: 691, column: 3, scope: !243)
!1210 = !DILocation(line: 695, column: 3, scope: !243)
!1211 = !DILocation(line: 696, column: 1, scope: !243)
!1212 = !DISubprogram(name: "setlocale", scope: !1213, file: !1213, line: 122, type: !1214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1213 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!167, !118, !173}
!1216 = !DISubprogram(name: "strncmp", scope: !1217, file: !1217, line: 159, type: !1218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1217 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!118, !173, !173, !170}
!1220 = !DISubprogram(name: "exit", scope: !1221, file: !1221, line: 624, type: !1008, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1221 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1222 = !DISubprogram(name: "getenv", scope: !1221, file: !1221, line: 641, type: !1223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!167, !173}
!1225 = !DISubprogram(name: "strcmp", scope: !1217, file: !1217, line: 156, type: !1226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!118, !173, !173}
!1228 = !DISubprogram(name: "strspn", scope: !1217, file: !1217, line: 297, type: !1229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!172, !173, !173}
!1231 = !DISubprogram(name: "strchr", scope: !1217, file: !1217, line: 246, type: !1232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!167, !173, !118}
!1234 = !DISubprogram(name: "__ctype_b_loc", scope: !129, file: !129, line: 79, type: !1235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!1237}
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!1240 = !DISubprogram(name: "strcspn", scope: !1217, file: !1217, line: 293, type: !1229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1241 = !DISubprogram(name: "fwrite_unlocked", scope: !1091, file: !1091, line: 704, type: !1242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!170, !1244, !170, !170, !1085}
!1244 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1245)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1247 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 495, type: !1248, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1251)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!118, !118, !1250}
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!1251 = !{!1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259}
!1252 = !DILocalVariable(name: "argc", arg: 1, scope: !1247, file: !2, line: 495, type: !118)
!1253 = !DILocalVariable(name: "argv", arg: 2, scope: !1247, file: !2, line: 495, type: !1250)
!1254 = !DILocalVariable(name: "optc", scope: !1247, file: !2, line: 497, type: !118)
!1255 = !DILocalVariable(name: "ok", scope: !1247, file: !2, line: 498, type: !224)
!1256 = !DILocalVariable(name: "delim_specified", scope: !1247, file: !2, line: 499, type: !224)
!1257 = !DILocalVariable(name: "byte_mode", scope: !1247, file: !2, line: 500, type: !224)
!1258 = !DILocalVariable(name: "spec_list_string", scope: !1247, file: !2, line: 501, type: !167)
!1259 = !DILocalVariable(name: "cut_stream", scope: !1247, file: !2, line: 595, type: !1260)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{null, !265}
!1263 = !DILocation(line: 0, scope: !1247)
!1264 = !DILocation(line: 504, column: 21, scope: !1247)
!1265 = !DILocation(line: 504, column: 3, scope: !1247)
!1266 = !DILocation(line: 505, column: 3, scope: !1247)
!1267 = !DILocation(line: 506, column: 3, scope: !1247)
!1268 = !DILocation(line: 507, column: 3, scope: !1247)
!1269 = !DILocation(line: 509, column: 3, scope: !1247)
!1270 = !DILocation(line: 511, column: 3, scope: !1247)
!1271 = !DILocation(line: 511, column: 18, scope: !1247)
!1272 = distinct !{!1272, !1270, !1273, !1143}
!1273 = !DILocation(line: 565, column: 5, scope: !1247)
!1274 = !DILocation(line: 523, column: 15, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 523, column: 15)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !2, line: 515, column: 9)
!1277 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 513, column: 5)
!1278 = !DILocation(line: 523, column: 15, scope: !1276)
!1279 = !DILocation(line: 524, column: 13, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1275, file: !2, line: 524, column: 13)
!1281 = !DILocation(line: 525, column: 30, scope: !1276)
!1282 = !DILocation(line: 526, column: 11, scope: !1276)
!1283 = !DILocation(line: 531, column: 15, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 531, column: 15)
!1285 = !DILocation(line: 531, column: 25, scope: !1284)
!1286 = !DILocation(line: 531, column: 33, scope: !1284)
!1287 = !DILocation(line: 531, column: 36, scope: !1284)
!1288 = !DILocation(line: 531, column: 46, scope: !1284)
!1289 = !DILocation(line: 531, column: 15, scope: !1276)
!1290 = !DILocation(line: 532, column: 13, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 532, column: 13)
!1292 = !DILocation(line: 533, column: 17, scope: !1276)
!1293 = !DILocation(line: 535, column: 11, scope: !1276)
!1294 = !DILocation(line: 540, column: 38, scope: !1276)
!1295 = !DILocation(line: 540, column: 48, scope: !1276)
!1296 = !DILocation(line: 541, column: 44, scope: !1276)
!1297 = !DILocation(line: 540, column: 35, scope: !1276)
!1298 = !{!1299, !1299, i64 0}
!1299 = !{!"long", !1020, i64 0}
!1300 = !DILocation(line: 542, column: 35, scope: !1276)
!1301 = !DILocation(line: 543, column: 11, scope: !1276)
!1302 = !DILocation(line: 549, column: 34, scope: !1276)
!1303 = !DILocation(line: 550, column: 11, scope: !1276)
!1304 = !DILocation(line: 553, column: 22, scope: !1276)
!1305 = !DILocation(line: 554, column: 11, scope: !1276)
!1306 = !DILocation(line: 557, column: 22, scope: !1276)
!1307 = !DILocation(line: 558, column: 11, scope: !1276)
!1308 = !DILocation(line: 560, column: 9, scope: !1276)
!1309 = !DILocation(line: 561, column: 9, scope: !1276)
!1310 = !DILocation(line: 563, column: 11, scope: !1276)
!1311 = !DILocation(line: 567, column: 8, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 567, column: 7)
!1313 = !DILocation(line: 567, column: 7, scope: !1247)
!1314 = !DILocation(line: 568, column: 5, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1312, file: !2, line: 568, column: 5)
!1316 = !DILocation(line: 570, column: 7, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 570, column: 7)
!1318 = !DILocation(line: 570, column: 7, scope: !1247)
!1319 = !DILocation(line: 572, column: 11, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1317, file: !2, line: 571, column: 5)
!1321 = !DILocation(line: 573, column: 9, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !2, line: 573, column: 9)
!1323 = distinct !DILexicalBlock(scope: !1320, file: !2, line: 572, column: 11)
!1324 = !DILocation(line: 576, column: 11, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1320, file: !2, line: 576, column: 11)
!1326 = !DILocation(line: 576, column: 11, scope: !1320)
!1327 = !DILocation(line: 577, column: 9, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !2, line: 577, column: 9)
!1329 = !DILocation(line: 582, column: 17, scope: !1247)
!1330 = !DILocation(line: 583, column: 19, scope: !1247)
!1331 = !DILocation(line: 583, column: 16, scope: !1247)
!1332 = !DILocation(line: 581, column: 3, scope: !1247)
!1333 = !DILocation(line: 585, column: 7, scope: !1247)
!1334 = !DILocation(line: 586, column: 11, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 585, column: 7)
!1336 = !DILocation(line: 586, column: 5, scope: !1335)
!1337 = !DILocation(line: 588, column: 7, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 588, column: 7)
!1339 = !DILocation(line: 588, column: 31, scope: !1338)
!1340 = !DILocation(line: 588, column: 7, scope: !1247)
!1341 = !DILocation(line: 590, column: 37, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1338, file: !2, line: 589, column: 5)
!1343 = !DILocation(line: 590, column: 35, scope: !1342)
!1344 = !DILocation(line: 591, column: 31, scope: !1342)
!1345 = !DILocation(line: 592, column: 31, scope: !1342)
!1346 = !DILocation(line: 593, column: 5, scope: !1342)
!1347 = !DILocation(line: 595, column: 33, scope: !1247)
!1348 = !DILocation(line: 596, column: 7, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 596, column: 7)
!1350 = !DILocation(line: 596, column: 14, scope: !1349)
!1351 = !DILocation(line: 596, column: 7, scope: !1247)
!1352 = !DILocation(line: 599, column: 28, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 599, column: 5)
!1354 = distinct !DILexicalBlock(scope: !1349, file: !2, line: 599, column: 5)
!1355 = !DILocation(line: 599, column: 5, scope: !1354)
!1356 = !DILocation(line: 597, column: 10, scope: !1349)
!1357 = !DILocation(line: 597, column: 5, scope: !1349)
!1358 = !DILocation(line: 600, column: 23, scope: !1353)
!1359 = !DILocation(line: 600, column: 13, scope: !1353)
!1360 = !DILocation(line: 600, column: 10, scope: !1353)
!1361 = !DILocation(line: 599, column: 42, scope: !1353)
!1362 = distinct !{!1362, !1355, !1363, !1143}
!1363 = !DILocation(line: 600, column: 47, scope: !1354)
!1364 = !DILocation(line: 603, column: 7, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 603, column: 7)
!1366 = !DILocation(line: 603, column: 23, scope: !1365)
!1367 = !DILocation(line: 603, column: 34, scope: !1365)
!1368 = !DILocation(line: 603, column: 26, scope: !1365)
!1369 = !DILocation(line: 603, column: 41, scope: !1365)
!1370 = !DILocation(line: 603, column: 7, scope: !1247)
!1371 = !DILocation(line: 605, column: 7, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1365, file: !2, line: 604, column: 5)
!1373 = !DILocation(line: 607, column: 5, scope: !1372)
!1374 = !DILocation(line: 609, column: 10, scope: !1247)
!1375 = !DILocation(line: 609, column: 3, scope: !1247)
!1376 = !DISubprogram(name: "bindtextdomain", scope: !1078, file: !1078, line: 86, type: !1377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!167, !173, !173}
!1379 = !DISubprogram(name: "textdomain", scope: !1078, file: !1078, line: 82, type: !1223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1380 = !DISubprogram(name: "atexit", scope: !1221, file: !1221, line: 602, type: !1381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!118, !662}
!1383 = !DISubprogram(name: "getopt_long", scope: !484, file: !484, line: 66, type: !1384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!118, !118, !1386, !173, !1388, !489}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!1389 = !DISubprogram(name: "strlen", scope: !1217, file: !1217, line: 407, type: !1390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!172, !173}
!1392 = distinct !DISubprogram(name: "cut_fields", scope: !2, file: !2, line: 292, type: !1261, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1393)
!1393 = !{!1394, !1395, !1396, !1397, !1398, !1399, !1405, !1406, !1413, !1414, !1415, !1420, !1421, !1422, !1425, !1426, !1433, !1434, !1435}
!1394 = !DILocalVariable(name: "stream", arg: 1, scope: !1392, file: !2, line: 292, type: !265)
!1395 = !DILocalVariable(name: "c", scope: !1392, file: !2, line: 294, type: !118)
!1396 = !DILocalVariable(name: "field_idx", scope: !1392, file: !2, line: 295, type: !460)
!1397 = !DILocalVariable(name: "found_any_selected_field", scope: !1392, file: !2, line: 296, type: !224)
!1398 = !DILocalVariable(name: "buffer_first_field", scope: !1392, file: !2, line: 297, type: !224)
!1399 = !DILocalVariable(name: "len", scope: !1400, file: !2, line: 320, type: !1403)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !2, line: 319, column: 9)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !2, line: 318, column: 11)
!1402 = distinct !DILexicalBlock(scope: !1392, file: !2, line: 317, column: 5)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1091, line: 77, baseType: !1404)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !292, line: 194, baseType: !293)
!1405 = !DILocalVariable(name: "n_bytes", scope: !1400, file: !2, line: 321, type: !170)
!1406 = !DILocalVariable(name: "__ptr", scope: !1407, file: !2, line: 350, type: !173)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !2, line: 350, column: 23)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 350, column: 23)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 349, column: 17)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !2, line: 344, column: 19)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !2, line: 343, column: 13)
!1412 = distinct !DILexicalBlock(scope: !1400, file: !2, line: 342, column: 15)
!1413 = !DILocalVariable(name: "__stream", scope: !1407, file: !2, line: 350, type: !265)
!1414 = !DILocalVariable(name: "__cnt", scope: !1407, file: !2, line: 350, type: !170)
!1415 = !DILocalVariable(name: "__ptr", scope: !1416, file: !2, line: 367, type: !173)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 367, column: 19)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !2, line: 367, column: 19)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 365, column: 13)
!1419 = distinct !DILexicalBlock(scope: !1400, file: !2, line: 364, column: 15)
!1420 = !DILocalVariable(name: "__stream", scope: !1416, file: !2, line: 367, type: !265)
!1421 = !DILocalVariable(name: "__cnt", scope: !1416, file: !2, line: 367, type: !170)
!1422 = !DILocalVariable(name: "last_c", scope: !1423, file: !2, line: 374, type: !118)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !2, line: 373, column: 17)
!1424 = distinct !DILexicalBlock(scope: !1418, file: !2, line: 372, column: 19)
!1425 = !DILocalVariable(name: "prev_c", scope: !1402, file: !2, line: 389, type: !118)
!1426 = !DILocalVariable(name: "__ptr", scope: !1427, file: !2, line: 395, type: !173)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !2, line: 395, column: 19)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 395, column: 19)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !2, line: 394, column: 13)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !2, line: 393, column: 15)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 392, column: 9)
!1432 = distinct !DILexicalBlock(scope: !1402, file: !2, line: 391, column: 11)
!1433 = !DILocalVariable(name: "__stream", scope: !1427, file: !2, line: 395, type: !265)
!1434 = !DILocalVariable(name: "__cnt", scope: !1427, file: !2, line: 395, type: !170)
!1435 = !DILocalVariable(name: "last_c", scope: !1436, file: !2, line: 418, type: !118)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !2, line: 417, column: 9)
!1437 = distinct !DILexicalBlock(scope: !1402, file: !2, line: 416, column: 11)
!1438 = !DILocation(line: 0, scope: !1392)
!1439 = !DILocation(line: 299, column: 16, scope: !1392)
!1440 = !DILocation(line: 299, column: 14, scope: !1392)
!1441 = !DILocalVariable(name: "__fp", arg: 1, scope: !1442, file: !1443, line: 66, type: !265)
!1442 = distinct !DISubprogram(name: "getc_unlocked", scope: !1443, file: !1443, line: 66, type: !1444, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1446)
!1443 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!118, !265}
!1446 = !{!1441}
!1447 = !DILocation(line: 0, scope: !1442, inlinedAt: !1448)
!1448 = distinct !DILocation(line: 301, column: 7, scope: !1392)
!1449 = !DILocation(line: 68, column: 10, scope: !1442, inlinedAt: !1448)
!1450 = !{!1451, !1019, i64 8}
!1451 = !{!"_IO_FILE", !1097, i64 0, !1019, i64 8, !1019, i64 16, !1019, i64 24, !1019, i64 32, !1019, i64 40, !1019, i64 48, !1019, i64 56, !1019, i64 64, !1019, i64 72, !1019, i64 80, !1019, i64 88, !1019, i64 96, !1019, i64 104, !1097, i64 112, !1097, i64 116, !1299, i64 120, !1138, i64 128, !1020, i64 130, !1020, i64 131, !1019, i64 136, !1299, i64 144, !1019, i64 152, !1019, i64 160, !1019, i64 168, !1019, i64 176, !1299, i64 184, !1097, i64 192, !1020, i64 196}
!1452 = !{!1451, !1019, i64 16}
!1453 = !{!"branch_weights", i32 2000, i32 1}
!1454 = !DILocation(line: 302, column: 7, scope: !1392)
!1455 = !DILocation(line: 302, column: 9, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1392, file: !2, line: 302, column: 7)
!1457 = !DILocation(line: 305, column: 3, scope: !1392)
!1458 = !DILocation(line: 314, column: 25, scope: !1392)
!1459 = !DILocalVariable(name: "k", arg: 1, scope: !1460, file: !2, line: 216, type: !460)
!1460 = distinct !DISubprogram(name: "print_kth", scope: !2, file: !2, line: 216, type: !1461, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1463)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!224, !460}
!1463 = !{!1459}
!1464 = !DILocation(line: 0, scope: !1460, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 314, column: 51, scope: !1392)
!1466 = !DILocation(line: 218, column: 10, scope: !1460, inlinedAt: !1465)
!1467 = !DILocation(line: 218, column: 22, scope: !1460, inlinedAt: !1465)
!1468 = !{!1469, !1299, i64 0}
!1469 = !{!"field_range_pair", !1299, i64 0, !1299, i64 8}
!1470 = !DILocation(line: 218, column: 25, scope: !1460, inlinedAt: !1465)
!1471 = !DILocation(line: 314, column: 48, scope: !1392)
!1472 = !DILocation(line: 316, column: 3, scope: !1392)
!1473 = !DILocation(line: 318, column: 21, scope: !1401)
!1474 = !DILocation(line: 318, column: 26, scope: !1401)
!1475 = !DILocation(line: 218, column: 10, scope: !1460, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 391, column: 11, scope: !1432)
!1477 = !DILocation(line: 324, column: 48, scope: !1400)
!1478 = !DILocation(line: 324, column: 55, scope: !1400)
!1479 = !DILocation(line: 323, column: 17, scope: !1400)
!1480 = !DILocation(line: 0, scope: !1400)
!1481 = !DILocation(line: 325, column: 19, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1400, file: !2, line: 325, column: 15)
!1483 = !DILocation(line: 325, column: 15, scope: !1400)
!1484 = !DILocation(line: 327, column: 21, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1482, file: !2, line: 326, column: 13)
!1486 = !DILocation(line: 327, column: 15, scope: !1485)
!1487 = !DILocation(line: 328, column: 30, scope: !1485)
!1488 = !DILocalVariable(name: "__stream", arg: 1, scope: !1489, file: !1443, line: 135, type: !265)
!1489 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1443, file: !1443, line: 135, type: !1444, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1490)
!1490 = !{!1488}
!1491 = !DILocation(line: 0, scope: !1489, inlinedAt: !1492)
!1492 = distinct !DILocation(line: 329, column: 19, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1485, file: !2, line: 329, column: 19)
!1494 = !DILocation(line: 137, column: 10, scope: !1489, inlinedAt: !1492)
!1495 = !{!1451, !1097, i64 0}
!1496 = !DILocation(line: 329, column: 35, scope: !1493)
!1497 = !DILocation(line: 331, column: 15, scope: !1485)
!1498 = !DILocation(line: 335, column: 11, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !2, line: 335, column: 11)
!1500 = distinct !DILexicalBlock(scope: !1400, file: !2, line: 335, column: 11)
!1501 = !DILocation(line: 335, column: 11, scope: !1500)
!1502 = !DILocation(line: 342, column: 25, scope: !1412)
!1503 = !DILocation(line: 342, column: 48, scope: !1412)
!1504 = !DILocation(line: 342, column: 57, scope: !1412)
!1505 = !DILocation(line: 342, column: 54, scope: !1412)
!1506 = !DILocation(line: 342, column: 15, scope: !1400)
!1507 = !DILocation(line: 344, column: 19, scope: !1410)
!1508 = !DILocation(line: 344, column: 19, scope: !1411)
!1509 = !DILocation(line: 350, column: 23, scope: !1408)
!1510 = !DILocation(line: 351, column: 23, scope: !1408)
!1511 = !DILocation(line: 350, column: 23, scope: !1409)
!1512 = !DILocation(line: 948, column: 21, scope: !1513, inlinedAt: !1516)
!1513 = distinct !DISubprogram(name: "write_error", scope: !117, file: !117, line: 946, type: !663, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1514)
!1514 = !{!1515}
!1515 = !DILocalVariable(name: "saved_errno", scope: !1513, file: !117, line: 948, type: !118)
!1516 = distinct !DILocation(line: 352, column: 21, scope: !1408)
!1517 = !DILocation(line: 0, scope: !1513, inlinedAt: !1516)
!1518 = !DILocation(line: 949, column: 3, scope: !1513, inlinedAt: !1516)
!1519 = !DILocation(line: 950, column: 11, scope: !1513, inlinedAt: !1516)
!1520 = !DILocation(line: 950, column: 3, scope: !1513, inlinedAt: !1516)
!1521 = !DILocation(line: 951, column: 3, scope: !1513, inlinedAt: !1516)
!1522 = !DILocation(line: 952, column: 3, scope: !1513, inlinedAt: !1516)
!1523 = !DILocation(line: 354, column: 23, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 354, column: 23)
!1525 = !DILocation(line: 354, column: 54, scope: !1524)
!1526 = !DILocation(line: 354, column: 51, scope: !1524)
!1527 = !DILocation(line: 354, column: 23, scope: !1409)
!1528 = distinct !{!1528, !1472, !1529}
!1529 = !DILocation(line: 448, column: 5, scope: !1392)
!1530 = !DILocalVariable(name: "__c", arg: 1, scope: !1531, file: !1443, line: 108, type: !118)
!1531 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1443, file: !1443, line: 108, type: !1532, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1534)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!118, !118}
!1534 = !{!1530}
!1535 = !DILocation(line: 0, scope: !1531, inlinedAt: !1536)
!1536 = distinct !DILocation(line: 356, column: 27, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !2, line: 356, column: 27)
!1538 = distinct !DILexicalBlock(scope: !1524, file: !2, line: 355, column: 21)
!1539 = !DILocation(line: 110, column: 10, scope: !1531, inlinedAt: !1536)
!1540 = !{!1451, !1019, i64 40}
!1541 = !{!1451, !1019, i64 48}
!1542 = !DILocation(line: 356, column: 27, scope: !1538)
!1543 = !DILocation(line: 356, column: 48, scope: !1537)
!1544 = !DILocation(line: 359, column: 23, scope: !1409)
!1545 = !DILocation(line: 948, column: 21, scope: !1513, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 357, column: 25, scope: !1537)
!1547 = !DILocation(line: 0, scope: !1513, inlinedAt: !1546)
!1548 = !DILocation(line: 949, column: 3, scope: !1513, inlinedAt: !1546)
!1549 = !DILocation(line: 950, column: 11, scope: !1513, inlinedAt: !1546)
!1550 = !DILocation(line: 950, column: 3, scope: !1513, inlinedAt: !1546)
!1551 = !DILocation(line: 951, column: 3, scope: !1513, inlinedAt: !1546)
!1552 = !DILocation(line: 952, column: 3, scope: !1513, inlinedAt: !1546)
!1553 = !DILocation(line: 0, scope: !1460, inlinedAt: !1554)
!1554 = distinct !DILocation(line: 364, column: 15, scope: !1419)
!1555 = !DILocation(line: 218, column: 10, scope: !1460, inlinedAt: !1554)
!1556 = !DILocation(line: 218, column: 22, scope: !1460, inlinedAt: !1554)
!1557 = !DILocation(line: 218, column: 25, scope: !1460, inlinedAt: !1554)
!1558 = !DILocation(line: 364, column: 15, scope: !1400)
!1559 = !DILocation(line: 367, column: 19, scope: !1417)
!1560 = !DILocation(line: 368, column: 19, scope: !1417)
!1561 = !DILocation(line: 367, column: 19, scope: !1418)
!1562 = !DILocation(line: 948, column: 21, scope: !1513, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 369, column: 17, scope: !1417)
!1564 = !DILocation(line: 0, scope: !1513, inlinedAt: !1563)
!1565 = !DILocation(line: 949, column: 3, scope: !1513, inlinedAt: !1563)
!1566 = !DILocation(line: 950, column: 11, scope: !1513, inlinedAt: !1563)
!1567 = !DILocation(line: 950, column: 3, scope: !1513, inlinedAt: !1563)
!1568 = !DILocation(line: 951, column: 3, scope: !1513, inlinedAt: !1563)
!1569 = !DILocation(line: 952, column: 3, scope: !1513, inlinedAt: !1563)
!1570 = !DILocation(line: 372, column: 19, scope: !1424)
!1571 = !DILocation(line: 372, column: 28, scope: !1424)
!1572 = !DILocation(line: 372, column: 25, scope: !1424)
!1573 = !DILocation(line: 372, column: 19, scope: !1418)
!1574 = !DILocation(line: 0, scope: !1442, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 374, column: 32, scope: !1423)
!1576 = !DILocation(line: 68, column: 10, scope: !1442, inlinedAt: !1575)
!1577 = !DILocation(line: 0, scope: !1423)
!1578 = !DILocation(line: 375, column: 23, scope: !1423)
!1579 = !DILocation(line: 375, column: 30, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1423, file: !2, line: 375, column: 23)
!1581 = !DILocation(line: 377, column: 23, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1580, file: !2, line: 376, column: 21)
!1583 = !DILocation(line: 379, column: 21, scope: !1582)
!1584 = !DILocalVariable(name: "item_idx", arg: 1, scope: !1585, file: !2, line: 206, type: !1588)
!1585 = distinct !DISubprogram(name: "next_item", scope: !2, file: !2, line: 206, type: !1586, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1589)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{null, !1588}
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!1589 = !{!1584}
!1590 = !DILocation(line: 0, scope: !1585, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 386, column: 11, scope: !1400)
!1592 = !DILocation(line: 209, column: 21, scope: !1593, inlinedAt: !1591)
!1593 = distinct !DILexicalBlock(scope: !1585, file: !2, line: 209, column: 7)
!1594 = !DILocation(line: 209, column: 33, scope: !1593, inlinedAt: !1591)
!1595 = !{!1469, !1299, i64 8}
!1596 = !DILocation(line: 209, column: 19, scope: !1593, inlinedAt: !1591)
!1597 = !DILocation(line: 209, column: 7, scope: !1585, inlinedAt: !1591)
!1598 = !DILocation(line: 210, column: 15, scope: !1593, inlinedAt: !1591)
!1599 = !DILocation(line: 210, column: 5, scope: !1593, inlinedAt: !1591)
!1600 = !DILocation(line: 295, column: 13, scope: !1392)
!1601 = !DILocation(line: 296, column: 8, scope: !1392)
!1602 = !DILocation(line: 306, column: 5, scope: !1392)
!1603 = !DILocation(line: 0, scope: !1402)
!1604 = !DILocation(line: 0, scope: !1460, inlinedAt: !1476)
!1605 = !DILocation(line: 218, column: 22, scope: !1460, inlinedAt: !1476)
!1606 = !DILocation(line: 218, column: 25, scope: !1460, inlinedAt: !1476)
!1607 = !DILocation(line: 391, column: 11, scope: !1402)
!1608 = !DILocation(line: 393, column: 15, scope: !1430)
!1609 = !DILocation(line: 393, column: 15, scope: !1431)
!1610 = !DILocation(line: 402, column: 11, scope: !1431)
!1611 = !DILocation(line: 395, column: 19, scope: !1428)
!1612 = !DILocation(line: 397, column: 22, scope: !1428)
!1613 = !DILocation(line: 397, column: 19, scope: !1428)
!1614 = !DILocation(line: 395, column: 19, scope: !1429)
!1615 = !DILocation(line: 948, column: 21, scope: !1513, inlinedAt: !1616)
!1616 = distinct !DILocation(line: 398, column: 17, scope: !1428)
!1617 = !DILocation(line: 0, scope: !1513, inlinedAt: !1616)
!1618 = !DILocation(line: 949, column: 3, scope: !1513, inlinedAt: !1616)
!1619 = !DILocation(line: 950, column: 11, scope: !1513, inlinedAt: !1616)
!1620 = !DILocation(line: 950, column: 3, scope: !1513, inlinedAt: !1616)
!1621 = !DILocation(line: 951, column: 3, scope: !1513, inlinedAt: !1616)
!1622 = !DILocation(line: 952, column: 3, scope: !1513, inlinedAt: !1616)
!1623 = !DILocation(line: 0, scope: !1442, inlinedAt: !1624)
!1624 = distinct !DILocation(line: 402, column: 23, scope: !1431)
!1625 = !DILocation(line: 68, column: 10, scope: !1442, inlinedAt: !1624)
!1626 = !DILocation(line: 402, column: 41, scope: !1431)
!1627 = !DILocation(line: 402, column: 38, scope: !1431)
!1628 = !DILocation(line: 402, column: 47, scope: !1431)
!1629 = !DILocation(line: 402, column: 55, scope: !1431)
!1630 = !DILocation(line: 402, column: 52, scope: !1431)
!1631 = !DILocation(line: 402, column: 66, scope: !1431)
!1632 = !DILocation(line: 0, scope: !1531, inlinedAt: !1633)
!1633 = distinct !DILocation(line: 404, column: 19, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !2, line: 404, column: 19)
!1635 = distinct !DILexicalBlock(scope: !1431, file: !2, line: 403, column: 13)
!1636 = !DILocation(line: 110, column: 10, scope: !1531, inlinedAt: !1633)
!1637 = !DILocation(line: 404, column: 19, scope: !1635)
!1638 = distinct !{!1638, !1610, !1639, !1143}
!1639 = !DILocation(line: 407, column: 13, scope: !1431)
!1640 = !DILocation(line: 404, column: 31, scope: !1634)
!1641 = !DILocation(line: 948, column: 21, scope: !1513, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 405, column: 17, scope: !1634)
!1643 = !DILocation(line: 0, scope: !1513, inlinedAt: !1642)
!1644 = !DILocation(line: 949, column: 3, scope: !1513, inlinedAt: !1642)
!1645 = !DILocation(line: 950, column: 11, scope: !1513, inlinedAt: !1642)
!1646 = !DILocation(line: 950, column: 3, scope: !1513, inlinedAt: !1642)
!1647 = !DILocation(line: 951, column: 3, scope: !1513, inlinedAt: !1642)
!1648 = !DILocation(line: 952, column: 3, scope: !1513, inlinedAt: !1642)
!1649 = !DILocation(line: 0, scope: !1442, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 411, column: 23, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 410, column: 9)
!1652 = !DILocation(line: 68, column: 10, scope: !1442, inlinedAt: !1650)
!1653 = !DILocation(line: 411, column: 41, scope: !1651)
!1654 = !DILocation(line: 411, column: 38, scope: !1651)
!1655 = !DILocation(line: 411, column: 47, scope: !1651)
!1656 = !DILocation(line: 411, column: 55, scope: !1651)
!1657 = !DILocation(line: 411, column: 52, scope: !1651)
!1658 = !DILocation(line: 411, column: 66, scope: !1651)
!1659 = distinct !{!1659, !1660, !1661, !1143}
!1660 = !DILocation(line: 411, column: 11, scope: !1651)
!1661 = !DILocation(line: 412, column: 22, scope: !1651)
!1662 = !DILocation(line: 389, column: 11, scope: !1402)
!1663 = !DILocation(line: 0, scope: !1432)
!1664 = !DILocation(line: 416, column: 20, scope: !1437)
!1665 = !DILocation(line: 416, column: 17, scope: !1437)
!1666 = !DILocation(line: 416, column: 31, scope: !1437)
!1667 = !DILocation(line: 0, scope: !1442, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 418, column: 24, scope: !1436)
!1669 = !DILocation(line: 68, column: 10, scope: !1442, inlinedAt: !1668)
!1670 = !DILocation(line: 0, scope: !1436)
!1671 = !DILocation(line: 419, column: 15, scope: !1436)
!1672 = !DILocation(line: 419, column: 22, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1436, file: !2, line: 419, column: 15)
!1674 = !DILocation(line: 425, column: 16, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1402, file: !2, line: 425, column: 11)
!1676 = !DILocation(line: 427, column: 21, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1675, file: !2, line: 427, column: 16)
!1678 = !DILocation(line: 427, column: 32, scope: !1677)
!1679 = !DILocation(line: 420, column: 13, scope: !1673)
!1680 = !DILocation(line: 425, column: 13, scope: !1675)
!1681 = !DILocation(line: 425, column: 11, scope: !1402)
!1682 = !DILocation(line: 0, scope: !1585, inlinedAt: !1683)
!1683 = distinct !DILocation(line: 426, column: 9, scope: !1675)
!1684 = !DILocation(line: 208, column: 14, scope: !1585, inlinedAt: !1683)
!1685 = !DILocation(line: 209, column: 21, scope: !1593, inlinedAt: !1683)
!1686 = !DILocation(line: 209, column: 33, scope: !1593, inlinedAt: !1683)
!1687 = !DILocation(line: 209, column: 19, scope: !1593, inlinedAt: !1683)
!1688 = !DILocation(line: 209, column: 7, scope: !1585, inlinedAt: !1683)
!1689 = !DILocation(line: 210, column: 15, scope: !1593, inlinedAt: !1683)
!1690 = !DILocation(line: 210, column: 5, scope: !1593, inlinedAt: !1683)
!1691 = !DILocation(line: 427, column: 18, scope: !1677)
!1692 = !DILocation(line: 429, column: 15, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !2, line: 429, column: 15)
!1694 = distinct !DILexicalBlock(scope: !1677, file: !2, line: 428, column: 9)
!1695 = !DILocation(line: 430, column: 15, scope: !1693)
!1696 = !DILocation(line: 430, column: 20, scope: !1693)
!1697 = !DILocation(line: 430, column: 43, scope: !1693)
!1698 = !DILocation(line: 433, column: 21, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !2, line: 433, column: 19)
!1700 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 431, column: 13)
!1701 = !DILocation(line: 433, column: 35, scope: !1699)
!1702 = !DILocation(line: 0, scope: !1531, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 436, column: 23, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !2, line: 436, column: 23)
!1705 = distinct !DILexicalBlock(scope: !1699, file: !2, line: 435, column: 17)
!1706 = !DILocation(line: 110, column: 10, scope: !1531, inlinedAt: !1703)
!1707 = !DILocation(line: 440, column: 15, scope: !1694)
!1708 = !DILocation(line: 436, column: 44, scope: !1704)
!1709 = !DILocation(line: 436, column: 23, scope: !1705)
!1710 = !DILocation(line: 948, column: 21, scope: !1513, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 437, column: 21, scope: !1704)
!1712 = !DILocation(line: 0, scope: !1513, inlinedAt: !1711)
!1713 = !DILocation(line: 949, column: 3, scope: !1513, inlinedAt: !1711)
!1714 = !DILocation(line: 950, column: 11, scope: !1513, inlinedAt: !1711)
!1715 = !DILocation(line: 950, column: 3, scope: !1513, inlinedAt: !1711)
!1716 = !DILocation(line: 951, column: 3, scope: !1513, inlinedAt: !1711)
!1717 = !DILocation(line: 952, column: 3, scope: !1513, inlinedAt: !1711)
!1718 = !DILocation(line: 445, column: 24, scope: !1694)
!1719 = !DILocation(line: 445, column: 22, scope: !1694)
!1720 = !DILocation(line: 447, column: 9, scope: !1694)
!1721 = !DILocation(line: 449, column: 1, scope: !1392)
!1722 = distinct !DISubprogram(name: "cut_bytes", scope: !2, file: !2, line: 232, type: !1261, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1723)
!1723 = !{!1724, !1725, !1726, !1727, !1729, !1741, !1742}
!1724 = !DILocalVariable(name: "stream", arg: 1, scope: !1722, file: !2, line: 232, type: !265)
!1725 = !DILocalVariable(name: "byte_idx", scope: !1722, file: !2, line: 234, type: !460)
!1726 = !DILocalVariable(name: "print_delimiter", scope: !1722, file: !2, line: 237, type: !224)
!1727 = !DILocalVariable(name: "c", scope: !1728, file: !2, line: 244, type: !118)
!1728 = distinct !DILexicalBlock(scope: !1722, file: !2, line: 243, column: 5)
!1729 = !DILocalVariable(name: "__ptr", scope: !1730, file: !2, line: 274, type: !173)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !2, line: 274, column: 27)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !2, line: 274, column: 27)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !2, line: 273, column: 21)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !2, line: 272, column: 23)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !2, line: 271, column: 17)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !2, line: 270, column: 19)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !2, line: 269, column: 13)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !2, line: 268, column: 15)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !2, line: 266, column: 9)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !2, line: 256, column: 16)
!1740 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 248, column: 11)
!1741 = !DILocalVariable(name: "__stream", scope: !1730, file: !2, line: 274, type: !265)
!1742 = !DILocalVariable(name: "__cnt", scope: !1730, file: !2, line: 274, type: !170)
!1743 = !DILocation(line: 0, scope: !1722)
!1744 = !DILocation(line: 241, column: 16, scope: !1722)
!1745 = !DILocation(line: 241, column: 14, scope: !1722)
!1746 = !DILocation(line: 242, column: 3, scope: !1722)
!1747 = !DILocation(line: 68, column: 10, scope: !1442, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 246, column: 11, scope: !1728)
!1749 = !DILocation(line: 0, scope: !1442, inlinedAt: !1748)
!1750 = !DILocation(line: 0, scope: !1728)
!1751 = !DILocation(line: 248, column: 16, scope: !1740)
!1752 = !DILocation(line: 248, column: 13, scope: !1740)
!1753 = !DILocation(line: 248, column: 11, scope: !1728)
!1754 = !DILocation(line: 0, scope: !1531, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 250, column: 15, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !2, line: 250, column: 15)
!1757 = distinct !DILexicalBlock(scope: !1740, file: !2, line: 249, column: 9)
!1758 = !DILocation(line: 110, column: 10, scope: !1531, inlinedAt: !1755)
!1759 = !DILocation(line: 250, column: 15, scope: !1757)
!1760 = !DILocation(line: 250, column: 27, scope: !1756)
!1761 = !DILocation(line: 948, column: 21, scope: !1513, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 251, column: 13, scope: !1756)
!1763 = !DILocation(line: 0, scope: !1513, inlinedAt: !1762)
!1764 = !DILocation(line: 949, column: 3, scope: !1513, inlinedAt: !1762)
!1765 = !DILocation(line: 950, column: 11, scope: !1513, inlinedAt: !1762)
!1766 = !DILocation(line: 950, column: 3, scope: !1513, inlinedAt: !1762)
!1767 = !DILocation(line: 951, column: 3, scope: !1513, inlinedAt: !1762)
!1768 = !DILocation(line: 952, column: 3, scope: !1513, inlinedAt: !1762)
!1769 = !DILocation(line: 254, column: 24, scope: !1757)
!1770 = !DILocation(line: 254, column: 22, scope: !1757)
!1771 = !DILocation(line: 255, column: 9, scope: !1757)
!1772 = !DILocation(line: 256, column: 18, scope: !1739)
!1773 = !DILocation(line: 256, column: 16, scope: !1740)
!1774 = !DILocation(line: 258, column: 24, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !2, line: 258, column: 15)
!1776 = distinct !DILexicalBlock(scope: !1739, file: !2, line: 257, column: 9)
!1777 = !DILocation(line: 258, column: 15, scope: !1776)
!1778 = !DILocation(line: 0, scope: !1531, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 260, column: 17, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !2, line: 260, column: 17)
!1781 = distinct !DILexicalBlock(scope: !1775, file: !2, line: 259, column: 11)
!1782 = !DILocation(line: 110, column: 10, scope: !1531, inlinedAt: !1779)
!1783 = !DILocation(line: 260, column: 17, scope: !1781)
!1784 = !DILocation(line: 260, column: 38, scope: !1780)
!1785 = !DILocation(line: 948, column: 21, scope: !1513, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 261, column: 15, scope: !1780)
!1787 = !DILocation(line: 0, scope: !1513, inlinedAt: !1786)
!1788 = !DILocation(line: 949, column: 3, scope: !1513, inlinedAt: !1786)
!1789 = !DILocation(line: 950, column: 11, scope: !1513, inlinedAt: !1786)
!1790 = !DILocation(line: 950, column: 3, scope: !1513, inlinedAt: !1786)
!1791 = !DILocation(line: 951, column: 3, scope: !1513, inlinedAt: !1786)
!1792 = !DILocation(line: 952, column: 3, scope: !1513, inlinedAt: !1786)
!1793 = !DILocation(line: 0, scope: !1585, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 267, column: 11, scope: !1738)
!1795 = !DILocation(line: 208, column: 14, scope: !1585, inlinedAt: !1794)
!1796 = !DILocation(line: 209, column: 21, scope: !1593, inlinedAt: !1794)
!1797 = !DILocation(line: 209, column: 33, scope: !1593, inlinedAt: !1794)
!1798 = !DILocation(line: 209, column: 19, scope: !1593, inlinedAt: !1794)
!1799 = !DILocation(line: 209, column: 7, scope: !1585, inlinedAt: !1794)
!1800 = !DILocation(line: 210, column: 15, scope: !1593, inlinedAt: !1794)
!1801 = !DILocation(line: 210, column: 5, scope: !1593, inlinedAt: !1794)
!1802 = !DILocation(line: 218, column: 10, scope: !1460, inlinedAt: !1803)
!1803 = distinct !DILocation(line: 268, column: 15, scope: !1737)
!1804 = !DILocation(line: 0, scope: !1460, inlinedAt: !1803)
!1805 = !DILocation(line: 218, column: 22, scope: !1460, inlinedAt: !1803)
!1806 = !DILocation(line: 218, column: 25, scope: !1460, inlinedAt: !1803)
!1807 = !DILocation(line: 268, column: 15, scope: !1738)
!1808 = !DILocation(line: 270, column: 19, scope: !1735)
!1809 = !DILocation(line: 270, column: 43, scope: !1735)
!1810 = !DILocation(line: 270, column: 19, scope: !1736)
!1811 = !DILocation(line: 272, column: 23, scope: !1733)
!1812 = !DILocation(line: 272, column: 39, scope: !1733)
!1813 = !DILocation(line: 274, column: 27, scope: !1731)
!1814 = !DILocation(line: 276, column: 30, scope: !1731)
!1815 = !DILocation(line: 276, column: 27, scope: !1731)
!1816 = !DILocation(line: 274, column: 27, scope: !1732)
!1817 = !DILocation(line: 948, column: 21, scope: !1513, inlinedAt: !1818)
!1818 = distinct !DILocation(line: 277, column: 25, scope: !1731)
!1819 = !DILocation(line: 0, scope: !1513, inlinedAt: !1818)
!1820 = !DILocation(line: 949, column: 3, scope: !1513, inlinedAt: !1818)
!1821 = !DILocation(line: 950, column: 11, scope: !1513, inlinedAt: !1818)
!1822 = !DILocation(line: 950, column: 3, scope: !1513, inlinedAt: !1818)
!1823 = !DILocation(line: 951, column: 3, scope: !1513, inlinedAt: !1818)
!1824 = !DILocation(line: 952, column: 3, scope: !1513, inlinedAt: !1818)
!1825 = !DILocation(line: 0, scope: !1531, inlinedAt: !1826)
!1826 = distinct !DILocation(line: 282, column: 19, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1736, file: !2, line: 282, column: 19)
!1828 = !DILocation(line: 110, column: 10, scope: !1531, inlinedAt: !1826)
!1829 = !DILocation(line: 282, column: 19, scope: !1736)
!1830 = !DILocation(line: 282, column: 31, scope: !1827)
!1831 = !DILocation(line: 948, column: 21, scope: !1513, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 283, column: 17, scope: !1827)
!1833 = !DILocation(line: 0, scope: !1513, inlinedAt: !1832)
!1834 = !DILocation(line: 949, column: 3, scope: !1513, inlinedAt: !1832)
!1835 = !DILocation(line: 950, column: 11, scope: !1513, inlinedAt: !1832)
!1836 = !DILocation(line: 950, column: 3, scope: !1513, inlinedAt: !1832)
!1837 = !DILocation(line: 951, column: 3, scope: !1513, inlinedAt: !1832)
!1838 = !DILocation(line: 952, column: 3, scope: !1513, inlinedAt: !1832)
!1839 = !DILocation(line: 287, column: 1, scope: !1722)
!1840 = distinct !DISubprogram(name: "cut_file", scope: !2, file: !2, line: 455, type: !1841, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1843)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!224, !173, !1260}
!1843 = !{!1844, !1845, !1846, !1847}
!1844 = !DILocalVariable(name: "file", arg: 1, scope: !1840, file: !2, line: 455, type: !173)
!1845 = !DILocalVariable(name: "cut_stream", arg: 2, scope: !1840, file: !2, line: 455, type: !1260)
!1846 = !DILocalVariable(name: "stream", scope: !1840, file: !2, line: 457, type: !265)
!1847 = !DILocalVariable(name: "err", scope: !1840, file: !2, line: 479, type: !118)
!1848 = !DILocation(line: 0, scope: !1840)
!1849 = !DILocation(line: 0, scope: !1108, inlinedAt: !1850)
!1850 = distinct !DILocation(line: 459, column: 7, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1840, file: !2, line: 459, column: 7)
!1852 = !DILocation(line: 1361, column: 11, scope: !1108, inlinedAt: !1850)
!1853 = !DILocation(line: 1361, column: 10, scope: !1108, inlinedAt: !1850)
!1854 = !DILocation(line: 459, column: 7, scope: !1840)
!1855 = !DILocation(line: 461, column: 23, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1851, file: !2, line: 460, column: 5)
!1857 = !DILocation(line: 462, column: 16, scope: !1856)
!1858 = !DILocation(line: 464, column: 5, scope: !1856)
!1859 = !DILocation(line: 467, column: 16, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1851, file: !2, line: 466, column: 5)
!1861 = !DILocation(line: 468, column: 18, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1860, file: !2, line: 468, column: 11)
!1863 = !DILocation(line: 468, column: 11, scope: !1860)
!1864 = !DILocation(line: 470, column: 11, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1862, file: !2, line: 469, column: 9)
!1866 = !DILocation(line: 471, column: 11, scope: !1865)
!1867 = !DILocation(line: 0, scope: !1851)
!1868 = !DILocation(line: 475, column: 3, scope: !1840)
!1869 = !DILocation(line: 477, column: 3, scope: !1840)
!1870 = !{ptr @cut_bytes, ptr @cut_fields}
!1871 = !DILocation(line: 479, column: 13, scope: !1840)
!1872 = !DILocation(line: 0, scope: !1489, inlinedAt: !1873)
!1873 = distinct !DILocation(line: 480, column: 8, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1840, file: !2, line: 480, column: 7)
!1875 = !DILocation(line: 137, column: 10, scope: !1489, inlinedAt: !1873)
!1876 = !DILocation(line: 480, column: 8, scope: !1874)
!1877 = !DILocation(line: 480, column: 7, scope: !1840)
!1878 = !DILocation(line: 0, scope: !1108, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 482, column: 7, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1840, file: !2, line: 482, column: 7)
!1881 = !DILocation(line: 1361, column: 11, scope: !1108, inlinedAt: !1879)
!1882 = !DILocation(line: 1361, column: 10, scope: !1108, inlinedAt: !1879)
!1883 = !DILocation(line: 482, column: 7, scope: !1840)
!1884 = !DILocation(line: 483, column: 5, scope: !1880)
!1885 = !DILocation(line: 484, column: 12, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1880, file: !2, line: 484, column: 12)
!1887 = !DILocation(line: 484, column: 28, scope: !1886)
!1888 = !DILocation(line: 484, column: 12, scope: !1880)
!1889 = !DILocation(line: 485, column: 11, scope: !1886)
!1890 = !DILocation(line: 485, column: 5, scope: !1886)
!1891 = !DILocation(line: 486, column: 7, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1840, file: !2, line: 486, column: 7)
!1893 = !DILocation(line: 486, column: 7, scope: !1840)
!1894 = !DILocation(line: 492, column: 1, scope: !1840)
!1895 = !DISubprogram(name: "__errno_location", scope: !1896, file: !1896, line: 37, type: !1897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1896 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!489}
!1899 = !DISubprogram(name: "clearerr_unlocked", scope: !1091, file: !1091, line: 794, type: !1261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1900 = !DISubprogram(name: "__uflow", scope: !1091, file: !1091, line: 885, type: !1444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1901 = !DISubprogram(name: "__overflow", scope: !1091, file: !1091, line: 886, type: !1902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!118, !265, !118}
!1904 = !DISubprogram(name: "fflush_unlocked", scope: !1091, file: !1091, line: 239, type: !1444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1905 = !DISubprogram(name: "ungetc", scope: !1091, file: !1091, line: 668, type: !1906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!118, !118, !265}
!1908 = !DISubprogram(name: "free", scope: !1221, file: !1221, line: 555, type: !1909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{null, !168}
!1911 = !DISubprogram(name: "__assert_fail", scope: !1912, file: !1912, line: 69, type: !1913, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!1912 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!1913 = !DISubroutineType(types: !1914)
!1914 = !{null, !173, !173, !112, !173}
!1915 = !DILocation(line: 0, scope: !521)
!1916 = !DILocation(line: 149, column: 16, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !521, file: !497, line: 149, column: 7)
!1918 = !DILocation(line: 149, column: 37, scope: !1917)
!1919 = !DILocalVariable(name: "__s1", arg: 1, scope: !1920, file: !1109, line: 1359, type: !173)
!1920 = distinct !DISubprogram(name: "streq", scope: !1109, file: !1109, line: 1359, type: !1110, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !1921)
!1921 = !{!1919, !1922}
!1922 = !DILocalVariable(name: "__s2", arg: 2, scope: !1920, file: !1109, line: 1359, type: !173)
!1923 = !DILocation(line: 0, scope: !1920, inlinedAt: !1924)
!1924 = distinct !DILocation(line: 149, column: 40, scope: !1917)
!1925 = !DILocation(line: 1361, column: 11, scope: !1920, inlinedAt: !1924)
!1926 = !DILocation(line: 1361, column: 10, scope: !1920, inlinedAt: !1924)
!1927 = !DILocation(line: 149, column: 7, scope: !521)
!1928 = !DILocation(line: 154, column: 15, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1917, file: !497, line: 150, column: 5)
!1930 = !DILocation(line: 155, column: 5, scope: !1929)
!1931 = !DILocation(line: 157, column: 3, scope: !521)
!1932 = !DILocation(line: 152, column: 21, scope: !1929)
!1933 = !DILocation(line: 141, column: 8, scope: !521)
!1934 = !DILocation(line: 159, column: 11, scope: !583)
!1935 = !DILocation(line: 159, column: 11, scope: !584)
!1936 = !DILocation(line: 163, column: 15, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !497, line: 163, column: 15)
!1938 = distinct !DILexicalBlock(scope: !583, file: !497, line: 160, column: 9)
!1939 = !DILocation(line: 163, column: 15, scope: !1938)
!1940 = !DILocation(line: 164, column: 13, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1937, file: !497, line: 164, column: 13)
!1942 = !DILocation(line: 171, column: 15, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1938, file: !497, line: 171, column: 15)
!1944 = !DILocation(line: 171, column: 29, scope: !1943)
!1945 = !DILocation(line: 172, column: 13, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1943, file: !497, line: 172, column: 13)
!1947 = !DILocation(line: 176, column: 22, scope: !1938)
!1948 = !DILocation(line: 178, column: 9, scope: !1938)
!1949 = !DILocation(line: 180, column: 19, scope: !582)
!1950 = !DILocation(line: 180, column: 50, scope: !582)
!1951 = !DILocation(line: 184, column: 15, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !497, line: 184, column: 15)
!1953 = distinct !DILexicalBlock(scope: !582, file: !497, line: 181, column: 9)
!1954 = !DILocation(line: 184, column: 15, scope: !1953)
!1955 = !DILocation(line: 188, column: 20, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !497, line: 188, column: 19)
!1957 = distinct !DILexicalBlock(scope: !1952, file: !497, line: 185, column: 13)
!1958 = !DILocation(line: 188, column: 34, scope: !1956)
!1959 = !DILocation(line: 194, column: 21, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !497, line: 194, column: 21)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !497, line: 191, column: 23)
!1962 = distinct !DILexicalBlock(scope: !1956, file: !497, line: 189, column: 17)
!1963 = !DILocation(line: 199, column: 19, scope: !1957)
!1964 = !DILocalVariable(name: "lo", arg: 1, scope: !1965, file: !497, line: 47, type: !460)
!1965 = distinct !DISubprogram(name: "add_range_pair", scope: !497, file: !497, line: 47, type: !1966, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !1968)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{null, !460, !460}
!1968 = !{!1964, !1969}
!1969 = !DILocalVariable(name: "hi", arg: 2, scope: !1965, file: !497, line: 47, type: !460)
!1970 = !DILocation(line: 0, scope: !1965, inlinedAt: !1971)
!1971 = distinct !DILocation(line: 202, column: 19, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !497, line: 200, column: 17)
!1973 = distinct !DILexicalBlock(scope: !1957, file: !497, line: 199, column: 19)
!1974 = !DILocation(line: 49, column: 7, scope: !1975, inlinedAt: !1971)
!1975 = distinct !DILexicalBlock(scope: !1965, file: !497, line: 49, column: 7)
!1976 = !DILocation(line: 49, column: 16, scope: !1975, inlinedAt: !1971)
!1977 = !DILocation(line: 49, column: 13, scope: !1975, inlinedAt: !1971)
!1978 = !DILocation(line: 49, column: 7, scope: !1965, inlinedAt: !1971)
!1979 = !DILocation(line: 50, column: 11, scope: !1975, inlinedAt: !1971)
!1980 = !DILocation(line: 50, column: 9, scope: !1975, inlinedAt: !1971)
!1981 = !DILocation(line: 51, column: 7, scope: !1965, inlinedAt: !1971)
!1982 = !DILocation(line: 50, column: 5, scope: !1975, inlinedAt: !1971)
!1983 = !DILocation(line: 51, column: 3, scope: !1965, inlinedAt: !1971)
!1984 = !DILocation(line: 51, column: 17, scope: !1965, inlinedAt: !1971)
!1985 = !DILocation(line: 203, column: 17, scope: !1972)
!1986 = !DILocation(line: 207, column: 29, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !497, line: 207, column: 23)
!1988 = distinct !DILexicalBlock(scope: !1973, file: !497, line: 205, column: 17)
!1989 = !DILocation(line: 207, column: 23, scope: !1988)
!1990 = !DILocation(line: 208, column: 21, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1987, file: !497, line: 208, column: 21)
!1992 = !DILocation(line: 0, scope: !1965, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 210, column: 19, scope: !1988)
!1994 = !DILocation(line: 49, column: 7, scope: !1975, inlinedAt: !1993)
!1995 = !DILocation(line: 49, column: 16, scope: !1975, inlinedAt: !1993)
!1996 = !DILocation(line: 49, column: 13, scope: !1975, inlinedAt: !1993)
!1997 = !DILocation(line: 49, column: 7, scope: !1965, inlinedAt: !1993)
!1998 = !DILocation(line: 50, column: 11, scope: !1975, inlinedAt: !1993)
!1999 = !DILocation(line: 50, column: 9, scope: !1975, inlinedAt: !1993)
!2000 = !DILocation(line: 51, column: 7, scope: !1965, inlinedAt: !1993)
!2001 = !DILocation(line: 50, column: 5, scope: !1975, inlinedAt: !1993)
!2002 = !DILocation(line: 51, column: 3, scope: !1965, inlinedAt: !1993)
!2003 = !DILocation(line: 51, column: 17, scope: !1965, inlinedAt: !1993)
!2004 = !DILocation(line: 217, column: 25, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !497, line: 217, column: 19)
!2006 = distinct !DILexicalBlock(scope: !1952, file: !497, line: 215, column: 13)
!2007 = !DILocation(line: 217, column: 19, scope: !2006)
!2008 = !DILocation(line: 218, column: 17, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2005, file: !497, line: 218, column: 17)
!2010 = !DILocation(line: 0, scope: !1965, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 222, column: 15, scope: !2006)
!2012 = !DILocation(line: 49, column: 7, scope: !1975, inlinedAt: !2011)
!2013 = !DILocation(line: 49, column: 16, scope: !1975, inlinedAt: !2011)
!2014 = !DILocation(line: 49, column: 13, scope: !1975, inlinedAt: !2011)
!2015 = !DILocation(line: 49, column: 7, scope: !1965, inlinedAt: !2011)
!2016 = !DILocation(line: 50, column: 11, scope: !1975, inlinedAt: !2011)
!2017 = !DILocation(line: 50, column: 9, scope: !1975, inlinedAt: !2011)
!2018 = !DILocation(line: 51, column: 7, scope: !1965, inlinedAt: !2011)
!2019 = !DILocation(line: 50, column: 5, scope: !1975, inlinedAt: !2011)
!2020 = !DILocation(line: 51, column: 3, scope: !1965, inlinedAt: !2011)
!2021 = !DILocation(line: 51, column: 17, scope: !1965, inlinedAt: !2011)
!2022 = !DILocation(line: 138, column: 13, scope: !521)
!2023 = !DILocation(line: 0, scope: !1952)
!2024 = !DILocation(line: 226, column: 15, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1953, file: !497, line: 226, column: 15)
!2026 = !DILocation(line: 226, column: 25, scope: !2025)
!2027 = !DILocation(line: 226, column: 15, scope: !1953)
!2028 = !DILocation(line: 180, column: 53, scope: !582)
!2029 = !DILocalVariable(name: "c", arg: 1, scope: !2030, file: !2031, line: 233, type: !118)
!2030 = distinct !DISubprogram(name: "c_isdigit", scope: !2031, file: !2031, line: 233, type: !2032, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2034)
!2031 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!224, !118}
!2034 = !{!2029}
!2035 = !DILocation(line: 0, scope: !2030, inlinedAt: !2036)
!2036 = distinct !DILocation(line: 233, column: 16, scope: !581)
!2037 = !DILocation(line: 235, column: 3, scope: !2030, inlinedAt: !2036)
!2038 = !DILocation(line: 233, column: 16, scope: !582)
!2039 = !DILocation(line: 238, column: 26, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !580, file: !497, line: 238, column: 15)
!2041 = !DILocation(line: 239, column: 23, scope: !2040)
!2042 = !DILocation(line: 239, column: 13, scope: !2040)
!2043 = !DILocation(line: 248, column: 16, scope: !579)
!2044 = !DILocation(line: 242, column: 15, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !580, file: !497, line: 242, column: 15)
!2046 = !DILocation(line: 249, column: 15, scope: !579)
!2047 = !DILocation(line: 254, column: 42, scope: !578)
!2048 = !DILocation(line: 253, column: 31, scope: !578)
!2049 = !DILocation(line: 0, scope: !578)
!2050 = !DILocation(line: 255, column: 15, scope: !578)
!2051 = !DILocation(line: 259, column: 15, scope: !578)
!2052 = !DILocation(line: 260, column: 15, scope: !578)
!2053 = !DILocation(line: 267, column: 11, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !581, file: !497, line: 266, column: 9)
!2055 = !DILocation(line: 271, column: 11, scope: !2054)
!2056 = !DILocation(line: 0, scope: !583)
!2057 = distinct !{!2057, !1931, !2058}
!2058 = !DILocation(line: 273, column: 5, scope: !521)
!2059 = !DILocation(line: 275, column: 8, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !521, file: !497, line: 275, column: 7)
!2061 = !DILocation(line: 275, column: 7, scope: !521)
!2062 = !DILocation(line: 276, column: 5, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2060, file: !497, line: 276, column: 5)
!2064 = !DILocation(line: 280, column: 3, scope: !521)
!2065 = !DILocation(line: 0, scope: !586)
!2066 = !DILocation(line: 283, column: 25, scope: !590)
!2067 = !DILocation(line: 283, column: 23, scope: !590)
!2068 = !DILocation(line: 283, column: 3, scope: !586)
!2069 = !DILocation(line: 299, column: 15, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !521, file: !497, line: 299, column: 7)
!2071 = !DILocation(line: 299, column: 7, scope: !521)
!2072 = !DILocation(line: 285, column: 24, scope: !588)
!2073 = !DILocation(line: 0, scope: !588)
!2074 = !DILocation(line: 285, column: 31, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !588, file: !497, line: 285, column: 7)
!2076 = !DILocation(line: 285, column: 7, scope: !588)
!2077 = !DILocation(line: 287, column: 15, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !497, line: 287, column: 15)
!2079 = distinct !DILexicalBlock(scope: !2075, file: !497, line: 286, column: 9)
!2080 = !DILocation(line: 287, column: 22, scope: !2078)
!2081 = !DILocation(line: 287, column: 35, scope: !2078)
!2082 = !DILocation(line: 287, column: 25, scope: !2078)
!2083 = !DILocation(line: 287, column: 15, scope: !2079)
!2084 = distinct !{!2084, !2076, !2085, !1143}
!2085 = !DILocation(line: 296, column: 9, scope: !588)
!2086 = !DILocation(line: 289, column: 27, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2078, file: !497, line: 288, column: 13)
!2088 = !DILocation(line: 289, column: 25, scope: !2087)
!2089 = !DILocation(line: 290, column: 41, scope: !2087)
!2090 = !DILocation(line: 290, column: 47, scope: !2087)
!2091 = !DILocation(line: 290, column: 57, scope: !2087)
!2092 = !DILocation(line: 290, column: 62, scope: !2087)
!2093 = !DILocalVariable(name: "__dest", arg: 1, scope: !2094, file: !2095, line: 34, type: !168)
!2094 = distinct !DISubprogram(name: "memmove", scope: !2095, file: !2095, line: 34, type: !2096, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2098)
!2095 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!168, !168, !1245, !170}
!2098 = !{!2093, !2099, !2100}
!2099 = !DILocalVariable(name: "__src", arg: 2, scope: !2094, file: !2095, line: 34, type: !1245)
!2100 = !DILocalVariable(name: "__len", arg: 3, scope: !2094, file: !2095, line: 34, type: !170)
!2101 = !DILocation(line: 0, scope: !2094, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 290, column: 15, scope: !2087)
!2103 = !DILocation(line: 36, column: 10, scope: !2094, inlinedAt: !2102)
!2104 = !DILocation(line: 291, column: 20, scope: !2087)
!2105 = distinct !{!2105, !2068, !2106, !1143}
!2106 = !DILocation(line: 297, column: 5, scope: !586)
!2107 = !DILocation(line: 72, column: 32, scope: !2108, inlinedAt: !2114)
!2108 = distinct !DISubprogram(name: "complement_rp", scope: !497, file: !497, line: 70, type: !663, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2109)
!2109 = !{!2110, !2111, !2112}
!2110 = !DILocalVariable(name: "c", scope: !2108, file: !497, line: 72, type: !556)
!2111 = !DILocalVariable(name: "n", scope: !2108, file: !497, line: 73, type: !563)
!2112 = !DILocalVariable(name: "i", scope: !2113, file: !497, line: 82, type: !563)
!2113 = distinct !DILexicalBlock(scope: !2108, file: !497, line: 82, column: 3)
!2114 = distinct !DILocation(line: 300, column: 5, scope: !2070)
!2115 = !DILocation(line: 0, scope: !2108, inlinedAt: !2114)
!2116 = !DILocation(line: 75, column: 7, scope: !2108, inlinedAt: !2114)
!2117 = !DILocation(line: 76, column: 9, scope: !2108, inlinedAt: !2114)
!2118 = !DILocation(line: 77, column: 19, scope: !2108, inlinedAt: !2114)
!2119 = !DILocation(line: 79, column: 12, scope: !2120, inlinedAt: !2114)
!2120 = distinct !DILexicalBlock(scope: !2108, file: !497, line: 79, column: 7)
!2121 = !DILocation(line: 79, column: 15, scope: !2120, inlinedAt: !2114)
!2122 = !DILocation(line: 79, column: 7, scope: !2108, inlinedAt: !2114)
!2123 = !DILocation(line: 80, column: 32, scope: !2120, inlinedAt: !2114)
!2124 = !DILocation(line: 0, scope: !1965, inlinedAt: !2125)
!2125 = distinct !DILocation(line: 80, column: 5, scope: !2120, inlinedAt: !2114)
!2126 = !DILocation(line: 50, column: 11, scope: !1975, inlinedAt: !2125)
!2127 = !DILocation(line: 50, column: 9, scope: !1975, inlinedAt: !2125)
!2128 = !DILocation(line: 51, column: 7, scope: !1965, inlinedAt: !2125)
!2129 = !DILocation(line: 51, column: 3, scope: !1965, inlinedAt: !2125)
!2130 = !DILocation(line: 51, column: 17, scope: !1965, inlinedAt: !2125)
!2131 = !DILocation(line: 52, column: 7, scope: !1965, inlinedAt: !2125)
!2132 = !DILocation(line: 52, column: 14, scope: !1965, inlinedAt: !2125)
!2133 = !DILocation(line: 52, column: 17, scope: !1965, inlinedAt: !2125)
!2134 = !DILocation(line: 53, column: 3, scope: !1965, inlinedAt: !2125)
!2135 = !DILocation(line: 80, column: 5, scope: !2120, inlinedAt: !2114)
!2136 = !DILocation(line: 0, scope: !2113, inlinedAt: !2114)
!2137 = !DILocation(line: 82, column: 23, scope: !2138, inlinedAt: !2114)
!2138 = distinct !DILexicalBlock(scope: !2113, file: !497, line: 82, column: 3)
!2139 = !DILocation(line: 82, column: 3, scope: !2113, inlinedAt: !2114)
!2140 = !DILocation(line: 90, column: 11, scope: !2141, inlinedAt: !2114)
!2141 = distinct !DILexicalBlock(scope: !2108, file: !497, line: 90, column: 7)
!2142 = !DILocation(line: 90, column: 16, scope: !2141, inlinedAt: !2114)
!2143 = !DILocation(line: 90, column: 19, scope: !2141, inlinedAt: !2114)
!2144 = !DILocation(line: 90, column: 7, scope: !2108, inlinedAt: !2114)
!2145 = !DILocation(line: 84, column: 15, scope: !2146, inlinedAt: !2114)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !497, line: 84, column: 11)
!2147 = distinct !DILexicalBlock(scope: !2138, file: !497, line: 83, column: 5)
!2148 = !DILocation(line: 84, column: 20, scope: !2146, inlinedAt: !2114)
!2149 = !DILocation(line: 84, column: 23, scope: !2146, inlinedAt: !2114)
!2150 = !DILocation(line: 84, column: 30, scope: !2146, inlinedAt: !2114)
!2151 = !DILocation(line: 84, column: 35, scope: !2146, inlinedAt: !2114)
!2152 = !DILocation(line: 84, column: 27, scope: !2146, inlinedAt: !2114)
!2153 = !DILocation(line: 84, column: 11, scope: !2147, inlinedAt: !2114)
!2154 = !DILocation(line: 87, column: 48, scope: !2147, inlinedAt: !2114)
!2155 = !DILocation(line: 0, scope: !1965, inlinedAt: !2156)
!2156 = distinct !DILocation(line: 87, column: 7, scope: !2147, inlinedAt: !2114)
!2157 = !DILocation(line: 49, column: 16, scope: !1975, inlinedAt: !2156)
!2158 = !DILocation(line: 49, column: 13, scope: !1975, inlinedAt: !2156)
!2159 = !DILocation(line: 49, column: 7, scope: !1965, inlinedAt: !2156)
!2160 = !DILocation(line: 50, column: 11, scope: !1975, inlinedAt: !2156)
!2161 = !DILocation(line: 50, column: 9, scope: !1975, inlinedAt: !2156)
!2162 = !DILocation(line: 51, column: 7, scope: !1965, inlinedAt: !2156)
!2163 = !DILocation(line: 50, column: 5, scope: !1975, inlinedAt: !2156)
!2164 = !DILocation(line: 51, column: 3, scope: !1965, inlinedAt: !2156)
!2165 = !DILocation(line: 51, column: 17, scope: !1965, inlinedAt: !2156)
!2166 = !DILocation(line: 52, column: 7, scope: !1965, inlinedAt: !2156)
!2167 = !DILocation(line: 52, column: 14, scope: !1965, inlinedAt: !2156)
!2168 = !DILocation(line: 52, column: 17, scope: !1965, inlinedAt: !2156)
!2169 = !DILocation(line: 53, column: 3, scope: !1965, inlinedAt: !2156)
!2170 = !DILocation(line: 88, column: 5, scope: !2147, inlinedAt: !2114)
!2171 = !DILocation(line: 82, column: 28, scope: !2138, inlinedAt: !2114)
!2172 = distinct !{!2172, !2139, !2173, !1143}
!2173 = !DILocation(line: 88, column: 5, scope: !2113, inlinedAt: !2114)
!2174 = !DILocation(line: 91, column: 33, scope: !2141, inlinedAt: !2114)
!2175 = !DILocation(line: 0, scope: !1965, inlinedAt: !2176)
!2176 = distinct !DILocation(line: 91, column: 5, scope: !2141, inlinedAt: !2114)
!2177 = !DILocation(line: 49, column: 16, scope: !1975, inlinedAt: !2176)
!2178 = !DILocation(line: 49, column: 13, scope: !1975, inlinedAt: !2176)
!2179 = !DILocation(line: 49, column: 7, scope: !1965, inlinedAt: !2176)
!2180 = !DILocation(line: 50, column: 11, scope: !1975, inlinedAt: !2176)
!2181 = !DILocation(line: 50, column: 9, scope: !1975, inlinedAt: !2176)
!2182 = !DILocation(line: 51, column: 7, scope: !1965, inlinedAt: !2176)
!2183 = !DILocation(line: 50, column: 5, scope: !1975, inlinedAt: !2176)
!2184 = !DILocation(line: 51, column: 3, scope: !1965, inlinedAt: !2176)
!2185 = !DILocation(line: 51, column: 17, scope: !1965, inlinedAt: !2176)
!2186 = !DILocation(line: 52, column: 7, scope: !1965, inlinedAt: !2176)
!2187 = !DILocation(line: 52, column: 14, scope: !1965, inlinedAt: !2176)
!2188 = !DILocation(line: 52, column: 17, scope: !1965, inlinedAt: !2176)
!2189 = !DILocation(line: 53, column: 3, scope: !1965, inlinedAt: !2176)
!2190 = !DILocation(line: 91, column: 5, scope: !2141, inlinedAt: !2114)
!2191 = !DILocation(line: 93, column: 3, scope: !2108, inlinedAt: !2114)
!2192 = !DILocation(line: 305, column: 3, scope: !521)
!2193 = !DILocation(line: 300, column: 5, scope: !2070)
!2194 = !DILocation(line: 306, column: 19, scope: !521)
!2195 = !DILocation(line: 306, column: 30, scope: !521)
!2196 = !DILocation(line: 306, column: 9, scope: !521)
!2197 = !DILocation(line: 306, column: 7, scope: !521)
!2198 = !DILocation(line: 307, column: 27, scope: !521)
!2199 = !DILocation(line: 307, column: 33, scope: !521)
!2200 = !DILocation(line: 307, column: 38, scope: !521)
!2201 = !DILocation(line: 307, column: 41, scope: !521)
!2202 = !DILocation(line: 307, column: 7, scope: !521)
!2203 = !DILocation(line: 307, column: 13, scope: !521)
!2204 = !DILocation(line: 307, column: 3, scope: !521)
!2205 = !DILocation(line: 307, column: 21, scope: !521)
!2206 = !DILocation(line: 308, column: 1, scope: !521)
!2207 = distinct !DISubprogram(name: "compare_ranges", scope: !497, file: !497, line: 60, type: !2208, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2210)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!118, !1245, !1245}
!2210 = !{!2211, !2212, !2213, !2216}
!2211 = !DILocalVariable(name: "a", arg: 1, scope: !2207, file: !497, line: 60, type: !1245)
!2212 = !DILocalVariable(name: "b", arg: 2, scope: !2207, file: !497, line: 60, type: !1245)
!2213 = !DILocalVariable(name: "ap", scope: !2207, file: !497, line: 62, type: !2214)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !557)
!2216 = !DILocalVariable(name: "bp", scope: !2207, file: !497, line: 62, type: !2214)
!2217 = !DILocation(line: 0, scope: !2207)
!2218 = !DILocation(line: 63, column: 10, scope: !2207)
!2219 = !DILocation(line: 63, column: 3, scope: !2207)
!2220 = !DISubprogram(name: "qsort", scope: !1221, file: !1221, line: 838, type: !2221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{null, !168, !170, !170, !2223}
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1221, line: 816, baseType: !2224)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2225 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !601, file: !601, line: 50, type: !1047, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !2226)
!2226 = !{!2227}
!2227 = !DILocalVariable(name: "file", arg: 1, scope: !2225, file: !601, line: 50, type: !173)
!2228 = !DILocation(line: 0, scope: !2225)
!2229 = !DILocation(line: 52, column: 13, scope: !2225)
!2230 = !DILocation(line: 53, column: 1, scope: !2225)
!2231 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !601, file: !601, line: 87, type: !2232, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !2234)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{null, !224}
!2234 = !{!2235}
!2235 = !DILocalVariable(name: "ignore", arg: 1, scope: !2231, file: !601, line: 87, type: !224)
!2236 = !DILocation(line: 0, scope: !2231)
!2237 = !DILocation(line: 89, column: 16, scope: !2231)
!2238 = !{!2239, !2239, i64 0}
!2239 = !{!"_Bool", !1020, i64 0}
!2240 = !DILocation(line: 90, column: 1, scope: !2231)
!2241 = distinct !DISubprogram(name: "close_stdout", scope: !601, file: !601, line: 116, type: !663, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !2242)
!2242 = !{!2243}
!2243 = !DILocalVariable(name: "write_error", scope: !2244, file: !601, line: 121, type: !173)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !601, line: 120, column: 5)
!2245 = distinct !DILexicalBlock(scope: !2241, file: !601, line: 118, column: 7)
!2246 = !DILocation(line: 118, column: 21, scope: !2245)
!2247 = !DILocation(line: 118, column: 7, scope: !2245)
!2248 = !DILocation(line: 118, column: 29, scope: !2245)
!2249 = !DILocation(line: 119, column: 7, scope: !2245)
!2250 = !DILocation(line: 119, column: 12, scope: !2245)
!2251 = !{i8 0, i8 2}
!2252 = !DILocation(line: 119, column: 25, scope: !2245)
!2253 = !DILocation(line: 119, column: 28, scope: !2245)
!2254 = !DILocation(line: 119, column: 34, scope: !2245)
!2255 = !DILocation(line: 118, column: 7, scope: !2241)
!2256 = !DILocation(line: 121, column: 33, scope: !2244)
!2257 = !DILocation(line: 0, scope: !2244)
!2258 = !DILocation(line: 122, column: 11, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2244, file: !601, line: 122, column: 11)
!2260 = !DILocation(line: 0, scope: !2259)
!2261 = !DILocation(line: 122, column: 11, scope: !2244)
!2262 = !DILocation(line: 123, column: 9, scope: !2259)
!2263 = !DILocation(line: 126, column: 9, scope: !2259)
!2264 = !DILocation(line: 128, column: 14, scope: !2244)
!2265 = !DILocation(line: 128, column: 7, scope: !2244)
!2266 = !DILocation(line: 133, column: 42, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2241, file: !601, line: 133, column: 7)
!2268 = !DILocation(line: 133, column: 28, scope: !2267)
!2269 = !DILocation(line: 133, column: 50, scope: !2267)
!2270 = !DILocation(line: 133, column: 7, scope: !2241)
!2271 = !DILocation(line: 134, column: 12, scope: !2267)
!2272 = !DILocation(line: 134, column: 5, scope: !2267)
!2273 = !DILocation(line: 135, column: 1, scope: !2241)
!2274 = !DISubprogram(name: "_exit", scope: !2275, file: !2275, line: 624, type: !1008, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!2275 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2276 = distinct !DISubprogram(name: "verror", scope: !616, file: !616, line: 251, type: !2277, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2279)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{null, !118, !118, !173, !626}
!2279 = !{!2280, !2281, !2282, !2283}
!2280 = !DILocalVariable(name: "status", arg: 1, scope: !2276, file: !616, line: 251, type: !118)
!2281 = !DILocalVariable(name: "errnum", arg: 2, scope: !2276, file: !616, line: 251, type: !118)
!2282 = !DILocalVariable(name: "message", arg: 3, scope: !2276, file: !616, line: 251, type: !173)
!2283 = !DILocalVariable(name: "args", arg: 4, scope: !2276, file: !616, line: 251, type: !626)
!2284 = !DILocation(line: 0, scope: !2276)
!2285 = !DILocation(line: 261, column: 3, scope: !2276)
!2286 = !DILocation(line: 265, column: 7, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2276, file: !616, line: 265, column: 7)
!2288 = !DILocation(line: 265, column: 7, scope: !2276)
!2289 = !DILocation(line: 266, column: 5, scope: !2287)
!2290 = !DILocation(line: 272, column: 7, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2287, file: !616, line: 268, column: 5)
!2292 = !DILocation(line: 276, column: 3, scope: !2276)
!2293 = !DILocation(line: 282, column: 1, scope: !2276)
!2294 = distinct !DISubprogram(name: "flush_stdout", scope: !616, file: !616, line: 163, type: !663, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2295)
!2295 = !{!2296}
!2296 = !DILocalVariable(name: "stdout_fd", scope: !2294, file: !616, line: 166, type: !118)
!2297 = !DILocation(line: 0, scope: !2294)
!2298 = !DILocalVariable(name: "fd", arg: 1, scope: !2299, file: !616, line: 145, type: !118)
!2299 = distinct !DISubprogram(name: "is_open", scope: !616, file: !616, line: 145, type: !1532, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2300)
!2300 = !{!2298}
!2301 = !DILocation(line: 0, scope: !2299, inlinedAt: !2302)
!2302 = distinct !DILocation(line: 182, column: 25, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2294, file: !616, line: 182, column: 7)
!2304 = !DILocation(line: 157, column: 15, scope: !2299, inlinedAt: !2302)
!2305 = !DILocation(line: 157, column: 12, scope: !2299, inlinedAt: !2302)
!2306 = !DILocation(line: 182, column: 7, scope: !2294)
!2307 = !DILocation(line: 184, column: 5, scope: !2303)
!2308 = !DILocation(line: 185, column: 1, scope: !2294)
!2309 = distinct !DISubprogram(name: "error_tail", scope: !616, file: !616, line: 219, type: !2277, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2310)
!2310 = !{!2311, !2312, !2313, !2314}
!2311 = !DILocalVariable(name: "status", arg: 1, scope: !2309, file: !616, line: 219, type: !118)
!2312 = !DILocalVariable(name: "errnum", arg: 2, scope: !2309, file: !616, line: 219, type: !118)
!2313 = !DILocalVariable(name: "message", arg: 3, scope: !2309, file: !616, line: 219, type: !173)
!2314 = !DILocalVariable(name: "args", arg: 4, scope: !2309, file: !616, line: 219, type: !626)
!2315 = !DILocation(line: 0, scope: !2309)
!2316 = !DILocation(line: 229, column: 13, scope: !2309)
!2317 = !DILocalVariable(name: "__stream", arg: 1, scope: !2318, file: !1082, line: 132, type: !2321)
!2318 = distinct !DISubprogram(name: "vfprintf", scope: !1082, file: !1082, line: 132, type: !2319, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2356)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!118, !2321, !1086, !626}
!2321 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2322)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !2324)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !2325)
!2325 = !{!2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2324, file: !269, line: 51, baseType: !118, size: 32)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2324, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2324, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2324, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2324, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2324, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2324, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2324, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2324, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2324, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2324, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2324, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2324, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2324, file: !269, line: 70, baseType: !2340, size: 64, offset: 832)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2324, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2324, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2324, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2324, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2324, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2324, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2324, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2324, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2324, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2324, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2324, file: !269, line: 93, baseType: !2340, size: 64, offset: 1344)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2324, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2324, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2324, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2324, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!2356 = !{!2317, !2357, !2358}
!2357 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2318, file: !1082, line: 133, type: !1086)
!2358 = !DILocalVariable(name: "__ap", arg: 3, scope: !2318, file: !1082, line: 133, type: !626)
!2359 = !DILocation(line: 0, scope: !2318, inlinedAt: !2360)
!2360 = distinct !DILocation(line: 229, column: 3, scope: !2309)
!2361 = !DILocation(line: 135, column: 10, scope: !2318, inlinedAt: !2360)
!2362 = !DILocation(line: 232, column: 3, scope: !2309)
!2363 = !DILocation(line: 233, column: 7, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2309, file: !616, line: 233, column: 7)
!2365 = !DILocation(line: 233, column: 7, scope: !2309)
!2366 = !DILocalVariable(name: "errnum", arg: 1, scope: !2367, file: !616, line: 188, type: !118)
!2367 = distinct !DISubprogram(name: "print_errno_message", scope: !616, file: !616, line: 188, type: !1008, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2368)
!2368 = !{!2366, !2369, !2370}
!2369 = !DILocalVariable(name: "s", scope: !2367, file: !616, line: 190, type: !173)
!2370 = !DILocalVariable(name: "errbuf", scope: !2367, file: !616, line: 193, type: !2371)
!2371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2372)
!2372 = !{!2373}
!2373 = !DISubrange(count: 1024)
!2374 = !DILocation(line: 0, scope: !2367, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 234, column: 5, scope: !2364)
!2376 = !DILocation(line: 193, column: 3, scope: !2367, inlinedAt: !2375)
!2377 = !DILocation(line: 193, column: 8, scope: !2367, inlinedAt: !2375)
!2378 = !DILocation(line: 195, column: 7, scope: !2367, inlinedAt: !2375)
!2379 = !DILocation(line: 207, column: 9, scope: !2380, inlinedAt: !2375)
!2380 = distinct !DILexicalBlock(scope: !2367, file: !616, line: 207, column: 7)
!2381 = !DILocation(line: 207, column: 7, scope: !2367, inlinedAt: !2375)
!2382 = !DILocation(line: 208, column: 9, scope: !2380, inlinedAt: !2375)
!2383 = !DILocation(line: 208, column: 5, scope: !2380, inlinedAt: !2375)
!2384 = !DILocation(line: 214, column: 3, scope: !2367, inlinedAt: !2375)
!2385 = !DILocation(line: 216, column: 1, scope: !2367, inlinedAt: !2375)
!2386 = !DILocation(line: 234, column: 5, scope: !2364)
!2387 = !DILocation(line: 238, column: 3, scope: !2309)
!2388 = !DILocalVariable(name: "__c", arg: 1, scope: !2389, file: !1443, line: 101, type: !118)
!2389 = distinct !DISubprogram(name: "putc_unlocked", scope: !1443, file: !1443, line: 101, type: !2390, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2392)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!118, !118, !2322}
!2392 = !{!2388, !2393}
!2393 = !DILocalVariable(name: "__stream", arg: 2, scope: !2389, file: !1443, line: 101, type: !2322)
!2394 = !DILocation(line: 0, scope: !2389, inlinedAt: !2395)
!2395 = distinct !DILocation(line: 238, column: 3, scope: !2309)
!2396 = !DILocation(line: 103, column: 10, scope: !2389, inlinedAt: !2395)
!2397 = !DILocation(line: 240, column: 3, scope: !2309)
!2398 = !DILocation(line: 241, column: 7, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2309, file: !616, line: 241, column: 7)
!2400 = !DILocation(line: 241, column: 7, scope: !2309)
!2401 = !DILocation(line: 242, column: 5, scope: !2399)
!2402 = !DILocation(line: 243, column: 1, scope: !2309)
!2403 = !DISubprogram(name: "__vfprintf_chk", scope: !1082, file: !1082, line: 96, type: !2404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!118, !2321, !118, !1086, !626}
!2406 = !DISubprogram(name: "strerror_r", scope: !1217, file: !1217, line: 444, type: !2407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!167, !118, !167, !170}
!2409 = !DISubprogram(name: "fcntl", scope: !2410, file: !2410, line: 149, type: !2411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!2410 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!118, !118, !118, null}
!2413 = distinct !DISubprogram(name: "error", scope: !616, file: !616, line: 285, type: !2414, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2416)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{null, !118, !118, !173, null}
!2416 = !{!2417, !2418, !2419, !2420}
!2417 = !DILocalVariable(name: "status", arg: 1, scope: !2413, file: !616, line: 285, type: !118)
!2418 = !DILocalVariable(name: "errnum", arg: 2, scope: !2413, file: !616, line: 285, type: !118)
!2419 = !DILocalVariable(name: "message", arg: 3, scope: !2413, file: !616, line: 285, type: !173)
!2420 = !DILocalVariable(name: "ap", scope: !2413, file: !616, line: 287, type: !2421)
!2421 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1091, line: 52, baseType: !2422)
!2422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2423, line: 14, baseType: !2424)
!2423 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!2424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !630, baseType: !2425)
!2425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !627, size: 192, elements: !90)
!2426 = !DILocation(line: 0, scope: !2413)
!2427 = !DILocation(line: 287, column: 3, scope: !2413)
!2428 = !DILocation(line: 287, column: 11, scope: !2413)
!2429 = !DILocation(line: 288, column: 3, scope: !2413)
!2430 = !DILocation(line: 289, column: 3, scope: !2413)
!2431 = !DILocation(line: 290, column: 3, scope: !2413)
!2432 = !DILocation(line: 291, column: 1, scope: !2413)
!2433 = !DILocation(line: 0, scope: !623)
!2434 = !DILocation(line: 302, column: 7, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !623, file: !616, line: 302, column: 7)
!2436 = !DILocation(line: 302, column: 7, scope: !623)
!2437 = !DILocation(line: 307, column: 11, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !616, line: 307, column: 11)
!2439 = distinct !DILexicalBlock(scope: !2435, file: !616, line: 303, column: 5)
!2440 = !DILocation(line: 307, column: 27, scope: !2438)
!2441 = !DILocation(line: 308, column: 11, scope: !2438)
!2442 = !DILocation(line: 308, column: 28, scope: !2438)
!2443 = !DILocation(line: 308, column: 25, scope: !2438)
!2444 = !DILocation(line: 309, column: 15, scope: !2438)
!2445 = !DILocation(line: 309, column: 33, scope: !2438)
!2446 = !DILocation(line: 310, column: 19, scope: !2438)
!2447 = !DILocation(line: 311, column: 22, scope: !2438)
!2448 = !DILocation(line: 311, column: 56, scope: !2438)
!2449 = !DILocation(line: 307, column: 11, scope: !2439)
!2450 = !DILocation(line: 316, column: 21, scope: !2439)
!2451 = !DILocation(line: 317, column: 23, scope: !2439)
!2452 = !DILocation(line: 318, column: 5, scope: !2439)
!2453 = !DILocation(line: 327, column: 3, scope: !623)
!2454 = !DILocation(line: 331, column: 7, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !623, file: !616, line: 331, column: 7)
!2456 = !DILocation(line: 331, column: 7, scope: !623)
!2457 = !DILocation(line: 332, column: 5, scope: !2455)
!2458 = !DILocation(line: 338, column: 7, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2455, file: !616, line: 334, column: 5)
!2460 = !DILocation(line: 346, column: 3, scope: !623)
!2461 = !DILocation(line: 350, column: 3, scope: !623)
!2462 = !DILocation(line: 356, column: 1, scope: !623)
!2463 = distinct !DISubprogram(name: "error_at_line", scope: !616, file: !616, line: 359, type: !2464, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2466)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{null, !118, !118, !173, !112, !173, null}
!2466 = !{!2467, !2468, !2469, !2470, !2471, !2472}
!2467 = !DILocalVariable(name: "status", arg: 1, scope: !2463, file: !616, line: 359, type: !118)
!2468 = !DILocalVariable(name: "errnum", arg: 2, scope: !2463, file: !616, line: 359, type: !118)
!2469 = !DILocalVariable(name: "file_name", arg: 3, scope: !2463, file: !616, line: 359, type: !173)
!2470 = !DILocalVariable(name: "line_number", arg: 4, scope: !2463, file: !616, line: 360, type: !112)
!2471 = !DILocalVariable(name: "message", arg: 5, scope: !2463, file: !616, line: 360, type: !173)
!2472 = !DILocalVariable(name: "ap", scope: !2463, file: !616, line: 362, type: !2421)
!2473 = !DILocation(line: 0, scope: !2463)
!2474 = !DILocation(line: 362, column: 3, scope: !2463)
!2475 = !DILocation(line: 362, column: 11, scope: !2463)
!2476 = !DILocation(line: 363, column: 3, scope: !2463)
!2477 = !DILocation(line: 364, column: 3, scope: !2463)
!2478 = !DILocation(line: 366, column: 3, scope: !2463)
!2479 = !DILocation(line: 367, column: 1, scope: !2463)
!2480 = distinct !DISubprogram(name: "fdadvise", scope: !916, file: !916, line: 25, type: !2481, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !915, retainedNodes: !2485)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{null, !118, !2483, !2483, !2484}
!2483 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1091, line: 63, baseType: !291)
!2484 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !158, line: 51, baseType: !157)
!2485 = !{!2486, !2487, !2488, !2489}
!2486 = !DILocalVariable(name: "fd", arg: 1, scope: !2480, file: !916, line: 25, type: !118)
!2487 = !DILocalVariable(name: "offset", arg: 2, scope: !2480, file: !916, line: 25, type: !2483)
!2488 = !DILocalVariable(name: "len", arg: 3, scope: !2480, file: !916, line: 25, type: !2483)
!2489 = !DILocalVariable(name: "advice", arg: 4, scope: !2480, file: !916, line: 25, type: !2484)
!2490 = !DILocation(line: 0, scope: !2480)
!2491 = !DILocation(line: 28, column: 3, scope: !2480)
!2492 = !DILocation(line: 30, column: 1, scope: !2480)
!2493 = !DISubprogram(name: "posix_fadvise", scope: !2410, file: !2410, line: 273, type: !2494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!118, !118, !2483, !2483, !118}
!2496 = distinct !DISubprogram(name: "fadvise", scope: !916, file: !916, line: 33, type: !2497, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !915, retainedNodes: !2533)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{null, !2499, !2484}
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !2501)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !2502)
!2502 = !{!2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2501, file: !269, line: 51, baseType: !118, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2501, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2501, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2501, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2501, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2501, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2501, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2501, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2501, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2501, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2501, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2501, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2501, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2501, file: !269, line: 70, baseType: !2517, size: 64, offset: 832)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2501, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2501, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2501, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2501, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2501, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2501, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2501, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2501, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2501, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2501, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2501, file: !269, line: 93, baseType: !2517, size: 64, offset: 1344)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2501, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2501, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2501, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2501, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!2533 = !{!2534, !2535}
!2534 = !DILocalVariable(name: "fp", arg: 1, scope: !2496, file: !916, line: 33, type: !2499)
!2535 = !DILocalVariable(name: "advice", arg: 2, scope: !2496, file: !916, line: 33, type: !2484)
!2536 = !DILocation(line: 0, scope: !2496)
!2537 = !DILocation(line: 35, column: 7, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2496, file: !916, line: 35, column: 7)
!2539 = !DILocation(line: 35, column: 7, scope: !2496)
!2540 = !DILocation(line: 36, column: 15, scope: !2538)
!2541 = !DILocation(line: 0, scope: !2480, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 36, column: 5, scope: !2538)
!2543 = !DILocation(line: 28, column: 3, scope: !2480, inlinedAt: !2542)
!2544 = !DILocation(line: 36, column: 5, scope: !2538)
!2545 = !DILocation(line: 37, column: 1, scope: !2496)
!2546 = !DISubprogram(name: "fileno", scope: !1091, file: !1091, line: 809, type: !2547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!118, !2499}
!2549 = distinct !DISubprogram(name: "rpl_fclose", scope: !919, file: !919, line: 58, type: !2550, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !2586)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!118, !2552}
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !2554)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !2555)
!2555 = !{!2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2554, file: !269, line: 51, baseType: !118, size: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2554, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2554, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2554, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2554, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2554, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2554, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2554, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2554, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2554, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2554, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2554, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2554, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2554, file: !269, line: 70, baseType: !2570, size: 64, offset: 832)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2554, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2554, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2554, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2554, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2554, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2554, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2554, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2554, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2554, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2554, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2554, file: !269, line: 93, baseType: !2570, size: 64, offset: 1344)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2554, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2554, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2554, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2554, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!2586 = !{!2587, !2588, !2589, !2590}
!2587 = !DILocalVariable(name: "fp", arg: 1, scope: !2549, file: !919, line: 58, type: !2552)
!2588 = !DILocalVariable(name: "saved_errno", scope: !2549, file: !919, line: 60, type: !118)
!2589 = !DILocalVariable(name: "fd", scope: !2549, file: !919, line: 63, type: !118)
!2590 = !DILocalVariable(name: "result", scope: !2549, file: !919, line: 74, type: !118)
!2591 = !DILocation(line: 0, scope: !2549)
!2592 = !DILocation(line: 63, column: 12, scope: !2549)
!2593 = !DILocation(line: 64, column: 10, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2549, file: !919, line: 64, column: 7)
!2595 = !DILocation(line: 64, column: 7, scope: !2549)
!2596 = !DILocation(line: 65, column: 12, scope: !2594)
!2597 = !DILocation(line: 65, column: 5, scope: !2594)
!2598 = !DILocation(line: 70, column: 9, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2549, file: !919, line: 70, column: 7)
!2600 = !DILocation(line: 70, column: 23, scope: !2599)
!2601 = !DILocation(line: 70, column: 33, scope: !2599)
!2602 = !DILocation(line: 70, column: 26, scope: !2599)
!2603 = !DILocation(line: 70, column: 59, scope: !2599)
!2604 = !DILocation(line: 71, column: 7, scope: !2599)
!2605 = !DILocation(line: 71, column: 10, scope: !2599)
!2606 = !DILocation(line: 70, column: 7, scope: !2549)
!2607 = !DILocation(line: 100, column: 12, scope: !2549)
!2608 = !DILocation(line: 105, column: 7, scope: !2549)
!2609 = !DILocation(line: 72, column: 19, scope: !2599)
!2610 = !DILocation(line: 105, column: 19, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2549, file: !919, line: 105, column: 7)
!2612 = !DILocation(line: 107, column: 13, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2611, file: !919, line: 106, column: 5)
!2614 = !DILocation(line: 109, column: 5, scope: !2613)
!2615 = !DILocation(line: 112, column: 1, scope: !2549)
!2616 = !DISubprogram(name: "fclose", scope: !1091, file: !1091, line: 178, type: !2550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!2617 = !DISubprogram(name: "__freading", scope: !2618, file: !2618, line: 51, type: !2550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!2618 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2619 = !DISubprogram(name: "lseek", scope: !2275, file: !2275, line: 339, type: !2620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!291, !118, !291, !118}
!2622 = distinct !DISubprogram(name: "rpl_fflush", scope: !921, file: !921, line: 130, type: !2623, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !2659)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!118, !2625}
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !2627)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !2628)
!2628 = !{!2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2627, file: !269, line: 51, baseType: !118, size: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2627, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2627, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2627, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2627, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2627, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2627, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2627, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2627, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2627, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2627, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2627, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2627, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2627, file: !269, line: 70, baseType: !2643, size: 64, offset: 832)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2627, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2627, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2627, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2627, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2627, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2627, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2627, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2627, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2627, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2627, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2627, file: !269, line: 93, baseType: !2643, size: 64, offset: 1344)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2627, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2627, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2627, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2627, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!2659 = !{!2660}
!2660 = !DILocalVariable(name: "stream", arg: 1, scope: !2622, file: !921, line: 130, type: !2625)
!2661 = !DILocation(line: 0, scope: !2622)
!2662 = !DILocation(line: 151, column: 14, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2622, file: !921, line: 151, column: 7)
!2664 = !DILocation(line: 151, column: 22, scope: !2663)
!2665 = !DILocation(line: 151, column: 27, scope: !2663)
!2666 = !DILocation(line: 151, column: 7, scope: !2622)
!2667 = !DILocation(line: 152, column: 12, scope: !2663)
!2668 = !DILocation(line: 152, column: 5, scope: !2663)
!2669 = !DILocalVariable(name: "fp", arg: 1, scope: !2670, file: !921, line: 42, type: !2625)
!2670 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !921, file: !921, line: 42, type: !2671, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !2673)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{null, !2625}
!2673 = !{!2669}
!2674 = !DILocation(line: 0, scope: !2670, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 157, column: 3, scope: !2622)
!2676 = !DILocation(line: 44, column: 12, scope: !2677, inlinedAt: !2675)
!2677 = distinct !DILexicalBlock(scope: !2670, file: !921, line: 44, column: 7)
!2678 = !DILocation(line: 44, column: 19, scope: !2677, inlinedAt: !2675)
!2679 = !DILocation(line: 44, column: 7, scope: !2670, inlinedAt: !2675)
!2680 = !DILocation(line: 46, column: 5, scope: !2677, inlinedAt: !2675)
!2681 = !DILocation(line: 159, column: 10, scope: !2622)
!2682 = !DILocation(line: 159, column: 3, scope: !2622)
!2683 = !DILocation(line: 236, column: 1, scope: !2622)
!2684 = !DISubprogram(name: "fflush", scope: !1091, file: !1091, line: 230, type: !2623, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!2685 = distinct !DISubprogram(name: "fpurge", scope: !924, file: !924, line: 32, type: !2686, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !923, retainedNodes: !2722)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!118, !2688}
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !2690)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !2691)
!2691 = !{!2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2690, file: !269, line: 51, baseType: !118, size: 32)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2690, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2690, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2690, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2690, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2690, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2690, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2690, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2690, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2690, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2690, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2690, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2690, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2690, file: !269, line: 70, baseType: !2706, size: 64, offset: 832)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2690, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2690, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2690, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2690, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2690, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2690, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2690, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2690, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2690, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2690, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2690, file: !269, line: 93, baseType: !2706, size: 64, offset: 1344)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2690, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2690, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2690, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2690, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!2722 = !{!2723}
!2723 = !DILocalVariable(name: "fp", arg: 1, scope: !2685, file: !924, line: 32, type: !2688)
!2724 = !DILocation(line: 0, scope: !2685)
!2725 = !DILocation(line: 36, column: 3, scope: !2685)
!2726 = !DILocation(line: 38, column: 3, scope: !2685)
!2727 = !DISubprogram(name: "__fpurge", scope: !2618, file: !2618, line: 72, type: !2728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{null, !2688}
!2730 = distinct !DISubprogram(name: "rpl_fseeko", scope: !926, file: !926, line: 28, type: !2731, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !925, retainedNodes: !2767)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!118, !2733, !2483, !118}
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !2735)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !2736)
!2736 = !{!2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2735, file: !269, line: 51, baseType: !118, size: 32)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2735, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2735, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2735, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2735, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2735, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2735, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2735, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2735, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2735, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2735, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2735, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2735, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2735, file: !269, line: 70, baseType: !2751, size: 64, offset: 832)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2735, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2735, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2735, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2735, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2735, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2735, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2735, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2735, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2735, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2735, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2735, file: !269, line: 93, baseType: !2751, size: 64, offset: 1344)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2735, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2735, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2735, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2735, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!2767 = !{!2768, !2769, !2770, !2771}
!2768 = !DILocalVariable(name: "fp", arg: 1, scope: !2730, file: !926, line: 28, type: !2733)
!2769 = !DILocalVariable(name: "offset", arg: 2, scope: !2730, file: !926, line: 28, type: !2483)
!2770 = !DILocalVariable(name: "whence", arg: 3, scope: !2730, file: !926, line: 28, type: !118)
!2771 = !DILocalVariable(name: "pos", scope: !2772, file: !926, line: 123, type: !2483)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !926, line: 119, column: 5)
!2773 = distinct !DILexicalBlock(scope: !2730, file: !926, line: 55, column: 7)
!2774 = !DILocation(line: 0, scope: !2730)
!2775 = !DILocation(line: 55, column: 12, scope: !2773)
!2776 = !DILocation(line: 55, column: 33, scope: !2773)
!2777 = !DILocation(line: 55, column: 25, scope: !2773)
!2778 = !DILocation(line: 56, column: 7, scope: !2773)
!2779 = !DILocation(line: 56, column: 15, scope: !2773)
!2780 = !DILocation(line: 56, column: 37, scope: !2773)
!2781 = !{!1451, !1019, i64 32}
!2782 = !DILocation(line: 56, column: 29, scope: !2773)
!2783 = !DILocation(line: 57, column: 7, scope: !2773)
!2784 = !DILocation(line: 57, column: 15, scope: !2773)
!2785 = !{!1451, !1019, i64 72}
!2786 = !DILocation(line: 57, column: 29, scope: !2773)
!2787 = !DILocation(line: 55, column: 7, scope: !2730)
!2788 = !DILocation(line: 123, column: 26, scope: !2772)
!2789 = !DILocation(line: 123, column: 19, scope: !2772)
!2790 = !DILocation(line: 0, scope: !2772)
!2791 = !DILocation(line: 124, column: 15, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2772, file: !926, line: 124, column: 11)
!2793 = !DILocation(line: 124, column: 11, scope: !2772)
!2794 = !DILocation(line: 135, column: 19, scope: !2772)
!2795 = !DILocation(line: 136, column: 12, scope: !2772)
!2796 = !DILocation(line: 136, column: 20, scope: !2772)
!2797 = !{!1451, !1299, i64 144}
!2798 = !DILocation(line: 167, column: 7, scope: !2772)
!2799 = !DILocation(line: 169, column: 10, scope: !2730)
!2800 = !DILocation(line: 169, column: 3, scope: !2730)
!2801 = !DILocation(line: 170, column: 1, scope: !2730)
!2802 = !DISubprogram(name: "fseeko", scope: !1091, file: !1091, line: 736, type: !2803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!118, !2733, !291, !118}
!2805 = distinct !DISubprogram(name: "getndelim2", scope: !928, file: !928, line: 66, type: !2806, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !2842)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!1403, !1250, !951, !170, !170, !118, !118, !2808}
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !2810)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !2811)
!2811 = !{!2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2810, file: !269, line: 51, baseType: !118, size: 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2810, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2810, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2810, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2810, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2810, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2810, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2810, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2810, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2810, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2810, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2810, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2810, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2810, file: !269, line: 70, baseType: !2826, size: 64, offset: 832)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2810, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2810, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2810, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2810, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2810, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2810, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2810, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2810, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2810, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2810, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2810, file: !269, line: 93, baseType: !2826, size: 64, offset: 1344)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2810, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2810, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2810, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2810, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!2842 = !{!2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2858, !2859, !2860, !2865, !2868, !2869, !2872, !2875, !2876}
!2843 = !DILocalVariable(name: "lineptr", arg: 1, scope: !2805, file: !928, line: 66, type: !1250)
!2844 = !DILocalVariable(name: "linesize", arg: 2, scope: !2805, file: !928, line: 66, type: !951)
!2845 = !DILocalVariable(name: "offset", arg: 3, scope: !2805, file: !928, line: 66, type: !170)
!2846 = !DILocalVariable(name: "nmax", arg: 4, scope: !2805, file: !928, line: 66, type: !170)
!2847 = !DILocalVariable(name: "delim1", arg: 5, scope: !2805, file: !928, line: 67, type: !118)
!2848 = !DILocalVariable(name: "delim2", arg: 6, scope: !2805, file: !928, line: 67, type: !118)
!2849 = !DILocalVariable(name: "stream", arg: 7, scope: !2805, file: !928, line: 67, type: !2808)
!2850 = !DILocalVariable(name: "ptr", scope: !2805, file: !928, line: 69, type: !167)
!2851 = !DILocalVariable(name: "size", scope: !2805, file: !928, line: 70, type: !170)
!2852 = !DILocalVariable(name: "bytes_stored", scope: !2805, file: !928, line: 79, type: !1403)
!2853 = !DILocalVariable(name: "nbytes_avail", scope: !2805, file: !928, line: 84, type: !170)
!2854 = !DILocalVariable(name: "read_pos", scope: !2805, file: !928, line: 86, type: !167)
!2855 = !DILocalVariable(name: "found_delimiter", scope: !2805, file: !928, line: 99, type: !224)
!2856 = !DILocalVariable(name: "c", scope: !2857, file: !928, line: 105, type: !118)
!2857 = distinct !DILexicalBlock(scope: !2805, file: !928, line: 101, column: 5)
!2858 = !DILocalVariable(name: "buffer", scope: !2857, file: !928, line: 106, type: !173)
!2859 = !DILocalVariable(name: "buffer_len", scope: !2857, file: !928, line: 107, type: !170)
!2860 = !DILocalVariable(name: "end", scope: !2861, file: !928, line: 114, type: !173)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !928, line: 113, column: 13)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !928, line: 112, column: 15)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !928, line: 111, column: 9)
!2864 = distinct !DILexicalBlock(scope: !2857, file: !928, line: 110, column: 11)
!2865 = !DILocalVariable(name: "newsize", scope: !2866, file: !928, line: 146, type: !170)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !928, line: 143, column: 9)
!2867 = distinct !DILexicalBlock(scope: !2857, file: !928, line: 142, column: 11)
!2868 = !DILocalVariable(name: "newptr", scope: !2866, file: !928, line: 147, type: !167)
!2869 = !DILocalVariable(name: "newsizemax", scope: !2870, file: !928, line: 159, type: !170)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !928, line: 158, column: 13)
!2871 = distinct !DILexicalBlock(scope: !2866, file: !928, line: 157, column: 15)
!2872 = !DILocalVariable(name: "copy_len", scope: !2873, file: !928, line: 179, type: !170)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !928, line: 178, column: 9)
!2874 = distinct !DILexicalBlock(scope: !2857, file: !928, line: 177, column: 11)
!2875 = !DILabel(scope: !2805, name: "unlock_done", file: !928, line: 203)
!2876 = !DILabel(scope: !2805, name: "done", file: !928, line: 206)
!2877 = !DILocation(line: 0, scope: !2805)
!2878 = !DILocation(line: 69, column: 15, scope: !2805)
!2879 = !DILocation(line: 70, column: 17, scope: !2805)
!2880 = !DILocation(line: 71, column: 8, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2805, file: !928, line: 71, column: 7)
!2882 = !DILocation(line: 71, column: 7, scope: !2805)
!2883 = !DILocation(line: 73, column: 14, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2881, file: !928, line: 72, column: 5)
!2885 = !DILocation(line: 74, column: 13, scope: !2884)
!2886 = !DILocation(line: 75, column: 12, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2884, file: !928, line: 75, column: 11)
!2888 = !DILocation(line: 75, column: 11, scope: !2884)
!2889 = !DILocation(line: 81, column: 12, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2805, file: !928, line: 81, column: 7)
!2891 = !DILocation(line: 81, column: 7, scope: !2805)
!2892 = !DILocation(line: 85, column: 10, scope: !2805)
!2893 = !DILocation(line: 88, column: 20, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2805, file: !928, line: 88, column: 7)
!2895 = !DILocation(line: 88, column: 25, scope: !2894)
!2896 = !DILocation(line: 86, column: 24, scope: !2805)
!2897 = !DILocation(line: 92, column: 14, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2805, file: !928, line: 92, column: 7)
!2899 = !DILocation(line: 92, column: 7, scope: !2805)
!2900 = !DILocation(line: 100, column: 3, scope: !2805)
!2901 = !DILocation(line: 0, scope: !2857)
!2902 = !DILocation(line: 107, column: 7, scope: !2857)
!2903 = !DILocation(line: 109, column: 16, scope: !2857)
!2904 = !DILocation(line: 110, column: 11, scope: !2864)
!2905 = !DILocation(line: 110, column: 11, scope: !2857)
!2906 = !DILocation(line: 112, column: 15, scope: !2863)
!2907 = !DILocation(line: 114, column: 33, scope: !2861)
!2908 = !DILocation(line: 0, scope: !2861)
!2909 = !DILocation(line: 115, column: 19, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2861, file: !928, line: 115, column: 19)
!2911 = !DILocation(line: 115, column: 19, scope: !2861)
!2912 = !DILocation(line: 117, column: 36, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2910, file: !928, line: 116, column: 17)
!2914 = !DILocation(line: 117, column: 45, scope: !2913)
!2915 = !DILocation(line: 117, column: 30, scope: !2913)
!2916 = !DILocation(line: 119, column: 17, scope: !2913)
!2917 = !DILocalVariable(name: "__fp", arg: 1, scope: !2918, file: !1443, line: 66, type: !2808)
!2918 = distinct !DISubprogram(name: "getc_unlocked", scope: !1443, file: !1443, line: 66, type: !2919, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !2921)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!118, !2808}
!2921 = !{!2917}
!2922 = !DILocation(line: 0, scope: !2918, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 124, column: 15, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2864, file: !928, line: 123, column: 9)
!2925 = !DILocation(line: 68, column: 10, scope: !2918, inlinedAt: !2923)
!2926 = !DILocation(line: 125, column: 15, scope: !2924)
!2927 = !DILocation(line: 125, column: 17, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2924, file: !928, line: 125, column: 15)
!2929 = !DILocation(line: 128, column: 28, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !928, line: 128, column: 19)
!2931 = distinct !DILexicalBlock(scope: !2928, file: !928, line: 126, column: 13)
!2932 = !DILocation(line: 0, scope: !2930)
!2933 = !DILocation(line: 194, column: 5, scope: !2805)
!2934 = !DILocation(line: 133, column: 17, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2924, file: !928, line: 133, column: 15)
!2936 = !DILocation(line: 133, column: 27, scope: !2935)
!2937 = !DILocation(line: 135, column: 22, scope: !2924)
!2938 = !DILocation(line: 142, column: 26, scope: !2867)
!2939 = !DILocation(line: 142, column: 37, scope: !2867)
!2940 = !DILocation(line: 142, column: 24, scope: !2867)
!2941 = !DILocation(line: 142, column: 41, scope: !2867)
!2942 = !DILocation(line: 146, column: 33, scope: !2866)
!2943 = !DILocation(line: 146, column: 28, scope: !2866)
!2944 = !DILocation(line: 0, scope: !2866)
!2945 = !DILocation(line: 151, column: 35, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2866, file: !928, line: 151, column: 15)
!2947 = !DILocation(line: 151, column: 23, scope: !2946)
!2948 = !DILocation(line: 151, column: 42, scope: !2946)
!2949 = !DILocation(line: 151, column: 15, scope: !2866)
!2950 = !DILocation(line: 154, column: 23, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2866, file: !928, line: 154, column: 15)
!2952 = !DILocation(line: 154, column: 33, scope: !2951)
!2953 = !DILocation(line: 157, column: 44, scope: !2871)
!2954 = !DILocation(line: 157, column: 34, scope: !2871)
!2955 = !DILocation(line: 157, column: 15, scope: !2866)
!2956 = !DILocation(line: 0, scope: !2870)
!2957 = !DILocation(line: 160, column: 24, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2870, file: !928, line: 160, column: 19)
!2959 = !DILocation(line: 152, column: 21, scope: !2946)
!2960 = !DILocalVariable(name: "ptr", arg: 1, scope: !2961, file: !2962, line: 2057, type: !168)
!2961 = distinct !DISubprogram(name: "rpl_realloc", scope: !2962, file: !2962, line: 2057, type: !2963, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !2965)
!2962 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!168, !168, !170}
!2965 = !{!2960, !2966}
!2966 = !DILocalVariable(name: "size", arg: 2, scope: !2961, file: !2962, line: 2057, type: !170)
!2967 = !DILocation(line: 0, scope: !2961, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 166, column: 20, scope: !2866)
!2969 = !DILocation(line: 2059, column: 24, scope: !2961, inlinedAt: !2968)
!2970 = !DILocation(line: 2059, column: 10, scope: !2961, inlinedAt: !2968)
!2971 = !DILocation(line: 167, column: 16, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2866, file: !928, line: 167, column: 15)
!2973 = !DILocation(line: 167, column: 15, scope: !2866)
!2974 = !DILocation(line: 165, column: 34, scope: !2866)
!2975 = !DILocation(line: 171, column: 42, scope: !2866)
!2976 = !DILocation(line: 177, column: 13, scope: !2874)
!2977 = !DILocation(line: 177, column: 11, scope: !2857)
!2978 = !DILocation(line: 179, column: 42, scope: !2873)
!2979 = !DILocation(line: 0, scope: !2873)
!2980 = !DILocation(line: 180, column: 15, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2873, file: !928, line: 180, column: 15)
!2982 = !DILocation(line: 180, column: 15, scope: !2873)
!2983 = !DILocation(line: 182, column: 15, scope: !2873)
!2984 = !DILocalVariable(name: "__dest", arg: 1, scope: !2985, file: !2095, line: 26, type: !2988)
!2985 = distinct !DISubprogram(name: "memcpy", scope: !2095, file: !2095, line: 26, type: !2986, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !2989)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!168, !2988, !1244, !170}
!2988 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !168)
!2989 = !{!2984, !2990, !2991}
!2990 = !DILocalVariable(name: "__src", arg: 2, scope: !2985, file: !2095, line: 26, type: !1244)
!2991 = !DILocalVariable(name: "__len", arg: 3, scope: !2985, file: !2095, line: 26, type: !170)
!2992 = !DILocation(line: 0, scope: !2985, inlinedAt: !2993)
!2993 = distinct !DILocation(line: 183, column: 13, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2873, file: !928, line: 182, column: 15)
!2995 = !DILocation(line: 29, column: 10, scope: !2985, inlinedAt: !2993)
!2996 = !DILocation(line: 183, column: 13, scope: !2994)
!2997 = !DILocation(line: 185, column: 25, scope: !2994)
!2998 = !DILocation(line: 185, column: 23, scope: !2994)
!2999 = !DILocation(line: 186, column: 20, scope: !2873)
!3000 = !DILocation(line: 187, column: 24, scope: !2873)
!3001 = !DILocation(line: 188, column: 9, scope: !2873)
!3002 = !DILocation(line: 192, column: 18, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2857, file: !928, line: 192, column: 11)
!3004 = !DILocation(line: 192, column: 40, scope: !3003)
!3005 = !DILocation(line: 192, column: 21, scope: !3003)
!3006 = !DILocation(line: 192, column: 11, scope: !2857)
!3007 = !DILocation(line: 195, column: 11, scope: !2805)
!3008 = !DILocation(line: 194, column: 5, scope: !2857)
!3009 = distinct !{!3009, !2900, !3010, !1143}
!3010 = !DILocation(line: 195, column: 26, scope: !2805)
!3011 = !DILocation(line: 206, column: 2, scope: !2805)
!3012 = !DILocation(line: 207, column: 12, scope: !2805)
!3013 = !DILocation(line: 208, column: 13, scope: !2805)
!3014 = !DILocation(line: 209, column: 10, scope: !2805)
!3015 = !DILocation(line: 201, column: 34, scope: !2805)
!3016 = !DILocation(line: 199, column: 13, scope: !2805)
!3017 = !DILocation(line: 201, column: 27, scope: !2805)
!3018 = !DILocation(line: 210, column: 1, scope: !2805)
!3019 = !DISubprogram(name: "malloc", scope: !1221, file: !1221, line: 540, type: !3020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!168, !170}
!3022 = !DISubprogram(name: "realloc", scope: !1221, file: !1221, line: 551, type: !2963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!3023 = distinct !DISubprogram(name: "getprogname", scope: !931, file: !931, line: 54, type: !3024, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !930, retainedNodes: !1027)
!3024 = !DISubroutineType(types: !983)
!3025 = !DILocation(line: 58, column: 10, scope: !3023)
!3026 = !DILocation(line: 58, column: 3, scope: !3023)
!3027 = distinct !DISubprogram(name: "memchr2", scope: !933, file: !933, line: 36, type: !3028, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !932, retainedNodes: !3030)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!168, !1245, !118, !118, !170}
!3030 = !{!3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3042, !3046, !3048, !3049, !3050, !3052, !3053}
!3031 = !DILocalVariable(name: "s", arg: 1, scope: !3027, file: !933, line: 36, type: !1245)
!3032 = !DILocalVariable(name: "c1_in", arg: 2, scope: !3027, file: !933, line: 36, type: !118)
!3033 = !DILocalVariable(name: "c2_in", arg: 3, scope: !3027, file: !933, line: 36, type: !118)
!3034 = !DILocalVariable(name: "n", arg: 4, scope: !3027, file: !933, line: 36, type: !170)
!3035 = !DILocalVariable(name: "c1", scope: !3027, file: !933, line: 45, type: !175)
!3036 = !DILocalVariable(name: "c2", scope: !3027, file: !933, line: 46, type: !175)
!3037 = !DILocalVariable(name: "void_ptr", scope: !3027, file: !933, line: 53, type: !1245)
!3038 = !DILocalVariable(name: "char_ptr", scope: !3039, file: !933, line: 58, type: !936)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !933, line: 57, column: 5)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !933, line: 54, column: 3)
!3041 = distinct !DILexicalBlock(scope: !3027, file: !933, line: 54, column: 3)
!3042 = !DILocalVariable(name: "longword_ptr", scope: !3027, file: !933, line: 64, type: !3043)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3045)
!3045 = !DIDerivedType(tag: DW_TAG_typedef, name: "longword", scope: !3027, file: !933, line: 43, baseType: !172)
!3046 = !DILocalVariable(name: "repeated_one", scope: !3047, file: !933, line: 73, type: !3045)
!3047 = distinct !DILexicalBlock(scope: !3027, file: !933, line: 68, column: 3)
!3048 = !DILocalVariable(name: "repeated_c1", scope: !3047, file: !933, line: 74, type: !3045)
!3049 = !DILocalVariable(name: "repeated_c2", scope: !3047, file: !933, line: 75, type: !3045)
!3050 = !DILocalVariable(name: "longword1", scope: !3051, file: !933, line: 130, type: !3045)
!3051 = distinct !DILexicalBlock(scope: !3047, file: !933, line: 129, column: 7)
!3052 = !DILocalVariable(name: "longword2", scope: !3051, file: !933, line: 131, type: !3045)
!3053 = !DILocalVariable(name: "char_ptr", scope: !3054, file: !933, line: 143, type: !936)
!3054 = distinct !DILexicalBlock(scope: !3027, file: !933, line: 142, column: 3)
!3055 = !DILocation(line: 0, scope: !3027)
!3056 = !DILocation(line: 48, column: 7, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3027, file: !933, line: 48, column: 7)
!3058 = !DILocation(line: 48, column: 13, scope: !3057)
!3059 = !DILocation(line: 48, column: 10, scope: !3057)
!3060 = !DILocation(line: 48, column: 7, scope: !3027)
!3061 = !DILocation(line: 55, column: 10, scope: !3040)
!3062 = !DILocation(line: 55, column: 14, scope: !3040)
!3063 = !DILocation(line: 54, column: 3, scope: !3041)
!3064 = !DILocation(line: 49, column: 21, scope: !3057)
!3065 = !DILocation(line: 49, column: 5, scope: !3057)
!3066 = !DILocation(line: 0, scope: !3039)
!3067 = !DILocation(line: 59, column: 11, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3039, file: !933, line: 59, column: 11)
!3069 = !DILocation(line: 59, column: 21, scope: !3068)
!3070 = !DILocation(line: 59, column: 27, scope: !3068)
!3071 = !DILocation(line: 56, column: 8, scope: !3040)
!3072 = distinct !{!3072, !3063, !3073, !1143}
!3073 = !DILocation(line: 62, column: 5, scope: !3041)
!3074 = !DILocation(line: 54, column: 17, scope: !3041)
!3075 = !DILocation(line: 0, scope: !3047)
!3076 = !DILocation(line: 76, column: 17, scope: !3047)
!3077 = !DILocation(line: 77, column: 17, scope: !3047)
!3078 = !DILocation(line: 81, column: 21, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3080, file: !933, line: 79, column: 7)
!3080 = distinct !DILexicalBlock(scope: !3047, file: !933, line: 78, column: 9)
!3081 = !DILocation(line: 82, column: 21, scope: !3079)
!3082 = !DILocation(line: 128, column: 5, scope: !3047)
!3083 = !DILocation(line: 64, column: 19, scope: !3027)
!3084 = !DILocation(line: 128, column: 14, scope: !3047)
!3085 = !DILocation(line: 130, column: 30, scope: !3051)
!3086 = !DILocation(line: 130, column: 44, scope: !3051)
!3087 = !DILocation(line: 0, scope: !3051)
!3088 = !DILocation(line: 131, column: 44, scope: !3051)
!3089 = !DILocation(line: 133, column: 27, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3051, file: !933, line: 133, column: 13)
!3091 = !DILocation(line: 133, column: 45, scope: !3090)
!3092 = !DILocation(line: 133, column: 43, scope: !3090)
!3093 = !DILocation(line: 134, column: 29, scope: !3090)
!3094 = !DILocation(line: 134, column: 47, scope: !3090)
!3095 = !DILocation(line: 134, column: 45, scope: !3090)
!3096 = !DILocation(line: 134, column: 15, scope: !3090)
!3097 = !DILocation(line: 135, column: 14, scope: !3090)
!3098 = !DILocation(line: 135, column: 37, scope: !3090)
!3099 = !DILocation(line: 133, column: 13, scope: !3051)
!3100 = !DILocation(line: 0, scope: !3054)
!3101 = !DILocation(line: 152, column: 14, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3103, file: !933, line: 152, column: 5)
!3103 = distinct !DILexicalBlock(scope: !3054, file: !933, line: 152, column: 5)
!3104 = !DILocation(line: 152, column: 5, scope: !3103)
!3105 = !DILocation(line: 154, column: 13, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !933, line: 154, column: 13)
!3107 = distinct !DILexicalBlock(scope: !3102, file: !933, line: 153, column: 7)
!3108 = !DILocation(line: 154, column: 23, scope: !3106)
!3109 = !DILocation(line: 154, column: 29, scope: !3106)
!3110 = !DILocation(line: 152, column: 19, scope: !3102)
!3111 = !DILocation(line: 152, column: 24, scope: !3102)
!3112 = distinct !{!3112, !3104, !3113, !1143}
!3113 = !DILocation(line: 156, column: 7, scope: !3103)
!3114 = !DILocation(line: 160, column: 1, scope: !3027)
!3115 = !DISubprogram(name: "memchr", scope: !1217, file: !1217, line: 107, type: !3116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!168, !1245, !118, !170}
!3118 = distinct !DISubprogram(name: "set_program_name", scope: !668, file: !668, line: 37, type: !1047, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3119)
!3119 = !{!3120, !3121, !3122}
!3120 = !DILocalVariable(name: "argv0", arg: 1, scope: !3118, file: !668, line: 37, type: !173)
!3121 = !DILocalVariable(name: "slash", scope: !3118, file: !668, line: 44, type: !173)
!3122 = !DILocalVariable(name: "base", scope: !3118, file: !668, line: 45, type: !173)
!3123 = !DILocation(line: 0, scope: !3118)
!3124 = !DILocation(line: 44, column: 23, scope: !3118)
!3125 = !DILocation(line: 45, column: 22, scope: !3118)
!3126 = !DILocation(line: 46, column: 17, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3118, file: !668, line: 46, column: 7)
!3128 = !DILocation(line: 46, column: 9, scope: !3127)
!3129 = !DILocation(line: 46, column: 25, scope: !3127)
!3130 = !DILocation(line: 46, column: 40, scope: !3127)
!3131 = !DILocalVariable(name: "__s1", arg: 1, scope: !3132, file: !1109, line: 974, type: !1245)
!3132 = distinct !DISubprogram(name: "memeq", scope: !1109, file: !1109, line: 974, type: !3133, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3135)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!224, !1245, !1245, !170}
!3135 = !{!3131, !3136, !3137}
!3136 = !DILocalVariable(name: "__s2", arg: 2, scope: !3132, file: !1109, line: 974, type: !1245)
!3137 = !DILocalVariable(name: "__n", arg: 3, scope: !3132, file: !1109, line: 974, type: !170)
!3138 = !DILocation(line: 0, scope: !3132, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 46, column: 28, scope: !3127)
!3140 = !DILocation(line: 976, column: 11, scope: !3132, inlinedAt: !3139)
!3141 = !DILocation(line: 976, column: 10, scope: !3132, inlinedAt: !3139)
!3142 = !DILocation(line: 46, column: 7, scope: !3118)
!3143 = !DILocation(line: 49, column: 11, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !668, line: 49, column: 11)
!3145 = distinct !DILexicalBlock(scope: !3127, file: !668, line: 47, column: 5)
!3146 = !DILocation(line: 49, column: 36, scope: !3144)
!3147 = !DILocation(line: 49, column: 11, scope: !3145)
!3148 = !DILocation(line: 65, column: 16, scope: !3118)
!3149 = !DILocation(line: 71, column: 27, scope: !3118)
!3150 = !DILocation(line: 74, column: 33, scope: !3118)
!3151 = !DILocation(line: 76, column: 1, scope: !3118)
!3152 = !DISubprogram(name: "strrchr", scope: !1217, file: !1217, line: 273, type: !1232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!3153 = !DILocation(line: 0, scope: !677)
!3154 = !DILocation(line: 40, column: 29, scope: !677)
!3155 = !DILocation(line: 41, column: 19, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !677, file: !678, line: 41, column: 7)
!3157 = !DILocation(line: 41, column: 7, scope: !677)
!3158 = !DILocation(line: 47, column: 3, scope: !677)
!3159 = !DILocation(line: 48, column: 3, scope: !677)
!3160 = !DILocation(line: 48, column: 13, scope: !677)
!3161 = !DILocalVariable(name: "ps", arg: 1, scope: !3162, file: !3163, line: 1135, type: !3166)
!3162 = distinct !DISubprogram(name: "mbszero", scope: !3163, file: !3163, line: 1135, type: !3164, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3167)
!3163 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!3164 = !DISubroutineType(types: !3165)
!3165 = !{null, !3166}
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!3167 = !{!3161}
!3168 = !DILocation(line: 0, scope: !3162, inlinedAt: !3169)
!3169 = distinct !DILocation(line: 48, column: 18, scope: !677)
!3170 = !DILocalVariable(name: "__dest", arg: 1, scope: !3171, file: !2095, line: 57, type: !168)
!3171 = distinct !DISubprogram(name: "memset", scope: !2095, file: !2095, line: 57, type: !3172, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3174)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!168, !168, !118, !170}
!3174 = !{!3170, !3175, !3176}
!3175 = !DILocalVariable(name: "__ch", arg: 2, scope: !3171, file: !2095, line: 57, type: !118)
!3176 = !DILocalVariable(name: "__len", arg: 3, scope: !3171, file: !2095, line: 57, type: !170)
!3177 = !DILocation(line: 0, scope: !3171, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 1137, column: 3, scope: !3162, inlinedAt: !3169)
!3179 = !DILocation(line: 59, column: 10, scope: !3171, inlinedAt: !3178)
!3180 = !DILocation(line: 49, column: 7, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !677, file: !678, line: 49, column: 7)
!3182 = !DILocation(line: 49, column: 39, scope: !3181)
!3183 = !DILocation(line: 49, column: 44, scope: !3181)
!3184 = !DILocation(line: 54, column: 1, scope: !677)
!3185 = !DISubprogram(name: "mbrtoc32", scope: !689, file: !689, line: 57, type: !3186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!170, !3188, !1086, !170, !3190}
!3188 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3189)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3166)
!3191 = distinct !DISubprogram(name: "clone_quoting_options", scope: !708, file: !708, line: 113, type: !3192, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3195)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!3194, !3194}
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!3195 = !{!3196, !3197, !3198}
!3196 = !DILocalVariable(name: "o", arg: 1, scope: !3191, file: !708, line: 113, type: !3194)
!3197 = !DILocalVariable(name: "saved_errno", scope: !3191, file: !708, line: 115, type: !118)
!3198 = !DILocalVariable(name: "p", scope: !3191, file: !708, line: 116, type: !3194)
!3199 = !DILocation(line: 0, scope: !3191)
!3200 = !DILocation(line: 115, column: 21, scope: !3191)
!3201 = !DILocation(line: 116, column: 40, scope: !3191)
!3202 = !DILocation(line: 116, column: 31, scope: !3191)
!3203 = !DILocation(line: 118, column: 9, scope: !3191)
!3204 = !DILocation(line: 119, column: 3, scope: !3191)
!3205 = distinct !DISubprogram(name: "get_quoting_style", scope: !708, file: !708, line: 124, type: !3206, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3210)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!143, !3208}
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !744)
!3210 = !{!3211}
!3211 = !DILocalVariable(name: "o", arg: 1, scope: !3205, file: !708, line: 124, type: !3208)
!3212 = !DILocation(line: 0, scope: !3205)
!3213 = !DILocation(line: 126, column: 11, scope: !3205)
!3214 = !DILocation(line: 126, column: 46, scope: !3205)
!3215 = !{!3216, !1020, i64 0}
!3216 = !{!"quoting_options", !1020, i64 0, !1097, i64 4, !1020, i64 8, !1019, i64 40, !1019, i64 48}
!3217 = !DILocation(line: 126, column: 3, scope: !3205)
!3218 = distinct !DISubprogram(name: "set_quoting_style", scope: !708, file: !708, line: 132, type: !3219, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3221)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{null, !3194, !143}
!3221 = !{!3222, !3223}
!3222 = !DILocalVariable(name: "o", arg: 1, scope: !3218, file: !708, line: 132, type: !3194)
!3223 = !DILocalVariable(name: "s", arg: 2, scope: !3218, file: !708, line: 132, type: !143)
!3224 = !DILocation(line: 0, scope: !3218)
!3225 = !DILocation(line: 134, column: 4, scope: !3218)
!3226 = !DILocation(line: 134, column: 45, scope: !3218)
!3227 = !DILocation(line: 135, column: 1, scope: !3218)
!3228 = distinct !DISubprogram(name: "set_char_quoting", scope: !708, file: !708, line: 143, type: !3229, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3231)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!118, !3194, !4, !118}
!3231 = !{!3232, !3233, !3234, !3235, !3236, !3238, !3239}
!3232 = !DILocalVariable(name: "o", arg: 1, scope: !3228, file: !708, line: 143, type: !3194)
!3233 = !DILocalVariable(name: "c", arg: 2, scope: !3228, file: !708, line: 143, type: !4)
!3234 = !DILocalVariable(name: "i", arg: 3, scope: !3228, file: !708, line: 143, type: !118)
!3235 = !DILocalVariable(name: "uc", scope: !3228, file: !708, line: 145, type: !175)
!3236 = !DILocalVariable(name: "p", scope: !3228, file: !708, line: 146, type: !3237)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!3238 = !DILocalVariable(name: "shift", scope: !3228, file: !708, line: 148, type: !118)
!3239 = !DILocalVariable(name: "r", scope: !3228, file: !708, line: 149, type: !112)
!3240 = !DILocation(line: 0, scope: !3228)
!3241 = !DILocation(line: 147, column: 6, scope: !3228)
!3242 = !DILocation(line: 147, column: 41, scope: !3228)
!3243 = !DILocation(line: 147, column: 62, scope: !3228)
!3244 = !DILocation(line: 147, column: 57, scope: !3228)
!3245 = !DILocation(line: 148, column: 15, scope: !3228)
!3246 = !DILocation(line: 149, column: 21, scope: !3228)
!3247 = !DILocation(line: 149, column: 24, scope: !3228)
!3248 = !DILocation(line: 149, column: 34, scope: !3228)
!3249 = !DILocation(line: 150, column: 19, scope: !3228)
!3250 = !DILocation(line: 150, column: 24, scope: !3228)
!3251 = !DILocation(line: 150, column: 6, scope: !3228)
!3252 = !DILocation(line: 151, column: 3, scope: !3228)
!3253 = distinct !DISubprogram(name: "set_quoting_flags", scope: !708, file: !708, line: 159, type: !3254, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3256)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!118, !3194, !118}
!3256 = !{!3257, !3258, !3259}
!3257 = !DILocalVariable(name: "o", arg: 1, scope: !3253, file: !708, line: 159, type: !3194)
!3258 = !DILocalVariable(name: "i", arg: 2, scope: !3253, file: !708, line: 159, type: !118)
!3259 = !DILocalVariable(name: "r", scope: !3253, file: !708, line: 163, type: !118)
!3260 = !DILocation(line: 0, scope: !3253)
!3261 = !DILocation(line: 161, column: 8, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3253, file: !708, line: 161, column: 7)
!3263 = !DILocation(line: 161, column: 7, scope: !3253)
!3264 = !DILocation(line: 163, column: 14, scope: !3253)
!3265 = !{!3216, !1097, i64 4}
!3266 = !DILocation(line: 164, column: 12, scope: !3253)
!3267 = !DILocation(line: 165, column: 3, scope: !3253)
!3268 = distinct !DISubprogram(name: "set_custom_quoting", scope: !708, file: !708, line: 169, type: !3269, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3271)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{null, !3194, !173, !173}
!3271 = !{!3272, !3273, !3274}
!3272 = !DILocalVariable(name: "o", arg: 1, scope: !3268, file: !708, line: 169, type: !3194)
!3273 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3268, file: !708, line: 170, type: !173)
!3274 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3268, file: !708, line: 170, type: !173)
!3275 = !DILocation(line: 0, scope: !3268)
!3276 = !DILocation(line: 172, column: 8, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3268, file: !708, line: 172, column: 7)
!3278 = !DILocation(line: 172, column: 7, scope: !3268)
!3279 = !DILocation(line: 174, column: 12, scope: !3268)
!3280 = !DILocation(line: 175, column: 8, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3268, file: !708, line: 175, column: 7)
!3282 = !DILocation(line: 175, column: 19, scope: !3281)
!3283 = !DILocation(line: 176, column: 5, scope: !3281)
!3284 = !DILocation(line: 177, column: 6, scope: !3268)
!3285 = !DILocation(line: 177, column: 17, scope: !3268)
!3286 = !{!3216, !1019, i64 40}
!3287 = !DILocation(line: 178, column: 6, scope: !3268)
!3288 = !DILocation(line: 178, column: 18, scope: !3268)
!3289 = !{!3216, !1019, i64 48}
!3290 = !DILocation(line: 179, column: 1, scope: !3268)
!3291 = !DISubprogram(name: "abort", scope: !1221, file: !1221, line: 598, type: !663, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!3292 = distinct !DISubprogram(name: "quotearg_buffer", scope: !708, file: !708, line: 774, type: !3293, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3295)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!170, !167, !170, !173, !170, !3208}
!3295 = !{!3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303}
!3296 = !DILocalVariable(name: "buffer", arg: 1, scope: !3292, file: !708, line: 774, type: !167)
!3297 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3292, file: !708, line: 774, type: !170)
!3298 = !DILocalVariable(name: "arg", arg: 3, scope: !3292, file: !708, line: 775, type: !173)
!3299 = !DILocalVariable(name: "argsize", arg: 4, scope: !3292, file: !708, line: 775, type: !170)
!3300 = !DILocalVariable(name: "o", arg: 5, scope: !3292, file: !708, line: 776, type: !3208)
!3301 = !DILocalVariable(name: "p", scope: !3292, file: !708, line: 778, type: !3208)
!3302 = !DILocalVariable(name: "saved_errno", scope: !3292, file: !708, line: 779, type: !118)
!3303 = !DILocalVariable(name: "r", scope: !3292, file: !708, line: 780, type: !170)
!3304 = !DILocation(line: 0, scope: !3292)
!3305 = !DILocation(line: 778, column: 37, scope: !3292)
!3306 = !DILocation(line: 779, column: 21, scope: !3292)
!3307 = !DILocation(line: 781, column: 43, scope: !3292)
!3308 = !DILocation(line: 781, column: 53, scope: !3292)
!3309 = !DILocation(line: 781, column: 63, scope: !3292)
!3310 = !DILocation(line: 782, column: 43, scope: !3292)
!3311 = !DILocation(line: 782, column: 58, scope: !3292)
!3312 = !DILocation(line: 780, column: 14, scope: !3292)
!3313 = !DILocation(line: 783, column: 9, scope: !3292)
!3314 = !DILocation(line: 784, column: 3, scope: !3292)
!3315 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !708, file: !708, line: 251, type: !3316, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3320)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!170, !167, !170, !173, !170, !143, !118, !3318, !173, !173}
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!3320 = !{!3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3345, !3347, !3350, !3351, !3352, !3353, !3356, !3357, !3360, !3364, !3365, !3373, !3376, !3377, !3379, !3380, !3381, !3382}
!3321 = !DILocalVariable(name: "buffer", arg: 1, scope: !3315, file: !708, line: 251, type: !167)
!3322 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3315, file: !708, line: 251, type: !170)
!3323 = !DILocalVariable(name: "arg", arg: 3, scope: !3315, file: !708, line: 252, type: !173)
!3324 = !DILocalVariable(name: "argsize", arg: 4, scope: !3315, file: !708, line: 252, type: !170)
!3325 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3315, file: !708, line: 253, type: !143)
!3326 = !DILocalVariable(name: "flags", arg: 6, scope: !3315, file: !708, line: 253, type: !118)
!3327 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3315, file: !708, line: 254, type: !3318)
!3328 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3315, file: !708, line: 255, type: !173)
!3329 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3315, file: !708, line: 256, type: !173)
!3330 = !DILocalVariable(name: "unibyte_locale", scope: !3315, file: !708, line: 258, type: !224)
!3331 = !DILocalVariable(name: "len", scope: !3315, file: !708, line: 260, type: !170)
!3332 = !DILocalVariable(name: "orig_buffersize", scope: !3315, file: !708, line: 261, type: !170)
!3333 = !DILocalVariable(name: "quote_string", scope: !3315, file: !708, line: 262, type: !173)
!3334 = !DILocalVariable(name: "quote_string_len", scope: !3315, file: !708, line: 263, type: !170)
!3335 = !DILocalVariable(name: "backslash_escapes", scope: !3315, file: !708, line: 264, type: !224)
!3336 = !DILocalVariable(name: "elide_outer_quotes", scope: !3315, file: !708, line: 265, type: !224)
!3337 = !DILocalVariable(name: "encountered_single_quote", scope: !3315, file: !708, line: 266, type: !224)
!3338 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3315, file: !708, line: 267, type: !224)
!3339 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3315, file: !708, line: 309, type: !224)
!3340 = !DILocalVariable(name: "lq", scope: !3341, file: !708, line: 361, type: !173)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !708, line: 361, column: 11)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !708, line: 360, column: 13)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !708, line: 333, column: 7)
!3344 = distinct !DILexicalBlock(scope: !3315, file: !708, line: 312, column: 5)
!3345 = !DILocalVariable(name: "i", scope: !3346, file: !708, line: 395, type: !170)
!3346 = distinct !DILexicalBlock(scope: !3315, file: !708, line: 395, column: 3)
!3347 = !DILocalVariable(name: "is_right_quote", scope: !3348, file: !708, line: 397, type: !224)
!3348 = distinct !DILexicalBlock(scope: !3349, file: !708, line: 396, column: 5)
!3349 = distinct !DILexicalBlock(scope: !3346, file: !708, line: 395, column: 3)
!3350 = !DILocalVariable(name: "escaping", scope: !3348, file: !708, line: 398, type: !224)
!3351 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3348, file: !708, line: 399, type: !224)
!3352 = !DILocalVariable(name: "c", scope: !3348, file: !708, line: 417, type: !175)
!3353 = !DILocalVariable(name: "m", scope: !3354, file: !708, line: 598, type: !170)
!3354 = distinct !DILexicalBlock(scope: !3355, file: !708, line: 596, column: 11)
!3355 = distinct !DILexicalBlock(scope: !3348, file: !708, line: 419, column: 9)
!3356 = !DILocalVariable(name: "printable", scope: !3354, file: !708, line: 600, type: !224)
!3357 = !DILocalVariable(name: "mbs", scope: !3358, file: !708, line: 609, type: !778)
!3358 = distinct !DILexicalBlock(scope: !3359, file: !708, line: 608, column: 15)
!3359 = distinct !DILexicalBlock(scope: !3354, file: !708, line: 602, column: 17)
!3360 = !DILocalVariable(name: "w", scope: !3361, file: !708, line: 618, type: !688)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !708, line: 617, column: 19)
!3362 = distinct !DILexicalBlock(scope: !3363, file: !708, line: 616, column: 17)
!3363 = distinct !DILexicalBlock(scope: !3358, file: !708, line: 616, column: 17)
!3364 = !DILocalVariable(name: "bytes", scope: !3361, file: !708, line: 619, type: !170)
!3365 = !DILocalVariable(name: "j", scope: !3366, file: !708, line: 648, type: !170)
!3366 = distinct !DILexicalBlock(scope: !3367, file: !708, line: 648, column: 29)
!3367 = distinct !DILexicalBlock(scope: !3368, file: !708, line: 647, column: 27)
!3368 = distinct !DILexicalBlock(scope: !3369, file: !708, line: 645, column: 29)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !708, line: 636, column: 23)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !708, line: 628, column: 30)
!3371 = distinct !DILexicalBlock(scope: !3372, file: !708, line: 623, column: 30)
!3372 = distinct !DILexicalBlock(scope: !3361, file: !708, line: 621, column: 25)
!3373 = !DILocalVariable(name: "ilim", scope: !3374, file: !708, line: 674, type: !170)
!3374 = distinct !DILexicalBlock(scope: !3375, file: !708, line: 671, column: 15)
!3375 = distinct !DILexicalBlock(scope: !3354, file: !708, line: 670, column: 17)
!3376 = !DILabel(scope: !3315, name: "process_input", file: !708, line: 308)
!3377 = !DILabel(scope: !3378, name: "c_and_shell_escape", file: !708, line: 502)
!3378 = distinct !DILexicalBlock(scope: !3355, file: !708, line: 478, column: 9)
!3379 = !DILabel(scope: !3378, name: "c_escape", file: !708, line: 507)
!3380 = !DILabel(scope: !3348, name: "store_escape", file: !708, line: 709)
!3381 = !DILabel(scope: !3348, name: "store_c", file: !708, line: 712)
!3382 = !DILabel(scope: !3315, name: "force_outer_quoting_style", file: !708, line: 753)
!3383 = !DILocation(line: 0, scope: !3315)
!3384 = !DILocation(line: 258, column: 25, scope: !3315)
!3385 = !DILocation(line: 258, column: 36, scope: !3315)
!3386 = !DILocation(line: 265, column: 8, scope: !3315)
!3387 = !DILocation(line: 267, column: 3, scope: !3315)
!3388 = !DILocation(line: 261, column: 10, scope: !3315)
!3389 = !DILocation(line: 262, column: 15, scope: !3315)
!3390 = !DILocation(line: 263, column: 10, scope: !3315)
!3391 = !DILocation(line: 264, column: 8, scope: !3315)
!3392 = !DILocation(line: 266, column: 8, scope: !3315)
!3393 = !DILocation(line: 267, column: 8, scope: !3315)
!3394 = !DILocation(line: 308, column: 2, scope: !3315)
!3395 = !DILocation(line: 311, column: 3, scope: !3315)
!3396 = !DILocation(line: 318, column: 11, scope: !3344)
!3397 = !DILocation(line: 318, column: 12, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3344, file: !708, line: 318, column: 11)
!3399 = !DILocation(line: 319, column: 9, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !708, line: 319, column: 9)
!3401 = distinct !DILexicalBlock(scope: !3398, file: !708, line: 319, column: 9)
!3402 = !DILocation(line: 319, column: 9, scope: !3401)
!3403 = !DILocation(line: 0, scope: !769, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 357, column: 26, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !708, line: 335, column: 11)
!3406 = distinct !DILexicalBlock(scope: !3343, file: !708, line: 334, column: 13)
!3407 = !DILocation(line: 199, column: 29, scope: !769, inlinedAt: !3404)
!3408 = !DILocation(line: 201, column: 19, scope: !3409, inlinedAt: !3404)
!3409 = distinct !DILexicalBlock(scope: !769, file: !708, line: 201, column: 7)
!3410 = !DILocation(line: 201, column: 7, scope: !769, inlinedAt: !3404)
!3411 = !DILocation(line: 229, column: 3, scope: !769, inlinedAt: !3404)
!3412 = !DILocation(line: 230, column: 3, scope: !769, inlinedAt: !3404)
!3413 = !DILocation(line: 230, column: 13, scope: !769, inlinedAt: !3404)
!3414 = !DILocalVariable(name: "ps", arg: 1, scope: !3415, file: !3163, line: 1135, type: !3418)
!3415 = distinct !DISubprogram(name: "mbszero", scope: !3163, file: !3163, line: 1135, type: !3416, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3419)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{null, !3418}
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!3419 = !{!3414}
!3420 = !DILocation(line: 0, scope: !3415, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 230, column: 18, scope: !769, inlinedAt: !3404)
!3422 = !DILocalVariable(name: "__dest", arg: 1, scope: !3423, file: !2095, line: 57, type: !168)
!3423 = distinct !DISubprogram(name: "memset", scope: !2095, file: !2095, line: 57, type: !3172, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3424)
!3424 = !{!3422, !3425, !3426}
!3425 = !DILocalVariable(name: "__ch", arg: 2, scope: !3423, file: !2095, line: 57, type: !118)
!3426 = !DILocalVariable(name: "__len", arg: 3, scope: !3423, file: !2095, line: 57, type: !170)
!3427 = !DILocation(line: 0, scope: !3423, inlinedAt: !3428)
!3428 = distinct !DILocation(line: 1137, column: 3, scope: !3415, inlinedAt: !3421)
!3429 = !DILocation(line: 59, column: 10, scope: !3423, inlinedAt: !3428)
!3430 = !DILocation(line: 231, column: 7, scope: !3431, inlinedAt: !3404)
!3431 = distinct !DILexicalBlock(scope: !769, file: !708, line: 231, column: 7)
!3432 = !DILocation(line: 231, column: 40, scope: !3431, inlinedAt: !3404)
!3433 = !DILocation(line: 231, column: 45, scope: !3431, inlinedAt: !3404)
!3434 = !DILocation(line: 235, column: 1, scope: !769, inlinedAt: !3404)
!3435 = !DILocation(line: 0, scope: !769, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 358, column: 27, scope: !3405)
!3437 = !DILocation(line: 199, column: 29, scope: !769, inlinedAt: !3436)
!3438 = !DILocation(line: 201, column: 19, scope: !3409, inlinedAt: !3436)
!3439 = !DILocation(line: 201, column: 7, scope: !769, inlinedAt: !3436)
!3440 = !DILocation(line: 229, column: 3, scope: !769, inlinedAt: !3436)
!3441 = !DILocation(line: 230, column: 3, scope: !769, inlinedAt: !3436)
!3442 = !DILocation(line: 230, column: 13, scope: !769, inlinedAt: !3436)
!3443 = !DILocation(line: 0, scope: !3415, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 230, column: 18, scope: !769, inlinedAt: !3436)
!3445 = !DILocation(line: 0, scope: !3423, inlinedAt: !3446)
!3446 = distinct !DILocation(line: 1137, column: 3, scope: !3415, inlinedAt: !3444)
!3447 = !DILocation(line: 59, column: 10, scope: !3423, inlinedAt: !3446)
!3448 = !DILocation(line: 231, column: 7, scope: !3431, inlinedAt: !3436)
!3449 = !DILocation(line: 231, column: 40, scope: !3431, inlinedAt: !3436)
!3450 = !DILocation(line: 231, column: 45, scope: !3431, inlinedAt: !3436)
!3451 = !DILocation(line: 235, column: 1, scope: !769, inlinedAt: !3436)
!3452 = !DILocation(line: 360, column: 14, scope: !3342)
!3453 = !DILocation(line: 360, column: 13, scope: !3343)
!3454 = !DILocation(line: 0, scope: !3341)
!3455 = !DILocation(line: 361, column: 45, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3341, file: !708, line: 361, column: 11)
!3457 = !DILocation(line: 361, column: 11, scope: !3341)
!3458 = !DILocation(line: 362, column: 13, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3460, file: !708, line: 362, column: 13)
!3460 = distinct !DILexicalBlock(scope: !3456, file: !708, line: 362, column: 13)
!3461 = !DILocation(line: 362, column: 13, scope: !3460)
!3462 = !DILocation(line: 361, column: 52, scope: !3456)
!3463 = distinct !{!3463, !3457, !3464, !1143}
!3464 = !DILocation(line: 362, column: 13, scope: !3341)
!3465 = !DILocation(line: 260, column: 10, scope: !3315)
!3466 = !DILocation(line: 365, column: 28, scope: !3343)
!3467 = !DILocation(line: 367, column: 7, scope: !3344)
!3468 = !DILocation(line: 370, column: 7, scope: !3344)
!3469 = !DILocation(line: 373, column: 7, scope: !3344)
!3470 = !DILocation(line: 376, column: 12, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3344, file: !708, line: 376, column: 11)
!3472 = !DILocation(line: 376, column: 11, scope: !3344)
!3473 = !DILocation(line: 381, column: 12, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3344, file: !708, line: 381, column: 11)
!3475 = !DILocation(line: 381, column: 11, scope: !3344)
!3476 = !DILocation(line: 382, column: 9, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3478, file: !708, line: 382, column: 9)
!3478 = distinct !DILexicalBlock(scope: !3474, file: !708, line: 382, column: 9)
!3479 = !DILocation(line: 382, column: 9, scope: !3478)
!3480 = !DILocation(line: 389, column: 7, scope: !3344)
!3481 = !DILocation(line: 392, column: 7, scope: !3344)
!3482 = !DILocation(line: 0, scope: !3346)
!3483 = !DILocation(line: 395, column: 8, scope: !3346)
!3484 = !DILocation(line: 309, column: 8, scope: !3315)
!3485 = !DILocation(line: 395, scope: !3346)
!3486 = !DILocation(line: 395, column: 34, scope: !3349)
!3487 = !DILocation(line: 395, column: 26, scope: !3349)
!3488 = !DILocation(line: 395, column: 48, scope: !3349)
!3489 = !DILocation(line: 395, column: 55, scope: !3349)
!3490 = !DILocation(line: 395, column: 3, scope: !3346)
!3491 = !DILocation(line: 395, column: 67, scope: !3349)
!3492 = !DILocation(line: 0, scope: !3348)
!3493 = !DILocation(line: 402, column: 11, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3348, file: !708, line: 401, column: 11)
!3495 = !DILocation(line: 404, column: 17, scope: !3494)
!3496 = !DILocation(line: 405, column: 39, scope: !3494)
!3497 = !DILocation(line: 409, column: 32, scope: !3494)
!3498 = !DILocation(line: 405, column: 19, scope: !3494)
!3499 = !DILocation(line: 405, column: 15, scope: !3494)
!3500 = !DILocation(line: 410, column: 11, scope: !3494)
!3501 = !DILocation(line: 410, column: 25, scope: !3494)
!3502 = !DILocalVariable(name: "__s1", arg: 1, scope: !3503, file: !1109, line: 974, type: !1245)
!3503 = distinct !DISubprogram(name: "memeq", scope: !1109, file: !1109, line: 974, type: !3133, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3504)
!3504 = !{!3502, !3505, !3506}
!3505 = !DILocalVariable(name: "__s2", arg: 2, scope: !3503, file: !1109, line: 974, type: !1245)
!3506 = !DILocalVariable(name: "__n", arg: 3, scope: !3503, file: !1109, line: 974, type: !170)
!3507 = !DILocation(line: 0, scope: !3503, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 410, column: 14, scope: !3494)
!3509 = !DILocation(line: 976, column: 11, scope: !3503, inlinedAt: !3508)
!3510 = !DILocation(line: 976, column: 10, scope: !3503, inlinedAt: !3508)
!3511 = !DILocation(line: 401, column: 11, scope: !3348)
!3512 = !DILocation(line: 417, column: 25, scope: !3348)
!3513 = !DILocation(line: 418, column: 7, scope: !3348)
!3514 = !DILocation(line: 421, column: 15, scope: !3355)
!3515 = !DILocation(line: 423, column: 15, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3517, file: !708, line: 423, column: 15)
!3517 = distinct !DILexicalBlock(scope: !3518, file: !708, line: 422, column: 13)
!3518 = distinct !DILexicalBlock(scope: !3355, file: !708, line: 421, column: 15)
!3519 = !DILocation(line: 423, column: 15, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3516, file: !708, line: 423, column: 15)
!3521 = !DILocation(line: 423, column: 15, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3523, file: !708, line: 423, column: 15)
!3523 = distinct !DILexicalBlock(scope: !3524, file: !708, line: 423, column: 15)
!3524 = distinct !DILexicalBlock(scope: !3520, file: !708, line: 423, column: 15)
!3525 = !DILocation(line: 423, column: 15, scope: !3523)
!3526 = !DILocation(line: 423, column: 15, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3528, file: !708, line: 423, column: 15)
!3528 = distinct !DILexicalBlock(scope: !3524, file: !708, line: 423, column: 15)
!3529 = !DILocation(line: 423, column: 15, scope: !3528)
!3530 = !DILocation(line: 423, column: 15, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !708, line: 423, column: 15)
!3532 = distinct !DILexicalBlock(scope: !3524, file: !708, line: 423, column: 15)
!3533 = !DILocation(line: 423, column: 15, scope: !3532)
!3534 = !DILocation(line: 423, column: 15, scope: !3524)
!3535 = !DILocation(line: 423, column: 15, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !708, line: 423, column: 15)
!3537 = distinct !DILexicalBlock(scope: !3516, file: !708, line: 423, column: 15)
!3538 = !DILocation(line: 423, column: 15, scope: !3537)
!3539 = !DILocation(line: 431, column: 19, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3517, file: !708, line: 430, column: 19)
!3541 = !DILocation(line: 431, column: 24, scope: !3540)
!3542 = !DILocation(line: 431, column: 28, scope: !3540)
!3543 = !DILocation(line: 431, column: 38, scope: !3540)
!3544 = !DILocation(line: 431, column: 48, scope: !3540)
!3545 = !DILocation(line: 431, column: 59, scope: !3540)
!3546 = !DILocation(line: 433, column: 19, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !708, line: 433, column: 19)
!3548 = distinct !DILexicalBlock(scope: !3549, file: !708, line: 433, column: 19)
!3549 = distinct !DILexicalBlock(scope: !3540, file: !708, line: 432, column: 17)
!3550 = !DILocation(line: 433, column: 19, scope: !3548)
!3551 = !DILocation(line: 434, column: 19, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3553, file: !708, line: 434, column: 19)
!3553 = distinct !DILexicalBlock(scope: !3549, file: !708, line: 434, column: 19)
!3554 = !DILocation(line: 434, column: 19, scope: !3553)
!3555 = !DILocation(line: 435, column: 17, scope: !3549)
!3556 = !DILocation(line: 442, column: 20, scope: !3518)
!3557 = !DILocation(line: 447, column: 11, scope: !3355)
!3558 = !DILocation(line: 450, column: 19, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3355, file: !708, line: 448, column: 13)
!3560 = !DILocation(line: 456, column: 19, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3559, file: !708, line: 455, column: 19)
!3562 = !DILocation(line: 456, column: 24, scope: !3561)
!3563 = !DILocation(line: 456, column: 28, scope: !3561)
!3564 = !DILocation(line: 456, column: 38, scope: !3561)
!3565 = !DILocation(line: 456, column: 47, scope: !3561)
!3566 = !DILocation(line: 456, column: 41, scope: !3561)
!3567 = !DILocation(line: 456, column: 52, scope: !3561)
!3568 = !DILocation(line: 455, column: 19, scope: !3559)
!3569 = !DILocation(line: 457, column: 25, scope: !3561)
!3570 = !DILocation(line: 457, column: 17, scope: !3561)
!3571 = !DILocation(line: 464, column: 25, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3561, file: !708, line: 458, column: 19)
!3573 = !DILocation(line: 468, column: 21, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3575, file: !708, line: 468, column: 21)
!3575 = distinct !DILexicalBlock(scope: !3572, file: !708, line: 468, column: 21)
!3576 = !DILocation(line: 468, column: 21, scope: !3575)
!3577 = !DILocation(line: 469, column: 21, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !708, line: 469, column: 21)
!3579 = distinct !DILexicalBlock(scope: !3572, file: !708, line: 469, column: 21)
!3580 = !DILocation(line: 469, column: 21, scope: !3579)
!3581 = !DILocation(line: 470, column: 21, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3583, file: !708, line: 470, column: 21)
!3583 = distinct !DILexicalBlock(scope: !3572, file: !708, line: 470, column: 21)
!3584 = !DILocation(line: 470, column: 21, scope: !3583)
!3585 = !DILocation(line: 471, column: 21, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3587, file: !708, line: 471, column: 21)
!3587 = distinct !DILexicalBlock(scope: !3572, file: !708, line: 471, column: 21)
!3588 = !DILocation(line: 471, column: 21, scope: !3587)
!3589 = !DILocation(line: 472, column: 21, scope: !3572)
!3590 = !DILocation(line: 482, column: 33, scope: !3378)
!3591 = !DILocation(line: 483, column: 33, scope: !3378)
!3592 = !DILocation(line: 485, column: 33, scope: !3378)
!3593 = !DILocation(line: 486, column: 33, scope: !3378)
!3594 = !DILocation(line: 487, column: 33, scope: !3378)
!3595 = !DILocation(line: 490, column: 17, scope: !3378)
!3596 = !DILocation(line: 492, column: 21, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3598, file: !708, line: 491, column: 15)
!3598 = distinct !DILexicalBlock(scope: !3378, file: !708, line: 490, column: 17)
!3599 = !DILocation(line: 499, column: 35, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3378, file: !708, line: 499, column: 17)
!3601 = !DILocation(line: 499, column: 57, scope: !3600)
!3602 = !DILocation(line: 0, scope: !3378)
!3603 = !DILocation(line: 502, column: 11, scope: !3378)
!3604 = !DILocation(line: 504, column: 17, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3378, file: !708, line: 503, column: 17)
!3606 = !DILocation(line: 507, column: 11, scope: !3378)
!3607 = !DILocation(line: 508, column: 17, scope: !3378)
!3608 = !DILocation(line: 517, column: 15, scope: !3355)
!3609 = !DILocation(line: 517, column: 40, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3355, file: !708, line: 517, column: 15)
!3611 = !DILocation(line: 517, column: 47, scope: !3610)
!3612 = !DILocation(line: 517, column: 18, scope: !3610)
!3613 = !DILocation(line: 521, column: 17, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3355, file: !708, line: 521, column: 15)
!3615 = !DILocation(line: 521, column: 15, scope: !3355)
!3616 = !DILocation(line: 525, column: 11, scope: !3355)
!3617 = !DILocation(line: 537, column: 15, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3355, file: !708, line: 536, column: 15)
!3619 = !DILocation(line: 544, column: 15, scope: !3355)
!3620 = !DILocation(line: 546, column: 19, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3622, file: !708, line: 545, column: 13)
!3622 = distinct !DILexicalBlock(scope: !3355, file: !708, line: 544, column: 15)
!3623 = !DILocation(line: 549, column: 19, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3621, file: !708, line: 549, column: 19)
!3625 = !DILocation(line: 549, column: 30, scope: !3624)
!3626 = !DILocation(line: 558, column: 15, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !708, line: 558, column: 15)
!3628 = distinct !DILexicalBlock(scope: !3621, file: !708, line: 558, column: 15)
!3629 = !DILocation(line: 558, column: 15, scope: !3628)
!3630 = !DILocation(line: 559, column: 15, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3632, file: !708, line: 559, column: 15)
!3632 = distinct !DILexicalBlock(scope: !3621, file: !708, line: 559, column: 15)
!3633 = !DILocation(line: 559, column: 15, scope: !3632)
!3634 = !DILocation(line: 560, column: 15, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3636, file: !708, line: 560, column: 15)
!3636 = distinct !DILexicalBlock(scope: !3621, file: !708, line: 560, column: 15)
!3637 = !DILocation(line: 560, column: 15, scope: !3636)
!3638 = !DILocation(line: 562, column: 13, scope: !3621)
!3639 = !DILocation(line: 602, column: 17, scope: !3354)
!3640 = !DILocation(line: 0, scope: !3354)
!3641 = !DILocation(line: 605, column: 29, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3359, file: !708, line: 603, column: 15)
!3643 = !DILocation(line: 605, column: 27, scope: !3642)
!3644 = !DILocation(line: 668, column: 40, scope: !3354)
!3645 = !DILocation(line: 670, column: 23, scope: !3375)
!3646 = !DILocation(line: 609, column: 17, scope: !3358)
!3647 = !DILocation(line: 609, column: 27, scope: !3358)
!3648 = !DILocation(line: 0, scope: !3415, inlinedAt: !3649)
!3649 = distinct !DILocation(line: 609, column: 32, scope: !3358)
!3650 = !DILocation(line: 0, scope: !3423, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 1137, column: 3, scope: !3415, inlinedAt: !3649)
!3652 = !DILocation(line: 59, column: 10, scope: !3423, inlinedAt: !3651)
!3653 = !DILocation(line: 613, column: 29, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3358, file: !708, line: 613, column: 21)
!3655 = !DILocation(line: 613, column: 21, scope: !3358)
!3656 = !DILocation(line: 614, column: 29, scope: !3654)
!3657 = !DILocation(line: 614, column: 19, scope: !3654)
!3658 = !DILocation(line: 618, column: 21, scope: !3361)
!3659 = !DILocation(line: 620, column: 54, scope: !3361)
!3660 = !DILocation(line: 0, scope: !3361)
!3661 = !DILocation(line: 619, column: 36, scope: !3361)
!3662 = !DILocation(line: 621, column: 25, scope: !3361)
!3663 = !DILocation(line: 631, column: 38, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3370, file: !708, line: 629, column: 23)
!3665 = !DILocation(line: 631, column: 48, scope: !3664)
!3666 = !DILocation(line: 665, column: 19, scope: !3362)
!3667 = !DILocation(line: 666, column: 15, scope: !3359)
!3668 = !DILocation(line: 626, column: 25, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3371, file: !708, line: 624, column: 23)
!3670 = !DILocation(line: 631, column: 51, scope: !3664)
!3671 = !DILocation(line: 631, column: 25, scope: !3664)
!3672 = !DILocation(line: 632, column: 28, scope: !3664)
!3673 = !DILocation(line: 631, column: 34, scope: !3664)
!3674 = distinct !{!3674, !3671, !3672, !1143}
!3675 = !DILocation(line: 646, column: 29, scope: !3368)
!3676 = !DILocation(line: 0, scope: !3366)
!3677 = !DILocation(line: 649, column: 49, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3366, file: !708, line: 648, column: 29)
!3679 = !DILocation(line: 649, column: 39, scope: !3678)
!3680 = !DILocation(line: 649, column: 31, scope: !3678)
!3681 = !DILocation(line: 648, column: 60, scope: !3678)
!3682 = !DILocation(line: 648, column: 50, scope: !3678)
!3683 = !DILocation(line: 648, column: 29, scope: !3366)
!3684 = distinct !{!3684, !3683, !3685, !1143}
!3685 = !DILocation(line: 654, column: 33, scope: !3366)
!3686 = !DILocation(line: 657, column: 43, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3369, file: !708, line: 657, column: 29)
!3688 = !DILocalVariable(name: "wc", arg: 1, scope: !3689, file: !3690, line: 865, type: !3693)
!3689 = distinct !DISubprogram(name: "c32isprint", scope: !3690, file: !3690, line: 865, type: !3691, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3695)
!3690 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!118, !3693}
!3693 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3694, line: 20, baseType: !112)
!3694 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3695 = !{!3688}
!3696 = !DILocation(line: 0, scope: !3689, inlinedAt: !3697)
!3697 = distinct !DILocation(line: 657, column: 31, scope: !3687)
!3698 = !DILocation(line: 871, column: 10, scope: !3689, inlinedAt: !3697)
!3699 = !DILocation(line: 657, column: 31, scope: !3687)
!3700 = !DILocation(line: 657, column: 29, scope: !3369)
!3701 = !DILocation(line: 664, column: 23, scope: !3361)
!3702 = !DILocation(line: 670, column: 19, scope: !3375)
!3703 = !DILocation(line: 670, column: 45, scope: !3375)
!3704 = !DILocation(line: 674, column: 33, scope: !3374)
!3705 = !DILocation(line: 0, scope: !3374)
!3706 = !DILocation(line: 676, column: 17, scope: !3374)
!3707 = !DILocation(line: 398, column: 12, scope: !3348)
!3708 = !DILocation(line: 678, column: 43, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3710, file: !708, line: 678, column: 25)
!3710 = distinct !DILexicalBlock(scope: !3711, file: !708, line: 677, column: 19)
!3711 = distinct !DILexicalBlock(scope: !3712, file: !708, line: 676, column: 17)
!3712 = distinct !DILexicalBlock(scope: !3374, file: !708, line: 676, column: 17)
!3713 = !DILocation(line: 680, column: 25, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3715, file: !708, line: 680, column: 25)
!3715 = distinct !DILexicalBlock(scope: !3709, file: !708, line: 679, column: 23)
!3716 = !DILocation(line: 680, column: 25, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3714, file: !708, line: 680, column: 25)
!3718 = !DILocation(line: 680, column: 25, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3720, file: !708, line: 680, column: 25)
!3720 = distinct !DILexicalBlock(scope: !3721, file: !708, line: 680, column: 25)
!3721 = distinct !DILexicalBlock(scope: !3717, file: !708, line: 680, column: 25)
!3722 = !DILocation(line: 680, column: 25, scope: !3720)
!3723 = !DILocation(line: 680, column: 25, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3725, file: !708, line: 680, column: 25)
!3725 = distinct !DILexicalBlock(scope: !3721, file: !708, line: 680, column: 25)
!3726 = !DILocation(line: 680, column: 25, scope: !3725)
!3727 = !DILocation(line: 680, column: 25, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3729, file: !708, line: 680, column: 25)
!3729 = distinct !DILexicalBlock(scope: !3721, file: !708, line: 680, column: 25)
!3730 = !DILocation(line: 680, column: 25, scope: !3729)
!3731 = !DILocation(line: 680, column: 25, scope: !3721)
!3732 = !DILocation(line: 680, column: 25, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3734, file: !708, line: 680, column: 25)
!3734 = distinct !DILexicalBlock(scope: !3714, file: !708, line: 680, column: 25)
!3735 = !DILocation(line: 680, column: 25, scope: !3734)
!3736 = !DILocation(line: 681, column: 25, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3738, file: !708, line: 681, column: 25)
!3738 = distinct !DILexicalBlock(scope: !3715, file: !708, line: 681, column: 25)
!3739 = !DILocation(line: 681, column: 25, scope: !3738)
!3740 = !DILocation(line: 682, column: 25, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3742, file: !708, line: 682, column: 25)
!3742 = distinct !DILexicalBlock(scope: !3715, file: !708, line: 682, column: 25)
!3743 = !DILocation(line: 682, column: 25, scope: !3742)
!3744 = !DILocation(line: 683, column: 38, scope: !3715)
!3745 = !DILocation(line: 683, column: 33, scope: !3715)
!3746 = !DILocation(line: 684, column: 23, scope: !3715)
!3747 = !DILocation(line: 685, column: 30, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3709, file: !708, line: 685, column: 30)
!3749 = !DILocation(line: 685, column: 30, scope: !3709)
!3750 = !DILocation(line: 687, column: 25, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3752, file: !708, line: 687, column: 25)
!3752 = distinct !DILexicalBlock(scope: !3753, file: !708, line: 687, column: 25)
!3753 = distinct !DILexicalBlock(scope: !3748, file: !708, line: 686, column: 23)
!3754 = !DILocation(line: 687, column: 25, scope: !3752)
!3755 = !DILocation(line: 689, column: 23, scope: !3753)
!3756 = !DILocation(line: 690, column: 35, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3710, file: !708, line: 690, column: 25)
!3758 = !DILocation(line: 690, column: 30, scope: !3757)
!3759 = !DILocation(line: 690, column: 25, scope: !3710)
!3760 = !DILocation(line: 692, column: 21, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3762, file: !708, line: 692, column: 21)
!3762 = distinct !DILexicalBlock(scope: !3710, file: !708, line: 692, column: 21)
!3763 = !DILocation(line: 692, column: 21, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3765, file: !708, line: 692, column: 21)
!3765 = distinct !DILexicalBlock(scope: !3766, file: !708, line: 692, column: 21)
!3766 = distinct !DILexicalBlock(scope: !3761, file: !708, line: 692, column: 21)
!3767 = !DILocation(line: 692, column: 21, scope: !3765)
!3768 = !DILocation(line: 692, column: 21, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3770, file: !708, line: 692, column: 21)
!3770 = distinct !DILexicalBlock(scope: !3766, file: !708, line: 692, column: 21)
!3771 = !DILocation(line: 692, column: 21, scope: !3770)
!3772 = !DILocation(line: 692, column: 21, scope: !3766)
!3773 = !DILocation(line: 0, scope: !3710)
!3774 = !DILocation(line: 693, column: 21, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3776, file: !708, line: 693, column: 21)
!3776 = distinct !DILexicalBlock(scope: !3710, file: !708, line: 693, column: 21)
!3777 = !DILocation(line: 693, column: 21, scope: !3776)
!3778 = !DILocation(line: 694, column: 25, scope: !3710)
!3779 = !DILocation(line: 676, column: 17, scope: !3711)
!3780 = distinct !{!3780, !3781, !3782}
!3781 = !DILocation(line: 676, column: 17, scope: !3712)
!3782 = !DILocation(line: 695, column: 19, scope: !3712)
!3783 = !DILocation(line: 409, column: 30, scope: !3494)
!3784 = !DILocation(line: 702, column: 34, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3348, file: !708, line: 702, column: 11)
!3786 = !DILocation(line: 704, column: 14, scope: !3785)
!3787 = !DILocation(line: 705, column: 14, scope: !3785)
!3788 = !DILocation(line: 705, column: 35, scope: !3785)
!3789 = !DILocation(line: 705, column: 17, scope: !3785)
!3790 = !DILocation(line: 705, column: 47, scope: !3785)
!3791 = !DILocation(line: 705, column: 65, scope: !3785)
!3792 = !DILocation(line: 706, column: 11, scope: !3785)
!3793 = !DILocation(line: 702, column: 11, scope: !3348)
!3794 = !DILocation(line: 395, column: 15, scope: !3346)
!3795 = !DILocation(line: 709, column: 5, scope: !3348)
!3796 = !DILocation(line: 710, column: 7, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3348, file: !708, line: 710, column: 7)
!3798 = !DILocation(line: 710, column: 7, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3797, file: !708, line: 710, column: 7)
!3800 = !DILocation(line: 710, column: 7, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3802, file: !708, line: 710, column: 7)
!3802 = distinct !DILexicalBlock(scope: !3803, file: !708, line: 710, column: 7)
!3803 = distinct !DILexicalBlock(scope: !3799, file: !708, line: 710, column: 7)
!3804 = !DILocation(line: 710, column: 7, scope: !3802)
!3805 = !DILocation(line: 710, column: 7, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3807, file: !708, line: 710, column: 7)
!3807 = distinct !DILexicalBlock(scope: !3803, file: !708, line: 710, column: 7)
!3808 = !DILocation(line: 710, column: 7, scope: !3807)
!3809 = !DILocation(line: 710, column: 7, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3811, file: !708, line: 710, column: 7)
!3811 = distinct !DILexicalBlock(scope: !3803, file: !708, line: 710, column: 7)
!3812 = !DILocation(line: 710, column: 7, scope: !3811)
!3813 = !DILocation(line: 710, column: 7, scope: !3803)
!3814 = !DILocation(line: 710, column: 7, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3816, file: !708, line: 710, column: 7)
!3816 = distinct !DILexicalBlock(scope: !3797, file: !708, line: 710, column: 7)
!3817 = !DILocation(line: 710, column: 7, scope: !3816)
!3818 = !DILocation(line: 712, column: 5, scope: !3348)
!3819 = !DILocation(line: 713, column: 7, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3821, file: !708, line: 713, column: 7)
!3821 = distinct !DILexicalBlock(scope: !3348, file: !708, line: 713, column: 7)
!3822 = !DILocation(line: 417, column: 21, scope: !3348)
!3823 = !DILocation(line: 713, column: 7, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3825, file: !708, line: 713, column: 7)
!3825 = distinct !DILexicalBlock(scope: !3826, file: !708, line: 713, column: 7)
!3826 = distinct !DILexicalBlock(scope: !3820, file: !708, line: 713, column: 7)
!3827 = !DILocation(line: 713, column: 7, scope: !3825)
!3828 = !DILocation(line: 713, column: 7, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3830, file: !708, line: 713, column: 7)
!3830 = distinct !DILexicalBlock(scope: !3826, file: !708, line: 713, column: 7)
!3831 = !DILocation(line: 713, column: 7, scope: !3830)
!3832 = !DILocation(line: 713, column: 7, scope: !3826)
!3833 = !DILocation(line: 714, column: 7, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3835, file: !708, line: 714, column: 7)
!3835 = distinct !DILexicalBlock(scope: !3348, file: !708, line: 714, column: 7)
!3836 = !DILocation(line: 714, column: 7, scope: !3835)
!3837 = !DILocation(line: 716, column: 13, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3348, file: !708, line: 716, column: 11)
!3839 = !DILocation(line: 716, column: 11, scope: !3348)
!3840 = !DILocation(line: 718, column: 5, scope: !3349)
!3841 = !DILocation(line: 395, column: 82, scope: !3349)
!3842 = !DILocation(line: 395, column: 3, scope: !3349)
!3843 = distinct !{!3843, !3490, !3844, !1143}
!3844 = !DILocation(line: 718, column: 5, scope: !3346)
!3845 = !DILocation(line: 720, column: 11, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3315, file: !708, line: 720, column: 7)
!3847 = !DILocation(line: 720, column: 16, scope: !3846)
!3848 = !DILocation(line: 728, column: 51, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3315, file: !708, line: 728, column: 7)
!3850 = !DILocation(line: 731, column: 11, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3852, file: !708, line: 731, column: 11)
!3852 = distinct !DILexicalBlock(scope: !3849, file: !708, line: 730, column: 5)
!3853 = !DILocation(line: 731, column: 11, scope: !3852)
!3854 = !DILocation(line: 732, column: 16, scope: !3851)
!3855 = !DILocation(line: 732, column: 9, scope: !3851)
!3856 = !DILocation(line: 736, column: 18, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3851, file: !708, line: 736, column: 16)
!3858 = !DILocation(line: 736, column: 29, scope: !3857)
!3859 = !DILocation(line: 745, column: 7, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3315, file: !708, line: 745, column: 7)
!3861 = !DILocation(line: 745, column: 20, scope: !3860)
!3862 = !DILocation(line: 746, column: 12, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3864, file: !708, line: 746, column: 5)
!3864 = distinct !DILexicalBlock(scope: !3860, file: !708, line: 746, column: 5)
!3865 = !DILocation(line: 746, column: 5, scope: !3864)
!3866 = !DILocation(line: 747, column: 7, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3868, file: !708, line: 747, column: 7)
!3868 = distinct !DILexicalBlock(scope: !3863, file: !708, line: 747, column: 7)
!3869 = !DILocation(line: 747, column: 7, scope: !3868)
!3870 = !DILocation(line: 746, column: 39, scope: !3863)
!3871 = distinct !{!3871, !3865, !3872, !1143}
!3872 = !DILocation(line: 747, column: 7, scope: !3864)
!3873 = !DILocation(line: 749, column: 11, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3315, file: !708, line: 749, column: 7)
!3875 = !DILocation(line: 749, column: 7, scope: !3315)
!3876 = !DILocation(line: 750, column: 5, scope: !3874)
!3877 = !DILocation(line: 750, column: 17, scope: !3874)
!3878 = !DILocation(line: 753, column: 2, scope: !3315)
!3879 = !DILocation(line: 756, column: 51, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3315, file: !708, line: 756, column: 7)
!3881 = !DILocation(line: 756, column: 21, scope: !3880)
!3882 = !DILocation(line: 760, column: 42, scope: !3315)
!3883 = !DILocation(line: 758, column: 10, scope: !3315)
!3884 = !DILocation(line: 758, column: 3, scope: !3315)
!3885 = !DILocation(line: 762, column: 1, scope: !3315)
!3886 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1221, file: !1221, line: 98, type: !3887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!170}
!3889 = !DISubprogram(name: "iswprint", scope: !3890, file: !3890, line: 120, type: !3691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!3890 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3891 = distinct !DISubprogram(name: "quotearg_alloc", scope: !708, file: !708, line: 788, type: !3892, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3894)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!167, !173, !170, !3208}
!3894 = !{!3895, !3896, !3897}
!3895 = !DILocalVariable(name: "arg", arg: 1, scope: !3891, file: !708, line: 788, type: !173)
!3896 = !DILocalVariable(name: "argsize", arg: 2, scope: !3891, file: !708, line: 788, type: !170)
!3897 = !DILocalVariable(name: "o", arg: 3, scope: !3891, file: !708, line: 789, type: !3208)
!3898 = !DILocation(line: 0, scope: !3891)
!3899 = !DILocalVariable(name: "arg", arg: 1, scope: !3900, file: !708, line: 801, type: !173)
!3900 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !708, file: !708, line: 801, type: !3901, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3903)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!167, !173, !170, !951, !3208}
!3903 = !{!3899, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911}
!3904 = !DILocalVariable(name: "argsize", arg: 2, scope: !3900, file: !708, line: 801, type: !170)
!3905 = !DILocalVariable(name: "size", arg: 3, scope: !3900, file: !708, line: 801, type: !951)
!3906 = !DILocalVariable(name: "o", arg: 4, scope: !3900, file: !708, line: 802, type: !3208)
!3907 = !DILocalVariable(name: "p", scope: !3900, file: !708, line: 804, type: !3208)
!3908 = !DILocalVariable(name: "saved_errno", scope: !3900, file: !708, line: 805, type: !118)
!3909 = !DILocalVariable(name: "flags", scope: !3900, file: !708, line: 807, type: !118)
!3910 = !DILocalVariable(name: "bufsize", scope: !3900, file: !708, line: 808, type: !170)
!3911 = !DILocalVariable(name: "buf", scope: !3900, file: !708, line: 812, type: !167)
!3912 = !DILocation(line: 0, scope: !3900, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 791, column: 10, scope: !3891)
!3914 = !DILocation(line: 804, column: 37, scope: !3900, inlinedAt: !3913)
!3915 = !DILocation(line: 805, column: 21, scope: !3900, inlinedAt: !3913)
!3916 = !DILocation(line: 807, column: 18, scope: !3900, inlinedAt: !3913)
!3917 = !DILocation(line: 807, column: 24, scope: !3900, inlinedAt: !3913)
!3918 = !DILocation(line: 808, column: 72, scope: !3900, inlinedAt: !3913)
!3919 = !DILocation(line: 809, column: 56, scope: !3900, inlinedAt: !3913)
!3920 = !DILocation(line: 810, column: 49, scope: !3900, inlinedAt: !3913)
!3921 = !DILocation(line: 811, column: 49, scope: !3900, inlinedAt: !3913)
!3922 = !DILocation(line: 808, column: 20, scope: !3900, inlinedAt: !3913)
!3923 = !DILocation(line: 811, column: 62, scope: !3900, inlinedAt: !3913)
!3924 = !DILocation(line: 812, column: 15, scope: !3900, inlinedAt: !3913)
!3925 = !DILocation(line: 813, column: 60, scope: !3900, inlinedAt: !3913)
!3926 = !DILocation(line: 815, column: 32, scope: !3900, inlinedAt: !3913)
!3927 = !DILocation(line: 815, column: 47, scope: !3900, inlinedAt: !3913)
!3928 = !DILocation(line: 813, column: 3, scope: !3900, inlinedAt: !3913)
!3929 = !DILocation(line: 816, column: 9, scope: !3900, inlinedAt: !3913)
!3930 = !DILocation(line: 791, column: 3, scope: !3891)
!3931 = !DILocation(line: 0, scope: !3900)
!3932 = !DILocation(line: 804, column: 37, scope: !3900)
!3933 = !DILocation(line: 805, column: 21, scope: !3900)
!3934 = !DILocation(line: 807, column: 18, scope: !3900)
!3935 = !DILocation(line: 807, column: 27, scope: !3900)
!3936 = !DILocation(line: 807, column: 24, scope: !3900)
!3937 = !DILocation(line: 808, column: 72, scope: !3900)
!3938 = !DILocation(line: 809, column: 56, scope: !3900)
!3939 = !DILocation(line: 810, column: 49, scope: !3900)
!3940 = !DILocation(line: 811, column: 49, scope: !3900)
!3941 = !DILocation(line: 808, column: 20, scope: !3900)
!3942 = !DILocation(line: 811, column: 62, scope: !3900)
!3943 = !DILocation(line: 812, column: 15, scope: !3900)
!3944 = !DILocation(line: 813, column: 60, scope: !3900)
!3945 = !DILocation(line: 815, column: 32, scope: !3900)
!3946 = !DILocation(line: 815, column: 47, scope: !3900)
!3947 = !DILocation(line: 813, column: 3, scope: !3900)
!3948 = !DILocation(line: 816, column: 9, scope: !3900)
!3949 = !DILocation(line: 817, column: 7, scope: !3900)
!3950 = !DILocation(line: 818, column: 11, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3900, file: !708, line: 817, column: 7)
!3952 = !DILocation(line: 818, column: 5, scope: !3951)
!3953 = !DILocation(line: 819, column: 3, scope: !3900)
!3954 = distinct !DISubprogram(name: "quotearg_free", scope: !708, file: !708, line: 837, type: !663, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3955)
!3955 = !{!3956, !3957}
!3956 = !DILocalVariable(name: "sv", scope: !3954, file: !708, line: 839, type: !792)
!3957 = !DILocalVariable(name: "i", scope: !3958, file: !708, line: 840, type: !118)
!3958 = distinct !DILexicalBlock(scope: !3954, file: !708, line: 840, column: 3)
!3959 = !DILocation(line: 839, column: 24, scope: !3954)
!3960 = !DILocation(line: 0, scope: !3954)
!3961 = !DILocation(line: 0, scope: !3958)
!3962 = !DILocation(line: 840, column: 21, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3958, file: !708, line: 840, column: 3)
!3964 = !DILocation(line: 840, column: 3, scope: !3958)
!3965 = !DILocation(line: 842, column: 13, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3954, file: !708, line: 842, column: 7)
!3967 = !{!3968, !1019, i64 8}
!3968 = !{!"slotvec", !1299, i64 0, !1019, i64 8}
!3969 = !DILocation(line: 842, column: 17, scope: !3966)
!3970 = !DILocation(line: 842, column: 7, scope: !3954)
!3971 = !DILocation(line: 841, column: 17, scope: !3963)
!3972 = !DILocation(line: 841, column: 5, scope: !3963)
!3973 = !DILocation(line: 840, column: 32, scope: !3963)
!3974 = distinct !{!3974, !3964, !3975, !1143}
!3975 = !DILocation(line: 841, column: 20, scope: !3958)
!3976 = !DILocation(line: 844, column: 7, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3966, file: !708, line: 843, column: 5)
!3978 = !DILocation(line: 845, column: 21, scope: !3977)
!3979 = !{!3968, !1299, i64 0}
!3980 = !DILocation(line: 846, column: 20, scope: !3977)
!3981 = !DILocation(line: 847, column: 5, scope: !3977)
!3982 = !DILocation(line: 848, column: 10, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3954, file: !708, line: 848, column: 7)
!3984 = !DILocation(line: 848, column: 7, scope: !3954)
!3985 = !DILocation(line: 850, column: 7, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3983, file: !708, line: 849, column: 5)
!3987 = !DILocation(line: 851, column: 15, scope: !3986)
!3988 = !DILocation(line: 852, column: 5, scope: !3986)
!3989 = !DILocation(line: 853, column: 10, scope: !3954)
!3990 = !DILocation(line: 854, column: 1, scope: !3954)
!3991 = distinct !DISubprogram(name: "quotearg_n", scope: !708, file: !708, line: 919, type: !1214, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3992)
!3992 = !{!3993, !3994}
!3993 = !DILocalVariable(name: "n", arg: 1, scope: !3991, file: !708, line: 919, type: !118)
!3994 = !DILocalVariable(name: "arg", arg: 2, scope: !3991, file: !708, line: 919, type: !173)
!3995 = !DILocation(line: 0, scope: !3991)
!3996 = !DILocation(line: 921, column: 10, scope: !3991)
!3997 = !DILocation(line: 921, column: 3, scope: !3991)
!3998 = distinct !DISubprogram(name: "quotearg_n_options", scope: !708, file: !708, line: 866, type: !3999, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4001)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!167, !118, !173, !170, !3208}
!4001 = !{!4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4012, !4013, !4015, !4016, !4017}
!4002 = !DILocalVariable(name: "n", arg: 1, scope: !3998, file: !708, line: 866, type: !118)
!4003 = !DILocalVariable(name: "arg", arg: 2, scope: !3998, file: !708, line: 866, type: !173)
!4004 = !DILocalVariable(name: "argsize", arg: 3, scope: !3998, file: !708, line: 866, type: !170)
!4005 = !DILocalVariable(name: "options", arg: 4, scope: !3998, file: !708, line: 867, type: !3208)
!4006 = !DILocalVariable(name: "saved_errno", scope: !3998, file: !708, line: 869, type: !118)
!4007 = !DILocalVariable(name: "sv", scope: !3998, file: !708, line: 871, type: !792)
!4008 = !DILocalVariable(name: "nslots_max", scope: !3998, file: !708, line: 873, type: !118)
!4009 = !DILocalVariable(name: "preallocated", scope: !4010, file: !708, line: 879, type: !224)
!4010 = distinct !DILexicalBlock(scope: !4011, file: !708, line: 878, column: 5)
!4011 = distinct !DILexicalBlock(scope: !3998, file: !708, line: 877, column: 7)
!4012 = !DILocalVariable(name: "new_nslots", scope: !4010, file: !708, line: 880, type: !563)
!4013 = !DILocalVariable(name: "size", scope: !4014, file: !708, line: 891, type: !170)
!4014 = distinct !DILexicalBlock(scope: !3998, file: !708, line: 890, column: 3)
!4015 = !DILocalVariable(name: "val", scope: !4014, file: !708, line: 892, type: !167)
!4016 = !DILocalVariable(name: "flags", scope: !4014, file: !708, line: 894, type: !118)
!4017 = !DILocalVariable(name: "qsize", scope: !4014, file: !708, line: 895, type: !170)
!4018 = !DILocation(line: 0, scope: !3998)
!4019 = !DILocation(line: 869, column: 21, scope: !3998)
!4020 = !DILocation(line: 871, column: 24, scope: !3998)
!4021 = !DILocation(line: 874, column: 17, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !3998, file: !708, line: 874, column: 7)
!4023 = !DILocation(line: 875, column: 5, scope: !4022)
!4024 = !DILocation(line: 877, column: 7, scope: !4011)
!4025 = !DILocation(line: 877, column: 14, scope: !4011)
!4026 = !DILocation(line: 877, column: 7, scope: !3998)
!4027 = !DILocation(line: 879, column: 31, scope: !4010)
!4028 = !DILocation(line: 0, scope: !4010)
!4029 = !DILocation(line: 880, column: 7, scope: !4010)
!4030 = !DILocation(line: 880, column: 26, scope: !4010)
!4031 = !DILocation(line: 880, column: 13, scope: !4010)
!4032 = !DILocation(line: 882, column: 31, scope: !4010)
!4033 = !DILocation(line: 883, column: 33, scope: !4010)
!4034 = !DILocation(line: 883, column: 42, scope: !4010)
!4035 = !DILocation(line: 883, column: 31, scope: !4010)
!4036 = !DILocation(line: 882, column: 22, scope: !4010)
!4037 = !DILocation(line: 882, column: 15, scope: !4010)
!4038 = !DILocation(line: 884, column: 11, scope: !4010)
!4039 = !DILocation(line: 885, column: 15, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4010, file: !708, line: 884, column: 11)
!4041 = !{i64 0, i64 8, !1298, i64 8, i64 8, !1018}
!4042 = !DILocation(line: 885, column: 9, scope: !4040)
!4043 = !DILocation(line: 886, column: 20, scope: !4010)
!4044 = !DILocation(line: 886, column: 18, scope: !4010)
!4045 = !DILocation(line: 886, column: 32, scope: !4010)
!4046 = !DILocation(line: 886, column: 43, scope: !4010)
!4047 = !DILocation(line: 886, column: 53, scope: !4010)
!4048 = !DILocation(line: 0, scope: !3423, inlinedAt: !4049)
!4049 = distinct !DILocation(line: 886, column: 7, scope: !4010)
!4050 = !DILocation(line: 59, column: 10, scope: !3423, inlinedAt: !4049)
!4051 = !DILocation(line: 887, column: 16, scope: !4010)
!4052 = !DILocation(line: 887, column: 14, scope: !4010)
!4053 = !DILocation(line: 888, column: 5, scope: !4011)
!4054 = !DILocation(line: 888, column: 5, scope: !4010)
!4055 = !DILocation(line: 891, column: 19, scope: !4014)
!4056 = !DILocation(line: 891, column: 25, scope: !4014)
!4057 = !DILocation(line: 0, scope: !4014)
!4058 = !DILocation(line: 892, column: 23, scope: !4014)
!4059 = !DILocation(line: 894, column: 26, scope: !4014)
!4060 = !DILocation(line: 894, column: 32, scope: !4014)
!4061 = !DILocation(line: 896, column: 55, scope: !4014)
!4062 = !DILocation(line: 897, column: 55, scope: !4014)
!4063 = !DILocation(line: 898, column: 55, scope: !4014)
!4064 = !DILocation(line: 899, column: 55, scope: !4014)
!4065 = !DILocation(line: 895, column: 20, scope: !4014)
!4066 = !DILocation(line: 901, column: 14, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !4014, file: !708, line: 901, column: 9)
!4068 = !DILocation(line: 901, column: 9, scope: !4014)
!4069 = !DILocation(line: 903, column: 35, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4067, file: !708, line: 902, column: 7)
!4071 = !DILocation(line: 903, column: 20, scope: !4070)
!4072 = !DILocation(line: 904, column: 17, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4070, file: !708, line: 904, column: 13)
!4074 = !DILocation(line: 904, column: 13, scope: !4070)
!4075 = !DILocation(line: 905, column: 11, scope: !4073)
!4076 = !DILocation(line: 906, column: 27, scope: !4070)
!4077 = !DILocation(line: 906, column: 19, scope: !4070)
!4078 = !DILocation(line: 907, column: 69, scope: !4070)
!4079 = !DILocation(line: 909, column: 44, scope: !4070)
!4080 = !DILocation(line: 910, column: 44, scope: !4070)
!4081 = !DILocation(line: 907, column: 9, scope: !4070)
!4082 = !DILocation(line: 911, column: 7, scope: !4070)
!4083 = !DILocation(line: 913, column: 11, scope: !4014)
!4084 = !DILocation(line: 914, column: 5, scope: !4014)
!4085 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !708, file: !708, line: 925, type: !4086, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4088)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!167, !118, !173, !170}
!4088 = !{!4089, !4090, !4091}
!4089 = !DILocalVariable(name: "n", arg: 1, scope: !4085, file: !708, line: 925, type: !118)
!4090 = !DILocalVariable(name: "arg", arg: 2, scope: !4085, file: !708, line: 925, type: !173)
!4091 = !DILocalVariable(name: "argsize", arg: 3, scope: !4085, file: !708, line: 925, type: !170)
!4092 = !DILocation(line: 0, scope: !4085)
!4093 = !DILocation(line: 927, column: 10, scope: !4085)
!4094 = !DILocation(line: 927, column: 3, scope: !4085)
!4095 = distinct !DISubprogram(name: "quotearg", scope: !708, file: !708, line: 931, type: !1223, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4096)
!4096 = !{!4097}
!4097 = !DILocalVariable(name: "arg", arg: 1, scope: !4095, file: !708, line: 931, type: !173)
!4098 = !DILocation(line: 0, scope: !4095)
!4099 = !DILocation(line: 0, scope: !3991, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 933, column: 10, scope: !4095)
!4101 = !DILocation(line: 921, column: 10, scope: !3991, inlinedAt: !4100)
!4102 = !DILocation(line: 933, column: 3, scope: !4095)
!4103 = distinct !DISubprogram(name: "quotearg_mem", scope: !708, file: !708, line: 937, type: !4104, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4106)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!167, !173, !170}
!4106 = !{!4107, !4108}
!4107 = !DILocalVariable(name: "arg", arg: 1, scope: !4103, file: !708, line: 937, type: !173)
!4108 = !DILocalVariable(name: "argsize", arg: 2, scope: !4103, file: !708, line: 937, type: !170)
!4109 = !DILocation(line: 0, scope: !4103)
!4110 = !DILocation(line: 0, scope: !4085, inlinedAt: !4111)
!4111 = distinct !DILocation(line: 939, column: 10, scope: !4103)
!4112 = !DILocation(line: 927, column: 10, scope: !4085, inlinedAt: !4111)
!4113 = !DILocation(line: 939, column: 3, scope: !4103)
!4114 = distinct !DISubprogram(name: "quotearg_n_style", scope: !708, file: !708, line: 943, type: !4115, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4117)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!167, !118, !143, !173}
!4117 = !{!4118, !4119, !4120, !4121}
!4118 = !DILocalVariable(name: "n", arg: 1, scope: !4114, file: !708, line: 943, type: !118)
!4119 = !DILocalVariable(name: "s", arg: 2, scope: !4114, file: !708, line: 943, type: !143)
!4120 = !DILocalVariable(name: "arg", arg: 3, scope: !4114, file: !708, line: 943, type: !173)
!4121 = !DILocalVariable(name: "o", scope: !4114, file: !708, line: 945, type: !3209)
!4122 = !DILocation(line: 0, scope: !4114)
!4123 = !DILocation(line: 945, column: 3, scope: !4114)
!4124 = !DILocation(line: 945, column: 32, scope: !4114)
!4125 = !{!4126}
!4126 = distinct !{!4126, !4127, !"quoting_options_from_style: argument 0"}
!4127 = distinct !{!4127, !"quoting_options_from_style"}
!4128 = !DILocation(line: 945, column: 36, scope: !4114)
!4129 = !DILocalVariable(name: "style", arg: 1, scope: !4130, file: !708, line: 183, type: !143)
!4130 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !708, file: !708, line: 183, type: !4131, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4133)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!744, !143}
!4133 = !{!4129, !4134}
!4134 = !DILocalVariable(name: "o", scope: !4130, file: !708, line: 185, type: !744)
!4135 = !DILocation(line: 0, scope: !4130, inlinedAt: !4136)
!4136 = distinct !DILocation(line: 945, column: 36, scope: !4114)
!4137 = !DILocation(line: 185, column: 26, scope: !4130, inlinedAt: !4136)
!4138 = !DILocation(line: 186, column: 13, scope: !4139, inlinedAt: !4136)
!4139 = distinct !DILexicalBlock(scope: !4130, file: !708, line: 186, column: 7)
!4140 = !DILocation(line: 186, column: 7, scope: !4130, inlinedAt: !4136)
!4141 = !DILocation(line: 187, column: 5, scope: !4139, inlinedAt: !4136)
!4142 = !DILocation(line: 188, column: 11, scope: !4130, inlinedAt: !4136)
!4143 = !DILocation(line: 946, column: 10, scope: !4114)
!4144 = !DILocation(line: 947, column: 1, scope: !4114)
!4145 = !DILocation(line: 946, column: 3, scope: !4114)
!4146 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !708, file: !708, line: 950, type: !4147, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4149)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!167, !118, !143, !173, !170}
!4149 = !{!4150, !4151, !4152, !4153, !4154}
!4150 = !DILocalVariable(name: "n", arg: 1, scope: !4146, file: !708, line: 950, type: !118)
!4151 = !DILocalVariable(name: "s", arg: 2, scope: !4146, file: !708, line: 950, type: !143)
!4152 = !DILocalVariable(name: "arg", arg: 3, scope: !4146, file: !708, line: 951, type: !173)
!4153 = !DILocalVariable(name: "argsize", arg: 4, scope: !4146, file: !708, line: 951, type: !170)
!4154 = !DILocalVariable(name: "o", scope: !4146, file: !708, line: 953, type: !3209)
!4155 = !DILocation(line: 0, scope: !4146)
!4156 = !DILocation(line: 953, column: 3, scope: !4146)
!4157 = !DILocation(line: 953, column: 32, scope: !4146)
!4158 = !{!4159}
!4159 = distinct !{!4159, !4160, !"quoting_options_from_style: argument 0"}
!4160 = distinct !{!4160, !"quoting_options_from_style"}
!4161 = !DILocation(line: 953, column: 36, scope: !4146)
!4162 = !DILocation(line: 0, scope: !4130, inlinedAt: !4163)
!4163 = distinct !DILocation(line: 953, column: 36, scope: !4146)
!4164 = !DILocation(line: 185, column: 26, scope: !4130, inlinedAt: !4163)
!4165 = !DILocation(line: 186, column: 13, scope: !4139, inlinedAt: !4163)
!4166 = !DILocation(line: 186, column: 7, scope: !4130, inlinedAt: !4163)
!4167 = !DILocation(line: 187, column: 5, scope: !4139, inlinedAt: !4163)
!4168 = !DILocation(line: 188, column: 11, scope: !4130, inlinedAt: !4163)
!4169 = !DILocation(line: 954, column: 10, scope: !4146)
!4170 = !DILocation(line: 955, column: 1, scope: !4146)
!4171 = !DILocation(line: 954, column: 3, scope: !4146)
!4172 = distinct !DISubprogram(name: "quotearg_style", scope: !708, file: !708, line: 958, type: !4173, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4175)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!167, !143, !173}
!4175 = !{!4176, !4177}
!4176 = !DILocalVariable(name: "s", arg: 1, scope: !4172, file: !708, line: 958, type: !143)
!4177 = !DILocalVariable(name: "arg", arg: 2, scope: !4172, file: !708, line: 958, type: !173)
!4178 = !DILocation(line: 0, scope: !4172)
!4179 = !DILocation(line: 0, scope: !4114, inlinedAt: !4180)
!4180 = distinct !DILocation(line: 960, column: 10, scope: !4172)
!4181 = !DILocation(line: 945, column: 3, scope: !4114, inlinedAt: !4180)
!4182 = !DILocation(line: 945, column: 32, scope: !4114, inlinedAt: !4180)
!4183 = !{!4184}
!4184 = distinct !{!4184, !4185, !"quoting_options_from_style: argument 0"}
!4185 = distinct !{!4185, !"quoting_options_from_style"}
!4186 = !DILocation(line: 945, column: 36, scope: !4114, inlinedAt: !4180)
!4187 = !DILocation(line: 0, scope: !4130, inlinedAt: !4188)
!4188 = distinct !DILocation(line: 945, column: 36, scope: !4114, inlinedAt: !4180)
!4189 = !DILocation(line: 185, column: 26, scope: !4130, inlinedAt: !4188)
!4190 = !DILocation(line: 186, column: 13, scope: !4139, inlinedAt: !4188)
!4191 = !DILocation(line: 186, column: 7, scope: !4130, inlinedAt: !4188)
!4192 = !DILocation(line: 187, column: 5, scope: !4139, inlinedAt: !4188)
!4193 = !DILocation(line: 188, column: 11, scope: !4130, inlinedAt: !4188)
!4194 = !DILocation(line: 946, column: 10, scope: !4114, inlinedAt: !4180)
!4195 = !DILocation(line: 947, column: 1, scope: !4114, inlinedAt: !4180)
!4196 = !DILocation(line: 960, column: 3, scope: !4172)
!4197 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !708, file: !708, line: 964, type: !4198, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4200)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!167, !143, !173, !170}
!4200 = !{!4201, !4202, !4203}
!4201 = !DILocalVariable(name: "s", arg: 1, scope: !4197, file: !708, line: 964, type: !143)
!4202 = !DILocalVariable(name: "arg", arg: 2, scope: !4197, file: !708, line: 964, type: !173)
!4203 = !DILocalVariable(name: "argsize", arg: 3, scope: !4197, file: !708, line: 964, type: !170)
!4204 = !DILocation(line: 0, scope: !4197)
!4205 = !DILocation(line: 0, scope: !4146, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 966, column: 10, scope: !4197)
!4207 = !DILocation(line: 953, column: 3, scope: !4146, inlinedAt: !4206)
!4208 = !DILocation(line: 953, column: 32, scope: !4146, inlinedAt: !4206)
!4209 = !{!4210}
!4210 = distinct !{!4210, !4211, !"quoting_options_from_style: argument 0"}
!4211 = distinct !{!4211, !"quoting_options_from_style"}
!4212 = !DILocation(line: 953, column: 36, scope: !4146, inlinedAt: !4206)
!4213 = !DILocation(line: 0, scope: !4130, inlinedAt: !4214)
!4214 = distinct !DILocation(line: 953, column: 36, scope: !4146, inlinedAt: !4206)
!4215 = !DILocation(line: 185, column: 26, scope: !4130, inlinedAt: !4214)
!4216 = !DILocation(line: 186, column: 13, scope: !4139, inlinedAt: !4214)
!4217 = !DILocation(line: 186, column: 7, scope: !4130, inlinedAt: !4214)
!4218 = !DILocation(line: 187, column: 5, scope: !4139, inlinedAt: !4214)
!4219 = !DILocation(line: 188, column: 11, scope: !4130, inlinedAt: !4214)
!4220 = !DILocation(line: 954, column: 10, scope: !4146, inlinedAt: !4206)
!4221 = !DILocation(line: 955, column: 1, scope: !4146, inlinedAt: !4206)
!4222 = !DILocation(line: 966, column: 3, scope: !4197)
!4223 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !708, file: !708, line: 970, type: !4224, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4226)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!167, !173, !170, !4}
!4226 = !{!4227, !4228, !4229, !4230}
!4227 = !DILocalVariable(name: "arg", arg: 1, scope: !4223, file: !708, line: 970, type: !173)
!4228 = !DILocalVariable(name: "argsize", arg: 2, scope: !4223, file: !708, line: 970, type: !170)
!4229 = !DILocalVariable(name: "ch", arg: 3, scope: !4223, file: !708, line: 970, type: !4)
!4230 = !DILocalVariable(name: "options", scope: !4223, file: !708, line: 972, type: !744)
!4231 = !DILocation(line: 0, scope: !4223)
!4232 = !DILocation(line: 972, column: 3, scope: !4223)
!4233 = !DILocation(line: 972, column: 26, scope: !4223)
!4234 = !DILocation(line: 973, column: 13, scope: !4223)
!4235 = !{i64 0, i64 4, !1105, i64 4, i64 4, !1096, i64 8, i64 32, !1105, i64 40, i64 8, !1018, i64 48, i64 8, !1018}
!4236 = !DILocation(line: 0, scope: !3228, inlinedAt: !4237)
!4237 = distinct !DILocation(line: 974, column: 3, scope: !4223)
!4238 = !DILocation(line: 147, column: 41, scope: !3228, inlinedAt: !4237)
!4239 = !DILocation(line: 147, column: 62, scope: !3228, inlinedAt: !4237)
!4240 = !DILocation(line: 147, column: 57, scope: !3228, inlinedAt: !4237)
!4241 = !DILocation(line: 148, column: 15, scope: !3228, inlinedAt: !4237)
!4242 = !DILocation(line: 149, column: 21, scope: !3228, inlinedAt: !4237)
!4243 = !DILocation(line: 149, column: 24, scope: !3228, inlinedAt: !4237)
!4244 = !DILocation(line: 150, column: 19, scope: !3228, inlinedAt: !4237)
!4245 = !DILocation(line: 150, column: 24, scope: !3228, inlinedAt: !4237)
!4246 = !DILocation(line: 150, column: 6, scope: !3228, inlinedAt: !4237)
!4247 = !DILocation(line: 975, column: 10, scope: !4223)
!4248 = !DILocation(line: 976, column: 1, scope: !4223)
!4249 = !DILocation(line: 975, column: 3, scope: !4223)
!4250 = distinct !DISubprogram(name: "quotearg_char", scope: !708, file: !708, line: 979, type: !4251, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4253)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!167, !173, !4}
!4253 = !{!4254, !4255}
!4254 = !DILocalVariable(name: "arg", arg: 1, scope: !4250, file: !708, line: 979, type: !173)
!4255 = !DILocalVariable(name: "ch", arg: 2, scope: !4250, file: !708, line: 979, type: !4)
!4256 = !DILocation(line: 0, scope: !4250)
!4257 = !DILocation(line: 0, scope: !4223, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 981, column: 10, scope: !4250)
!4259 = !DILocation(line: 972, column: 3, scope: !4223, inlinedAt: !4258)
!4260 = !DILocation(line: 972, column: 26, scope: !4223, inlinedAt: !4258)
!4261 = !DILocation(line: 973, column: 13, scope: !4223, inlinedAt: !4258)
!4262 = !DILocation(line: 0, scope: !3228, inlinedAt: !4263)
!4263 = distinct !DILocation(line: 974, column: 3, scope: !4223, inlinedAt: !4258)
!4264 = !DILocation(line: 147, column: 41, scope: !3228, inlinedAt: !4263)
!4265 = !DILocation(line: 147, column: 62, scope: !3228, inlinedAt: !4263)
!4266 = !DILocation(line: 147, column: 57, scope: !3228, inlinedAt: !4263)
!4267 = !DILocation(line: 148, column: 15, scope: !3228, inlinedAt: !4263)
!4268 = !DILocation(line: 149, column: 21, scope: !3228, inlinedAt: !4263)
!4269 = !DILocation(line: 149, column: 24, scope: !3228, inlinedAt: !4263)
!4270 = !DILocation(line: 150, column: 19, scope: !3228, inlinedAt: !4263)
!4271 = !DILocation(line: 150, column: 24, scope: !3228, inlinedAt: !4263)
!4272 = !DILocation(line: 150, column: 6, scope: !3228, inlinedAt: !4263)
!4273 = !DILocation(line: 975, column: 10, scope: !4223, inlinedAt: !4258)
!4274 = !DILocation(line: 976, column: 1, scope: !4223, inlinedAt: !4258)
!4275 = !DILocation(line: 981, column: 3, scope: !4250)
!4276 = distinct !DISubprogram(name: "quotearg_colon", scope: !708, file: !708, line: 985, type: !1223, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4277)
!4277 = !{!4278}
!4278 = !DILocalVariable(name: "arg", arg: 1, scope: !4276, file: !708, line: 985, type: !173)
!4279 = !DILocation(line: 0, scope: !4276)
!4280 = !DILocation(line: 0, scope: !4250, inlinedAt: !4281)
!4281 = distinct !DILocation(line: 987, column: 10, scope: !4276)
!4282 = !DILocation(line: 0, scope: !4223, inlinedAt: !4283)
!4283 = distinct !DILocation(line: 981, column: 10, scope: !4250, inlinedAt: !4281)
!4284 = !DILocation(line: 972, column: 3, scope: !4223, inlinedAt: !4283)
!4285 = !DILocation(line: 972, column: 26, scope: !4223, inlinedAt: !4283)
!4286 = !DILocation(line: 973, column: 13, scope: !4223, inlinedAt: !4283)
!4287 = !DILocation(line: 0, scope: !3228, inlinedAt: !4288)
!4288 = distinct !DILocation(line: 974, column: 3, scope: !4223, inlinedAt: !4283)
!4289 = !DILocation(line: 147, column: 57, scope: !3228, inlinedAt: !4288)
!4290 = !DILocation(line: 149, column: 21, scope: !3228, inlinedAt: !4288)
!4291 = !DILocation(line: 150, column: 6, scope: !3228, inlinedAt: !4288)
!4292 = !DILocation(line: 975, column: 10, scope: !4223, inlinedAt: !4283)
!4293 = !DILocation(line: 976, column: 1, scope: !4223, inlinedAt: !4283)
!4294 = !DILocation(line: 987, column: 3, scope: !4276)
!4295 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !708, file: !708, line: 991, type: !4104, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4296)
!4296 = !{!4297, !4298}
!4297 = !DILocalVariable(name: "arg", arg: 1, scope: !4295, file: !708, line: 991, type: !173)
!4298 = !DILocalVariable(name: "argsize", arg: 2, scope: !4295, file: !708, line: 991, type: !170)
!4299 = !DILocation(line: 0, scope: !4295)
!4300 = !DILocation(line: 0, scope: !4223, inlinedAt: !4301)
!4301 = distinct !DILocation(line: 993, column: 10, scope: !4295)
!4302 = !DILocation(line: 972, column: 3, scope: !4223, inlinedAt: !4301)
!4303 = !DILocation(line: 972, column: 26, scope: !4223, inlinedAt: !4301)
!4304 = !DILocation(line: 973, column: 13, scope: !4223, inlinedAt: !4301)
!4305 = !DILocation(line: 0, scope: !3228, inlinedAt: !4306)
!4306 = distinct !DILocation(line: 974, column: 3, scope: !4223, inlinedAt: !4301)
!4307 = !DILocation(line: 147, column: 57, scope: !3228, inlinedAt: !4306)
!4308 = !DILocation(line: 149, column: 21, scope: !3228, inlinedAt: !4306)
!4309 = !DILocation(line: 150, column: 6, scope: !3228, inlinedAt: !4306)
!4310 = !DILocation(line: 975, column: 10, scope: !4223, inlinedAt: !4301)
!4311 = !DILocation(line: 976, column: 1, scope: !4223, inlinedAt: !4301)
!4312 = !DILocation(line: 993, column: 3, scope: !4295)
!4313 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !708, file: !708, line: 997, type: !4115, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4314)
!4314 = !{!4315, !4316, !4317, !4318}
!4315 = !DILocalVariable(name: "n", arg: 1, scope: !4313, file: !708, line: 997, type: !118)
!4316 = !DILocalVariable(name: "s", arg: 2, scope: !4313, file: !708, line: 997, type: !143)
!4317 = !DILocalVariable(name: "arg", arg: 3, scope: !4313, file: !708, line: 997, type: !173)
!4318 = !DILocalVariable(name: "options", scope: !4313, file: !708, line: 999, type: !744)
!4319 = !DILocation(line: 185, column: 26, scope: !4130, inlinedAt: !4320)
!4320 = distinct !DILocation(line: 1000, column: 13, scope: !4313)
!4321 = !DILocation(line: 0, scope: !4313)
!4322 = !DILocation(line: 999, column: 3, scope: !4313)
!4323 = !DILocation(line: 999, column: 26, scope: !4313)
!4324 = !DILocation(line: 0, scope: !4130, inlinedAt: !4320)
!4325 = !DILocation(line: 186, column: 13, scope: !4139, inlinedAt: !4320)
!4326 = !DILocation(line: 186, column: 7, scope: !4130, inlinedAt: !4320)
!4327 = !DILocation(line: 187, column: 5, scope: !4139, inlinedAt: !4320)
!4328 = !{!4329}
!4329 = distinct !{!4329, !4330, !"quoting_options_from_style: argument 0"}
!4330 = distinct !{!4330, !"quoting_options_from_style"}
!4331 = !DILocation(line: 1000, column: 13, scope: !4313)
!4332 = !DILocation(line: 0, scope: !3228, inlinedAt: !4333)
!4333 = distinct !DILocation(line: 1001, column: 3, scope: !4313)
!4334 = !DILocation(line: 147, column: 57, scope: !3228, inlinedAt: !4333)
!4335 = !DILocation(line: 149, column: 21, scope: !3228, inlinedAt: !4333)
!4336 = !DILocation(line: 150, column: 6, scope: !3228, inlinedAt: !4333)
!4337 = !DILocation(line: 1002, column: 10, scope: !4313)
!4338 = !DILocation(line: 1003, column: 1, scope: !4313)
!4339 = !DILocation(line: 1002, column: 3, scope: !4313)
!4340 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !708, file: !708, line: 1006, type: !4341, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4343)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!167, !118, !173, !173, !173}
!4343 = !{!4344, !4345, !4346, !4347}
!4344 = !DILocalVariable(name: "n", arg: 1, scope: !4340, file: !708, line: 1006, type: !118)
!4345 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4340, file: !708, line: 1006, type: !173)
!4346 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4340, file: !708, line: 1007, type: !173)
!4347 = !DILocalVariable(name: "arg", arg: 4, scope: !4340, file: !708, line: 1007, type: !173)
!4348 = !DILocation(line: 0, scope: !4340)
!4349 = !DILocalVariable(name: "n", arg: 1, scope: !4350, file: !708, line: 1014, type: !118)
!4350 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !708, file: !708, line: 1014, type: !4351, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4353)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{!167, !118, !173, !173, !173, !170}
!4353 = !{!4349, !4354, !4355, !4356, !4357, !4358}
!4354 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4350, file: !708, line: 1014, type: !173)
!4355 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4350, file: !708, line: 1015, type: !173)
!4356 = !DILocalVariable(name: "arg", arg: 4, scope: !4350, file: !708, line: 1016, type: !173)
!4357 = !DILocalVariable(name: "argsize", arg: 5, scope: !4350, file: !708, line: 1016, type: !170)
!4358 = !DILocalVariable(name: "o", scope: !4350, file: !708, line: 1018, type: !744)
!4359 = !DILocation(line: 0, scope: !4350, inlinedAt: !4360)
!4360 = distinct !DILocation(line: 1009, column: 10, scope: !4340)
!4361 = !DILocation(line: 1018, column: 3, scope: !4350, inlinedAt: !4360)
!4362 = !DILocation(line: 1018, column: 26, scope: !4350, inlinedAt: !4360)
!4363 = !DILocation(line: 1018, column: 30, scope: !4350, inlinedAt: !4360)
!4364 = !DILocation(line: 0, scope: !3268, inlinedAt: !4365)
!4365 = distinct !DILocation(line: 1019, column: 3, scope: !4350, inlinedAt: !4360)
!4366 = !DILocation(line: 174, column: 12, scope: !3268, inlinedAt: !4365)
!4367 = !DILocation(line: 175, column: 8, scope: !3281, inlinedAt: !4365)
!4368 = !DILocation(line: 175, column: 19, scope: !3281, inlinedAt: !4365)
!4369 = !DILocation(line: 176, column: 5, scope: !3281, inlinedAt: !4365)
!4370 = !DILocation(line: 177, column: 6, scope: !3268, inlinedAt: !4365)
!4371 = !DILocation(line: 177, column: 17, scope: !3268, inlinedAt: !4365)
!4372 = !DILocation(line: 178, column: 6, scope: !3268, inlinedAt: !4365)
!4373 = !DILocation(line: 178, column: 18, scope: !3268, inlinedAt: !4365)
!4374 = !DILocation(line: 1020, column: 10, scope: !4350, inlinedAt: !4360)
!4375 = !DILocation(line: 1021, column: 1, scope: !4350, inlinedAt: !4360)
!4376 = !DILocation(line: 1009, column: 3, scope: !4340)
!4377 = !DILocation(line: 0, scope: !4350)
!4378 = !DILocation(line: 1018, column: 3, scope: !4350)
!4379 = !DILocation(line: 1018, column: 26, scope: !4350)
!4380 = !DILocation(line: 1018, column: 30, scope: !4350)
!4381 = !DILocation(line: 0, scope: !3268, inlinedAt: !4382)
!4382 = distinct !DILocation(line: 1019, column: 3, scope: !4350)
!4383 = !DILocation(line: 174, column: 12, scope: !3268, inlinedAt: !4382)
!4384 = !DILocation(line: 175, column: 8, scope: !3281, inlinedAt: !4382)
!4385 = !DILocation(line: 175, column: 19, scope: !3281, inlinedAt: !4382)
!4386 = !DILocation(line: 176, column: 5, scope: !3281, inlinedAt: !4382)
!4387 = !DILocation(line: 177, column: 6, scope: !3268, inlinedAt: !4382)
!4388 = !DILocation(line: 177, column: 17, scope: !3268, inlinedAt: !4382)
!4389 = !DILocation(line: 178, column: 6, scope: !3268, inlinedAt: !4382)
!4390 = !DILocation(line: 178, column: 18, scope: !3268, inlinedAt: !4382)
!4391 = !DILocation(line: 1020, column: 10, scope: !4350)
!4392 = !DILocation(line: 1021, column: 1, scope: !4350)
!4393 = !DILocation(line: 1020, column: 3, scope: !4350)
!4394 = distinct !DISubprogram(name: "quotearg_custom", scope: !708, file: !708, line: 1024, type: !4395, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4397)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!167, !173, !173, !173}
!4397 = !{!4398, !4399, !4400}
!4398 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4394, file: !708, line: 1024, type: !173)
!4399 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4394, file: !708, line: 1024, type: !173)
!4400 = !DILocalVariable(name: "arg", arg: 3, scope: !4394, file: !708, line: 1025, type: !173)
!4401 = !DILocation(line: 0, scope: !4394)
!4402 = !DILocation(line: 0, scope: !4340, inlinedAt: !4403)
!4403 = distinct !DILocation(line: 1027, column: 10, scope: !4394)
!4404 = !DILocation(line: 0, scope: !4350, inlinedAt: !4405)
!4405 = distinct !DILocation(line: 1009, column: 10, scope: !4340, inlinedAt: !4403)
!4406 = !DILocation(line: 1018, column: 3, scope: !4350, inlinedAt: !4405)
!4407 = !DILocation(line: 1018, column: 26, scope: !4350, inlinedAt: !4405)
!4408 = !DILocation(line: 1018, column: 30, scope: !4350, inlinedAt: !4405)
!4409 = !DILocation(line: 0, scope: !3268, inlinedAt: !4410)
!4410 = distinct !DILocation(line: 1019, column: 3, scope: !4350, inlinedAt: !4405)
!4411 = !DILocation(line: 174, column: 12, scope: !3268, inlinedAt: !4410)
!4412 = !DILocation(line: 175, column: 8, scope: !3281, inlinedAt: !4410)
!4413 = !DILocation(line: 175, column: 19, scope: !3281, inlinedAt: !4410)
!4414 = !DILocation(line: 176, column: 5, scope: !3281, inlinedAt: !4410)
!4415 = !DILocation(line: 177, column: 6, scope: !3268, inlinedAt: !4410)
!4416 = !DILocation(line: 177, column: 17, scope: !3268, inlinedAt: !4410)
!4417 = !DILocation(line: 178, column: 6, scope: !3268, inlinedAt: !4410)
!4418 = !DILocation(line: 178, column: 18, scope: !3268, inlinedAt: !4410)
!4419 = !DILocation(line: 1020, column: 10, scope: !4350, inlinedAt: !4405)
!4420 = !DILocation(line: 1021, column: 1, scope: !4350, inlinedAt: !4405)
!4421 = !DILocation(line: 1027, column: 3, scope: !4394)
!4422 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !708, file: !708, line: 1031, type: !4423, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4425)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!167, !173, !173, !173, !170}
!4425 = !{!4426, !4427, !4428, !4429}
!4426 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4422, file: !708, line: 1031, type: !173)
!4427 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4422, file: !708, line: 1031, type: !173)
!4428 = !DILocalVariable(name: "arg", arg: 3, scope: !4422, file: !708, line: 1032, type: !173)
!4429 = !DILocalVariable(name: "argsize", arg: 4, scope: !4422, file: !708, line: 1032, type: !170)
!4430 = !DILocation(line: 0, scope: !4422)
!4431 = !DILocation(line: 0, scope: !4350, inlinedAt: !4432)
!4432 = distinct !DILocation(line: 1034, column: 10, scope: !4422)
!4433 = !DILocation(line: 1018, column: 3, scope: !4350, inlinedAt: !4432)
!4434 = !DILocation(line: 1018, column: 26, scope: !4350, inlinedAt: !4432)
!4435 = !DILocation(line: 1018, column: 30, scope: !4350, inlinedAt: !4432)
!4436 = !DILocation(line: 0, scope: !3268, inlinedAt: !4437)
!4437 = distinct !DILocation(line: 1019, column: 3, scope: !4350, inlinedAt: !4432)
!4438 = !DILocation(line: 174, column: 12, scope: !3268, inlinedAt: !4437)
!4439 = !DILocation(line: 175, column: 8, scope: !3281, inlinedAt: !4437)
!4440 = !DILocation(line: 175, column: 19, scope: !3281, inlinedAt: !4437)
!4441 = !DILocation(line: 176, column: 5, scope: !3281, inlinedAt: !4437)
!4442 = !DILocation(line: 177, column: 6, scope: !3268, inlinedAt: !4437)
!4443 = !DILocation(line: 177, column: 17, scope: !3268, inlinedAt: !4437)
!4444 = !DILocation(line: 178, column: 6, scope: !3268, inlinedAt: !4437)
!4445 = !DILocation(line: 178, column: 18, scope: !3268, inlinedAt: !4437)
!4446 = !DILocation(line: 1020, column: 10, scope: !4350, inlinedAt: !4432)
!4447 = !DILocation(line: 1021, column: 1, scope: !4350, inlinedAt: !4432)
!4448 = !DILocation(line: 1034, column: 3, scope: !4422)
!4449 = distinct !DISubprogram(name: "quote_n_mem", scope: !708, file: !708, line: 1049, type: !4450, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4452)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!173, !118, !173, !170}
!4452 = !{!4453, !4454, !4455}
!4453 = !DILocalVariable(name: "n", arg: 1, scope: !4449, file: !708, line: 1049, type: !118)
!4454 = !DILocalVariable(name: "arg", arg: 2, scope: !4449, file: !708, line: 1049, type: !173)
!4455 = !DILocalVariable(name: "argsize", arg: 3, scope: !4449, file: !708, line: 1049, type: !170)
!4456 = !DILocation(line: 0, scope: !4449)
!4457 = !DILocation(line: 1051, column: 10, scope: !4449)
!4458 = !DILocation(line: 1051, column: 3, scope: !4449)
!4459 = distinct !DISubprogram(name: "quote_mem", scope: !708, file: !708, line: 1055, type: !4460, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4462)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!173, !173, !170}
!4462 = !{!4463, !4464}
!4463 = !DILocalVariable(name: "arg", arg: 1, scope: !4459, file: !708, line: 1055, type: !173)
!4464 = !DILocalVariable(name: "argsize", arg: 2, scope: !4459, file: !708, line: 1055, type: !170)
!4465 = !DILocation(line: 0, scope: !4459)
!4466 = !DILocation(line: 0, scope: !4449, inlinedAt: !4467)
!4467 = distinct !DILocation(line: 1057, column: 10, scope: !4459)
!4468 = !DILocation(line: 1051, column: 10, scope: !4449, inlinedAt: !4467)
!4469 = !DILocation(line: 1057, column: 3, scope: !4459)
!4470 = distinct !DISubprogram(name: "quote_n", scope: !708, file: !708, line: 1061, type: !4471, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4473)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{!173, !118, !173}
!4473 = !{!4474, !4475}
!4474 = !DILocalVariable(name: "n", arg: 1, scope: !4470, file: !708, line: 1061, type: !118)
!4475 = !DILocalVariable(name: "arg", arg: 2, scope: !4470, file: !708, line: 1061, type: !173)
!4476 = !DILocation(line: 0, scope: !4470)
!4477 = !DILocation(line: 0, scope: !4449, inlinedAt: !4478)
!4478 = distinct !DILocation(line: 1063, column: 10, scope: !4470)
!4479 = !DILocation(line: 1051, column: 10, scope: !4449, inlinedAt: !4478)
!4480 = !DILocation(line: 1063, column: 3, scope: !4470)
!4481 = distinct !DISubprogram(name: "quote", scope: !708, file: !708, line: 1067, type: !4482, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4484)
!4482 = !DISubroutineType(types: !4483)
!4483 = !{!173, !173}
!4484 = !{!4485}
!4485 = !DILocalVariable(name: "arg", arg: 1, scope: !4481, file: !708, line: 1067, type: !173)
!4486 = !DILocation(line: 0, scope: !4481)
!4487 = !DILocation(line: 0, scope: !4470, inlinedAt: !4488)
!4488 = distinct !DILocation(line: 1069, column: 10, scope: !4481)
!4489 = !DILocation(line: 0, scope: !4449, inlinedAt: !4490)
!4490 = distinct !DILocation(line: 1063, column: 10, scope: !4470, inlinedAt: !4488)
!4491 = !DILocation(line: 1051, column: 10, scope: !4449, inlinedAt: !4490)
!4492 = !DILocation(line: 1069, column: 3, scope: !4481)
!4493 = distinct !DISubprogram(name: "version_etc_arn", scope: !805, file: !805, line: 61, type: !4494, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !938, retainedNodes: !4531)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{null, !4496, !173, !173, !173, !4530, !170}
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !4498)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !4499)
!4499 = !{!4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4498, file: !269, line: 51, baseType: !118, size: 32)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4498, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4498, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4498, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4498, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4498, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4498, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4498, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4498, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4498, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4498, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4498, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4498, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4498, file: !269, line: 70, baseType: !4514, size: 64, offset: 832)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4498, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4498, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4498, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4498, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4498, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4498, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4498, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4498, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4498, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4498, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4498, file: !269, line: 93, baseType: !4514, size: 64, offset: 1344)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4498, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4498, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4498, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4498, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!4531 = !{!4532, !4533, !4534, !4535, !4536, !4537}
!4532 = !DILocalVariable(name: "stream", arg: 1, scope: !4493, file: !805, line: 61, type: !4496)
!4533 = !DILocalVariable(name: "command_name", arg: 2, scope: !4493, file: !805, line: 62, type: !173)
!4534 = !DILocalVariable(name: "package", arg: 3, scope: !4493, file: !805, line: 62, type: !173)
!4535 = !DILocalVariable(name: "version", arg: 4, scope: !4493, file: !805, line: 63, type: !173)
!4536 = !DILocalVariable(name: "authors", arg: 5, scope: !4493, file: !805, line: 64, type: !4530)
!4537 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4493, file: !805, line: 64, type: !170)
!4538 = !DILocation(line: 0, scope: !4493)
!4539 = !DILocation(line: 66, column: 7, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4493, file: !805, line: 66, column: 7)
!4541 = !DILocation(line: 66, column: 7, scope: !4493)
!4542 = !DILocation(line: 67, column: 5, scope: !4540)
!4543 = !DILocation(line: 69, column: 5, scope: !4540)
!4544 = !DILocation(line: 83, column: 3, scope: !4493)
!4545 = !DILocation(line: 85, column: 3, scope: !4493)
!4546 = !DILocation(line: 88, column: 3, scope: !4493)
!4547 = !DILocation(line: 95, column: 3, scope: !4493)
!4548 = !DILocation(line: 97, column: 3, scope: !4493)
!4549 = !DILocation(line: 105, column: 7, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4493, file: !805, line: 98, column: 5)
!4551 = !DILocation(line: 106, column: 7, scope: !4550)
!4552 = !DILocation(line: 109, column: 7, scope: !4550)
!4553 = !DILocation(line: 110, column: 7, scope: !4550)
!4554 = !DILocation(line: 113, column: 7, scope: !4550)
!4555 = !DILocation(line: 115, column: 7, scope: !4550)
!4556 = !DILocation(line: 120, column: 7, scope: !4550)
!4557 = !DILocation(line: 122, column: 7, scope: !4550)
!4558 = !DILocation(line: 127, column: 7, scope: !4550)
!4559 = !DILocation(line: 129, column: 7, scope: !4550)
!4560 = !DILocation(line: 134, column: 7, scope: !4550)
!4561 = !DILocation(line: 137, column: 7, scope: !4550)
!4562 = !DILocation(line: 142, column: 7, scope: !4550)
!4563 = !DILocation(line: 145, column: 7, scope: !4550)
!4564 = !DILocation(line: 150, column: 7, scope: !4550)
!4565 = !DILocation(line: 154, column: 7, scope: !4550)
!4566 = !DILocation(line: 159, column: 7, scope: !4550)
!4567 = !DILocation(line: 163, column: 7, scope: !4550)
!4568 = !DILocation(line: 170, column: 7, scope: !4550)
!4569 = !DILocation(line: 174, column: 7, scope: !4550)
!4570 = !DILocation(line: 176, column: 1, scope: !4493)
!4571 = distinct !DISubprogram(name: "version_etc_ar", scope: !805, file: !805, line: 183, type: !4572, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !938, retainedNodes: !4574)
!4572 = !DISubroutineType(types: !4573)
!4573 = !{null, !4496, !173, !173, !173, !4530}
!4574 = !{!4575, !4576, !4577, !4578, !4579, !4580}
!4575 = !DILocalVariable(name: "stream", arg: 1, scope: !4571, file: !805, line: 183, type: !4496)
!4576 = !DILocalVariable(name: "command_name", arg: 2, scope: !4571, file: !805, line: 184, type: !173)
!4577 = !DILocalVariable(name: "package", arg: 3, scope: !4571, file: !805, line: 184, type: !173)
!4578 = !DILocalVariable(name: "version", arg: 4, scope: !4571, file: !805, line: 185, type: !173)
!4579 = !DILocalVariable(name: "authors", arg: 5, scope: !4571, file: !805, line: 185, type: !4530)
!4580 = !DILocalVariable(name: "n_authors", scope: !4571, file: !805, line: 187, type: !170)
!4581 = !DILocation(line: 0, scope: !4571)
!4582 = !DILocation(line: 189, column: 8, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4571, file: !805, line: 189, column: 3)
!4584 = !DILocation(line: 189, scope: !4583)
!4585 = !DILocation(line: 189, column: 23, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4583, file: !805, line: 189, column: 3)
!4587 = !DILocation(line: 189, column: 3, scope: !4583)
!4588 = !DILocation(line: 189, column: 52, scope: !4586)
!4589 = distinct !{!4589, !4587, !4590, !1143}
!4590 = !DILocation(line: 190, column: 5, scope: !4583)
!4591 = !DILocation(line: 191, column: 3, scope: !4571)
!4592 = !DILocation(line: 192, column: 1, scope: !4571)
!4593 = distinct !DISubprogram(name: "version_etc_va", scope: !805, file: !805, line: 199, type: !4594, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !938, retainedNodes: !4604)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{null, !4496, !173, !173, !173, !4596}
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4598)
!4598 = !{!4599, !4601, !4602, !4603}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4597, file: !4600, line: 192, baseType: !112, size: 32)
!4600 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4597, file: !4600, line: 192, baseType: !112, size: 32, offset: 32)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4597, file: !4600, line: 192, baseType: !168, size: 64, offset: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4597, file: !4600, line: 192, baseType: !168, size: 64, offset: 128)
!4604 = !{!4605, !4606, !4607, !4608, !4609, !4610, !4611}
!4605 = !DILocalVariable(name: "stream", arg: 1, scope: !4593, file: !805, line: 199, type: !4496)
!4606 = !DILocalVariable(name: "command_name", arg: 2, scope: !4593, file: !805, line: 200, type: !173)
!4607 = !DILocalVariable(name: "package", arg: 3, scope: !4593, file: !805, line: 200, type: !173)
!4608 = !DILocalVariable(name: "version", arg: 4, scope: !4593, file: !805, line: 201, type: !173)
!4609 = !DILocalVariable(name: "authors", arg: 5, scope: !4593, file: !805, line: 201, type: !4596)
!4610 = !DILocalVariable(name: "n_authors", scope: !4593, file: !805, line: 203, type: !170)
!4611 = !DILocalVariable(name: "authtab", scope: !4593, file: !805, line: 204, type: !4612)
!4612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 640, elements: !95)
!4613 = !DILocation(line: 0, scope: !4593)
!4614 = !DILocation(line: 204, column: 3, scope: !4593)
!4615 = !DILocation(line: 204, column: 15, scope: !4593)
!4616 = !DILocation(line: 208, column: 35, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4618, file: !805, line: 206, column: 3)
!4618 = distinct !DILexicalBlock(scope: !4593, file: !805, line: 206, column: 3)
!4619 = !DILocation(line: 208, column: 33, scope: !4617)
!4620 = !DILocation(line: 208, column: 67, scope: !4617)
!4621 = !DILocation(line: 206, column: 3, scope: !4618)
!4622 = !DILocation(line: 208, column: 14, scope: !4617)
!4623 = !DILocation(line: 0, scope: !4618)
!4624 = !DILocation(line: 211, column: 3, scope: !4593)
!4625 = !DILocation(line: 213, column: 1, scope: !4593)
!4626 = distinct !DISubprogram(name: "version_etc", scope: !805, file: !805, line: 230, type: !4627, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !938, retainedNodes: !4629)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{null, !4496, !173, !173, !173, null}
!4629 = !{!4630, !4631, !4632, !4633, !4634}
!4630 = !DILocalVariable(name: "stream", arg: 1, scope: !4626, file: !805, line: 230, type: !4496)
!4631 = !DILocalVariable(name: "command_name", arg: 2, scope: !4626, file: !805, line: 231, type: !173)
!4632 = !DILocalVariable(name: "package", arg: 3, scope: !4626, file: !805, line: 231, type: !173)
!4633 = !DILocalVariable(name: "version", arg: 4, scope: !4626, file: !805, line: 232, type: !173)
!4634 = !DILocalVariable(name: "authors", scope: !4626, file: !805, line: 234, type: !4635)
!4635 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1091, line: 52, baseType: !4636)
!4636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2423, line: 14, baseType: !4637)
!4637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4600, baseType: !4638)
!4638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4597, size: 192, elements: !90)
!4639 = !DILocation(line: 0, scope: !4626)
!4640 = !DILocation(line: 234, column: 3, scope: !4626)
!4641 = !DILocation(line: 234, column: 11, scope: !4626)
!4642 = !DILocation(line: 235, column: 3, scope: !4626)
!4643 = !DILocation(line: 236, column: 3, scope: !4626)
!4644 = !DILocation(line: 237, column: 3, scope: !4626)
!4645 = !DILocation(line: 238, column: 1, scope: !4626)
!4646 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !805, file: !805, line: 241, type: !663, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !938, retainedNodes: !1027)
!4647 = !DILocation(line: 243, column: 3, scope: !4646)
!4648 = !DILocation(line: 248, column: 3, scope: !4646)
!4649 = !DILocation(line: 254, column: 3, scope: !4646)
!4650 = !DILocation(line: 259, column: 3, scope: !4646)
!4651 = !DILocation(line: 261, column: 1, scope: !4646)
!4652 = distinct !DISubprogram(name: "xnrealloc", scope: !4653, file: !4653, line: 147, type: !4654, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !4656)
!4653 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!168, !168, !170, !170}
!4656 = !{!4657, !4658, !4659}
!4657 = !DILocalVariable(name: "p", arg: 1, scope: !4652, file: !4653, line: 147, type: !168)
!4658 = !DILocalVariable(name: "n", arg: 2, scope: !4652, file: !4653, line: 147, type: !170)
!4659 = !DILocalVariable(name: "s", arg: 3, scope: !4652, file: !4653, line: 147, type: !170)
!4660 = !DILocation(line: 0, scope: !4652)
!4661 = !DILocalVariable(name: "p", arg: 1, scope: !4662, file: !945, line: 83, type: !168)
!4662 = distinct !DISubprogram(name: "xreallocarray", scope: !945, file: !945, line: 83, type: !4654, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !4663)
!4663 = !{!4661, !4664, !4665}
!4664 = !DILocalVariable(name: "n", arg: 2, scope: !4662, file: !945, line: 83, type: !170)
!4665 = !DILocalVariable(name: "s", arg: 3, scope: !4662, file: !945, line: 83, type: !170)
!4666 = !DILocation(line: 0, scope: !4662, inlinedAt: !4667)
!4667 = distinct !DILocation(line: 149, column: 10, scope: !4652)
!4668 = !DILocation(line: 85, column: 25, scope: !4662, inlinedAt: !4667)
!4669 = !DILocalVariable(name: "p", arg: 1, scope: !4670, file: !945, line: 37, type: !168)
!4670 = distinct !DISubprogram(name: "check_nonnull", scope: !945, file: !945, line: 37, type: !4671, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !4673)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!168, !168}
!4673 = !{!4669}
!4674 = !DILocation(line: 0, scope: !4670, inlinedAt: !4675)
!4675 = distinct !DILocation(line: 85, column: 10, scope: !4662, inlinedAt: !4667)
!4676 = !DILocation(line: 39, column: 8, scope: !4677, inlinedAt: !4675)
!4677 = distinct !DILexicalBlock(scope: !4670, file: !945, line: 39, column: 7)
!4678 = !DILocation(line: 39, column: 7, scope: !4670, inlinedAt: !4675)
!4679 = !DILocation(line: 40, column: 5, scope: !4677, inlinedAt: !4675)
!4680 = !DILocation(line: 149, column: 3, scope: !4652)
!4681 = !DILocation(line: 0, scope: !4662)
!4682 = !DILocation(line: 85, column: 25, scope: !4662)
!4683 = !DILocation(line: 0, scope: !4670, inlinedAt: !4684)
!4684 = distinct !DILocation(line: 85, column: 10, scope: !4662)
!4685 = !DILocation(line: 39, column: 8, scope: !4677, inlinedAt: !4684)
!4686 = !DILocation(line: 39, column: 7, scope: !4670, inlinedAt: !4684)
!4687 = !DILocation(line: 40, column: 5, scope: !4677, inlinedAt: !4684)
!4688 = !DILocation(line: 85, column: 3, scope: !4662)
!4689 = distinct !DISubprogram(name: "xmalloc", scope: !945, file: !945, line: 47, type: !3020, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !4690)
!4690 = !{!4691}
!4691 = !DILocalVariable(name: "s", arg: 1, scope: !4689, file: !945, line: 47, type: !170)
!4692 = !DILocation(line: 0, scope: !4689)
!4693 = !DILocation(line: 49, column: 25, scope: !4689)
!4694 = !DILocation(line: 0, scope: !4670, inlinedAt: !4695)
!4695 = distinct !DILocation(line: 49, column: 10, scope: !4689)
!4696 = !DILocation(line: 39, column: 8, scope: !4677, inlinedAt: !4695)
!4697 = !DILocation(line: 39, column: 7, scope: !4670, inlinedAt: !4695)
!4698 = !DILocation(line: 40, column: 5, scope: !4677, inlinedAt: !4695)
!4699 = !DILocation(line: 49, column: 3, scope: !4689)
!4700 = distinct !DISubprogram(name: "ximalloc", scope: !945, file: !945, line: 53, type: !4701, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !4703)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!168, !563}
!4703 = !{!4704}
!4704 = !DILocalVariable(name: "s", arg: 1, scope: !4700, file: !945, line: 53, type: !563)
!4705 = !DILocation(line: 0, scope: !4700)
!4706 = !DILocalVariable(name: "s", arg: 1, scope: !4707, file: !4708, line: 55, type: !563)
!4707 = distinct !DISubprogram(name: "imalloc", scope: !4708, file: !4708, line: 55, type: !4701, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !4709)
!4708 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4709 = !{!4706}
!4710 = !DILocation(line: 0, scope: !4707, inlinedAt: !4711)
!4711 = distinct !DILocation(line: 55, column: 25, scope: !4700)
!4712 = !DILocation(line: 57, column: 26, scope: !4707, inlinedAt: !4711)
!4713 = !DILocation(line: 0, scope: !4670, inlinedAt: !4714)
!4714 = distinct !DILocation(line: 55, column: 10, scope: !4700)
!4715 = !DILocation(line: 39, column: 8, scope: !4677, inlinedAt: !4714)
!4716 = !DILocation(line: 39, column: 7, scope: !4670, inlinedAt: !4714)
!4717 = !DILocation(line: 40, column: 5, scope: !4677, inlinedAt: !4714)
!4718 = !DILocation(line: 55, column: 3, scope: !4700)
!4719 = distinct !DISubprogram(name: "xcharalloc", scope: !945, file: !945, line: 59, type: !4720, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !4722)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{!167, !170}
!4722 = !{!4723}
!4723 = !DILocalVariable(name: "n", arg: 1, scope: !4719, file: !945, line: 59, type: !170)
!4724 = !DILocation(line: 0, scope: !4719)
!4725 = !DILocation(line: 0, scope: !4689, inlinedAt: !4726)
!4726 = distinct !DILocation(line: 61, column: 10, scope: !4719)
!4727 = !DILocation(line: 49, column: 25, scope: !4689, inlinedAt: !4726)
!4728 = !DILocation(line: 0, scope: !4670, inlinedAt: !4729)
!4729 = distinct !DILocation(line: 49, column: 10, scope: !4689, inlinedAt: !4726)
!4730 = !DILocation(line: 39, column: 8, scope: !4677, inlinedAt: !4729)
!4731 = !DILocation(line: 39, column: 7, scope: !4670, inlinedAt: !4729)
!4732 = !DILocation(line: 40, column: 5, scope: !4677, inlinedAt: !4729)
!4733 = !DILocation(line: 61, column: 3, scope: !4719)
!4734 = distinct !DISubprogram(name: "xrealloc", scope: !945, file: !945, line: 68, type: !2963, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !4735)
!4735 = !{!4736, !4737}
!4736 = !DILocalVariable(name: "p", arg: 1, scope: !4734, file: !945, line: 68, type: !168)
!4737 = !DILocalVariable(name: "s", arg: 2, scope: !4734, file: !945, line: 68, type: !170)
!4738 = !DILocation(line: 0, scope: !4734)
!4739 = !DILocalVariable(name: "ptr", arg: 1, scope: !4740, file: !2962, line: 2057, type: !168)
!4740 = distinct !DISubprogram(name: "rpl_realloc", scope: !2962, file: !2962, line: 2057, type: !2963, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !4741)
!4741 = !{!4739, !4742}
!4742 = !DILocalVariable(name: "size", arg: 2, scope: !4740, file: !2962, line: 2057, type: !170)
!4743 = !DILocation(line: 0, scope: !4740, inlinedAt: !4744)
!4744 = distinct !DILocation(line: 70, column: 25, scope: !4734)
!4745 = !DILocation(line: 2059, column: 24, scope: !4740, inlinedAt: !4744)
!4746 = !DILocation(line: 2059, column: 10, scope: !4740, inlinedAt: !4744)
!4747 = !DILocation(line: 0, scope: !4670, inlinedAt: !4748)
!4748 = distinct !DILocation(line: 70, column: 10, scope: !4734)
!4749 = !DILocation(line: 39, column: 8, scope: !4677, inlinedAt: !4748)
!4750 = !DILocation(line: 39, column: 7, scope: !4670, inlinedAt: !4748)
!4751 = !DILocation(line: 40, column: 5, scope: !4677, inlinedAt: !4748)
!4752 = !DILocation(line: 70, column: 3, scope: !4734)
!4753 = distinct !DISubprogram(name: "xirealloc", scope: !945, file: !945, line: 74, type: !4754, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !4756)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!168, !168, !563}
!4756 = !{!4757, !4758}
!4757 = !DILocalVariable(name: "p", arg: 1, scope: !4753, file: !945, line: 74, type: !168)
!4758 = !DILocalVariable(name: "s", arg: 2, scope: !4753, file: !945, line: 74, type: !563)
!4759 = !DILocation(line: 0, scope: !4753)
!4760 = !DILocalVariable(name: "p", arg: 1, scope: !4761, file: !4708, line: 66, type: !168)
!4761 = distinct !DISubprogram(name: "irealloc", scope: !4708, file: !4708, line: 66, type: !4754, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !4762)
!4762 = !{!4760, !4763}
!4763 = !DILocalVariable(name: "s", arg: 2, scope: !4761, file: !4708, line: 66, type: !563)
!4764 = !DILocation(line: 0, scope: !4761, inlinedAt: !4765)
!4765 = distinct !DILocation(line: 76, column: 25, scope: !4753)
!4766 = !DILocation(line: 0, scope: !4740, inlinedAt: !4767)
!4767 = distinct !DILocation(line: 68, column: 26, scope: !4761, inlinedAt: !4765)
!4768 = !DILocation(line: 2059, column: 24, scope: !4740, inlinedAt: !4767)
!4769 = !DILocation(line: 2059, column: 10, scope: !4740, inlinedAt: !4767)
!4770 = !DILocation(line: 0, scope: !4670, inlinedAt: !4771)
!4771 = distinct !DILocation(line: 76, column: 10, scope: !4753)
!4772 = !DILocation(line: 39, column: 8, scope: !4677, inlinedAt: !4771)
!4773 = !DILocation(line: 39, column: 7, scope: !4670, inlinedAt: !4771)
!4774 = !DILocation(line: 40, column: 5, scope: !4677, inlinedAt: !4771)
!4775 = !DILocation(line: 76, column: 3, scope: !4753)
!4776 = distinct !DISubprogram(name: "xireallocarray", scope: !945, file: !945, line: 89, type: !4777, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !4779)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{!168, !168, !563, !563}
!4779 = !{!4780, !4781, !4782}
!4780 = !DILocalVariable(name: "p", arg: 1, scope: !4776, file: !945, line: 89, type: !168)
!4781 = !DILocalVariable(name: "n", arg: 2, scope: !4776, file: !945, line: 89, type: !563)
!4782 = !DILocalVariable(name: "s", arg: 3, scope: !4776, file: !945, line: 89, type: !563)
!4783 = !DILocation(line: 0, scope: !4776)
!4784 = !DILocalVariable(name: "p", arg: 1, scope: !4785, file: !4708, line: 98, type: !168)
!4785 = distinct !DISubprogram(name: "ireallocarray", scope: !4708, file: !4708, line: 98, type: !4777, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !4786)
!4786 = !{!4784, !4787, !4788}
!4787 = !DILocalVariable(name: "n", arg: 2, scope: !4785, file: !4708, line: 98, type: !563)
!4788 = !DILocalVariable(name: "s", arg: 3, scope: !4785, file: !4708, line: 98, type: !563)
!4789 = !DILocation(line: 0, scope: !4785, inlinedAt: !4790)
!4790 = distinct !DILocation(line: 91, column: 25, scope: !4776)
!4791 = !DILocation(line: 101, column: 13, scope: !4785, inlinedAt: !4790)
!4792 = !DILocation(line: 0, scope: !4670, inlinedAt: !4793)
!4793 = distinct !DILocation(line: 91, column: 10, scope: !4776)
!4794 = !DILocation(line: 39, column: 8, scope: !4677, inlinedAt: !4793)
!4795 = !DILocation(line: 39, column: 7, scope: !4670, inlinedAt: !4793)
!4796 = !DILocation(line: 40, column: 5, scope: !4677, inlinedAt: !4793)
!4797 = !DILocation(line: 91, column: 3, scope: !4776)
!4798 = distinct !DISubprogram(name: "xnmalloc", scope: !945, file: !945, line: 98, type: !4799, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !4801)
!4799 = !DISubroutineType(types: !4800)
!4800 = !{!168, !170, !170}
!4801 = !{!4802, !4803}
!4802 = !DILocalVariable(name: "n", arg: 1, scope: !4798, file: !945, line: 98, type: !170)
!4803 = !DILocalVariable(name: "s", arg: 2, scope: !4798, file: !945, line: 98, type: !170)
!4804 = !DILocation(line: 0, scope: !4798)
!4805 = !DILocation(line: 0, scope: !4662, inlinedAt: !4806)
!4806 = distinct !DILocation(line: 100, column: 10, scope: !4798)
!4807 = !DILocation(line: 85, column: 25, scope: !4662, inlinedAt: !4806)
!4808 = !DILocation(line: 0, scope: !4670, inlinedAt: !4809)
!4809 = distinct !DILocation(line: 85, column: 10, scope: !4662, inlinedAt: !4806)
!4810 = !DILocation(line: 39, column: 8, scope: !4677, inlinedAt: !4809)
!4811 = !DILocation(line: 39, column: 7, scope: !4670, inlinedAt: !4809)
!4812 = !DILocation(line: 40, column: 5, scope: !4677, inlinedAt: !4809)
!4813 = !DILocation(line: 100, column: 3, scope: !4798)
!4814 = distinct !DISubprogram(name: "xinmalloc", scope: !945, file: !945, line: 104, type: !4815, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !4817)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{!168, !563, !563}
!4817 = !{!4818, !4819}
!4818 = !DILocalVariable(name: "n", arg: 1, scope: !4814, file: !945, line: 104, type: !563)
!4819 = !DILocalVariable(name: "s", arg: 2, scope: !4814, file: !945, line: 104, type: !563)
!4820 = !DILocation(line: 0, scope: !4814)
!4821 = !DILocation(line: 0, scope: !4776, inlinedAt: !4822)
!4822 = distinct !DILocation(line: 106, column: 10, scope: !4814)
!4823 = !DILocation(line: 0, scope: !4785, inlinedAt: !4824)
!4824 = distinct !DILocation(line: 91, column: 25, scope: !4776, inlinedAt: !4822)
!4825 = !DILocation(line: 101, column: 13, scope: !4785, inlinedAt: !4824)
!4826 = !DILocation(line: 0, scope: !4670, inlinedAt: !4827)
!4827 = distinct !DILocation(line: 91, column: 10, scope: !4776, inlinedAt: !4822)
!4828 = !DILocation(line: 39, column: 8, scope: !4677, inlinedAt: !4827)
!4829 = !DILocation(line: 39, column: 7, scope: !4670, inlinedAt: !4827)
!4830 = !DILocation(line: 40, column: 5, scope: !4677, inlinedAt: !4827)
!4831 = !DILocation(line: 106, column: 3, scope: !4814)
!4832 = distinct !DISubprogram(name: "x2realloc", scope: !945, file: !945, line: 116, type: !4833, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !4835)
!4833 = !DISubroutineType(types: !4834)
!4834 = !{!168, !168, !951}
!4835 = !{!4836, !4837}
!4836 = !DILocalVariable(name: "p", arg: 1, scope: !4832, file: !945, line: 116, type: !168)
!4837 = !DILocalVariable(name: "ps", arg: 2, scope: !4832, file: !945, line: 116, type: !951)
!4838 = !DILocation(line: 0, scope: !4832)
!4839 = !DILocation(line: 0, scope: !948, inlinedAt: !4840)
!4840 = distinct !DILocation(line: 118, column: 10, scope: !4832)
!4841 = !DILocation(line: 178, column: 14, scope: !948, inlinedAt: !4840)
!4842 = !DILocation(line: 180, column: 9, scope: !4843, inlinedAt: !4840)
!4843 = distinct !DILexicalBlock(scope: !948, file: !945, line: 180, column: 7)
!4844 = !DILocation(line: 180, column: 7, scope: !948, inlinedAt: !4840)
!4845 = !DILocation(line: 182, column: 13, scope: !4846, inlinedAt: !4840)
!4846 = distinct !DILexicalBlock(scope: !4847, file: !945, line: 182, column: 11)
!4847 = distinct !DILexicalBlock(scope: !4843, file: !945, line: 181, column: 5)
!4848 = !DILocation(line: 182, column: 11, scope: !4847, inlinedAt: !4840)
!4849 = !DILocation(line: 197, column: 11, scope: !4850, inlinedAt: !4840)
!4850 = distinct !DILexicalBlock(scope: !4851, file: !945, line: 197, column: 11)
!4851 = distinct !DILexicalBlock(scope: !4843, file: !945, line: 195, column: 5)
!4852 = !DILocation(line: 197, column: 11, scope: !4851, inlinedAt: !4840)
!4853 = !DILocation(line: 198, column: 9, scope: !4850, inlinedAt: !4840)
!4854 = !DILocation(line: 0, scope: !4662, inlinedAt: !4855)
!4855 = distinct !DILocation(line: 201, column: 7, scope: !948, inlinedAt: !4840)
!4856 = !DILocation(line: 85, column: 25, scope: !4662, inlinedAt: !4855)
!4857 = !DILocation(line: 0, scope: !4670, inlinedAt: !4858)
!4858 = distinct !DILocation(line: 85, column: 10, scope: !4662, inlinedAt: !4855)
!4859 = !DILocation(line: 39, column: 8, scope: !4677, inlinedAt: !4858)
!4860 = !DILocation(line: 39, column: 7, scope: !4670, inlinedAt: !4858)
!4861 = !DILocation(line: 40, column: 5, scope: !4677, inlinedAt: !4858)
!4862 = !DILocation(line: 202, column: 7, scope: !948, inlinedAt: !4840)
!4863 = !DILocation(line: 118, column: 3, scope: !4832)
!4864 = !DILocation(line: 0, scope: !948)
!4865 = !DILocation(line: 178, column: 14, scope: !948)
!4866 = !DILocation(line: 180, column: 9, scope: !4843)
!4867 = !DILocation(line: 180, column: 7, scope: !948)
!4868 = !DILocation(line: 182, column: 13, scope: !4846)
!4869 = !DILocation(line: 182, column: 11, scope: !4847)
!4870 = !DILocation(line: 190, column: 30, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4846, file: !945, line: 183, column: 9)
!4872 = !DILocation(line: 191, column: 16, scope: !4871)
!4873 = !DILocation(line: 191, column: 13, scope: !4871)
!4874 = !DILocation(line: 192, column: 9, scope: !4871)
!4875 = !DILocation(line: 197, column: 11, scope: !4850)
!4876 = !DILocation(line: 197, column: 11, scope: !4851)
!4877 = !DILocation(line: 198, column: 9, scope: !4850)
!4878 = !DILocation(line: 0, scope: !4662, inlinedAt: !4879)
!4879 = distinct !DILocation(line: 201, column: 7, scope: !948)
!4880 = !DILocation(line: 85, column: 25, scope: !4662, inlinedAt: !4879)
!4881 = !DILocation(line: 0, scope: !4670, inlinedAt: !4882)
!4882 = distinct !DILocation(line: 85, column: 10, scope: !4662, inlinedAt: !4879)
!4883 = !DILocation(line: 39, column: 8, scope: !4677, inlinedAt: !4882)
!4884 = !DILocation(line: 39, column: 7, scope: !4670, inlinedAt: !4882)
!4885 = !DILocation(line: 40, column: 5, scope: !4677, inlinedAt: !4882)
!4886 = !DILocation(line: 202, column: 7, scope: !948)
!4887 = !DILocation(line: 203, column: 3, scope: !948)
!4888 = !DILocation(line: 0, scope: !960)
!4889 = !DILocation(line: 230, column: 14, scope: !960)
!4890 = !DILocation(line: 238, column: 7, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !960, file: !945, line: 238, column: 7)
!4892 = !DILocation(line: 238, column: 7, scope: !960)
!4893 = !DILocation(line: 240, column: 9, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !960, file: !945, line: 240, column: 7)
!4895 = !DILocation(line: 240, column: 18, scope: !4894)
!4896 = !DILocation(line: 253, column: 8, scope: !960)
!4897 = !DILocation(line: 258, column: 27, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4899, file: !945, line: 257, column: 5)
!4899 = distinct !DILexicalBlock(scope: !960, file: !945, line: 256, column: 7)
!4900 = !DILocation(line: 259, column: 50, scope: !4898)
!4901 = !DILocation(line: 259, column: 32, scope: !4898)
!4902 = !DILocation(line: 260, column: 5, scope: !4898)
!4903 = !DILocation(line: 262, column: 9, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !960, file: !945, line: 262, column: 7)
!4905 = !DILocation(line: 262, column: 7, scope: !960)
!4906 = !DILocation(line: 263, column: 9, scope: !4904)
!4907 = !DILocation(line: 263, column: 5, scope: !4904)
!4908 = !DILocation(line: 264, column: 9, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !960, file: !945, line: 264, column: 7)
!4910 = !DILocation(line: 264, column: 14, scope: !4909)
!4911 = !DILocation(line: 265, column: 7, scope: !4909)
!4912 = !DILocation(line: 265, column: 11, scope: !4909)
!4913 = !DILocation(line: 266, column: 11, scope: !4909)
!4914 = !DILocation(line: 267, column: 14, scope: !4909)
!4915 = !DILocation(line: 264, column: 7, scope: !960)
!4916 = !DILocation(line: 268, column: 5, scope: !4909)
!4917 = !DILocation(line: 0, scope: !4734, inlinedAt: !4918)
!4918 = distinct !DILocation(line: 269, column: 8, scope: !960)
!4919 = !DILocation(line: 0, scope: !4740, inlinedAt: !4920)
!4920 = distinct !DILocation(line: 70, column: 25, scope: !4734, inlinedAt: !4918)
!4921 = !DILocation(line: 2059, column: 24, scope: !4740, inlinedAt: !4920)
!4922 = !DILocation(line: 2059, column: 10, scope: !4740, inlinedAt: !4920)
!4923 = !DILocation(line: 0, scope: !4670, inlinedAt: !4924)
!4924 = distinct !DILocation(line: 70, column: 10, scope: !4734, inlinedAt: !4918)
!4925 = !DILocation(line: 39, column: 8, scope: !4677, inlinedAt: !4924)
!4926 = !DILocation(line: 39, column: 7, scope: !4670, inlinedAt: !4924)
!4927 = !DILocation(line: 40, column: 5, scope: !4677, inlinedAt: !4924)
!4928 = !DILocation(line: 270, column: 7, scope: !960)
!4929 = !DILocation(line: 271, column: 3, scope: !960)
!4930 = distinct !DISubprogram(name: "xzalloc", scope: !945, file: !945, line: 279, type: !3020, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !4931)
!4931 = !{!4932}
!4932 = !DILocalVariable(name: "s", arg: 1, scope: !4930, file: !945, line: 279, type: !170)
!4933 = !DILocation(line: 0, scope: !4930)
!4934 = !DILocalVariable(name: "n", arg: 1, scope: !4935, file: !945, line: 294, type: !170)
!4935 = distinct !DISubprogram(name: "xcalloc", scope: !945, file: !945, line: 294, type: !4799, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !4936)
!4936 = !{!4934, !4937}
!4937 = !DILocalVariable(name: "s", arg: 2, scope: !4935, file: !945, line: 294, type: !170)
!4938 = !DILocation(line: 0, scope: !4935, inlinedAt: !4939)
!4939 = distinct !DILocation(line: 281, column: 10, scope: !4930)
!4940 = !DILocation(line: 296, column: 25, scope: !4935, inlinedAt: !4939)
!4941 = !DILocation(line: 0, scope: !4670, inlinedAt: !4942)
!4942 = distinct !DILocation(line: 296, column: 10, scope: !4935, inlinedAt: !4939)
!4943 = !DILocation(line: 39, column: 8, scope: !4677, inlinedAt: !4942)
!4944 = !DILocation(line: 39, column: 7, scope: !4670, inlinedAt: !4942)
!4945 = !DILocation(line: 40, column: 5, scope: !4677, inlinedAt: !4942)
!4946 = !DILocation(line: 281, column: 3, scope: !4930)
!4947 = !DISubprogram(name: "calloc", scope: !1221, file: !1221, line: 543, type: !4799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!4948 = !DILocation(line: 0, scope: !4935)
!4949 = !DILocation(line: 296, column: 25, scope: !4935)
!4950 = !DILocation(line: 0, scope: !4670, inlinedAt: !4951)
!4951 = distinct !DILocation(line: 296, column: 10, scope: !4935)
!4952 = !DILocation(line: 39, column: 8, scope: !4677, inlinedAt: !4951)
!4953 = !DILocation(line: 39, column: 7, scope: !4670, inlinedAt: !4951)
!4954 = !DILocation(line: 40, column: 5, scope: !4677, inlinedAt: !4951)
!4955 = !DILocation(line: 296, column: 3, scope: !4935)
!4956 = distinct !DISubprogram(name: "xizalloc", scope: !945, file: !945, line: 285, type: !4701, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !4957)
!4957 = !{!4958}
!4958 = !DILocalVariable(name: "s", arg: 1, scope: !4956, file: !945, line: 285, type: !563)
!4959 = !DILocation(line: 0, scope: !4956)
!4960 = !DILocalVariable(name: "n", arg: 1, scope: !4961, file: !945, line: 300, type: !563)
!4961 = distinct !DISubprogram(name: "xicalloc", scope: !945, file: !945, line: 300, type: !4815, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !4962)
!4962 = !{!4960, !4963}
!4963 = !DILocalVariable(name: "s", arg: 2, scope: !4961, file: !945, line: 300, type: !563)
!4964 = !DILocation(line: 0, scope: !4961, inlinedAt: !4965)
!4965 = distinct !DILocation(line: 287, column: 10, scope: !4956)
!4966 = !DILocalVariable(name: "n", arg: 1, scope: !4967, file: !4708, line: 77, type: !563)
!4967 = distinct !DISubprogram(name: "icalloc", scope: !4708, file: !4708, line: 77, type: !4815, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !4968)
!4968 = !{!4966, !4969}
!4969 = !DILocalVariable(name: "s", arg: 2, scope: !4967, file: !4708, line: 77, type: !563)
!4970 = !DILocation(line: 0, scope: !4967, inlinedAt: !4971)
!4971 = distinct !DILocation(line: 302, column: 25, scope: !4961, inlinedAt: !4965)
!4972 = !DILocation(line: 91, column: 10, scope: !4967, inlinedAt: !4971)
!4973 = !DILocation(line: 0, scope: !4670, inlinedAt: !4974)
!4974 = distinct !DILocation(line: 302, column: 10, scope: !4961, inlinedAt: !4965)
!4975 = !DILocation(line: 39, column: 8, scope: !4677, inlinedAt: !4974)
!4976 = !DILocation(line: 39, column: 7, scope: !4670, inlinedAt: !4974)
!4977 = !DILocation(line: 40, column: 5, scope: !4677, inlinedAt: !4974)
!4978 = !DILocation(line: 287, column: 3, scope: !4956)
!4979 = !DILocation(line: 0, scope: !4961)
!4980 = !DILocation(line: 0, scope: !4967, inlinedAt: !4981)
!4981 = distinct !DILocation(line: 302, column: 25, scope: !4961)
!4982 = !DILocation(line: 91, column: 10, scope: !4967, inlinedAt: !4981)
!4983 = !DILocation(line: 0, scope: !4670, inlinedAt: !4984)
!4984 = distinct !DILocation(line: 302, column: 10, scope: !4961)
!4985 = !DILocation(line: 39, column: 8, scope: !4677, inlinedAt: !4984)
!4986 = !DILocation(line: 39, column: 7, scope: !4670, inlinedAt: !4984)
!4987 = !DILocation(line: 40, column: 5, scope: !4677, inlinedAt: !4984)
!4988 = !DILocation(line: 302, column: 3, scope: !4961)
!4989 = distinct !DISubprogram(name: "xmemdup", scope: !945, file: !945, line: 310, type: !4990, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !4992)
!4990 = !DISubroutineType(types: !4991)
!4991 = !{!168, !1245, !170}
!4992 = !{!4993, !4994}
!4993 = !DILocalVariable(name: "p", arg: 1, scope: !4989, file: !945, line: 310, type: !1245)
!4994 = !DILocalVariable(name: "s", arg: 2, scope: !4989, file: !945, line: 310, type: !170)
!4995 = !DILocation(line: 0, scope: !4989)
!4996 = !DILocation(line: 0, scope: !4689, inlinedAt: !4997)
!4997 = distinct !DILocation(line: 312, column: 18, scope: !4989)
!4998 = !DILocation(line: 49, column: 25, scope: !4689, inlinedAt: !4997)
!4999 = !DILocation(line: 0, scope: !4670, inlinedAt: !5000)
!5000 = distinct !DILocation(line: 49, column: 10, scope: !4689, inlinedAt: !4997)
!5001 = !DILocation(line: 39, column: 8, scope: !4677, inlinedAt: !5000)
!5002 = !DILocation(line: 39, column: 7, scope: !4670, inlinedAt: !5000)
!5003 = !DILocation(line: 40, column: 5, scope: !4677, inlinedAt: !5000)
!5004 = !DILocalVariable(name: "__dest", arg: 1, scope: !5005, file: !2095, line: 26, type: !2988)
!5005 = distinct !DISubprogram(name: "memcpy", scope: !2095, file: !2095, line: 26, type: !2986, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !5006)
!5006 = !{!5004, !5007, !5008}
!5007 = !DILocalVariable(name: "__src", arg: 2, scope: !5005, file: !2095, line: 26, type: !1244)
!5008 = !DILocalVariable(name: "__len", arg: 3, scope: !5005, file: !2095, line: 26, type: !170)
!5009 = !DILocation(line: 0, scope: !5005, inlinedAt: !5010)
!5010 = distinct !DILocation(line: 312, column: 10, scope: !4989)
!5011 = !DILocation(line: 29, column: 10, scope: !5005, inlinedAt: !5010)
!5012 = !DILocation(line: 312, column: 3, scope: !4989)
!5013 = distinct !DISubprogram(name: "ximemdup", scope: !945, file: !945, line: 316, type: !5014, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !5016)
!5014 = !DISubroutineType(types: !5015)
!5015 = !{!168, !1245, !563}
!5016 = !{!5017, !5018}
!5017 = !DILocalVariable(name: "p", arg: 1, scope: !5013, file: !945, line: 316, type: !1245)
!5018 = !DILocalVariable(name: "s", arg: 2, scope: !5013, file: !945, line: 316, type: !563)
!5019 = !DILocation(line: 0, scope: !5013)
!5020 = !DILocation(line: 0, scope: !4700, inlinedAt: !5021)
!5021 = distinct !DILocation(line: 318, column: 18, scope: !5013)
!5022 = !DILocation(line: 0, scope: !4707, inlinedAt: !5023)
!5023 = distinct !DILocation(line: 55, column: 25, scope: !4700, inlinedAt: !5021)
!5024 = !DILocation(line: 57, column: 26, scope: !4707, inlinedAt: !5023)
!5025 = !DILocation(line: 0, scope: !4670, inlinedAt: !5026)
!5026 = distinct !DILocation(line: 55, column: 10, scope: !4700, inlinedAt: !5021)
!5027 = !DILocation(line: 39, column: 8, scope: !4677, inlinedAt: !5026)
!5028 = !DILocation(line: 39, column: 7, scope: !4670, inlinedAt: !5026)
!5029 = !DILocation(line: 40, column: 5, scope: !4677, inlinedAt: !5026)
!5030 = !DILocation(line: 0, scope: !5005, inlinedAt: !5031)
!5031 = distinct !DILocation(line: 318, column: 10, scope: !5013)
!5032 = !DILocation(line: 29, column: 10, scope: !5005, inlinedAt: !5031)
!5033 = !DILocation(line: 318, column: 3, scope: !5013)
!5034 = distinct !DISubprogram(name: "ximemdup0", scope: !945, file: !945, line: 325, type: !5035, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !5037)
!5035 = !DISubroutineType(types: !5036)
!5036 = !{!167, !1245, !563}
!5037 = !{!5038, !5039, !5040}
!5038 = !DILocalVariable(name: "p", arg: 1, scope: !5034, file: !945, line: 325, type: !1245)
!5039 = !DILocalVariable(name: "s", arg: 2, scope: !5034, file: !945, line: 325, type: !563)
!5040 = !DILocalVariable(name: "result", scope: !5034, file: !945, line: 327, type: !167)
!5041 = !DILocation(line: 0, scope: !5034)
!5042 = !DILocation(line: 327, column: 30, scope: !5034)
!5043 = !DILocation(line: 0, scope: !4700, inlinedAt: !5044)
!5044 = distinct !DILocation(line: 327, column: 18, scope: !5034)
!5045 = !DILocation(line: 0, scope: !4707, inlinedAt: !5046)
!5046 = distinct !DILocation(line: 55, column: 25, scope: !4700, inlinedAt: !5044)
!5047 = !DILocation(line: 57, column: 26, scope: !4707, inlinedAt: !5046)
!5048 = !DILocation(line: 0, scope: !4670, inlinedAt: !5049)
!5049 = distinct !DILocation(line: 55, column: 10, scope: !4700, inlinedAt: !5044)
!5050 = !DILocation(line: 39, column: 8, scope: !4677, inlinedAt: !5049)
!5051 = !DILocation(line: 39, column: 7, scope: !4670, inlinedAt: !5049)
!5052 = !DILocation(line: 40, column: 5, scope: !4677, inlinedAt: !5049)
!5053 = !DILocation(line: 328, column: 3, scope: !5034)
!5054 = !DILocation(line: 328, column: 13, scope: !5034)
!5055 = !DILocation(line: 0, scope: !5005, inlinedAt: !5056)
!5056 = distinct !DILocation(line: 329, column: 10, scope: !5034)
!5057 = !DILocation(line: 29, column: 10, scope: !5005, inlinedAt: !5056)
!5058 = !DILocation(line: 329, column: 3, scope: !5034)
!5059 = distinct !DISubprogram(name: "xstrdup", scope: !945, file: !945, line: 335, type: !1223, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !5060)
!5060 = !{!5061}
!5061 = !DILocalVariable(name: "string", arg: 1, scope: !5059, file: !945, line: 335, type: !173)
!5062 = !DILocation(line: 0, scope: !5059)
!5063 = !DILocation(line: 337, column: 27, scope: !5059)
!5064 = !DILocation(line: 337, column: 43, scope: !5059)
!5065 = !DILocation(line: 0, scope: !4989, inlinedAt: !5066)
!5066 = distinct !DILocation(line: 337, column: 10, scope: !5059)
!5067 = !DILocation(line: 0, scope: !4689, inlinedAt: !5068)
!5068 = distinct !DILocation(line: 312, column: 18, scope: !4989, inlinedAt: !5066)
!5069 = !DILocation(line: 49, column: 25, scope: !4689, inlinedAt: !5068)
!5070 = !DILocation(line: 0, scope: !4670, inlinedAt: !5071)
!5071 = distinct !DILocation(line: 49, column: 10, scope: !4689, inlinedAt: !5068)
!5072 = !DILocation(line: 39, column: 8, scope: !4677, inlinedAt: !5071)
!5073 = !DILocation(line: 39, column: 7, scope: !4670, inlinedAt: !5071)
!5074 = !DILocation(line: 40, column: 5, scope: !4677, inlinedAt: !5071)
!5075 = !DILocation(line: 0, scope: !5005, inlinedAt: !5076)
!5076 = distinct !DILocation(line: 312, column: 10, scope: !4989, inlinedAt: !5066)
!5077 = !DILocation(line: 29, column: 10, scope: !5005, inlinedAt: !5076)
!5078 = !DILocation(line: 337, column: 3, scope: !5059)
!5079 = distinct !DISubprogram(name: "xalloc_die", scope: !889, file: !889, line: 32, type: !663, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !975, retainedNodes: !5080)
!5080 = !{!5081}
!5081 = !DILocalVariable(name: "__errstatus", scope: !5082, file: !889, line: 34, type: !5083)
!5082 = distinct !DILexicalBlock(scope: !5079, file: !889, line: 34, column: 3)
!5083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!5084 = !DILocation(line: 34, column: 3, scope: !5082)
!5085 = !DILocation(line: 0, scope: !5082)
!5086 = !DILocation(line: 40, column: 3, scope: !5079)
!5087 = distinct !DISubprogram(name: "rpl_fopen", scope: !978, file: !978, line: 46, type: !5088, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !5124)
!5088 = !DISubroutineType(types: !5089)
!5089 = !{!5090, !173, !173}
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5091 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !5092)
!5092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !5093)
!5093 = !{!5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123}
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5092, file: !269, line: 51, baseType: !118, size: 32)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5092, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5092, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5092, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5092, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5092, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5092, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5092, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5092, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5092, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5092, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5092, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5092, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5092, file: !269, line: 70, baseType: !5108, size: 64, offset: 832)
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5092, size: 64)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5092, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5092, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5092, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5092, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5092, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5092, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5092, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5092, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5092, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5092, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5092, file: !269, line: 93, baseType: !5108, size: 64, offset: 1344)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5092, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5092, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5092, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5092, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!5124 = !{!5125, !5126, !5127, !5128, !5129, !5130, !5134, !5136, !5137, !5142, !5145, !5146}
!5125 = !DILocalVariable(name: "filename", arg: 1, scope: !5087, file: !978, line: 46, type: !173)
!5126 = !DILocalVariable(name: "mode", arg: 2, scope: !5087, file: !978, line: 46, type: !173)
!5127 = !DILocalVariable(name: "open_direction", scope: !5087, file: !978, line: 54, type: !118)
!5128 = !DILocalVariable(name: "open_flags", scope: !5087, file: !978, line: 55, type: !118)
!5129 = !DILocalVariable(name: "open_flags_gnu", scope: !5087, file: !978, line: 57, type: !224)
!5130 = !DILocalVariable(name: "fdopen_mode_buf", scope: !5087, file: !978, line: 59, type: !5131)
!5131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !5132)
!5132 = !{!5133}
!5133 = !DISubrange(count: 81)
!5134 = !DILocalVariable(name: "p", scope: !5135, file: !978, line: 62, type: !173)
!5135 = distinct !DILexicalBlock(scope: !5087, file: !978, line: 61, column: 3)
!5136 = !DILocalVariable(name: "q", scope: !5135, file: !978, line: 64, type: !167)
!5137 = !DILocalVariable(name: "len", scope: !5138, file: !978, line: 128, type: !170)
!5138 = distinct !DILexicalBlock(scope: !5139, file: !978, line: 127, column: 9)
!5139 = distinct !DILexicalBlock(scope: !5140, file: !978, line: 68, column: 7)
!5140 = distinct !DILexicalBlock(scope: !5141, file: !978, line: 67, column: 5)
!5141 = distinct !DILexicalBlock(scope: !5135, file: !978, line: 67, column: 5)
!5142 = !DILocalVariable(name: "fd", scope: !5143, file: !978, line: 199, type: !118)
!5143 = distinct !DILexicalBlock(scope: !5144, file: !978, line: 198, column: 5)
!5144 = distinct !DILexicalBlock(scope: !5087, file: !978, line: 197, column: 7)
!5145 = !DILocalVariable(name: "fp", scope: !5143, file: !978, line: 204, type: !5090)
!5146 = !DILocalVariable(name: "saved_errno", scope: !5147, file: !978, line: 207, type: !118)
!5147 = distinct !DILexicalBlock(scope: !5148, file: !978, line: 206, column: 9)
!5148 = distinct !DILexicalBlock(scope: !5143, file: !978, line: 205, column: 11)
!5149 = !DILocation(line: 0, scope: !5087)
!5150 = !DILocation(line: 59, column: 3, scope: !5087)
!5151 = !DILocation(line: 59, column: 8, scope: !5087)
!5152 = !DILocation(line: 0, scope: !5135)
!5153 = !DILocation(line: 67, column: 12, scope: !5140)
!5154 = !DILocation(line: 67, column: 15, scope: !5140)
!5155 = !DILocation(line: 67, column: 5, scope: !5141)
!5156 = !DILocation(line: 138, column: 8, scope: !5135)
!5157 = !DILocation(line: 197, column: 7, scope: !5087)
!5158 = !DILocation(line: 69, column: 9, scope: !5139)
!5159 = !DILocation(line: 74, column: 19, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5161, file: !978, line: 74, column: 17)
!5161 = distinct !DILexicalBlock(scope: !5139, file: !978, line: 70, column: 11)
!5162 = !DILocation(line: 74, column: 17, scope: !5161)
!5163 = !DILocation(line: 75, column: 17, scope: !5160)
!5164 = !DILocation(line: 75, column: 20, scope: !5160)
!5165 = !DILocation(line: 75, column: 15, scope: !5160)
!5166 = !DILocation(line: 80, column: 24, scope: !5161)
!5167 = !DILocation(line: 82, column: 19, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5161, file: !978, line: 82, column: 17)
!5169 = !DILocation(line: 82, column: 17, scope: !5161)
!5170 = !DILocation(line: 83, column: 17, scope: !5168)
!5171 = !DILocation(line: 83, column: 20, scope: !5168)
!5172 = !DILocation(line: 83, column: 15, scope: !5168)
!5173 = !DILocation(line: 88, column: 24, scope: !5161)
!5174 = !DILocation(line: 90, column: 19, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5161, file: !978, line: 90, column: 17)
!5176 = !DILocation(line: 90, column: 17, scope: !5161)
!5177 = !DILocation(line: 91, column: 17, scope: !5175)
!5178 = !DILocation(line: 91, column: 20, scope: !5175)
!5179 = !DILocation(line: 91, column: 15, scope: !5175)
!5180 = !DILocation(line: 100, column: 19, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5161, file: !978, line: 100, column: 17)
!5182 = !DILocation(line: 100, column: 17, scope: !5161)
!5183 = !DILocation(line: 101, column: 17, scope: !5181)
!5184 = !DILocation(line: 101, column: 20, scope: !5181)
!5185 = !DILocation(line: 101, column: 15, scope: !5181)
!5186 = !DILocation(line: 107, column: 19, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5161, file: !978, line: 107, column: 17)
!5188 = !DILocation(line: 107, column: 17, scope: !5161)
!5189 = !DILocation(line: 108, column: 17, scope: !5187)
!5190 = !DILocation(line: 108, column: 20, scope: !5187)
!5191 = !DILocation(line: 108, column: 15, scope: !5187)
!5192 = !DILocation(line: 113, column: 24, scope: !5161)
!5193 = !DILocation(line: 115, column: 13, scope: !5161)
!5194 = !DILocation(line: 117, column: 24, scope: !5161)
!5195 = !DILocation(line: 119, column: 13, scope: !5161)
!5196 = !DILocation(line: 128, column: 24, scope: !5138)
!5197 = !DILocation(line: 0, scope: !5138)
!5198 = !DILocation(line: 129, column: 48, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5138, file: !978, line: 129, column: 15)
!5200 = !DILocation(line: 129, column: 15, scope: !5138)
!5201 = !DILocalVariable(name: "__dest", arg: 1, scope: !5202, file: !2095, line: 26, type: !2988)
!5202 = distinct !DISubprogram(name: "memcpy", scope: !2095, file: !2095, line: 26, type: !2986, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !5203)
!5203 = !{!5201, !5204, !5205}
!5204 = !DILocalVariable(name: "__src", arg: 2, scope: !5202, file: !2095, line: 26, type: !1244)
!5205 = !DILocalVariable(name: "__len", arg: 3, scope: !5202, file: !2095, line: 26, type: !170)
!5206 = !DILocation(line: 0, scope: !5202, inlinedAt: !5207)
!5207 = distinct !DILocation(line: 131, column: 11, scope: !5138)
!5208 = !DILocation(line: 29, column: 10, scope: !5202, inlinedAt: !5207)
!5209 = !DILocation(line: 132, column: 13, scope: !5138)
!5210 = !DILocation(line: 135, column: 9, scope: !5139)
!5211 = !DILocation(line: 67, column: 25, scope: !5140)
!5212 = distinct !{!5212, !5155, !5213, !1143}
!5213 = !DILocation(line: 136, column: 7, scope: !5141)
!5214 = !DILocation(line: 197, column: 7, scope: !5144)
!5215 = !DILocation(line: 199, column: 47, scope: !5143)
!5216 = !DILocation(line: 199, column: 16, scope: !5143)
!5217 = !DILocation(line: 0, scope: !5143)
!5218 = !DILocation(line: 201, column: 14, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5143, file: !978, line: 201, column: 11)
!5220 = !DILocation(line: 201, column: 11, scope: !5143)
!5221 = !DILocation(line: 204, column: 18, scope: !5143)
!5222 = !DILocation(line: 205, column: 14, scope: !5148)
!5223 = !DILocation(line: 205, column: 11, scope: !5143)
!5224 = !DILocation(line: 207, column: 29, scope: !5147)
!5225 = !DILocation(line: 0, scope: !5147)
!5226 = !DILocation(line: 208, column: 11, scope: !5147)
!5227 = !DILocation(line: 209, column: 17, scope: !5147)
!5228 = !DILocation(line: 210, column: 9, scope: !5147)
!5229 = !DILocalVariable(name: "filename", arg: 1, scope: !5230, file: !978, line: 30, type: !173)
!5230 = distinct !DISubprogram(name: "orig_fopen", scope: !978, file: !978, line: 30, type: !5088, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !5231)
!5231 = !{!5229, !5232}
!5232 = !DILocalVariable(name: "mode", arg: 2, scope: !5230, file: !978, line: 30, type: !173)
!5233 = !DILocation(line: 0, scope: !5230, inlinedAt: !5234)
!5234 = distinct !DILocation(line: 219, column: 10, scope: !5087)
!5235 = !DILocation(line: 32, column: 10, scope: !5230, inlinedAt: !5234)
!5236 = !DILocation(line: 219, column: 3, scope: !5087)
!5237 = !DILocation(line: 220, column: 1, scope: !5087)
!5238 = !DISubprogram(name: "open", scope: !2410, file: !2410, line: 181, type: !5239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!5239 = !DISubroutineType(types: !5240)
!5240 = !{!118, !173, !118, null}
!5241 = !DISubprogram(name: "fdopen", scope: !1091, file: !1091, line: 293, type: !5242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!5242 = !DISubroutineType(types: !5243)
!5243 = !{!5090, !118, !173}
!5244 = !DISubprogram(name: "close", scope: !2275, file: !2275, line: 358, type: !1532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!5245 = !DISubprogram(name: "fopen", scope: !1091, file: !1091, line: 258, type: !5246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!5246 = !DISubroutineType(types: !5247)
!5247 = !{!5090, !1086, !1086}
!5248 = distinct !DISubprogram(name: "close_stream", scope: !980, file: !980, line: 55, type: !5249, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !979, retainedNodes: !5285)
!5249 = !DISubroutineType(types: !5250)
!5250 = !{!118, !5251}
!5251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5252, size: 64)
!5252 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !5253)
!5253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !5254)
!5254 = !{!5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284}
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5253, file: !269, line: 51, baseType: !118, size: 32)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5253, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5253, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5253, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5253, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5253, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5253, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5253, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5253, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5253, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5253, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5253, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5253, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5253, file: !269, line: 70, baseType: !5269, size: 64, offset: 832)
!5269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5253, size: 64)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5253, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5253, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5253, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5253, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5253, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5253, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5253, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5253, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5253, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5253, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5253, file: !269, line: 93, baseType: !5269, size: 64, offset: 1344)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5253, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5253, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5253, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5253, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!5285 = !{!5286, !5287, !5289, !5290}
!5286 = !DILocalVariable(name: "stream", arg: 1, scope: !5248, file: !980, line: 55, type: !5251)
!5287 = !DILocalVariable(name: "some_pending", scope: !5248, file: !980, line: 57, type: !5288)
!5288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!5289 = !DILocalVariable(name: "prev_fail", scope: !5248, file: !980, line: 58, type: !5288)
!5290 = !DILocalVariable(name: "fclose_fail", scope: !5248, file: !980, line: 59, type: !5288)
!5291 = !DILocation(line: 0, scope: !5248)
!5292 = !DILocation(line: 57, column: 30, scope: !5248)
!5293 = !DILocalVariable(name: "__stream", arg: 1, scope: !5294, file: !1443, line: 135, type: !5251)
!5294 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1443, file: !1443, line: 135, type: !5249, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !979, retainedNodes: !5295)
!5295 = !{!5293}
!5296 = !DILocation(line: 0, scope: !5294, inlinedAt: !5297)
!5297 = distinct !DILocation(line: 58, column: 27, scope: !5248)
!5298 = !DILocation(line: 137, column: 10, scope: !5294, inlinedAt: !5297)
!5299 = !DILocation(line: 58, column: 43, scope: !5248)
!5300 = !DILocation(line: 59, column: 29, scope: !5248)
!5301 = !DILocation(line: 59, column: 45, scope: !5248)
!5302 = !DILocation(line: 69, column: 17, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5248, file: !980, line: 69, column: 7)
!5304 = !DILocation(line: 57, column: 50, scope: !5248)
!5305 = !DILocation(line: 69, column: 33, scope: !5303)
!5306 = !DILocation(line: 69, column: 53, scope: !5303)
!5307 = !DILocation(line: 69, column: 59, scope: !5303)
!5308 = !DILocation(line: 69, column: 7, scope: !5248)
!5309 = !DILocation(line: 71, column: 11, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5303, file: !980, line: 70, column: 5)
!5311 = !DILocation(line: 72, column: 9, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5310, file: !980, line: 71, column: 11)
!5313 = !DILocation(line: 72, column: 15, scope: !5312)
!5314 = !DILocation(line: 77, column: 1, scope: !5248)
!5315 = !DISubprogram(name: "__fpending", scope: !2618, file: !2618, line: 75, type: !5316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!5316 = !DISubroutineType(types: !5317)
!5317 = !{!170, !5251}
!5318 = distinct !DISubprogram(name: "freadptr", scope: !982, file: !982, line: 30, type: !5319, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !981, retainedNodes: !5355)
!5319 = !DISubroutineType(types: !5320)
!5320 = !{!173, !5321, !951}
!5321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5322, size: 64)
!5322 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !5323)
!5323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !5324)
!5324 = !{!5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5340, !5341, !5342, !5343, !5344, !5345, !5346, !5347, !5348, !5349, !5350, !5351, !5352, !5353, !5354}
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5323, file: !269, line: 51, baseType: !118, size: 32)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5323, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5323, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5323, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5323, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5323, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5323, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5323, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5323, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5323, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5323, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5323, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5323, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5323, file: !269, line: 70, baseType: !5339, size: 64, offset: 832)
!5339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5323, size: 64)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5323, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5323, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5323, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5323, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5323, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5323, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5323, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5323, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5323, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5323, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5323, file: !269, line: 93, baseType: !5339, size: 64, offset: 1344)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5323, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5323, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5323, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5323, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!5355 = !{!5356, !5357, !5358}
!5356 = !DILocalVariable(name: "fp", arg: 1, scope: !5318, file: !982, line: 30, type: !5321)
!5357 = !DILocalVariable(name: "sizep", arg: 2, scope: !5318, file: !982, line: 30, type: !951)
!5358 = !DILocalVariable(name: "size", scope: !5318, file: !982, line: 32, type: !170)
!5359 = !DILocation(line: 0, scope: !5318)
!5360 = !DILocation(line: 37, column: 11, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5318, file: !982, line: 37, column: 7)
!5362 = !DILocation(line: 37, column: 31, scope: !5361)
!5363 = !DILocation(line: 37, column: 25, scope: !5361)
!5364 = !DILocation(line: 37, column: 7, scope: !5318)
!5365 = !DILocation(line: 39, column: 14, scope: !5318)
!5366 = !DILocation(line: 39, column: 33, scope: !5318)
!5367 = !DILocation(line: 40, column: 12, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5318, file: !982, line: 40, column: 7)
!5369 = !DILocation(line: 40, column: 7, scope: !5318)
!5370 = !DILocation(line: 39, column: 27, scope: !5318)
!5371 = !DILocation(line: 42, column: 10, scope: !5318)
!5372 = !DILocation(line: 43, column: 3, scope: !5318)
!5373 = !DILocation(line: 125, column: 1, scope: !5318)
!5374 = distinct !DISubprogram(name: "freadseek", scope: !985, file: !985, line: 74, type: !5375, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !984, retainedNodes: !5411)
!5375 = !DISubroutineType(types: !5376)
!5376 = !{!118, !5377, !170}
!5377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5378, size: 64)
!5378 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !5379)
!5379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !5380)
!5380 = !{!5381, !5382, !5383, !5384, !5385, !5386, !5387, !5388, !5389, !5390, !5391, !5392, !5393, !5394, !5396, !5397, !5398, !5399, !5400, !5401, !5402, !5403, !5404, !5405, !5406, !5407, !5408, !5409, !5410}
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5379, file: !269, line: 51, baseType: !118, size: 32)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5379, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5379, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5379, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5379, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5379, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5379, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5379, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5379, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5379, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5379, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5379, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5379, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5379, file: !269, line: 70, baseType: !5395, size: 64, offset: 832)
!5395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5379, size: 64)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5379, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5379, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5379, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5379, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5379, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5379, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5379, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5379, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5379, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5379, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5379, file: !269, line: 93, baseType: !5395, size: 64, offset: 1344)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5379, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5379, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5379, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5379, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!5411 = !{!5412, !5413, !5414, !5415, !5417, !5420, !5421, !5428, !5429}
!5412 = !DILocalVariable(name: "fp", arg: 1, scope: !5374, file: !985, line: 74, type: !5377)
!5413 = !DILocalVariable(name: "offset", arg: 2, scope: !5374, file: !985, line: 74, type: !170)
!5414 = !DILocalVariable(name: "total_buffered", scope: !5374, file: !985, line: 81, type: !170)
!5415 = !DILocalVariable(name: "buffered", scope: !5416, file: !985, line: 86, type: !170)
!5416 = distinct !DILexicalBlock(scope: !5374, file: !985, line: 85, column: 5)
!5417 = !DILocalVariable(name: "increment", scope: !5418, file: !985, line: 90, type: !170)
!5418 = distinct !DILexicalBlock(scope: !5419, file: !985, line: 89, column: 9)
!5419 = distinct !DILexicalBlock(scope: !5416, file: !985, line: 88, column: 11)
!5420 = !DILocalVariable(name: "fd", scope: !5374, file: !985, line: 111, type: !118)
!5421 = !DILocalVariable(name: "buf", scope: !5422, file: !985, line: 123, type: !5425)
!5422 = distinct !DILexicalBlock(scope: !5423, file: !985, line: 122, column: 9)
!5423 = distinct !DILexicalBlock(scope: !5424, file: !985, line: 118, column: 5)
!5424 = distinct !DILexicalBlock(scope: !5374, file: !985, line: 112, column: 7)
!5425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !5426)
!5426 = !{!5427}
!5427 = !DISubrange(count: 4096)
!5428 = !DILocalVariable(name: "count", scope: !5422, file: !985, line: 124, type: !170)
!5429 = !DILabel(scope: !5374, name: "eof", file: !985, line: 134)
!5430 = !DILocation(line: 0, scope: !5374)
!5431 = !DILocation(line: 76, column: 14, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5374, file: !985, line: 76, column: 7)
!5433 = !DILocation(line: 76, column: 7, scope: !5374)
!5434 = !DILocation(line: 81, column: 27, scope: !5374)
!5435 = !DILocation(line: 84, column: 3, scope: !5374)
!5436 = !DILocation(line: 81, column: 10, scope: !5374)
!5437 = !DILocation(line: 84, column: 25, scope: !5374)
!5438 = !DILocation(line: 86, column: 7, scope: !5416)
!5439 = !DILocation(line: 0, scope: !5416)
!5440 = !DILocation(line: 88, column: 11, scope: !5419)
!5441 = !DILocation(line: 88, column: 36, scope: !5419)
!5442 = !DILocation(line: 88, column: 44, scope: !5419)
!5443 = !DILocation(line: 90, column: 31, scope: !5418)
!5444 = !DILocation(line: 0, scope: !5418)
!5445 = !DILocalVariable(name: "fp", arg: 1, scope: !5446, file: !985, line: 34, type: !5377)
!5446 = distinct !DISubprogram(name: "freadptrinc", scope: !985, file: !985, line: 34, type: !5447, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !984, retainedNodes: !5449)
!5447 = !DISubroutineType(types: !5448)
!5448 = !{null, !5377, !170}
!5449 = !{!5445, !5450}
!5450 = !DILocalVariable(name: "increment", arg: 2, scope: !5446, file: !985, line: 34, type: !170)
!5451 = !DILocation(line: 0, scope: !5446, inlinedAt: !5452)
!5452 = distinct !DILocation(line: 92, column: 11, scope: !5418)
!5453 = !DILocation(line: 41, column: 20, scope: !5446, inlinedAt: !5452)
!5454 = !DILocation(line: 93, column: 18, scope: !5418)
!5455 = !DILocation(line: 94, column: 22, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5418, file: !985, line: 94, column: 15)
!5457 = !DILocation(line: 94, column: 15, scope: !5418)
!5458 = !DILocation(line: 96, column: 26, scope: !5418)
!5459 = !DILocation(line: 97, column: 30, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5418, file: !985, line: 97, column: 15)
!5461 = !DILocation(line: 102, column: 11, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5416, file: !985, line: 102, column: 11)
!5463 = !DILocation(line: 102, column: 22, scope: !5462)
!5464 = !DILocation(line: 102, column: 11, scope: !5416)
!5465 = !DILocation(line: 108, column: 5, scope: !5374)
!5466 = !DILocation(line: 104, column: 13, scope: !5416)
!5467 = !DILocation(line: 105, column: 18, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5416, file: !985, line: 105, column: 11)
!5469 = !DILocation(line: 105, column: 11, scope: !5416)
!5470 = !DILocation(line: 107, column: 21, scope: !5416)
!5471 = distinct !{!5471, !5435, !5465, !1143}
!5472 = !DILocation(line: 111, column: 12, scope: !5374)
!5473 = !DILocation(line: 112, column: 10, scope: !5424)
!5474 = !DILocation(line: 112, column: 15, scope: !5424)
!5475 = !DILocation(line: 121, column: 7, scope: !5423)
!5476 = !DILocation(line: 112, column: 18, scope: !5424)
!5477 = !DILocation(line: 112, column: 42, scope: !5424)
!5478 = !DILocation(line: 112, column: 7, scope: !5374)
!5479 = !DILocation(line: 115, column: 14, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5424, file: !985, line: 113, column: 5)
!5481 = !DILocation(line: 115, column: 7, scope: !5480)
!5482 = !DILocation(line: 123, column: 11, scope: !5422)
!5483 = !DILocation(line: 123, column: 16, scope: !5422)
!5484 = !DILocation(line: 124, column: 27, scope: !5422)
!5485 = !DILocation(line: 0, scope: !5422)
!5486 = !DILocalVariable(name: "__ptr", arg: 1, scope: !5487, file: !1082, line: 288, type: !2988)
!5487 = distinct !DISubprogram(name: "fread", scope: !1082, file: !1082, line: 288, type: !5488, scopeLine: 290, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !984, retainedNodes: !5491)
!5488 = !DISubroutineType(types: !5489)
!5489 = !{!172, !2988, !170, !170, !5490}
!5490 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5377)
!5491 = !{!5486, !5492, !5493, !5494, !5495}
!5492 = !DILocalVariable(name: "__size", arg: 2, scope: !5487, file: !1082, line: 288, type: !170)
!5493 = !DILocalVariable(name: "__n", arg: 3, scope: !5487, file: !1082, line: 288, type: !170)
!5494 = !DILocalVariable(name: "__stream", arg: 4, scope: !5487, file: !1082, line: 289, type: !5490)
!5495 = !DILocalVariable(name: "sz", scope: !5487, file: !1082, line: 291, type: !170)
!5496 = !DILocation(line: 0, scope: !5487, inlinedAt: !5497)
!5497 = distinct !DILocation(line: 125, column: 15, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5422, file: !985, line: 125, column: 15)
!5499 = !DILocation(line: 293, column: 12, scope: !5500, inlinedAt: !5497)
!5500 = distinct !DILexicalBlock(scope: !5487, file: !1082, line: 292, column: 7)
!5501 = !DILocation(line: 125, column: 41, scope: !5498)
!5502 = !DILocation(line: 128, column: 9, scope: !5423)
!5503 = !DILocation(line: 125, column: 15, scope: !5422)
!5504 = !DILocation(line: 129, column: 21, scope: !5423)
!5505 = !DILocation(line: 128, column: 9, scope: !5422)
!5506 = distinct !{!5506, !5475, !5507, !1143}
!5507 = !DILocation(line: 129, column: 24, scope: !5423)
!5508 = !DILocation(line: 134, column: 2, scope: !5374)
!5509 = !DILocation(line: 136, column: 7, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5374, file: !985, line: 136, column: 7)
!5511 = !DILocation(line: 0, scope: !5510)
!5512 = !DILocation(line: 141, column: 1, scope: !5374)
!5513 = !DISubprogram(name: "fgetc", scope: !1091, file: !1091, line: 513, type: !5514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!5514 = !DISubroutineType(types: !5515)
!5515 = !{!118, !5377}
!5516 = !DISubprogram(name: "__fread_alias", linkageName: "fread", scope: !1082, file: !1082, line: 275, type: !5517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!5517 = !DISubroutineType(types: !5518)
!5518 = !{!170, !2988, !170, !170, !5490}
!5519 = !DISubprogram(name: "ferror", scope: !1091, file: !1091, line: 790, type: !5514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!5520 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !896, file: !896, line: 100, type: !5521, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !899, retainedNodes: !5524)
!5521 = !DISubroutineType(types: !5522)
!5522 = !{!170, !3189, !173, !170, !5523}
!5523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!5524 = !{!5525, !5526, !5527, !5528, !5529}
!5525 = !DILocalVariable(name: "pwc", arg: 1, scope: !5520, file: !896, line: 100, type: !3189)
!5526 = !DILocalVariable(name: "s", arg: 2, scope: !5520, file: !896, line: 100, type: !173)
!5527 = !DILocalVariable(name: "n", arg: 3, scope: !5520, file: !896, line: 100, type: !170)
!5528 = !DILocalVariable(name: "ps", arg: 4, scope: !5520, file: !896, line: 100, type: !5523)
!5529 = !DILocalVariable(name: "ret", scope: !5520, file: !896, line: 130, type: !170)
!5530 = !DILocation(line: 0, scope: !5520)
!5531 = !DILocation(line: 105, column: 9, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5520, file: !896, line: 105, column: 7)
!5533 = !DILocation(line: 105, column: 7, scope: !5520)
!5534 = !DILocation(line: 117, column: 10, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5520, file: !896, line: 117, column: 7)
!5536 = !DILocation(line: 117, column: 7, scope: !5520)
!5537 = !DILocation(line: 130, column: 16, scope: !5520)
!5538 = !DILocation(line: 135, column: 11, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5520, file: !896, line: 135, column: 7)
!5540 = !DILocation(line: 135, column: 25, scope: !5539)
!5541 = !DILocation(line: 135, column: 30, scope: !5539)
!5542 = !DILocation(line: 135, column: 7, scope: !5520)
!5543 = !DILocalVariable(name: "ps", arg: 1, scope: !5544, file: !3163, line: 1135, type: !5523)
!5544 = distinct !DISubprogram(name: "mbszero", scope: !3163, file: !3163, line: 1135, type: !5545, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !899, retainedNodes: !5547)
!5545 = !DISubroutineType(types: !5546)
!5546 = !{null, !5523}
!5547 = !{!5543}
!5548 = !DILocation(line: 0, scope: !5544, inlinedAt: !5549)
!5549 = distinct !DILocation(line: 137, column: 5, scope: !5539)
!5550 = !DILocalVariable(name: "__dest", arg: 1, scope: !5551, file: !2095, line: 57, type: !168)
!5551 = distinct !DISubprogram(name: "memset", scope: !2095, file: !2095, line: 57, type: !3172, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !899, retainedNodes: !5552)
!5552 = !{!5550, !5553, !5554}
!5553 = !DILocalVariable(name: "__ch", arg: 2, scope: !5551, file: !2095, line: 57, type: !118)
!5554 = !DILocalVariable(name: "__len", arg: 3, scope: !5551, file: !2095, line: 57, type: !170)
!5555 = !DILocation(line: 0, scope: !5551, inlinedAt: !5556)
!5556 = distinct !DILocation(line: 1137, column: 3, scope: !5544, inlinedAt: !5549)
!5557 = !DILocation(line: 59, column: 10, scope: !5551, inlinedAt: !5556)
!5558 = !DILocation(line: 137, column: 5, scope: !5539)
!5559 = !DILocation(line: 138, column: 11, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5520, file: !896, line: 138, column: 7)
!5561 = !DILocation(line: 138, column: 7, scope: !5520)
!5562 = !DILocation(line: 139, column: 5, scope: !5560)
!5563 = !DILocation(line: 143, column: 26, scope: !5564)
!5564 = distinct !DILexicalBlock(scope: !5520, file: !896, line: 143, column: 7)
!5565 = !DILocation(line: 143, column: 41, scope: !5564)
!5566 = !DILocation(line: 143, column: 7, scope: !5520)
!5567 = !DILocation(line: 145, column: 15, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5569, file: !896, line: 145, column: 11)
!5569 = distinct !DILexicalBlock(scope: !5564, file: !896, line: 144, column: 5)
!5570 = !DILocation(line: 145, column: 11, scope: !5569)
!5571 = !DILocation(line: 146, column: 32, scope: !5568)
!5572 = !DILocation(line: 146, column: 16, scope: !5568)
!5573 = !DILocation(line: 146, column: 14, scope: !5568)
!5574 = !DILocation(line: 146, column: 9, scope: !5568)
!5575 = !DILocation(line: 286, column: 1, scope: !5520)
!5576 = !DISubprogram(name: "mbsinit", scope: !5577, file: !5577, line: 293, type: !5578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1027)
!5577 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5578 = !DISubroutineType(types: !5579)
!5579 = !{!118, !5580}
!5580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5581, size: 64)
!5581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !902)
!5582 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !988, file: !988, line: 27, type: !4654, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !987, retainedNodes: !5583)
!5583 = !{!5584, !5585, !5586, !5587}
!5584 = !DILocalVariable(name: "ptr", arg: 1, scope: !5582, file: !988, line: 27, type: !168)
!5585 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5582, file: !988, line: 27, type: !170)
!5586 = !DILocalVariable(name: "size", arg: 3, scope: !5582, file: !988, line: 27, type: !170)
!5587 = !DILocalVariable(name: "nbytes", scope: !5582, file: !988, line: 29, type: !170)
!5588 = !DILocation(line: 0, scope: !5582)
!5589 = !DILocation(line: 30, column: 7, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5582, file: !988, line: 30, column: 7)
!5591 = !DILocalVariable(name: "ptr", arg: 1, scope: !5592, file: !2962, line: 2057, type: !168)
!5592 = distinct !DISubprogram(name: "rpl_realloc", scope: !2962, file: !2962, line: 2057, type: !2963, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !987, retainedNodes: !5593)
!5593 = !{!5591, !5594}
!5594 = !DILocalVariable(name: "size", arg: 2, scope: !5592, file: !2962, line: 2057, type: !170)
!5595 = !DILocation(line: 0, scope: !5592, inlinedAt: !5596)
!5596 = distinct !DILocation(line: 37, column: 10, scope: !5582)
!5597 = !DILocation(line: 2059, column: 24, scope: !5592, inlinedAt: !5596)
!5598 = !DILocation(line: 2059, column: 10, scope: !5592, inlinedAt: !5596)
!5599 = !DILocation(line: 37, column: 3, scope: !5582)
!5600 = !DILocation(line: 32, column: 7, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5590, file: !988, line: 31, column: 5)
!5602 = !DILocation(line: 32, column: 13, scope: !5601)
!5603 = !DILocation(line: 33, column: 7, scope: !5601)
!5604 = !DILocation(line: 38, column: 1, scope: !5582)
!5605 = distinct !DISubprogram(name: "freadahead", scope: !991, file: !991, line: 34, type: !5606, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !990, retainedNodes: !5642)
!5606 = !DISubroutineType(types: !5607)
!5607 = !{!170, !5608}
!5608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5609, size: 64)
!5609 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !5610)
!5610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !5611)
!5611 = !{!5612, !5613, !5614, !5615, !5616, !5617, !5618, !5619, !5620, !5621, !5622, !5623, !5624, !5625, !5627, !5628, !5629, !5630, !5631, !5632, !5633, !5634, !5635, !5636, !5637, !5638, !5639, !5640, !5641}
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5610, file: !269, line: 51, baseType: !118, size: 32)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5610, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5610, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5610, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5610, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5610, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5610, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5610, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5610, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5610, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5610, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5610, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5610, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5610, file: !269, line: 70, baseType: !5626, size: 64, offset: 832)
!5626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5610, size: 64)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5610, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5610, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5610, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5610, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5610, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5610, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5610, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5610, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5610, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5610, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5610, file: !269, line: 93, baseType: !5626, size: 64, offset: 1344)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5610, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5610, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5610, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5610, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!5642 = !{!5643}
!5643 = !DILocalVariable(name: "fp", arg: 1, scope: !5605, file: !991, line: 34, type: !5608)
!5644 = !DILocation(line: 0, scope: !5605)
!5645 = !DILocation(line: 38, column: 11, scope: !5646)
!5646 = distinct !DILexicalBlock(scope: !5605, file: !991, line: 38, column: 7)
!5647 = !DILocation(line: 38, column: 31, scope: !5646)
!5648 = !DILocation(line: 38, column: 25, scope: !5646)
!5649 = !DILocation(line: 38, column: 7, scope: !5605)
!5650 = !DILocation(line: 40, column: 15, scope: !5605)
!5651 = !DILocation(line: 40, column: 34, scope: !5605)
!5652 = !DILocation(line: 40, column: 28, scope: !5605)
!5653 = !DILocation(line: 41, column: 17, scope: !5605)
!5654 = !DILocation(line: 41, column: 24, scope: !5605)
!5655 = !DILocation(line: 41, column: 13, scope: !5605)
!5656 = !DILocation(line: 41, column: 46, scope: !5605)
!5657 = !{!1451, !1019, i64 88}
!5658 = !DILocation(line: 41, column: 65, scope: !5605)
!5659 = !DILocation(line: 41, column: 59, scope: !5605)
!5660 = !DILocation(line: 41, column: 10, scope: !5605)
!5661 = !DILocation(line: 40, column: 3, scope: !5605)
!5662 = !DILocation(line: 103, column: 1, scope: !5605)
!5663 = distinct !DISubprogram(name: "hard_locale", scope: !914, file: !914, line: 28, type: !2032, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !992, retainedNodes: !5664)
!5664 = !{!5665, !5666}
!5665 = !DILocalVariable(name: "category", arg: 1, scope: !5663, file: !914, line: 28, type: !118)
!5666 = !DILocalVariable(name: "locale", scope: !5663, file: !914, line: 30, type: !5667)
!5667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5668)
!5668 = !{!5669}
!5669 = !DISubrange(count: 257)
!5670 = !DILocation(line: 0, scope: !5663)
!5671 = !DILocation(line: 30, column: 3, scope: !5663)
!5672 = !DILocation(line: 30, column: 8, scope: !5663)
!5673 = !DILocation(line: 32, column: 7, scope: !5674)
!5674 = distinct !DILexicalBlock(scope: !5663, file: !914, line: 32, column: 7)
!5675 = !DILocation(line: 32, column: 7, scope: !5663)
!5676 = !DILocalVariable(name: "__s1", arg: 1, scope: !5677, file: !1109, line: 1359, type: !173)
!5677 = distinct !DISubprogram(name: "streq", scope: !1109, file: !1109, line: 1359, type: !1110, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !992, retainedNodes: !5678)
!5678 = !{!5676, !5679}
!5679 = !DILocalVariable(name: "__s2", arg: 2, scope: !5677, file: !1109, line: 1359, type: !173)
!5680 = !DILocation(line: 0, scope: !5677, inlinedAt: !5681)
!5681 = distinct !DILocation(line: 35, column: 9, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5663, file: !914, line: 35, column: 7)
!5683 = !DILocation(line: 1361, column: 11, scope: !5677, inlinedAt: !5681)
!5684 = !DILocation(line: 35, column: 29, scope: !5682)
!5685 = !DILocation(line: 0, scope: !5677, inlinedAt: !5686)
!5686 = distinct !DILocation(line: 35, column: 32, scope: !5682)
!5687 = !DILocation(line: 1361, column: 11, scope: !5677, inlinedAt: !5686)
!5688 = !DILocation(line: 1361, column: 10, scope: !5677, inlinedAt: !5686)
!5689 = !DILocation(line: 35, column: 7, scope: !5663)
!5690 = !DILocation(line: 46, column: 3, scope: !5663)
!5691 = !DILocation(line: 47, column: 1, scope: !5663)
!5692 = distinct !DISubprogram(name: "setlocale_null_r", scope: !997, file: !997, line: 154, type: !5693, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !996, retainedNodes: !5695)
!5693 = !DISubroutineType(types: !5694)
!5694 = !{!118, !118, !167, !170}
!5695 = !{!5696, !5697, !5698}
!5696 = !DILocalVariable(name: "category", arg: 1, scope: !5692, file: !997, line: 154, type: !118)
!5697 = !DILocalVariable(name: "buf", arg: 2, scope: !5692, file: !997, line: 154, type: !167)
!5698 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5692, file: !997, line: 154, type: !170)
!5699 = !DILocation(line: 0, scope: !5692)
!5700 = !DILocation(line: 159, column: 10, scope: !5692)
!5701 = !DILocation(line: 159, column: 3, scope: !5692)
!5702 = distinct !DISubprogram(name: "setlocale_null", scope: !997, file: !997, line: 186, type: !5703, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !996, retainedNodes: !5705)
!5703 = !DISubroutineType(types: !5704)
!5704 = !{!173, !118}
!5705 = !{!5706}
!5706 = !DILocalVariable(name: "category", arg: 1, scope: !5702, file: !997, line: 186, type: !118)
!5707 = !DILocation(line: 0, scope: !5702)
!5708 = !DILocation(line: 189, column: 10, scope: !5702)
!5709 = !DILocation(line: 189, column: 3, scope: !5702)
!5710 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !999, file: !999, line: 35, type: !5703, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !5711)
!5711 = !{!5712, !5713}
!5712 = !DILocalVariable(name: "category", arg: 1, scope: !5710, file: !999, line: 35, type: !118)
!5713 = !DILocalVariable(name: "result", scope: !5710, file: !999, line: 37, type: !173)
!5714 = !DILocation(line: 0, scope: !5710)
!5715 = !DILocation(line: 37, column: 24, scope: !5710)
!5716 = !DILocation(line: 62, column: 3, scope: !5710)
!5717 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !999, file: !999, line: 66, type: !5693, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !5718)
!5718 = !{!5719, !5720, !5721, !5722, !5723}
!5719 = !DILocalVariable(name: "category", arg: 1, scope: !5717, file: !999, line: 66, type: !118)
!5720 = !DILocalVariable(name: "buf", arg: 2, scope: !5717, file: !999, line: 66, type: !167)
!5721 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5717, file: !999, line: 66, type: !170)
!5722 = !DILocalVariable(name: "result", scope: !5717, file: !999, line: 111, type: !173)
!5723 = !DILocalVariable(name: "length", scope: !5724, file: !999, line: 125, type: !170)
!5724 = distinct !DILexicalBlock(scope: !5725, file: !999, line: 124, column: 5)
!5725 = distinct !DILexicalBlock(scope: !5717, file: !999, line: 113, column: 7)
!5726 = !DILocation(line: 0, scope: !5717)
!5727 = !DILocation(line: 0, scope: !5710, inlinedAt: !5728)
!5728 = distinct !DILocation(line: 111, column: 24, scope: !5717)
!5729 = !DILocation(line: 37, column: 24, scope: !5710, inlinedAt: !5728)
!5730 = !DILocation(line: 113, column: 14, scope: !5725)
!5731 = !DILocation(line: 113, column: 7, scope: !5717)
!5732 = !DILocation(line: 116, column: 19, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5734, file: !999, line: 116, column: 11)
!5734 = distinct !DILexicalBlock(scope: !5725, file: !999, line: 114, column: 5)
!5735 = !DILocation(line: 116, column: 11, scope: !5734)
!5736 = !DILocation(line: 120, column: 16, scope: !5733)
!5737 = !DILocation(line: 120, column: 9, scope: !5733)
!5738 = !DILocation(line: 125, column: 23, scope: !5724)
!5739 = !DILocation(line: 0, scope: !5724)
!5740 = !DILocation(line: 126, column: 18, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5724, file: !999, line: 126, column: 11)
!5742 = !DILocation(line: 126, column: 11, scope: !5724)
!5743 = !DILocation(line: 128, column: 39, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5741, file: !999, line: 127, column: 9)
!5745 = !DILocalVariable(name: "__dest", arg: 1, scope: !5746, file: !2095, line: 26, type: !2988)
!5746 = distinct !DISubprogram(name: "memcpy", scope: !2095, file: !2095, line: 26, type: !2986, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !5747)
!5747 = !{!5745, !5748, !5749}
!5748 = !DILocalVariable(name: "__src", arg: 2, scope: !5746, file: !2095, line: 26, type: !1244)
!5749 = !DILocalVariable(name: "__len", arg: 3, scope: !5746, file: !2095, line: 26, type: !170)
!5750 = !DILocation(line: 0, scope: !5746, inlinedAt: !5751)
!5751 = distinct !DILocation(line: 128, column: 11, scope: !5744)
!5752 = !DILocation(line: 29, column: 10, scope: !5746, inlinedAt: !5751)
!5753 = !DILocation(line: 129, column: 11, scope: !5744)
!5754 = !DILocation(line: 133, column: 23, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5756, file: !999, line: 133, column: 15)
!5756 = distinct !DILexicalBlock(scope: !5741, file: !999, line: 132, column: 9)
!5757 = !DILocation(line: 133, column: 15, scope: !5756)
!5758 = !DILocation(line: 138, column: 44, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5755, file: !999, line: 134, column: 13)
!5760 = !DILocation(line: 0, scope: !5746, inlinedAt: !5761)
!5761 = distinct !DILocation(line: 138, column: 15, scope: !5759)
!5762 = !DILocation(line: 29, column: 10, scope: !5746, inlinedAt: !5761)
!5763 = !DILocation(line: 139, column: 15, scope: !5759)
!5764 = !DILocation(line: 139, column: 32, scope: !5759)
!5765 = !DILocation(line: 140, column: 13, scope: !5759)
!5766 = !DILocation(line: 0, scope: !5725)
!5767 = !DILocation(line: 145, column: 1, scope: !5717)
