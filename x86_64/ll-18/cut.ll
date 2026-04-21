; ModuleID = 'src/cut.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
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
@n_frp_allocated = internal global i64 0, align 8, !dbg !567
@.str.60 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !592
@Version = dso_local local_unnamed_addr global ptr @.str.60, align 8, !dbg !595
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !599
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !612
@.str.83 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !604
@.str.1.84 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !606
@.str.2.85 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !608
@.str.3.86 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !610
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !614
@stderr = external local_unnamed_addr global ptr, align 8
@.str.87 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !620
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !651
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !622
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !740
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !754
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !792
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !799
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !756
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !801
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !744
@.str.10.134 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !761
@.str.11.132 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !763
@.str.12.135 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !765
@.str.13.133 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !767
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !769
@.str.142 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !805
@.str.1.143 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !808
@.str.2.144 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !810
@.str.3.145 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !812
@.str.4.146 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !814
@.str.5.147 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !816
@.str.6.148 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !821
@.str.7.149 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !823
@.str.8.150 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !825
@.str.9.151 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !827
@.str.10.152 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !832
@.str.11.153 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !834
@.str.12.154 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !839
@.str.13.155 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !841
@.str.14.156 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !846
@.str.15.157 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !851
@.str.16.158 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !856
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.163 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !861
@.str.18.164 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !863
@.str.19.165 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !865
@.str.20.166 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !867
@.str.21.167 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !869
@.str.22.168 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !871
@.str.23.169 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !873
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !875
@exit_failure = dso_local global i32 1, align 4, !dbg !883
@.str.186 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !889
@.str.1.184 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !892
@.str.2.185 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !894
@.str.197 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !896
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !899
@.str.1.204 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !914

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1013 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1017, metadata !DIExpression()), !dbg !1018
  %2 = icmp eq i32 %0, 0, !dbg !1019
  br i1 %2, label %8, label %3, !dbg !1021

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1022, !tbaa !1024
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #42, !dbg !1022
  %6 = load ptr, ptr @program_name, align 8, !dbg !1022, !tbaa !1024
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #42, !dbg !1022
  br label %52, !dbg !1022

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #42, !dbg !1028
  %10 = load ptr, ptr @program_name, align 8, !dbg !1028, !tbaa !1024
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #42, !dbg !1028
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #42, !dbg !1030
  %13 = load ptr, ptr @stdout, align 8, !dbg !1030, !tbaa !1024
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1030
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #42, !dbg !1031
  %16 = load ptr, ptr @stdout, align 8, !dbg !1031, !tbaa !1024
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !1031
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #42, !dbg !1034
  %19 = load ptr, ptr @stdout, align 8, !dbg !1034, !tbaa !1024
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !1034
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #42, !dbg !1037
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1037
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #42, !dbg !1038
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1038
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #42, !dbg !1039
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1039
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #42, !dbg !1040
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1040
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #42, !dbg !1041
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !1041
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #42, !dbg !1042
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !1042
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #42, !dbg !1043
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !1043
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #42, !dbg !1044
  tail call fastcc void @oputs_(ptr noundef %28), !dbg !1044
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #42, !dbg !1045
  tail call fastcc void @oputs_(ptr noundef %29), !dbg !1045
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #42, !dbg !1046
  tail call fastcc void @oputs_(ptr noundef %30), !dbg !1046
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #42, !dbg !1047
  tail call fastcc void @oputs_(ptr noundef %31), !dbg !1047
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #42, !dbg !1048
  %33 = load ptr, ptr @stdout, align 8, !dbg !1048, !tbaa !1024
  %34 = tail call i32 @fputs_unlocked(ptr noundef %32, ptr noundef %33), !dbg !1048
  %35 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #42, !dbg !1049
  %36 = load ptr, ptr @stdout, align 8, !dbg !1049, !tbaa !1024
  %37 = tail call i32 @fputs_unlocked(ptr noundef %35, ptr noundef %36), !dbg !1049
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1050, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata !1069, metadata !1063, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata ptr poison, metadata !1062, metadata !DIExpression()), !dbg !1067
  tail call void @emit_bug_reporting_address() #42, !dbg !1070
  %38 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #42, !dbg !1071
  call void @llvm.dbg.value(metadata ptr %38, metadata !1065, metadata !DIExpression()), !dbg !1067
  %39 = icmp eq ptr %38, null, !dbg !1072
  br i1 %39, label %47, label %40, !dbg !1074

40:                                               ; preds = %8
  %41 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(4) @.str.63, i64 noundef 3) #43, !dbg !1075
  %42 = icmp eq i32 %41, 0, !dbg !1075
  br i1 %42, label %47, label %43, !dbg !1076

43:                                               ; preds = %40
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #42, !dbg !1077
  %45 = load ptr, ptr @stdout, align 8, !dbg !1077, !tbaa !1024
  %46 = tail call i32 @fputs_unlocked(ptr noundef %44, ptr noundef %45), !dbg !1077
  br label %47, !dbg !1079

47:                                               ; preds = %8, %40, %43
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1062, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1066, metadata !DIExpression()), !dbg !1067
  %48 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #42, !dbg !1080
  %49 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %48, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.3) #42, !dbg !1080
  %50 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #42, !dbg !1081
  %51 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %50, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.67) #42, !dbg !1081
  br label %52

52:                                               ; preds = %47, %3
  tail call void @exit(i32 noundef %0) #44, !dbg !1082
  unreachable, !dbg !1082
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1083 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1087 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1093 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1096 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !243 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !247, metadata !DIExpression()), !dbg !1100
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !1100
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1101, !tbaa !1102
  %3 = icmp eq i32 %2, -1, !dbg !1104
  br i1 %3, label %4, label %16, !dbg !1105

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.33) #42, !dbg !1106
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !249, metadata !DIExpression()), !dbg !1107
  %6 = icmp eq ptr %5, null, !dbg !1108
  br i1 %6, label %14, label %7, !dbg !1109

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1110, !tbaa !1111
  %9 = icmp eq i8 %8, 0, !dbg !1110
  br i1 %9, label %14, label %10, !dbg !1112

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1113, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata ptr @.str.34, metadata !1119, metadata !DIExpression()), !dbg !1120
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.34) #43, !dbg !1122
  %12 = icmp eq i32 %11, 0, !dbg !1123
  %13 = zext i1 %12 to i32, !dbg !1112
  br label %14, !dbg !1112

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1124, !tbaa !1102
  br label %16, !dbg !1125

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1126
  %18 = icmp eq i32 %17, 0, !dbg !1126
  br i1 %18, label %22, label %19, !dbg !1128

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1129, !tbaa !1024
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1129
  br label %124, !dbg !1131

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !252, metadata !DIExpression()), !dbg !1100
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.35) #43, !dbg !1132
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1133
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !253, metadata !DIExpression()), !dbg !1100
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #43, !dbg !1134
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !254, metadata !DIExpression()), !dbg !1100
  %26 = icmp eq ptr %25, null, !dbg !1135
  br i1 %26, label %54, label %27, !dbg !1136

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1137
  br i1 %28, label %54, label %29, !dbg !1138

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !255, metadata !DIExpression()), !dbg !1139
  tail call void @llvm.dbg.value(metadata i64 0, metadata !259, metadata !DIExpression()), !dbg !1139
  %30 = icmp ult ptr %24, %25, !dbg !1140
  br i1 %30, label %31, label %54, !dbg !1141

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #45, !dbg !1100
  %33 = load ptr, ptr %32, align 8, !tbaa !1024
  br label %34, !dbg !1141

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !255, metadata !DIExpression()), !dbg !1139
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !259, metadata !DIExpression()), !dbg !1139
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1142
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !255, metadata !DIExpression()), !dbg !1139
  %38 = load i8, ptr %35, align 1, !dbg !1142, !tbaa !1111
  %39 = sext i8 %38 to i64, !dbg !1142
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1142
  %41 = load i16, ptr %40, align 2, !dbg !1142, !tbaa !1143
  %42 = freeze i16 %41, !dbg !1145
  %43 = lshr i16 %42, 13, !dbg !1145
  %44 = and i16 %43, 1, !dbg !1145
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1146
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !259, metadata !DIExpression()), !dbg !1139
  %47 = icmp ult ptr %37, %25, !dbg !1140
  %48 = icmp ult i64 %46, 2, !dbg !1147
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1147
  br i1 %49, label %34, label %50, !dbg !1141, !llvm.loop !1148

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1150
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1152
  %53 = zext i1 %51 to i8, !dbg !1152
  br label %54, !dbg !1152

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1100
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !1100
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !252, metadata !DIExpression()), !dbg !1100
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !254, metadata !DIExpression()), !dbg !1100
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.36) #43, !dbg !1153
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !260, metadata !DIExpression()), !dbg !1100
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1154
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !261, metadata !DIExpression()), !dbg !1100
  br label %59, !dbg !1155

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !1100
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !1100
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !252, metadata !DIExpression()), !dbg !1100
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !261, metadata !DIExpression()), !dbg !1100
  %62 = load i8, ptr %60, align 1, !dbg !1156, !tbaa !1111
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !1157

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1158
  %65 = load i8, ptr %64, align 1, !dbg !1161, !tbaa !1111
  %66 = icmp eq i8 %65, 45, !dbg !1162
  %67 = select i1 %66, i8 0, i8 %61, !dbg !1163
  br label %68, !dbg !1163

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !1100
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !252, metadata !DIExpression()), !dbg !1100
  %70 = tail call ptr @__ctype_b_loc() #45, !dbg !1164
  %71 = load ptr, ptr %70, align 8, !dbg !1164, !tbaa !1024
  %72 = sext i8 %62 to i64, !dbg !1164
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1164
  %74 = load i16, ptr %73, align 2, !dbg !1164, !tbaa !1143
  %75 = and i16 %74, 8192, !dbg !1164
  %76 = icmp eq i16 %75, 0, !dbg !1164
  br i1 %76, label %92, label %77, !dbg !1166

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1167
  br i1 %78, label %94, label %79, !dbg !1170

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1171
  %81 = load i8, ptr %80, align 1, !dbg !1171, !tbaa !1111
  %82 = sext i8 %81 to i64, !dbg !1171
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1171
  %84 = load i16, ptr %83, align 2, !dbg !1171, !tbaa !1143
  %85 = and i16 %84, 8192, !dbg !1171
  %86 = icmp eq i16 %85, 0, !dbg !1171
  br i1 %86, label %87, label %94, !dbg !1172

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !1173
  %89 = icmp ne i8 %88, 0, !dbg !1173
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !1175
  br i1 %91, label %92, label %94, !dbg !1175

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1176
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !261, metadata !DIExpression()), !dbg !1100
  br label %59, !dbg !1155, !llvm.loop !1177

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !1179
  %96 = load ptr, ptr @stdout, align 8, !dbg !1179, !tbaa !1024
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !1179
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1113, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata !1069, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1113, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata !1069, metadata !1119, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1113, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata !1069, metadata !1119, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1113, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata !1069, metadata !1119, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1113, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata !1069, metadata !1119, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1113, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata !1069, metadata !1119, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1113, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata !1069, metadata !1119, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1113, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata !1069, metadata !1119, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1113, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata !1069, metadata !1119, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1113, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata !1069, metadata !1119, metadata !DIExpression()), !dbg !1198
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !318, metadata !DIExpression()), !dbg !1100
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.50, i64 noundef 6) #43, !dbg !1200
  %99 = icmp eq i32 %98, 0, !dbg !1200
  br i1 %99, label %103, label %100, !dbg !1202

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.51, i64 noundef 9) #43, !dbg !1203
  %102 = icmp eq i32 %101, 0, !dbg !1203
  br i1 %102, label %103, label %106, !dbg !1204

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1205
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #42, !dbg !1205
  br label %109, !dbg !1207

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1208
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #42, !dbg !1208
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1210, !tbaa !1024
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.56, ptr noundef %110), !dbg !1210
  %112 = load ptr, ptr @stdout, align 8, !dbg !1211, !tbaa !1024
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.57, ptr noundef %112), !dbg !1211
  %114 = ptrtoint ptr %60 to i64, !dbg !1212
  %115 = sub i64 %114, %95, !dbg !1212
  %116 = load ptr, ptr @stdout, align 8, !dbg !1212, !tbaa !1024
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1212
  %118 = load ptr, ptr @stdout, align 8, !dbg !1213, !tbaa !1024
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.58, ptr noundef %118), !dbg !1213
  %120 = load ptr, ptr @stdout, align 8, !dbg !1214, !tbaa !1024
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.59, ptr noundef %120), !dbg !1214
  %122 = load ptr, ptr @stdout, align 8, !dbg !1215, !tbaa !1024
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1215
  br label %124, !dbg !1216

124:                                              ; preds = %109, %19
  ret void, !dbg !1216
}

; Function Attrs: nounwind
declare !dbg !1217 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1221 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1225 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1227 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1230 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1233 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1236 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1239 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1245 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1246 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1252 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1257, metadata !DIExpression()), !dbg !1268
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1258, metadata !DIExpression()), !dbg !1268
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1261, metadata !DIExpression()), !dbg !1268
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1262, metadata !DIExpression()), !dbg !1268
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1263, metadata !DIExpression()), !dbg !1268
  %3 = load ptr, ptr %1, align 8, !dbg !1269, !tbaa !1024
  tail call void @set_program_name(ptr noundef %3) #42, !dbg !1270
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.17) #42, !dbg !1271
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #42, !dbg !1272
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.18) #42, !dbg !1273
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #42, !dbg !1274
  br label %8, !dbg !1275

8:                                                ; preds = %36, %2
  %9 = phi i1 [ false, %36 ], [ true, %2 ]
  %10 = phi i8 [ %13, %36 ], [ 0, %2 ]
  %11 = phi ptr [ %14, %36 ], [ null, %2 ]
  br label %12, !dbg !1275

12:                                               ; preds = %8, %24
  %13 = phi i8 [ %10, %8 ], [ %20, %24 ]
  %14 = phi ptr [ %11, %8 ], [ %25, %24 ]
  br label %15, !dbg !1275

15:                                               ; preds = %17, %12
  tail call void @llvm.dbg.value(metadata ptr %14, metadata !1263, metadata !DIExpression()), !dbg !1268
  tail call void @llvm.dbg.value(metadata i8 %13, metadata !1262, metadata !DIExpression()), !dbg !1268
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1261, metadata !DIExpression()), !dbg !1268
  %16 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.20, ptr noundef nonnull @longopts, ptr noundef null) #42, !dbg !1276
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !1259, metadata !DIExpression()), !dbg !1268
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
  ], !dbg !1275

17:                                               ; preds = %15, %47, %46, %45, %43
  br label %15, !dbg !1268, !llvm.loop !1277

18:                                               ; preds = %15
  br label %19, !dbg !1279

19:                                               ; preds = %15, %15, %18
  %20 = phi i8 [ %13, %18 ], [ 1, %15 ], [ 1, %15 ], !dbg !1268
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !1262, metadata !DIExpression()), !dbg !1268
  %21 = icmp eq ptr %14, null, !dbg !1279
  br i1 %21, label %24, label %22, !dbg !1283

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #42, !dbg !1284
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %23) #42, !dbg !1284
  tail call void @usage(i32 noundef 1) #46, !dbg !1284
  unreachable, !dbg !1284

24:                                               ; preds = %19
  %25 = load ptr, ptr @optarg, align 8, !dbg !1286, !tbaa !1024
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !1263, metadata !DIExpression()), !dbg !1268
  br label %12, !dbg !1287, !llvm.loop !1277

26:                                               ; preds = %15
  %27 = load ptr, ptr @optarg, align 8, !dbg !1288, !tbaa !1024
  %28 = load i8, ptr %27, align 1, !dbg !1288, !tbaa !1111
  %29 = icmp eq i8 %28, 0, !dbg !1290
  br i1 %29, label %36, label %30, !dbg !1291

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %27, i64 1, !dbg !1292
  %32 = load i8, ptr %31, align 1, !dbg !1292, !tbaa !1111
  %33 = icmp eq i8 %32, 0, !dbg !1293
  br i1 %33, label %36, label %34, !dbg !1294

34:                                               ; preds = %30
  %35 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #42, !dbg !1295
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %35) #42, !dbg !1295
  tail call void @usage(i32 noundef 1) #46, !dbg !1295
  unreachable, !dbg !1295

36:                                               ; preds = %30, %26
  store i8 %28, ptr @delim, align 1, !dbg !1297, !tbaa !1111
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1261, metadata !DIExpression()), !dbg !1268
  br label %8, !dbg !1298, !llvm.loop !1277

37:                                               ; preds = %15
  %38 = load ptr, ptr @optarg, align 8, !dbg !1299, !tbaa !1024
  %39 = load i8, ptr %38, align 1, !dbg !1299, !tbaa !1111
  %40 = icmp eq i8 %39, 0, !dbg !1300
  br i1 %40, label %43, label %41, !dbg !1299

41:                                               ; preds = %37
  %42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %38) #43, !dbg !1301
  br label %43, !dbg !1299

43:                                               ; preds = %37, %41
  %44 = phi i64 [ %42, %41 ], [ 1, %37 ], !dbg !1299
  store i64 %44, ptr @output_delimiter_length, align 8, !dbg !1302, !tbaa !1303
  store ptr %38, ptr @output_delimiter_string, align 8, !dbg !1305, !tbaa !1024
  br label %17, !dbg !1306

45:                                               ; preds = %15
  store i1 true, ptr @suppress_non_delimited, align 1, !dbg !1307
  br label %17, !dbg !1308

46:                                               ; preds = %15
  store i1 true, ptr @line_delim, align 1, !dbg !1309
  br label %17, !dbg !1310

47:                                               ; preds = %15
  store i1 true, ptr @complement, align 1, !dbg !1311
  br label %17, !dbg !1312

48:                                               ; preds = %15
  tail call void @usage(i32 noundef 0) #46, !dbg !1313
  unreachable, !dbg !1313

49:                                               ; preds = %15
  %50 = load ptr, ptr @stdout, align 8, !dbg !1314, !tbaa !1024
  %51 = load ptr, ptr @Version, align 8, !dbg !1314, !tbaa !1024
  %52 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.24) #42, !dbg !1314
  %53 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.25) #42, !dbg !1314
  %54 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.26) #42, !dbg !1314
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %50, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23, ptr noundef %51, ptr noundef %52, ptr noundef %53, ptr noundef %54, ptr noundef null) #42, !dbg !1314
  tail call void @exit(i32 noundef 0) #44, !dbg !1314
  unreachable, !dbg !1314

55:                                               ; preds = %15
  tail call void @usage(i32 noundef 1) #46, !dbg !1315
  unreachable, !dbg !1315

56:                                               ; preds = %15
  %57 = icmp eq ptr %14, null, !dbg !1316
  br i1 %57, label %58, label %60, !dbg !1318

58:                                               ; preds = %56
  %59 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #42, !dbg !1319
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %59) #42, !dbg !1319
  tail call void @usage(i32 noundef 1) #46, !dbg !1319
  unreachable, !dbg !1319

60:                                               ; preds = %56
  %61 = and i8 %13, 1, !dbg !1321
  %62 = icmp eq i8 %61, 0, !dbg !1321
  br i1 %62, label %70, label %63, !dbg !1323

63:                                               ; preds = %60
  br i1 %9, label %66, label %64, !dbg !1324

64:                                               ; preds = %63
  %65 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #42, !dbg !1326
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %65) #42, !dbg !1326
  tail call void @usage(i32 noundef 1) #46, !dbg !1326
  unreachable, !dbg !1326

66:                                               ; preds = %63
  %67 = load i1, ptr @suppress_non_delimited, align 1, !dbg !1329
  br i1 %67, label %68, label %73, !dbg !1331

68:                                               ; preds = %66
  %69 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #42, !dbg !1332
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %69) #42, !dbg !1332
  tail call void @usage(i32 noundef 1) #46, !dbg !1332
  unreachable, !dbg !1332

70:                                               ; preds = %60
  %71 = load i1, ptr @complement, align 1, !dbg !1334
  %72 = select i1 %71, i32 2, i32 0, !dbg !1334
  tail call void @set_fields(ptr noundef nonnull %14, i32 noundef %72) #42, !dbg !1335
  br i1 %9, label %76, label %77, !dbg !1336

73:                                               ; preds = %66
  %74 = load i1, ptr @complement, align 1, !dbg !1334
  %75 = select i1 %74, i32 6, i32 4, !dbg !1337
  tail call void @set_fields(ptr noundef nonnull %14, i32 noundef %75) #42, !dbg !1335
  br label %76, !dbg !1336

76:                                               ; preds = %73, %70
  store i8 9, ptr @delim, align 1, !dbg !1338, !tbaa !1111
  br label %77, !dbg !1340

77:                                               ; preds = %76, %70
  %78 = load ptr, ptr @output_delimiter_string, align 8, !dbg !1341, !tbaa !1024
  %79 = icmp eq ptr %78, null, !dbg !1343
  br i1 %79, label %80, label %82, !dbg !1344

80:                                               ; preds = %77
  %81 = load i8, ptr @delim, align 1, !dbg !1345, !tbaa !1111
  store i8 %81, ptr @output_delimiter_default, align 1, !dbg !1347, !tbaa !1111
  store ptr @output_delimiter_default, ptr @output_delimiter_string, align 8, !dbg !1348, !tbaa !1024
  store i64 1, ptr @output_delimiter_length, align 8, !dbg !1349, !tbaa !1303
  br label %82, !dbg !1350

82:                                               ; preds = %80, %77
  %83 = select i1 %62, ptr @cut_fields, ptr @cut_bytes, !dbg !1351
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1264, metadata !DIExpression()), !dbg !1268
  %84 = load i32, ptr @optind, align 4, !dbg !1352, !tbaa !1102
  %85 = icmp eq i32 %84, %0, !dbg !1354
  br i1 %85, label %88, label %86, !dbg !1355

86:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1260, metadata !DIExpression()), !dbg !1268
  %87 = icmp slt i32 %84, %0, !dbg !1356
  br i1 %87, label %90, label %101, !dbg !1359

88:                                               ; preds = %82
  %89 = tail call fastcc zeroext i1 @cut_file(ptr noundef nonnull @.str.30, ptr noundef nonnull %83), !dbg !1360
  tail call void @llvm.dbg.value(metadata i1 %89, metadata !1260, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1268
  br label %101, !dbg !1361

90:                                               ; preds = %86, %90
  %91 = phi i32 [ %99, %90 ], [ %84, %86 ]
  %92 = phi i1 [ %97, %90 ], [ true, %86 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1260, metadata !DIExpression()), !dbg !1268
  %93 = sext i32 %91 to i64, !dbg !1362
  %94 = getelementptr inbounds ptr, ptr %1, i64 %93, !dbg !1362
  %95 = load ptr, ptr %94, align 8, !dbg !1362, !tbaa !1024
  %96 = tail call fastcc zeroext i1 @cut_file(ptr noundef %95, ptr noundef nonnull %83), !dbg !1363
  %97 = select i1 %96, i1 %92, i1 false, !dbg !1364
  tail call void @llvm.dbg.value(metadata i1 %97, metadata !1260, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1268
  %98 = load i32, ptr @optind, align 4, !dbg !1365, !tbaa !1102
  %99 = add nsw i32 %98, 1, !dbg !1365
  store i32 %99, ptr @optind, align 4, !dbg !1365, !tbaa !1102
  %100 = icmp slt i32 %99, %0, !dbg !1356
  br i1 %100, label %90, label %101, !dbg !1359, !llvm.loop !1366

101:                                              ; preds = %90, %86, %88
  %102 = phi i1 [ %89, %88 ], [ true, %86 ], [ %97, %90 ]
  tail call void @llvm.dbg.value(metadata i1 %102, metadata !1260, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1268
  %103 = load i1, ptr @have_read_stdin, align 1, !dbg !1368
  br i1 %103, label %104, label %111, !dbg !1370

104:                                              ; preds = %101
  %105 = load ptr, ptr @stdin, align 8, !dbg !1371, !tbaa !1024
  %106 = tail call i32 @rpl_fclose(ptr noundef %105) #42, !dbg !1372
  %107 = icmp eq i32 %106, -1, !dbg !1373
  br i1 %107, label %108, label %111, !dbg !1374

108:                                              ; preds = %104
  %109 = tail call ptr @__errno_location() #45, !dbg !1375
  %110 = load i32, ptr %109, align 4, !dbg !1375, !tbaa !1102
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %110, ptr noundef nonnull @.str.30) #42, !dbg !1375
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1260, metadata !DIExpression()), !dbg !1268
  br label %111, !dbg !1377

111:                                              ; preds = %108, %104, %101
  %112 = phi i1 [ false, %108 ], [ %102, %104 ], [ %102, %101 ]
  tail call void @llvm.dbg.value(metadata i1 %112, metadata !1260, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1268
  %113 = xor i1 %112, true, !dbg !1378
  %114 = zext i1 %113 to i32, !dbg !1378
  ret i32 %114, !dbg !1379
}

; Function Attrs: nounwind
declare !dbg !1380 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1383 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1384 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1387 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1393 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @cut_fields(ptr noundef %0) #10 !dbg !1396 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1398, metadata !DIExpression()), !dbg !1442
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1400, metadata !DIExpression()), !dbg !1442
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1401, metadata !DIExpression()), !dbg !1442
  %2 = load ptr, ptr @frp, align 8, !dbg !1443, !tbaa !1024
  store ptr %2, ptr @current_rp, align 8, !dbg !1444, !tbaa !1024
  call void @llvm.dbg.value(metadata ptr %0, metadata !1445, metadata !DIExpression()), !dbg !1451
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !1453
  %4 = load ptr, ptr %3, align 8, !dbg !1453, !tbaa !1454
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !1453
  %6 = load ptr, ptr %5, align 8, !dbg !1453, !tbaa !1456
  %7 = icmp ult ptr %4, %6, !dbg !1453
  br i1 %7, label %8, label %12, !dbg !1453, !prof !1457

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !1453
  store ptr %9, ptr %3, align 8, !dbg !1453, !tbaa !1454
  %10 = load i8, ptr %4, align 1, !dbg !1453, !tbaa !1111
  %11 = zext i8 %10 to i32, !dbg !1453
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1399, metadata !DIExpression()), !dbg !1442
  br label %15, !dbg !1458

12:                                               ; preds = %1
  %13 = tail call i32 @__uflow(ptr noundef nonnull %0) #42, !dbg !1453
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !1399, metadata !DIExpression()), !dbg !1442
  %14 = icmp eq i32 %13, -1, !dbg !1459
  br i1 %14, label %336, label %15, !dbg !1458

15:                                               ; preds = %8, %12
  %16 = phi i32 [ %11, %8 ], [ %13, %12 ]
  %17 = tail call i32 @ungetc(i32 noundef %16, ptr noundef nonnull %0), !dbg !1461
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1399, metadata !DIExpression()), !dbg !1442
  %18 = load i1, ptr @suppress_non_delimited, align 1, !dbg !1462
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1463, metadata !DIExpression()), !dbg !1468
  %19 = load ptr, ptr @current_rp, align 8, !dbg !1470, !tbaa !1024
  %20 = load i64, ptr %19, align 8, !dbg !1471, !tbaa !1472
  %21 = icmp ult i64 %20, 2, !dbg !1474
  %22 = xor i1 %18, %21, !dbg !1475
  tail call void @llvm.dbg.value(metadata i1 %22, metadata !1402, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1442
  br label %23, !dbg !1476

23:                                               ; preds = %77, %15
  %24 = phi i64 [ 1, %15 ], [ %78, %77 ], !dbg !1442
  %25 = phi i8 [ 0, %15 ], [ %79, %77 ], !dbg !1442
  %26 = phi i32 [ 0, %15 ], [ %80, %77 ], !dbg !1442
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !1400, metadata !DIExpression()), !dbg !1442
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !1399, metadata !DIExpression()), !dbg !1442
  tail call void @llvm.dbg.value(metadata i8 %25, metadata !1401, metadata !DIExpression()), !dbg !1442
  %27 = icmp ne i64 %24, 1, !dbg !1477
  %28 = select i1 %27, i1 true, i1 %22, !dbg !1478
  br i1 %28, label %29, label %31, !dbg !1478

29:                                               ; preds = %23
  %30 = load ptr, ptr @current_rp, align 8, !dbg !1479, !tbaa !1024
  br label %151, !dbg !1478

31:                                               ; preds = %23
  %32 = load i8, ptr @delim, align 1, !dbg !1481, !tbaa !1111
  %33 = zext i8 %32 to i32, !dbg !1481
  %34 = load i1, ptr @line_delim, align 1, !dbg !1482
  %35 = select i1 %34, i32 0, i32 10, !dbg !1482
  %36 = tail call i64 @getndelim2(ptr noundef nonnull @field_1_buffer, ptr noundef nonnull @field_1_bufsize, i64 noundef 0, i64 noundef -1, i32 noundef %33, i32 noundef %35, ptr noundef %0) #42, !dbg !1483
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !1403, metadata !DIExpression()), !dbg !1484
  %37 = icmp slt i64 %36, 0, !dbg !1485
  br i1 %37, label %38, label %44, !dbg !1487

38:                                               ; preds = %31
  %39 = load ptr, ptr @field_1_buffer, align 8, !dbg !1488, !tbaa !1024
  tail call void @free(ptr noundef %39) #42, !dbg !1490
  store ptr null, ptr @field_1_buffer, align 8, !dbg !1491, !tbaa !1024
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1492, metadata !DIExpression()), !dbg !1495
  %40 = load i32, ptr %0, align 8, !dbg !1498, !tbaa !1499
  %41 = and i32 %40, 48, !dbg !1500
  %42 = icmp eq i32 %41, 0, !dbg !1500
  br i1 %42, label %43, label %336, !dbg !1500

43:                                               ; preds = %38
  tail call void @xalloc_die() #44, !dbg !1501
  unreachable, !dbg !1501

44:                                               ; preds = %31
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !1409, metadata !DIExpression()), !dbg !1484
  %45 = icmp eq i64 %36, 0, !dbg !1502
  br i1 %45, label %46, label %47, !dbg !1505

46:                                               ; preds = %44
  tail call void @__assert_fail(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef 335, ptr noundef nonnull @__PRETTY_FUNCTION__.cut_fields) #44, !dbg !1502
  unreachable, !dbg !1502

47:                                               ; preds = %44
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1399, metadata !DIExpression()), !dbg !1442
  %48 = load ptr, ptr @field_1_buffer, align 8, !dbg !1506, !tbaa !1024
  %49 = add nsw i64 %36, -1, !dbg !1507
  %50 = getelementptr inbounds i8, ptr %48, i64 %49, !dbg !1506
  %51 = load i8, ptr %50, align 1, !dbg !1506, !tbaa !1111
  %52 = load i8, ptr @delim, align 1, !dbg !1508, !tbaa !1111
  %53 = icmp eq i8 %51, %52, !dbg !1509
  br i1 %53, label %106, label %54, !dbg !1510

54:                                               ; preds = %47
  %55 = load i1, ptr @suppress_non_delimited, align 1, !dbg !1511
  br i1 %55, label %77, label %56, !dbg !1512

56:                                               ; preds = %54
  %57 = load ptr, ptr @stdout, align 8, !dbg !1513, !tbaa !1024
  %58 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %48, i64 noundef 1, i64 noundef %36, ptr noundef %57), !dbg !1513
  %59 = icmp eq i64 %58, %36, !dbg !1514
  br i1 %59, label %69, label %60, !dbg !1515

60:                                               ; preds = %56
  %61 = tail call ptr @__errno_location() #45, !dbg !1516
  %62 = load i32, ptr %61, align 4, !dbg !1516, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %62, metadata !1519, metadata !DIExpression()), !dbg !1521
  %63 = load ptr, ptr @stdout, align 8, !dbg !1522, !tbaa !1024
  %64 = tail call i32 @fflush_unlocked(ptr noundef %63) #42, !dbg !1522
  %65 = load ptr, ptr @stdout, align 8, !dbg !1523, !tbaa !1024
  %66 = tail call i32 @fpurge(ptr noundef %65) #42, !dbg !1524
  %67 = load ptr, ptr @stdout, align 8, !dbg !1525, !tbaa !1024
  tail call void @clearerr_unlocked(ptr noundef %67) #42, !dbg !1525
  %68 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #42, !dbg !1526
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %62, ptr noundef %68) #42, !dbg !1526
  unreachable, !dbg !1526

69:                                               ; preds = %56
  %70 = load ptr, ptr @field_1_buffer, align 8, !dbg !1527, !tbaa !1024
  %71 = getelementptr inbounds i8, ptr %70, i64 %49, !dbg !1527
  %72 = load i8, ptr %71, align 1, !dbg !1527, !tbaa !1111
  %73 = sext i8 %72 to i32, !dbg !1527
  %74 = load i1, ptr @line_delim, align 1, !dbg !1529
  %75 = select i1 %74, i32 0, i32 10, !dbg !1529
  %76 = icmp eq i32 %75, %73, !dbg !1530
  br i1 %76, label %77, label %81, !dbg !1531

77:                                               ; preds = %69, %88, %94, %334, %288, %280, %286, %54
  %78 = phi i64 [ 1, %54 ], [ 1, %334 ], [ %153, %288 ], [ %281, %280 ], [ %281, %286 ], [ 1, %94 ], [ 1, %88 ], [ 1, %69 ]
  %79 = phi i8 [ %25, %54 ], [ 0, %334 ], [ %249, %288 ], [ %249, %280 ], [ %249, %286 ], [ %25, %94 ], [ %25, %88 ], [ %25, %69 ]
  %80 = phi i32 [ 0, %54 ], [ %297, %334 ], [ %250, %288 ], [ %250, %280 ], [ %250, %286 ], [ %96, %94 ], [ %75, %88 ], [ %75, %69 ]
  br label %23, !dbg !1442, !llvm.loop !1532

81:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i32 %75, metadata !1534, metadata !DIExpression()), !dbg !1539
  %82 = load ptr, ptr @stdout, align 8, !dbg !1543, !tbaa !1024
  %83 = getelementptr inbounds %struct._IO_FILE, ptr %82, i64 0, i32 5, !dbg !1543
  %84 = load ptr, ptr %83, align 8, !dbg !1543, !tbaa !1544
  %85 = getelementptr inbounds %struct._IO_FILE, ptr %82, i64 0, i32 6, !dbg !1543
  %86 = load ptr, ptr %85, align 8, !dbg !1543, !tbaa !1545
  %87 = icmp ult ptr %84, %86, !dbg !1543
  br i1 %87, label %88, label %91, !dbg !1543, !prof !1457

88:                                               ; preds = %81
  %89 = trunc i32 %75 to i8, !dbg !1543
  %90 = getelementptr inbounds i8, ptr %84, i64 1, !dbg !1543
  store ptr %90, ptr %83, align 8, !dbg !1543, !tbaa !1544
  store i8 %89, ptr %84, align 1, !dbg !1543, !tbaa !1111
  br label %77, !dbg !1546

91:                                               ; preds = %81
  %92 = tail call i32 @__overflow(ptr noundef nonnull %82, i32 noundef %75) #42, !dbg !1543
  %93 = icmp slt i32 %92, 0, !dbg !1547
  br i1 %93, label %97, label %94, !dbg !1546

94:                                               ; preds = %91
  %95 = load i1, ptr @line_delim, align 1, !dbg !1548
  %96 = select i1 %95, i32 0, i32 10, !dbg !1548
  br label %77, !dbg !1546

97:                                               ; preds = %91
  %98 = tail call ptr @__errno_location() #45, !dbg !1549
  %99 = load i32, ptr %98, align 4, !dbg !1549, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %99, metadata !1519, metadata !DIExpression()), !dbg !1551
  %100 = load ptr, ptr @stdout, align 8, !dbg !1552, !tbaa !1024
  %101 = tail call i32 @fflush_unlocked(ptr noundef %100) #42, !dbg !1552
  %102 = load ptr, ptr @stdout, align 8, !dbg !1553, !tbaa !1024
  %103 = tail call i32 @fpurge(ptr noundef %102) #42, !dbg !1554
  %104 = load ptr, ptr @stdout, align 8, !dbg !1555, !tbaa !1024
  tail call void @clearerr_unlocked(ptr noundef %104) #42, !dbg !1555
  %105 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #42, !dbg !1556
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %99, ptr noundef %105) #42, !dbg !1556
  unreachable, !dbg !1556

106:                                              ; preds = %47
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1463, metadata !DIExpression()), !dbg !1557
  %107 = load ptr, ptr @current_rp, align 8, !dbg !1559, !tbaa !1024
  %108 = load i64, ptr %107, align 8, !dbg !1560, !tbaa !1472
  %109 = icmp ult i64 %108, 2, !dbg !1561
  br i1 %109, label %110, label %143, !dbg !1562

110:                                              ; preds = %106
  %111 = load ptr, ptr @stdout, align 8, !dbg !1563, !tbaa !1024
  %112 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %48, i64 noundef 1, i64 noundef %49, ptr noundef %111), !dbg !1563
  %113 = icmp eq i64 %112, %49, !dbg !1564
  br i1 %113, label %123, label %114, !dbg !1565

114:                                              ; preds = %110
  %115 = tail call ptr @__errno_location() #45, !dbg !1566
  %116 = load i32, ptr %115, align 4, !dbg !1566, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %116, metadata !1519, metadata !DIExpression()), !dbg !1568
  %117 = load ptr, ptr @stdout, align 8, !dbg !1569, !tbaa !1024
  %118 = tail call i32 @fflush_unlocked(ptr noundef %117) #42, !dbg !1569
  %119 = load ptr, ptr @stdout, align 8, !dbg !1570, !tbaa !1024
  %120 = tail call i32 @fpurge(ptr noundef %119) #42, !dbg !1571
  %121 = load ptr, ptr @stdout, align 8, !dbg !1572, !tbaa !1024
  tail call void @clearerr_unlocked(ptr noundef %121) #42, !dbg !1572
  %122 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #42, !dbg !1573
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %116, ptr noundef %122) #42, !dbg !1573
  unreachable, !dbg !1573

123:                                              ; preds = %110
  %124 = load i8, ptr @delim, align 1, !dbg !1574, !tbaa !1111
  %125 = zext i8 %124 to i32, !dbg !1574
  %126 = load i1, ptr @line_delim, align 1, !dbg !1575
  %127 = select i1 %126, i32 0, i32 10, !dbg !1575
  %128 = icmp eq i32 %127, %125, !dbg !1576
  br i1 %128, label %129, label %143, !dbg !1577

129:                                              ; preds = %123
  call void @llvm.dbg.value(metadata ptr %0, metadata !1445, metadata !DIExpression()), !dbg !1578
  %130 = load ptr, ptr %3, align 8, !dbg !1580, !tbaa !1454
  %131 = load ptr, ptr %5, align 8, !dbg !1580, !tbaa !1456
  %132 = icmp ult ptr %130, %131, !dbg !1580
  br i1 %132, label %133, label %137, !dbg !1580, !prof !1457

133:                                              ; preds = %129
  %134 = getelementptr inbounds i8, ptr %130, i64 1, !dbg !1580
  store ptr %134, ptr %3, align 8, !dbg !1580, !tbaa !1454
  %135 = load i8, ptr %130, align 1, !dbg !1580, !tbaa !1111
  %136 = zext i8 %135 to i32, !dbg !1580
  tail call void @llvm.dbg.value(metadata i32 %136, metadata !1426, metadata !DIExpression()), !dbg !1581
  br label %140, !dbg !1582

137:                                              ; preds = %129
  %138 = tail call i32 @__uflow(ptr noundef nonnull %0) #42, !dbg !1580
  tail call void @llvm.dbg.value(metadata i32 %138, metadata !1426, metadata !DIExpression()), !dbg !1581
  %139 = icmp eq i32 %138, -1, !dbg !1583
  br i1 %139, label %143, label %140, !dbg !1582

140:                                              ; preds = %133, %137
  %141 = phi i32 [ %136, %133 ], [ %138, %137 ]
  %142 = tail call i32 @ungetc(i32 noundef %141, ptr noundef nonnull %0), !dbg !1585
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1401, metadata !DIExpression()), !dbg !1442
  br label %143, !dbg !1587

143:                                              ; preds = %123, %137, %140, %106
  %144 = phi i8 [ %25, %106 ], [ 1, %140 ], [ %25, %137 ], [ 1, %123 ], !dbg !1442
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1401, metadata !DIExpression()), !dbg !1442
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !1588, metadata !DIExpression()), !dbg !1594
  tail call void @llvm.dbg.value(metadata i64 2, metadata !1400, metadata !DIExpression()), !dbg !1442
  %145 = load ptr, ptr @current_rp, align 8, !dbg !1596, !tbaa !1024
  %146 = getelementptr inbounds %struct.field_range_pair, ptr %145, i64 0, i32 1, !dbg !1598
  %147 = load i64, ptr %146, align 8, !dbg !1598, !tbaa !1599
  %148 = icmp ult i64 %147, 2, !dbg !1600
  br i1 %148, label %149, label %151, !dbg !1601

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.field_range_pair, ptr %145, i64 1, !dbg !1602
  store ptr %150, ptr @current_rp, align 8, !dbg !1602, !tbaa !1024
  br label %151, !dbg !1603

151:                                              ; preds = %29, %149, %143
  %152 = phi ptr [ %30, %29 ], [ %145, %143 ], [ %150, %149 ], !dbg !1479
  %153 = phi i64 [ %24, %29 ], [ 2, %143 ], [ 2, %149 ], !dbg !1604
  %154 = phi i8 [ %25, %29 ], [ %144, %143 ], [ %144, %149 ], !dbg !1605
  %155 = phi i32 [ %26, %29 ], [ 0, %143 ], [ 0, %149 ], !dbg !1606
  tail call void @llvm.dbg.value(metadata i64 %153, metadata !1400, metadata !DIExpression()), !dbg !1442
  tail call void @llvm.dbg.value(metadata i32 %155, metadata !1399, metadata !DIExpression()), !dbg !1442
  tail call void @llvm.dbg.value(metadata i8 %154, metadata !1401, metadata !DIExpression()), !dbg !1442
  tail call void @llvm.dbg.value(metadata i32 %155, metadata !1429, metadata !DIExpression()), !dbg !1607
  tail call void @llvm.dbg.value(metadata i64 %153, metadata !1463, metadata !DIExpression()), !dbg !1608
  %156 = load i64, ptr %152, align 8, !dbg !1609, !tbaa !1472
  %157 = icmp ugt i64 %156, %153, !dbg !1610
  br i1 %157, label %224, label %158, !dbg !1611

158:                                              ; preds = %151
  %159 = and i8 %154, 1, !dbg !1612
  %160 = icmp eq i8 %159, 0, !dbg !1612
  br i1 %160, label %161, label %162, !dbg !1613

161:                                              ; preds = %162, %158
  br label %178, !dbg !1614

162:                                              ; preds = %158
  %163 = load i64, ptr @output_delimiter_length, align 8, !dbg !1615
  %164 = load ptr, ptr @output_delimiter_string, align 8, !dbg !1615, !tbaa !1024
  %165 = load ptr, ptr @stdout, align 8, !dbg !1615, !tbaa !1024
  %166 = tail call i64 @fwrite_unlocked(ptr noundef %164, i64 noundef 1, i64 noundef %163, ptr noundef %165), !dbg !1615
  %167 = load i64, ptr @output_delimiter_length, align 8, !dbg !1616, !tbaa !1303
  %168 = icmp eq i64 %166, %167, !dbg !1617
  br i1 %168, label %161, label %169, !dbg !1618

169:                                              ; preds = %162
  %170 = tail call ptr @__errno_location() #45, !dbg !1619
  %171 = load i32, ptr %170, align 4, !dbg !1619, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %171, metadata !1519, metadata !DIExpression()), !dbg !1621
  %172 = load ptr, ptr @stdout, align 8, !dbg !1622, !tbaa !1024
  %173 = tail call i32 @fflush_unlocked(ptr noundef %172) #42, !dbg !1622
  %174 = load ptr, ptr @stdout, align 8, !dbg !1623, !tbaa !1024
  %175 = tail call i32 @fpurge(ptr noundef %174) #42, !dbg !1624
  %176 = load ptr, ptr @stdout, align 8, !dbg !1625, !tbaa !1024
  tail call void @clearerr_unlocked(ptr noundef %176) #42, !dbg !1625
  %177 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #42, !dbg !1626
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %171, ptr noundef %177) #42, !dbg !1626
  unreachable, !dbg !1626

178:                                              ; preds = %210, %161
  %179 = phi i32 [ %155, %161 ], [ %190, %210 ], !dbg !1607
  tail call void @llvm.dbg.value(metadata i32 %179, metadata !1429, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata ptr %0, metadata !1445, metadata !DIExpression()), !dbg !1627
  %180 = load ptr, ptr %3, align 8, !dbg !1629, !tbaa !1454
  %181 = load ptr, ptr %5, align 8, !dbg !1629, !tbaa !1456
  %182 = icmp ult ptr %180, %181, !dbg !1629
  br i1 %182, label %185, label %183, !dbg !1629, !prof !1457

183:                                              ; preds = %178
  %184 = tail call i32 @__uflow(ptr noundef nonnull %0) #42, !dbg !1629
  br label %189, !dbg !1629

185:                                              ; preds = %178
  %186 = getelementptr inbounds i8, ptr %180, i64 1, !dbg !1629
  store ptr %186, ptr %3, align 8, !dbg !1629, !tbaa !1454
  %187 = load i8, ptr %180, align 1, !dbg !1629, !tbaa !1111
  %188 = zext i8 %187 to i32, !dbg !1629
  br label %189, !dbg !1629

189:                                              ; preds = %183, %185
  %190 = phi i32 [ %184, %183 ], [ %188, %185 ], !dbg !1629
  tail call void @llvm.dbg.value(metadata i32 %190, metadata !1399, metadata !DIExpression()), !dbg !1442
  %191 = load i8, ptr @delim, align 1, !dbg !1630
  %192 = zext i8 %191 to i32, !dbg !1630
  %193 = icmp eq i32 %190, %192, !dbg !1631
  br i1 %193, label %246, label %194, !dbg !1632

194:                                              ; preds = %189
  %195 = load i1, ptr @line_delim, align 1, !dbg !1633
  %196 = select i1 %195, i32 0, i32 10, !dbg !1633
  %197 = icmp ne i32 %190, %196, !dbg !1634
  %198 = icmp ne i32 %190, -1
  %199 = and i1 %198, %197, !dbg !1635
  br i1 %199, label %200, label %246, !dbg !1635

200:                                              ; preds = %194
  call void @llvm.dbg.value(metadata i32 %190, metadata !1534, metadata !DIExpression()), !dbg !1636
  %201 = load ptr, ptr @stdout, align 8, !dbg !1640, !tbaa !1024
  %202 = getelementptr inbounds %struct._IO_FILE, ptr %201, i64 0, i32 5, !dbg !1640
  %203 = load ptr, ptr %202, align 8, !dbg !1640, !tbaa !1544
  %204 = getelementptr inbounds %struct._IO_FILE, ptr %201, i64 0, i32 6, !dbg !1640
  %205 = load ptr, ptr %204, align 8, !dbg !1640, !tbaa !1545
  %206 = icmp ult ptr %203, %205, !dbg !1640
  br i1 %206, label %207, label %211, !dbg !1640, !prof !1457

207:                                              ; preds = %200
  %208 = trunc i32 %190 to i8, !dbg !1640
  %209 = getelementptr inbounds i8, ptr %203, i64 1, !dbg !1640
  store ptr %209, ptr %202, align 8, !dbg !1640, !tbaa !1544
  store i8 %208, ptr %203, align 1, !dbg !1640, !tbaa !1111
  br label %210, !dbg !1641

210:                                              ; preds = %207, %211
  br label %178, !dbg !1607, !llvm.loop !1642

211:                                              ; preds = %200
  %212 = and i32 %190, 255, !dbg !1640
  %213 = tail call i32 @__overflow(ptr noundef nonnull %201, i32 noundef %212) #42, !dbg !1640
  %214 = icmp slt i32 %213, 0, !dbg !1644
  br i1 %214, label %215, label %210, !dbg !1641

215:                                              ; preds = %211
  %216 = tail call ptr @__errno_location() #45, !dbg !1645
  %217 = load i32, ptr %216, align 4, !dbg !1645, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %217, metadata !1519, metadata !DIExpression()), !dbg !1647
  %218 = load ptr, ptr @stdout, align 8, !dbg !1648, !tbaa !1024
  %219 = tail call i32 @fflush_unlocked(ptr noundef %218) #42, !dbg !1648
  %220 = load ptr, ptr @stdout, align 8, !dbg !1649, !tbaa !1024
  %221 = tail call i32 @fpurge(ptr noundef %220) #42, !dbg !1650
  %222 = load ptr, ptr @stdout, align 8, !dbg !1651, !tbaa !1024
  tail call void @clearerr_unlocked(ptr noundef %222) #42, !dbg !1651
  %223 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #42, !dbg !1652
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %217, ptr noundef %223) #42, !dbg !1652
  unreachable, !dbg !1652

224:                                              ; preds = %151, %240
  %225 = phi i32 [ %236, %240 ], [ %155, %151 ], !dbg !1607
  tail call void @llvm.dbg.value(metadata i32 %225, metadata !1429, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata ptr %0, metadata !1445, metadata !DIExpression()), !dbg !1653
  %226 = load ptr, ptr %3, align 8, !dbg !1656, !tbaa !1454
  %227 = load ptr, ptr %5, align 8, !dbg !1656, !tbaa !1456
  %228 = icmp ult ptr %226, %227, !dbg !1656
  br i1 %228, label %231, label %229, !dbg !1656, !prof !1457

229:                                              ; preds = %224
  %230 = tail call i32 @__uflow(ptr noundef nonnull %0) #42, !dbg !1656
  br label %235, !dbg !1656

231:                                              ; preds = %224
  %232 = getelementptr inbounds i8, ptr %226, i64 1, !dbg !1656
  store ptr %232, ptr %3, align 8, !dbg !1656, !tbaa !1454
  %233 = load i8, ptr %226, align 1, !dbg !1656, !tbaa !1111
  %234 = zext i8 %233 to i32, !dbg !1656
  br label %235, !dbg !1656

235:                                              ; preds = %229, %231
  %236 = phi i32 [ %230, %229 ], [ %234, %231 ], !dbg !1656
  tail call void @llvm.dbg.value(metadata i32 %236, metadata !1399, metadata !DIExpression()), !dbg !1442
  %237 = load i8, ptr @delim, align 1, !dbg !1657
  %238 = zext i8 %237 to i32, !dbg !1657
  %239 = icmp eq i32 %236, %238, !dbg !1658
  br i1 %239, label %246, label %240, !dbg !1659

240:                                              ; preds = %235
  %241 = load i1, ptr @line_delim, align 1, !dbg !1660
  %242 = select i1 %241, i32 0, i32 10, !dbg !1660
  %243 = icmp ne i32 %236, %242, !dbg !1661
  %244 = icmp ne i32 %236, -1
  %245 = and i1 %244, %243, !dbg !1662
  br i1 %245, label %224, label %246, !dbg !1662, !llvm.loop !1663

246:                                              ; preds = %189, %194, %235, %240
  %247 = phi i32 [ %238, %240 ], [ %238, %235 ], [ %192, %194 ], [ %192, %189 ], !dbg !1666
  %248 = phi i32 [ %225, %240 ], [ %225, %235 ], [ %179, %194 ], [ %179, %189 ], !dbg !1667
  %249 = phi i8 [ %154, %240 ], [ %154, %235 ], [ 1, %194 ], [ 1, %189 ], !dbg !1442
  %250 = phi i32 [ %236, %240 ], [ %236, %235 ], [ %190, %194 ], [ %190, %189 ], !dbg !1668
  tail call void @llvm.dbg.value(metadata i32 %250, metadata !1399, metadata !DIExpression()), !dbg !1442
  tail call void @llvm.dbg.value(metadata i8 %249, metadata !1401, metadata !DIExpression()), !dbg !1442
  tail call void @llvm.dbg.value(metadata i32 %248, metadata !1429, metadata !DIExpression()), !dbg !1607
  %251 = load i1, ptr @line_delim, align 1, !dbg !1669
  %252 = select i1 %251, i32 0, i32 10, !dbg !1669
  %253 = icmp eq i32 %252, %247, !dbg !1670
  %254 = icmp eq i32 %250, %247
  %255 = and i1 %254, %253, !dbg !1671
  br i1 %255, label %256, label %277, !dbg !1671

256:                                              ; preds = %246
  call void @llvm.dbg.value(metadata ptr %0, metadata !1445, metadata !DIExpression()), !dbg !1672
  %257 = load ptr, ptr %3, align 8, !dbg !1674, !tbaa !1454
  %258 = load ptr, ptr %5, align 8, !dbg !1674, !tbaa !1456
  %259 = icmp ult ptr %257, %258, !dbg !1674
  br i1 %259, label %260, label %264, !dbg !1674, !prof !1457

260:                                              ; preds = %256
  %261 = getelementptr inbounds i8, ptr %257, i64 1, !dbg !1674
  store ptr %261, ptr %3, align 8, !dbg !1674, !tbaa !1454
  %262 = load i8, ptr %257, align 1, !dbg !1674, !tbaa !1111
  %263 = zext i8 %262 to i32, !dbg !1674
  tail call void @llvm.dbg.value(metadata i32 %263, metadata !1439, metadata !DIExpression()), !dbg !1675
  br label %272, !dbg !1676

264:                                              ; preds = %256
  %265 = tail call i32 @__uflow(ptr noundef nonnull %0) #42, !dbg !1674
  tail call void @llvm.dbg.value(metadata i32 %265, metadata !1439, metadata !DIExpression()), !dbg !1675
  %266 = icmp eq i32 %265, -1, !dbg !1677
  br i1 %266, label %267, label %272, !dbg !1676

267:                                              ; preds = %264
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1399, metadata !DIExpression()), !dbg !1442
  %268 = load i8, ptr @delim, align 1, !dbg !1679
  %269 = zext i8 %268 to i32, !dbg !1679
  %270 = load i1, ptr @line_delim, align 1, !dbg !1681
  %271 = select i1 %270, i32 0, i32 10, !dbg !1681
  br label %294, !dbg !1683

272:                                              ; preds = %260, %264
  %273 = phi i32 [ %263, %260 ], [ %265, %264 ]
  %274 = tail call i32 @ungetc(i32 noundef %273, ptr noundef nonnull %0), !dbg !1684
  %275 = load i8, ptr @delim, align 1, !dbg !1679
  %276 = zext i8 %275 to i32, !dbg !1679
  br label %277, !dbg !1684

277:                                              ; preds = %272, %246
  %278 = phi i32 [ %276, %272 ], [ %247, %246 ], !dbg !1679
  tail call void @llvm.dbg.value(metadata i32 %250, metadata !1399, metadata !DIExpression()), !dbg !1442
  %279 = icmp eq i32 %250, %278, !dbg !1685
  br i1 %279, label %280, label %288, !dbg !1686

280:                                              ; preds = %277
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !1588, metadata !DIExpression()), !dbg !1687
  %281 = add i64 %153, 1, !dbg !1689
  tail call void @llvm.dbg.value(metadata i64 %281, metadata !1400, metadata !DIExpression()), !dbg !1442
  %282 = load ptr, ptr @current_rp, align 8, !dbg !1690, !tbaa !1024
  %283 = getelementptr inbounds %struct.field_range_pair, ptr %282, i64 0, i32 1, !dbg !1691
  %284 = load i64, ptr %283, align 8, !dbg !1691, !tbaa !1599
  %285 = icmp ugt i64 %281, %284, !dbg !1692
  br i1 %285, label %286, label %77, !dbg !1693

286:                                              ; preds = %280
  %287 = getelementptr inbounds %struct.field_range_pair, ptr %282, i64 1, !dbg !1694
  store ptr %287, ptr @current_rp, align 8, !dbg !1694, !tbaa !1024
  br label %77, !dbg !1695

288:                                              ; preds = %277
  %289 = load i1, ptr @line_delim, align 1, !dbg !1681
  %290 = select i1 %289, i32 0, i32 10, !dbg !1681
  %291 = icmp eq i32 %250, %290, !dbg !1696
  %292 = icmp eq i32 %250, -1
  %293 = or i1 %292, %291, !dbg !1683
  br i1 %293, label %294, label %77, !dbg !1683

294:                                              ; preds = %267, %288
  %295 = phi i1 [ true, %267 ], [ %292, %288 ]
  %296 = phi i32 [ %271, %267 ], [ %290, %288 ]
  %297 = phi i32 [ -1, %267 ], [ %250, %288 ]
  %298 = phi i32 [ %269, %267 ], [ %278, %288 ]
  %299 = and i8 %249, 1, !dbg !1697
  %300 = icmp eq i8 %299, 0, !dbg !1697
  br i1 %300, label %301, label %305, !dbg !1700

301:                                              ; preds = %294
  %302 = load i1, ptr @suppress_non_delimited, align 1, !dbg !1701
  %303 = icmp eq i64 %153, 1
  %304 = and i1 %303, %302, !dbg !1702
  br i1 %304, label %333, label %305, !dbg !1702

305:                                              ; preds = %301, %294
  %306 = icmp eq i32 %297, %296, !dbg !1703
  %307 = icmp ne i32 %248, %296
  %308 = select i1 %306, i1 true, i1 %307, !dbg !1706
  %309 = icmp eq i32 %296, %298
  %310 = select i1 %308, i1 true, i1 %309, !dbg !1706
  br i1 %310, label %311, label %333, !dbg !1706

311:                                              ; preds = %305
  call void @llvm.dbg.value(metadata i32 %296, metadata !1534, metadata !DIExpression()), !dbg !1707
  %312 = load ptr, ptr @stdout, align 8, !dbg !1711, !tbaa !1024
  %313 = getelementptr inbounds %struct._IO_FILE, ptr %312, i64 0, i32 5, !dbg !1711
  %314 = load ptr, ptr %313, align 8, !dbg !1711, !tbaa !1544
  %315 = getelementptr inbounds %struct._IO_FILE, ptr %312, i64 0, i32 6, !dbg !1711
  %316 = load ptr, ptr %315, align 8, !dbg !1711, !tbaa !1545
  %317 = icmp ult ptr %314, %316, !dbg !1711
  br i1 %317, label %318, label %321, !dbg !1711, !prof !1457

318:                                              ; preds = %311
  %319 = trunc i32 %296 to i8, !dbg !1711
  %320 = getelementptr inbounds i8, ptr %314, i64 1, !dbg !1711
  store ptr %320, ptr %313, align 8, !dbg !1711, !tbaa !1544
  store i8 %319, ptr %314, align 1, !dbg !1711, !tbaa !1111
  br i1 %295, label %336, label %334, !dbg !1712

321:                                              ; preds = %311
  %322 = tail call i32 @__overflow(ptr noundef nonnull %312, i32 noundef %296) #42, !dbg !1711
  %323 = icmp slt i32 %322, 0, !dbg !1713
  br i1 %323, label %324, label %333, !dbg !1714

324:                                              ; preds = %321
  %325 = tail call ptr @__errno_location() #45, !dbg !1715
  %326 = load i32, ptr %325, align 4, !dbg !1715, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %326, metadata !1519, metadata !DIExpression()), !dbg !1717
  %327 = load ptr, ptr @stdout, align 8, !dbg !1718, !tbaa !1024
  %328 = tail call i32 @fflush_unlocked(ptr noundef %327) #42, !dbg !1718
  %329 = load ptr, ptr @stdout, align 8, !dbg !1719, !tbaa !1024
  %330 = tail call i32 @fpurge(ptr noundef %329) #42, !dbg !1720
  %331 = load ptr, ptr @stdout, align 8, !dbg !1721, !tbaa !1024
  tail call void @clearerr_unlocked(ptr noundef %331) #42, !dbg !1721
  %332 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #42, !dbg !1722
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %326, ptr noundef %332) #42, !dbg !1722
  unreachable, !dbg !1722

333:                                              ; preds = %305, %321, %301
  br i1 %295, label %336, label %334, !dbg !1712

334:                                              ; preds = %318, %333
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1400, metadata !DIExpression()), !dbg !1442
  %335 = load ptr, ptr @frp, align 8, !dbg !1723, !tbaa !1024
  store ptr %335, ptr @current_rp, align 8, !dbg !1724, !tbaa !1024
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1401, metadata !DIExpression()), !dbg !1442
  br label %77, !dbg !1725

336:                                              ; preds = %318, %333, %38, %12
  ret void, !dbg !1726
}

; Function Attrs: nounwind uwtable
define internal void @cut_bytes(ptr noundef %0) #10 !dbg !1727 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1729, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1730, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1731, metadata !DIExpression()), !dbg !1748
  %2 = load ptr, ptr @frp, align 8, !dbg !1749, !tbaa !1024
  store ptr %2, ptr @current_rp, align 8, !dbg !1750, !tbaa !1024
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  br label %5, !dbg !1751

5:                                                ; preds = %48, %1
  %6 = phi i64 [ 0, %1 ], [ %49, %48 ]
  %7 = phi i8 [ 0, %1 ], [ %50, %48 ]
  br label %8, !dbg !1752

8:                                                ; preds = %5, %85
  %9 = phi i64 [ %78, %85 ], [ %6, %5 ], !dbg !1748
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1730, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i8 %7, metadata !1731, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata ptr %0, metadata !1445, metadata !DIExpression()), !dbg !1754
  %10 = load ptr, ptr %3, align 8, !dbg !1752, !tbaa !1454
  %11 = load ptr, ptr %4, align 8, !dbg !1752, !tbaa !1456
  %12 = icmp ult ptr %10, %11, !dbg !1752
  br i1 %12, label %15, label %13, !dbg !1752, !prof !1457

13:                                               ; preds = %8
  %14 = tail call i32 @__uflow(ptr noundef nonnull %0) #42, !dbg !1752
  br label %19, !dbg !1752

15:                                               ; preds = %8
  %16 = getelementptr inbounds i8, ptr %10, i64 1, !dbg !1752
  store ptr %16, ptr %3, align 8, !dbg !1752, !tbaa !1454
  %17 = load i8, ptr %10, align 1, !dbg !1752, !tbaa !1111
  %18 = zext i8 %17 to i32, !dbg !1752
  br label %19, !dbg !1752

19:                                               ; preds = %13, %15
  %20 = phi i32 [ %14, %13 ], [ %18, %15 ], !dbg !1752
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !1732, metadata !DIExpression()), !dbg !1755
  %21 = load i1, ptr @line_delim, align 1, !dbg !1756
  %22 = select i1 %21, i32 0, i32 10, !dbg !1756
  %23 = icmp eq i32 %20, %22, !dbg !1757
  br i1 %23, label %24, label %51, !dbg !1758

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %20, metadata !1534, metadata !DIExpression()), !dbg !1759
  %25 = load ptr, ptr @stdout, align 8, !dbg !1763, !tbaa !1024
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %25, i64 0, i32 5, !dbg !1763
  %27 = load ptr, ptr %26, align 8, !dbg !1763, !tbaa !1544
  %28 = getelementptr inbounds %struct._IO_FILE, ptr %25, i64 0, i32 6, !dbg !1763
  %29 = load ptr, ptr %28, align 8, !dbg !1763, !tbaa !1545
  %30 = icmp ult ptr %27, %29, !dbg !1763
  br i1 %30, label %31, label %34, !dbg !1763, !prof !1457

31:                                               ; preds = %24
  %32 = trunc i32 %20 to i8, !dbg !1763
  %33 = getelementptr inbounds i8, ptr %27, i64 1, !dbg !1763
  store ptr %33, ptr %26, align 8, !dbg !1763, !tbaa !1544
  store i8 %32, ptr %27, align 1, !dbg !1763, !tbaa !1111
  br label %46, !dbg !1764

34:                                               ; preds = %24
  %35 = tail call i32 @__overflow(ptr noundef nonnull %25, i32 noundef %20) #42, !dbg !1763
  %36 = icmp slt i32 %35, 0, !dbg !1765
  br i1 %36, label %37, label %46, !dbg !1764

37:                                               ; preds = %34
  %38 = tail call ptr @__errno_location() #45, !dbg !1766
  %39 = load i32, ptr %38, align 4, !dbg !1766, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %39, metadata !1519, metadata !DIExpression()), !dbg !1768
  %40 = load ptr, ptr @stdout, align 8, !dbg !1769, !tbaa !1024
  %41 = tail call i32 @fflush_unlocked(ptr noundef %40) #42, !dbg !1769
  %42 = load ptr, ptr @stdout, align 8, !dbg !1770, !tbaa !1024
  %43 = tail call i32 @fpurge(ptr noundef %42) #42, !dbg !1771
  %44 = load ptr, ptr @stdout, align 8, !dbg !1772, !tbaa !1024
  tail call void @clearerr_unlocked(ptr noundef %44) #42, !dbg !1772
  %45 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #42, !dbg !1773
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %39, ptr noundef %45) #42, !dbg !1773
  unreachable, !dbg !1773

46:                                               ; preds = %31, %34
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1730, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1731, metadata !DIExpression()), !dbg !1748
  %47 = load ptr, ptr @frp, align 8, !dbg !1774, !tbaa !1024
  store ptr %47, ptr @current_rp, align 8, !dbg !1775, !tbaa !1024
  br label %48, !dbg !1776

48:                                               ; preds = %46, %123, %120
  %49 = phi i64 [ %78, %120 ], [ %78, %123 ], [ 0, %46 ]
  %50 = phi i8 [ %113, %120 ], [ %113, %123 ], [ 0, %46 ]
  br label %5, !dbg !1752

51:                                               ; preds = %19
  %52 = icmp eq i32 %20, -1, !dbg !1777
  br i1 %52, label %53, label %77, !dbg !1778

53:                                               ; preds = %51
  %54 = icmp eq i64 %9, 0, !dbg !1779
  br i1 %54, label %136, label %55, !dbg !1782

55:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 %22, metadata !1534, metadata !DIExpression()), !dbg !1783
  %56 = load ptr, ptr @stdout, align 8, !dbg !1787, !tbaa !1024
  %57 = getelementptr inbounds %struct._IO_FILE, ptr %56, i64 0, i32 5, !dbg !1787
  %58 = load ptr, ptr %57, align 8, !dbg !1787, !tbaa !1544
  %59 = getelementptr inbounds %struct._IO_FILE, ptr %56, i64 0, i32 6, !dbg !1787
  %60 = load ptr, ptr %59, align 8, !dbg !1787, !tbaa !1545
  %61 = icmp ult ptr %58, %60, !dbg !1787
  br i1 %61, label %62, label %65, !dbg !1787, !prof !1457

62:                                               ; preds = %55
  %63 = trunc i32 %22 to i8, !dbg !1787
  %64 = getelementptr inbounds i8, ptr %58, i64 1, !dbg !1787
  store ptr %64, ptr %57, align 8, !dbg !1787, !tbaa !1544
  store i8 %63, ptr %58, align 1, !dbg !1787, !tbaa !1111
  br label %136, !dbg !1788

65:                                               ; preds = %55
  %66 = tail call i32 @__overflow(ptr noundef nonnull %56, i32 noundef %22) #42, !dbg !1787
  %67 = icmp slt i32 %66, 0, !dbg !1789
  br i1 %67, label %68, label %136, !dbg !1788

68:                                               ; preds = %65
  %69 = tail call ptr @__errno_location() #45, !dbg !1790
  %70 = load i32, ptr %69, align 4, !dbg !1790, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %70, metadata !1519, metadata !DIExpression()), !dbg !1792
  %71 = load ptr, ptr @stdout, align 8, !dbg !1793, !tbaa !1024
  %72 = tail call i32 @fflush_unlocked(ptr noundef %71) #42, !dbg !1793
  %73 = load ptr, ptr @stdout, align 8, !dbg !1794, !tbaa !1024
  %74 = tail call i32 @fpurge(ptr noundef %73) #42, !dbg !1795
  %75 = load ptr, ptr @stdout, align 8, !dbg !1796, !tbaa !1024
  tail call void @clearerr_unlocked(ptr noundef %75) #42, !dbg !1796
  %76 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #42, !dbg !1797
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %70, ptr noundef %76) #42, !dbg !1797
  unreachable, !dbg !1797

77:                                               ; preds = %51
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !1588, metadata !DIExpression()), !dbg !1798
  %78 = add i64 %9, 1, !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !1730, metadata !DIExpression()), !dbg !1748
  %79 = load ptr, ptr @current_rp, align 8, !dbg !1801, !tbaa !1024
  %80 = getelementptr inbounds %struct.field_range_pair, ptr %79, i64 0, i32 1, !dbg !1802
  %81 = load i64, ptr %80, align 8, !dbg !1802, !tbaa !1599
  %82 = icmp ugt i64 %78, %81, !dbg !1803
  br i1 %82, label %83, label %85, !dbg !1804

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.field_range_pair, ptr %79, i64 1, !dbg !1805
  store ptr %84, ptr @current_rp, align 8, !dbg !1805, !tbaa !1024
  br label %85, !dbg !1806

85:                                               ; preds = %77, %83
  %86 = phi ptr [ %79, %77 ], [ %84, %83 ], !dbg !1807
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !1463, metadata !DIExpression()), !dbg !1809
  %87 = load i64, ptr %86, align 8, !dbg !1810, !tbaa !1472
  %88 = icmp ugt i64 %87, %78, !dbg !1811
  br i1 %88, label %8, label %89, !dbg !1812

89:                                               ; preds = %85
  %90 = load ptr, ptr @output_delimiter_string, align 8, !dbg !1813, !tbaa !1024
  %91 = icmp eq ptr %90, @output_delimiter_default, !dbg !1814
  br i1 %91, label %112, label %92, !dbg !1815

92:                                               ; preds = %89
  %93 = and i8 %7, 1, !dbg !1816
  %94 = icmp ne i8 %93, 0, !dbg !1816
  %95 = icmp eq i64 %87, %78
  %96 = and i1 %94, %95, !dbg !1817
  br i1 %96, label %97, label %112, !dbg !1817

97:                                               ; preds = %92
  %98 = load i64, ptr @output_delimiter_length, align 8, !dbg !1818
  %99 = load ptr, ptr @stdout, align 8, !dbg !1818, !tbaa !1024
  %100 = tail call i64 @fwrite_unlocked(ptr noundef %90, i64 noundef 1, i64 noundef %98, ptr noundef %99), !dbg !1818
  %101 = load i64, ptr @output_delimiter_length, align 8, !dbg !1819, !tbaa !1303
  %102 = icmp eq i64 %100, %101, !dbg !1820
  br i1 %102, label %112, label %103, !dbg !1821

103:                                              ; preds = %97
  %104 = tail call ptr @__errno_location() #45, !dbg !1822
  %105 = load i32, ptr %104, align 4, !dbg !1822, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %105, metadata !1519, metadata !DIExpression()), !dbg !1824
  %106 = load ptr, ptr @stdout, align 8, !dbg !1825, !tbaa !1024
  %107 = tail call i32 @fflush_unlocked(ptr noundef %106) #42, !dbg !1825
  %108 = load ptr, ptr @stdout, align 8, !dbg !1826, !tbaa !1024
  %109 = tail call i32 @fpurge(ptr noundef %108) #42, !dbg !1827
  %110 = load ptr, ptr @stdout, align 8, !dbg !1828, !tbaa !1024
  tail call void @clearerr_unlocked(ptr noundef %110) #42, !dbg !1828
  %111 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #42, !dbg !1829
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %105, ptr noundef %111) #42, !dbg !1829
  unreachable, !dbg !1829

112:                                              ; preds = %92, %97, %89
  %113 = phi i8 [ %7, %89 ], [ 1, %97 ], [ 1, %92 ], !dbg !1748
  tail call void @llvm.dbg.value(metadata i8 %113, metadata !1731, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i32 %20, metadata !1534, metadata !DIExpression()), !dbg !1830
  %114 = load ptr, ptr @stdout, align 8, !dbg !1833, !tbaa !1024
  %115 = getelementptr inbounds %struct._IO_FILE, ptr %114, i64 0, i32 5, !dbg !1833
  %116 = load ptr, ptr %115, align 8, !dbg !1833, !tbaa !1544
  %117 = getelementptr inbounds %struct._IO_FILE, ptr %114, i64 0, i32 6, !dbg !1833
  %118 = load ptr, ptr %117, align 8, !dbg !1833, !tbaa !1545
  %119 = icmp ult ptr %116, %118, !dbg !1833
  br i1 %119, label %120, label %123, !dbg !1833, !prof !1457

120:                                              ; preds = %112
  %121 = trunc i32 %20 to i8, !dbg !1833
  %122 = getelementptr inbounds i8, ptr %116, i64 1, !dbg !1833
  store ptr %122, ptr %115, align 8, !dbg !1833, !tbaa !1544
  store i8 %121, ptr %116, align 1, !dbg !1833, !tbaa !1111
  br label %48, !dbg !1834

123:                                              ; preds = %112
  %124 = and i32 %20, 255, !dbg !1833
  %125 = tail call i32 @__overflow(ptr noundef nonnull %114, i32 noundef %124) #42, !dbg !1833
  %126 = icmp slt i32 %125, 0, !dbg !1835
  br i1 %126, label %127, label %48, !dbg !1834

127:                                              ; preds = %123
  %128 = tail call ptr @__errno_location() #45, !dbg !1836
  %129 = load i32, ptr %128, align 4, !dbg !1836, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %129, metadata !1519, metadata !DIExpression()), !dbg !1838
  %130 = load ptr, ptr @stdout, align 8, !dbg !1839, !tbaa !1024
  %131 = tail call i32 @fflush_unlocked(ptr noundef %130) #42, !dbg !1839
  %132 = load ptr, ptr @stdout, align 8, !dbg !1840, !tbaa !1024
  %133 = tail call i32 @fpurge(ptr noundef %132) #42, !dbg !1841
  %134 = load ptr, ptr @stdout, align 8, !dbg !1842, !tbaa !1024
  tail call void @clearerr_unlocked(ptr noundef %134) #42, !dbg !1842
  %135 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #42, !dbg !1843
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %129, ptr noundef %135) #42, !dbg !1843
  unreachable, !dbg !1843

136:                                              ; preds = %65, %53, %62
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1730, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1731, metadata !DIExpression()), !dbg !1748
  ret void, !dbg !1844
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @cut_file(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !dbg !1845 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1849, metadata !DIExpression()), !dbg !1853
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1850, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata ptr %0, metadata !1113, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata ptr @.str.30, metadata !1119, metadata !DIExpression()), !dbg !1854
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.30) #43, !dbg !1857
  %4 = icmp eq i32 %3, 0, !dbg !1858
  br i1 %4, label %5, label %7, !dbg !1859

5:                                                ; preds = %2
  store i1 true, ptr @have_read_stdin, align 1, !dbg !1860
  %6 = load ptr, ptr @stdin, align 8, !dbg !1862, !tbaa !1024, !nonnull !1069, !noundef !1069
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1851, metadata !DIExpression()), !dbg !1853
  br label %13, !dbg !1863

7:                                                ; preds = %2
  %8 = tail call noalias ptr @rpl_fopen(ptr noundef %0, ptr noundef nonnull @.str.81) #42, !dbg !1864
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1851, metadata !DIExpression()), !dbg !1853
  %9 = icmp eq ptr %8, null, !dbg !1866
  br i1 %9, label %10, label %13, !dbg !1868

10:                                               ; preds = %7
  %11 = tail call ptr @__errno_location() #45, !dbg !1869
  %12 = load i32, ptr %11, align 4, !dbg !1869, !tbaa !1102
  br label %32, !dbg !1871

13:                                               ; preds = %7, %5
  %14 = phi ptr [ %6, %5 ], [ %8, %7 ], !dbg !1872
  tail call void @llvm.dbg.value(metadata ptr %14, metadata !1851, metadata !DIExpression()), !dbg !1853
  tail call void @fadvise(ptr noundef nonnull %14, i32 noundef 2) #42, !dbg !1873
  tail call void %1(ptr noundef nonnull %14) #42, !dbg !1874, !callees !1875
  %15 = tail call ptr @__errno_location() #45, !dbg !1876
  %16 = load i32, ptr %15, align 4, !dbg !1876, !tbaa !1102
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !1852, metadata !DIExpression()), !dbg !1853
  tail call void @llvm.dbg.value(metadata ptr %14, metadata !1492, metadata !DIExpression()), !dbg !1877
  %17 = load i32, ptr %14, align 8, !dbg !1880, !tbaa !1499
  %18 = and i32 %17, 32, !dbg !1881
  %19 = icmp eq i32 %18, 0, !dbg !1881
  %20 = select i1 %19, i32 0, i32 %16, !dbg !1882
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !1852, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata ptr %0, metadata !1113, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata ptr @.str.30, metadata !1119, metadata !DIExpression()), !dbg !1883
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.30) #43, !dbg !1886
  %22 = icmp eq i32 %21, 0, !dbg !1887
  br i1 %22, label %23, label %24, !dbg !1888

23:                                               ; preds = %13
  tail call void @clearerr_unlocked(ptr noundef nonnull %14) #42, !dbg !1889
  br label %29, !dbg !1889

24:                                               ; preds = %13
  %25 = tail call i32 @rpl_fclose(ptr noundef nonnull %14) #42, !dbg !1890
  %26 = icmp eq i32 %25, -1, !dbg !1892
  br i1 %26, label %27, label %29, !dbg !1893

27:                                               ; preds = %24
  %28 = load i32, ptr %15, align 4, !dbg !1894, !tbaa !1102
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1852, metadata !DIExpression()), !dbg !1853
  br label %29, !dbg !1895

29:                                               ; preds = %24, %27, %23
  %30 = phi i32 [ %20, %23 ], [ %28, %27 ], [ %20, %24 ], !dbg !1853
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !1852, metadata !DIExpression()), !dbg !1853
  %31 = icmp eq i32 %30, 0, !dbg !1896
  br i1 %31, label %35, label %32, !dbg !1898

32:                                               ; preds = %29, %10
  %33 = phi i32 [ %12, %10 ], [ %30, %29 ]
  %34 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #42, !dbg !1853
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %33, ptr noundef nonnull @.str.82, ptr noundef %34) #42, !dbg !1853
  br label %35, !dbg !1899

35:                                               ; preds = %32, %29
  %36 = phi i1 [ true, %29 ], [ false, %32 ], !dbg !1853
  ret i1 %36, !dbg !1899
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1900 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1904 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

declare !dbg !1905 i32 @__uflow(ptr noundef) local_unnamed_addr #3

declare !dbg !1906 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1909 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1910 noundef i32 @ungetc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1913 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare !dbg !1916 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @set_fields(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !521 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !570, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !571, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata i64 1, metadata !572, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata i64 0, metadata !573, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata i8 0, metadata !574, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata i8 0, metadata !575, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata i8 0, metadata !576, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata i8 0, metadata !577, metadata !DIExpression()), !dbg !1920
  %3 = and i32 %1, 1, !dbg !1921
  %4 = icmp ne i32 %3, 0, !dbg !1921
  br i1 %4, label %5, label %10, !dbg !1923

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %0, metadata !1924, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata ptr @.str.37, metadata !1927, metadata !DIExpression()), !dbg !1928
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.37) #43, !dbg !1930
  %7 = icmp eq i32 %6, 0, !dbg !1931
  br i1 %7, label %8, label %10, !dbg !1932

8:                                                ; preds = %5
  tail call void @llvm.dbg.value(metadata i64 1, metadata !573, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata i8 1, metadata !574, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata i8 1, metadata !576, metadata !DIExpression()), !dbg !1920
  %9 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1933
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !570, metadata !DIExpression()), !dbg !1920
  br label %10, !dbg !1935

10:                                               ; preds = %8, %5, %2
  %11 = phi i64 [ 0, %2 ], [ 0, %5 ], [ 1, %8 ]
  %12 = phi i8 [ 0, %2 ], [ 0, %5 ], [ 1, %8 ]
  %13 = phi ptr [ %0, %2 ], [ %0, %5 ], [ %9, %8 ]
  br label %14, !dbg !1936

14:                                               ; preds = %10, %168
  %15 = phi i64 [ %169, %168 ], [ 1, %10 ], !dbg !1920
  %16 = phi i64 [ %170, %168 ], [ %11, %10 ], !dbg !1920
  %17 = phi i8 [ %171, %168 ], [ %12, %10 ], !dbg !1937
  %18 = phi i8 [ %172, %168 ], [ 0, %10 ], !dbg !1938
  %19 = phi i8 [ %173, %168 ], [ %12, %10 ], !dbg !1920
  %20 = phi i1 [ %174, %168 ], [ false, %10 ], !dbg !1920
  %21 = phi ptr [ %175, %168 ], [ %13, %10 ], !dbg !1920
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !570, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !577, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata i8 %19, metadata !576, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata i8 %18, metadata !575, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata i8 %17, metadata !574, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata i64 %16, metadata !573, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !572, metadata !DIExpression()), !dbg !1920
  %22 = load i8, ptr %21, align 1, !dbg !1939, !tbaa !1111
  switch i8 %22, label %43 [
    i8 45, label %23
    i8 44, label %53
  ], !dbg !1940

23:                                               ; preds = %14
  tail call void @llvm.dbg.value(metadata i8 0, metadata !577, metadata !DIExpression()), !dbg !1920
  %24 = and i8 %19, 1, !dbg !1941
  %25 = icmp eq i8 %24, 0, !dbg !1941
  br i1 %25, label %31, label %26, !dbg !1944

26:                                               ; preds = %23
  %27 = and i32 %1, 4, !dbg !1945
  %28 = icmp eq i32 %27, 0, !dbg !1945
  %29 = select i1 %28, ptr @.str.2.38, ptr @.str.1.39, !dbg !1945
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %29, i32 noundef 5) #42, !dbg !1945
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %30) #42, !dbg !1945
  tail call void @usage(i32 noundef 1) #44, !dbg !1945
  unreachable, !dbg !1945

31:                                               ; preds = %23
  tail call void @llvm.dbg.value(metadata i8 1, metadata !576, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !570, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1920
  %32 = and i8 %17, 1, !dbg !1947
  %33 = icmp eq i8 %32, 0, !dbg !1947
  %34 = icmp ne i64 %16, 0
  %35 = or i1 %34, %33, !dbg !1949
  br i1 %35, label %41, label %36, !dbg !1949

36:                                               ; preds = %31
  %37 = and i32 %1, 4, !dbg !1950
  %38 = icmp eq i32 %37, 0, !dbg !1950
  %39 = select i1 %38, ptr @.str.4.40, ptr @.str.3.41, !dbg !1950
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %39, i32 noundef 5) #42, !dbg !1950
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %40) #42, !dbg !1950
  tail call void @usage(i32 noundef 1) #44, !dbg !1950
  unreachable, !dbg !1950

41:                                               ; preds = %31
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !570, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1920
  %42 = select i1 %33, i64 1, i64 %16, !dbg !1952
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !572, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata i64 0, metadata !573, metadata !DIExpression()), !dbg !1920
  br label %168, !dbg !1953

43:                                               ; preds = %14
  %44 = tail call ptr @__ctype_b_loc() #45, !dbg !1954
  %45 = load ptr, ptr %44, align 8, !dbg !1954, !tbaa !1024
  %46 = zext i8 %22 to i64
  %47 = getelementptr inbounds i16, ptr %45, i64 %46, !dbg !1954
  %48 = load i16, ptr %47, align 2, !dbg !1954, !tbaa !1143
  %49 = and i16 %48, 1, !dbg !1954
  %50 = icmp ne i16 %49, 0, !dbg !1954
  %51 = icmp eq i8 %22, 0
  %52 = or i1 %51, %50, !dbg !1955
  br i1 %52, label %53, label %125, !dbg !1955

53:                                               ; preds = %14, %43
  tail call void @llvm.dbg.value(metadata i8 0, metadata !577, metadata !DIExpression()), !dbg !1920
  %54 = and i8 %19, 1, !dbg !1956
  %55 = icmp eq i8 %54, 0, !dbg !1956
  br i1 %55, label %95, label %56, !dbg !1959

56:                                               ; preds = %53
  tail call void @llvm.dbg.value(metadata i8 0, metadata !576, metadata !DIExpression()), !dbg !1920
  %57 = and i8 %17, 1, !dbg !1960
  %58 = icmp ne i8 %57, 0, !dbg !1960
  %59 = and i8 %18, 1
  %60 = icmp ne i8 %59, 0
  %61 = select i1 %58, i1 true, i1 %60, !dbg !1963
  %62 = or i1 %4, %61, !dbg !1963
  %63 = select i1 %61, i64 %15, i64 1, !dbg !1963
  br i1 %62, label %66, label %64, !dbg !1963

64:                                               ; preds = %56
  %65 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5.42, i32 noundef 5) #42, !dbg !1964
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %65) #42, !dbg !1964
  tail call void @usage(i32 noundef 1) #44, !dbg !1964
  unreachable, !dbg !1964

66:                                               ; preds = %56
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !572, metadata !DIExpression()), !dbg !1920
  br i1 %60, label %79, label %67, !dbg !1968

67:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 %63, metadata !1969, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i64 -1, metadata !1974, metadata !DIExpression()), !dbg !1975
  %68 = load i64, ptr @n_frp, align 8, !dbg !1979, !tbaa !1303
  %69 = load i64, ptr @n_frp_allocated, align 8, !dbg !1981, !tbaa !1303
  %70 = icmp eq i64 %68, %69, !dbg !1982
  %71 = load ptr, ptr @frp, align 8, !dbg !1983, !tbaa !1024
  br i1 %70, label %72, label %75, !dbg !1984

72:                                               ; preds = %67
  %73 = tail call nonnull ptr @xpalloc(ptr noundef %71, ptr noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #42, !dbg !1985
  store ptr %73, ptr @frp, align 8, !dbg !1986, !tbaa !1024
  %74 = load i64, ptr @n_frp, align 8, !dbg !1987, !tbaa !1303
  br label %75, !dbg !1988

75:                                               ; preds = %67, %72
  %76 = phi i64 [ %74, %72 ], [ %68, %67 ], !dbg !1987
  %77 = phi ptr [ %73, %72 ], [ %71, %67 ], !dbg !1983
  %78 = getelementptr inbounds %struct.field_range_pair, ptr %77, i64 %76, !dbg !1983
  store i64 %63, ptr %78, align 8, !dbg !1989, !tbaa !1472
  br label %114, !dbg !1990

79:                                               ; preds = %66
  %80 = icmp ult i64 %16, %63, !dbg !1991
  br i1 %80, label %81, label %83, !dbg !1994

81:                                               ; preds = %79
  %82 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6.43, i32 noundef 5) #42, !dbg !1995
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %82) #42, !dbg !1995
  tail call void @usage(i32 noundef 1) #44, !dbg !1995
  unreachable, !dbg !1995

83:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i64 %63, metadata !1969, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i64 %16, metadata !1974, metadata !DIExpression()), !dbg !1997
  %84 = load i64, ptr @n_frp, align 8, !dbg !1999, !tbaa !1303
  %85 = load i64, ptr @n_frp_allocated, align 8, !dbg !2000, !tbaa !1303
  %86 = icmp eq i64 %84, %85, !dbg !2001
  %87 = load ptr, ptr @frp, align 8, !dbg !2002, !tbaa !1024
  br i1 %86, label %88, label %91, !dbg !2003

88:                                               ; preds = %83
  %89 = tail call nonnull ptr @xpalloc(ptr noundef %87, ptr noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #42, !dbg !2004
  store ptr %89, ptr @frp, align 8, !dbg !2005, !tbaa !1024
  %90 = load i64, ptr @n_frp, align 8, !dbg !2006, !tbaa !1303
  br label %91, !dbg !2007

91:                                               ; preds = %83, %88
  %92 = phi i64 [ %90, %88 ], [ %84, %83 ], !dbg !2006
  %93 = phi ptr [ %89, %88 ], [ %87, %83 ], !dbg !2002
  %94 = getelementptr inbounds %struct.field_range_pair, ptr %93, i64 %92, !dbg !2002
  store i64 %63, ptr %94, align 8, !dbg !2008, !tbaa !1472
  br label %114

95:                                               ; preds = %53
  %96 = icmp eq i64 %16, 0, !dbg !2009
  br i1 %96, label %97, label %102, !dbg !2012

97:                                               ; preds = %95
  %98 = and i32 %1, 4, !dbg !2013
  %99 = icmp eq i32 %98, 0, !dbg !2013
  %100 = select i1 %99, ptr @.str.4.40, ptr @.str.3.41, !dbg !2013
  %101 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %100, i32 noundef 5) #42, !dbg !2013
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %101) #42, !dbg !2013
  tail call void @usage(i32 noundef 1) #44, !dbg !2013
  unreachable, !dbg !2013

102:                                              ; preds = %95
  call void @llvm.dbg.value(metadata i64 %16, metadata !1969, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i64 %16, metadata !1974, metadata !DIExpression()), !dbg !2015
  %103 = load i64, ptr @n_frp, align 8, !dbg !2017, !tbaa !1303
  %104 = load i64, ptr @n_frp_allocated, align 8, !dbg !2018, !tbaa !1303
  %105 = icmp eq i64 %103, %104, !dbg !2019
  %106 = load ptr, ptr @frp, align 8, !dbg !2020, !tbaa !1024
  br i1 %105, label %107, label %110, !dbg !2021

107:                                              ; preds = %102
  %108 = tail call nonnull ptr @xpalloc(ptr noundef %106, ptr noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #42, !dbg !2022
  store ptr %108, ptr @frp, align 8, !dbg !2023, !tbaa !1024
  %109 = load i64, ptr @n_frp, align 8, !dbg !2024, !tbaa !1303
  br label %110, !dbg !2025

110:                                              ; preds = %102, %107
  %111 = phi i64 [ %109, %107 ], [ %103, %102 ], !dbg !2024
  %112 = phi ptr [ %108, %107 ], [ %106, %102 ], !dbg !2020
  %113 = getelementptr inbounds %struct.field_range_pair, ptr %112, i64 %111, !dbg !2020
  store i64 %16, ptr %113, align 8, !dbg !2026, !tbaa !1472
  tail call void @llvm.dbg.value(metadata i64 0, metadata !573, metadata !DIExpression()), !dbg !1920
  br label %114

114:                                              ; preds = %75, %91, %110
  %115 = phi ptr [ %77, %75 ], [ %93, %91 ], [ %112, %110 ]
  %116 = phi i64 [ -1, %75 ], [ %16, %91 ], [ %16, %110 ]
  %117 = phi i64 [ %63, %75 ], [ %63, %91 ], [ %15, %110 ], !dbg !2027
  %118 = phi i8 [ 0, %75 ], [ 0, %91 ], [ %19, %110 ], !dbg !1920
  %119 = load i64, ptr @n_frp, align 8, !dbg !2028, !tbaa !1303
  %120 = getelementptr inbounds %struct.field_range_pair, ptr %115, i64 %119, i32 1, !dbg !2030
  store i64 %116, ptr %120, align 8, !dbg !2031, !tbaa !1599
  %121 = load i64, ptr @n_frp, align 8, !dbg !2032, !tbaa !1303
  %122 = add nsw i64 %121, 1, !dbg !2032
  store i64 %122, ptr @n_frp, align 8, !dbg !2032, !tbaa !1303
  tail call void @llvm.dbg.value(metadata i8 %118, metadata !576, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata i64 0, metadata !573, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata i64 %117, metadata !572, metadata !DIExpression()), !dbg !1920
  %123 = load i8, ptr %21, align 1, !dbg !2033, !tbaa !1111
  %124 = icmp eq i8 %123, 0, !dbg !2035
  br i1 %124, label %176, label %168, !dbg !2036

125:                                              ; preds = %43
  %126 = sext i8 %22 to i32, !dbg !2037
  tail call void @llvm.dbg.value(metadata i32 %126, metadata !2038, metadata !DIExpression()), !dbg !2044
  %127 = add nsw i32 %126, -48, !dbg !2046
  %128 = icmp ult i32 %127, 10, !dbg !2046
  br i1 %128, label %129, label %162, !dbg !2047

129:                                              ; preds = %125
  %130 = load ptr, ptr @set_fields.num_start, align 8
  %131 = icmp ne ptr %130, null
  %132 = select i1 %20, i1 %131, i1 false, !dbg !2048
  br i1 %132, label %134, label %133, !dbg !2048

133:                                              ; preds = %129
  store ptr %21, ptr @set_fields.num_start, align 8, !dbg !2050, !tbaa !1024
  br label %134, !dbg !2051

134:                                              ; preds = %129, %133
  %135 = phi ptr [ %130, %129 ], [ %21, %133 ]
  tail call void @llvm.dbg.value(metadata i8 1, metadata !577, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !575, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !574, metadata !DIExpression()), !dbg !1920
  %136 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %16, i64 10), !dbg !2052
  %137 = extractvalue { i64, i1 } %136, 1, !dbg !2052
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !573, metadata !DIExpression()), !dbg !1920
  br i1 %137, label %154, label %138, !dbg !2052

138:                                              ; preds = %134
  %139 = and i8 %19, 1, !dbg !2053
  %140 = icmp eq i8 %139, 0, !dbg !2053
  %141 = select i1 %140, i8 %18, i8 1
  tail call void @llvm.dbg.value(metadata i8 %141, metadata !575, metadata !DIExpression()), !dbg !1920
  %142 = select i1 %140, i8 1, i8 %17
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !574, metadata !DIExpression()), !dbg !1920
  %143 = extractvalue { i64, i1 } %136, 0, !dbg !2052
  tail call void @llvm.dbg.value(metadata i64 %143, metadata !573, metadata !DIExpression()), !dbg !1920
  %144 = zext i64 %143 to i65, !dbg !2052
  %145 = zext nneg i32 %127 to i65, !dbg !2052
  %146 = tail call { i65, i1 } @llvm.sadd.with.overflow.i65(i65 %144, i65 %145), !dbg !2052
  %147 = extractvalue { i65, i1 } %146, 1, !dbg !2052
  %148 = extractvalue { i65, i1 } %146, 0, !dbg !2052
  %149 = trunc i65 %148 to i64, !dbg !2052
  %150 = icmp slt i65 %148, 0, !dbg !2052
  %151 = or i1 %147, %150, !dbg !2052
  tail call void @llvm.dbg.value(metadata i64 %149, metadata !573, metadata !DIExpression()), !dbg !1920
  %152 = icmp eq i64 %149, -1
  %153 = or i1 %151, %152, !dbg !2055
  br i1 %153, label %154, label %168, !dbg !2055

154:                                              ; preds = %138, %134
  %155 = tail call i64 @strspn(ptr noundef nonnull %135, ptr noundef nonnull @.str.7.44) #43, !dbg !2056
  %156 = tail call noalias nonnull ptr @ximemdup0(ptr noundef nonnull %135, i64 noundef %155) #42, !dbg !2057
  tail call void @llvm.dbg.value(metadata ptr %156, metadata !578, metadata !DIExpression()), !dbg !2058
  %157 = and i32 %1, 4, !dbg !2059
  %158 = icmp eq i32 %157, 0, !dbg !2059
  %159 = select i1 %158, ptr @.str.9.45, ptr @.str.8.46, !dbg !2059
  %160 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %159, i32 noundef 5) #42, !dbg !2059
  %161 = tail call ptr @quote(ptr noundef nonnull %156) #42, !dbg !2059
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %160, ptr noundef %161) #42, !dbg !2059
  tail call void @free(ptr noundef nonnull %156) #42, !dbg !2060
  tail call void @usage(i32 noundef 1) #44, !dbg !2061
  unreachable, !dbg !2061

162:                                              ; preds = %125
  %163 = and i32 %1, 4, !dbg !2062
  %164 = icmp eq i32 %163, 0, !dbg !2062
  %165 = select i1 %164, ptr @.str.11.47, ptr @.str.10.48, !dbg !2062
  %166 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %165, i32 noundef 5) #42, !dbg !2062
  %167 = tail call ptr @quote(ptr noundef nonnull %21) #42, !dbg !2062
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %166, ptr noundef %167) #42, !dbg !2062
  tail call void @usage(i32 noundef 1) #44, !dbg !2064
  unreachable, !dbg !2064

168:                                              ; preds = %138, %114, %41
  %169 = phi i64 [ %42, %41 ], [ %117, %114 ], [ %15, %138 ], !dbg !1920
  %170 = phi i64 [ 0, %41 ], [ 0, %114 ], [ %149, %138 ], !dbg !2065
  %171 = phi i8 [ %17, %41 ], [ 0, %114 ], [ %142, %138 ], !dbg !1920
  %172 = phi i8 [ %18, %41 ], [ 0, %114 ], [ %141, %138 ], !dbg !1920
  %173 = phi i8 [ 1, %41 ], [ %118, %114 ], [ %19, %138 ], !dbg !1920
  %174 = phi i1 [ false, %41 ], [ false, %114 ], [ true, %138 ], !dbg !2065
  %175 = getelementptr inbounds i8, ptr %21, i64 1, !dbg !2065
  tail call void @llvm.dbg.value(metadata ptr %175, metadata !570, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !577, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !576, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata i8 %172, metadata !575, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata i8 %171, metadata !574, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !573, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata i64 %169, metadata !572, metadata !DIExpression()), !dbg !1920
  br label %14, !dbg !1936, !llvm.loop !2066

176:                                              ; preds = %114
  %177 = icmp eq i64 %122, 0, !dbg !2068
  br i1 %177, label %178, label %183, !dbg !2070

178:                                              ; preds = %176
  %179 = and i32 %1, 4, !dbg !2071
  %180 = icmp eq i32 %179, 0, !dbg !2071
  %181 = select i1 %180, ptr @.str.13.49, ptr @.str.12.50, !dbg !2071
  %182 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %181, i32 noundef 5) #42, !dbg !2071
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %182) #42, !dbg !2071
  tail call void @usage(i32 noundef 1) #44, !dbg !2071
  unreachable, !dbg !2071

183:                                              ; preds = %176
  tail call void @qsort(ptr noundef nonnull %115, i64 noundef %122, i64 noundef 16, ptr noundef nonnull @compare_ranges) #42, !dbg !2073
  tail call void @llvm.dbg.value(metadata i64 0, metadata !586, metadata !DIExpression()), !dbg !2074
  %184 = load i64, ptr @n_frp, align 8, !dbg !2075, !tbaa !1303
  %185 = icmp sgt i64 %184, 0, !dbg !2076
  br i1 %185, label %191, label %186, !dbg !2077

186:                                              ; preds = %226, %183
  %187 = phi i64 [ %184, %183 ], [ %227, %226 ], !dbg !2075
  %188 = and i32 %1, 2, !dbg !2078
  %189 = icmp eq i32 %188, 0, !dbg !2078
  %190 = load ptr, ptr @frp, align 8, !dbg !2080, !tbaa !1024
  br i1 %189, label %300, label %229, !dbg !2081

191:                                              ; preds = %183, %226
  %192 = phi i64 [ %227, %226 ], [ %184, %183 ]
  %193 = phi i64 [ %194, %226 ], [ 0, %183 ]
  tail call void @llvm.dbg.value(metadata i64 %193, metadata !586, metadata !DIExpression()), !dbg !2074
  %194 = add nuw nsw i64 %193, 1, !dbg !2082
  tail call void @llvm.dbg.value(metadata i64 %194, metadata !588, metadata !DIExpression()), !dbg !2083
  %195 = icmp slt i64 %194, %192, !dbg !2084
  br i1 %195, label %196, label %226, !dbg !2086

196:                                              ; preds = %191
  %197 = load ptr, ptr @frp, align 8, !dbg !2087, !tbaa !1024
  %198 = getelementptr inbounds %struct.field_range_pair, ptr %197, i64 %194, !dbg !2087
  %199 = load i64, ptr %198, align 8, !dbg !2090, !tbaa !1472
  %200 = getelementptr inbounds %struct.field_range_pair, ptr %197, i64 %193, i32 1, !dbg !2091
  %201 = load i64, ptr %200, align 8, !dbg !2091, !tbaa !1599
  %202 = icmp ugt i64 %199, %201, !dbg !2092
  br i1 %202, label %226, label %210, !dbg !2093

203:                                              ; preds = %210
  %204 = load ptr, ptr @frp, align 8, !dbg !2087, !tbaa !1024
  %205 = getelementptr inbounds %struct.field_range_pair, ptr %204, i64 %194, !dbg !2087
  %206 = load i64, ptr %205, align 8, !dbg !2090, !tbaa !1472
  %207 = getelementptr inbounds %struct.field_range_pair, ptr %204, i64 %193, i32 1, !dbg !2091
  %208 = load i64, ptr %207, align 8, !dbg !2091, !tbaa !1599
  %209 = icmp ugt i64 %206, %208, !dbg !2092
  br i1 %209, label %226, label %210, !dbg !2093, !llvm.loop !2094

210:                                              ; preds = %196, %203
  %211 = phi i64 [ %208, %203 ], [ %201, %196 ]
  %212 = phi ptr [ %207, %203 ], [ %200, %196 ]
  %213 = phi ptr [ %205, %203 ], [ %198, %196 ]
  %214 = phi ptr [ %204, %203 ], [ %197, %196 ]
  %215 = getelementptr inbounds %struct.field_range_pair, ptr %214, i64 %194, i32 1, !dbg !2096
  %216 = load i64, ptr %215, align 8, !dbg !2096, !tbaa !1599
  %217 = tail call i64 @llvm.umax.i64(i64 %216, i64 %211), !dbg !2096
  store i64 %217, ptr %212, align 8, !dbg !2098, !tbaa !1599
  %218 = getelementptr inbounds %struct.field_range_pair, ptr %213, i64 1, !dbg !2099
  %219 = load i64, ptr @n_frp, align 8, !dbg !2100, !tbaa !1303
  %220 = sub i64 %219, %193, !dbg !2101
  %221 = shl i64 %220, 4, !dbg !2102
  %222 = add i64 %221, -32, !dbg !2102
  call void @llvm.dbg.value(metadata ptr %213, metadata !2103, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata ptr %218, metadata !2109, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i64 %222, metadata !2110, metadata !DIExpression()), !dbg !2111
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %213, ptr noundef nonnull align 1 %218, i64 noundef %222, i1 noundef false) #42, !dbg !2113
  %223 = load i64, ptr @n_frp, align 8, !dbg !2114, !tbaa !1303
  %224 = add nsw i64 %223, -1, !dbg !2114
  store i64 %224, ptr @n_frp, align 8, !dbg !2114, !tbaa !1303
  tail call void @llvm.dbg.value(metadata i64 %194, metadata !588, metadata !DIExpression()), !dbg !2083
  %225 = icmp slt i64 %194, %224, !dbg !2084
  br i1 %225, label %203, label %226, !dbg !2086, !llvm.loop !2094

226:                                              ; preds = %203, %210, %196, %191
  %227 = phi i64 [ %192, %191 ], [ %192, %196 ], [ %224, %210 ], [ %224, %203 ], !dbg !2075
  tail call void @llvm.dbg.value(metadata i64 %194, metadata !586, metadata !DIExpression()), !dbg !2074
  %228 = icmp slt i64 %194, %227, !dbg !2076
  br i1 %228, label %191, label %186, !dbg !2077, !llvm.loop !2115

229:                                              ; preds = %186
  call void @llvm.dbg.value(metadata ptr %190, metadata !2117, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %187, metadata !2120, metadata !DIExpression()), !dbg !2123
  store ptr null, ptr @frp, align 8, !dbg !2125, !tbaa !1024
  store i64 0, ptr @n_frp, align 8, !dbg !2126, !tbaa !1303
  store i64 0, ptr @n_frp_allocated, align 8, !dbg !2127, !tbaa !1303
  %230 = load i64, ptr %190, align 8, !dbg !2128, !tbaa !1472
  %231 = icmp ugt i64 %230, 1, !dbg !2130
  br i1 %231, label %232, label %241, !dbg !2131

232:                                              ; preds = %229
  %233 = add i64 %230, -1, !dbg !2132
  call void @llvm.dbg.value(metadata i64 1, metadata !1969, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %233, metadata !1974, metadata !DIExpression()), !dbg !2133
  %234 = tail call nonnull ptr @xpalloc(ptr noundef null, ptr noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #42, !dbg !2135
  store ptr %234, ptr @frp, align 8, !dbg !2136, !tbaa !1024
  %235 = load i64, ptr @n_frp, align 8, !dbg !2137, !tbaa !1303
  %236 = getelementptr inbounds %struct.field_range_pair, ptr %234, i64 %235, !dbg !2138
  store i64 1, ptr %236, align 8, !dbg !2139, !tbaa !1472
  %237 = load i64, ptr @n_frp, align 8, !dbg !2140, !tbaa !1303
  %238 = getelementptr inbounds %struct.field_range_pair, ptr %234, i64 %237, i32 1, !dbg !2141
  store i64 %233, ptr %238, align 8, !dbg !2142, !tbaa !1599
  %239 = load i64, ptr @n_frp, align 8, !dbg !2143, !tbaa !1303
  %240 = add nsw i64 %239, 1, !dbg !2143
  store i64 %240, ptr @n_frp, align 8, !dbg !2143, !tbaa !1303
  br label %241, !dbg !2144

241:                                              ; preds = %232, %229
  %242 = phi ptr [ %234, %232 ], [ null, %229 ]
  %243 = phi i64 [ %240, %232 ], [ 0, %229 ]
  call void @llvm.dbg.value(metadata i64 1, metadata !2121, metadata !DIExpression()), !dbg !2145
  %244 = icmp sgt i64 %187, 1, !dbg !2146
  br i1 %244, label %252, label %245, !dbg !2148

245:                                              ; preds = %277, %241
  %246 = phi ptr [ %242, %241 ], [ %278, %277 ]
  %247 = phi i64 [ %243, %241 ], [ %279, %277 ]
  %248 = getelementptr %struct.field_range_pair, ptr %190, i64 %187, !dbg !2149
  %249 = getelementptr %struct.field_range_pair, ptr %248, i64 -1, i32 1, !dbg !2151
  %250 = load i64, ptr %249, align 8, !dbg !2151, !tbaa !1599
  %251 = icmp eq i64 %250, -1, !dbg !2152
  br i1 %251, label %297, label %282, !dbg !2153

252:                                              ; preds = %241, %277
  %253 = phi ptr [ %278, %277 ], [ %242, %241 ]
  %254 = phi i64 [ %279, %277 ], [ %243, %241 ]
  %255 = phi i64 [ %280, %277 ], [ 1, %241 ]
  call void @llvm.dbg.value(metadata i64 %255, metadata !2121, metadata !DIExpression()), !dbg !2145
  %256 = getelementptr %struct.field_range_pair, ptr %190, i64 %255, !dbg !2154
  %257 = getelementptr %struct.field_range_pair, ptr %256, i64 -1, i32 1, !dbg !2157
  %258 = load i64, ptr %257, align 8, !dbg !2157, !tbaa !1599
  %259 = add i64 %258, 1, !dbg !2158
  %260 = load i64, ptr %256, align 8, !dbg !2159, !tbaa !1472
  %261 = icmp eq i64 %259, %260, !dbg !2160
  br i1 %261, label %277, label %262, !dbg !2161

262:                                              ; preds = %252
  %263 = add i64 %260, -1, !dbg !2162
  call void @llvm.dbg.value(metadata i64 %259, metadata !1969, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i64 %263, metadata !1974, metadata !DIExpression()), !dbg !2163
  %264 = load i64, ptr @n_frp_allocated, align 8, !dbg !2165, !tbaa !1303
  %265 = icmp eq i64 %254, %264, !dbg !2166
  br i1 %265, label %266, label %269, !dbg !2167

266:                                              ; preds = %262
  %267 = tail call nonnull ptr @xpalloc(ptr noundef %253, ptr noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #42, !dbg !2168
  store ptr %267, ptr @frp, align 8, !dbg !2169, !tbaa !1024
  %268 = load i64, ptr @n_frp, align 8, !dbg !2170, !tbaa !1303
  br label %269, !dbg !2171

269:                                              ; preds = %266, %262
  %270 = phi ptr [ %267, %266 ], [ %253, %262 ]
  %271 = phi i64 [ %268, %266 ], [ %254, %262 ], !dbg !2170
  %272 = getelementptr inbounds %struct.field_range_pair, ptr %270, i64 %271, !dbg !2172
  store i64 %259, ptr %272, align 8, !dbg !2173, !tbaa !1472
  %273 = load i64, ptr @n_frp, align 8, !dbg !2174, !tbaa !1303
  %274 = getelementptr inbounds %struct.field_range_pair, ptr %270, i64 %273, i32 1, !dbg !2175
  store i64 %263, ptr %274, align 8, !dbg !2176, !tbaa !1599
  %275 = load i64, ptr @n_frp, align 8, !dbg !2177, !tbaa !1303
  %276 = add nsw i64 %275, 1, !dbg !2177
  store i64 %276, ptr @n_frp, align 8, !dbg !2177, !tbaa !1303
  br label %277, !dbg !2178

277:                                              ; preds = %269, %252
  %278 = phi ptr [ %253, %252 ], [ %270, %269 ]
  %279 = phi i64 [ %254, %252 ], [ %276, %269 ]
  %280 = add nuw nsw i64 %255, 1, !dbg !2179
  call void @llvm.dbg.value(metadata i64 %280, metadata !2121, metadata !DIExpression()), !dbg !2145
  %281 = icmp eq i64 %280, %187, !dbg !2146
  br i1 %281, label %245, label %252, !dbg !2148, !llvm.loop !2180

282:                                              ; preds = %245
  %283 = add nuw i64 %250, 1, !dbg !2182
  call void @llvm.dbg.value(metadata i64 %283, metadata !1969, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i64 -1, metadata !1974, metadata !DIExpression()), !dbg !2183
  %284 = load i64, ptr @n_frp_allocated, align 8, !dbg !2185, !tbaa !1303
  %285 = icmp eq i64 %247, %284, !dbg !2186
  br i1 %285, label %286, label %289, !dbg !2187

286:                                              ; preds = %282
  %287 = tail call nonnull ptr @xpalloc(ptr noundef %246, ptr noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #42, !dbg !2188
  store ptr %287, ptr @frp, align 8, !dbg !2189, !tbaa !1024
  %288 = load i64, ptr @n_frp, align 8, !dbg !2190, !tbaa !1303
  br label %289, !dbg !2191

289:                                              ; preds = %286, %282
  %290 = phi i64 [ %288, %286 ], [ %247, %282 ], !dbg !2190
  %291 = phi ptr [ %287, %286 ], [ %246, %282 ], !dbg !2192
  %292 = getelementptr inbounds %struct.field_range_pair, ptr %291, i64 %290, !dbg !2192
  store i64 %283, ptr %292, align 8, !dbg !2193, !tbaa !1472
  %293 = load i64, ptr @n_frp, align 8, !dbg !2194, !tbaa !1303
  %294 = getelementptr inbounds %struct.field_range_pair, ptr %291, i64 %293, i32 1, !dbg !2195
  store i64 -1, ptr %294, align 8, !dbg !2196, !tbaa !1599
  %295 = load i64, ptr @n_frp, align 8, !dbg !2197, !tbaa !1303
  %296 = add nsw i64 %295, 1, !dbg !2197
  store i64 %296, ptr @n_frp, align 8, !dbg !2197, !tbaa !1303
  br label %297, !dbg !2198

297:                                              ; preds = %245, %289
  tail call void @free(ptr noundef nonnull %190) #42, !dbg !2199
  %298 = load i64, ptr @n_frp, align 8, !dbg !2200, !tbaa !1303
  %299 = load ptr, ptr @frp, align 8, !dbg !2080, !tbaa !1024
  br label %300, !dbg !2201

300:                                              ; preds = %297, %186
  %301 = phi ptr [ %299, %297 ], [ %190, %186 ], !dbg !2080
  %302 = phi i64 [ %298, %297 ], [ %187, %186 ], !dbg !2200
  %303 = add nsw i64 %302, 1, !dbg !2200
  store i64 %303, ptr @n_frp, align 8, !dbg !2200, !tbaa !1303
  %304 = shl i64 %303, 4, !dbg !2202
  %305 = tail call ptr @xrealloc(ptr noundef %301, i64 noundef %304) #47, !dbg !2203
  store ptr %305, ptr @frp, align 8, !dbg !2204, !tbaa !1024
  %306 = load i64, ptr @n_frp, align 8, !dbg !2205, !tbaa !1303
  %307 = getelementptr %struct.field_range_pair, ptr %305, i64 %306, !dbg !2206
  %308 = getelementptr %struct.field_range_pair, ptr %307, i64 -1, i32 1, !dbg !2207
  store i64 -1, ptr %308, align 8, !dbg !2208, !tbaa !1599
  %309 = load i64, ptr @n_frp, align 8, !dbg !2209, !tbaa !1303
  %310 = getelementptr %struct.field_range_pair, ptr %305, i64 %309, !dbg !2210
  %311 = getelementptr %struct.field_range_pair, ptr %310, i64 -1, !dbg !2210
  store i64 -1, ptr %311, align 8, !dbg !2211, !tbaa !1472
  ret void, !dbg !2212
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i65, i1 } @llvm.sadd.with.overflow.i65(i65, i65) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @compare_ranges(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !dbg !2213 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2217, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2218, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2219, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2222, metadata !DIExpression()), !dbg !2223
  %3 = load i64, ptr %0, align 8, !dbg !2224, !tbaa !1472
  %4 = load i64, ptr %1, align 8, !dbg !2224, !tbaa !1472
  %5 = icmp ugt i64 %3, %4, !dbg !2224
  %6 = zext i1 %5 to i32, !dbg !2224
  %7 = icmp ult i64 %3, %4, !dbg !2224
  %8 = sext i1 %7 to i32, !dbg !2224
  %9 = add nsw i32 %8, %6, !dbg !2224
  ret i32 %9, !dbg !2225
}

; Function Attrs: nofree
declare !dbg !2226 void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #15 !dbg !2231 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2233, metadata !DIExpression()), !dbg !2234
  store ptr %0, ptr @file_name, align 8, !dbg !2235, !tbaa !1024
  ret void, !dbg !2236
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #15 !dbg !2237 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2241, metadata !DIExpression()), !dbg !2242
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !2243, !tbaa !2244
  ret void, !dbg !2246
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2247 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2252, !tbaa !1024
  %2 = tail call i32 @close_stream(ptr noundef %1) #42, !dbg !2253
  %3 = icmp eq i32 %2, 0, !dbg !2254
  br i1 %3, label %22, label %4, !dbg !2255

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !2256, !tbaa !2244, !range !2257, !noundef !1069
  %6 = icmp eq i8 %5, 0, !dbg !2256
  br i1 %6, label %11, label %7, !dbg !2258

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #45, !dbg !2259
  %9 = load i32, ptr %8, align 4, !dbg !2259, !tbaa !1102
  %10 = icmp eq i32 %9, 32, !dbg !2260
  br i1 %10, label %22, label %11, !dbg !2261

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.1.84, i32 noundef 5) #42, !dbg !2262
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !2249, metadata !DIExpression()), !dbg !2263
  %13 = load ptr, ptr @file_name, align 8, !dbg !2264, !tbaa !1024
  %14 = icmp eq ptr %13, null, !dbg !2264
  %15 = tail call ptr @__errno_location() #45, !dbg !2266
  %16 = load i32, ptr %15, align 4, !dbg !2266, !tbaa !1102
  br i1 %14, label %19, label %17, !dbg !2267

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #42, !dbg !2268
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.85, ptr noundef %18, ptr noundef %12) #42, !dbg !2268
  br label %20, !dbg !2268

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.86, ptr noundef %12) #42, !dbg !2269
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2270, !tbaa !1102
  tail call void @_exit(i32 noundef %21) #44, !dbg !2271
  unreachable, !dbg !2271

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2272, !tbaa !1024
  %24 = tail call i32 @close_stream(ptr noundef %23) #42, !dbg !2274
  %25 = icmp eq i32 %24, 0, !dbg !2275
  br i1 %25, label %28, label %26, !dbg !2276

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2277, !tbaa !1102
  tail call void @_exit(i32 noundef %27) #44, !dbg !2278
  unreachable, !dbg !2278

28:                                               ; preds = %22
  ret void, !dbg !2279
}

; Function Attrs: noreturn
declare !dbg !2280 void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #17 !dbg !2282 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2286, metadata !DIExpression()), !dbg !2290
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2287, metadata !DIExpression()), !dbg !2290
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2288, metadata !DIExpression()), !dbg !2290
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2289, metadata !DIExpression()), !dbg !2290
  tail call fastcc void @flush_stdout(), !dbg !2291
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2292, !tbaa !1024
  %6 = icmp eq ptr %5, null, !dbg !2292
  br i1 %6, label %8, label %7, !dbg !2294

7:                                                ; preds = %4
  tail call void %5() #42, !dbg !2295
  br label %12, !dbg !2295

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2296, !tbaa !1024
  %10 = tail call ptr @getprogname() #43, !dbg !2296
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.87, ptr noundef %10) #42, !dbg !2296
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2298
  ret void, !dbg !2299
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2300 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2302, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i32 1, metadata !2304, metadata !DIExpression()), !dbg !2307
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #42, !dbg !2310
  %2 = icmp slt i32 %1, 0, !dbg !2311
  br i1 %2, label %6, label %3, !dbg !2312

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2313, !tbaa !1024
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #42, !dbg !2313
  br label %6, !dbg !2313

6:                                                ; preds = %3, %0
  ret void, !dbg !2314
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !2315 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !2321
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2317, metadata !DIExpression()), !dbg !2322
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2318, metadata !DIExpression()), !dbg !2322
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2319, metadata !DIExpression()), !dbg !2322
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2320, metadata !DIExpression()), !dbg !2322
  %6 = load ptr, ptr @stderr, align 8, !dbg !2323, !tbaa !1024
  call void @llvm.dbg.value(metadata ptr %6, metadata !2324, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata ptr %2, metadata !2364, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata ptr %3, metadata !2365, metadata !DIExpression()), !dbg !2366
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #42, !dbg !2368
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2369, !tbaa !1102
  %9 = add i32 %8, 1, !dbg !2369
  store i32 %9, ptr @error_message_count, align 4, !dbg !2369, !tbaa !1102
  %10 = icmp eq i32 %1, 0, !dbg !2370
  br i1 %10, label %20, label %11, !dbg !2372

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2373, metadata !DIExpression(), metadata !2321, metadata ptr %5, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i32 %1, metadata !2376, metadata !DIExpression()), !dbg !2381
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #42, !dbg !2383
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #42, !dbg !2384
  call void @llvm.dbg.value(metadata ptr %12, metadata !2377, metadata !DIExpression()), !dbg !2381
  %13 = icmp eq ptr %12, null, !dbg !2385
  br i1 %13, label %14, label %16, !dbg !2387

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.88, ptr noundef nonnull @.str.5.89, i32 noundef 5) #42, !dbg !2388
  call void @llvm.dbg.value(metadata ptr %15, metadata !2377, metadata !DIExpression()), !dbg !2381
  br label %16, !dbg !2389

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2381
  call void @llvm.dbg.value(metadata ptr %17, metadata !2377, metadata !DIExpression()), !dbg !2381
  %18 = load ptr, ptr @stderr, align 8, !dbg !2390, !tbaa !1024
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.90, ptr noundef %17) #42, !dbg !2390
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #42, !dbg !2391
  br label %20, !dbg !2392

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2393, !tbaa !1024
  call void @llvm.dbg.value(metadata i32 10, metadata !2394, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata ptr %21, metadata !2399, metadata !DIExpression()), !dbg !2400
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2402
  %23 = load ptr, ptr %22, align 8, !dbg !2402, !tbaa !1544
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2402
  %25 = load ptr, ptr %24, align 8, !dbg !2402, !tbaa !1545
  %26 = icmp ult ptr %23, %25, !dbg !2402
  br i1 %26, label %29, label %27, !dbg !2402, !prof !1457

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #42, !dbg !2402
  br label %31, !dbg !2402

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2402
  store ptr %30, ptr %22, align 8, !dbg !2402, !tbaa !1544
  store i8 10, ptr %23, align 1, !dbg !2402, !tbaa !1111
  br label %31, !dbg !2402

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2403, !tbaa !1024
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #42, !dbg !2403
  %34 = icmp eq i32 %0, 0, !dbg !2404
  br i1 %34, label %36, label %35, !dbg !2406

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #44, !dbg !2407
  unreachable, !dbg !2407

36:                                               ; preds = %31
  ret void, !dbg !2408
}

declare !dbg !2409 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #18

; Function Attrs: nounwind
declare !dbg !2412 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #18

declare !dbg !2415 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2419 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2432
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2426, metadata !DIExpression(), metadata !2432, metadata ptr %4, metadata !DIExpression()), !dbg !2433
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2423, metadata !DIExpression()), !dbg !2433
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2424, metadata !DIExpression()), !dbg !2433
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2425, metadata !DIExpression()), !dbg !2433
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #42, !dbg !2434
  call void @llvm.va_start(ptr nonnull %4), !dbg !2435
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #48, !dbg !2436
  call void @llvm.va_end(ptr nonnull %4), !dbg !2437
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #42, !dbg !2438
  ret void, !dbg !2438
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #17 !dbg !624 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !635, metadata !DIExpression()), !dbg !2439
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !636, metadata !DIExpression()), !dbg !2439
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !637, metadata !DIExpression()), !dbg !2439
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !638, metadata !DIExpression()), !dbg !2439
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !639, metadata !DIExpression()), !dbg !2439
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !640, metadata !DIExpression()), !dbg !2439
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2440, !tbaa !1102
  %8 = icmp eq i32 %7, 0, !dbg !2440
  br i1 %8, label %23, label %9, !dbg !2442

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2443, !tbaa !1102
  %11 = icmp eq i32 %10, %3, !dbg !2446
  br i1 %11, label %12, label %22, !dbg !2447

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2448, !tbaa !1024
  %14 = icmp eq ptr %13, %2, !dbg !2449
  br i1 %14, label %36, label %15, !dbg !2450

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2451
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2452
  br i1 %18, label %19, label %22, !dbg !2452

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #43, !dbg !2453
  %21 = icmp eq i32 %20, 0, !dbg !2454
  br i1 %21, label %36, label %22, !dbg !2455

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2456, !tbaa !1024
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2457, !tbaa !1102
  br label %23, !dbg !2458

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2459
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2460, !tbaa !1024
  %25 = icmp eq ptr %24, null, !dbg !2460
  br i1 %25, label %27, label %26, !dbg !2462

26:                                               ; preds = %23
  tail call void %24() #42, !dbg !2463
  br label %31, !dbg !2463

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2464, !tbaa !1024
  %29 = tail call ptr @getprogname() #43, !dbg !2464
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.93, ptr noundef %29) #42, !dbg !2464
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2466, !tbaa !1024
  %33 = icmp eq ptr %2, null, !dbg !2466
  %34 = select i1 %33, ptr @.str.3.94, ptr @.str.2.95, !dbg !2466
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #42, !dbg !2466
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2467
  br label %36, !dbg !2468

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2468
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2469 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2479
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2478, metadata !DIExpression(), metadata !2479, metadata ptr %6, metadata !DIExpression()), !dbg !2480
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2473, metadata !DIExpression()), !dbg !2480
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2474, metadata !DIExpression()), !dbg !2480
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2475, metadata !DIExpression()), !dbg !2480
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2476, metadata !DIExpression()), !dbg !2480
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2477, metadata !DIExpression()), !dbg !2480
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #42, !dbg !2481
  call void @llvm.va_start(ptr nonnull %6), !dbg !2482
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #48, !dbg !2483
  call void @llvm.va_end(ptr nonnull %6), !dbg !2484
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #42, !dbg !2485
  ret void, !dbg !2485
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2486 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2492, metadata !DIExpression()), !dbg !2496
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2493, metadata !DIExpression()), !dbg !2496
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2494, metadata !DIExpression()), !dbg !2496
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2495, metadata !DIExpression()), !dbg !2496
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #42, !dbg !2497
  ret void, !dbg !2498
}

; Function Attrs: nounwind
declare !dbg !2499 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2502 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2540, metadata !DIExpression()), !dbg !2542
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2541, metadata !DIExpression()), !dbg !2542
  %3 = icmp eq ptr %0, null, !dbg !2543
  br i1 %3, label %7, label %4, !dbg !2545

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !2546
  call void @llvm.dbg.value(metadata i32 %5, metadata !2492, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i64 0, metadata !2493, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i64 0, metadata !2494, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i32 %1, metadata !2495, metadata !DIExpression()), !dbg !2547
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #42, !dbg !2549
  br label %7, !dbg !2550

7:                                                ; preds = %4, %2
  ret void, !dbg !2551
}

; Function Attrs: nofree nounwind
declare !dbg !2552 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2555 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2593, metadata !DIExpression()), !dbg !2597
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2594, metadata !DIExpression()), !dbg !2597
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !2598
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2595, metadata !DIExpression()), !dbg !2597
  %3 = icmp slt i32 %2, 0, !dbg !2599
  br i1 %3, label %4, label %6, !dbg !2601

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2602
  br label %24, !dbg !2603

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #42, !dbg !2604
  %8 = icmp eq i32 %7, 0, !dbg !2604
  br i1 %8, label %13, label %9, !dbg !2606

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !2607
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #42, !dbg !2608
  %12 = icmp eq i64 %11, -1, !dbg !2609
  br i1 %12, label %16, label %13, !dbg !2610

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #42, !dbg !2611
  %15 = icmp eq i32 %14, 0, !dbg !2611
  br i1 %15, label %16, label %18, !dbg !2612

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2594, metadata !DIExpression()), !dbg !2597
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2596, metadata !DIExpression()), !dbg !2597
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2613
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !2596, metadata !DIExpression()), !dbg !2597
  br label %24, !dbg !2614

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #45, !dbg !2615
  %20 = load i32, ptr %19, align 4, !dbg !2615, !tbaa !1102
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !2594, metadata !DIExpression()), !dbg !2597
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2596, metadata !DIExpression()), !dbg !2597
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2613
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !2596, metadata !DIExpression()), !dbg !2597
  %22 = icmp eq i32 %20, 0, !dbg !2616
  br i1 %22, label %24, label %23, !dbg !2614

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2618, !tbaa !1102
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !2596, metadata !DIExpression()), !dbg !2597
  br label %24, !dbg !2620

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2597
  ret i32 %25, !dbg !2621
}

; Function Attrs: nofree nounwind
declare !dbg !2622 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2623 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2625 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2628 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2666, metadata !DIExpression()), !dbg !2667
  %2 = icmp eq ptr %0, null, !dbg !2668
  br i1 %2, label %6, label %3, !dbg !2670

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #42, !dbg !2671
  %5 = icmp eq i32 %4, 0, !dbg !2671
  br i1 %5, label %6, label %8, !dbg !2672

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2673
  br label %16, !dbg !2674

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2675, metadata !DIExpression()), !dbg !2680
  %9 = load i32, ptr %0, align 8, !dbg !2682, !tbaa !1499
  %10 = and i32 %9, 256, !dbg !2684
  %11 = icmp eq i32 %10, 0, !dbg !2684
  br i1 %11, label %14, label %12, !dbg !2685

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #42, !dbg !2686
  br label %14, !dbg !2686

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2687
  br label %16, !dbg !2688

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2667
  ret i32 %17, !dbg !2689
}

; Function Attrs: nofree nounwind
declare !dbg !2690 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2691 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2729, metadata !DIExpression()), !dbg !2730
  tail call void @__fpurge(ptr noundef nonnull %0) #42, !dbg !2731
  ret i32 0, !dbg !2732
}

; Function Attrs: nounwind
declare !dbg !2733 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2736 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2774, metadata !DIExpression()), !dbg !2780
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2775, metadata !DIExpression()), !dbg !2780
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2776, metadata !DIExpression()), !dbg !2780
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2781
  %5 = load ptr, ptr %4, align 8, !dbg !2781, !tbaa !1456
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2782
  %7 = load ptr, ptr %6, align 8, !dbg !2782, !tbaa !1454
  %8 = icmp eq ptr %5, %7, !dbg !2783
  br i1 %8, label %9, label %27, !dbg !2784

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2785
  %11 = load ptr, ptr %10, align 8, !dbg !2785, !tbaa !1544
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2786
  %13 = load ptr, ptr %12, align 8, !dbg !2786, !tbaa !2787
  %14 = icmp eq ptr %11, %13, !dbg !2788
  br i1 %14, label %15, label %27, !dbg !2789

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2790
  %17 = load ptr, ptr %16, align 8, !dbg !2790, !tbaa !2791
  %18 = icmp eq ptr %17, null, !dbg !2792
  br i1 %18, label %19, label %27, !dbg !2793

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !2794
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #42, !dbg !2795
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2777, metadata !DIExpression()), !dbg !2796
  %22 = icmp eq i64 %21, -1, !dbg !2797
  br i1 %22, label %29, label %23, !dbg !2799

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2800, !tbaa !1499
  %25 = and i32 %24, -17, !dbg !2800
  store i32 %25, ptr %0, align 8, !dbg !2800, !tbaa !1499
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2801
  store i64 %21, ptr %26, align 8, !dbg !2802, !tbaa !2803
  br label %29, !dbg !2804

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2805
  br label %29, !dbg !2806

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2780
  ret i32 %30, !dbg !2807
}

; Function Attrs: nofree nounwind
declare !dbg !2808 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @getndelim2(ptr nocapture noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #10 !dbg !2811 {
  %8 = alloca i64, align 8, !DIAssignID !2883
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2865, metadata !DIExpression(), metadata !2883, metadata ptr %8, metadata !DIExpression()), !dbg !2884
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2849, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2850, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2851, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2852, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2853, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2854, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2855, metadata !DIExpression()), !dbg !2885
  %9 = load ptr, ptr %0, align 8, !dbg !2886, !tbaa !1024
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2856, metadata !DIExpression()), !dbg !2885
  %10 = load i64, ptr %1, align 8, !dbg !2887, !tbaa !1303
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !2857, metadata !DIExpression()), !dbg !2885
  %11 = icmp eq ptr %9, null, !dbg !2888
  br i1 %11, label %12, label %16, !dbg !2890

12:                                               ; preds = %7
  %13 = tail call i64 @llvm.umin.i64(i64 %3, i64 64), !dbg !2891
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !2857, metadata !DIExpression()), !dbg !2885
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #49, !dbg !2893
  tail call void @llvm.dbg.value(metadata ptr %14, metadata !2856, metadata !DIExpression()), !dbg !2885
  %15 = icmp eq ptr %14, null, !dbg !2894
  br i1 %15, label %155, label %16, !dbg !2896

16:                                               ; preds = %12, %7
  %17 = phi i64 [ %10, %7 ], [ %13, %12 ], !dbg !2885
  %18 = phi ptr [ %9, %7 ], [ %14, %12 ], !dbg !2885
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !2856, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !2857, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 -1, metadata !2858, metadata !DIExpression()), !dbg !2885
  %19 = icmp ult i64 %17, %2, !dbg !2897
  br i1 %19, label %141, label %20, !dbg !2899

20:                                               ; preds = %16
  %21 = sub i64 %17, %2, !dbg !2900
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2859, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %18, i64 %2), metadata !2860, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2885
  %22 = icmp ne i64 %21, 0, !dbg !2901
  %23 = icmp ult i64 %17, %3
  %24 = or i1 %23, %22, !dbg !2903
  br i1 %24, label %25, label %141, !dbg !2903

25:                                               ; preds = %20
  %26 = getelementptr inbounds i8, ptr %18, i64 %2, !dbg !2904
  tail call void @llvm.dbg.value(metadata ptr %26, metadata !2860, metadata !DIExpression()), !dbg !2885
  %27 = icmp eq i32 %4, -1, !dbg !2905
  %28 = icmp eq i32 %5, -1, !dbg !2907
  %29 = select i1 %28, i32 %4, i32 %5, !dbg !2907
  %30 = select i1 %27, i32 %5, i32 %29, !dbg !2907
  %31 = select i1 %27, i32 %5, i32 %4, !dbg !2907
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !2853, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !2854, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2861, metadata !DIExpression()), !dbg !2885
  %32 = icmp eq i32 %31, -1
  %33 = getelementptr inbounds %struct._IO_FILE, ptr %6, i64 0, i32 1
  %34 = getelementptr inbounds %struct._IO_FILE, ptr %6, i64 0, i32 2
  %35 = xor i64 %2, -9223372036854775808
  br label %36, !dbg !2908

36:                                               ; preds = %134, %25
  %37 = phi i64 [ %17, %25 ], [ %112, %134 ], !dbg !2885
  %38 = phi i64 [ %21, %25 ], [ %128, %134 ], !dbg !2885
  %39 = phi ptr [ %26, %25 ], [ %129, %134 ], !dbg !2885
  %40 = phi i8 [ 0, %25 ], [ %77, %134 ], !dbg !2885
  %41 = phi i32 [ undef, %25 ], [ %78, %134 ]
  %42 = phi ptr [ %18, %25 ], [ %115, %134 ], !dbg !2885
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !2856, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2862, metadata !DIExpression()), !dbg !2884
  tail call void @llvm.dbg.value(metadata i8 %40, metadata !2861, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata ptr %39, metadata !2860, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !2859, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !2857, metadata !DIExpression()), !dbg !2885
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #42, !dbg !2909
  %43 = call ptr @freadptr(ptr noundef %6, ptr noundef nonnull %8) #42, !dbg !2910
  tail call void @llvm.dbg.value(metadata ptr %43, metadata !2864, metadata !DIExpression()), !dbg !2884
  %44 = icmp eq ptr %43, null, !dbg !2911
  br i1 %44, label %55, label %45, !dbg !2912

45:                                               ; preds = %36
  %46 = load i64, ptr %8, align 8, !dbg !2913, !tbaa !1303
  br i1 %32, label %75, label %47, !dbg !2914

47:                                               ; preds = %45
  %48 = call ptr @memchr2(ptr noundef nonnull %43, i32 noundef %31, i32 noundef %30, i64 noundef %46) #43, !dbg !2915
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !2866, metadata !DIExpression()), !dbg !2916
  %49 = icmp eq ptr %48, null, !dbg !2917
  br i1 %49, label %75, label %50, !dbg !2919

50:                                               ; preds = %47
  %51 = ptrtoint ptr %48 to i64, !dbg !2920
  %52 = ptrtoint ptr %43 to i64, !dbg !2920
  %53 = sub i64 %51, %52, !dbg !2922
  %54 = add i64 %53, 1, !dbg !2922
  store i64 %54, ptr %8, align 8, !dbg !2923, !tbaa !1303, !DIAssignID !2924
  call void @llvm.dbg.assign(metadata i64 %54, metadata !2865, metadata !DIExpression(), metadata !2924, metadata ptr %8, metadata !DIExpression()), !dbg !2884
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2861, metadata !DIExpression()), !dbg !2885
  br label %75, !dbg !2925

55:                                               ; preds = %36
  call void @llvm.dbg.value(metadata ptr %6, metadata !2926, metadata !DIExpression()), !dbg !2931
  %56 = load ptr, ptr %33, align 8, !dbg !2934, !tbaa !1454
  %57 = load ptr, ptr %34, align 8, !dbg !2934, !tbaa !1456
  %58 = icmp ult ptr %56, %57, !dbg !2934
  br i1 %58, label %59, label %63, !dbg !2934, !prof !1457

59:                                               ; preds = %55
  %60 = getelementptr inbounds i8, ptr %56, i64 1, !dbg !2934
  store ptr %60, ptr %33, align 8, !dbg !2934, !tbaa !1454
  %61 = load i8, ptr %56, align 1, !dbg !2934, !tbaa !1111
  %62 = zext i8 %61 to i32, !dbg !2934
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !2862, metadata !DIExpression()), !dbg !2884
  br label %69, !dbg !2935

63:                                               ; preds = %55
  %64 = call i32 @__uflow(ptr noundef nonnull %6) #42, !dbg !2934
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !2862, metadata !DIExpression()), !dbg !2884
  %65 = icmp eq i32 %64, -1, !dbg !2936
  br i1 %65, label %66, label %69, !dbg !2935

66:                                               ; preds = %63
  %67 = icmp eq ptr %39, %42, !dbg !2938
  br i1 %67, label %137, label %68, !dbg !2941

68:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !2856, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !2862, metadata !DIExpression()), !dbg !2884
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2861, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata ptr %39, metadata !2860, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !2859, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !2857, metadata !DIExpression()), !dbg !2885
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #42, !dbg !2942
  br label %144

69:                                               ; preds = %59, %63
  %70 = phi i32 [ %62, %59 ], [ %64, %63 ]
  %71 = icmp eq i32 %70, %31, !dbg !2943
  %72 = icmp eq i32 %70, %30
  %73 = or i1 %71, %72, !dbg !2945
  %74 = select i1 %73, i8 1, i8 %40, !dbg !2945
  tail call void @llvm.dbg.value(metadata i8 %74, metadata !2861, metadata !DIExpression()), !dbg !2885
  store i64 1, ptr %8, align 8, !dbg !2946, !tbaa !1303, !DIAssignID !2947
  call void @llvm.dbg.assign(metadata i64 1, metadata !2865, metadata !DIExpression(), metadata !2947, metadata ptr %8, metadata !DIExpression()), !dbg !2884
  br label %75

75:                                               ; preds = %47, %50, %45, %69
  %76 = phi i64 [ %46, %45 ], [ 1, %69 ], [ %54, %50 ], [ %46, %47 ], !dbg !2913
  %77 = phi i8 [ %40, %45 ], [ %74, %69 ], [ 1, %50 ], [ %40, %47 ], !dbg !2885
  %78 = phi i32 [ %41, %45 ], [ %70, %69 ], [ %41, %50 ], [ %41, %47 ]
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !2862, metadata !DIExpression()), !dbg !2884
  tail call void @llvm.dbg.value(metadata i8 %77, metadata !2861, metadata !DIExpression()), !dbg !2885
  %79 = add i64 %76, 1, !dbg !2948
  %80 = icmp ult i64 %38, %79, !dbg !2949
  %81 = icmp ult i64 %37, %3
  %82 = select i1 %80, i1 %81, i1 false, !dbg !2950
  br i1 %82, label %83, label %111, !dbg !2950

83:                                               ; preds = %75
  %84 = icmp ult i64 %37, 64, !dbg !2951
  %85 = or disjoint i64 %37, 64, !dbg !2952
  %86 = shl i64 %37, 1, !dbg !2952
  %87 = select i1 %84, i64 %85, i64 %86, !dbg !2952
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !2871, metadata !DIExpression()), !dbg !2953
  %88 = ptrtoint ptr %39 to i64, !dbg !2954
  %89 = ptrtoint ptr %42 to i64, !dbg !2954
  %90 = sub i64 %88, %89, !dbg !2954
  %91 = sub i64 %87, %90, !dbg !2956
  %92 = icmp ult i64 %91, %79, !dbg !2957
  %93 = add i64 %90, 1, !dbg !2958
  %94 = add i64 %93, %76, !dbg !2958
  %95 = select i1 %92, i64 %94, i64 %87, !dbg !2958
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !2871, metadata !DIExpression()), !dbg !2953
  %96 = icmp ult i64 %37, %95, !dbg !2959
  %97 = call i64 @llvm.umin.i64(i64 %95, i64 %3), !dbg !2961
  %98 = select i1 %96, i64 %97, i64 %3, !dbg !2961
  tail call void @llvm.dbg.value(metadata i64 %98, metadata !2871, metadata !DIExpression()), !dbg !2953
  %99 = sub i64 %98, %2, !dbg !2962
  %100 = icmp slt i64 %99, 0, !dbg !2963
  br i1 %100, label %101, label %103, !dbg !2964

101:                                              ; preds = %83
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !2875, metadata !DIExpression()), !dbg !2965
  %102 = icmp eq i64 %37, %35, !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 undef, metadata !2871, metadata !DIExpression()), !dbg !2953
  br i1 %102, label %140, label %103

103:                                              ; preds = %101, %83
  %104 = phi i64 [ %35, %101 ], [ %98, %83 ], !dbg !2968
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !2871, metadata !DIExpression()), !dbg !2953
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %104, i64 %90), metadata !2859, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2885
  call void @llvm.dbg.value(metadata ptr %42, metadata !2969, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %104, metadata !2975, metadata !DIExpression()), !dbg !2976
  %105 = call i64 @llvm.umax.i64(i64 %104, i64 1), !dbg !2978
  %106 = call ptr @realloc(ptr noundef %42, i64 noundef %105) #47, !dbg !2979
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !2874, metadata !DIExpression()), !dbg !2953
  %107 = icmp eq ptr %106, null, !dbg !2980
  br i1 %107, label %137, label %108, !dbg !2982

108:                                              ; preds = %103
  %109 = sub i64 %104, %90, !dbg !2983
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !2859, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !2856, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !2857, metadata !DIExpression()), !dbg !2885
  %110 = getelementptr inbounds i8, ptr %106, i64 %90, !dbg !2984
  tail call void @llvm.dbg.value(metadata ptr %110, metadata !2860, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !2859, metadata !DIExpression()), !dbg !2885
  br label %111

111:                                              ; preds = %108, %75
  %112 = phi i64 [ %37, %75 ], [ %104, %108 ], !dbg !2885
  %113 = phi i64 [ %38, %75 ], [ %109, %108 ], !dbg !2885
  %114 = phi ptr [ %39, %75 ], [ %110, %108 ], !dbg !2885
  %115 = phi ptr [ %42, %75 ], [ %106, %108 ], !dbg !2885
  tail call void @llvm.dbg.value(metadata ptr %115, metadata !2856, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata ptr %114, metadata !2860, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 %113, metadata !2859, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !2857, metadata !DIExpression()), !dbg !2885
  %116 = icmp ugt i64 %113, 1, !dbg !2985
  br i1 %116, label %117, label %127, !dbg !2986

117:                                              ; preds = %111
  %118 = add i64 %113, -1, !dbg !2987
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !2878, metadata !DIExpression()), !dbg !2988
  %119 = load i64, ptr %8, align 8, !dbg !2989, !tbaa !1303
  %120 = call i64 @llvm.umin.i64(i64 %119, i64 %118), !dbg !2991
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !2878, metadata !DIExpression()), !dbg !2988
  br i1 %44, label %122, label %121, !dbg !2992

121:                                              ; preds = %117
  call void @llvm.dbg.value(metadata ptr %114, metadata !2993, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata ptr %43, metadata !2999, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i64 %120, metadata !3000, metadata !DIExpression()), !dbg !3001
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %114, ptr noundef nonnull align 1 %43, i64 noundef %120, i1 noundef false) #42, !dbg !3004
  br label %124, !dbg !3005

122:                                              ; preds = %117
  %123 = trunc i32 %78 to i8, !dbg !3006
  store i8 %123, ptr %114, align 1, !dbg !3007, !tbaa !1111
  br label %124

124:                                              ; preds = %122, %121
  %125 = getelementptr inbounds i8, ptr %114, i64 %120, !dbg !3008
  tail call void @llvm.dbg.value(metadata ptr %125, metadata !2860, metadata !DIExpression()), !dbg !2885
  %126 = sub i64 %113, %120, !dbg !3009
  tail call void @llvm.dbg.value(metadata i64 %126, metadata !2859, metadata !DIExpression()), !dbg !2885
  br label %127, !dbg !3010

127:                                              ; preds = %124, %111
  %128 = phi i64 [ %126, %124 ], [ %113, %111 ], !dbg !2884
  %129 = phi ptr [ %125, %124 ], [ %114, %111 ], !dbg !2884
  tail call void @llvm.dbg.value(metadata ptr %129, metadata !2860, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !2859, metadata !DIExpression()), !dbg !2885
  br i1 %44, label %134, label %130, !dbg !3011

130:                                              ; preds = %127
  %131 = load i64, ptr %8, align 8, !dbg !3013, !tbaa !1303
  %132 = call i32 @freadseek(ptr noundef %6, i64 noundef %131) #42, !dbg !3014
  %133 = icmp eq i32 %132, 0, !dbg !3014
  br i1 %133, label %134, label %137, !dbg !3015

134:                                              ; preds = %127, %130
  tail call void @llvm.dbg.value(metadata ptr %115, metadata !2856, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !2862, metadata !DIExpression()), !dbg !2884
  tail call void @llvm.dbg.value(metadata i8 %77, metadata !2861, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata ptr %129, metadata !2860, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !2859, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !2857, metadata !DIExpression()), !dbg !2885
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #42, !dbg !2942
  %135 = and i8 %77, 1, !dbg !3016
  %136 = icmp eq i8 %135, 0, !dbg !3016
  br i1 %136, label %36, label %144, !dbg !3017, !llvm.loop !3018

137:                                              ; preds = %130, %103, %66
  %138 = phi i64 [ %37, %66 ], [ %37, %103 ], [ %112, %130 ]
  %139 = phi ptr [ %39, %66 ], [ %42, %103 ], [ %115, %130 ]
  tail call void @llvm.dbg.value(metadata ptr %139, metadata !2856, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !2862, metadata !DIExpression()), !dbg !2884
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2861, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !2860, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !2859, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 %138, metadata !2857, metadata !DIExpression()), !dbg !2885
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #42, !dbg !2942
  br label %141

140:                                              ; preds = %101
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !2856, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !2862, metadata !DIExpression()), !dbg !2884
  tail call void @llvm.dbg.value(metadata i8 %77, metadata !2861, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !2860, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !2859, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !2857, metadata !DIExpression()), !dbg !2885
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #42, !dbg !2942
  br label %141

141:                                              ; preds = %140, %16, %20, %137
  %142 = phi i64 [ %138, %137 ], [ %17, %20 ], [ %35, %140 ], [ %17, %16 ]
  %143 = phi ptr [ %139, %137 ], [ %18, %20 ], [ %42, %140 ], [ %18, %16 ]
  tail call void @llvm.dbg.value(metadata ptr %143, metadata !2856, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 -1, metadata !2858, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !2857, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.label(metadata !2882), !dbg !3020
  store ptr %143, ptr %0, align 8, !dbg !3021, !tbaa !1024
  store i64 %142, ptr %1, align 8, !dbg !3022, !tbaa !1303
  br label %155, !dbg !3023

144:                                              ; preds = %134, %68
  %145 = phi ptr [ %42, %68 ], [ %115, %134 ]
  %146 = phi ptr [ %39, %68 ], [ %129, %134 ]
  %147 = phi i64 [ %37, %68 ], [ %112, %134 ]
  %148 = freeze ptr %145, !dbg !3024
  store i8 0, ptr %146, align 1, !dbg !3025, !tbaa !1111
  %149 = getelementptr i8, ptr %148, i64 %2, !dbg !3024
  %150 = ptrtoint ptr %146 to i64, !dbg !3026
  %151 = ptrtoint ptr %149 to i64, !dbg !3026
  %152 = sub i64 %150, %151, !dbg !3026
  tail call void @llvm.dbg.value(metadata ptr %145, metadata !2856, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !2858, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 %147, metadata !2857, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.label(metadata !2882), !dbg !3020
  store ptr %148, ptr %0, align 8, !dbg !3021, !tbaa !1024
  store i64 %147, ptr %1, align 8, !dbg !3022, !tbaa !1303
  %153 = icmp eq ptr %146, %149, !dbg !3023
  %154 = select i1 %153, i64 -1, i64 %152, !dbg !3023
  br label %155, !dbg !3023

155:                                              ; preds = %144, %141, %12
  %156 = phi i64 [ -1, %12 ], [ -1, %141 ], [ %154, %144 ], !dbg !2885
  ret i64 %156, !dbg !3027
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3028 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3031 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #22 !dbg !3032 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !3034, !tbaa !1024
  ret ptr %1, !dbg !3035
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @memchr2(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #23 !dbg !3036 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3040, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3041, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3042, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3043, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3044, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3045, metadata !DIExpression()), !dbg !3064
  %5 = and i32 %1, 255, !dbg !3065
  %6 = and i32 %2, 255, !dbg !3067
  %7 = icmp eq i32 %5, %6, !dbg !3068
  br i1 %7, label %14, label %8, !dbg !3069

8:                                                ; preds = %4
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3043, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3046, metadata !DIExpression()), !dbg !3064
  %9 = icmp ne i64 %3, 0, !dbg !3070
  %10 = ptrtoint ptr %0 to i64, !dbg !3071
  %11 = and i64 %10, 7, !dbg !3071
  %12 = icmp ne i64 %11, 0, !dbg !3071
  %13 = and i1 %9, %12, !dbg !3071
  br i1 %13, label %16, label %123, !dbg !3072

14:                                               ; preds = %4
  %15 = tail call ptr @memchr(ptr noundef %0, i32 noundef %5, i64 noundef %3) #43, !dbg !3073
  br label %166, !dbg !3074

16:                                               ; preds = %8
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3043, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3046, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3047, metadata !DIExpression()), !dbg !3075
  %17 = load i8, ptr %0, align 1, !dbg !3076, !tbaa !1111
  %18 = zext i8 %17 to i32, !dbg !3076
  %19 = icmp ne i32 %5, %18, !dbg !3078
  %20 = icmp ne i32 %6, %18
  %21 = and i1 %19, %20, !dbg !3079
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !3046, metadata !DIExpression()), !dbg !3064
  br i1 %21, label %22, label %166

22:                                               ; preds = %16
  %23 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !3079
  tail call void @llvm.dbg.value(metadata ptr %23, metadata !3046, metadata !DIExpression()), !dbg !3064
  %24 = add i64 %3, -1, !dbg !3080
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !3043, metadata !DIExpression()), !dbg !3064
  %25 = icmp ne i64 %24, 0, !dbg !3070
  %26 = ptrtoint ptr %23 to i64, !dbg !3071
  %27 = and i64 %26, 7, !dbg !3071
  %28 = icmp ne i64 %27, 0, !dbg !3071
  %29 = select i1 %25, i1 %28, i1 false, !dbg !3071
  br i1 %29, label %30, label %123, !dbg !3072, !llvm.loop !3081

30:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !3043, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata ptr %23, metadata !3046, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata ptr %23, metadata !3047, metadata !DIExpression()), !dbg !3075
  %31 = load i8, ptr %23, align 1, !dbg !3076, !tbaa !1111
  %32 = zext i8 %31 to i32, !dbg !3076
  %33 = icmp ne i32 %5, %32, !dbg !3078
  %34 = icmp ne i32 %6, %32
  %35 = and i1 %33, %34, !dbg !3079
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !3046, metadata !DIExpression()), !dbg !3064
  br i1 %35, label %36, label %166

36:                                               ; preds = %30
  %37 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !3079
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !3046, metadata !DIExpression()), !dbg !3064
  %38 = add i64 %3, -2, !dbg !3080
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !3043, metadata !DIExpression()), !dbg !3064
  %39 = icmp ne i64 %38, 0, !dbg !3070
  %40 = ptrtoint ptr %37 to i64, !dbg !3071
  %41 = and i64 %40, 7, !dbg !3071
  %42 = icmp ne i64 %41, 0, !dbg !3071
  %43 = select i1 %39, i1 %42, i1 false, !dbg !3071
  br i1 %43, label %44, label %123, !dbg !3072, !llvm.loop !3081

44:                                               ; preds = %36
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !3043, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !3046, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !3047, metadata !DIExpression()), !dbg !3075
  %45 = load i8, ptr %37, align 1, !dbg !3076, !tbaa !1111
  %46 = zext i8 %45 to i32, !dbg !3076
  %47 = icmp ne i32 %5, %46, !dbg !3078
  %48 = icmp ne i32 %6, %46
  %49 = and i1 %47, %48, !dbg !3079
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !3046, metadata !DIExpression()), !dbg !3064
  br i1 %49, label %50, label %166

50:                                               ; preds = %44
  %51 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !3079
  tail call void @llvm.dbg.value(metadata ptr %51, metadata !3046, metadata !DIExpression()), !dbg !3064
  %52 = add i64 %3, -3, !dbg !3080
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !3043, metadata !DIExpression()), !dbg !3064
  %53 = icmp ne i64 %52, 0, !dbg !3070
  %54 = ptrtoint ptr %51 to i64, !dbg !3071
  %55 = and i64 %54, 7, !dbg !3071
  %56 = icmp ne i64 %55, 0, !dbg !3071
  %57 = select i1 %53, i1 %56, i1 false, !dbg !3071
  br i1 %57, label %58, label %123, !dbg !3072, !llvm.loop !3081

58:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !3043, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata ptr %51, metadata !3046, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata ptr %51, metadata !3047, metadata !DIExpression()), !dbg !3075
  %59 = load i8, ptr %51, align 1, !dbg !3076, !tbaa !1111
  %60 = zext i8 %59 to i32, !dbg !3076
  %61 = icmp ne i32 %5, %60, !dbg !3078
  %62 = icmp ne i32 %6, %60
  %63 = and i1 %61, %62, !dbg !3079
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !3046, metadata !DIExpression()), !dbg !3064
  br i1 %63, label %64, label %166

64:                                               ; preds = %58
  %65 = getelementptr inbounds i8, ptr %0, i64 4, !dbg !3079
  tail call void @llvm.dbg.value(metadata ptr %65, metadata !3046, metadata !DIExpression()), !dbg !3064
  %66 = add i64 %3, -4, !dbg !3080
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !3043, metadata !DIExpression()), !dbg !3064
  %67 = icmp ne i64 %66, 0, !dbg !3070
  %68 = ptrtoint ptr %65 to i64, !dbg !3071
  %69 = and i64 %68, 7, !dbg !3071
  %70 = icmp ne i64 %69, 0, !dbg !3071
  %71 = select i1 %67, i1 %70, i1 false, !dbg !3071
  br i1 %71, label %72, label %123, !dbg !3072, !llvm.loop !3081

72:                                               ; preds = %64
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !3043, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata ptr %65, metadata !3046, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata ptr %65, metadata !3047, metadata !DIExpression()), !dbg !3075
  %73 = load i8, ptr %65, align 1, !dbg !3076, !tbaa !1111
  %74 = zext i8 %73 to i32, !dbg !3076
  %75 = icmp ne i32 %5, %74, !dbg !3078
  %76 = icmp ne i32 %6, %74
  %77 = and i1 %75, %76, !dbg !3079
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !3046, metadata !DIExpression()), !dbg !3064
  br i1 %77, label %78, label %166

78:                                               ; preds = %72
  %79 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !3079
  tail call void @llvm.dbg.value(metadata ptr %79, metadata !3046, metadata !DIExpression()), !dbg !3064
  %80 = add i64 %3, -5, !dbg !3080
  tail call void @llvm.dbg.value(metadata i64 %80, metadata !3043, metadata !DIExpression()), !dbg !3064
  %81 = icmp ne i64 %80, 0, !dbg !3070
  %82 = ptrtoint ptr %79 to i64, !dbg !3071
  %83 = and i64 %82, 7, !dbg !3071
  %84 = icmp ne i64 %83, 0, !dbg !3071
  %85 = select i1 %81, i1 %84, i1 false, !dbg !3071
  br i1 %85, label %86, label %123, !dbg !3072, !llvm.loop !3081

86:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 %80, metadata !3043, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata ptr %79, metadata !3046, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata ptr %79, metadata !3047, metadata !DIExpression()), !dbg !3075
  %87 = load i8, ptr %79, align 1, !dbg !3076, !tbaa !1111
  %88 = zext i8 %87 to i32, !dbg !3076
  %89 = icmp ne i32 %5, %88, !dbg !3078
  %90 = icmp ne i32 %6, %88
  %91 = and i1 %89, %90, !dbg !3079
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !3046, metadata !DIExpression()), !dbg !3064
  br i1 %91, label %92, label %166

92:                                               ; preds = %86
  %93 = getelementptr inbounds i8, ptr %0, i64 6, !dbg !3079
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !3046, metadata !DIExpression()), !dbg !3064
  %94 = add i64 %3, -6, !dbg !3080
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !3043, metadata !DIExpression()), !dbg !3064
  %95 = icmp ne i64 %94, 0, !dbg !3070
  %96 = ptrtoint ptr %93 to i64, !dbg !3071
  %97 = and i64 %96, 7, !dbg !3071
  %98 = icmp ne i64 %97, 0, !dbg !3071
  %99 = select i1 %95, i1 %98, i1 false, !dbg !3071
  br i1 %99, label %100, label %123, !dbg !3072, !llvm.loop !3081

100:                                              ; preds = %92
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !3043, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !3046, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !3047, metadata !DIExpression()), !dbg !3075
  %101 = load i8, ptr %93, align 1, !dbg !3076, !tbaa !1111
  %102 = zext i8 %101 to i32, !dbg !3076
  %103 = icmp ne i32 %5, %102, !dbg !3078
  %104 = icmp ne i32 %6, %102
  %105 = and i1 %103, %104, !dbg !3079
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !3046, metadata !DIExpression()), !dbg !3064
  br i1 %105, label %106, label %166

106:                                              ; preds = %100
  %107 = getelementptr inbounds i8, ptr %0, i64 7, !dbg !3079
  tail call void @llvm.dbg.value(metadata ptr %107, metadata !3046, metadata !DIExpression()), !dbg !3064
  %108 = add i64 %3, -7, !dbg !3080
  tail call void @llvm.dbg.value(metadata i64 %108, metadata !3043, metadata !DIExpression()), !dbg !3064
  %109 = icmp ne i64 %108, 0, !dbg !3070
  %110 = ptrtoint ptr %107 to i64, !dbg !3071
  %111 = and i64 %110, 7, !dbg !3071
  %112 = icmp ne i64 %111, 0, !dbg !3071
  %113 = select i1 %109, i1 %112, i1 false, !dbg !3071
  br i1 %113, label %114, label %123, !dbg !3072, !llvm.loop !3081

114:                                              ; preds = %106
  tail call void @llvm.dbg.value(metadata i64 %108, metadata !3043, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata ptr %107, metadata !3046, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata ptr %107, metadata !3047, metadata !DIExpression()), !dbg !3075
  %115 = load i8, ptr %107, align 1, !dbg !3076, !tbaa !1111
  %116 = zext i8 %115 to i32, !dbg !3076
  %117 = icmp ne i32 %5, %116, !dbg !3078
  %118 = icmp ne i32 %6, %116
  %119 = and i1 %117, %118, !dbg !3079
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !3046, metadata !DIExpression()), !dbg !3064
  br i1 %119, label %120, label %166

120:                                              ; preds = %114
  %121 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !3079
  tail call void @llvm.dbg.value(metadata ptr %121, metadata !3046, metadata !DIExpression()), !dbg !3064
  %122 = add i64 %3, -8, !dbg !3080
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !3043, metadata !DIExpression()), !dbg !3064
  br label %123

123:                                              ; preds = %22, %36, %50, %64, %78, %92, %106, %120, %8
  %124 = phi ptr [ %0, %8 ], [ %23, %22 ], [ %37, %36 ], [ %51, %50 ], [ %65, %64 ], [ %79, %78 ], [ %93, %92 ], [ %107, %106 ], [ %121, %120 ], !dbg !3083
  %125 = phi i64 [ %3, %8 ], [ %24, %22 ], [ %38, %36 ], [ %52, %50 ], [ %66, %64 ], [ %80, %78 ], [ %94, %92 ], [ %108, %106 ], [ %122, %120 ]
  tail call void @llvm.dbg.value(metadata ptr %124, metadata !3051, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 16843009, metadata !3055, metadata !DIExpression()), !dbg !3084
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !3057, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3084
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !3058, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3084
  %126 = mul nuw i32 %5, 16843009, !dbg !3085
  %127 = zext i32 %126 to i64, !dbg !3085
  tail call void @llvm.dbg.value(metadata i64 %127, metadata !3057, metadata !DIExpression()), !dbg !3084
  %128 = mul nuw i32 %6, 16843009, !dbg !3086
  %129 = zext i32 %128 to i64, !dbg !3086
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !3058, metadata !DIExpression()), !dbg !3084
  tail call void @llvm.dbg.value(metadata i64 72340172838076673, metadata !3055, metadata !DIExpression()), !dbg !3084
  %130 = mul nuw i64 %127, 4294967297, !dbg !3087
  tail call void @llvm.dbg.value(metadata i64 %130, metadata !3057, metadata !DIExpression()), !dbg !3084
  %131 = mul nuw i64 %129, 4294967297, !dbg !3090
  tail call void @llvm.dbg.value(metadata i64 %131, metadata !3058, metadata !DIExpression()), !dbg !3084
  br label %132, !dbg !3091

132:                                              ; preds = %136, %123
  %133 = phi ptr [ %124, %123 ], [ %149, %136 ], !dbg !3092
  %134 = phi i64 [ %125, %123 ], [ %150, %136 ]
  tail call void @llvm.dbg.value(metadata i64 %134, metadata !3043, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata ptr %133, metadata !3051, metadata !DIExpression()), !dbg !3064
  %135 = icmp ugt i64 %134, 7, !dbg !3093
  br i1 %135, label %136, label %151, !dbg !3091

136:                                              ; preds = %132
  %137 = load i64, ptr %133, align 8, !dbg !3094, !tbaa !1303
  %138 = xor i64 %137, %130, !dbg !3095
  tail call void @llvm.dbg.value(metadata i64 %138, metadata !3059, metadata !DIExpression()), !dbg !3096
  %139 = xor i64 %137, %131, !dbg !3097
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !3061, metadata !DIExpression()), !dbg !3096
  %140 = add i64 %138, -72340172838076673, !dbg !3098
  %141 = xor i64 %138, -1, !dbg !3100
  %142 = and i64 %140, %141, !dbg !3101
  %143 = add i64 %139, -72340172838076673, !dbg !3102
  %144 = xor i64 %139, -1, !dbg !3103
  %145 = and i64 %143, %144, !dbg !3104
  %146 = or i64 %142, %145, !dbg !3105
  %147 = and i64 %146, -9187201950435737472, !dbg !3106
  %148 = icmp eq i64 %147, 0, !dbg !3107
  %149 = getelementptr inbounds i64, ptr %133, i64 1, !dbg !3108
  %150 = add i64 %134, -8, !dbg !3108
  tail call void @llvm.dbg.value(metadata i64 undef, metadata !3043, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !3051, metadata !DIExpression()), !dbg !3064
  br i1 %148, label %132, label %153

151:                                              ; preds = %132
  tail call void @llvm.dbg.value(metadata i64 %134, metadata !3043, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata ptr %133, metadata !3051, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata ptr %133, metadata !3062, metadata !DIExpression()), !dbg !3109
  %152 = icmp eq i64 %134, 0, !dbg !3110
  br i1 %152, label %166, label %153, !dbg !3113

153:                                              ; preds = %136, %151
  br label %154, !dbg !3113

154:                                              ; preds = %153, %162
  %155 = phi ptr [ %164, %162 ], [ %133, %153 ]
  %156 = phi i64 [ %163, %162 ], [ %134, %153 ]
  tail call void @llvm.dbg.value(metadata ptr %155, metadata !3062, metadata !DIExpression()), !dbg !3109
  tail call void @llvm.dbg.value(metadata i64 %156, metadata !3043, metadata !DIExpression()), !dbg !3064
  %157 = load i8, ptr %155, align 1, !dbg !3114, !tbaa !1111
  %158 = zext i8 %157 to i32, !dbg !3114
  %159 = icmp eq i32 %5, %158, !dbg !3117
  %160 = icmp eq i32 %6, %158
  %161 = or i1 %159, %160, !dbg !3118
  br i1 %161, label %166, label %162, !dbg !3118

162:                                              ; preds = %154
  %163 = add i64 %156, -1, !dbg !3119
  tail call void @llvm.dbg.value(metadata i64 %163, metadata !3043, metadata !DIExpression()), !dbg !3064
  %164 = getelementptr inbounds i8, ptr %155, i64 1, !dbg !3120
  tail call void @llvm.dbg.value(metadata ptr %164, metadata !3062, metadata !DIExpression()), !dbg !3109
  %165 = icmp eq i64 %163, 0, !dbg !3110
  br i1 %165, label %166, label %154, !dbg !3113, !llvm.loop !3121

166:                                              ; preds = %16, %30, %44, %58, %72, %86, %100, %114, %162, %154, %151, %14
  %167 = phi ptr [ %15, %14 ], [ null, %151 ], [ null, %162 ], [ %155, %154 ], [ %0, %16 ], [ %23, %30 ], [ %37, %44 ], [ %51, %58 ], [ %65, %72 ], [ %79, %86 ], [ %93, %100 ], [ %107, %114 ], !dbg !3064
  ret ptr %167, !dbg !3123
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3124 ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #24 !dbg !3127 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3129, metadata !DIExpression()), !dbg !3132
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #43, !dbg !3133
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3130, metadata !DIExpression()), !dbg !3132
  %3 = icmp eq ptr %2, null, !dbg !3134
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !3134
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !3134
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3131, metadata !DIExpression()), !dbg !3132
  %6 = ptrtoint ptr %5 to i64, !dbg !3135
  %7 = ptrtoint ptr %0 to i64, !dbg !3135
  %8 = sub i64 %6, %7, !dbg !3135
  %9 = icmp sgt i64 %8, 6, !dbg !3137
  br i1 %9, label %10, label %19, !dbg !3138

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !3139
  call void @llvm.dbg.value(metadata ptr %11, metadata !3140, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata ptr @.str.118, metadata !3145, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i64 7, metadata !3146, metadata !DIExpression()), !dbg !3147
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.118, i64 7), !dbg !3149
  %13 = icmp eq i32 %12, 0, !dbg !3150
  br i1 %13, label %14, label %19, !dbg !3151

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3129, metadata !DIExpression()), !dbg !3132
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.119, i64 noundef 3) #43, !dbg !3152
  %16 = icmp eq i32 %15, 0, !dbg !3155
  %17 = select i1 %16, i64 3, i64 0, !dbg !3156
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !3156
  br label %19, !dbg !3156

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !3132
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3131, metadata !DIExpression()), !dbg !3132
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !3129, metadata !DIExpression()), !dbg !3132
  store ptr %20, ptr @program_name, align 8, !dbg !3157, !tbaa !1024
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !3158, !tbaa !1024
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !3159, !tbaa !1024
  ret void, !dbg !3160
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3161 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #25

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !677 {
  %3 = alloca i32, align 4, !DIAssignID !3162
  call void @llvm.dbg.assign(metadata i1 undef, metadata !687, metadata !DIExpression(), metadata !3162, metadata ptr %3, metadata !DIExpression()), !dbg !3163
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3164
  call void @llvm.dbg.assign(metadata i1 undef, metadata !692, metadata !DIExpression(), metadata !3164, metadata ptr %4, metadata !DIExpression()), !dbg !3163
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !684, metadata !DIExpression()), !dbg !3163
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !685, metadata !DIExpression()), !dbg !3163
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #42, !dbg !3165
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !686, metadata !DIExpression()), !dbg !3163
  %6 = icmp eq ptr %5, %0, !dbg !3166
  br i1 %6, label %7, label %14, !dbg !3168

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #42, !dbg !3169
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #42, !dbg !3170
  call void @llvm.dbg.value(metadata ptr %4, metadata !3171, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata ptr %4, metadata !3180, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i32 0, metadata !3185, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i64 8, metadata !3186, metadata !DIExpression()), !dbg !3187
  store i64 0, ptr %4, align 8, !dbg !3189
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #42, !dbg !3190
  %9 = icmp eq i64 %8, 2, !dbg !3192
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !3193
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !3163
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #42, !dbg !3194
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #42, !dbg !3194
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !3163
  ret ptr %15, !dbg !3194
}

; Function Attrs: nounwind
declare !dbg !3195 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !3201 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3206, metadata !DIExpression()), !dbg !3209
  %2 = tail call ptr @__errno_location() #45, !dbg !3210
  %3 = load i32, ptr %2, align 4, !dbg !3210, !tbaa !1102
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !3207, metadata !DIExpression()), !dbg !3209
  %4 = icmp eq ptr %0, null, !dbg !3211
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3211
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #47, !dbg !3212
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3208, metadata !DIExpression()), !dbg !3209
  store i32 %3, ptr %2, align 4, !dbg !3213, !tbaa !1102
  ret ptr %6, !dbg !3214
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #26 !dbg !3215 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3221, metadata !DIExpression()), !dbg !3222
  %2 = icmp eq ptr %0, null, !dbg !3223
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !3223
  %4 = load i32, ptr %3, align 8, !dbg !3224, !tbaa !3225
  ret i32 %4, !dbg !3227
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #27 !dbg !3228 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3232, metadata !DIExpression()), !dbg !3234
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3233, metadata !DIExpression()), !dbg !3234
  %3 = icmp eq ptr %0, null, !dbg !3235
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3235
  store i32 %1, ptr %4, align 8, !dbg !3236, !tbaa !3225
  ret void, !dbg !3237
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #28 !dbg !3238 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3242, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3243, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3244, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3245, metadata !DIExpression()), !dbg !3250
  %4 = icmp eq ptr %0, null, !dbg !3251
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3251
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3252
  %7 = lshr i8 %1, 5, !dbg !3253
  %8 = zext nneg i8 %7 to i64, !dbg !3253
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !3254
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !3246, metadata !DIExpression()), !dbg !3250
  %10 = and i8 %1, 31, !dbg !3255
  %11 = zext nneg i8 %10 to i32, !dbg !3255
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !3248, metadata !DIExpression()), !dbg !3250
  %12 = load i32, ptr %9, align 4, !dbg !3256, !tbaa !1102
  %13 = lshr i32 %12, %11, !dbg !3257
  %14 = and i32 %13, 1, !dbg !3258
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !3249, metadata !DIExpression()), !dbg !3250
  %15 = xor i32 %13, %2, !dbg !3259
  %16 = and i32 %15, 1, !dbg !3259
  %17 = shl nuw i32 %16, %11, !dbg !3260
  %18 = xor i32 %17, %12, !dbg !3261
  store i32 %18, ptr %9, align 4, !dbg !3261, !tbaa !1102
  ret i32 %14, !dbg !3262
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #28 !dbg !3263 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3267, metadata !DIExpression()), !dbg !3270
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3268, metadata !DIExpression()), !dbg !3270
  %3 = icmp eq ptr %0, null, !dbg !3271
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3273
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3267, metadata !DIExpression()), !dbg !3270
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !3274
  %6 = load i32, ptr %5, align 4, !dbg !3274, !tbaa !3275
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !3269, metadata !DIExpression()), !dbg !3270
  store i32 %1, ptr %5, align 4, !dbg !3276, !tbaa !3275
  ret i32 %6, !dbg !3277
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3278 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3282, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3283, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3284, metadata !DIExpression()), !dbg !3285
  %4 = icmp eq ptr %0, null, !dbg !3286
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3288
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3282, metadata !DIExpression()), !dbg !3285
  store i32 10, ptr %5, align 8, !dbg !3289, !tbaa !3225
  %6 = icmp ne ptr %1, null, !dbg !3290
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3292
  br i1 %8, label %10, label %9, !dbg !3292

9:                                                ; preds = %3
  tail call void @abort() #44, !dbg !3293
  unreachable, !dbg !3293

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3294
  store ptr %1, ptr %11, align 8, !dbg !3295, !tbaa !3296
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3297
  store ptr %2, ptr %12, align 8, !dbg !3298, !tbaa !3299
  ret void, !dbg !3300
}

; Function Attrs: noreturn nounwind
declare !dbg !3301 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !3302 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3306, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3307, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3308, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3309, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3310, metadata !DIExpression()), !dbg !3314
  %6 = icmp eq ptr %4, null, !dbg !3315
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !3315
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3311, metadata !DIExpression()), !dbg !3314
  %8 = tail call ptr @__errno_location() #45, !dbg !3316
  %9 = load i32, ptr %8, align 4, !dbg !3316, !tbaa !1102
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !3312, metadata !DIExpression()), !dbg !3314
  %10 = load i32, ptr %7, align 8, !dbg !3317, !tbaa !3225
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !3318
  %12 = load i32, ptr %11, align 4, !dbg !3318, !tbaa !3275
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !3319
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !3320
  %15 = load ptr, ptr %14, align 8, !dbg !3320, !tbaa !3296
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !3321
  %17 = load ptr, ptr %16, align 8, !dbg !3321, !tbaa !3299
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !3322
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !3313, metadata !DIExpression()), !dbg !3314
  store i32 %9, ptr %8, align 4, !dbg !3323, !tbaa !1102
  ret i64 %18, !dbg !3324
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !3325 {
  %10 = alloca i32, align 4, !DIAssignID !3393
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3394
  %12 = alloca i32, align 4, !DIAssignID !3395
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3396
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3397
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3371, metadata !DIExpression(), metadata !3397, metadata ptr %14, metadata !DIExpression()), !dbg !3398
  %15 = alloca i32, align 4, !DIAssignID !3399
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3374, metadata !DIExpression(), metadata !3399, metadata ptr %15, metadata !DIExpression()), !dbg !3400
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3331, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3332, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3333, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3334, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !3335, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !3336, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3337, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3338, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3339, metadata !DIExpression()), !dbg !3401
  %16 = tail call i64 @__ctype_get_mb_cur_max() #42, !dbg !3402
  %17 = icmp eq i64 %16, 1, !dbg !3403
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !3340, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3341, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3342, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata ptr null, metadata !3343, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3344, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3345, metadata !DIExpression()), !dbg !3401
  %18 = trunc i32 %5 to i8, !dbg !3404
  %19 = lshr i8 %18, 1, !dbg !3404
  %20 = and i8 %19, 1, !dbg !3404
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !3346, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3347, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3348, metadata !DIExpression()), !dbg !3401
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !3405

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !3406
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !3407
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !3408
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !3409
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !3401
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !3410
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !3411
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !3332, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !3348, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !3347, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !3346, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !3345, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !3344, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !3343, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !3342, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3341, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !3334, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !3339, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !3338, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !3335, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.label(metadata !3349), !dbg !3412
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3350, metadata !DIExpression()), !dbg !3401
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
  ], !dbg !3413

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3346, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i32 5, metadata !3335, metadata !DIExpression()), !dbg !3401
  br label %114, !dbg !3414

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !3346, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i32 5, metadata !3335, metadata !DIExpression()), !dbg !3401
  %43 = and i8 %37, 1, !dbg !3415
  %44 = icmp eq i8 %43, 0, !dbg !3415
  br i1 %44, label %45, label %114, !dbg !3414

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !3417
  br i1 %46, label %114, label %47, !dbg !3420

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !3417, !tbaa !1111
  br label %114, !dbg !3417

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !778, metadata !DIExpression(), metadata !3395, metadata ptr %12, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.assign(metadata i1 undef, metadata !779, metadata !DIExpression(), metadata !3396, metadata ptr %13, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata ptr @.str.11.132, metadata !775, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata i32 %29, metadata !776, metadata !DIExpression()), !dbg !3421
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.133, ptr noundef nonnull @.str.11.132, i32 noundef 5) #42, !dbg !3425
  call void @llvm.dbg.value(metadata ptr %49, metadata !777, metadata !DIExpression()), !dbg !3421
  %50 = icmp eq ptr %49, @.str.11.132, !dbg !3426
  br i1 %50, label %51, label %60, !dbg !3428

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #42, !dbg !3429
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #42, !dbg !3430
  call void @llvm.dbg.value(metadata ptr %13, metadata !3431, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata ptr %13, metadata !3439, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i32 0, metadata !3442, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i64 8, metadata !3443, metadata !DIExpression()), !dbg !3444
  store i64 0, ptr %13, align 8, !dbg !3446
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #42, !dbg !3447
  %53 = icmp eq i64 %52, 3, !dbg !3449
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !3450
  %57 = icmp eq i32 %29, 9, !dbg !3450
  %58 = select i1 %57, ptr @.str.10.134, ptr @.str.12.135, !dbg !3450
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !3450
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #42, !dbg !3451
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #42, !dbg !3451
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !3421
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3338, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.assign(metadata i1 undef, metadata !778, metadata !DIExpression(), metadata !3393, metadata ptr %10, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.assign(metadata i1 undef, metadata !779, metadata !DIExpression(), metadata !3394, metadata ptr %11, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata ptr @.str.12.135, metadata !775, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i32 %29, metadata !776, metadata !DIExpression()), !dbg !3452
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.133, ptr noundef nonnull @.str.12.135, i32 noundef 5) #42, !dbg !3454
  call void @llvm.dbg.value(metadata ptr %62, metadata !777, metadata !DIExpression()), !dbg !3452
  %63 = icmp eq ptr %62, @.str.12.135, !dbg !3455
  br i1 %63, label %64, label %73, !dbg !3456

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #42, !dbg !3457
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #42, !dbg !3458
  call void @llvm.dbg.value(metadata ptr %11, metadata !3431, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata ptr %11, metadata !3439, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i32 0, metadata !3442, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i64 8, metadata !3443, metadata !DIExpression()), !dbg !3461
  store i64 0, ptr %11, align 8, !dbg !3463
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #42, !dbg !3464
  %66 = icmp eq i64 %65, 3, !dbg !3465
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !3466
  %70 = icmp eq i32 %29, 9, !dbg !3466
  %71 = select i1 %70, ptr @.str.10.134, ptr @.str.12.135, !dbg !3466
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !3466
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #42, !dbg !3467
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #42, !dbg !3467
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !3339, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !3338, metadata !DIExpression()), !dbg !3401
  %76 = and i8 %37, 1, !dbg !3468
  %77 = icmp eq i8 %76, 0, !dbg !3468
  br i1 %77, label %78, label %93, !dbg !3469

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !3351, metadata !DIExpression()), !dbg !3470
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3341, metadata !DIExpression()), !dbg !3401
  %79 = load i8, ptr %74, align 1, !dbg !3471, !tbaa !1111
  %80 = icmp eq i8 %79, 0, !dbg !3473
  br i1 %80, label %93, label %81, !dbg !3473

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !3351, metadata !DIExpression()), !dbg !3470
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !3341, metadata !DIExpression()), !dbg !3401
  %85 = icmp ult i64 %84, %40, !dbg !3474
  br i1 %85, label %86, label %88, !dbg !3477

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !3474
  store i8 %82, ptr %87, align 1, !dbg !3474, !tbaa !1111
  br label %88, !dbg !3474

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !3477
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !3341, metadata !DIExpression()), !dbg !3401
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !3478
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !3351, metadata !DIExpression()), !dbg !3470
  %91 = load i8, ptr %90, align 1, !dbg !3471, !tbaa !1111
  %92 = icmp eq i8 %91, 0, !dbg !3473
  br i1 %92, label %93, label %81, !dbg !3473, !llvm.loop !3479

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !3481
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !3341, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3345, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !3343, metadata !DIExpression()), !dbg !3401
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #43, !dbg !3482
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !3344, metadata !DIExpression()), !dbg !3401
  br label %114, !dbg !3483

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3345, metadata !DIExpression()), !dbg !3401
  br label %98, !dbg !3484

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !3345, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3346, metadata !DIExpression()), !dbg !3401
  br label %98, !dbg !3485

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !3409
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !3346, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !3345, metadata !DIExpression()), !dbg !3401
  %101 = and i8 %100, 1, !dbg !3486
  %102 = icmp eq i8 %101, 0, !dbg !3486
  %103 = select i1 %102, i8 1, i8 %99, !dbg !3488
  br label %104, !dbg !3488

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !3401
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !3404
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !3346, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !3345, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i32 2, metadata !3335, metadata !DIExpression()), !dbg !3401
  %107 = and i8 %106, 1, !dbg !3489
  %108 = icmp eq i8 %107, 0, !dbg !3489
  br i1 %108, label %109, label %114, !dbg !3491

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !3492
  br i1 %110, label %114, label %111, !dbg !3495

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !3492, !tbaa !1111
  br label %114, !dbg !3492

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3346, metadata !DIExpression()), !dbg !3401
  br label %114, !dbg !3496

113:                                              ; preds = %28
  call void @abort() #44, !dbg !3497
  unreachable, !dbg !3497

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !3481
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.134, %45 ], [ @.str.10.134, %47 ], [ @.str.10.134, %42 ], [ %34, %28 ], [ @.str.12.135, %109 ], [ @.str.12.135, %111 ], [ @.str.12.135, %104 ], [ @.str.10.134, %41 ], !dbg !3401
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !3401
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !3401
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !3346, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !3345, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !3344, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !3343, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !3341, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !3339, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !3338, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !3335, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3356, metadata !DIExpression()), !dbg !3498
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
  br label %138, !dbg !3499

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !3481
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !3406
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !3410
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !3411
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !3500
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !3501
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !3332, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !3356, metadata !DIExpression()), !dbg !3498
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !3350, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !3348, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !3347, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !3342, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !3341, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !3334, metadata !DIExpression()), !dbg !3401
  %147 = icmp eq i64 %139, -1, !dbg !3502
  br i1 %147, label %148, label %152, !dbg !3503

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3504
  %150 = load i8, ptr %149, align 1, !dbg !3504, !tbaa !1111
  %151 = icmp eq i8 %150, 0, !dbg !3505
  br i1 %151, label %612, label %154, !dbg !3506

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !3507
  br i1 %153, label %612, label %154, !dbg !3506

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3358, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3361, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3362, metadata !DIExpression()), !dbg !3508
  br i1 %128, label %155, label %170, !dbg !3509

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !3511
  %157 = select i1 %147, i1 %129, i1 false, !dbg !3512
  br i1 %157, label %158, label %160, !dbg !3512

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #43, !dbg !3513
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !3334, metadata !DIExpression()), !dbg !3401
  br label %160, !dbg !3514

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !3514
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !3334, metadata !DIExpression()), !dbg !3401
  %162 = icmp ugt i64 %156, %161, !dbg !3515
  br i1 %162, label %170, label %163, !dbg !3516

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3517
  call void @llvm.dbg.value(metadata ptr %164, metadata !3518, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata ptr %119, metadata !3521, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i64 %120, metadata !3522, metadata !DIExpression()), !dbg !3523
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !3525
  %166 = icmp ne i32 %165, 0, !dbg !3526
  %167 = select i1 %166, i1 true, i1 %131, !dbg !3527
  %168 = xor i1 %166, true, !dbg !3527
  %169 = zext i1 %168 to i8, !dbg !3527
  br i1 %167, label %170, label %666, !dbg !3527

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !3508
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !3358, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !3334, metadata !DIExpression()), !dbg !3401
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3528
  %175 = load i8, ptr %174, align 1, !dbg !3528, !tbaa !1111
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !3363, metadata !DIExpression()), !dbg !3508
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
  ], !dbg !3529

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !3530

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !3531

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3361, metadata !DIExpression()), !dbg !3508
  %179 = and i8 %144, 1, !dbg !3535
  %180 = icmp eq i8 %179, 0, !dbg !3535
  %181 = select i1 %132, i1 %180, i1 false, !dbg !3535
  br i1 %181, label %182, label %198, !dbg !3535

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !3537
  br i1 %183, label %184, label %186, !dbg !3541

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3537
  store i8 39, ptr %185, align 1, !dbg !3537, !tbaa !1111
  br label %186, !dbg !3537

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !3541
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !3341, metadata !DIExpression()), !dbg !3401
  %188 = icmp ult i64 %187, %146, !dbg !3542
  br i1 %188, label %189, label %191, !dbg !3545

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !3542
  store i8 36, ptr %190, align 1, !dbg !3542, !tbaa !1111
  br label %191, !dbg !3542

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !3545
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !3341, metadata !DIExpression()), !dbg !3401
  %193 = icmp ult i64 %192, %146, !dbg !3546
  br i1 %193, label %194, label %196, !dbg !3549

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !3546
  store i8 39, ptr %195, align 1, !dbg !3546, !tbaa !1111
  br label %196, !dbg !3546

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !3549
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !3341, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3350, metadata !DIExpression()), !dbg !3401
  br label %198, !dbg !3550

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !3401
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !3350, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !3341, metadata !DIExpression()), !dbg !3401
  %201 = icmp ult i64 %199, %146, !dbg !3551
  br i1 %201, label %202, label %204, !dbg !3554

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !3551
  store i8 92, ptr %203, align 1, !dbg !3551, !tbaa !1111
  br label %204, !dbg !3551

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !3554
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !3341, metadata !DIExpression()), !dbg !3401
  br i1 %125, label %206, label %476, !dbg !3555

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !3557
  %208 = icmp ult i64 %207, %171, !dbg !3558
  br i1 %208, label %209, label %465, !dbg !3559

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !3560
  %211 = load i8, ptr %210, align 1, !dbg !3560, !tbaa !1111
  %212 = add i8 %211, -48, !dbg !3561
  %213 = icmp ult i8 %212, 10, !dbg !3561
  br i1 %213, label %214, label %465, !dbg !3561

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !3562
  br i1 %215, label %216, label %218, !dbg !3566

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !3562
  store i8 48, ptr %217, align 1, !dbg !3562, !tbaa !1111
  br label %218, !dbg !3562

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !3566
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !3341, metadata !DIExpression()), !dbg !3401
  %220 = icmp ult i64 %219, %146, !dbg !3567
  br i1 %220, label %221, label %223, !dbg !3570

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !3567
  store i8 48, ptr %222, align 1, !dbg !3567, !tbaa !1111
  br label %223, !dbg !3567

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !3570
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !3341, metadata !DIExpression()), !dbg !3401
  br label %465, !dbg !3571

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !3572

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !3573

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !3574

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !3576

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !3578
  %231 = icmp ult i64 %230, %171, !dbg !3579
  br i1 %231, label %232, label %465, !dbg !3580

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !3581
  %234 = load i8, ptr %233, align 1, !dbg !3581, !tbaa !1111
  %235 = icmp eq i8 %234, 63, !dbg !3582
  br i1 %235, label %236, label %465, !dbg !3583

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !3584
  %238 = load i8, ptr %237, align 1, !dbg !3584, !tbaa !1111
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
  ], !dbg !3585

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !3586

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !3363, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !3356, metadata !DIExpression()), !dbg !3498
  %241 = icmp ult i64 %140, %146, !dbg !3588
  br i1 %241, label %242, label %244, !dbg !3591

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3588
  store i8 63, ptr %243, align 1, !dbg !3588, !tbaa !1111
  br label %244, !dbg !3588

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !3591
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !3341, metadata !DIExpression()), !dbg !3401
  %246 = icmp ult i64 %245, %146, !dbg !3592
  br i1 %246, label %247, label %249, !dbg !3595

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !3592
  store i8 34, ptr %248, align 1, !dbg !3592, !tbaa !1111
  br label %249, !dbg !3592

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !3595
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !3341, metadata !DIExpression()), !dbg !3401
  %251 = icmp ult i64 %250, %146, !dbg !3596
  br i1 %251, label %252, label %254, !dbg !3599

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !3596
  store i8 34, ptr %253, align 1, !dbg !3596, !tbaa !1111
  br label %254, !dbg !3596

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !3599
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !3341, metadata !DIExpression()), !dbg !3401
  %256 = icmp ult i64 %255, %146, !dbg !3600
  br i1 %256, label %257, label %259, !dbg !3603

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !3600
  store i8 63, ptr %258, align 1, !dbg !3600, !tbaa !1111
  br label %259, !dbg !3600

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !3603
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !3341, metadata !DIExpression()), !dbg !3401
  br label %465, !dbg !3604

261:                                              ; preds = %170
  br label %272, !dbg !3605

262:                                              ; preds = %170
  br label %272, !dbg !3606

263:                                              ; preds = %170
  br label %270, !dbg !3607

264:                                              ; preds = %170
  br label %270, !dbg !3608

265:                                              ; preds = %170
  br label %272, !dbg !3609

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !3610

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !3611

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !3614

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !3616

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !3617
  call void @llvm.dbg.label(metadata !3364), !dbg !3618
  br i1 %133, label %272, label %655, !dbg !3619

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !3617
  call void @llvm.dbg.label(metadata !3367), !dbg !3621
  br i1 %124, label %520, label %476, !dbg !3622

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !3623

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !3624, !tbaa !1111
  %277 = icmp eq i8 %276, 0, !dbg !3626
  br i1 %277, label %278, label %465, !dbg !3627

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !3628
  br i1 %279, label %280, label %465, !dbg !3630

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3362, metadata !DIExpression()), !dbg !3508
  br label %281, !dbg !3631

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !3362, metadata !DIExpression()), !dbg !3508
  br i1 %133, label %465, label %655, !dbg !3632

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3347, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3362, metadata !DIExpression()), !dbg !3508
  br i1 %132, label %284, label %465, !dbg !3634

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !3635

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !3638
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !3640
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !3640
  %290 = select i1 %288, i64 %146, i64 0, !dbg !3640
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !3332, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !3342, metadata !DIExpression()), !dbg !3401
  %291 = icmp ult i64 %140, %290, !dbg !3641
  br i1 %291, label %292, label %294, !dbg !3644

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3641
  store i8 39, ptr %293, align 1, !dbg !3641, !tbaa !1111
  br label %294, !dbg !3641

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !3644
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !3341, metadata !DIExpression()), !dbg !3401
  %296 = icmp ult i64 %295, %290, !dbg !3645
  br i1 %296, label %297, label %299, !dbg !3648

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !3645
  store i8 92, ptr %298, align 1, !dbg !3645, !tbaa !1111
  br label %299, !dbg !3645

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !3648
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !3341, metadata !DIExpression()), !dbg !3401
  %301 = icmp ult i64 %300, %290, !dbg !3649
  br i1 %301, label %302, label %304, !dbg !3652

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !3649
  store i8 39, ptr %303, align 1, !dbg !3649, !tbaa !1111
  br label %304, !dbg !3649

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !3652
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !3341, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3350, metadata !DIExpression()), !dbg !3401
  br label %465, !dbg !3653

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !3654

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3368, metadata !DIExpression()), !dbg !3655
  %308 = tail call ptr @__ctype_b_loc() #45, !dbg !3656
  %309 = load ptr, ptr %308, align 8, !dbg !3656, !tbaa !1024
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !3656
  %312 = load i16, ptr %311, align 2, !dbg !3656, !tbaa !1143
  %313 = and i16 %312, 16384, !dbg !3658
  %314 = icmp ne i16 %313, 0, !dbg !3658
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !3370, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3655
  br label %355, !dbg !3659

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #42, !dbg !3660
  call void @llvm.dbg.value(metadata ptr %14, metadata !3431, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata ptr %14, metadata !3439, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i32 0, metadata !3442, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i64 8, metadata !3443, metadata !DIExpression()), !dbg !3663
  store i64 0, ptr %14, align 8, !dbg !3665
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3368, metadata !DIExpression()), !dbg !3655
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3370, metadata !DIExpression()), !dbg !3655
  %316 = icmp eq i64 %171, -1, !dbg !3666
  br i1 %316, label %317, label %319, !dbg !3668

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #43, !dbg !3669
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !3334, metadata !DIExpression()), !dbg !3401
  br label %319, !dbg !3670

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !3508
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !3334, metadata !DIExpression()), !dbg !3401
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #42, !dbg !3671
  %321 = sub i64 %320, %145, !dbg !3672
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #42, !dbg !3673
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !3378, metadata !DIExpression()), !dbg !3400
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !3674

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3368, metadata !DIExpression()), !dbg !3655
  %324 = icmp ult i64 %145, %320, !dbg !3675
  br i1 %324, label %326, label %351, !dbg !3677

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3370, metadata !DIExpression()), !dbg !3655
  br label %351, !dbg !3678

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !3368, metadata !DIExpression()), !dbg !3655
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !3680
  %330 = load i8, ptr %329, align 1, !dbg !3680, !tbaa !1111
  %331 = icmp eq i8 %330, 0, !dbg !3677
  br i1 %331, label %351, label %332, !dbg !3681

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !3682
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !3368, metadata !DIExpression()), !dbg !3655
  %334 = add i64 %333, %145, !dbg !3683
  %335 = icmp eq i64 %333, %321, !dbg !3675
  br i1 %335, label %351, label %326, !dbg !3677, !llvm.loop !3684

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3379, metadata !DIExpression()), !dbg !3685
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !3686
  %339 = and i1 %338, %132, !dbg !3686
  br i1 %339, label %340, label %347, !dbg !3686

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !3379, metadata !DIExpression()), !dbg !3685
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !3687
  %343 = load i8, ptr %342, align 1, !dbg !3687, !tbaa !1111
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !3689

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !3690
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !3379, metadata !DIExpression()), !dbg !3685
  %346 = icmp eq i64 %345, %322, !dbg !3691
  br i1 %346, label %347, label %340, !dbg !3692, !llvm.loop !3693

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !3695, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %348, metadata !3697, metadata !DIExpression()), !dbg !3705
  %349 = call i32 @iswprint(i32 noundef %348) #42, !dbg !3707
  %350 = icmp ne i32 %349, 0, !dbg !3708
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3370, metadata !DIExpression()), !dbg !3655
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !3368, metadata !DIExpression()), !dbg !3655
  br label %351, !dbg !3709

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3370, metadata !DIExpression()), !dbg !3655
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !3368, metadata !DIExpression()), !dbg !3655
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #42, !dbg !3710
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #42, !dbg !3711
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3370, metadata !DIExpression()), !dbg !3655
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3368, metadata !DIExpression()), !dbg !3655
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #42, !dbg !3710
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #42, !dbg !3711
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !3508
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !3712
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !3712
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3370, metadata !DIExpression()), !dbg !3655
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !3368, metadata !DIExpression()), !dbg !3655
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !3334, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !3362, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3508
  %359 = icmp ult i64 %357, 2, !dbg !3713
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !3714
  br i1 %361, label %461, label %362, !dbg !3714

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !3715
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !3387, metadata !DIExpression()), !dbg !3716
  br label %364, !dbg !3717

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !3401
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !3500
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !3498
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !3508
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !3718
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !3363, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !3361, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !3358, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !3356, metadata !DIExpression()), !dbg !3498
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !3350, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !3341, metadata !DIExpression()), !dbg !3401
  br i1 %360, label %417, label %371, !dbg !3719

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !3724

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3361, metadata !DIExpression()), !dbg !3508
  %373 = and i8 %366, 1, !dbg !3727
  %374 = icmp eq i8 %373, 0, !dbg !3727
  %375 = select i1 %132, i1 %374, i1 false, !dbg !3727
  br i1 %375, label %376, label %392, !dbg !3727

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !3729
  br i1 %377, label %378, label %380, !dbg !3733

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3729
  store i8 39, ptr %379, align 1, !dbg !3729, !tbaa !1111
  br label %380, !dbg !3729

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !3733
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !3341, metadata !DIExpression()), !dbg !3401
  %382 = icmp ult i64 %381, %146, !dbg !3734
  br i1 %382, label %383, label %385, !dbg !3737

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !3734
  store i8 36, ptr %384, align 1, !dbg !3734, !tbaa !1111
  br label %385, !dbg !3734

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !3737
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !3341, metadata !DIExpression()), !dbg !3401
  %387 = icmp ult i64 %386, %146, !dbg !3738
  br i1 %387, label %388, label %390, !dbg !3741

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3738
  store i8 39, ptr %389, align 1, !dbg !3738, !tbaa !1111
  br label %390, !dbg !3738

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !3341, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3350, metadata !DIExpression()), !dbg !3401
  br label %392, !dbg !3742

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !3401
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !3350, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !3341, metadata !DIExpression()), !dbg !3401
  %395 = icmp ult i64 %393, %146, !dbg !3743
  br i1 %395, label %396, label %398, !dbg !3746

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !3743
  store i8 92, ptr %397, align 1, !dbg !3743, !tbaa !1111
  br label %398, !dbg !3743

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !3746
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !3341, metadata !DIExpression()), !dbg !3401
  %400 = icmp ult i64 %399, %146, !dbg !3747
  br i1 %400, label %401, label %405, !dbg !3750

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !3747
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !3747
  store i8 %403, ptr %404, align 1, !dbg !3747, !tbaa !1111
  br label %405, !dbg !3747

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !3750
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !3341, metadata !DIExpression()), !dbg !3401
  %407 = icmp ult i64 %406, %146, !dbg !3751
  br i1 %407, label %408, label %413, !dbg !3754

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !3751
  %411 = or disjoint i8 %410, 48, !dbg !3751
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !3751
  store i8 %411, ptr %412, align 1, !dbg !3751, !tbaa !1111
  br label %413, !dbg !3751

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !3754
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !3341, metadata !DIExpression()), !dbg !3401
  %415 = and i8 %370, 7, !dbg !3755
  %416 = or disjoint i8 %415, 48, !dbg !3756
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !3363, metadata !DIExpression()), !dbg !3508
  br label %426, !dbg !3757

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !3758
  %419 = icmp eq i8 %418, 0, !dbg !3758
  br i1 %419, label %426, label %420, !dbg !3760

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !3761
  br i1 %421, label %422, label %424, !dbg !3765

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3761
  store i8 92, ptr %423, align 1, !dbg !3761, !tbaa !1111
  br label %424, !dbg !3761

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !3765
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !3341, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3358, metadata !DIExpression()), !dbg !3508
  br label %426, !dbg !3766

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !3401
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !3500
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !3508
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !3508
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !3363, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !3361, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !3358, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !3350, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !3341, metadata !DIExpression()), !dbg !3401
  %432 = add i64 %367, 1, !dbg !3767
  %433 = icmp ugt i64 %363, %432, !dbg !3769
  br i1 %433, label %434, label %463, !dbg !3770

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !3771
  %436 = icmp ne i8 %435, 0, !dbg !3771
  %437 = and i8 %430, 1, !dbg !3771
  %438 = icmp eq i8 %437, 0, !dbg !3771
  %439 = select i1 %436, i1 %438, i1 false, !dbg !3771
  br i1 %439, label %440, label %451, !dbg !3771

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !3774
  br i1 %441, label %442, label %444, !dbg !3778

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !3774
  store i8 39, ptr %443, align 1, !dbg !3774, !tbaa !1111
  br label %444, !dbg !3774

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !3778
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !3341, metadata !DIExpression()), !dbg !3401
  %446 = icmp ult i64 %445, %146, !dbg !3779
  br i1 %446, label %447, label %449, !dbg !3782

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !3779
  store i8 39, ptr %448, align 1, !dbg !3779, !tbaa !1111
  br label %449, !dbg !3779

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !3782
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !3341, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3350, metadata !DIExpression()), !dbg !3401
  br label %451, !dbg !3783

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !3784
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !3350, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !3341, metadata !DIExpression()), !dbg !3401
  %454 = icmp ult i64 %452, %146, !dbg !3785
  br i1 %454, label %455, label %457, !dbg !3788

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !3785
  store i8 %431, ptr %456, align 1, !dbg !3785, !tbaa !1111
  br label %457, !dbg !3785

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !3788
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !3341, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !3356, metadata !DIExpression()), !dbg !3498
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !3789
  %460 = load i8, ptr %459, align 1, !dbg !3789, !tbaa !1111
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !3363, metadata !DIExpression()), !dbg !3508
  br label %364, !dbg !3790, !llvm.loop !3791

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !3363, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !3362, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3361, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !3358, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !3356, metadata !DIExpression()), !dbg !3498
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !3350, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !3341, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !3334, metadata !DIExpression()), !dbg !3401
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !3363, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !3362, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !3361, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !3358, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !3356, metadata !DIExpression()), !dbg !3498
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !3350, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !3341, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !3334, metadata !DIExpression()), !dbg !3401
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !3794
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !3401
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !3406
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !3401
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !3401
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !3498
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !3508
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !3508
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !3508
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !3332, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !3363, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !3362, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !3361, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !3358, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !3356, metadata !DIExpression()), !dbg !3498
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !3350, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !3347, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !3342, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !3341, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !3334, metadata !DIExpression()), !dbg !3401
  br i1 %126, label %487, label %476, !dbg !3795

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
  br i1 %137, label %488, label %509, !dbg !3797

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !3798

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
  %499 = lshr i8 %490, 5, !dbg !3799
  %500 = zext nneg i8 %499 to i64, !dbg !3799
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !3800
  %502 = load i32, ptr %501, align 4, !dbg !3800, !tbaa !1102
  %503 = and i8 %490, 31, !dbg !3801
  %504 = zext nneg i8 %503 to i32, !dbg !3801
  %505 = shl nuw i32 1, %504, !dbg !3802
  %506 = and i32 %502, %505, !dbg !3802
  %507 = icmp eq i32 %506, 0, !dbg !3802
  %508 = and i1 %172, %507, !dbg !3803
  br i1 %508, label %558, label %520, !dbg !3803

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
  br i1 %172, label %558, label %520, !dbg !3804

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !3794
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !3401
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !3406
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !3410
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !3500
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !3805
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !3508
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !3508
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !3332, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !3363, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !3362, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !3356, metadata !DIExpression()), !dbg !3498
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !3350, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !3347, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !3342, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !3341, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !3334, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.label(metadata !3390), !dbg !3806
  br i1 %131, label %530, label %659, !dbg !3807

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3361, metadata !DIExpression()), !dbg !3508
  %531 = and i8 %525, 1, !dbg !3809
  %532 = icmp eq i8 %531, 0, !dbg !3809
  %533 = select i1 %132, i1 %532, i1 false, !dbg !3809
  br i1 %533, label %534, label %550, !dbg !3809

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !3811
  br i1 %535, label %536, label %538, !dbg !3815

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3811
  store i8 39, ptr %537, align 1, !dbg !3811, !tbaa !1111
  br label %538, !dbg !3811

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !3815
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !3341, metadata !DIExpression()), !dbg !3401
  %540 = icmp ult i64 %539, %529, !dbg !3816
  br i1 %540, label %541, label %543, !dbg !3819

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !3816
  store i8 36, ptr %542, align 1, !dbg !3816, !tbaa !1111
  br label %543, !dbg !3816

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !3819
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !3341, metadata !DIExpression()), !dbg !3401
  %545 = icmp ult i64 %544, %529, !dbg !3820
  br i1 %545, label %546, label %548, !dbg !3823

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !3820
  store i8 39, ptr %547, align 1, !dbg !3820, !tbaa !1111
  br label %548, !dbg !3820

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !3823
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !3341, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3350, metadata !DIExpression()), !dbg !3401
  br label %550, !dbg !3824

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !3508
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !3350, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !3341, metadata !DIExpression()), !dbg !3401
  %553 = icmp ult i64 %551, %529, !dbg !3825
  br i1 %553, label %554, label %556, !dbg !3828

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !3825
  store i8 92, ptr %555, align 1, !dbg !3825, !tbaa !1111
  br label %556, !dbg !3825

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !3828
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !3332, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !3363, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !3362, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3361, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !3356, metadata !DIExpression()), !dbg !3498
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !3350, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !3347, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !3342, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !3341, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !3334, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.label(metadata !3391), !dbg !3829
  br label %585, !dbg !3830

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !3794
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !3401
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !3406
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !3410
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !3500
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !3805
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !3508
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !3508
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !3833
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !3332, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !3363, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !3362, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !3361, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !3356, metadata !DIExpression()), !dbg !3498
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !3350, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !3347, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !3342, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !3341, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !3334, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.label(metadata !3391), !dbg !3829
  %569 = and i8 %563, 1, !dbg !3830
  %570 = icmp ne i8 %569, 0, !dbg !3830
  %571 = and i8 %565, 1, !dbg !3830
  %572 = icmp eq i8 %571, 0, !dbg !3830
  %573 = select i1 %570, i1 %572, i1 false, !dbg !3830
  br i1 %573, label %574, label %585, !dbg !3830

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !3834
  br i1 %575, label %576, label %578, !dbg !3838

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !3834
  store i8 39, ptr %577, align 1, !dbg !3834, !tbaa !1111
  br label %578, !dbg !3834

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !3838
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !3341, metadata !DIExpression()), !dbg !3401
  %580 = icmp ult i64 %579, %568, !dbg !3839
  br i1 %580, label %581, label %583, !dbg !3842

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !3839
  store i8 39, ptr %582, align 1, !dbg !3839, !tbaa !1111
  br label %583, !dbg !3839

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !3842
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !3341, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3350, metadata !DIExpression()), !dbg !3401
  br label %585, !dbg !3843

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !3508
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !3350, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !3341, metadata !DIExpression()), !dbg !3401
  %595 = icmp ult i64 %593, %586, !dbg !3844
  br i1 %595, label %596, label %598, !dbg !3847

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !3844
  store i8 %587, ptr %597, align 1, !dbg !3844, !tbaa !1111
  br label %598, !dbg !3844

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !3847
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !3341, metadata !DIExpression()), !dbg !3401
  %600 = icmp eq i8 %588, 0, !dbg !3848
  %601 = select i1 %600, i8 0, i8 %143, !dbg !3850
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !3348, metadata !DIExpression()), !dbg !3401
  br label %602, !dbg !3851

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !3794
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !3401
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !3406
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !3410
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !3411
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !3500
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !3805
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !3332, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !3356, metadata !DIExpression()), !dbg !3498
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !3350, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !3348, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !3347, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !3342, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !3341, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !3334, metadata !DIExpression()), !dbg !3401
  %611 = add i64 %609, 1, !dbg !3852
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !3356, metadata !DIExpression()), !dbg !3498
  br label %138, !dbg !3853, !llvm.loop !3854

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !3332, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !3348, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !3347, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !3342, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !3341, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !3334, metadata !DIExpression()), !dbg !3401
  %613 = icmp eq i64 %140, 0, !dbg !3856
  %614 = and i1 %132, %613, !dbg !3858
  %615 = xor i1 %614, true, !dbg !3858
  %616 = select i1 %615, i1 true, i1 %131, !dbg !3858
  br i1 %616, label %617, label %655, !dbg !3858

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !3859
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !3859
  br i1 %621, label %622, label %631, !dbg !3859

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !3861
  %624 = icmp eq i8 %623, 0, !dbg !3861
  br i1 %624, label %627, label %625, !dbg !3864

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !3865
  br label %672, !dbg !3866

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !3867
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !3869
  br i1 %630, label %28, label %631, !dbg !3869

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !3870
  %634 = select i1 %633, i1 %632, i1 false, !dbg !3872
  br i1 %634, label %635, label %650, !dbg !3872

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !3343, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !3341, metadata !DIExpression()), !dbg !3401
  %636 = load i8, ptr %119, align 1, !dbg !3873, !tbaa !1111
  %637 = icmp eq i8 %636, 0, !dbg !3876
  br i1 %637, label %650, label %638, !dbg !3876

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !3343, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !3341, metadata !DIExpression()), !dbg !3401
  %642 = icmp ult i64 %641, %146, !dbg !3877
  br i1 %642, label %643, label %645, !dbg !3880

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !3877
  store i8 %639, ptr %644, align 1, !dbg !3877, !tbaa !1111
  br label %645, !dbg !3877

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !3880
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !3341, metadata !DIExpression()), !dbg !3401
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !3881
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !3343, metadata !DIExpression()), !dbg !3401
  %648 = load i8, ptr %647, align 1, !dbg !3873, !tbaa !1111
  %649 = icmp eq i8 %648, 0, !dbg !3876
  br i1 %649, label %650, label %638, !dbg !3876, !llvm.loop !3882

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !3481
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !3341, metadata !DIExpression()), !dbg !3401
  %652 = icmp ult i64 %651, %146, !dbg !3884
  br i1 %652, label %653, label %672, !dbg !3886

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !3887
  store i8 0, ptr %654, align 1, !dbg !3888, !tbaa !1111
  br label %672, !dbg !3887

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !3392), !dbg !3889
  %657 = icmp eq i8 %123, 0, !dbg !3890
  %658 = select i1 %657, i32 2, i32 4, !dbg !3890
  br label %666, !dbg !3890

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !3392), !dbg !3889
  %662 = icmp eq i32 %115, 2, !dbg !3892
  %663 = icmp eq i8 %123, 0, !dbg !3890
  %664 = select i1 %663, i32 2, i32 4, !dbg !3890
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !3890
  br label %666, !dbg !3890

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !3335, metadata !DIExpression()), !dbg !3401
  %670 = and i32 %5, -3, !dbg !3893
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !3894
  br label %672, !dbg !3895

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !3896
}

; Function Attrs: nounwind
declare !dbg !3897 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3900 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3902 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3906, metadata !DIExpression()), !dbg !3909
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3907, metadata !DIExpression()), !dbg !3909
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3908, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata ptr %0, metadata !3910, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i64 %1, metadata !3915, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata ptr null, metadata !3916, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata ptr %2, metadata !3917, metadata !DIExpression()), !dbg !3923
  %4 = icmp eq ptr %2, null, !dbg !3925
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3925
  call void @llvm.dbg.value(metadata ptr %5, metadata !3918, metadata !DIExpression()), !dbg !3923
  %6 = tail call ptr @__errno_location() #45, !dbg !3926
  %7 = load i32, ptr %6, align 4, !dbg !3926, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %7, metadata !3919, metadata !DIExpression()), !dbg !3923
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3927
  %9 = load i32, ptr %8, align 4, !dbg !3927, !tbaa !3275
  %10 = or i32 %9, 1, !dbg !3928
  call void @llvm.dbg.value(metadata i32 %10, metadata !3920, metadata !DIExpression()), !dbg !3923
  %11 = load i32, ptr %5, align 8, !dbg !3929, !tbaa !3225
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3930
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3931
  %14 = load ptr, ptr %13, align 8, !dbg !3931, !tbaa !3296
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3932
  %16 = load ptr, ptr %15, align 8, !dbg !3932, !tbaa !3299
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3933
  %18 = add i64 %17, 1, !dbg !3934
  call void @llvm.dbg.value(metadata i64 %18, metadata !3921, metadata !DIExpression()), !dbg !3923
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #49, !dbg !3935
  call void @llvm.dbg.value(metadata ptr %19, metadata !3922, metadata !DIExpression()), !dbg !3923
  %20 = load i32, ptr %5, align 8, !dbg !3936, !tbaa !3225
  %21 = load ptr, ptr %13, align 8, !dbg !3937, !tbaa !3296
  %22 = load ptr, ptr %15, align 8, !dbg !3938, !tbaa !3299
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3939
  store i32 %7, ptr %6, align 4, !dbg !3940, !tbaa !1102
  ret ptr %19, !dbg !3941
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3911 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3910, metadata !DIExpression()), !dbg !3942
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3915, metadata !DIExpression()), !dbg !3942
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3916, metadata !DIExpression()), !dbg !3942
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3917, metadata !DIExpression()), !dbg !3942
  %5 = icmp eq ptr %3, null, !dbg !3943
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3943
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3918, metadata !DIExpression()), !dbg !3942
  %7 = tail call ptr @__errno_location() #45, !dbg !3944
  %8 = load i32, ptr %7, align 4, !dbg !3944, !tbaa !1102
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3919, metadata !DIExpression()), !dbg !3942
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3945
  %10 = load i32, ptr %9, align 4, !dbg !3945, !tbaa !3275
  %11 = icmp eq ptr %2, null, !dbg !3946
  %12 = zext i1 %11 to i32, !dbg !3946
  %13 = or i32 %10, %12, !dbg !3947
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3920, metadata !DIExpression()), !dbg !3942
  %14 = load i32, ptr %6, align 8, !dbg !3948, !tbaa !3225
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3949
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3950
  %17 = load ptr, ptr %16, align 8, !dbg !3950, !tbaa !3296
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3951
  %19 = load ptr, ptr %18, align 8, !dbg !3951, !tbaa !3299
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3952
  %21 = add i64 %20, 1, !dbg !3953
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3921, metadata !DIExpression()), !dbg !3942
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #49, !dbg !3954
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3922, metadata !DIExpression()), !dbg !3942
  %23 = load i32, ptr %6, align 8, !dbg !3955, !tbaa !3225
  %24 = load ptr, ptr %16, align 8, !dbg !3956, !tbaa !3296
  %25 = load ptr, ptr %18, align 8, !dbg !3957, !tbaa !3299
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3958
  store i32 %8, ptr %7, align 4, !dbg !3959, !tbaa !1102
  br i1 %11, label %28, label %27, !dbg !3960

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3961, !tbaa !1303
  br label %28, !dbg !3963

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3964
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3965 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3970, !tbaa !1024
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3967, metadata !DIExpression()), !dbg !3971
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3968, metadata !DIExpression()), !dbg !3972
  %2 = load i32, ptr @nslots, align 4, !tbaa !1102
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3968, metadata !DIExpression()), !dbg !3972
  %3 = icmp sgt i32 %2, 1, !dbg !3973
  br i1 %3, label %4, label %6, !dbg !3975

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3973
  br label %10, !dbg !3975

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3976
  %8 = load ptr, ptr %7, align 8, !dbg !3976, !tbaa !3978
  %9 = icmp eq ptr %8, @slot0, !dbg !3980
  br i1 %9, label %17, label %16, !dbg !3981

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3968, metadata !DIExpression()), !dbg !3972
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3982
  %13 = load ptr, ptr %12, align 8, !dbg !3982, !tbaa !3978
  tail call void @free(ptr noundef %13) #42, !dbg !3983
  %14 = add nuw nsw i64 %11, 1, !dbg !3984
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3968, metadata !DIExpression()), !dbg !3972
  %15 = icmp eq i64 %14, %5, !dbg !3973
  br i1 %15, label %6, label %10, !dbg !3975, !llvm.loop !3985

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #42, !dbg !3987
  store i64 256, ptr @slotvec0, align 8, !dbg !3989, !tbaa !3990
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3991, !tbaa !3978
  br label %17, !dbg !3992

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3993
  br i1 %18, label %20, label %19, !dbg !3995

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #42, !dbg !3996
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3998, !tbaa !1024
  br label %20, !dbg !3999

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !4000, !tbaa !1102
  ret void, !dbg !4001
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4002 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4004, metadata !DIExpression()), !dbg !4006
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4005, metadata !DIExpression()), !dbg !4006
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !4007
  ret ptr %3, !dbg !4008
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !4009 {
  %5 = alloca i64, align 8, !DIAssignID !4029
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4023, metadata !DIExpression(), metadata !4029, metadata ptr %5, metadata !DIExpression()), !dbg !4030
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4013, metadata !DIExpression()), !dbg !4031
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4014, metadata !DIExpression()), !dbg !4031
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4015, metadata !DIExpression()), !dbg !4031
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4016, metadata !DIExpression()), !dbg !4031
  %6 = tail call ptr @__errno_location() #45, !dbg !4032
  %7 = load i32, ptr %6, align 4, !dbg !4032, !tbaa !1102
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !4017, metadata !DIExpression()), !dbg !4031
  %8 = load ptr, ptr @slotvec, align 8, !dbg !4033, !tbaa !1024
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !4018, metadata !DIExpression()), !dbg !4031
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !4019, metadata !DIExpression()), !dbg !4031
  %9 = icmp ugt i32 %0, 2147483646, !dbg !4034
  br i1 %9, label %10, label %11, !dbg !4034

10:                                               ; preds = %4
  tail call void @abort() #44, !dbg !4036
  unreachable, !dbg !4036

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !4037, !tbaa !1102
  %13 = icmp sgt i32 %12, %0, !dbg !4038
  br i1 %13, label %32, label %14, !dbg !4039

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !4040
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !4020, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4030
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #42, !dbg !4041
  %16 = sext i32 %12 to i64, !dbg !4042
  store i64 %16, ptr %5, align 8, !dbg !4043, !tbaa !1303, !DIAssignID !4044
  call void @llvm.dbg.assign(metadata i64 %16, metadata !4023, metadata !DIExpression(), metadata !4044, metadata ptr %5, metadata !DIExpression()), !dbg !4030
  %17 = select i1 %15, ptr null, ptr %8, !dbg !4045
  %18 = add nuw nsw i32 %0, 1, !dbg !4046
  %19 = sub i32 %18, %12, !dbg !4047
  %20 = sext i32 %19 to i64, !dbg !4048
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #42, !dbg !4049
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !4018, metadata !DIExpression()), !dbg !4031
  store ptr %21, ptr @slotvec, align 8, !dbg !4050, !tbaa !1024
  br i1 %15, label %22, label %23, !dbg !4051

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !4052, !tbaa.struct !4054
  br label %23, !dbg !4055

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !4056, !tbaa !1102
  %25 = sext i32 %24 to i64, !dbg !4057
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !4057
  %27 = load i64, ptr %5, align 8, !dbg !4058, !tbaa !1303
  %28 = sub nsw i64 %27, %25, !dbg !4059
  %29 = shl i64 %28, 4, !dbg !4060
  call void @llvm.dbg.value(metadata ptr %26, metadata !3439, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i32 0, metadata !3442, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i64 %29, metadata !3443, metadata !DIExpression()), !dbg !4061
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #42, !dbg !4063
  %30 = load i64, ptr %5, align 8, !dbg !4064, !tbaa !1303
  %31 = trunc i64 %30 to i32, !dbg !4064
  store i32 %31, ptr @nslots, align 4, !dbg !4065, !tbaa !1102
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #42, !dbg !4066
  br label %32, !dbg !4067

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !4031
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !4018, metadata !DIExpression()), !dbg !4031
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !4068
  %36 = load i64, ptr %35, align 8, !dbg !4069, !tbaa !3990
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !4024, metadata !DIExpression()), !dbg !4070
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !4071
  %38 = load ptr, ptr %37, align 8, !dbg !4071, !tbaa !3978
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !4026, metadata !DIExpression()), !dbg !4070
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !4072
  %40 = load i32, ptr %39, align 4, !dbg !4072, !tbaa !3275
  %41 = or i32 %40, 1, !dbg !4073
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !4027, metadata !DIExpression()), !dbg !4070
  %42 = load i32, ptr %3, align 8, !dbg !4074, !tbaa !3225
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !4075
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !4076
  %45 = load ptr, ptr %44, align 8, !dbg !4076, !tbaa !3296
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !4077
  %47 = load ptr, ptr %46, align 8, !dbg !4077, !tbaa !3299
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !4078
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !4028, metadata !DIExpression()), !dbg !4070
  %49 = icmp ugt i64 %36, %48, !dbg !4079
  br i1 %49, label %60, label %50, !dbg !4081

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !4082
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !4024, metadata !DIExpression()), !dbg !4070
  store i64 %51, ptr %35, align 8, !dbg !4084, !tbaa !3990
  %52 = icmp eq ptr %38, @slot0, !dbg !4085
  br i1 %52, label %54, label %53, !dbg !4087

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #42, !dbg !4088
  br label %54, !dbg !4088

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #49, !dbg !4089
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !4026, metadata !DIExpression()), !dbg !4070
  store ptr %55, ptr %37, align 8, !dbg !4090, !tbaa !3978
  %56 = load i32, ptr %3, align 8, !dbg !4091, !tbaa !3225
  %57 = load ptr, ptr %44, align 8, !dbg !4092, !tbaa !3296
  %58 = load ptr, ptr %46, align 8, !dbg !4093, !tbaa !3299
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !4094
  br label %60, !dbg !4095

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !4070
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !4026, metadata !DIExpression()), !dbg !4070
  store i32 %7, ptr %6, align 4, !dbg !4096, !tbaa !1102
  ret ptr %61, !dbg !4097
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #29

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4098 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4102, metadata !DIExpression()), !dbg !4105
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4103, metadata !DIExpression()), !dbg !4105
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4104, metadata !DIExpression()), !dbg !4105
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !4106
  ret ptr %4, !dbg !4107
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !4108 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4110, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata i32 0, metadata !4004, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata ptr %0, metadata !4005, metadata !DIExpression()), !dbg !4112
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !4114
  ret ptr %2, !dbg !4115
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4116 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4120, metadata !DIExpression()), !dbg !4122
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4121, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i32 0, metadata !4102, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata ptr %0, metadata !4103, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata i64 %1, metadata !4104, metadata !DIExpression()), !dbg !4123
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !4125
  ret ptr %3, !dbg !4126
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4127 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4135
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4134, metadata !DIExpression(), metadata !4135, metadata ptr %4, metadata !DIExpression()), !dbg !4136
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4131, metadata !DIExpression()), !dbg !4136
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4132, metadata !DIExpression()), !dbg !4136
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4133, metadata !DIExpression()), !dbg !4136
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !4137
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4138), !dbg !4141
  call void @llvm.dbg.value(metadata i32 %1, metadata !4142, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4147, metadata !DIExpression()), !dbg !4150
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !4150, !alias.scope !4138, !DIAssignID !4151
  call void @llvm.dbg.assign(metadata i8 0, metadata !4134, metadata !DIExpression(), metadata !4151, metadata ptr %4, metadata !DIExpression()), !dbg !4136
  %5 = icmp eq i32 %1, 10, !dbg !4152
  br i1 %5, label %6, label %7, !dbg !4154

6:                                                ; preds = %3
  tail call void @abort() #44, !dbg !4155, !noalias !4138
  unreachable, !dbg !4155

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !4156, !tbaa !3225, !alias.scope !4138, !DIAssignID !4157
  call void @llvm.dbg.assign(metadata i32 %1, metadata !4134, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4157, metadata ptr %4, metadata !DIExpression()), !dbg !4136
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4158
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !4159
  ret ptr %8, !dbg !4160
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4161 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4170
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4169, metadata !DIExpression(), metadata !4170, metadata ptr %5, metadata !DIExpression()), !dbg !4171
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4165, metadata !DIExpression()), !dbg !4171
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4166, metadata !DIExpression()), !dbg !4171
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4167, metadata !DIExpression()), !dbg !4171
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4168, metadata !DIExpression()), !dbg !4171
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #42, !dbg !4172
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4173), !dbg !4176
  call void @llvm.dbg.value(metadata i32 %1, metadata !4142, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4147, metadata !DIExpression()), !dbg !4179
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !4179, !alias.scope !4173, !DIAssignID !4180
  call void @llvm.dbg.assign(metadata i8 0, metadata !4169, metadata !DIExpression(), metadata !4180, metadata ptr %5, metadata !DIExpression()), !dbg !4171
  %6 = icmp eq i32 %1, 10, !dbg !4181
  br i1 %6, label %7, label %8, !dbg !4182

7:                                                ; preds = %4
  tail call void @abort() #44, !dbg !4183, !noalias !4173
  unreachable, !dbg !4183

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !4184, !tbaa !3225, !alias.scope !4173, !DIAssignID !4185
  call void @llvm.dbg.assign(metadata i32 %1, metadata !4169, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4185, metadata ptr %5, metadata !DIExpression()), !dbg !4171
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4186
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #42, !dbg !4187
  ret ptr %9, !dbg !4188
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4189 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !4195
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4193, metadata !DIExpression()), !dbg !4196
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4194, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4134, metadata !DIExpression(), metadata !4195, metadata ptr %3, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i32 0, metadata !4131, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i32 %0, metadata !4132, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata ptr %1, metadata !4133, metadata !DIExpression()), !dbg !4197
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #42, !dbg !4199
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4200), !dbg !4203
  call void @llvm.dbg.value(metadata i32 %0, metadata !4142, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4147, metadata !DIExpression()), !dbg !4206
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !4206, !alias.scope !4200, !DIAssignID !4207
  call void @llvm.dbg.assign(metadata i8 0, metadata !4134, metadata !DIExpression(), metadata !4207, metadata ptr %3, metadata !DIExpression()), !dbg !4197
  %4 = icmp eq i32 %0, 10, !dbg !4208
  br i1 %4, label %5, label %6, !dbg !4209

5:                                                ; preds = %2
  tail call void @abort() #44, !dbg !4210, !noalias !4200
  unreachable, !dbg !4210

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !4211, !tbaa !3225, !alias.scope !4200, !DIAssignID !4212
  call void @llvm.dbg.assign(metadata i32 %0, metadata !4134, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4212, metadata ptr %3, metadata !DIExpression()), !dbg !4197
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !4213
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #42, !dbg !4214
  ret ptr %7, !dbg !4215
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4216 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4223
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4220, metadata !DIExpression()), !dbg !4224
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4221, metadata !DIExpression()), !dbg !4224
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4222, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4169, metadata !DIExpression(), metadata !4223, metadata ptr %4, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i32 0, metadata !4165, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i32 %0, metadata !4166, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata ptr %1, metadata !4167, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i64 %2, metadata !4168, metadata !DIExpression()), !dbg !4225
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !4227
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4228), !dbg !4231
  call void @llvm.dbg.value(metadata i32 %0, metadata !4142, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4147, metadata !DIExpression()), !dbg !4234
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !4234, !alias.scope !4228, !DIAssignID !4235
  call void @llvm.dbg.assign(metadata i8 0, metadata !4169, metadata !DIExpression(), metadata !4235, metadata ptr %4, metadata !DIExpression()), !dbg !4225
  %5 = icmp eq i32 %0, 10, !dbg !4236
  br i1 %5, label %6, label %7, !dbg !4237

6:                                                ; preds = %3
  tail call void @abort() #44, !dbg !4238, !noalias !4228
  unreachable, !dbg !4238

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !4239, !tbaa !3225, !alias.scope !4228, !DIAssignID !4240
  call void @llvm.dbg.assign(metadata i32 %0, metadata !4169, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4240, metadata ptr %4, metadata !DIExpression()), !dbg !4225
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !4241
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !4242
  ret ptr %8, !dbg !4243
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !4244 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4252
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4251, metadata !DIExpression(), metadata !4252, metadata ptr %4, metadata !DIExpression()), !dbg !4253
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4248, metadata !DIExpression()), !dbg !4253
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4249, metadata !DIExpression()), !dbg !4253
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !4250, metadata !DIExpression()), !dbg !4253
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !4254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4255, !tbaa.struct !4256, !DIAssignID !4257
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4251, metadata !DIExpression(), metadata !4257, metadata ptr %4, metadata !DIExpression()), !dbg !4253
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3242, metadata !DIExpression()), !dbg !4258
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3243, metadata !DIExpression()), !dbg !4258
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3244, metadata !DIExpression()), !dbg !4258
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3245, metadata !DIExpression()), !dbg !4258
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !4260
  %6 = lshr i8 %2, 5, !dbg !4261
  %7 = zext nneg i8 %6 to i64, !dbg !4261
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !4262
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3246, metadata !DIExpression()), !dbg !4258
  %9 = and i8 %2, 31, !dbg !4263
  %10 = zext nneg i8 %9 to i32, !dbg !4263
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !3248, metadata !DIExpression()), !dbg !4258
  %11 = load i32, ptr %8, align 4, !dbg !4264, !tbaa !1102
  %12 = lshr i32 %11, %10, !dbg !4265
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !3249, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4258
  %13 = and i32 %12, 1, !dbg !4266
  %14 = xor i32 %13, 1, !dbg !4266
  %15 = shl nuw i32 %14, %10, !dbg !4267
  %16 = xor i32 %15, %11, !dbg !4268
  store i32 %16, ptr %8, align 4, !dbg !4268, !tbaa !1102
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !4269
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !4270
  ret ptr %17, !dbg !4271
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !4272 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !4278
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4276, metadata !DIExpression()), !dbg !4279
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !4277, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4251, metadata !DIExpression(), metadata !4278, metadata ptr %3, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr %0, metadata !4248, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i64 -1, metadata !4249, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i8 %1, metadata !4250, metadata !DIExpression()), !dbg !4280
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #42, !dbg !4282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4283, !tbaa.struct !4256, !DIAssignID !4284
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4251, metadata !DIExpression(), metadata !4284, metadata ptr %3, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr %3, metadata !3242, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata i8 %1, metadata !3243, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata i32 1, metadata !3244, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata i8 %1, metadata !3245, metadata !DIExpression()), !dbg !4285
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !4287
  %5 = lshr i8 %1, 5, !dbg !4288
  %6 = zext nneg i8 %5 to i64, !dbg !4288
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !4289
  call void @llvm.dbg.value(metadata ptr %7, metadata !3246, metadata !DIExpression()), !dbg !4285
  %8 = and i8 %1, 31, !dbg !4290
  %9 = zext nneg i8 %8 to i32, !dbg !4290
  call void @llvm.dbg.value(metadata i32 %9, metadata !3248, metadata !DIExpression()), !dbg !4285
  %10 = load i32, ptr %7, align 4, !dbg !4291, !tbaa !1102
  %11 = lshr i32 %10, %9, !dbg !4292
  call void @llvm.dbg.value(metadata i32 %11, metadata !3249, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4285
  %12 = and i32 %11, 1, !dbg !4293
  %13 = xor i32 %12, 1, !dbg !4293
  %14 = shl nuw i32 %13, %9, !dbg !4294
  %15 = xor i32 %14, %10, !dbg !4295
  store i32 %15, ptr %7, align 4, !dbg !4295, !tbaa !1102
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !4296
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #42, !dbg !4297
  ret ptr %16, !dbg !4298
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !4299 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !4302
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4301, metadata !DIExpression()), !dbg !4303
  call void @llvm.dbg.value(metadata ptr %0, metadata !4276, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i8 58, metadata !4277, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4251, metadata !DIExpression(), metadata !4302, metadata ptr %2, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata ptr %0, metadata !4248, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i64 -1, metadata !4249, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i8 58, metadata !4250, metadata !DIExpression()), !dbg !4306
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #42, !dbg !4308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4309, !tbaa.struct !4256, !DIAssignID !4310
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4251, metadata !DIExpression(), metadata !4310, metadata ptr %2, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata ptr %2, metadata !3242, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i8 58, metadata !3243, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i32 1, metadata !3244, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i8 58, metadata !3245, metadata !DIExpression()), !dbg !4311
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !4313
  call void @llvm.dbg.value(metadata ptr %3, metadata !3246, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i32 26, metadata !3248, metadata !DIExpression()), !dbg !4311
  %4 = load i32, ptr %3, align 4, !dbg !4314, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %4, metadata !3249, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4311
  %5 = or i32 %4, 67108864, !dbg !4315
  store i32 %5, ptr %3, align 4, !dbg !4315, !tbaa !1102
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !4316
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #42, !dbg !4317
  ret ptr %6, !dbg !4318
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4319 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !4323
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4321, metadata !DIExpression()), !dbg !4324
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4322, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4251, metadata !DIExpression(), metadata !4323, metadata ptr %3, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.value(metadata ptr %0, metadata !4248, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.value(metadata i64 %1, metadata !4249, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.value(metadata i8 58, metadata !4250, metadata !DIExpression()), !dbg !4325
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #42, !dbg !4327
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4328, !tbaa.struct !4256, !DIAssignID !4329
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4251, metadata !DIExpression(), metadata !4329, metadata ptr %3, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.value(metadata ptr %3, metadata !3242, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i8 58, metadata !3243, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 1, metadata !3244, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i8 58, metadata !3245, metadata !DIExpression()), !dbg !4330
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !4332
  call void @llvm.dbg.value(metadata ptr %4, metadata !3246, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 26, metadata !3248, metadata !DIExpression()), !dbg !4330
  %5 = load i32, ptr %4, align 4, !dbg !4333, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %5, metadata !3249, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4330
  %6 = or i32 %5, 67108864, !dbg !4334
  store i32 %6, ptr %4, align 4, !dbg !4334, !tbaa !1102
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !4335
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #42, !dbg !4336
  ret ptr %7, !dbg !4337
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4338 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4344
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4343, metadata !DIExpression(), metadata !4344, metadata ptr %4, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.declare(metadata ptr poison, metadata !4147, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4346
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4340, metadata !DIExpression()), !dbg !4345
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4341, metadata !DIExpression()), !dbg !4345
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4342, metadata !DIExpression()), !dbg !4345
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !4348
  call void @llvm.dbg.value(metadata i32 %1, metadata !4142, metadata !DIExpression()), !dbg !4349
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4147, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4349
  %5 = icmp eq i32 %1, 10, !dbg !4350
  br i1 %5, label %6, label %7, !dbg !4351

6:                                                ; preds = %3
  tail call void @abort() #44, !dbg !4352, !noalias !4353
  unreachable, !dbg !4352

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4147, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4349
  store i32 %1, ptr %4, align 8, !dbg !4356, !tbaa.struct !4256, !DIAssignID !4357
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !4356
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !4356
  call void @llvm.dbg.assign(metadata i32 %1, metadata !4343, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4357, metadata ptr %4, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4343, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !4358, metadata ptr %8, metadata !DIExpression()), !dbg !4345
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3242, metadata !DIExpression()), !dbg !4359
  tail call void @llvm.dbg.value(metadata i8 58, metadata !3243, metadata !DIExpression()), !dbg !4359
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3244, metadata !DIExpression()), !dbg !4359
  tail call void @llvm.dbg.value(metadata i8 58, metadata !3245, metadata !DIExpression()), !dbg !4359
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !4361
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !3246, metadata !DIExpression()), !dbg !4359
  tail call void @llvm.dbg.value(metadata i32 26, metadata !3248, metadata !DIExpression()), !dbg !4359
  %10 = load i32, ptr %9, align 4, !dbg !4362, !tbaa !1102
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !3249, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4359
  %11 = or i32 %10, 67108864, !dbg !4363
  store i32 %11, ptr %9, align 4, !dbg !4363, !tbaa !1102, !DIAssignID !4364
  call void @llvm.dbg.assign(metadata i32 %11, metadata !4343, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !4364, metadata ptr %9, metadata !DIExpression()), !dbg !4345
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4365
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !4366
  ret ptr %12, !dbg !4367
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4368 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4376
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4372, metadata !DIExpression()), !dbg !4377
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4373, metadata !DIExpression()), !dbg !4377
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4374, metadata !DIExpression()), !dbg !4377
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4375, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4378, metadata !DIExpression(), metadata !4376, metadata ptr %5, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata i32 %0, metadata !4383, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata ptr %1, metadata !4384, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata ptr %2, metadata !4385, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata ptr %3, metadata !4386, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata i64 -1, metadata !4387, metadata !DIExpression()), !dbg !4388
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #42, !dbg !4390
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4391, !tbaa.struct !4256, !DIAssignID !4392
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4378, metadata !DIExpression(), metadata !4392, metadata ptr %5, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4378, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4393, metadata ptr undef, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata ptr %5, metadata !3282, metadata !DIExpression()), !dbg !4394
  call void @llvm.dbg.value(metadata ptr %1, metadata !3283, metadata !DIExpression()), !dbg !4394
  call void @llvm.dbg.value(metadata ptr %2, metadata !3284, metadata !DIExpression()), !dbg !4394
  call void @llvm.dbg.value(metadata ptr %5, metadata !3282, metadata !DIExpression()), !dbg !4394
  store i32 10, ptr %5, align 8, !dbg !4396, !tbaa !3225, !DIAssignID !4397
  call void @llvm.dbg.assign(metadata i32 10, metadata !4378, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4397, metadata ptr %5, metadata !DIExpression()), !dbg !4388
  %6 = icmp ne ptr %1, null, !dbg !4398
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4399
  br i1 %8, label %10, label %9, !dbg !4399

9:                                                ; preds = %4
  tail call void @abort() #44, !dbg !4400
  unreachable, !dbg !4400

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4401
  store ptr %1, ptr %11, align 8, !dbg !4402, !tbaa !3296, !DIAssignID !4403
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4378, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4403, metadata ptr %11, metadata !DIExpression()), !dbg !4388
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4404
  store ptr %2, ptr %12, align 8, !dbg !4405, !tbaa !3299, !DIAssignID !4406
  call void @llvm.dbg.assign(metadata ptr %2, metadata !4378, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4406, metadata ptr %12, metadata !DIExpression()), !dbg !4388
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4407
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #42, !dbg !4408
  ret ptr %13, !dbg !4409
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !4379 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !4410
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4378, metadata !DIExpression(), metadata !4410, metadata ptr %6, metadata !DIExpression()), !dbg !4411
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4383, metadata !DIExpression()), !dbg !4411
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4384, metadata !DIExpression()), !dbg !4411
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4385, metadata !DIExpression()), !dbg !4411
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4386, metadata !DIExpression()), !dbg !4411
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !4387, metadata !DIExpression()), !dbg !4411
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #42, !dbg !4412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4413, !tbaa.struct !4256, !DIAssignID !4414
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4378, metadata !DIExpression(), metadata !4414, metadata ptr %6, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4378, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4415, metadata ptr undef, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.value(metadata ptr %6, metadata !3282, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata ptr %1, metadata !3283, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata ptr %2, metadata !3284, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata ptr %6, metadata !3282, metadata !DIExpression()), !dbg !4416
  store i32 10, ptr %6, align 8, !dbg !4418, !tbaa !3225, !DIAssignID !4419
  call void @llvm.dbg.assign(metadata i32 10, metadata !4378, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4419, metadata ptr %6, metadata !DIExpression()), !dbg !4411
  %7 = icmp ne ptr %1, null, !dbg !4420
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4421
  br i1 %9, label %11, label %10, !dbg !4421

10:                                               ; preds = %5
  tail call void @abort() #44, !dbg !4422
  unreachable, !dbg !4422

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4423
  store ptr %1, ptr %12, align 8, !dbg !4424, !tbaa !3296, !DIAssignID !4425
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4378, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4425, metadata ptr %12, metadata !DIExpression()), !dbg !4411
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4426
  store ptr %2, ptr %13, align 8, !dbg !4427, !tbaa !3299, !DIAssignID !4428
  call void @llvm.dbg.assign(metadata ptr %2, metadata !4378, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4428, metadata ptr %13, metadata !DIExpression()), !dbg !4411
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4429
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #42, !dbg !4430
  ret ptr %14, !dbg !4431
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4432 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4439
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4436, metadata !DIExpression()), !dbg !4440
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4437, metadata !DIExpression()), !dbg !4440
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4438, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 0, metadata !4372, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.value(metadata ptr %0, metadata !4373, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.value(metadata ptr %1, metadata !4374, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.value(metadata ptr %2, metadata !4375, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4378, metadata !DIExpression(), metadata !4439, metadata ptr %4, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.value(metadata i32 0, metadata !4383, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.value(metadata ptr %0, metadata !4384, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.value(metadata ptr %1, metadata !4385, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.value(metadata ptr %2, metadata !4386, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.value(metadata i64 -1, metadata !4387, metadata !DIExpression()), !dbg !4443
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !4445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4446, !tbaa.struct !4256, !DIAssignID !4447
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4378, metadata !DIExpression(), metadata !4447, metadata ptr %4, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4378, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4448, metadata ptr undef, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.value(metadata ptr %4, metadata !3282, metadata !DIExpression()), !dbg !4449
  call void @llvm.dbg.value(metadata ptr %0, metadata !3283, metadata !DIExpression()), !dbg !4449
  call void @llvm.dbg.value(metadata ptr %1, metadata !3284, metadata !DIExpression()), !dbg !4449
  call void @llvm.dbg.value(metadata ptr %4, metadata !3282, metadata !DIExpression()), !dbg !4449
  store i32 10, ptr %4, align 8, !dbg !4451, !tbaa !3225, !DIAssignID !4452
  call void @llvm.dbg.assign(metadata i32 10, metadata !4378, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4452, metadata ptr %4, metadata !DIExpression()), !dbg !4443
  %5 = icmp ne ptr %0, null, !dbg !4453
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4454
  br i1 %7, label %9, label %8, !dbg !4454

8:                                                ; preds = %3
  tail call void @abort() #44, !dbg !4455
  unreachable, !dbg !4455

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4456
  store ptr %0, ptr %10, align 8, !dbg !4457, !tbaa !3296, !DIAssignID !4458
  call void @llvm.dbg.assign(metadata ptr %0, metadata !4378, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4458, metadata ptr %10, metadata !DIExpression()), !dbg !4443
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4459
  store ptr %1, ptr %11, align 8, !dbg !4460, !tbaa !3299, !DIAssignID !4461
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4378, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4461, metadata ptr %11, metadata !DIExpression()), !dbg !4443
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4462
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !4463
  ret ptr %12, !dbg !4464
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4465 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4473
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4469, metadata !DIExpression()), !dbg !4474
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4470, metadata !DIExpression()), !dbg !4474
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4471, metadata !DIExpression()), !dbg !4474
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4472, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4378, metadata !DIExpression(), metadata !4473, metadata ptr %5, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.value(metadata i32 0, metadata !4383, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.value(metadata ptr %0, metadata !4384, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.value(metadata ptr %1, metadata !4385, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.value(metadata ptr %2, metadata !4386, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.value(metadata i64 %3, metadata !4387, metadata !DIExpression()), !dbg !4475
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #42, !dbg !4477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4478, !tbaa.struct !4256, !DIAssignID !4479
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4378, metadata !DIExpression(), metadata !4479, metadata ptr %5, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4378, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4480, metadata ptr undef, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.value(metadata ptr %5, metadata !3282, metadata !DIExpression()), !dbg !4481
  call void @llvm.dbg.value(metadata ptr %0, metadata !3283, metadata !DIExpression()), !dbg !4481
  call void @llvm.dbg.value(metadata ptr %1, metadata !3284, metadata !DIExpression()), !dbg !4481
  call void @llvm.dbg.value(metadata ptr %5, metadata !3282, metadata !DIExpression()), !dbg !4481
  store i32 10, ptr %5, align 8, !dbg !4483, !tbaa !3225, !DIAssignID !4484
  call void @llvm.dbg.assign(metadata i32 10, metadata !4378, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4484, metadata ptr %5, metadata !DIExpression()), !dbg !4475
  %6 = icmp ne ptr %0, null, !dbg !4485
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4486
  br i1 %8, label %10, label %9, !dbg !4486

9:                                                ; preds = %4
  tail call void @abort() #44, !dbg !4487
  unreachable, !dbg !4487

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4488
  store ptr %0, ptr %11, align 8, !dbg !4489, !tbaa !3296, !DIAssignID !4490
  call void @llvm.dbg.assign(metadata ptr %0, metadata !4378, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4490, metadata ptr %11, metadata !DIExpression()), !dbg !4475
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4491
  store ptr %1, ptr %12, align 8, !dbg !4492, !tbaa !3299, !DIAssignID !4493
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4378, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4493, metadata ptr %12, metadata !DIExpression()), !dbg !4475
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4494
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #42, !dbg !4495
  ret ptr %13, !dbg !4496
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4497 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4501, metadata !DIExpression()), !dbg !4504
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4502, metadata !DIExpression()), !dbg !4504
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4503, metadata !DIExpression()), !dbg !4504
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4505
  ret ptr %4, !dbg !4506
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4507 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4511, metadata !DIExpression()), !dbg !4513
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4512, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.value(metadata i32 0, metadata !4501, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata ptr %0, metadata !4502, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i64 %1, metadata !4503, metadata !DIExpression()), !dbg !4514
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4516
  ret ptr %3, !dbg !4517
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4518 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4522, metadata !DIExpression()), !dbg !4524
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4523, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i32 %0, metadata !4501, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata ptr %1, metadata !4502, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i64 -1, metadata !4503, metadata !DIExpression()), !dbg !4525
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4527
  ret ptr %3, !dbg !4528
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4529 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4533, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i32 0, metadata !4522, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata ptr %0, metadata !4523, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata i32 0, metadata !4501, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata ptr %0, metadata !4502, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i64 -1, metadata !4503, metadata !DIExpression()), !dbg !4537
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4539
  ret ptr %2, !dbg !4540
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4541 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4580, metadata !DIExpression()), !dbg !4586
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4581, metadata !DIExpression()), !dbg !4586
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4582, metadata !DIExpression()), !dbg !4586
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4583, metadata !DIExpression()), !dbg !4586
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4584, metadata !DIExpression()), !dbg !4586
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4585, metadata !DIExpression()), !dbg !4586
  %7 = icmp eq ptr %1, null, !dbg !4587
  br i1 %7, label %10, label %8, !dbg !4589

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.142, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #42, !dbg !4590
  br label %12, !dbg !4590

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.143, ptr noundef %2, ptr noundef %3) #42, !dbg !4591
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.3.145, i32 noundef 5) #42, !dbg !4592
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #42, !dbg !4592
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.146, ptr noundef %0), !dbg !4593
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.5.147, i32 noundef 5) #42, !dbg !4594
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.148) #42, !dbg !4594
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.146, ptr noundef %0), !dbg !4595
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
  ], !dbg !4596

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.7.149, i32 noundef 5) #42, !dbg !4597
  %21 = load ptr, ptr %4, align 8, !dbg !4597, !tbaa !1024
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #42, !dbg !4597
  br label %147, !dbg !4599

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.8.150, i32 noundef 5) #42, !dbg !4600
  %25 = load ptr, ptr %4, align 8, !dbg !4600, !tbaa !1024
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4600
  %27 = load ptr, ptr %26, align 8, !dbg !4600, !tbaa !1024
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #42, !dbg !4600
  br label %147, !dbg !4601

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.9.151, i32 noundef 5) #42, !dbg !4602
  %31 = load ptr, ptr %4, align 8, !dbg !4602, !tbaa !1024
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4602
  %33 = load ptr, ptr %32, align 8, !dbg !4602, !tbaa !1024
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4602
  %35 = load ptr, ptr %34, align 8, !dbg !4602, !tbaa !1024
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #42, !dbg !4602
  br label %147, !dbg !4603

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.10.152, i32 noundef 5) #42, !dbg !4604
  %39 = load ptr, ptr %4, align 8, !dbg !4604, !tbaa !1024
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4604
  %41 = load ptr, ptr %40, align 8, !dbg !4604, !tbaa !1024
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4604
  %43 = load ptr, ptr %42, align 8, !dbg !4604, !tbaa !1024
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4604
  %45 = load ptr, ptr %44, align 8, !dbg !4604, !tbaa !1024
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #42, !dbg !4604
  br label %147, !dbg !4605

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.11.153, i32 noundef 5) #42, !dbg !4606
  %49 = load ptr, ptr %4, align 8, !dbg !4606, !tbaa !1024
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4606
  %51 = load ptr, ptr %50, align 8, !dbg !4606, !tbaa !1024
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4606
  %53 = load ptr, ptr %52, align 8, !dbg !4606, !tbaa !1024
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4606
  %55 = load ptr, ptr %54, align 8, !dbg !4606, !tbaa !1024
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4606
  %57 = load ptr, ptr %56, align 8, !dbg !4606, !tbaa !1024
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #42, !dbg !4606
  br label %147, !dbg !4607

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.12.154, i32 noundef 5) #42, !dbg !4608
  %61 = load ptr, ptr %4, align 8, !dbg !4608, !tbaa !1024
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4608
  %63 = load ptr, ptr %62, align 8, !dbg !4608, !tbaa !1024
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4608
  %65 = load ptr, ptr %64, align 8, !dbg !4608, !tbaa !1024
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4608
  %67 = load ptr, ptr %66, align 8, !dbg !4608, !tbaa !1024
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4608
  %69 = load ptr, ptr %68, align 8, !dbg !4608, !tbaa !1024
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4608
  %71 = load ptr, ptr %70, align 8, !dbg !4608, !tbaa !1024
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #42, !dbg !4608
  br label %147, !dbg !4609

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.13.155, i32 noundef 5) #42, !dbg !4610
  %75 = load ptr, ptr %4, align 8, !dbg !4610, !tbaa !1024
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4610
  %77 = load ptr, ptr %76, align 8, !dbg !4610, !tbaa !1024
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4610
  %79 = load ptr, ptr %78, align 8, !dbg !4610, !tbaa !1024
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4610
  %81 = load ptr, ptr %80, align 8, !dbg !4610, !tbaa !1024
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4610
  %83 = load ptr, ptr %82, align 8, !dbg !4610, !tbaa !1024
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4610
  %85 = load ptr, ptr %84, align 8, !dbg !4610, !tbaa !1024
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4610
  %87 = load ptr, ptr %86, align 8, !dbg !4610, !tbaa !1024
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #42, !dbg !4610
  br label %147, !dbg !4611

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.14.156, i32 noundef 5) #42, !dbg !4612
  %91 = load ptr, ptr %4, align 8, !dbg !4612, !tbaa !1024
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4612
  %93 = load ptr, ptr %92, align 8, !dbg !4612, !tbaa !1024
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4612
  %95 = load ptr, ptr %94, align 8, !dbg !4612, !tbaa !1024
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4612
  %97 = load ptr, ptr %96, align 8, !dbg !4612, !tbaa !1024
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4612
  %99 = load ptr, ptr %98, align 8, !dbg !4612, !tbaa !1024
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4612
  %101 = load ptr, ptr %100, align 8, !dbg !4612, !tbaa !1024
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4612
  %103 = load ptr, ptr %102, align 8, !dbg !4612, !tbaa !1024
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4612
  %105 = load ptr, ptr %104, align 8, !dbg !4612, !tbaa !1024
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #42, !dbg !4612
  br label %147, !dbg !4613

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.15.157, i32 noundef 5) #42, !dbg !4614
  %109 = load ptr, ptr %4, align 8, !dbg !4614, !tbaa !1024
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4614
  %111 = load ptr, ptr %110, align 8, !dbg !4614, !tbaa !1024
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4614
  %113 = load ptr, ptr %112, align 8, !dbg !4614, !tbaa !1024
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4614
  %115 = load ptr, ptr %114, align 8, !dbg !4614, !tbaa !1024
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4614
  %117 = load ptr, ptr %116, align 8, !dbg !4614, !tbaa !1024
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4614
  %119 = load ptr, ptr %118, align 8, !dbg !4614, !tbaa !1024
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4614
  %121 = load ptr, ptr %120, align 8, !dbg !4614, !tbaa !1024
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4614
  %123 = load ptr, ptr %122, align 8, !dbg !4614, !tbaa !1024
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4614
  %125 = load ptr, ptr %124, align 8, !dbg !4614, !tbaa !1024
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #42, !dbg !4614
  br label %147, !dbg !4615

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.16.158, i32 noundef 5) #42, !dbg !4616
  %129 = load ptr, ptr %4, align 8, !dbg !4616, !tbaa !1024
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4616
  %131 = load ptr, ptr %130, align 8, !dbg !4616, !tbaa !1024
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4616
  %133 = load ptr, ptr %132, align 8, !dbg !4616, !tbaa !1024
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4616
  %135 = load ptr, ptr %134, align 8, !dbg !4616, !tbaa !1024
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4616
  %137 = load ptr, ptr %136, align 8, !dbg !4616, !tbaa !1024
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4616
  %139 = load ptr, ptr %138, align 8, !dbg !4616, !tbaa !1024
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4616
  %141 = load ptr, ptr %140, align 8, !dbg !4616, !tbaa !1024
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4616
  %143 = load ptr, ptr %142, align 8, !dbg !4616, !tbaa !1024
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4616
  %145 = load ptr, ptr %144, align 8, !dbg !4616, !tbaa !1024
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #42, !dbg !4616
  br label %147, !dbg !4617

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4618
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4619 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4623, metadata !DIExpression()), !dbg !4629
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4624, metadata !DIExpression()), !dbg !4629
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4625, metadata !DIExpression()), !dbg !4629
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4626, metadata !DIExpression()), !dbg !4629
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4627, metadata !DIExpression()), !dbg !4629
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4628, metadata !DIExpression()), !dbg !4629
  br label %6, !dbg !4630

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4632
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4628, metadata !DIExpression()), !dbg !4629
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4633
  %9 = load ptr, ptr %8, align 8, !dbg !4633, !tbaa !1024
  %10 = icmp eq ptr %9, null, !dbg !4635
  %11 = add i64 %7, 1, !dbg !4636
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4628, metadata !DIExpression()), !dbg !4629
  br i1 %10, label %12, label %6, !dbg !4635, !llvm.loop !4637

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4639
  ret void, !dbg !4640
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4641 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !4660
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4658, metadata !DIExpression(), metadata !4660, metadata ptr %6, metadata !DIExpression()), !dbg !4661
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4652, metadata !DIExpression()), !dbg !4661
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4653, metadata !DIExpression()), !dbg !4661
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4654, metadata !DIExpression()), !dbg !4661
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4655, metadata !DIExpression()), !dbg !4661
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4656, metadata !DIExpression()), !dbg !4661
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #42, !dbg !4662
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4657, metadata !DIExpression()), !dbg !4661
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4657, metadata !DIExpression()), !dbg !4661
  %10 = icmp ult i32 %9, 41, !dbg !4663
  br i1 %10, label %11, label %16, !dbg !4663

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4663
  %13 = zext nneg i32 %9 to i64, !dbg !4663
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4663
  %15 = add nuw nsw i32 %9, 8, !dbg !4663
  store i32 %15, ptr %4, align 8, !dbg !4663
  br label %19, !dbg !4663

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4663
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4663
  store ptr %18, ptr %7, align 8, !dbg !4663
  br label %19, !dbg !4663

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4663
  %22 = load ptr, ptr %21, align 8, !dbg !4663
  store ptr %22, ptr %6, align 16, !dbg !4666, !tbaa !1024
  %23 = icmp eq ptr %22, null, !dbg !4667
  br i1 %23, label %128, label %24, !dbg !4668

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4657, metadata !DIExpression()), !dbg !4661
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4657, metadata !DIExpression()), !dbg !4661
  %25 = icmp ult i32 %20, 41, !dbg !4663
  br i1 %25, label %29, label %26, !dbg !4663

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4663
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4663
  store ptr %28, ptr %7, align 8, !dbg !4663
  br label %34, !dbg !4663

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4663
  %31 = zext nneg i32 %20 to i64, !dbg !4663
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4663
  %33 = add nuw nsw i32 %20, 8, !dbg !4663
  store i32 %33, ptr %4, align 8, !dbg !4663
  br label %34, !dbg !4663

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4663
  %37 = load ptr, ptr %36, align 8, !dbg !4663
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4669
  store ptr %37, ptr %38, align 8, !dbg !4666, !tbaa !1024
  %39 = icmp eq ptr %37, null, !dbg !4667
  br i1 %39, label %128, label %40, !dbg !4668

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4657, metadata !DIExpression()), !dbg !4661
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4657, metadata !DIExpression()), !dbg !4661
  %41 = icmp ult i32 %35, 41, !dbg !4663
  br i1 %41, label %45, label %42, !dbg !4663

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4663
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4663
  store ptr %44, ptr %7, align 8, !dbg !4663
  br label %50, !dbg !4663

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4663
  %47 = zext nneg i32 %35 to i64, !dbg !4663
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4663
  %49 = add nuw nsw i32 %35, 8, !dbg !4663
  store i32 %49, ptr %4, align 8, !dbg !4663
  br label %50, !dbg !4663

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4663
  %53 = load ptr, ptr %52, align 8, !dbg !4663
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4669
  store ptr %53, ptr %54, align 16, !dbg !4666, !tbaa !1024
  %55 = icmp eq ptr %53, null, !dbg !4667
  br i1 %55, label %128, label %56, !dbg !4668

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4657, metadata !DIExpression()), !dbg !4661
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4657, metadata !DIExpression()), !dbg !4661
  %57 = icmp ult i32 %51, 41, !dbg !4663
  br i1 %57, label %61, label %58, !dbg !4663

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4663
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4663
  store ptr %60, ptr %7, align 8, !dbg !4663
  br label %66, !dbg !4663

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4663
  %63 = zext nneg i32 %51 to i64, !dbg !4663
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4663
  %65 = add nuw nsw i32 %51, 8, !dbg !4663
  store i32 %65, ptr %4, align 8, !dbg !4663
  br label %66, !dbg !4663

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4663
  %69 = load ptr, ptr %68, align 8, !dbg !4663
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4669
  store ptr %69, ptr %70, align 8, !dbg !4666, !tbaa !1024
  %71 = icmp eq ptr %69, null, !dbg !4667
  br i1 %71, label %128, label %72, !dbg !4668

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4657, metadata !DIExpression()), !dbg !4661
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4657, metadata !DIExpression()), !dbg !4661
  %73 = icmp ult i32 %67, 41, !dbg !4663
  br i1 %73, label %77, label %74, !dbg !4663

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4663
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4663
  store ptr %76, ptr %7, align 8, !dbg !4663
  br label %82, !dbg !4663

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4663
  %79 = zext nneg i32 %67 to i64, !dbg !4663
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4663
  %81 = add nuw nsw i32 %67, 8, !dbg !4663
  store i32 %81, ptr %4, align 8, !dbg !4663
  br label %82, !dbg !4663

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4663
  %85 = load ptr, ptr %84, align 8, !dbg !4663
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4669
  store ptr %85, ptr %86, align 16, !dbg !4666, !tbaa !1024
  %87 = icmp eq ptr %85, null, !dbg !4667
  br i1 %87, label %128, label %88, !dbg !4668

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4657, metadata !DIExpression()), !dbg !4661
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4657, metadata !DIExpression()), !dbg !4661
  %89 = icmp ult i32 %83, 41, !dbg !4663
  br i1 %89, label %93, label %90, !dbg !4663

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4663
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4663
  store ptr %92, ptr %7, align 8, !dbg !4663
  br label %98, !dbg !4663

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4663
  %95 = zext nneg i32 %83 to i64, !dbg !4663
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4663
  %97 = add nuw nsw i32 %83, 8, !dbg !4663
  store i32 %97, ptr %4, align 8, !dbg !4663
  br label %98, !dbg !4663

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4663
  %100 = load ptr, ptr %99, align 8, !dbg !4663
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4669
  store ptr %100, ptr %101, align 8, !dbg !4666, !tbaa !1024
  %102 = icmp eq ptr %100, null, !dbg !4667
  br i1 %102, label %128, label %103, !dbg !4668

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4657, metadata !DIExpression()), !dbg !4661
  %104 = load ptr, ptr %7, align 8, !dbg !4663
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4663
  store ptr %105, ptr %7, align 8, !dbg !4663
  %106 = load ptr, ptr %104, align 8, !dbg !4663
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4669
  store ptr %106, ptr %107, align 16, !dbg !4666, !tbaa !1024
  %108 = icmp eq ptr %106, null, !dbg !4667
  br i1 %108, label %128, label %109, !dbg !4668

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4657, metadata !DIExpression()), !dbg !4661
  %110 = load ptr, ptr %7, align 8, !dbg !4663
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4663
  store ptr %111, ptr %7, align 8, !dbg !4663
  %112 = load ptr, ptr %110, align 8, !dbg !4663
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4669
  store ptr %112, ptr %113, align 8, !dbg !4666, !tbaa !1024
  %114 = icmp eq ptr %112, null, !dbg !4667
  br i1 %114, label %128, label %115, !dbg !4668

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4657, metadata !DIExpression()), !dbg !4661
  %116 = load ptr, ptr %7, align 8, !dbg !4663
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4663
  store ptr %117, ptr %7, align 8, !dbg !4663
  %118 = load ptr, ptr %116, align 8, !dbg !4663
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4669
  store ptr %118, ptr %119, align 16, !dbg !4666, !tbaa !1024
  %120 = icmp eq ptr %118, null, !dbg !4667
  br i1 %120, label %128, label %121, !dbg !4668

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4657, metadata !DIExpression()), !dbg !4661
  %122 = load ptr, ptr %7, align 8, !dbg !4663
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4663
  store ptr %123, ptr %7, align 8, !dbg !4663
  %124 = load ptr, ptr %122, align 8, !dbg !4663
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4669
  store ptr %124, ptr %125, align 8, !dbg !4666, !tbaa !1024
  %126 = icmp eq ptr %124, null, !dbg !4667
  %127 = select i1 %126, i64 9, i64 10, !dbg !4668
  br label %128, !dbg !4668

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4670
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4671
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #42, !dbg !4672
  ret void, !dbg !4672
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4673 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !4686
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4681, metadata !DIExpression(), metadata !4686, metadata ptr %5, metadata !DIExpression()), !dbg !4687
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4677, metadata !DIExpression()), !dbg !4687
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4678, metadata !DIExpression()), !dbg !4687
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4679, metadata !DIExpression()), !dbg !4687
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4680, metadata !DIExpression()), !dbg !4687
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #42, !dbg !4688
  call void @llvm.va_start(ptr nonnull %5), !dbg !4689
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4690
  call void @llvm.va_end(ptr nonnull %5), !dbg !4691
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #42, !dbg !4692
  ret void, !dbg !4692
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4693 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4694, !tbaa !1024
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.146, ptr noundef %1), !dbg !4694
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.17.163, i32 noundef 5) #42, !dbg !4695
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.164) #42, !dbg !4695
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.19.165, i32 noundef 5) #42, !dbg !4696
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.166, ptr noundef nonnull @.str.21.167) #42, !dbg !4696
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.22.168, i32 noundef 5) #42, !dbg !4697
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.169) #42, !dbg !4697
  ret void, !dbg !4698
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4699 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4704, metadata !DIExpression()), !dbg !4707
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4705, metadata !DIExpression()), !dbg !4707
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4706, metadata !DIExpression()), !dbg !4707
  call void @llvm.dbg.value(metadata ptr %0, metadata !4708, metadata !DIExpression()), !dbg !4713
  call void @llvm.dbg.value(metadata i64 %1, metadata !4711, metadata !DIExpression()), !dbg !4713
  call void @llvm.dbg.value(metadata i64 %2, metadata !4712, metadata !DIExpression()), !dbg !4713
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #42, !dbg !4715
  call void @llvm.dbg.value(metadata ptr %4, metadata !4716, metadata !DIExpression()), !dbg !4721
  %5 = icmp eq ptr %4, null, !dbg !4723
  br i1 %5, label %6, label %7, !dbg !4725

6:                                                ; preds = %3
  tail call void @xalloc_die() #44, !dbg !4726
  unreachable, !dbg !4726

7:                                                ; preds = %3
  ret ptr %4, !dbg !4727
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !4709 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4708, metadata !DIExpression()), !dbg !4728
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4711, metadata !DIExpression()), !dbg !4728
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4712, metadata !DIExpression()), !dbg !4728
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #42, !dbg !4729
  call void @llvm.dbg.value(metadata ptr %4, metadata !4716, metadata !DIExpression()), !dbg !4730
  %5 = icmp eq ptr %4, null, !dbg !4732
  br i1 %5, label %6, label %7, !dbg !4733

6:                                                ; preds = %3
  tail call void @xalloc_die() #44, !dbg !4734
  unreachable, !dbg !4734

7:                                                ; preds = %3
  ret ptr %4, !dbg !4735
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4736 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4738, metadata !DIExpression()), !dbg !4739
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #49, !dbg !4740
  call void @llvm.dbg.value(metadata ptr %2, metadata !4716, metadata !DIExpression()), !dbg !4741
  %3 = icmp eq ptr %2, null, !dbg !4743
  br i1 %3, label %4, label %5, !dbg !4744

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4745
  unreachable, !dbg !4745

5:                                                ; preds = %1
  ret ptr %2, !dbg !4746
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4747 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4751, metadata !DIExpression()), !dbg !4752
  call void @llvm.dbg.value(metadata i64 %0, metadata !4753, metadata !DIExpression()), !dbg !4757
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #49, !dbg !4759
  call void @llvm.dbg.value(metadata ptr %2, metadata !4716, metadata !DIExpression()), !dbg !4760
  %3 = icmp eq ptr %2, null, !dbg !4762
  br i1 %3, label %4, label %5, !dbg !4763

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4764
  unreachable, !dbg !4764

5:                                                ; preds = %1
  ret ptr %2, !dbg !4765
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4766 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4770, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i64 %0, metadata !4738, metadata !DIExpression()), !dbg !4772
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #49, !dbg !4774
  call void @llvm.dbg.value(metadata ptr %2, metadata !4716, metadata !DIExpression()), !dbg !4775
  %3 = icmp eq ptr %2, null, !dbg !4777
  br i1 %3, label %4, label %5, !dbg !4778

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4779
  unreachable, !dbg !4779

5:                                                ; preds = %1
  ret ptr %2, !dbg !4780
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4781 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4783, metadata !DIExpression()), !dbg !4785
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4784, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata ptr %0, metadata !4786, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i64 %1, metadata !4789, metadata !DIExpression()), !dbg !4790
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4792
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !4793
  call void @llvm.dbg.value(metadata ptr %4, metadata !4716, metadata !DIExpression()), !dbg !4794
  %5 = icmp eq ptr %4, null, !dbg !4796
  br i1 %5, label %6, label %7, !dbg !4797

6:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4798
  unreachable, !dbg !4798

7:                                                ; preds = %2
  ret ptr %4, !dbg !4799
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4800 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4804, metadata !DIExpression()), !dbg !4806
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4805, metadata !DIExpression()), !dbg !4806
  call void @llvm.dbg.value(metadata ptr %0, metadata !4807, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata i64 %1, metadata !4810, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata ptr %0, metadata !4786, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata i64 %1, metadata !4789, metadata !DIExpression()), !dbg !4813
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4815
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !4816
  call void @llvm.dbg.value(metadata ptr %4, metadata !4716, metadata !DIExpression()), !dbg !4817
  %5 = icmp eq ptr %4, null, !dbg !4819
  br i1 %5, label %6, label %7, !dbg !4820

6:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4821
  unreachable, !dbg !4821

7:                                                ; preds = %2
  ret ptr %4, !dbg !4822
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !4823 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4827, metadata !DIExpression()), !dbg !4830
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4828, metadata !DIExpression()), !dbg !4830
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4829, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata ptr %0, metadata !4831, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata i64 %1, metadata !4834, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata i64 %2, metadata !4835, metadata !DIExpression()), !dbg !4836
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #42, !dbg !4838
  call void @llvm.dbg.value(metadata ptr %4, metadata !4716, metadata !DIExpression()), !dbg !4839
  %5 = icmp eq ptr %4, null, !dbg !4841
  br i1 %5, label %6, label %7, !dbg !4842

6:                                                ; preds = %3
  tail call void @xalloc_die() #44, !dbg !4843
  unreachable, !dbg !4843

7:                                                ; preds = %3
  ret ptr %4, !dbg !4844
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4845 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4849, metadata !DIExpression()), !dbg !4851
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4850, metadata !DIExpression()), !dbg !4851
  call void @llvm.dbg.value(metadata ptr null, metadata !4708, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata i64 %0, metadata !4711, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata i64 %1, metadata !4712, metadata !DIExpression()), !dbg !4852
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #42, !dbg !4854
  call void @llvm.dbg.value(metadata ptr %3, metadata !4716, metadata !DIExpression()), !dbg !4855
  %4 = icmp eq ptr %3, null, !dbg !4857
  br i1 %4, label %5, label %6, !dbg !4858

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4859
  unreachable, !dbg !4859

6:                                                ; preds = %2
  ret ptr %3, !dbg !4860
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4861 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4865, metadata !DIExpression()), !dbg !4867
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4866, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata ptr null, metadata !4827, metadata !DIExpression()), !dbg !4868
  call void @llvm.dbg.value(metadata i64 %0, metadata !4828, metadata !DIExpression()), !dbg !4868
  call void @llvm.dbg.value(metadata i64 %1, metadata !4829, metadata !DIExpression()), !dbg !4868
  call void @llvm.dbg.value(metadata ptr null, metadata !4831, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata i64 %0, metadata !4834, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata i64 %1, metadata !4835, metadata !DIExpression()), !dbg !4870
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #42, !dbg !4872
  call void @llvm.dbg.value(metadata ptr %3, metadata !4716, metadata !DIExpression()), !dbg !4873
  %4 = icmp eq ptr %3, null, !dbg !4875
  br i1 %4, label %5, label %6, !dbg !4876

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4877
  unreachable, !dbg !4877

6:                                                ; preds = %2
  ret ptr %3, !dbg !4878
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4879 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4883, metadata !DIExpression()), !dbg !4885
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4884, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata ptr %0, metadata !957, metadata !DIExpression()), !dbg !4886
  call void @llvm.dbg.value(metadata ptr %1, metadata !958, metadata !DIExpression()), !dbg !4886
  call void @llvm.dbg.value(metadata i64 1, metadata !959, metadata !DIExpression()), !dbg !4886
  %3 = load i64, ptr %1, align 8, !dbg !4888, !tbaa !1303
  call void @llvm.dbg.value(metadata i64 %3, metadata !960, metadata !DIExpression()), !dbg !4886
  %4 = icmp eq ptr %0, null, !dbg !4889
  br i1 %4, label %5, label %8, !dbg !4891

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4892
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4895
  br label %15, !dbg !4895

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4896
  %10 = add nuw i64 %9, 1, !dbg !4896
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4896
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4896
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4896
  call void @llvm.dbg.value(metadata i64 %13, metadata !960, metadata !DIExpression()), !dbg !4886
  br i1 %12, label %14, label %15, !dbg !4899

14:                                               ; preds = %8
  tail call void @xalloc_die() #44, !dbg !4900
  unreachable, !dbg !4900

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4886
  call void @llvm.dbg.value(metadata i64 %16, metadata !960, metadata !DIExpression()), !dbg !4886
  call void @llvm.dbg.value(metadata ptr %0, metadata !4708, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i64 %16, metadata !4711, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i64 1, metadata !4712, metadata !DIExpression()), !dbg !4901
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #42, !dbg !4903
  call void @llvm.dbg.value(metadata ptr %17, metadata !4716, metadata !DIExpression()), !dbg !4904
  %18 = icmp eq ptr %17, null, !dbg !4906
  br i1 %18, label %19, label %20, !dbg !4907

19:                                               ; preds = %15
  tail call void @xalloc_die() #44, !dbg !4908
  unreachable, !dbg !4908

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !957, metadata !DIExpression()), !dbg !4886
  store i64 %16, ptr %1, align 8, !dbg !4909, !tbaa !1303
  ret ptr %17, !dbg !4910
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !952 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !957, metadata !DIExpression()), !dbg !4911
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !958, metadata !DIExpression()), !dbg !4911
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !959, metadata !DIExpression()), !dbg !4911
  %4 = load i64, ptr %1, align 8, !dbg !4912, !tbaa !1303
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !960, metadata !DIExpression()), !dbg !4911
  %5 = icmp eq ptr %0, null, !dbg !4913
  br i1 %5, label %6, label %13, !dbg !4914

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4915
  br i1 %7, label %8, label %20, !dbg !4916

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4917
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !960, metadata !DIExpression()), !dbg !4911
  %10 = icmp ugt i64 %2, 128, !dbg !4919
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4920
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !960, metadata !DIExpression()), !dbg !4911
  br label %20, !dbg !4921

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4922
  %15 = add nuw i64 %14, 1, !dbg !4922
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4922
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4922
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4922
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !960, metadata !DIExpression()), !dbg !4911
  br i1 %17, label %19, label %20, !dbg !4923

19:                                               ; preds = %13
  tail call void @xalloc_die() #44, !dbg !4924
  unreachable, !dbg !4924

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4911
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !960, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata ptr %0, metadata !4708, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i64 %21, metadata !4711, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i64 %2, metadata !4712, metadata !DIExpression()), !dbg !4925
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #42, !dbg !4927
  call void @llvm.dbg.value(metadata ptr %22, metadata !4716, metadata !DIExpression()), !dbg !4928
  %23 = icmp eq ptr %22, null, !dbg !4930
  br i1 %23, label %24, label %25, !dbg !4931

24:                                               ; preds = %20
  tail call void @xalloc_die() #44, !dbg !4932
  unreachable, !dbg !4932

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !957, metadata !DIExpression()), !dbg !4911
  store i64 %21, ptr %1, align 8, !dbg !4933, !tbaa !1303
  ret ptr %22, !dbg !4934
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !964 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !971, metadata !DIExpression()), !dbg !4935
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !972, metadata !DIExpression()), !dbg !4935
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !973, metadata !DIExpression()), !dbg !4935
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !974, metadata !DIExpression()), !dbg !4935
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !975, metadata !DIExpression()), !dbg !4935
  %6 = load i64, ptr %1, align 8, !dbg !4936, !tbaa !1303
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !976, metadata !DIExpression()), !dbg !4935
  %7 = ashr i64 %6, 1, !dbg !4937
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4937
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4937
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4937
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !977, metadata !DIExpression()), !dbg !4935
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4939
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !977, metadata !DIExpression()), !dbg !4935
  %12 = icmp sgt i64 %3, -1, !dbg !4940
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4942
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4942
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !977, metadata !DIExpression()), !dbg !4935
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4943
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4943
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4943
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !978, metadata !DIExpression()), !dbg !4935
  %18 = icmp slt i64 %17, 128, !dbg !4943
  %19 = select i1 %18, i64 128, i64 0, !dbg !4943
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4943
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !979, metadata !DIExpression()), !dbg !4935
  %21 = icmp eq i64 %20, 0, !dbg !4944
  br i1 %21, label %26, label %22, !dbg !4946

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !4947
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !977, metadata !DIExpression()), !dbg !4935
  %24 = srem i64 %20, %4, !dbg !4949
  %25 = sub nsw i64 %20, %24, !dbg !4950
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !978, metadata !DIExpression()), !dbg !4935
  br label %26, !dbg !4951

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !4935
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !4935
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !978, metadata !DIExpression()), !dbg !4935
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !977, metadata !DIExpression()), !dbg !4935
  %29 = icmp eq ptr %0, null, !dbg !4952
  br i1 %29, label %30, label %31, !dbg !4954

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !4955, !tbaa !1303
  br label %31, !dbg !4956

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !4957
  %33 = icmp slt i64 %32, %2, !dbg !4959
  br i1 %33, label %34, label %46, !dbg !4960

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4961
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !4961
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !4961
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !977, metadata !DIExpression()), !dbg !4935
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !4962
  br i1 %40, label %45, label %41, !dbg !4962

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !4963
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !4963
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !4963
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !978, metadata !DIExpression()), !dbg !4935
  br i1 %43, label %45, label %46, !dbg !4964

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #44, !dbg !4965
  unreachable, !dbg !4965

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !4935
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !4935
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !978, metadata !DIExpression()), !dbg !4935
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !977, metadata !DIExpression()), !dbg !4935
  call void @llvm.dbg.value(metadata ptr %0, metadata !4783, metadata !DIExpression()), !dbg !4966
  call void @llvm.dbg.value(metadata i64 %48, metadata !4784, metadata !DIExpression()), !dbg !4966
  call void @llvm.dbg.value(metadata ptr %0, metadata !4786, metadata !DIExpression()), !dbg !4968
  call void @llvm.dbg.value(metadata i64 %48, metadata !4789, metadata !DIExpression()), !dbg !4968
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !4970
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #47, !dbg !4971
  call void @llvm.dbg.value(metadata ptr %50, metadata !4716, metadata !DIExpression()), !dbg !4972
  %51 = icmp eq ptr %50, null, !dbg !4974
  br i1 %51, label %52, label %53, !dbg !4975

52:                                               ; preds = %46
  tail call void @xalloc_die() #44, !dbg !4976
  unreachable, !dbg !4976

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !971, metadata !DIExpression()), !dbg !4935
  store i64 %47, ptr %1, align 8, !dbg !4977, !tbaa !1303
  ret ptr %50, !dbg !4978
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4979 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4981, metadata !DIExpression()), !dbg !4982
  call void @llvm.dbg.value(metadata i64 %0, metadata !4983, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata i64 1, metadata !4986, metadata !DIExpression()), !dbg !4987
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #50, !dbg !4989
  call void @llvm.dbg.value(metadata ptr %2, metadata !4716, metadata !DIExpression()), !dbg !4990
  %3 = icmp eq ptr %2, null, !dbg !4992
  br i1 %3, label %4, label %5, !dbg !4993

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4994
  unreachable, !dbg !4994

5:                                                ; preds = %1
  ret ptr %2, !dbg !4995
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4996 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4984 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4983, metadata !DIExpression()), !dbg !4997
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4986, metadata !DIExpression()), !dbg !4997
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #50, !dbg !4998
  call void @llvm.dbg.value(metadata ptr %3, metadata !4716, metadata !DIExpression()), !dbg !4999
  %4 = icmp eq ptr %3, null, !dbg !5001
  br i1 %4, label %5, label %6, !dbg !5002

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !5003
  unreachable, !dbg !5003

6:                                                ; preds = %2
  ret ptr %3, !dbg !5004
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !5005 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !5007, metadata !DIExpression()), !dbg !5008
  call void @llvm.dbg.value(metadata i64 %0, metadata !5009, metadata !DIExpression()), !dbg !5013
  call void @llvm.dbg.value(metadata i64 1, metadata !5012, metadata !DIExpression()), !dbg !5013
  call void @llvm.dbg.value(metadata i64 %0, metadata !5015, metadata !DIExpression()), !dbg !5019
  call void @llvm.dbg.value(metadata i64 1, metadata !5018, metadata !DIExpression()), !dbg !5019
  call void @llvm.dbg.value(metadata i64 %0, metadata !5015, metadata !DIExpression()), !dbg !5019
  call void @llvm.dbg.value(metadata i64 1, metadata !5018, metadata !DIExpression()), !dbg !5019
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #50, !dbg !5021
  call void @llvm.dbg.value(metadata ptr %2, metadata !4716, metadata !DIExpression()), !dbg !5022
  %3 = icmp eq ptr %2, null, !dbg !5024
  br i1 %3, label %4, label %5, !dbg !5025

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !5026
  unreachable, !dbg !5026

5:                                                ; preds = %1
  ret ptr %2, !dbg !5027
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !5010 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !5009, metadata !DIExpression()), !dbg !5028
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5012, metadata !DIExpression()), !dbg !5028
  call void @llvm.dbg.value(metadata i64 %0, metadata !5015, metadata !DIExpression()), !dbg !5029
  call void @llvm.dbg.value(metadata i64 %1, metadata !5018, metadata !DIExpression()), !dbg !5029
  call void @llvm.dbg.value(metadata i64 %0, metadata !5015, metadata !DIExpression()), !dbg !5029
  call void @llvm.dbg.value(metadata i64 %1, metadata !5018, metadata !DIExpression()), !dbg !5029
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #50, !dbg !5031
  call void @llvm.dbg.value(metadata ptr %3, metadata !4716, metadata !DIExpression()), !dbg !5032
  %4 = icmp eq ptr %3, null, !dbg !5034
  br i1 %4, label %5, label %6, !dbg !5035

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !5036
  unreachable, !dbg !5036

6:                                                ; preds = %2
  ret ptr %3, !dbg !5037
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !5038 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5042, metadata !DIExpression()), !dbg !5044
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5043, metadata !DIExpression()), !dbg !5044
  call void @llvm.dbg.value(metadata i64 %1, metadata !4738, metadata !DIExpression()), !dbg !5045
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #49, !dbg !5047
  call void @llvm.dbg.value(metadata ptr %3, metadata !4716, metadata !DIExpression()), !dbg !5048
  %4 = icmp eq ptr %3, null, !dbg !5050
  br i1 %4, label %5, label %6, !dbg !5051

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !5052
  unreachable, !dbg !5052

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !5053, metadata !DIExpression()), !dbg !5058
  call void @llvm.dbg.value(metadata ptr %0, metadata !5056, metadata !DIExpression()), !dbg !5058
  call void @llvm.dbg.value(metadata i64 %1, metadata !5057, metadata !DIExpression()), !dbg !5058
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #42, !dbg !5060
  ret ptr %3, !dbg !5061
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !5062 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5066, metadata !DIExpression()), !dbg !5068
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5067, metadata !DIExpression()), !dbg !5068
  call void @llvm.dbg.value(metadata i64 %1, metadata !4751, metadata !DIExpression()), !dbg !5069
  call void @llvm.dbg.value(metadata i64 %1, metadata !4753, metadata !DIExpression()), !dbg !5071
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #49, !dbg !5073
  call void @llvm.dbg.value(metadata ptr %3, metadata !4716, metadata !DIExpression()), !dbg !5074
  %4 = icmp eq ptr %3, null, !dbg !5076
  br i1 %4, label %5, label %6, !dbg !5077

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !5078
  unreachable, !dbg !5078

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !5053, metadata !DIExpression()), !dbg !5079
  call void @llvm.dbg.value(metadata ptr %0, metadata !5056, metadata !DIExpression()), !dbg !5079
  call void @llvm.dbg.value(metadata i64 %1, metadata !5057, metadata !DIExpression()), !dbg !5079
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #42, !dbg !5081
  ret ptr %3, !dbg !5082
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !5083 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5087, metadata !DIExpression()), !dbg !5090
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5088, metadata !DIExpression()), !dbg !5090
  %3 = add nsw i64 %1, 1, !dbg !5091
  call void @llvm.dbg.value(metadata i64 %3, metadata !4751, metadata !DIExpression()), !dbg !5092
  call void @llvm.dbg.value(metadata i64 %3, metadata !4753, metadata !DIExpression()), !dbg !5094
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #49, !dbg !5096
  call void @llvm.dbg.value(metadata ptr %4, metadata !4716, metadata !DIExpression()), !dbg !5097
  %5 = icmp eq ptr %4, null, !dbg !5099
  br i1 %5, label %6, label %7, !dbg !5100

6:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !5101
  unreachable, !dbg !5101

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5089, metadata !DIExpression()), !dbg !5090
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !5102
  store i8 0, ptr %8, align 1, !dbg !5103, !tbaa !1111
  call void @llvm.dbg.value(metadata ptr %4, metadata !5053, metadata !DIExpression()), !dbg !5104
  call void @llvm.dbg.value(metadata ptr %0, metadata !5056, metadata !DIExpression()), !dbg !5104
  call void @llvm.dbg.value(metadata i64 %1, metadata !5057, metadata !DIExpression()), !dbg !5104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #42, !dbg !5106
  ret ptr %4, !dbg !5107
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !5108 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5110, metadata !DIExpression()), !dbg !5111
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #43, !dbg !5112
  %3 = add i64 %2, 1, !dbg !5113
  call void @llvm.dbg.value(metadata ptr %0, metadata !5042, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.value(metadata i64 %3, metadata !5043, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.value(metadata i64 %3, metadata !4738, metadata !DIExpression()), !dbg !5116
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #49, !dbg !5118
  call void @llvm.dbg.value(metadata ptr %4, metadata !4716, metadata !DIExpression()), !dbg !5119
  %5 = icmp eq ptr %4, null, !dbg !5121
  br i1 %5, label %6, label %7, !dbg !5122

6:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !5123
  unreachable, !dbg !5123

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !5053, metadata !DIExpression()), !dbg !5124
  call void @llvm.dbg.value(metadata ptr %0, metadata !5056, metadata !DIExpression()), !dbg !5124
  call void @llvm.dbg.value(metadata i64 %3, metadata !5057, metadata !DIExpression()), !dbg !5124
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #42, !dbg !5126
  ret ptr %4, !dbg !5127
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !5128 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !5133, !tbaa !1102
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !5130, metadata !DIExpression()), !dbg !5134
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.184, ptr noundef nonnull @.str.2.185, i32 noundef 5) #42, !dbg !5133
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.186, ptr noundef %2) #42, !dbg !5133
  %3 = icmp eq i32 %1, 0, !dbg !5133
  tail call void @llvm.assume(i1 %3), !dbg !5133
  tail call void @abort() #44, !dbg !5135
  unreachable, !dbg !5135
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #37

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !5136 {
  %3 = alloca [81 x i8], align 16, !DIAssignID !5198
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5179, metadata !DIExpression(), metadata !5198, metadata ptr %3, metadata !DIExpression()), !dbg !5199
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5174, metadata !DIExpression()), !dbg !5199
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5175, metadata !DIExpression()), !dbg !5199
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5176, metadata !DIExpression()), !dbg !5199
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5177, metadata !DIExpression()), !dbg !5199
  tail call void @llvm.dbg.value(metadata i8 0, metadata !5178, metadata !DIExpression()), !dbg !5199
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #42, !dbg !5200
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5183, metadata !DIExpression()), !dbg !5201
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5185, metadata !DIExpression()), !dbg !5201
  br label %4, !dbg !5202

4:                                                ; preds = %43, %2
  %5 = phi i8 [ 0, %2 ], [ %44, %43 ], !dbg !5199
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !5201
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !5199
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !5203
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !5204
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !5176, metadata !DIExpression()), !dbg !5199
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !5177, metadata !DIExpression()), !dbg !5199
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !5185, metadata !DIExpression()), !dbg !5201
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !5183, metadata !DIExpression()), !dbg !5201
  tail call void @llvm.dbg.value(metadata i8 %5, metadata !5178, metadata !DIExpression()), !dbg !5199
  %11 = load i8, ptr %6, align 1, !dbg !5204, !tbaa !1111
  switch i8 %11, label %38 [
    i8 0, label %49
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !5205

12:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5176, metadata !DIExpression()), !dbg !5199
  %13 = icmp slt i64 %7, 80, !dbg !5206
  br i1 %13, label %14, label %43, !dbg !5209

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !5210
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !5185, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5201
  store i8 114, ptr %10, align 1, !dbg !5211, !tbaa !1111
  br label %43, !dbg !5212

16:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !5176, metadata !DIExpression()), !dbg !5199
  %17 = or i32 %8, 576, !dbg !5213
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !5177, metadata !DIExpression()), !dbg !5199
  %18 = icmp slt i64 %7, 80, !dbg !5214
  br i1 %18, label %19, label %43, !dbg !5216

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !5217
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !5185, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5201
  store i8 119, ptr %10, align 1, !dbg !5218, !tbaa !1111
  br label %43, !dbg !5219

21:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !5176, metadata !DIExpression()), !dbg !5199
  %22 = or i32 %8, 1088, !dbg !5220
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !5177, metadata !DIExpression()), !dbg !5199
  %23 = icmp slt i64 %7, 80, !dbg !5221
  br i1 %23, label %24, label %43, !dbg !5223

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !5224
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !5185, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5201
  store i8 97, ptr %10, align 1, !dbg !5225, !tbaa !1111
  br label %43, !dbg !5226

26:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !5177, metadata !DIExpression()), !dbg !5199
  %27 = icmp slt i64 %7, 80, !dbg !5227
  br i1 %27, label %28, label %43, !dbg !5229

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !5230
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !5185, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5201
  store i8 98, ptr %10, align 1, !dbg !5231, !tbaa !1111
  br label %43, !dbg !5232

30:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 2, metadata !5176, metadata !DIExpression()), !dbg !5199
  %31 = icmp slt i64 %7, 80, !dbg !5233
  br i1 %31, label %32, label %43, !dbg !5235

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !5236
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !5185, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5201
  store i8 43, ptr %10, align 1, !dbg !5237, !tbaa !1111
  br label %43, !dbg !5238

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !5239
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !5177, metadata !DIExpression()), !dbg !5199
  tail call void @llvm.dbg.value(metadata i8 1, metadata !5178, metadata !DIExpression()), !dbg !5199
  br label %43, !dbg !5240

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !5241
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !5177, metadata !DIExpression()), !dbg !5199
  tail call void @llvm.dbg.value(metadata i8 1, metadata !5178, metadata !DIExpression()), !dbg !5199
  br label %43, !dbg !5242

38:                                               ; preds = %4
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #43, !dbg !5243
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !5186, metadata !DIExpression()), !dbg !5244
  %40 = sub nsw i64 80, %7, !dbg !5245
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !5247
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !5186, metadata !DIExpression()), !dbg !5244
  call void @llvm.dbg.value(metadata ptr %10, metadata !5248, metadata !DIExpression()), !dbg !5253
  call void @llvm.dbg.value(metadata ptr %6, metadata !5251, metadata !DIExpression()), !dbg !5253
  call void @llvm.dbg.value(metadata i64 %41, metadata !5252, metadata !DIExpression()), !dbg !5253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %10, ptr noundef nonnull align 1 %6, i64 noundef %41, i1 noundef false) #42, !dbg !5255
  %42 = getelementptr inbounds i8, ptr %10, i64 %41, !dbg !5256
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !5185, metadata !DIExpression()), !dbg !5201
  br label %49, !dbg !5257

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i8 [ 1, %36 ], [ 1, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ], !dbg !5199
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !5199
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !5199
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !5176, metadata !DIExpression()), !dbg !5199
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !5177, metadata !DIExpression()), !dbg !5199
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !5185, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5201
  tail call void @llvm.dbg.value(metadata i8 %44, metadata !5178, metadata !DIExpression()), !dbg !5199
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !5258
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !5183, metadata !DIExpression()), !dbg !5201
  br label %4, !dbg !5259, !llvm.loop !5260

49:                                               ; preds = %4, %38
  %50 = phi ptr [ %42, %38 ], [ %10, %4 ], !dbg !5201
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !5185, metadata !DIExpression()), !dbg !5201
  store i8 0, ptr %50, align 1, !dbg !5262, !tbaa !1111
  %51 = and i8 %5, 1, !dbg !5263
  %52 = icmp eq i8 %51, 0, !dbg !5263
  br i1 %52, label %64, label %53, !dbg !5264

53:                                               ; preds = %49
  %54 = or i32 %9, %8, !dbg !5265
  %55 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %54, i32 noundef 438) #42, !dbg !5266
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !5191, metadata !DIExpression()), !dbg !5267
  %56 = icmp slt i32 %55, 0, !dbg !5268
  br i1 %56, label %66, label %57, !dbg !5270

57:                                               ; preds = %53
  %58 = call noalias ptr @fdopen(i32 noundef %55, ptr noundef nonnull %3) #42, !dbg !5271
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !5194, metadata !DIExpression()), !dbg !5267
  %59 = icmp eq ptr %58, null, !dbg !5272
  br i1 %59, label %60, label %66, !dbg !5273

60:                                               ; preds = %57
  %61 = tail call ptr @__errno_location() #45, !dbg !5274
  %62 = load i32, ptr %61, align 4, !dbg !5274, !tbaa !1102
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !5195, metadata !DIExpression()), !dbg !5275
  %63 = tail call i32 @close(i32 noundef %55) #42, !dbg !5276
  store i32 %62, ptr %61, align 4, !dbg !5277, !tbaa !1102
  br label %66, !dbg !5278

64:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !5279, metadata !DIExpression()), !dbg !5283
  call void @llvm.dbg.value(metadata ptr %1, metadata !5282, metadata !DIExpression()), !dbg !5283
  %65 = tail call noalias noundef ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !5285
  br label %66, !dbg !5286

66:                                               ; preds = %53, %60, %57, %64
  %67 = phi ptr [ %65, %64 ], [ null, %53 ], [ null, %60 ], [ %58, %57 ], !dbg !5199
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #42, !dbg !5287
  ret ptr %67, !dbg !5287
}

; Function Attrs: nofree
declare !dbg !5288 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare !dbg !5291 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !5294 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !5295 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !5298 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5336, metadata !DIExpression()), !dbg !5341
  %2 = tail call i64 @__fpending(ptr noundef %0) #42, !dbg !5342
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5337, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5341
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5343, metadata !DIExpression()), !dbg !5346
  %3 = load i32, ptr %0, align 8, !dbg !5348, !tbaa !1499
  %4 = and i32 %3, 32, !dbg !5349
  %5 = icmp eq i32 %4, 0, !dbg !5349
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !5339, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5341
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #42, !dbg !5350
  %7 = icmp eq i32 %6, 0, !dbg !5351
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !5340, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5341
  br i1 %5, label %8, label %18, !dbg !5352

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5354
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !5337, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5341
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5355
  %11 = xor i1 %7, true, !dbg !5355
  %12 = sext i1 %11 to i32, !dbg !5355
  br i1 %10, label %21, label %13, !dbg !5355

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #45, !dbg !5356
  %15 = load i32, ptr %14, align 4, !dbg !5356, !tbaa !1102
  %16 = icmp ne i32 %15, 9, !dbg !5357
  %17 = sext i1 %16 to i32, !dbg !5358
  br label %21, !dbg !5358

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5359

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #45, !dbg !5361
  store i32 0, ptr %20, align 4, !dbg !5363, !tbaa !1102
  br label %21, !dbg !5361

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5341
  ret i32 %22, !dbg !5364
}

; Function Attrs: nounwind
declare !dbg !5365 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @freadptr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #38 !dbg !5368 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5406, metadata !DIExpression()), !dbg !5409
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5407, metadata !DIExpression()), !dbg !5409
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !5410
  %4 = load ptr, ptr %3, align 8, !dbg !5410, !tbaa !1544
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !5412
  %6 = load ptr, ptr %5, align 8, !dbg !5412, !tbaa !2787
  %7 = icmp ugt ptr %4, %6, !dbg !5413
  br i1 %7, label %18, label %8, !dbg !5414

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !5415
  %10 = load ptr, ptr %9, align 8, !dbg !5415, !tbaa !1456
  %11 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !5416
  %12 = load ptr, ptr %11, align 8, !dbg !5416, !tbaa !1454
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %10, ptr %12), metadata !5408, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5409
  %13 = icmp eq ptr %10, %12, !dbg !5417
  br i1 %13, label %18, label %14, !dbg !5419

14:                                               ; preds = %8
  %15 = ptrtoint ptr %12 to i64, !dbg !5420
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %10, i64 %15), metadata !5408, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5409
  %16 = ptrtoint ptr %10 to i64, !dbg !5420
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %16, i64 %15), metadata !5408, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5409
  %17 = sub i64 %16, %15, !dbg !5420
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !5408, metadata !DIExpression()), !dbg !5409
  store i64 %17, ptr %1, align 8, !dbg !5421, !tbaa !1303
  br label %18, !dbg !5422

18:                                               ; preds = %8, %2, %14
  %19 = phi ptr [ %12, %14 ], [ null, %2 ], [ null, %8 ], !dbg !5409
  ret ptr %19, !dbg !5423
}

; Function Attrs: nounwind uwtable
define dso_local i32 @freadseek(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !5424 {
  %3 = alloca i64, align 8, !DIAssignID !5480
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5465, metadata !DIExpression(), metadata !5480, metadata ptr %3, metadata !DIExpression()), !dbg !5481
  %4 = alloca [4096 x i8], align 16, !DIAssignID !5482
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5471, metadata !DIExpression(), metadata !5482, metadata ptr %4, metadata !DIExpression()), !dbg !5483
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5462, metadata !DIExpression()), !dbg !5484
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5463, metadata !DIExpression()), !dbg !5484
  %5 = icmp eq i64 %1, 0, !dbg !5485
  br i1 %5, label %66, label %6, !dbg !5487

6:                                                ; preds = %2
  %7 = tail call i64 @freadahead(ptr noundef %0) #43, !dbg !5488
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !5464, metadata !DIExpression()), !dbg !5484
  %8 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  br label %9, !dbg !5489

9:                                                ; preds = %40, %6
  %10 = phi i64 [ %7, %6 ], [ %41, %40 ], !dbg !5490
  %11 = phi i64 [ %1, %6 ], [ %43, %40 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !5463, metadata !DIExpression()), !dbg !5484
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5464, metadata !DIExpression()), !dbg !5484
  %12 = icmp eq i64 %10, 0, !dbg !5491
  br i1 %12, label %44, label %13, !dbg !5489

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #42, !dbg !5492
  %14 = call ptr @freadptr(ptr noundef %0, ptr noundef nonnull %3) #42, !dbg !5493
  %15 = icmp ne ptr %14, null, !dbg !5494
  %16 = load i64, ptr %3, align 8
  %17 = icmp ne i64 %16, 0
  %18 = select i1 %15, i1 %17, i1 false, !dbg !5495
  br i1 %18, label %19, label %28, !dbg !5495

19:                                               ; preds = %13
  %20 = call i64 @llvm.umin.i64(i64 %16, i64 %11), !dbg !5496
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !5467, metadata !DIExpression()), !dbg !5497
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5498, metadata !DIExpression()), !dbg !5504
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !5503, metadata !DIExpression()), !dbg !5504
  %21 = load ptr, ptr %8, align 8, !dbg !5506, !tbaa !1454
  %22 = getelementptr inbounds i8, ptr %21, i64 %20, !dbg !5506
  store ptr %22, ptr %8, align 8, !dbg !5506, !tbaa !1454
  %23 = sub i64 %11, %20, !dbg !5507
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !5463, metadata !DIExpression()), !dbg !5484
  %24 = icmp eq i64 %23, 0, !dbg !5508
  br i1 %24, label %39, label %25, !dbg !5510

25:                                               ; preds = %19
  %26 = sub i64 %10, %20, !dbg !5511
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !5464, metadata !DIExpression()), !dbg !5484
  %27 = icmp eq i64 %26, 0, !dbg !5512
  br i1 %27, label %40, label %28

28:                                               ; preds = %25, %13
  %29 = phi i64 [ %26, %25 ], [ %10, %13 ], !dbg !5490
  %30 = phi i64 [ %23, %25 ], [ %11, %13 ]
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !5463, metadata !DIExpression()), !dbg !5484
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !5464, metadata !DIExpression()), !dbg !5484
  %31 = call i32 @fgetc(ptr noundef %0), !dbg !5514
  %32 = icmp eq i32 %31, -1, !dbg !5516
  br i1 %32, label %33, label %34, !dbg !5517

33:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5463, metadata !DIExpression()), !dbg !5484
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5464, metadata !DIExpression()), !dbg !5484
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #42, !dbg !5518
  br label %62

34:                                               ; preds = %28
  %35 = add i64 %30, -1, !dbg !5519
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !5463, metadata !DIExpression()), !dbg !5484
  %36 = icmp eq i64 %35, 0, !dbg !5520
  br i1 %36, label %39, label %37, !dbg !5522

37:                                               ; preds = %34
  %38 = add i64 %29, -1, !dbg !5523
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !5464, metadata !DIExpression()), !dbg !5484
  br label %40, !dbg !5518

39:                                               ; preds = %34, %19
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5463, metadata !DIExpression()), !dbg !5484
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5464, metadata !DIExpression()), !dbg !5484
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #42, !dbg !5518
  br label %66

40:                                               ; preds = %25, %37
  %41 = phi i64 [ %38, %37 ], [ 0, %25 ], !dbg !5484
  %42 = phi i32 [ 0, %37 ], [ 3, %25 ]
  %43 = phi i64 [ %35, %37 ], [ %23, %25 ], !dbg !5481
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !5463, metadata !DIExpression()), !dbg !5484
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !5464, metadata !DIExpression()), !dbg !5484
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #42, !dbg !5518
  switch i32 %42, label %66 [
    i32 0, label %9
    i32 3, label %44
  ], !llvm.loop !5524

44:                                               ; preds = %40, %9
  %45 = phi i64 [ %43, %40 ], [ %11, %9 ]
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !5463, metadata !DIExpression()), !dbg !5484
  %46 = call i32 @fileno(ptr noundef %0) #42, !dbg !5525
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !5470, metadata !DIExpression()), !dbg !5484
  %47 = icmp sgt i32 %46, -1, !dbg !5526
  br i1 %47, label %49, label %48, !dbg !5527

48:                                               ; preds = %49, %44
  br label %54, !dbg !5528

49:                                               ; preds = %44
  %50 = call i64 @lseek(i32 noundef %46, i64 noundef 0, i32 noundef 1) #42, !dbg !5529
  %51 = icmp sgt i64 %50, -1, !dbg !5530
  br i1 %51, label %52, label %48, !dbg !5531

52:                                               ; preds = %49
  %53 = call i32 @rpl_fseeko(ptr noundef %0, i64 noundef %45, i32 noundef 1) #42, !dbg !5532
  br label %66, !dbg !5534

54:                                               ; preds = %48, %59
  %55 = phi i64 [ %60, %59 ], [ %45, %48 ], !dbg !5507
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !5463, metadata !DIExpression()), !dbg !5484
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #42, !dbg !5535
  %56 = call i64 @llvm.umin.i64(i64 %55, i64 4096), !dbg !5536
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !5478, metadata !DIExpression()), !dbg !5483
  call void @llvm.dbg.value(metadata ptr %4, metadata !5537, metadata !DIExpression()), !dbg !5547
  call void @llvm.dbg.value(metadata i64 1, metadata !5543, metadata !DIExpression()), !dbg !5547
  call void @llvm.dbg.value(metadata i64 %56, metadata !5544, metadata !DIExpression()), !dbg !5547
  call void @llvm.dbg.value(metadata ptr %0, metadata !5545, metadata !DIExpression()), !dbg !5547
  call void @llvm.dbg.value(metadata i64 4096, metadata !5546, metadata !DIExpression()), !dbg !5547
  %57 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef %56, ptr noundef %0), !dbg !5550
  %58 = icmp ult i64 %57, %56, !dbg !5552
  tail call void @llvm.dbg.value(metadata i64 undef, metadata !5463, metadata !DIExpression()), !dbg !5484
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #42, !dbg !5553
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = sub i64 %55, %56, !dbg !5554
  %61 = icmp eq i64 %60, 0, !dbg !5555
  br i1 %61, label %66, label %54, !dbg !5556, !llvm.loop !5557

62:                                               ; preds = %54, %33
  call void @llvm.dbg.label(metadata !5479), !dbg !5559
  %63 = call i32 @ferror(ptr noundef %0) #42, !dbg !5560
  %64 = icmp ne i32 %63, 0, !dbg !5560
  %65 = sext i1 %64 to i32, !dbg !5562
  br label %66, !dbg !5562

66:                                               ; preds = %40, %59, %39, %52, %62, %2
  %67 = phi i32 [ 0, %2 ], [ %53, %52 ], [ %65, %62 ], [ 0, %39 ], [ 0, %59 ], [ 0, %40 ], !dbg !5484
  ret i32 %67, !dbg !5563
}

; Function Attrs: nofree nounwind
declare !dbg !5564 noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: alwaysinline nobuiltin nounwind uwtable
declare !dbg !5567 i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #39

; Function Attrs: nofree nounwind memory(read)
declare !dbg !5570 noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5571 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5576, metadata !DIExpression()), !dbg !5581
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5577, metadata !DIExpression()), !dbg !5581
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5578, metadata !DIExpression()), !dbg !5581
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5579, metadata !DIExpression()), !dbg !5581
  %5 = icmp eq ptr %1, null, !dbg !5582
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5584
  %7 = select i1 %5, ptr @.str.197, ptr %1, !dbg !5584
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5584
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !5578, metadata !DIExpression()), !dbg !5581
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !5577, metadata !DIExpression()), !dbg !5581
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !5576, metadata !DIExpression()), !dbg !5581
  %9 = icmp eq ptr %3, null, !dbg !5585
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5587
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !5579, metadata !DIExpression()), !dbg !5581
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #42, !dbg !5588
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !5580, metadata !DIExpression()), !dbg !5581
  %12 = icmp ult i64 %11, -3, !dbg !5589
  br i1 %12, label %13, label %17, !dbg !5591

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #43, !dbg !5592
  %15 = icmp eq i32 %14, 0, !dbg !5592
  br i1 %15, label %16, label %29, !dbg !5593

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5594, metadata !DIExpression()), !dbg !5599
  call void @llvm.dbg.value(metadata ptr %10, metadata !5601, metadata !DIExpression()), !dbg !5606
  call void @llvm.dbg.value(metadata i32 0, metadata !5604, metadata !DIExpression()), !dbg !5606
  call void @llvm.dbg.value(metadata i64 8, metadata !5605, metadata !DIExpression()), !dbg !5606
  store i64 0, ptr %10, align 1, !dbg !5608
  br label %29, !dbg !5609

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5610
  br i1 %18, label %19, label %20, !dbg !5612

19:                                               ; preds = %17
  tail call void @abort() #44, !dbg !5613
  unreachable, !dbg !5613

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5614

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #42, !dbg !5616
  br i1 %23, label %29, label %24, !dbg !5617

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5618
  br i1 %25, label %29, label %26, !dbg !5621

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5622, !tbaa !1111
  %28 = zext i8 %27 to i32, !dbg !5623
  store i32 %28, ptr %6, align 4, !dbg !5624, !tbaa !1102
  br label %29, !dbg !5625

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5581
  ret i64 %30, !dbg !5626
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5627 i32 @mbsinit(ptr noundef) local_unnamed_addr #40

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #41 !dbg !5633 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5635, metadata !DIExpression()), !dbg !5639
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5636, metadata !DIExpression()), !dbg !5639
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5637, metadata !DIExpression()), !dbg !5639
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !5640
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !5640
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5638, metadata !DIExpression()), !dbg !5639
  br i1 %5, label %6, label %8, !dbg !5642

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #45, !dbg !5643
  store i32 12, ptr %7, align 4, !dbg !5645, !tbaa !1102
  br label %12, !dbg !5646

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !5640
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !5638, metadata !DIExpression()), !dbg !5639
  call void @llvm.dbg.value(metadata ptr %0, metadata !5647, metadata !DIExpression()), !dbg !5651
  call void @llvm.dbg.value(metadata i64 %9, metadata !5650, metadata !DIExpression()), !dbg !5651
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !5653
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #47, !dbg !5654
  br label %12, !dbg !5655

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !5639
  ret ptr %13, !dbg !5656
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @freadahead(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !5657 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5695, metadata !DIExpression()), !dbg !5696
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !5697
  %3 = load ptr, ptr %2, align 8, !dbg !5697, !tbaa !1544
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !5699
  %5 = load ptr, ptr %4, align 8, !dbg !5699, !tbaa !2787
  %6 = icmp ugt ptr %3, %5, !dbg !5700
  br i1 %6, label %29, label %7, !dbg !5701

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !5702
  %9 = load ptr, ptr %8, align 8, !dbg !5702, !tbaa !1456
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !5703
  %11 = load ptr, ptr %10, align 8, !dbg !5703, !tbaa !1454
  %12 = ptrtoint ptr %9 to i64, !dbg !5704
  %13 = ptrtoint ptr %11 to i64, !dbg !5704
  %14 = sub i64 %12, %13, !dbg !5704
  %15 = load i32, ptr %0, align 8, !dbg !5705, !tbaa !1499
  %16 = and i32 %15, 256, !dbg !5706
  %17 = icmp eq i32 %16, 0, !dbg !5706
  br i1 %17, label %26, label %18, !dbg !5707

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 11, !dbg !5708
  %20 = load ptr, ptr %19, align 8, !dbg !5708, !tbaa !5709
  %21 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !5710
  %22 = load ptr, ptr %21, align 8, !dbg !5710, !tbaa !2791
  %23 = ptrtoint ptr %20 to i64, !dbg !5711
  %24 = ptrtoint ptr %22 to i64, !dbg !5711
  %25 = sub i64 %23, %24, !dbg !5711
  br label %26, !dbg !5707

26:                                               ; preds = %7, %18
  %27 = phi i64 [ %25, %18 ], [ 0, %7 ], !dbg !5707
  %28 = add nsw i64 %14, %27, !dbg !5712
  br label %29, !dbg !5713

29:                                               ; preds = %1, %26
  %30 = phi i64 [ %28, %26 ], [ 0, %1 ], !dbg !5696
  ret i64 %30, !dbg !5714
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5715 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !5722
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5718, metadata !DIExpression(), metadata !5722, metadata ptr %2, metadata !DIExpression()), !dbg !5723
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5717, metadata !DIExpression()), !dbg !5723
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #42, !dbg !5724
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #42, !dbg !5725
  %4 = icmp eq i32 %3, 0, !dbg !5725
  br i1 %4, label %5, label %12, !dbg !5727

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5728, metadata !DIExpression()), !dbg !5732
  call void @llvm.dbg.value(metadata !1069, metadata !5731, metadata !DIExpression()), !dbg !5732
  %6 = load i16, ptr %2, align 16, !dbg !5735
  %7 = icmp eq i16 %6, 67, !dbg !5735
  br i1 %7, label %11, label %8, !dbg !5736

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5728, metadata !DIExpression()), !dbg !5737
  call void @llvm.dbg.value(metadata ptr @.str.1.204, metadata !5731, metadata !DIExpression()), !dbg !5737
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.204, i64 6), !dbg !5739
  %10 = icmp eq i32 %9, 0, !dbg !5740
  br i1 %10, label %11, label %12, !dbg !5741

11:                                               ; preds = %8, %5
  br label %12, !dbg !5742

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5723
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #42, !dbg !5743
  ret i1 %13, !dbg !5743
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5744 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5748, metadata !DIExpression()), !dbg !5751
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5749, metadata !DIExpression()), !dbg !5751
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5750, metadata !DIExpression()), !dbg !5751
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #42, !dbg !5752
  ret i32 %4, !dbg !5753
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5754 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5758, metadata !DIExpression()), !dbg !5759
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #42, !dbg !5760
  ret ptr %2, !dbg !5761
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5762 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5764, metadata !DIExpression()), !dbg !5766
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #42, !dbg !5767
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5765, metadata !DIExpression()), !dbg !5766
  ret ptr %2, !dbg !5768
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5769 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5771, metadata !DIExpression()), !dbg !5778
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5772, metadata !DIExpression()), !dbg !5778
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5773, metadata !DIExpression()), !dbg !5778
  call void @llvm.dbg.value(metadata i32 %0, metadata !5764, metadata !DIExpression()), !dbg !5779
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #42, !dbg !5781
  call void @llvm.dbg.value(metadata ptr %4, metadata !5765, metadata !DIExpression()), !dbg !5779
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5774, metadata !DIExpression()), !dbg !5778
  %5 = icmp eq ptr %4, null, !dbg !5782
  br i1 %5, label %6, label %9, !dbg !5783

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5784
  br i1 %7, label %19, label %8, !dbg !5787

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5788, !tbaa !1111
  br label %19, !dbg !5789

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #43, !dbg !5790
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5775, metadata !DIExpression()), !dbg !5791
  %11 = icmp ult i64 %10, %2, !dbg !5792
  br i1 %11, label %12, label %14, !dbg !5794

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5795
  call void @llvm.dbg.value(metadata ptr %1, metadata !5797, metadata !DIExpression()), !dbg !5802
  call void @llvm.dbg.value(metadata ptr %4, metadata !5800, metadata !DIExpression()), !dbg !5802
  call void @llvm.dbg.value(metadata i64 %13, metadata !5801, metadata !DIExpression()), !dbg !5802
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #42, !dbg !5804
  br label %19, !dbg !5805

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5806
  br i1 %15, label %19, label %16, !dbg !5809

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5810
  call void @llvm.dbg.value(metadata ptr %1, metadata !5797, metadata !DIExpression()), !dbg !5812
  call void @llvm.dbg.value(metadata ptr %4, metadata !5800, metadata !DIExpression()), !dbg !5812
  call void @llvm.dbg.value(metadata i64 %17, metadata !5801, metadata !DIExpression()), !dbg !5812
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #42, !dbg !5814
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5815
  store i8 0, ptr %18, align 1, !dbg !5816, !tbaa !1111
  br label %19, !dbg !5817

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5818
  ret i32 %20, !dbg !5819
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
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind willreturn memory(argmem: read) }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #38 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { alwaysinline nobuiltin nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { nounwind }
attributes #43 = { nounwind willreturn memory(read) }
attributes #44 = { noreturn nounwind }
attributes #45 = { nounwind willreturn memory(none) }
attributes #46 = { noreturn }
attributes #47 = { nounwind allocsize(1) }
attributes #48 = { cold }
attributes #49 = { nounwind allocsize(0) }
attributes #50 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!109, !524, !597, !601, !616, !885, !917, !922, !924, !927, !929, !931, !934, !936, !667, !681, !729, !942, !877, !948, !981, !983, !985, !987, !990, !901, !993, !995, !997, !1001, !1003}
!llvm.ident = !{!1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005}
!llvm.module.flags = !{!1006, !1007, !1008, !1009, !1010, !1011, !1012}

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
!109 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/cut.o -MD -MP -MF src/.deps/cut.Tpo -c src/cut.c -o src/.cut.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !110, retainedTypes: !166, globals: !177, splitDebugInlining: false, nameTableKind: None)
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
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !171, line: 18, baseType: !172)
!171 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
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
!521 = distinct !DISubprogram(name: "set_fields", scope: !497, file: !497, line: 136, type: !522, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !569)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !173, !112}
!524 = distinct !DICompileUnit(language: DW_LANG_C11, file: !497, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/set-fields.o -MD -MP -MF src/.deps/set-fields.Tpo -c src/set-fields.c -o src/.set-fields.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !525, retainedTypes: !526, globals: !527, splitDebugInlining: false, nameTableKind: None)
!525 = !{!122, !128}
!526 = !{!118, !169}
!527 = !{!495, !498, !503, !505, !510, !512, !517, !519, !528, !530, !535, !540, !545, !550, !552, !554, !561, !567}
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
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !566, line: 18, baseType: !293)
!566 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(name: "n_frp_allocated", scope: !524, file: !497, line: 33, type: !563, isLocal: true, isDefinition: true)
!569 = !{!570, !571, !572, !573, !574, !575, !576, !577, !578, !586, !588}
!570 = !DILocalVariable(name: "fieldstr", arg: 1, scope: !521, file: !497, line: 136, type: !173)
!571 = !DILocalVariable(name: "options", arg: 2, scope: !521, file: !497, line: 136, type: !112)
!572 = !DILocalVariable(name: "initial", scope: !521, file: !497, line: 138, type: !460)
!573 = !DILocalVariable(name: "value", scope: !521, file: !497, line: 139, type: !460)
!574 = !DILocalVariable(name: "lhs_specified", scope: !521, file: !497, line: 140, type: !224)
!575 = !DILocalVariable(name: "rhs_specified", scope: !521, file: !497, line: 141, type: !224)
!576 = !DILocalVariable(name: "dash_found", scope: !521, file: !497, line: 142, type: !224)
!577 = !DILocalVariable(name: "in_digits", scope: !521, file: !497, line: 144, type: !224)
!578 = !DILocalVariable(name: "bad_num", scope: !579, file: !497, line: 253, type: !167)
!579 = distinct !DILexicalBlock(scope: !580, file: !497, line: 250, column: 13)
!580 = distinct !DILexicalBlock(scope: !581, file: !497, line: 248, column: 15)
!581 = distinct !DILexicalBlock(scope: !582, file: !497, line: 234, column: 9)
!582 = distinct !DILexicalBlock(scope: !583, file: !497, line: 233, column: 16)
!583 = distinct !DILexicalBlock(scope: !584, file: !497, line: 179, column: 16)
!584 = distinct !DILexicalBlock(scope: !585, file: !497, line: 159, column: 11)
!585 = distinct !DILexicalBlock(scope: !521, file: !497, line: 158, column: 5)
!586 = !DILocalVariable(name: "i", scope: !587, file: !497, line: 283, type: !563)
!587 = distinct !DILexicalBlock(scope: !521, file: !497, line: 283, column: 3)
!588 = !DILocalVariable(name: "j", scope: !589, file: !497, line: 285, type: !563)
!589 = distinct !DILexicalBlock(scope: !590, file: !497, line: 285, column: 7)
!590 = distinct !DILexicalBlock(scope: !591, file: !497, line: 284, column: 5)
!591 = distinct !DILexicalBlock(scope: !587, file: !497, line: 283, column: 3)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !594, line: 3, type: !192, isLocal: true, isDefinition: true)
!594 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(name: "Version", scope: !597, file: !594, line: 3, type: !173, isLocal: false, isDefinition: true)
!597 = distinct !DICompileUnit(language: DW_LANG_C11, file: !594, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !598, splitDebugInlining: false, nameTableKind: None)
!598 = !{!592, !595}
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(name: "file_name", scope: !601, file: !602, line: 45, type: !173, isLocal: true, isDefinition: true)
!601 = distinct !DICompileUnit(language: DW_LANG_C11, file: !602, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !603, splitDebugInlining: false, nameTableKind: None)
!602 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!603 = !{!604, !606, !608, !610, !599, !612}
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !602, line: 121, type: !356, isLocal: true, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !602, line: 121, type: !104, isLocal: true, isDefinition: true)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !602, line: 123, type: !356, isLocal: true, isDefinition: true)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !602, line: 126, type: !345, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !601, file: !602, line: 55, type: !224, isLocal: true, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !616, file: !617, line: 66, type: !662, isLocal: false, isDefinition: true)
!616 = distinct !DICompileUnit(language: DW_LANG_C11, file: !617, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !618, globals: !619, splitDebugInlining: false, nameTableKind: None)
!617 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!618 = !{!168, !175}
!619 = !{!620, !622, !641, !643, !645, !647, !614, !649, !651, !653, !655, !660}
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !617, line: 272, type: !325, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(name: "old_file_name", scope: !624, file: !617, line: 304, type: !173, isLocal: true, isDefinition: true)
!624 = distinct !DISubprogram(name: "verror_at_line", scope: !617, file: !617, line: 298, type: !625, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !634)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !118, !118, !173, !112, !173, !627}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !629)
!629 = !{!630, !631, !632, !633}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !628, file: !617, baseType: !112, size: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !628, file: !617, baseType: !112, size: 32, offset: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !628, file: !617, baseType: !168, size: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !628, file: !617, baseType: !168, size: 64, offset: 128)
!634 = !{!635, !636, !637, !638, !639, !640}
!635 = !DILocalVariable(name: "status", arg: 1, scope: !624, file: !617, line: 298, type: !118)
!636 = !DILocalVariable(name: "errnum", arg: 2, scope: !624, file: !617, line: 298, type: !118)
!637 = !DILocalVariable(name: "file_name", arg: 3, scope: !624, file: !617, line: 298, type: !173)
!638 = !DILocalVariable(name: "line_number", arg: 4, scope: !624, file: !617, line: 298, type: !112)
!639 = !DILocalVariable(name: "message", arg: 5, scope: !624, file: !617, line: 298, type: !173)
!640 = !DILocalVariable(name: "args", arg: 6, scope: !624, file: !617, line: 298, type: !627)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(name: "old_line_number", scope: !624, file: !617, line: 305, type: !112, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !617, line: 338, type: !19, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !617, line: 346, type: !361, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !617, line: 346, type: !219, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(name: "error_message_count", scope: !616, file: !617, line: 69, type: !112, isLocal: false, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !616, file: !617, line: 295, type: !118, isLocal: false, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !617, line: 208, type: !356, isLocal: true, isDefinition: true)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !617, line: 208, type: !657, isLocal: true, isDefinition: true)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !658)
!658 = !{!659}
!659 = !DISubrange(count: 21)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !617, line: 214, type: !325, isLocal: true, isDefinition: true)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{null}
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(name: "program_name", scope: !667, file: !668, line: 31, type: !173, isLocal: false, isDefinition: true)
!667 = distinct !DICompileUnit(language: DW_LANG_C11, file: !668, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !669, globals: !670, splitDebugInlining: false, nameTableKind: None)
!668 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!669 = !{!168, !167}
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
!681 = distinct !DICompileUnit(language: DW_LANG_C11, file: !678, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !682, splitDebugInlining: false, nameTableKind: None)
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
!728 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !729, file: !708, line: 76, type: !803, isLocal: false, isDefinition: true)
!729 = distinct !DICompileUnit(language: DW_LANG_C11, file: !708, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !730, retainedTypes: !738, globals: !739, splitDebugInlining: false, nameTableKind: None)
!730 = !{!731, !733, !128}
!731 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !732, line: 42, baseType: !112, size: 32, elements: !145)
!732 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!733 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !732, line: 254, baseType: !112, size: 32, elements: !734)
!734 = !{!735, !736, !737}
!735 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!736 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!737 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!738 = !{!168, !118, !169, !170}
!739 = !{!706, !709, !711, !713, !715, !717, !719, !721, !723, !725, !727, !740, !744, !754, !756, !761, !763, !765, !767, !769, !792, !799, !801}
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !729, file: !708, line: 92, type: !742, isLocal: false, isDefinition: true)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !743, size: 320, elements: !95)
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !731)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !729, file: !708, line: 1040, type: !746, isLocal: false, isDefinition: true)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !708, line: 56, size: 448, elements: !747)
!747 = !{!748, !749, !750, !752, !753}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !746, file: !708, line: 59, baseType: !731, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !746, file: !708, line: 62, baseType: !118, size: 32, offset: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !746, file: !708, line: 66, baseType: !751, size: 256, offset: 64)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 256, elements: !362)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !746, file: !708, line: 69, baseType: !173, size: 64, offset: 320)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !746, file: !708, line: 72, baseType: !173, size: 64, offset: 384)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !729, file: !708, line: 107, type: !746, isLocal: true, isDefinition: true)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(name: "slot0", scope: !729, file: !708, line: 831, type: !758, isLocal: true, isDefinition: true)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !759)
!759 = !{!760}
!760 = !DISubrange(count: 256)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !708, line: 321, type: !219, isLocal: true, isDefinition: true)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(scope: null, file: !708, line: 357, type: !219, isLocal: true, isDefinition: true)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(scope: null, file: !708, line: 358, type: !219, isLocal: true, isDefinition: true)
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(scope: null, file: !708, line: 199, type: !356, isLocal: true, isDefinition: true)
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(name: "quote", scope: !771, file: !708, line: 228, type: !790, isLocal: true, isDefinition: true)
!771 = distinct !DISubprogram(name: "gettext_quote", scope: !708, file: !708, line: 197, type: !772, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !774)
!772 = !DISubroutineType(types: !773)
!773 = !{!173, !173, !731}
!774 = !{!775, !776, !777, !778, !779}
!775 = !DILocalVariable(name: "msgid", arg: 1, scope: !771, file: !708, line: 197, type: !173)
!776 = !DILocalVariable(name: "s", arg: 2, scope: !771, file: !708, line: 197, type: !731)
!777 = !DILocalVariable(name: "translation", scope: !771, file: !708, line: 199, type: !173)
!778 = !DILocalVariable(name: "w", scope: !771, file: !708, line: 229, type: !688)
!779 = !DILocalVariable(name: "mbs", scope: !771, file: !708, line: 230, type: !780)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !694, line: 6, baseType: !781)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !696, line: 21, baseType: !782)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !696, line: 13, size: 64, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !782, file: !696, line: 15, baseType: !118, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !782, file: !696, line: 20, baseType: !786, size: 32, offset: 32)
!786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !782, file: !696, line: 16, size: 32, elements: !787)
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !786, file: !696, line: 18, baseType: !112, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !786, file: !696, line: 19, baseType: !19, size: 32)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 64, elements: !791)
!791 = !{!221, !21}
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(name: "slotvec", scope: !729, file: !708, line: 834, type: !794, isLocal: true, isDefinition: true)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !708, line: 823, size: 128, elements: !796)
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !795, file: !708, line: 825, baseType: !170, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !795, file: !708, line: 826, baseType: !167, size: 64, offset: 64)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(name: "nslots", scope: !729, file: !708, line: 832, type: !118, isLocal: true, isDefinition: true)
!801 = !DIGlobalVariableExpression(var: !802, expr: !DIExpression())
!802 = distinct !DIGlobalVariable(name: "slotvec0", scope: !729, file: !708, line: 833, type: !795, isLocal: true, isDefinition: true)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 704, elements: !434)
!804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(scope: null, file: !807, line: 67, type: !104, isLocal: true, isDefinition: true)
!807 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(scope: null, file: !807, line: 69, type: !356, isLocal: true, isDefinition: true)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(scope: null, file: !807, line: 83, type: !356, isLocal: true, isDefinition: true)
!812 = !DIGlobalVariableExpression(var: !813, expr: !DIExpression())
!813 = distinct !DIGlobalVariable(scope: null, file: !807, line: 83, type: !19, isLocal: true, isDefinition: true)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(scope: null, file: !807, line: 85, type: !219, isLocal: true, isDefinition: true)
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(scope: null, file: !807, line: 88, type: !818, isLocal: true, isDefinition: true)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !819)
!819 = !{!820}
!820 = !DISubrange(count: 171)
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(scope: null, file: !807, line: 88, type: !514, isLocal: true, isDefinition: true)
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(scope: null, file: !807, line: 105, type: !197, isLocal: true, isDefinition: true)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(scope: null, file: !807, line: 109, type: !547, isLocal: true, isDefinition: true)
!827 = !DIGlobalVariableExpression(var: !828, expr: !DIExpression())
!828 = distinct !DIGlobalVariable(scope: null, file: !807, line: 113, type: !829, isLocal: true, isDefinition: true)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !830)
!830 = !{!831}
!831 = !DISubrange(count: 28)
!832 = !DIGlobalVariableExpression(var: !833, expr: !DIExpression())
!833 = distinct !DIGlobalVariable(scope: null, file: !807, line: 120, type: !500, isLocal: true, isDefinition: true)
!834 = !DIGlobalVariableExpression(var: !835, expr: !DIExpression())
!835 = distinct !DIGlobalVariable(scope: null, file: !807, line: 127, type: !836, isLocal: true, isDefinition: true)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !837)
!837 = !{!838}
!838 = !DISubrange(count: 36)
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression())
!840 = distinct !DIGlobalVariable(scope: null, file: !807, line: 134, type: !383, isLocal: true, isDefinition: true)
!841 = !DIGlobalVariableExpression(var: !842, expr: !DIExpression())
!842 = distinct !DIGlobalVariable(scope: null, file: !807, line: 142, type: !843, isLocal: true, isDefinition: true)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !844)
!844 = !{!845}
!845 = !DISubrange(count: 44)
!846 = !DIGlobalVariableExpression(var: !847, expr: !DIExpression())
!847 = distinct !DIGlobalVariable(scope: null, file: !807, line: 150, type: !848, isLocal: true, isDefinition: true)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !849)
!849 = !{!850}
!850 = !DISubrange(count: 48)
!851 = !DIGlobalVariableExpression(var: !852, expr: !DIExpression())
!852 = distinct !DIGlobalVariable(scope: null, file: !807, line: 159, type: !853, isLocal: true, isDefinition: true)
!853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !854)
!854 = !{!855}
!855 = !DISubrange(count: 52)
!856 = !DIGlobalVariableExpression(var: !857, expr: !DIExpression())
!857 = distinct !DIGlobalVariable(scope: null, file: !807, line: 170, type: !858, isLocal: true, isDefinition: true)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !859)
!859 = !{!860}
!860 = !DISubrange(count: 60)
!861 = !DIGlobalVariableExpression(var: !862, expr: !DIExpression())
!862 = distinct !DIGlobalVariable(scope: null, file: !807, line: 248, type: !314, isLocal: true, isDefinition: true)
!863 = !DIGlobalVariableExpression(var: !864, expr: !DIExpression())
!864 = distinct !DIGlobalVariable(scope: null, file: !807, line: 248, type: !405, isLocal: true, isDefinition: true)
!865 = !DIGlobalVariableExpression(var: !866, expr: !DIExpression())
!866 = distinct !DIGlobalVariable(scope: null, file: !807, line: 254, type: !314, isLocal: true, isDefinition: true)
!867 = !DIGlobalVariableExpression(var: !868, expr: !DIExpression())
!868 = distinct !DIGlobalVariable(scope: null, file: !807, line: 254, type: !187, isLocal: true, isDefinition: true)
!869 = !DIGlobalVariableExpression(var: !870, expr: !DIExpression())
!870 = distinct !DIGlobalVariable(scope: null, file: !807, line: 254, type: !383, isLocal: true, isDefinition: true)
!871 = !DIGlobalVariableExpression(var: !872, expr: !DIExpression())
!872 = distinct !DIGlobalVariable(scope: null, file: !807, line: 259, type: !3, isLocal: true, isDefinition: true)
!873 = !DIGlobalVariableExpression(var: !874, expr: !DIExpression())
!874 = distinct !DIGlobalVariable(scope: null, file: !807, line: 259, type: !537, isLocal: true, isDefinition: true)
!875 = !DIGlobalVariableExpression(var: !876, expr: !DIExpression())
!876 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !877, file: !878, line: 26, type: !880, isLocal: false, isDefinition: true)
!877 = distinct !DICompileUnit(language: DW_LANG_C11, file: !878, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !879, splitDebugInlining: false, nameTableKind: None)
!878 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!879 = !{!875}
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 376, elements: !881)
!881 = !{!882}
!882 = !DISubrange(count: 47)
!883 = !DIGlobalVariableExpression(var: !884, expr: !DIExpression())
!884 = distinct !DIGlobalVariable(name: "exit_failure", scope: !885, file: !886, line: 24, type: !888, isLocal: false, isDefinition: true)
!885 = distinct !DICompileUnit(language: DW_LANG_C11, file: !886, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !887, splitDebugInlining: false, nameTableKind: None)
!886 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!887 = !{!883}
!888 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !118)
!889 = !DIGlobalVariableExpression(var: !890, expr: !DIExpression())
!890 = distinct !DIGlobalVariable(scope: null, file: !891, line: 34, type: !345, isLocal: true, isDefinition: true)
!891 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!892 = !DIGlobalVariableExpression(var: !893, expr: !DIExpression())
!893 = distinct !DIGlobalVariable(scope: null, file: !891, line: 34, type: !356, isLocal: true, isDefinition: true)
!894 = !DIGlobalVariableExpression(var: !895, expr: !DIExpression())
!895 = distinct !DIGlobalVariable(scope: null, file: !891, line: 34, type: !378, isLocal: true, isDefinition: true)
!896 = !DIGlobalVariableExpression(var: !897, expr: !DIExpression())
!897 = distinct !DIGlobalVariable(scope: null, file: !898, line: 108, type: !89, isLocal: true, isDefinition: true)
!898 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!899 = !DIGlobalVariableExpression(var: !900, expr: !DIExpression())
!900 = distinct !DIGlobalVariable(name: "internal_state", scope: !901, file: !898, line: 97, type: !904, isLocal: true, isDefinition: true)
!901 = distinct !DICompileUnit(language: DW_LANG_C11, file: !898, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !902, globals: !903, splitDebugInlining: false, nameTableKind: None)
!902 = !{!168, !170, !175}
!903 = !{!896, !899}
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !694, line: 6, baseType: !905)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !696, line: 21, baseType: !906)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !696, line: 13, size: 64, elements: !907)
!907 = !{!908, !909}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !906, file: !696, line: 15, baseType: !118, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !906, file: !696, line: 20, baseType: !910, size: 32, offset: 32)
!910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !906, file: !696, line: 16, size: 32, elements: !911)
!911 = !{!912, !913}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !910, file: !696, line: 18, baseType: !112, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !910, file: !696, line: 19, baseType: !19, size: 32)
!914 = !DIGlobalVariableExpression(var: !915, expr: !DIExpression())
!915 = distinct !DIGlobalVariable(scope: null, file: !916, line: 35, type: !334, isLocal: true, isDefinition: true)
!916 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!917 = distinct !DICompileUnit(language: DW_LANG_C11, file: !918, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fadvise.o -MD -MP -MF lib/.deps/libcoreutils_a-fadvise.Tpo -c lib/fadvise.c -o lib/.libcoreutils_a-fadvise.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !919, splitDebugInlining: false, nameTableKind: None)
!918 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!919 = !{!920}
!920 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !921, line: 44, baseType: !112, size: 32, elements: !159)
!921 = !DIFile(filename: "lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!922 = distinct !DICompileUnit(language: DW_LANG_C11, file: !923, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!923 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!924 = distinct !DICompileUnit(language: DW_LANG_C11, file: !925, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !926, splitDebugInlining: false, nameTableKind: None)
!925 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!926 = !{!168}
!927 = distinct !DICompileUnit(language: DW_LANG_C11, file: !928, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fpurge.o -MD -MP -MF lib/.deps/libcoreutils_a-fpurge.Tpo -c lib/fpurge.c -o lib/.libcoreutils_a-fpurge.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!928 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!929 = distinct !DICompileUnit(language: DW_LANG_C11, file: !930, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !926, splitDebugInlining: false, nameTableKind: None)
!930 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!931 = distinct !DICompileUnit(language: DW_LANG_C11, file: !932, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getndelim2.o -MD -MP -MF lib/.deps/libcoreutils_a-getndelim2.Tpo -c lib/getndelim2.c -o lib/.libcoreutils_a-getndelim2.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !933, splitDebugInlining: false, nameTableKind: None)
!932 = !DIFile(filename: "lib/getndelim2.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d286772550dcd0d4e4164dd1f736b40f")
!933 = !{!176}
!934 = distinct !DICompileUnit(language: DW_LANG_C11, file: !935, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!935 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!936 = distinct !DICompileUnit(language: DW_LANG_C11, file: !937, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-memchr2.o -MD -MP -MF lib/.deps/libcoreutils_a-memchr2.Tpo -c lib/memchr2.c -o lib/.libcoreutils_a-memchr2.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !938, splitDebugInlining: false, nameTableKind: None)
!937 = !DIFile(filename: "lib/memchr2.c", directory: "/src", checksumkind: CSK_MD5, checksum: "02120b13899f3db9fd2d834284ba56fe")
!938 = !{!175, !168, !939, !940}
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !461, line: 90, baseType: !172)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!942 = distinct !DICompileUnit(language: DW_LANG_C11, file: !807, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !943, retainedTypes: !926, globals: !947, splitDebugInlining: false, nameTableKind: None)
!943 = !{!944}
!944 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !807, line: 40, baseType: !112, size: 32, elements: !945)
!945 = !{!946}
!946 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!947 = !{!805, !808, !810, !812, !814, !816, !821, !823, !825, !827, !832, !834, !839, !841, !846, !851, !856, !861, !863, !865, !867, !869, !871, !873}
!948 = distinct !DICompileUnit(language: DW_LANG_C11, file: !949, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !950, retainedTypes: !980, splitDebugInlining: false, nameTableKind: None)
!949 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!950 = !{!951, !963}
!951 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !952, file: !949, line: 188, baseType: !112, size: 32, elements: !961)
!952 = distinct !DISubprogram(name: "x2nrealloc", scope: !949, file: !949, line: 176, type: !953, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !956)
!953 = !DISubroutineType(types: !954)
!954 = !{!168, !168, !955, !170}
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!956 = !{!957, !958, !959, !960}
!957 = !DILocalVariable(name: "p", arg: 1, scope: !952, file: !949, line: 176, type: !168)
!958 = !DILocalVariable(name: "pn", arg: 2, scope: !952, file: !949, line: 176, type: !955)
!959 = !DILocalVariable(name: "s", arg: 3, scope: !952, file: !949, line: 176, type: !170)
!960 = !DILocalVariable(name: "n", scope: !952, file: !949, line: 178, type: !170)
!961 = !{!962}
!962 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!963 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !964, file: !949, line: 228, baseType: !112, size: 32, elements: !961)
!964 = distinct !DISubprogram(name: "xpalloc", scope: !949, file: !949, line: 223, type: !965, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !970)
!965 = !DISubroutineType(types: !966)
!966 = !{!168, !168, !967, !968, !565, !968}
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !969, line: 130, baseType: !565)
!969 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!970 = !{!971, !972, !973, !974, !975, !976, !977, !978, !979}
!971 = !DILocalVariable(name: "pa", arg: 1, scope: !964, file: !949, line: 223, type: !168)
!972 = !DILocalVariable(name: "pn", arg: 2, scope: !964, file: !949, line: 223, type: !967)
!973 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !964, file: !949, line: 223, type: !968)
!974 = !DILocalVariable(name: "n_max", arg: 4, scope: !964, file: !949, line: 223, type: !565)
!975 = !DILocalVariable(name: "s", arg: 5, scope: !964, file: !949, line: 223, type: !968)
!976 = !DILocalVariable(name: "n0", scope: !964, file: !949, line: 230, type: !968)
!977 = !DILocalVariable(name: "n", scope: !964, file: !949, line: 237, type: !968)
!978 = !DILocalVariable(name: "nbytes", scope: !964, file: !949, line: 248, type: !968)
!979 = !DILocalVariable(name: "adjusted_nbytes", scope: !964, file: !949, line: 252, type: !968)
!980 = !{!167, !168}
!981 = distinct !DICompileUnit(language: DW_LANG_C11, file: !891, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !982, splitDebugInlining: false, nameTableKind: None)
!982 = !{!889, !892, !894}
!983 = distinct !DICompileUnit(language: DW_LANG_C11, file: !984, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fopen.o -MD -MP -MF lib/.deps/libcoreutils_a-fopen.Tpo -c lib/fopen.c -o lib/.libcoreutils_a-fopen.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !926, splitDebugInlining: false, nameTableKind: None)
!984 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!985 = distinct !DICompileUnit(language: DW_LANG_C11, file: !986, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!986 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!987 = distinct !DICompileUnit(language: DW_LANG_C11, file: !988, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-freadptr.o -MD -MP -MF lib/.deps/libcoreutils_a-freadptr.Tpo -c lib/freadptr.c -o lib/.libcoreutils_a-freadptr.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !989, splitDebugInlining: false, nameTableKind: None)
!988 = !DIFile(filename: "lib/freadptr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c5958d0c7223ea506787ed1086f8c77f")
!989 = !{!173}
!990 = distinct !DICompileUnit(language: DW_LANG_C11, file: !991, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-freadseek.o -MD -MP -MF lib/.deps/libcoreutils_a-freadseek.Tpo -c lib/freadseek.c -o lib/.libcoreutils_a-freadseek.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !992, splitDebugInlining: false, nameTableKind: None)
!991 = !DIFile(filename: "lib/freadseek.c", directory: "/src", checksumkind: CSK_MD5, checksum: "65aa8ebe67d000642bdd4080692a0013")
!992 = !{!168, !172}
!993 = distinct !DICompileUnit(language: DW_LANG_C11, file: !994, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !926, splitDebugInlining: false, nameTableKind: None)
!994 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!995 = distinct !DICompileUnit(language: DW_LANG_C11, file: !996, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-freadahead.o -MD -MP -MF lib/.deps/libcoreutils_a-freadahead.Tpo -c lib/freadahead.c -o lib/.libcoreutils_a-freadahead.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!996 = !DIFile(filename: "lib/freadahead.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0335573db6cc583acb894a308e230b2b")
!997 = distinct !DICompileUnit(language: DW_LANG_C11, file: !916, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !998, splitDebugInlining: false, nameTableKind: None)
!998 = !{!999, !914}
!999 = !DIGlobalVariableExpression(var: !1000, expr: !DIExpression())
!1000 = distinct !DIGlobalVariable(scope: null, file: !916, line: 35, type: !219, isLocal: true, isDefinition: true)
!1001 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1002, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1002 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1003 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1004, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !926, splitDebugInlining: false, nameTableKind: None)
!1004 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1005 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1006 = !{i32 7, !"Dwarf Version", i32 5}
!1007 = !{i32 2, !"Debug Info Version", i32 3}
!1008 = !{i32 1, !"wchar_size", i32 4}
!1009 = !{i32 8, !"PIC Level", i32 2}
!1010 = !{i32 7, !"PIE Level", i32 2}
!1011 = !{i32 7, !"uwtable", i32 2}
!1012 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!1013 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 125, type: !1014, scopeLine: 126, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1016)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{null, !118}
!1016 = !{!1017}
!1017 = !DILocalVariable(name: "status", arg: 1, scope: !1013, file: !2, line: 125, type: !118)
!1018 = !DILocation(line: 0, scope: !1013)
!1019 = !DILocation(line: 127, column: 14, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 127, column: 7)
!1021 = !DILocation(line: 127, column: 7, scope: !1013)
!1022 = !DILocation(line: 128, column: 5, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 128, column: 5)
!1024 = !{!1025, !1025, i64 0}
!1025 = !{!"any pointer", !1026, i64 0}
!1026 = !{!"omnipotent char", !1027, i64 0}
!1027 = !{!"Simple C/C++ TBAA"}
!1028 = !DILocation(line: 131, column: 7, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 130, column: 5)
!1030 = !DILocation(line: 135, column: 7, scope: !1029)
!1031 = !DILocation(line: 729, column: 3, scope: !1032, inlinedAt: !1033)
!1032 = distinct !DISubprogram(name: "emit_stdin_note", scope: !117, file: !117, line: 727, type: !663, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109)
!1033 = distinct !DILocation(line: 139, column: 7, scope: !1029)
!1034 = !DILocation(line: 736, column: 3, scope: !1035, inlinedAt: !1036)
!1035 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !117, file: !117, line: 734, type: !663, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109)
!1036 = distinct !DILocation(line: 140, column: 7, scope: !1029)
!1037 = !DILocation(line: 142, column: 7, scope: !1029)
!1038 = !DILocation(line: 146, column: 7, scope: !1029)
!1039 = !DILocation(line: 150, column: 7, scope: !1029)
!1040 = !DILocation(line: 154, column: 7, scope: !1029)
!1041 = !DILocation(line: 159, column: 7, scope: !1029)
!1042 = !DILocation(line: 163, column: 7, scope: !1029)
!1043 = !DILocation(line: 167, column: 7, scope: !1029)
!1044 = !DILocation(line: 171, column: 7, scope: !1029)
!1045 = !DILocation(line: 176, column: 7, scope: !1029)
!1046 = !DILocation(line: 180, column: 7, scope: !1029)
!1047 = !DILocation(line: 181, column: 7, scope: !1029)
!1048 = !DILocation(line: 182, column: 7, scope: !1029)
!1049 = !DILocation(line: 188, column: 7, scope: !1029)
!1050 = !DILocalVariable(name: "program", arg: 1, scope: !1051, file: !117, line: 836, type: !173)
!1051 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !117, file: !117, line: 836, type: !1052, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1054)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{null, !173}
!1054 = !{!1050, !1055, !1062, !1063, !1065, !1066}
!1055 = !DILocalVariable(name: "infomap", scope: !1051, file: !117, line: 838, type: !1056)
!1056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1057, size: 896, elements: !357)
!1057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1058)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1051, file: !117, line: 838, size: 128, elements: !1059)
!1059 = !{!1060, !1061}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1058, file: !117, line: 838, baseType: !173, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1058, file: !117, line: 838, baseType: !173, size: 64, offset: 64)
!1062 = !DILocalVariable(name: "node", scope: !1051, file: !117, line: 848, type: !173)
!1063 = !DILocalVariable(name: "map_prog", scope: !1051, file: !117, line: 849, type: !1064)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1065 = !DILocalVariable(name: "lc_messages", scope: !1051, file: !117, line: 861, type: !173)
!1066 = !DILocalVariable(name: "url_program", scope: !1051, file: !117, line: 874, type: !173)
!1067 = !DILocation(line: 0, scope: !1051, inlinedAt: !1068)
!1068 = distinct !DILocation(line: 196, column: 7, scope: !1029)
!1069 = !{}
!1070 = !DILocation(line: 857, column: 3, scope: !1051, inlinedAt: !1068)
!1071 = !DILocation(line: 861, column: 29, scope: !1051, inlinedAt: !1068)
!1072 = !DILocation(line: 862, column: 7, scope: !1073, inlinedAt: !1068)
!1073 = distinct !DILexicalBlock(scope: !1051, file: !117, line: 862, column: 7)
!1074 = !DILocation(line: 862, column: 19, scope: !1073, inlinedAt: !1068)
!1075 = !DILocation(line: 862, column: 22, scope: !1073, inlinedAt: !1068)
!1076 = !DILocation(line: 862, column: 7, scope: !1051, inlinedAt: !1068)
!1077 = !DILocation(line: 868, column: 7, scope: !1078, inlinedAt: !1068)
!1078 = distinct !DILexicalBlock(scope: !1073, file: !117, line: 863, column: 5)
!1079 = !DILocation(line: 870, column: 5, scope: !1078, inlinedAt: !1068)
!1080 = !DILocation(line: 875, column: 3, scope: !1051, inlinedAt: !1068)
!1081 = !DILocation(line: 877, column: 3, scope: !1051, inlinedAt: !1068)
!1082 = !DILocation(line: 198, column: 3, scope: !1013)
!1083 = !DISubprogram(name: "dcgettext", scope: !1084, file: !1084, line: 51, type: !1085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1084 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!167, !173, !173, !118}
!1087 = !DISubprogram(name: "__fprintf_chk", scope: !1088, file: !1088, line: 93, type: !1089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1088 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!118, !1091, !118, !1092, null}
!1091 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !265)
!1092 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !173)
!1093 = !DISubprogram(name: "__printf_chk", scope: !1088, file: !1088, line: 95, type: !1094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!118, !118, !1092, null}
!1096 = !DISubprogram(name: "fputs_unlocked", scope: !1097, file: !1097, line: 691, type: !1098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1097 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!118, !1092, !1091}
!1100 = !DILocation(line: 0, scope: !243)
!1101 = !DILocation(line: 581, column: 7, scope: !251)
!1102 = !{!1103, !1103, i64 0}
!1103 = !{!"int", !1026, i64 0}
!1104 = !DILocation(line: 581, column: 19, scope: !251)
!1105 = !DILocation(line: 581, column: 7, scope: !243)
!1106 = !DILocation(line: 585, column: 26, scope: !250)
!1107 = !DILocation(line: 0, scope: !250)
!1108 = !DILocation(line: 586, column: 23, scope: !250)
!1109 = !DILocation(line: 586, column: 28, scope: !250)
!1110 = !DILocation(line: 586, column: 32, scope: !250)
!1111 = !{!1026, !1026, i64 0}
!1112 = !DILocation(line: 586, column: 38, scope: !250)
!1113 = !DILocalVariable(name: "__s1", arg: 1, scope: !1114, file: !1115, line: 1359, type: !173)
!1114 = distinct !DISubprogram(name: "streq", scope: !1115, file: !1115, line: 1359, type: !1116, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1118)
!1115 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!224, !173, !173}
!1118 = !{!1113, !1119}
!1119 = !DILocalVariable(name: "__s2", arg: 2, scope: !1114, file: !1115, line: 1359, type: !173)
!1120 = !DILocation(line: 0, scope: !1114, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 586, column: 41, scope: !250)
!1122 = !DILocation(line: 1361, column: 11, scope: !1114, inlinedAt: !1121)
!1123 = !DILocation(line: 1361, column: 10, scope: !1114, inlinedAt: !1121)
!1124 = !DILocation(line: 586, column: 19, scope: !250)
!1125 = !DILocation(line: 587, column: 5, scope: !250)
!1126 = !DILocation(line: 588, column: 7, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !243, file: !117, line: 588, column: 7)
!1128 = !DILocation(line: 588, column: 7, scope: !243)
!1129 = !DILocation(line: 590, column: 7, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1127, file: !117, line: 589, column: 5)
!1131 = !DILocation(line: 591, column: 7, scope: !1130)
!1132 = !DILocation(line: 595, column: 37, scope: !243)
!1133 = !DILocation(line: 595, column: 35, scope: !243)
!1134 = !DILocation(line: 596, column: 29, scope: !243)
!1135 = !DILocation(line: 597, column: 8, scope: !258)
!1136 = !DILocation(line: 597, column: 7, scope: !243)
!1137 = !DILocation(line: 604, column: 24, scope: !257)
!1138 = !DILocation(line: 604, column: 12, scope: !258)
!1139 = !DILocation(line: 0, scope: !256)
!1140 = !DILocation(line: 610, column: 16, scope: !256)
!1141 = !DILocation(line: 610, column: 7, scope: !256)
!1142 = !DILocation(line: 611, column: 21, scope: !256)
!1143 = !{!1144, !1144, i64 0}
!1144 = !{!"short", !1026, i64 0}
!1145 = !DILocation(line: 611, column: 19, scope: !256)
!1146 = !DILocation(line: 611, column: 16, scope: !256)
!1147 = !DILocation(line: 610, column: 30, scope: !256)
!1148 = distinct !{!1148, !1141, !1142, !1149}
!1149 = !{!"llvm.loop.mustprogress"}
!1150 = !DILocation(line: 612, column: 18, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !256, file: !117, line: 612, column: 11)
!1152 = !DILocation(line: 612, column: 11, scope: !256)
!1153 = !DILocation(line: 620, column: 23, scope: !243)
!1154 = !DILocation(line: 625, column: 39, scope: !243)
!1155 = !DILocation(line: 626, column: 3, scope: !243)
!1156 = !DILocation(line: 626, column: 10, scope: !243)
!1157 = !DILocation(line: 626, column: 21, scope: !243)
!1158 = !DILocation(line: 628, column: 44, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !117, line: 628, column: 11)
!1160 = distinct !DILexicalBlock(scope: !243, file: !117, line: 627, column: 5)
!1161 = !DILocation(line: 628, column: 32, scope: !1159)
!1162 = !DILocation(line: 628, column: 49, scope: !1159)
!1163 = !DILocation(line: 628, column: 11, scope: !1160)
!1164 = !DILocation(line: 630, column: 11, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1160, file: !117, line: 630, column: 11)
!1166 = !DILocation(line: 630, column: 11, scope: !1160)
!1167 = !DILocation(line: 632, column: 26, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !117, line: 632, column: 15)
!1169 = distinct !DILexicalBlock(scope: !1165, file: !117, line: 631, column: 9)
!1170 = !DILocation(line: 632, column: 34, scope: !1168)
!1171 = !DILocation(line: 632, column: 37, scope: !1168)
!1172 = !DILocation(line: 632, column: 15, scope: !1169)
!1173 = !DILocation(line: 636, column: 16, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1169, file: !117, line: 636, column: 15)
!1175 = !DILocation(line: 636, column: 29, scope: !1174)
!1176 = !DILocation(line: 640, column: 16, scope: !1160)
!1177 = distinct !{!1177, !1155, !1178, !1149}
!1178 = !DILocation(line: 641, column: 5, scope: !243)
!1179 = !DILocation(line: 644, column: 3, scope: !243)
!1180 = !DILocation(line: 0, scope: !1114, inlinedAt: !1181)
!1181 = distinct !DILocation(line: 648, column: 31, scope: !243)
!1182 = !DILocation(line: 0, scope: !1114, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 649, column: 31, scope: !243)
!1184 = !DILocation(line: 0, scope: !1114, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 650, column: 31, scope: !243)
!1186 = !DILocation(line: 0, scope: !1114, inlinedAt: !1187)
!1187 = distinct !DILocation(line: 651, column: 31, scope: !243)
!1188 = !DILocation(line: 0, scope: !1114, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 652, column: 31, scope: !243)
!1190 = !DILocation(line: 0, scope: !1114, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 653, column: 31, scope: !243)
!1192 = !DILocation(line: 0, scope: !1114, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 654, column: 31, scope: !243)
!1194 = !DILocation(line: 0, scope: !1114, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 655, column: 31, scope: !243)
!1196 = !DILocation(line: 0, scope: !1114, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 656, column: 31, scope: !243)
!1198 = !DILocation(line: 0, scope: !1114, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 657, column: 31, scope: !243)
!1200 = !DILocation(line: 663, column: 7, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !243, file: !117, line: 663, column: 7)
!1202 = !DILocation(line: 664, column: 7, scope: !1201)
!1203 = !DILocation(line: 664, column: 10, scope: !1201)
!1204 = !DILocation(line: 663, column: 7, scope: !243)
!1205 = !DILocation(line: 669, column: 7, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1201, file: !117, line: 665, column: 5)
!1207 = !DILocation(line: 671, column: 5, scope: !1206)
!1208 = !DILocation(line: 676, column: 7, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1201, file: !117, line: 673, column: 5)
!1210 = !DILocation(line: 679, column: 3, scope: !243)
!1211 = !DILocation(line: 683, column: 3, scope: !243)
!1212 = !DILocation(line: 686, column: 3, scope: !243)
!1213 = !DILocation(line: 688, column: 3, scope: !243)
!1214 = !DILocation(line: 691, column: 3, scope: !243)
!1215 = !DILocation(line: 695, column: 3, scope: !243)
!1216 = !DILocation(line: 696, column: 1, scope: !243)
!1217 = !DISubprogram(name: "setlocale", scope: !1218, file: !1218, line: 122, type: !1219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1218 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!167, !118, !173}
!1221 = !DISubprogram(name: "strncmp", scope: !1222, file: !1222, line: 159, type: !1223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1222 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!118, !173, !173, !170}
!1225 = !DISubprogram(name: "exit", scope: !1226, file: !1226, line: 624, type: !1014, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1226 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1227 = !DISubprogram(name: "getenv", scope: !1226, file: !1226, line: 641, type: !1228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!167, !173}
!1230 = !DISubprogram(name: "strcmp", scope: !1222, file: !1222, line: 156, type: !1231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!118, !173, !173}
!1233 = !DISubprogram(name: "strspn", scope: !1222, file: !1222, line: 297, type: !1234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!172, !173, !173}
!1236 = !DISubprogram(name: "strchr", scope: !1222, file: !1222, line: 246, type: !1237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!167, !173, !118}
!1239 = !DISubprogram(name: "__ctype_b_loc", scope: !129, file: !129, line: 79, type: !1240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!1242}
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!1245 = !DISubprogram(name: "strcspn", scope: !1222, file: !1222, line: 293, type: !1234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1246 = !DISubprogram(name: "fwrite_unlocked", scope: !1097, file: !1097, line: 704, type: !1247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!170, !1249, !170, !170, !1091}
!1249 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1250)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1252 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 495, type: !1253, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1256)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!118, !118, !1255}
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!1256 = !{!1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264}
!1257 = !DILocalVariable(name: "argc", arg: 1, scope: !1252, file: !2, line: 495, type: !118)
!1258 = !DILocalVariable(name: "argv", arg: 2, scope: !1252, file: !2, line: 495, type: !1255)
!1259 = !DILocalVariable(name: "optc", scope: !1252, file: !2, line: 497, type: !118)
!1260 = !DILocalVariable(name: "ok", scope: !1252, file: !2, line: 498, type: !224)
!1261 = !DILocalVariable(name: "delim_specified", scope: !1252, file: !2, line: 499, type: !224)
!1262 = !DILocalVariable(name: "byte_mode", scope: !1252, file: !2, line: 500, type: !224)
!1263 = !DILocalVariable(name: "spec_list_string", scope: !1252, file: !2, line: 501, type: !167)
!1264 = !DILocalVariable(name: "cut_stream", scope: !1252, file: !2, line: 595, type: !1265)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{null, !265}
!1268 = !DILocation(line: 0, scope: !1252)
!1269 = !DILocation(line: 504, column: 21, scope: !1252)
!1270 = !DILocation(line: 504, column: 3, scope: !1252)
!1271 = !DILocation(line: 505, column: 3, scope: !1252)
!1272 = !DILocation(line: 506, column: 3, scope: !1252)
!1273 = !DILocation(line: 507, column: 3, scope: !1252)
!1274 = !DILocation(line: 509, column: 3, scope: !1252)
!1275 = !DILocation(line: 511, column: 3, scope: !1252)
!1276 = !DILocation(line: 511, column: 18, scope: !1252)
!1277 = distinct !{!1277, !1275, !1278, !1149}
!1278 = !DILocation(line: 565, column: 5, scope: !1252)
!1279 = !DILocation(line: 523, column: 15, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 523, column: 15)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !2, line: 515, column: 9)
!1282 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 513, column: 5)
!1283 = !DILocation(line: 523, column: 15, scope: !1281)
!1284 = !DILocation(line: 524, column: 13, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1280, file: !2, line: 524, column: 13)
!1286 = !DILocation(line: 525, column: 30, scope: !1281)
!1287 = !DILocation(line: 526, column: 11, scope: !1281)
!1288 = !DILocation(line: 531, column: 15, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 531, column: 15)
!1290 = !DILocation(line: 531, column: 25, scope: !1289)
!1291 = !DILocation(line: 531, column: 33, scope: !1289)
!1292 = !DILocation(line: 531, column: 36, scope: !1289)
!1293 = !DILocation(line: 531, column: 46, scope: !1289)
!1294 = !DILocation(line: 531, column: 15, scope: !1281)
!1295 = !DILocation(line: 532, column: 13, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1289, file: !2, line: 532, column: 13)
!1297 = !DILocation(line: 533, column: 17, scope: !1281)
!1298 = !DILocation(line: 535, column: 11, scope: !1281)
!1299 = !DILocation(line: 540, column: 38, scope: !1281)
!1300 = !DILocation(line: 540, column: 48, scope: !1281)
!1301 = !DILocation(line: 541, column: 44, scope: !1281)
!1302 = !DILocation(line: 540, column: 35, scope: !1281)
!1303 = !{!1304, !1304, i64 0}
!1304 = !{!"long", !1026, i64 0}
!1305 = !DILocation(line: 542, column: 35, scope: !1281)
!1306 = !DILocation(line: 543, column: 11, scope: !1281)
!1307 = !DILocation(line: 549, column: 34, scope: !1281)
!1308 = !DILocation(line: 550, column: 11, scope: !1281)
!1309 = !DILocation(line: 553, column: 22, scope: !1281)
!1310 = !DILocation(line: 554, column: 11, scope: !1281)
!1311 = !DILocation(line: 557, column: 22, scope: !1281)
!1312 = !DILocation(line: 558, column: 11, scope: !1281)
!1313 = !DILocation(line: 560, column: 9, scope: !1281)
!1314 = !DILocation(line: 561, column: 9, scope: !1281)
!1315 = !DILocation(line: 563, column: 11, scope: !1281)
!1316 = !DILocation(line: 567, column: 8, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 567, column: 7)
!1318 = !DILocation(line: 567, column: 7, scope: !1252)
!1319 = !DILocation(line: 568, column: 5, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1317, file: !2, line: 568, column: 5)
!1321 = !DILocation(line: 570, column: 7, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 570, column: 7)
!1323 = !DILocation(line: 570, column: 7, scope: !1252)
!1324 = !DILocation(line: 572, column: 11, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1322, file: !2, line: 571, column: 5)
!1326 = !DILocation(line: 573, column: 9, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 573, column: 9)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !2, line: 572, column: 11)
!1329 = !DILocation(line: 576, column: 11, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1325, file: !2, line: 576, column: 11)
!1331 = !DILocation(line: 576, column: 11, scope: !1325)
!1332 = !DILocation(line: 577, column: 9, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1330, file: !2, line: 577, column: 9)
!1334 = !DILocation(line: 583, column: 19, scope: !1252)
!1335 = !DILocation(line: 581, column: 3, scope: !1252)
!1336 = !DILocation(line: 585, column: 7, scope: !1252)
!1337 = !DILocation(line: 583, column: 16, scope: !1252)
!1338 = !DILocation(line: 586, column: 11, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 585, column: 7)
!1340 = !DILocation(line: 586, column: 5, scope: !1339)
!1341 = !DILocation(line: 588, column: 7, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 588, column: 7)
!1343 = !DILocation(line: 588, column: 31, scope: !1342)
!1344 = !DILocation(line: 588, column: 7, scope: !1252)
!1345 = !DILocation(line: 590, column: 37, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1342, file: !2, line: 589, column: 5)
!1347 = !DILocation(line: 590, column: 35, scope: !1346)
!1348 = !DILocation(line: 591, column: 31, scope: !1346)
!1349 = !DILocation(line: 592, column: 31, scope: !1346)
!1350 = !DILocation(line: 593, column: 5, scope: !1346)
!1351 = !DILocation(line: 595, column: 33, scope: !1252)
!1352 = !DILocation(line: 596, column: 7, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 596, column: 7)
!1354 = !DILocation(line: 596, column: 14, scope: !1353)
!1355 = !DILocation(line: 596, column: 7, scope: !1252)
!1356 = !DILocation(line: 599, column: 28, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !2, line: 599, column: 5)
!1358 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 599, column: 5)
!1359 = !DILocation(line: 599, column: 5, scope: !1358)
!1360 = !DILocation(line: 597, column: 10, scope: !1353)
!1361 = !DILocation(line: 597, column: 5, scope: !1353)
!1362 = !DILocation(line: 600, column: 23, scope: !1357)
!1363 = !DILocation(line: 600, column: 13, scope: !1357)
!1364 = !DILocation(line: 600, column: 10, scope: !1357)
!1365 = !DILocation(line: 599, column: 42, scope: !1357)
!1366 = distinct !{!1366, !1359, !1367, !1149}
!1367 = !DILocation(line: 600, column: 47, scope: !1358)
!1368 = !DILocation(line: 603, column: 7, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 603, column: 7)
!1370 = !DILocation(line: 603, column: 23, scope: !1369)
!1371 = !DILocation(line: 603, column: 34, scope: !1369)
!1372 = !DILocation(line: 603, column: 26, scope: !1369)
!1373 = !DILocation(line: 603, column: 41, scope: !1369)
!1374 = !DILocation(line: 603, column: 7, scope: !1252)
!1375 = !DILocation(line: 605, column: 7, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1369, file: !2, line: 604, column: 5)
!1377 = !DILocation(line: 607, column: 5, scope: !1376)
!1378 = !DILocation(line: 609, column: 10, scope: !1252)
!1379 = !DILocation(line: 609, column: 3, scope: !1252)
!1380 = !DISubprogram(name: "bindtextdomain", scope: !1084, file: !1084, line: 86, type: !1381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!167, !173, !173}
!1383 = !DISubprogram(name: "textdomain", scope: !1084, file: !1084, line: 82, type: !1228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1384 = !DISubprogram(name: "atexit", scope: !1226, file: !1226, line: 602, type: !1385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!118, !662}
!1387 = !DISubprogram(name: "getopt_long", scope: !484, file: !484, line: 66, type: !1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!118, !118, !1390, !173, !1392, !489}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!1393 = !DISubprogram(name: "strlen", scope: !1222, file: !1222, line: 407, type: !1394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!172, !173}
!1396 = distinct !DISubprogram(name: "cut_fields", scope: !2, file: !2, line: 292, type: !1266, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1397)
!1397 = !{!1398, !1399, !1400, !1401, !1402, !1403, !1409, !1410, !1417, !1418, !1419, !1424, !1425, !1426, !1429, !1430, !1437, !1438, !1439}
!1398 = !DILocalVariable(name: "stream", arg: 1, scope: !1396, file: !2, line: 292, type: !265)
!1399 = !DILocalVariable(name: "c", scope: !1396, file: !2, line: 294, type: !118)
!1400 = !DILocalVariable(name: "field_idx", scope: !1396, file: !2, line: 295, type: !460)
!1401 = !DILocalVariable(name: "found_any_selected_field", scope: !1396, file: !2, line: 296, type: !224)
!1402 = !DILocalVariable(name: "buffer_first_field", scope: !1396, file: !2, line: 297, type: !224)
!1403 = !DILocalVariable(name: "len", scope: !1404, file: !2, line: 320, type: !1407)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 319, column: 9)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 318, column: 11)
!1406 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 317, column: 5)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1097, line: 77, baseType: !1408)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !292, line: 194, baseType: !293)
!1409 = !DILocalVariable(name: "n_bytes", scope: !1404, file: !2, line: 321, type: !170)
!1410 = !DILocalVariable(name: "__ptr", scope: !1411, file: !2, line: 350, type: !173)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !2, line: 350, column: 23)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !2, line: 350, column: 23)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !2, line: 349, column: 17)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 344, column: 19)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 343, column: 13)
!1416 = distinct !DILexicalBlock(scope: !1404, file: !2, line: 342, column: 15)
!1417 = !DILocalVariable(name: "__stream", scope: !1411, file: !2, line: 350, type: !265)
!1418 = !DILocalVariable(name: "__cnt", scope: !1411, file: !2, line: 350, type: !170)
!1419 = !DILocalVariable(name: "__ptr", scope: !1420, file: !2, line: 367, type: !173)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !2, line: 367, column: 19)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !2, line: 367, column: 19)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !2, line: 365, column: 13)
!1423 = distinct !DILexicalBlock(scope: !1404, file: !2, line: 364, column: 15)
!1424 = !DILocalVariable(name: "__stream", scope: !1420, file: !2, line: 367, type: !265)
!1425 = !DILocalVariable(name: "__cnt", scope: !1420, file: !2, line: 367, type: !170)
!1426 = !DILocalVariable(name: "last_c", scope: !1427, file: !2, line: 374, type: !118)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !2, line: 373, column: 17)
!1428 = distinct !DILexicalBlock(scope: !1422, file: !2, line: 372, column: 19)
!1429 = !DILocalVariable(name: "prev_c", scope: !1406, file: !2, line: 389, type: !118)
!1430 = !DILocalVariable(name: "__ptr", scope: !1431, file: !2, line: 395, type: !173)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 395, column: 19)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 395, column: 19)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !2, line: 394, column: 13)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !2, line: 393, column: 15)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !2, line: 392, column: 9)
!1436 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 391, column: 11)
!1437 = !DILocalVariable(name: "__stream", scope: !1431, file: !2, line: 395, type: !265)
!1438 = !DILocalVariable(name: "__cnt", scope: !1431, file: !2, line: 395, type: !170)
!1439 = !DILocalVariable(name: "last_c", scope: !1440, file: !2, line: 418, type: !118)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !2, line: 417, column: 9)
!1441 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 416, column: 11)
!1442 = !DILocation(line: 0, scope: !1396)
!1443 = !DILocation(line: 299, column: 16, scope: !1396)
!1444 = !DILocation(line: 299, column: 14, scope: !1396)
!1445 = !DILocalVariable(name: "__fp", arg: 1, scope: !1446, file: !1447, line: 66, type: !265)
!1446 = distinct !DISubprogram(name: "getc_unlocked", scope: !1447, file: !1447, line: 66, type: !1448, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1450)
!1447 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!118, !265}
!1450 = !{!1445}
!1451 = !DILocation(line: 0, scope: !1446, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 301, column: 7, scope: !1396)
!1453 = !DILocation(line: 68, column: 10, scope: !1446, inlinedAt: !1452)
!1454 = !{!1455, !1025, i64 8}
!1455 = !{!"_IO_FILE", !1103, i64 0, !1025, i64 8, !1025, i64 16, !1025, i64 24, !1025, i64 32, !1025, i64 40, !1025, i64 48, !1025, i64 56, !1025, i64 64, !1025, i64 72, !1025, i64 80, !1025, i64 88, !1025, i64 96, !1025, i64 104, !1103, i64 112, !1103, i64 116, !1304, i64 120, !1144, i64 128, !1026, i64 130, !1026, i64 131, !1025, i64 136, !1304, i64 144, !1025, i64 152, !1025, i64 160, !1025, i64 168, !1025, i64 176, !1304, i64 184, !1103, i64 192, !1026, i64 196}
!1456 = !{!1455, !1025, i64 16}
!1457 = !{!"branch_weights", i32 2000, i32 1}
!1458 = !DILocation(line: 302, column: 7, scope: !1396)
!1459 = !DILocation(line: 302, column: 9, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 302, column: 7)
!1461 = !DILocation(line: 305, column: 3, scope: !1396)
!1462 = !DILocation(line: 314, column: 25, scope: !1396)
!1463 = !DILocalVariable(name: "k", arg: 1, scope: !1464, file: !2, line: 216, type: !460)
!1464 = distinct !DISubprogram(name: "print_kth", scope: !2, file: !2, line: 216, type: !1465, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1467)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!224, !460}
!1467 = !{!1463}
!1468 = !DILocation(line: 0, scope: !1464, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 314, column: 51, scope: !1396)
!1470 = !DILocation(line: 218, column: 10, scope: !1464, inlinedAt: !1469)
!1471 = !DILocation(line: 218, column: 22, scope: !1464, inlinedAt: !1469)
!1472 = !{!1473, !1304, i64 0}
!1473 = !{!"field_range_pair", !1304, i64 0, !1304, i64 8}
!1474 = !DILocation(line: 218, column: 25, scope: !1464, inlinedAt: !1469)
!1475 = !DILocation(line: 314, column: 48, scope: !1396)
!1476 = !DILocation(line: 316, column: 3, scope: !1396)
!1477 = !DILocation(line: 318, column: 21, scope: !1405)
!1478 = !DILocation(line: 318, column: 26, scope: !1405)
!1479 = !DILocation(line: 218, column: 10, scope: !1464, inlinedAt: !1480)
!1480 = distinct !DILocation(line: 391, column: 11, scope: !1436)
!1481 = !DILocation(line: 324, column: 48, scope: !1404)
!1482 = !DILocation(line: 324, column: 55, scope: !1404)
!1483 = !DILocation(line: 323, column: 17, scope: !1404)
!1484 = !DILocation(line: 0, scope: !1404)
!1485 = !DILocation(line: 325, column: 19, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1404, file: !2, line: 325, column: 15)
!1487 = !DILocation(line: 325, column: 15, scope: !1404)
!1488 = !DILocation(line: 327, column: 21, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 326, column: 13)
!1490 = !DILocation(line: 327, column: 15, scope: !1489)
!1491 = !DILocation(line: 328, column: 30, scope: !1489)
!1492 = !DILocalVariable(name: "__stream", arg: 1, scope: !1493, file: !1447, line: 135, type: !265)
!1493 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1447, file: !1447, line: 135, type: !1448, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1494)
!1494 = !{!1492}
!1495 = !DILocation(line: 0, scope: !1493, inlinedAt: !1496)
!1496 = distinct !DILocation(line: 329, column: 19, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 329, column: 19)
!1498 = !DILocation(line: 137, column: 10, scope: !1493, inlinedAt: !1496)
!1499 = !{!1455, !1103, i64 0}
!1500 = !DILocation(line: 329, column: 35, scope: !1497)
!1501 = !DILocation(line: 331, column: 15, scope: !1489)
!1502 = !DILocation(line: 335, column: 11, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !2, line: 335, column: 11)
!1504 = distinct !DILexicalBlock(scope: !1404, file: !2, line: 335, column: 11)
!1505 = !DILocation(line: 335, column: 11, scope: !1504)
!1506 = !DILocation(line: 342, column: 25, scope: !1416)
!1507 = !DILocation(line: 342, column: 48, scope: !1416)
!1508 = !DILocation(line: 342, column: 57, scope: !1416)
!1509 = !DILocation(line: 342, column: 54, scope: !1416)
!1510 = !DILocation(line: 342, column: 15, scope: !1404)
!1511 = !DILocation(line: 344, column: 19, scope: !1414)
!1512 = !DILocation(line: 344, column: 19, scope: !1415)
!1513 = !DILocation(line: 350, column: 23, scope: !1412)
!1514 = !DILocation(line: 351, column: 23, scope: !1412)
!1515 = !DILocation(line: 350, column: 23, scope: !1413)
!1516 = !DILocation(line: 948, column: 21, scope: !1517, inlinedAt: !1520)
!1517 = distinct !DISubprogram(name: "write_error", scope: !117, file: !117, line: 946, type: !663, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1518)
!1518 = !{!1519}
!1519 = !DILocalVariable(name: "saved_errno", scope: !1517, file: !117, line: 948, type: !118)
!1520 = distinct !DILocation(line: 352, column: 21, scope: !1412)
!1521 = !DILocation(line: 0, scope: !1517, inlinedAt: !1520)
!1522 = !DILocation(line: 949, column: 3, scope: !1517, inlinedAt: !1520)
!1523 = !DILocation(line: 950, column: 11, scope: !1517, inlinedAt: !1520)
!1524 = !DILocation(line: 950, column: 3, scope: !1517, inlinedAt: !1520)
!1525 = !DILocation(line: 951, column: 3, scope: !1517, inlinedAt: !1520)
!1526 = !DILocation(line: 952, column: 3, scope: !1517, inlinedAt: !1520)
!1527 = !DILocation(line: 354, column: 23, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1413, file: !2, line: 354, column: 23)
!1529 = !DILocation(line: 354, column: 54, scope: !1528)
!1530 = !DILocation(line: 354, column: 51, scope: !1528)
!1531 = !DILocation(line: 354, column: 23, scope: !1413)
!1532 = distinct !{!1532, !1476, !1533}
!1533 = !DILocation(line: 448, column: 5, scope: !1396)
!1534 = !DILocalVariable(name: "__c", arg: 1, scope: !1535, file: !1447, line: 108, type: !118)
!1535 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1447, file: !1447, line: 108, type: !1536, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1538)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!118, !118}
!1538 = !{!1534}
!1539 = !DILocation(line: 0, scope: !1535, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 356, column: 27, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !2, line: 356, column: 27)
!1542 = distinct !DILexicalBlock(scope: !1528, file: !2, line: 355, column: 21)
!1543 = !DILocation(line: 110, column: 10, scope: !1535, inlinedAt: !1540)
!1544 = !{!1455, !1025, i64 40}
!1545 = !{!1455, !1025, i64 48}
!1546 = !DILocation(line: 356, column: 27, scope: !1542)
!1547 = !DILocation(line: 356, column: 48, scope: !1541)
!1548 = !DILocation(line: 359, column: 23, scope: !1413)
!1549 = !DILocation(line: 948, column: 21, scope: !1517, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 357, column: 25, scope: !1541)
!1551 = !DILocation(line: 0, scope: !1517, inlinedAt: !1550)
!1552 = !DILocation(line: 949, column: 3, scope: !1517, inlinedAt: !1550)
!1553 = !DILocation(line: 950, column: 11, scope: !1517, inlinedAt: !1550)
!1554 = !DILocation(line: 950, column: 3, scope: !1517, inlinedAt: !1550)
!1555 = !DILocation(line: 951, column: 3, scope: !1517, inlinedAt: !1550)
!1556 = !DILocation(line: 952, column: 3, scope: !1517, inlinedAt: !1550)
!1557 = !DILocation(line: 0, scope: !1464, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 364, column: 15, scope: !1423)
!1559 = !DILocation(line: 218, column: 10, scope: !1464, inlinedAt: !1558)
!1560 = !DILocation(line: 218, column: 22, scope: !1464, inlinedAt: !1558)
!1561 = !DILocation(line: 218, column: 25, scope: !1464, inlinedAt: !1558)
!1562 = !DILocation(line: 364, column: 15, scope: !1404)
!1563 = !DILocation(line: 367, column: 19, scope: !1421)
!1564 = !DILocation(line: 368, column: 19, scope: !1421)
!1565 = !DILocation(line: 367, column: 19, scope: !1422)
!1566 = !DILocation(line: 948, column: 21, scope: !1517, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 369, column: 17, scope: !1421)
!1568 = !DILocation(line: 0, scope: !1517, inlinedAt: !1567)
!1569 = !DILocation(line: 949, column: 3, scope: !1517, inlinedAt: !1567)
!1570 = !DILocation(line: 950, column: 11, scope: !1517, inlinedAt: !1567)
!1571 = !DILocation(line: 950, column: 3, scope: !1517, inlinedAt: !1567)
!1572 = !DILocation(line: 951, column: 3, scope: !1517, inlinedAt: !1567)
!1573 = !DILocation(line: 952, column: 3, scope: !1517, inlinedAt: !1567)
!1574 = !DILocation(line: 372, column: 19, scope: !1428)
!1575 = !DILocation(line: 372, column: 28, scope: !1428)
!1576 = !DILocation(line: 372, column: 25, scope: !1428)
!1577 = !DILocation(line: 372, column: 19, scope: !1422)
!1578 = !DILocation(line: 0, scope: !1446, inlinedAt: !1579)
!1579 = distinct !DILocation(line: 374, column: 32, scope: !1427)
!1580 = !DILocation(line: 68, column: 10, scope: !1446, inlinedAt: !1579)
!1581 = !DILocation(line: 0, scope: !1427)
!1582 = !DILocation(line: 375, column: 23, scope: !1427)
!1583 = !DILocation(line: 375, column: 30, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1427, file: !2, line: 375, column: 23)
!1585 = !DILocation(line: 377, column: 23, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1584, file: !2, line: 376, column: 21)
!1587 = !DILocation(line: 379, column: 21, scope: !1586)
!1588 = !DILocalVariable(name: "item_idx", arg: 1, scope: !1589, file: !2, line: 206, type: !1592)
!1589 = distinct !DISubprogram(name: "next_item", scope: !2, file: !2, line: 206, type: !1590, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1593)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !1592}
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!1593 = !{!1588}
!1594 = !DILocation(line: 0, scope: !1589, inlinedAt: !1595)
!1595 = distinct !DILocation(line: 386, column: 11, scope: !1404)
!1596 = !DILocation(line: 209, column: 21, scope: !1597, inlinedAt: !1595)
!1597 = distinct !DILexicalBlock(scope: !1589, file: !2, line: 209, column: 7)
!1598 = !DILocation(line: 209, column: 33, scope: !1597, inlinedAt: !1595)
!1599 = !{!1473, !1304, i64 8}
!1600 = !DILocation(line: 209, column: 19, scope: !1597, inlinedAt: !1595)
!1601 = !DILocation(line: 209, column: 7, scope: !1589, inlinedAt: !1595)
!1602 = !DILocation(line: 210, column: 15, scope: !1597, inlinedAt: !1595)
!1603 = !DILocation(line: 210, column: 5, scope: !1597, inlinedAt: !1595)
!1604 = !DILocation(line: 295, column: 13, scope: !1396)
!1605 = !DILocation(line: 296, column: 8, scope: !1396)
!1606 = !DILocation(line: 306, column: 5, scope: !1396)
!1607 = !DILocation(line: 0, scope: !1406)
!1608 = !DILocation(line: 0, scope: !1464, inlinedAt: !1480)
!1609 = !DILocation(line: 218, column: 22, scope: !1464, inlinedAt: !1480)
!1610 = !DILocation(line: 218, column: 25, scope: !1464, inlinedAt: !1480)
!1611 = !DILocation(line: 391, column: 11, scope: !1406)
!1612 = !DILocation(line: 393, column: 15, scope: !1434)
!1613 = !DILocation(line: 393, column: 15, scope: !1435)
!1614 = !DILocation(line: 402, column: 11, scope: !1435)
!1615 = !DILocation(line: 395, column: 19, scope: !1432)
!1616 = !DILocation(line: 397, column: 22, scope: !1432)
!1617 = !DILocation(line: 397, column: 19, scope: !1432)
!1618 = !DILocation(line: 395, column: 19, scope: !1433)
!1619 = !DILocation(line: 948, column: 21, scope: !1517, inlinedAt: !1620)
!1620 = distinct !DILocation(line: 398, column: 17, scope: !1432)
!1621 = !DILocation(line: 0, scope: !1517, inlinedAt: !1620)
!1622 = !DILocation(line: 949, column: 3, scope: !1517, inlinedAt: !1620)
!1623 = !DILocation(line: 950, column: 11, scope: !1517, inlinedAt: !1620)
!1624 = !DILocation(line: 950, column: 3, scope: !1517, inlinedAt: !1620)
!1625 = !DILocation(line: 951, column: 3, scope: !1517, inlinedAt: !1620)
!1626 = !DILocation(line: 952, column: 3, scope: !1517, inlinedAt: !1620)
!1627 = !DILocation(line: 0, scope: !1446, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 402, column: 23, scope: !1435)
!1629 = !DILocation(line: 68, column: 10, scope: !1446, inlinedAt: !1628)
!1630 = !DILocation(line: 402, column: 41, scope: !1435)
!1631 = !DILocation(line: 402, column: 38, scope: !1435)
!1632 = !DILocation(line: 402, column: 47, scope: !1435)
!1633 = !DILocation(line: 402, column: 55, scope: !1435)
!1634 = !DILocation(line: 402, column: 52, scope: !1435)
!1635 = !DILocation(line: 402, column: 66, scope: !1435)
!1636 = !DILocation(line: 0, scope: !1535, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 404, column: 19, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !2, line: 404, column: 19)
!1639 = distinct !DILexicalBlock(scope: !1435, file: !2, line: 403, column: 13)
!1640 = !DILocation(line: 110, column: 10, scope: !1535, inlinedAt: !1637)
!1641 = !DILocation(line: 404, column: 19, scope: !1639)
!1642 = distinct !{!1642, !1614, !1643, !1149}
!1643 = !DILocation(line: 407, column: 13, scope: !1435)
!1644 = !DILocation(line: 404, column: 31, scope: !1638)
!1645 = !DILocation(line: 948, column: 21, scope: !1517, inlinedAt: !1646)
!1646 = distinct !DILocation(line: 405, column: 17, scope: !1638)
!1647 = !DILocation(line: 0, scope: !1517, inlinedAt: !1646)
!1648 = !DILocation(line: 949, column: 3, scope: !1517, inlinedAt: !1646)
!1649 = !DILocation(line: 950, column: 11, scope: !1517, inlinedAt: !1646)
!1650 = !DILocation(line: 950, column: 3, scope: !1517, inlinedAt: !1646)
!1651 = !DILocation(line: 951, column: 3, scope: !1517, inlinedAt: !1646)
!1652 = !DILocation(line: 952, column: 3, scope: !1517, inlinedAt: !1646)
!1653 = !DILocation(line: 0, scope: !1446, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 411, column: 23, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1436, file: !2, line: 410, column: 9)
!1656 = !DILocation(line: 68, column: 10, scope: !1446, inlinedAt: !1654)
!1657 = !DILocation(line: 411, column: 41, scope: !1655)
!1658 = !DILocation(line: 411, column: 38, scope: !1655)
!1659 = !DILocation(line: 411, column: 47, scope: !1655)
!1660 = !DILocation(line: 411, column: 55, scope: !1655)
!1661 = !DILocation(line: 411, column: 52, scope: !1655)
!1662 = !DILocation(line: 411, column: 66, scope: !1655)
!1663 = distinct !{!1663, !1664, !1665, !1149}
!1664 = !DILocation(line: 411, column: 11, scope: !1655)
!1665 = !DILocation(line: 412, column: 22, scope: !1655)
!1666 = !DILocation(line: 416, column: 11, scope: !1441)
!1667 = !DILocation(line: 389, column: 11, scope: !1406)
!1668 = !DILocation(line: 0, scope: !1436)
!1669 = !DILocation(line: 416, column: 20, scope: !1441)
!1670 = !DILocation(line: 416, column: 17, scope: !1441)
!1671 = !DILocation(line: 416, column: 31, scope: !1441)
!1672 = !DILocation(line: 0, scope: !1446, inlinedAt: !1673)
!1673 = distinct !DILocation(line: 418, column: 24, scope: !1440)
!1674 = !DILocation(line: 68, column: 10, scope: !1446, inlinedAt: !1673)
!1675 = !DILocation(line: 0, scope: !1440)
!1676 = !DILocation(line: 419, column: 15, scope: !1440)
!1677 = !DILocation(line: 419, column: 22, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1440, file: !2, line: 419, column: 15)
!1679 = !DILocation(line: 425, column: 16, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 425, column: 11)
!1681 = !DILocation(line: 427, column: 21, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1680, file: !2, line: 427, column: 16)
!1683 = !DILocation(line: 427, column: 32, scope: !1682)
!1684 = !DILocation(line: 420, column: 13, scope: !1678)
!1685 = !DILocation(line: 425, column: 13, scope: !1680)
!1686 = !DILocation(line: 425, column: 11, scope: !1406)
!1687 = !DILocation(line: 0, scope: !1589, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 426, column: 9, scope: !1680)
!1689 = !DILocation(line: 208, column: 14, scope: !1589, inlinedAt: !1688)
!1690 = !DILocation(line: 209, column: 21, scope: !1597, inlinedAt: !1688)
!1691 = !DILocation(line: 209, column: 33, scope: !1597, inlinedAt: !1688)
!1692 = !DILocation(line: 209, column: 19, scope: !1597, inlinedAt: !1688)
!1693 = !DILocation(line: 209, column: 7, scope: !1589, inlinedAt: !1688)
!1694 = !DILocation(line: 210, column: 15, scope: !1597, inlinedAt: !1688)
!1695 = !DILocation(line: 210, column: 5, scope: !1597, inlinedAt: !1688)
!1696 = !DILocation(line: 427, column: 18, scope: !1682)
!1697 = !DILocation(line: 429, column: 15, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !2, line: 429, column: 15)
!1699 = distinct !DILexicalBlock(scope: !1682, file: !2, line: 428, column: 9)
!1700 = !DILocation(line: 430, column: 15, scope: !1698)
!1701 = !DILocation(line: 430, column: 20, scope: !1698)
!1702 = !DILocation(line: 430, column: 43, scope: !1698)
!1703 = !DILocation(line: 433, column: 21, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !2, line: 433, column: 19)
!1705 = distinct !DILexicalBlock(scope: !1698, file: !2, line: 431, column: 13)
!1706 = !DILocation(line: 433, column: 35, scope: !1704)
!1707 = !DILocation(line: 0, scope: !1535, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 436, column: 23, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !2, line: 436, column: 23)
!1710 = distinct !DILexicalBlock(scope: !1704, file: !2, line: 435, column: 17)
!1711 = !DILocation(line: 110, column: 10, scope: !1535, inlinedAt: !1708)
!1712 = !DILocation(line: 440, column: 15, scope: !1699)
!1713 = !DILocation(line: 436, column: 44, scope: !1709)
!1714 = !DILocation(line: 436, column: 23, scope: !1710)
!1715 = !DILocation(line: 948, column: 21, scope: !1517, inlinedAt: !1716)
!1716 = distinct !DILocation(line: 437, column: 21, scope: !1709)
!1717 = !DILocation(line: 0, scope: !1517, inlinedAt: !1716)
!1718 = !DILocation(line: 949, column: 3, scope: !1517, inlinedAt: !1716)
!1719 = !DILocation(line: 950, column: 11, scope: !1517, inlinedAt: !1716)
!1720 = !DILocation(line: 950, column: 3, scope: !1517, inlinedAt: !1716)
!1721 = !DILocation(line: 951, column: 3, scope: !1517, inlinedAt: !1716)
!1722 = !DILocation(line: 952, column: 3, scope: !1517, inlinedAt: !1716)
!1723 = !DILocation(line: 445, column: 24, scope: !1699)
!1724 = !DILocation(line: 445, column: 22, scope: !1699)
!1725 = !DILocation(line: 447, column: 9, scope: !1699)
!1726 = !DILocation(line: 449, column: 1, scope: !1396)
!1727 = distinct !DISubprogram(name: "cut_bytes", scope: !2, file: !2, line: 232, type: !1266, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1728)
!1728 = !{!1729, !1730, !1731, !1732, !1734, !1746, !1747}
!1729 = !DILocalVariable(name: "stream", arg: 1, scope: !1727, file: !2, line: 232, type: !265)
!1730 = !DILocalVariable(name: "byte_idx", scope: !1727, file: !2, line: 234, type: !460)
!1731 = !DILocalVariable(name: "print_delimiter", scope: !1727, file: !2, line: 237, type: !224)
!1732 = !DILocalVariable(name: "c", scope: !1733, file: !2, line: 244, type: !118)
!1733 = distinct !DILexicalBlock(scope: !1727, file: !2, line: 243, column: 5)
!1734 = !DILocalVariable(name: "__ptr", scope: !1735, file: !2, line: 274, type: !173)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !2, line: 274, column: 27)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !2, line: 274, column: 27)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !2, line: 273, column: 21)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !2, line: 272, column: 23)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !2, line: 271, column: 17)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 270, column: 19)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !2, line: 269, column: 13)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !2, line: 268, column: 15)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !2, line: 266, column: 9)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !2, line: 256, column: 16)
!1745 = distinct !DILexicalBlock(scope: !1733, file: !2, line: 248, column: 11)
!1746 = !DILocalVariable(name: "__stream", scope: !1735, file: !2, line: 274, type: !265)
!1747 = !DILocalVariable(name: "__cnt", scope: !1735, file: !2, line: 274, type: !170)
!1748 = !DILocation(line: 0, scope: !1727)
!1749 = !DILocation(line: 241, column: 16, scope: !1727)
!1750 = !DILocation(line: 241, column: 14, scope: !1727)
!1751 = !DILocation(line: 242, column: 3, scope: !1727)
!1752 = !DILocation(line: 68, column: 10, scope: !1446, inlinedAt: !1753)
!1753 = distinct !DILocation(line: 246, column: 11, scope: !1733)
!1754 = !DILocation(line: 0, scope: !1446, inlinedAt: !1753)
!1755 = !DILocation(line: 0, scope: !1733)
!1756 = !DILocation(line: 248, column: 16, scope: !1745)
!1757 = !DILocation(line: 248, column: 13, scope: !1745)
!1758 = !DILocation(line: 248, column: 11, scope: !1733)
!1759 = !DILocation(line: 0, scope: !1535, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 250, column: 15, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !2, line: 250, column: 15)
!1762 = distinct !DILexicalBlock(scope: !1745, file: !2, line: 249, column: 9)
!1763 = !DILocation(line: 110, column: 10, scope: !1535, inlinedAt: !1760)
!1764 = !DILocation(line: 250, column: 15, scope: !1762)
!1765 = !DILocation(line: 250, column: 27, scope: !1761)
!1766 = !DILocation(line: 948, column: 21, scope: !1517, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 251, column: 13, scope: !1761)
!1768 = !DILocation(line: 0, scope: !1517, inlinedAt: !1767)
!1769 = !DILocation(line: 949, column: 3, scope: !1517, inlinedAt: !1767)
!1770 = !DILocation(line: 950, column: 11, scope: !1517, inlinedAt: !1767)
!1771 = !DILocation(line: 950, column: 3, scope: !1517, inlinedAt: !1767)
!1772 = !DILocation(line: 951, column: 3, scope: !1517, inlinedAt: !1767)
!1773 = !DILocation(line: 952, column: 3, scope: !1517, inlinedAt: !1767)
!1774 = !DILocation(line: 254, column: 24, scope: !1762)
!1775 = !DILocation(line: 254, column: 22, scope: !1762)
!1776 = !DILocation(line: 255, column: 9, scope: !1762)
!1777 = !DILocation(line: 256, column: 18, scope: !1744)
!1778 = !DILocation(line: 256, column: 16, scope: !1745)
!1779 = !DILocation(line: 258, column: 24, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !2, line: 258, column: 15)
!1781 = distinct !DILexicalBlock(scope: !1744, file: !2, line: 257, column: 9)
!1782 = !DILocation(line: 258, column: 15, scope: !1781)
!1783 = !DILocation(line: 0, scope: !1535, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 260, column: 17, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 260, column: 17)
!1786 = distinct !DILexicalBlock(scope: !1780, file: !2, line: 259, column: 11)
!1787 = !DILocation(line: 110, column: 10, scope: !1535, inlinedAt: !1784)
!1788 = !DILocation(line: 260, column: 17, scope: !1786)
!1789 = !DILocation(line: 260, column: 38, scope: !1785)
!1790 = !DILocation(line: 948, column: 21, scope: !1517, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 261, column: 15, scope: !1785)
!1792 = !DILocation(line: 0, scope: !1517, inlinedAt: !1791)
!1793 = !DILocation(line: 949, column: 3, scope: !1517, inlinedAt: !1791)
!1794 = !DILocation(line: 950, column: 11, scope: !1517, inlinedAt: !1791)
!1795 = !DILocation(line: 950, column: 3, scope: !1517, inlinedAt: !1791)
!1796 = !DILocation(line: 951, column: 3, scope: !1517, inlinedAt: !1791)
!1797 = !DILocation(line: 952, column: 3, scope: !1517, inlinedAt: !1791)
!1798 = !DILocation(line: 0, scope: !1589, inlinedAt: !1799)
!1799 = distinct !DILocation(line: 267, column: 11, scope: !1743)
!1800 = !DILocation(line: 208, column: 14, scope: !1589, inlinedAt: !1799)
!1801 = !DILocation(line: 209, column: 21, scope: !1597, inlinedAt: !1799)
!1802 = !DILocation(line: 209, column: 33, scope: !1597, inlinedAt: !1799)
!1803 = !DILocation(line: 209, column: 19, scope: !1597, inlinedAt: !1799)
!1804 = !DILocation(line: 209, column: 7, scope: !1589, inlinedAt: !1799)
!1805 = !DILocation(line: 210, column: 15, scope: !1597, inlinedAt: !1799)
!1806 = !DILocation(line: 210, column: 5, scope: !1597, inlinedAt: !1799)
!1807 = !DILocation(line: 218, column: 10, scope: !1464, inlinedAt: !1808)
!1808 = distinct !DILocation(line: 268, column: 15, scope: !1742)
!1809 = !DILocation(line: 0, scope: !1464, inlinedAt: !1808)
!1810 = !DILocation(line: 218, column: 22, scope: !1464, inlinedAt: !1808)
!1811 = !DILocation(line: 218, column: 25, scope: !1464, inlinedAt: !1808)
!1812 = !DILocation(line: 268, column: 15, scope: !1743)
!1813 = !DILocation(line: 270, column: 19, scope: !1740)
!1814 = !DILocation(line: 270, column: 43, scope: !1740)
!1815 = !DILocation(line: 270, column: 19, scope: !1741)
!1816 = !DILocation(line: 272, column: 23, scope: !1738)
!1817 = !DILocation(line: 272, column: 39, scope: !1738)
!1818 = !DILocation(line: 274, column: 27, scope: !1736)
!1819 = !DILocation(line: 276, column: 30, scope: !1736)
!1820 = !DILocation(line: 276, column: 27, scope: !1736)
!1821 = !DILocation(line: 274, column: 27, scope: !1737)
!1822 = !DILocation(line: 948, column: 21, scope: !1517, inlinedAt: !1823)
!1823 = distinct !DILocation(line: 277, column: 25, scope: !1736)
!1824 = !DILocation(line: 0, scope: !1517, inlinedAt: !1823)
!1825 = !DILocation(line: 949, column: 3, scope: !1517, inlinedAt: !1823)
!1826 = !DILocation(line: 950, column: 11, scope: !1517, inlinedAt: !1823)
!1827 = !DILocation(line: 950, column: 3, scope: !1517, inlinedAt: !1823)
!1828 = !DILocation(line: 951, column: 3, scope: !1517, inlinedAt: !1823)
!1829 = !DILocation(line: 952, column: 3, scope: !1517, inlinedAt: !1823)
!1830 = !DILocation(line: 0, scope: !1535, inlinedAt: !1831)
!1831 = distinct !DILocation(line: 282, column: 19, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 282, column: 19)
!1833 = !DILocation(line: 110, column: 10, scope: !1535, inlinedAt: !1831)
!1834 = !DILocation(line: 282, column: 19, scope: !1741)
!1835 = !DILocation(line: 282, column: 31, scope: !1832)
!1836 = !DILocation(line: 948, column: 21, scope: !1517, inlinedAt: !1837)
!1837 = distinct !DILocation(line: 283, column: 17, scope: !1832)
!1838 = !DILocation(line: 0, scope: !1517, inlinedAt: !1837)
!1839 = !DILocation(line: 949, column: 3, scope: !1517, inlinedAt: !1837)
!1840 = !DILocation(line: 950, column: 11, scope: !1517, inlinedAt: !1837)
!1841 = !DILocation(line: 950, column: 3, scope: !1517, inlinedAt: !1837)
!1842 = !DILocation(line: 951, column: 3, scope: !1517, inlinedAt: !1837)
!1843 = !DILocation(line: 952, column: 3, scope: !1517, inlinedAt: !1837)
!1844 = !DILocation(line: 287, column: 1, scope: !1727)
!1845 = distinct !DISubprogram(name: "cut_file", scope: !2, file: !2, line: 455, type: !1846, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1848)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!224, !173, !1265}
!1848 = !{!1849, !1850, !1851, !1852}
!1849 = !DILocalVariable(name: "file", arg: 1, scope: !1845, file: !2, line: 455, type: !173)
!1850 = !DILocalVariable(name: "cut_stream", arg: 2, scope: !1845, file: !2, line: 455, type: !1265)
!1851 = !DILocalVariable(name: "stream", scope: !1845, file: !2, line: 457, type: !265)
!1852 = !DILocalVariable(name: "err", scope: !1845, file: !2, line: 479, type: !118)
!1853 = !DILocation(line: 0, scope: !1845)
!1854 = !DILocation(line: 0, scope: !1114, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 459, column: 7, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1845, file: !2, line: 459, column: 7)
!1857 = !DILocation(line: 1361, column: 11, scope: !1114, inlinedAt: !1855)
!1858 = !DILocation(line: 1361, column: 10, scope: !1114, inlinedAt: !1855)
!1859 = !DILocation(line: 459, column: 7, scope: !1845)
!1860 = !DILocation(line: 461, column: 23, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1856, file: !2, line: 460, column: 5)
!1862 = !DILocation(line: 462, column: 16, scope: !1861)
!1863 = !DILocation(line: 464, column: 5, scope: !1861)
!1864 = !DILocation(line: 467, column: 16, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1856, file: !2, line: 466, column: 5)
!1866 = !DILocation(line: 468, column: 18, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1865, file: !2, line: 468, column: 11)
!1868 = !DILocation(line: 468, column: 11, scope: !1865)
!1869 = !DILocation(line: 470, column: 11, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1867, file: !2, line: 469, column: 9)
!1871 = !DILocation(line: 471, column: 11, scope: !1870)
!1872 = !DILocation(line: 0, scope: !1856)
!1873 = !DILocation(line: 475, column: 3, scope: !1845)
!1874 = !DILocation(line: 477, column: 3, scope: !1845)
!1875 = !{ptr @cut_bytes, ptr @cut_fields}
!1876 = !DILocation(line: 479, column: 13, scope: !1845)
!1877 = !DILocation(line: 0, scope: !1493, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 480, column: 8, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1845, file: !2, line: 480, column: 7)
!1880 = !DILocation(line: 137, column: 10, scope: !1493, inlinedAt: !1878)
!1881 = !DILocation(line: 480, column: 8, scope: !1879)
!1882 = !DILocation(line: 480, column: 7, scope: !1845)
!1883 = !DILocation(line: 0, scope: !1114, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 482, column: 7, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1845, file: !2, line: 482, column: 7)
!1886 = !DILocation(line: 1361, column: 11, scope: !1114, inlinedAt: !1884)
!1887 = !DILocation(line: 1361, column: 10, scope: !1114, inlinedAt: !1884)
!1888 = !DILocation(line: 482, column: 7, scope: !1845)
!1889 = !DILocation(line: 483, column: 5, scope: !1885)
!1890 = !DILocation(line: 484, column: 12, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1885, file: !2, line: 484, column: 12)
!1892 = !DILocation(line: 484, column: 28, scope: !1891)
!1893 = !DILocation(line: 484, column: 12, scope: !1885)
!1894 = !DILocation(line: 485, column: 11, scope: !1891)
!1895 = !DILocation(line: 485, column: 5, scope: !1891)
!1896 = !DILocation(line: 486, column: 7, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1845, file: !2, line: 486, column: 7)
!1898 = !DILocation(line: 486, column: 7, scope: !1845)
!1899 = !DILocation(line: 492, column: 1, scope: !1845)
!1900 = !DISubprogram(name: "__errno_location", scope: !1901, file: !1901, line: 37, type: !1902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1901 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!489}
!1904 = !DISubprogram(name: "clearerr_unlocked", scope: !1097, file: !1097, line: 794, type: !1266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1905 = !DISubprogram(name: "__uflow", scope: !1097, file: !1097, line: 885, type: !1448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1906 = !DISubprogram(name: "__overflow", scope: !1097, file: !1097, line: 886, type: !1907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!118, !265, !118}
!1909 = !DISubprogram(name: "fflush_unlocked", scope: !1097, file: !1097, line: 239, type: !1448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1910 = !DISubprogram(name: "ungetc", scope: !1097, file: !1097, line: 668, type: !1911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!118, !118, !265}
!1913 = !DISubprogram(name: "free", scope: !1226, file: !1226, line: 555, type: !1914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{null, !168}
!1916 = !DISubprogram(name: "__assert_fail", scope: !1917, file: !1917, line: 69, type: !1918, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1917 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!1918 = !DISubroutineType(types: !1919)
!1919 = !{null, !173, !173, !112, !173}
!1920 = !DILocation(line: 0, scope: !521)
!1921 = !DILocation(line: 149, column: 16, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !521, file: !497, line: 149, column: 7)
!1923 = !DILocation(line: 149, column: 37, scope: !1922)
!1924 = !DILocalVariable(name: "__s1", arg: 1, scope: !1925, file: !1115, line: 1359, type: !173)
!1925 = distinct !DISubprogram(name: "streq", scope: !1115, file: !1115, line: 1359, type: !1116, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !1926)
!1926 = !{!1924, !1927}
!1927 = !DILocalVariable(name: "__s2", arg: 2, scope: !1925, file: !1115, line: 1359, type: !173)
!1928 = !DILocation(line: 0, scope: !1925, inlinedAt: !1929)
!1929 = distinct !DILocation(line: 149, column: 40, scope: !1922)
!1930 = !DILocation(line: 1361, column: 11, scope: !1925, inlinedAt: !1929)
!1931 = !DILocation(line: 1361, column: 10, scope: !1925, inlinedAt: !1929)
!1932 = !DILocation(line: 149, column: 7, scope: !521)
!1933 = !DILocation(line: 154, column: 15, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1922, file: !497, line: 150, column: 5)
!1935 = !DILocation(line: 155, column: 5, scope: !1934)
!1936 = !DILocation(line: 157, column: 3, scope: !521)
!1937 = !DILocation(line: 152, column: 21, scope: !1934)
!1938 = !DILocation(line: 141, column: 8, scope: !521)
!1939 = !DILocation(line: 159, column: 11, scope: !584)
!1940 = !DILocation(line: 159, column: 11, scope: !585)
!1941 = !DILocation(line: 163, column: 15, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !497, line: 163, column: 15)
!1943 = distinct !DILexicalBlock(scope: !584, file: !497, line: 160, column: 9)
!1944 = !DILocation(line: 163, column: 15, scope: !1943)
!1945 = !DILocation(line: 164, column: 13, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1942, file: !497, line: 164, column: 13)
!1947 = !DILocation(line: 171, column: 15, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1943, file: !497, line: 171, column: 15)
!1949 = !DILocation(line: 171, column: 29, scope: !1948)
!1950 = !DILocation(line: 172, column: 13, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1948, file: !497, line: 172, column: 13)
!1952 = !DILocation(line: 176, column: 22, scope: !1943)
!1953 = !DILocation(line: 178, column: 9, scope: !1943)
!1954 = !DILocation(line: 180, column: 19, scope: !583)
!1955 = !DILocation(line: 180, column: 50, scope: !583)
!1956 = !DILocation(line: 184, column: 15, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !497, line: 184, column: 15)
!1958 = distinct !DILexicalBlock(scope: !583, file: !497, line: 181, column: 9)
!1959 = !DILocation(line: 184, column: 15, scope: !1958)
!1960 = !DILocation(line: 188, column: 20, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !497, line: 188, column: 19)
!1962 = distinct !DILexicalBlock(scope: !1957, file: !497, line: 185, column: 13)
!1963 = !DILocation(line: 188, column: 34, scope: !1961)
!1964 = !DILocation(line: 194, column: 21, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !497, line: 194, column: 21)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !497, line: 191, column: 23)
!1967 = distinct !DILexicalBlock(scope: !1961, file: !497, line: 189, column: 17)
!1968 = !DILocation(line: 199, column: 19, scope: !1962)
!1969 = !DILocalVariable(name: "lo", arg: 1, scope: !1970, file: !497, line: 47, type: !460)
!1970 = distinct !DISubprogram(name: "add_range_pair", scope: !497, file: !497, line: 47, type: !1971, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !1973)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{null, !460, !460}
!1973 = !{!1969, !1974}
!1974 = !DILocalVariable(name: "hi", arg: 2, scope: !1970, file: !497, line: 47, type: !460)
!1975 = !DILocation(line: 0, scope: !1970, inlinedAt: !1976)
!1976 = distinct !DILocation(line: 202, column: 19, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !497, line: 200, column: 17)
!1978 = distinct !DILexicalBlock(scope: !1962, file: !497, line: 199, column: 19)
!1979 = !DILocation(line: 49, column: 7, scope: !1980, inlinedAt: !1976)
!1980 = distinct !DILexicalBlock(scope: !1970, file: !497, line: 49, column: 7)
!1981 = !DILocation(line: 49, column: 16, scope: !1980, inlinedAt: !1976)
!1982 = !DILocation(line: 49, column: 13, scope: !1980, inlinedAt: !1976)
!1983 = !DILocation(line: 51, column: 3, scope: !1970, inlinedAt: !1976)
!1984 = !DILocation(line: 49, column: 7, scope: !1970, inlinedAt: !1976)
!1985 = !DILocation(line: 50, column: 11, scope: !1980, inlinedAt: !1976)
!1986 = !DILocation(line: 50, column: 9, scope: !1980, inlinedAt: !1976)
!1987 = !DILocation(line: 51, column: 7, scope: !1970, inlinedAt: !1976)
!1988 = !DILocation(line: 50, column: 5, scope: !1980, inlinedAt: !1976)
!1989 = !DILocation(line: 51, column: 17, scope: !1970, inlinedAt: !1976)
!1990 = !DILocation(line: 203, column: 17, scope: !1977)
!1991 = !DILocation(line: 207, column: 29, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !497, line: 207, column: 23)
!1993 = distinct !DILexicalBlock(scope: !1978, file: !497, line: 205, column: 17)
!1994 = !DILocation(line: 207, column: 23, scope: !1993)
!1995 = !DILocation(line: 208, column: 21, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1992, file: !497, line: 208, column: 21)
!1997 = !DILocation(line: 0, scope: !1970, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 210, column: 19, scope: !1993)
!1999 = !DILocation(line: 49, column: 7, scope: !1980, inlinedAt: !1998)
!2000 = !DILocation(line: 49, column: 16, scope: !1980, inlinedAt: !1998)
!2001 = !DILocation(line: 49, column: 13, scope: !1980, inlinedAt: !1998)
!2002 = !DILocation(line: 51, column: 3, scope: !1970, inlinedAt: !1998)
!2003 = !DILocation(line: 49, column: 7, scope: !1970, inlinedAt: !1998)
!2004 = !DILocation(line: 50, column: 11, scope: !1980, inlinedAt: !1998)
!2005 = !DILocation(line: 50, column: 9, scope: !1980, inlinedAt: !1998)
!2006 = !DILocation(line: 51, column: 7, scope: !1970, inlinedAt: !1998)
!2007 = !DILocation(line: 50, column: 5, scope: !1980, inlinedAt: !1998)
!2008 = !DILocation(line: 51, column: 17, scope: !1970, inlinedAt: !1998)
!2009 = !DILocation(line: 217, column: 25, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !497, line: 217, column: 19)
!2011 = distinct !DILexicalBlock(scope: !1957, file: !497, line: 215, column: 13)
!2012 = !DILocation(line: 217, column: 19, scope: !2011)
!2013 = !DILocation(line: 218, column: 17, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2010, file: !497, line: 218, column: 17)
!2015 = !DILocation(line: 0, scope: !1970, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 222, column: 15, scope: !2011)
!2017 = !DILocation(line: 49, column: 7, scope: !1980, inlinedAt: !2016)
!2018 = !DILocation(line: 49, column: 16, scope: !1980, inlinedAt: !2016)
!2019 = !DILocation(line: 49, column: 13, scope: !1980, inlinedAt: !2016)
!2020 = !DILocation(line: 51, column: 3, scope: !1970, inlinedAt: !2016)
!2021 = !DILocation(line: 49, column: 7, scope: !1970, inlinedAt: !2016)
!2022 = !DILocation(line: 50, column: 11, scope: !1980, inlinedAt: !2016)
!2023 = !DILocation(line: 50, column: 9, scope: !1980, inlinedAt: !2016)
!2024 = !DILocation(line: 51, column: 7, scope: !1970, inlinedAt: !2016)
!2025 = !DILocation(line: 50, column: 5, scope: !1980, inlinedAt: !2016)
!2026 = !DILocation(line: 51, column: 17, scope: !1970, inlinedAt: !2016)
!2027 = !DILocation(line: 138, column: 13, scope: !521)
!2028 = !DILocation(line: 52, column: 7, scope: !1970, inlinedAt: !2029)
!2029 = !DILocation(line: 0, scope: !1957)
!2030 = !DILocation(line: 52, column: 14, scope: !1970, inlinedAt: !2029)
!2031 = !DILocation(line: 52, column: 17, scope: !1970, inlinedAt: !2029)
!2032 = !DILocation(line: 53, column: 3, scope: !1970, inlinedAt: !2029)
!2033 = !DILocation(line: 226, column: 15, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !1958, file: !497, line: 226, column: 15)
!2035 = !DILocation(line: 226, column: 25, scope: !2034)
!2036 = !DILocation(line: 226, column: 15, scope: !1958)
!2037 = !DILocation(line: 180, column: 53, scope: !583)
!2038 = !DILocalVariable(name: "c", arg: 1, scope: !2039, file: !2040, line: 233, type: !118)
!2039 = distinct !DISubprogram(name: "c_isdigit", scope: !2040, file: !2040, line: 233, type: !2041, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2043)
!2040 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!224, !118}
!2043 = !{!2038}
!2044 = !DILocation(line: 0, scope: !2039, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 233, column: 16, scope: !582)
!2046 = !DILocation(line: 235, column: 3, scope: !2039, inlinedAt: !2045)
!2047 = !DILocation(line: 233, column: 16, scope: !583)
!2048 = !DILocation(line: 238, column: 26, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !581, file: !497, line: 238, column: 15)
!2050 = !DILocation(line: 239, column: 23, scope: !2049)
!2051 = !DILocation(line: 239, column: 13, scope: !2049)
!2052 = !DILocation(line: 248, column: 16, scope: !580)
!2053 = !DILocation(line: 242, column: 15, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !581, file: !497, line: 242, column: 15)
!2055 = !DILocation(line: 249, column: 15, scope: !580)
!2056 = !DILocation(line: 254, column: 42, scope: !579)
!2057 = !DILocation(line: 253, column: 31, scope: !579)
!2058 = !DILocation(line: 0, scope: !579)
!2059 = !DILocation(line: 255, column: 15, scope: !579)
!2060 = !DILocation(line: 259, column: 15, scope: !579)
!2061 = !DILocation(line: 260, column: 15, scope: !579)
!2062 = !DILocation(line: 267, column: 11, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !582, file: !497, line: 266, column: 9)
!2064 = !DILocation(line: 271, column: 11, scope: !2063)
!2065 = !DILocation(line: 0, scope: !584)
!2066 = distinct !{!2066, !1936, !2067}
!2067 = !DILocation(line: 273, column: 5, scope: !521)
!2068 = !DILocation(line: 275, column: 8, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !521, file: !497, line: 275, column: 7)
!2070 = !DILocation(line: 275, column: 7, scope: !521)
!2071 = !DILocation(line: 276, column: 5, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2069, file: !497, line: 276, column: 5)
!2073 = !DILocation(line: 280, column: 3, scope: !521)
!2074 = !DILocation(line: 0, scope: !587)
!2075 = !DILocation(line: 283, column: 25, scope: !591)
!2076 = !DILocation(line: 283, column: 23, scope: !591)
!2077 = !DILocation(line: 283, column: 3, scope: !587)
!2078 = !DILocation(line: 299, column: 15, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !521, file: !497, line: 299, column: 7)
!2080 = !DILocation(line: 306, column: 19, scope: !521)
!2081 = !DILocation(line: 299, column: 7, scope: !521)
!2082 = !DILocation(line: 285, column: 24, scope: !589)
!2083 = !DILocation(line: 0, scope: !589)
!2084 = !DILocation(line: 285, column: 31, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !589, file: !497, line: 285, column: 7)
!2086 = !DILocation(line: 285, column: 7, scope: !589)
!2087 = !DILocation(line: 287, column: 15, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !497, line: 287, column: 15)
!2089 = distinct !DILexicalBlock(scope: !2085, file: !497, line: 286, column: 9)
!2090 = !DILocation(line: 287, column: 22, scope: !2088)
!2091 = !DILocation(line: 287, column: 35, scope: !2088)
!2092 = !DILocation(line: 287, column: 25, scope: !2088)
!2093 = !DILocation(line: 287, column: 15, scope: !2089)
!2094 = distinct !{!2094, !2086, !2095, !1149}
!2095 = !DILocation(line: 296, column: 9, scope: !589)
!2096 = !DILocation(line: 289, column: 27, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2088, file: !497, line: 288, column: 13)
!2098 = !DILocation(line: 289, column: 25, scope: !2097)
!2099 = !DILocation(line: 290, column: 41, scope: !2097)
!2100 = !DILocation(line: 290, column: 47, scope: !2097)
!2101 = !DILocation(line: 290, column: 57, scope: !2097)
!2102 = !DILocation(line: 290, column: 62, scope: !2097)
!2103 = !DILocalVariable(name: "__dest", arg: 1, scope: !2104, file: !2105, line: 34, type: !168)
!2104 = distinct !DISubprogram(name: "memmove", scope: !2105, file: !2105, line: 34, type: !2106, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2108)
!2105 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!168, !168, !1250, !170}
!2108 = !{!2103, !2109, !2110}
!2109 = !DILocalVariable(name: "__src", arg: 2, scope: !2104, file: !2105, line: 34, type: !1250)
!2110 = !DILocalVariable(name: "__len", arg: 3, scope: !2104, file: !2105, line: 34, type: !170)
!2111 = !DILocation(line: 0, scope: !2104, inlinedAt: !2112)
!2112 = distinct !DILocation(line: 290, column: 15, scope: !2097)
!2113 = !DILocation(line: 36, column: 10, scope: !2104, inlinedAt: !2112)
!2114 = !DILocation(line: 291, column: 20, scope: !2097)
!2115 = distinct !{!2115, !2077, !2116, !1149}
!2116 = !DILocation(line: 297, column: 5, scope: !587)
!2117 = !DILocalVariable(name: "c", scope: !2118, file: !497, line: 72, type: !556)
!2118 = distinct !DISubprogram(name: "complement_rp", scope: !497, file: !497, line: 70, type: !663, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2119)
!2119 = !{!2117, !2120, !2121}
!2120 = !DILocalVariable(name: "n", scope: !2118, file: !497, line: 73, type: !563)
!2121 = !DILocalVariable(name: "i", scope: !2122, file: !497, line: 82, type: !563)
!2122 = distinct !DILexicalBlock(scope: !2118, file: !497, line: 82, column: 3)
!2123 = !DILocation(line: 0, scope: !2118, inlinedAt: !2124)
!2124 = distinct !DILocation(line: 300, column: 5, scope: !2079)
!2125 = !DILocation(line: 75, column: 7, scope: !2118, inlinedAt: !2124)
!2126 = !DILocation(line: 76, column: 9, scope: !2118, inlinedAt: !2124)
!2127 = !DILocation(line: 77, column: 19, scope: !2118, inlinedAt: !2124)
!2128 = !DILocation(line: 79, column: 12, scope: !2129, inlinedAt: !2124)
!2129 = distinct !DILexicalBlock(scope: !2118, file: !497, line: 79, column: 7)
!2130 = !DILocation(line: 79, column: 15, scope: !2129, inlinedAt: !2124)
!2131 = !DILocation(line: 79, column: 7, scope: !2118, inlinedAt: !2124)
!2132 = !DILocation(line: 80, column: 32, scope: !2129, inlinedAt: !2124)
!2133 = !DILocation(line: 0, scope: !1970, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 80, column: 5, scope: !2129, inlinedAt: !2124)
!2135 = !DILocation(line: 50, column: 11, scope: !1980, inlinedAt: !2134)
!2136 = !DILocation(line: 50, column: 9, scope: !1980, inlinedAt: !2134)
!2137 = !DILocation(line: 51, column: 7, scope: !1970, inlinedAt: !2134)
!2138 = !DILocation(line: 51, column: 3, scope: !1970, inlinedAt: !2134)
!2139 = !DILocation(line: 51, column: 17, scope: !1970, inlinedAt: !2134)
!2140 = !DILocation(line: 52, column: 7, scope: !1970, inlinedAt: !2134)
!2141 = !DILocation(line: 52, column: 14, scope: !1970, inlinedAt: !2134)
!2142 = !DILocation(line: 52, column: 17, scope: !1970, inlinedAt: !2134)
!2143 = !DILocation(line: 53, column: 3, scope: !1970, inlinedAt: !2134)
!2144 = !DILocation(line: 80, column: 5, scope: !2129, inlinedAt: !2124)
!2145 = !DILocation(line: 0, scope: !2122, inlinedAt: !2124)
!2146 = !DILocation(line: 82, column: 23, scope: !2147, inlinedAt: !2124)
!2147 = distinct !DILexicalBlock(scope: !2122, file: !497, line: 82, column: 3)
!2148 = !DILocation(line: 82, column: 3, scope: !2122, inlinedAt: !2124)
!2149 = !DILocation(line: 90, column: 7, scope: !2150, inlinedAt: !2124)
!2150 = distinct !DILexicalBlock(scope: !2118, file: !497, line: 90, column: 7)
!2151 = !DILocation(line: 90, column: 16, scope: !2150, inlinedAt: !2124)
!2152 = !DILocation(line: 90, column: 19, scope: !2150, inlinedAt: !2124)
!2153 = !DILocation(line: 90, column: 7, scope: !2118, inlinedAt: !2124)
!2154 = !DILocation(line: 84, column: 11, scope: !2155, inlinedAt: !2124)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !497, line: 84, column: 11)
!2156 = distinct !DILexicalBlock(scope: !2147, file: !497, line: 83, column: 5)
!2157 = !DILocation(line: 84, column: 20, scope: !2155, inlinedAt: !2124)
!2158 = !DILocation(line: 84, column: 23, scope: !2155, inlinedAt: !2124)
!2159 = !DILocation(line: 84, column: 35, scope: !2155, inlinedAt: !2124)
!2160 = !DILocation(line: 84, column: 27, scope: !2155, inlinedAt: !2124)
!2161 = !DILocation(line: 84, column: 11, scope: !2156, inlinedAt: !2124)
!2162 = !DILocation(line: 87, column: 48, scope: !2156, inlinedAt: !2124)
!2163 = !DILocation(line: 0, scope: !1970, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 87, column: 7, scope: !2156, inlinedAt: !2124)
!2165 = !DILocation(line: 49, column: 16, scope: !1980, inlinedAt: !2164)
!2166 = !DILocation(line: 49, column: 13, scope: !1980, inlinedAt: !2164)
!2167 = !DILocation(line: 49, column: 7, scope: !1970, inlinedAt: !2164)
!2168 = !DILocation(line: 50, column: 11, scope: !1980, inlinedAt: !2164)
!2169 = !DILocation(line: 50, column: 9, scope: !1980, inlinedAt: !2164)
!2170 = !DILocation(line: 51, column: 7, scope: !1970, inlinedAt: !2164)
!2171 = !DILocation(line: 50, column: 5, scope: !1980, inlinedAt: !2164)
!2172 = !DILocation(line: 51, column: 3, scope: !1970, inlinedAt: !2164)
!2173 = !DILocation(line: 51, column: 17, scope: !1970, inlinedAt: !2164)
!2174 = !DILocation(line: 52, column: 7, scope: !1970, inlinedAt: !2164)
!2175 = !DILocation(line: 52, column: 14, scope: !1970, inlinedAt: !2164)
!2176 = !DILocation(line: 52, column: 17, scope: !1970, inlinedAt: !2164)
!2177 = !DILocation(line: 53, column: 3, scope: !1970, inlinedAt: !2164)
!2178 = !DILocation(line: 88, column: 5, scope: !2156, inlinedAt: !2124)
!2179 = !DILocation(line: 82, column: 28, scope: !2147, inlinedAt: !2124)
!2180 = distinct !{!2180, !2148, !2181, !1149}
!2181 = !DILocation(line: 88, column: 5, scope: !2122, inlinedAt: !2124)
!2182 = !DILocation(line: 91, column: 33, scope: !2150, inlinedAt: !2124)
!2183 = !DILocation(line: 0, scope: !1970, inlinedAt: !2184)
!2184 = distinct !DILocation(line: 91, column: 5, scope: !2150, inlinedAt: !2124)
!2185 = !DILocation(line: 49, column: 16, scope: !1980, inlinedAt: !2184)
!2186 = !DILocation(line: 49, column: 13, scope: !1980, inlinedAt: !2184)
!2187 = !DILocation(line: 49, column: 7, scope: !1970, inlinedAt: !2184)
!2188 = !DILocation(line: 50, column: 11, scope: !1980, inlinedAt: !2184)
!2189 = !DILocation(line: 50, column: 9, scope: !1980, inlinedAt: !2184)
!2190 = !DILocation(line: 51, column: 7, scope: !1970, inlinedAt: !2184)
!2191 = !DILocation(line: 50, column: 5, scope: !1980, inlinedAt: !2184)
!2192 = !DILocation(line: 51, column: 3, scope: !1970, inlinedAt: !2184)
!2193 = !DILocation(line: 51, column: 17, scope: !1970, inlinedAt: !2184)
!2194 = !DILocation(line: 52, column: 7, scope: !1970, inlinedAt: !2184)
!2195 = !DILocation(line: 52, column: 14, scope: !1970, inlinedAt: !2184)
!2196 = !DILocation(line: 52, column: 17, scope: !1970, inlinedAt: !2184)
!2197 = !DILocation(line: 53, column: 3, scope: !1970, inlinedAt: !2184)
!2198 = !DILocation(line: 91, column: 5, scope: !2150, inlinedAt: !2124)
!2199 = !DILocation(line: 93, column: 3, scope: !2118, inlinedAt: !2124)
!2200 = !DILocation(line: 305, column: 3, scope: !521)
!2201 = !DILocation(line: 300, column: 5, scope: !2079)
!2202 = !DILocation(line: 306, column: 30, scope: !521)
!2203 = !DILocation(line: 306, column: 9, scope: !521)
!2204 = !DILocation(line: 306, column: 7, scope: !521)
!2205 = !DILocation(line: 307, column: 27, scope: !521)
!2206 = !DILocation(line: 307, column: 23, scope: !521)
!2207 = !DILocation(line: 307, column: 38, scope: !521)
!2208 = !DILocation(line: 307, column: 41, scope: !521)
!2209 = !DILocation(line: 307, column: 7, scope: !521)
!2210 = !DILocation(line: 307, column: 3, scope: !521)
!2211 = !DILocation(line: 307, column: 21, scope: !521)
!2212 = !DILocation(line: 308, column: 1, scope: !521)
!2213 = distinct !DISubprogram(name: "compare_ranges", scope: !497, file: !497, line: 60, type: !2214, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2216)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!118, !1250, !1250}
!2216 = !{!2217, !2218, !2219, !2222}
!2217 = !DILocalVariable(name: "a", arg: 1, scope: !2213, file: !497, line: 60, type: !1250)
!2218 = !DILocalVariable(name: "b", arg: 2, scope: !2213, file: !497, line: 60, type: !1250)
!2219 = !DILocalVariable(name: "ap", scope: !2213, file: !497, line: 62, type: !2220)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !557)
!2222 = !DILocalVariable(name: "bp", scope: !2213, file: !497, line: 62, type: !2220)
!2223 = !DILocation(line: 0, scope: !2213)
!2224 = !DILocation(line: 63, column: 10, scope: !2213)
!2225 = !DILocation(line: 63, column: 3, scope: !2213)
!2226 = !DISubprogram(name: "qsort", scope: !1226, file: !1226, line: 838, type: !2227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{null, !168, !170, !170, !2229}
!2229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1226, line: 816, baseType: !2230)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2231 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !602, file: !602, line: 50, type: !1052, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !2232)
!2232 = !{!2233}
!2233 = !DILocalVariable(name: "file", arg: 1, scope: !2231, file: !602, line: 50, type: !173)
!2234 = !DILocation(line: 0, scope: !2231)
!2235 = !DILocation(line: 52, column: 13, scope: !2231)
!2236 = !DILocation(line: 53, column: 1, scope: !2231)
!2237 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !602, file: !602, line: 87, type: !2238, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !2240)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{null, !224}
!2240 = !{!2241}
!2241 = !DILocalVariable(name: "ignore", arg: 1, scope: !2237, file: !602, line: 87, type: !224)
!2242 = !DILocation(line: 0, scope: !2237)
!2243 = !DILocation(line: 89, column: 16, scope: !2237)
!2244 = !{!2245, !2245, i64 0}
!2245 = !{!"_Bool", !1026, i64 0}
!2246 = !DILocation(line: 90, column: 1, scope: !2237)
!2247 = distinct !DISubprogram(name: "close_stdout", scope: !602, file: !602, line: 116, type: !663, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !2248)
!2248 = !{!2249}
!2249 = !DILocalVariable(name: "write_error", scope: !2250, file: !602, line: 121, type: !173)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !602, line: 120, column: 5)
!2251 = distinct !DILexicalBlock(scope: !2247, file: !602, line: 118, column: 7)
!2252 = !DILocation(line: 118, column: 21, scope: !2251)
!2253 = !DILocation(line: 118, column: 7, scope: !2251)
!2254 = !DILocation(line: 118, column: 29, scope: !2251)
!2255 = !DILocation(line: 119, column: 7, scope: !2251)
!2256 = !DILocation(line: 119, column: 12, scope: !2251)
!2257 = !{i8 0, i8 2}
!2258 = !DILocation(line: 119, column: 25, scope: !2251)
!2259 = !DILocation(line: 119, column: 28, scope: !2251)
!2260 = !DILocation(line: 119, column: 34, scope: !2251)
!2261 = !DILocation(line: 118, column: 7, scope: !2247)
!2262 = !DILocation(line: 121, column: 33, scope: !2250)
!2263 = !DILocation(line: 0, scope: !2250)
!2264 = !DILocation(line: 122, column: 11, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2250, file: !602, line: 122, column: 11)
!2266 = !DILocation(line: 0, scope: !2265)
!2267 = !DILocation(line: 122, column: 11, scope: !2250)
!2268 = !DILocation(line: 123, column: 9, scope: !2265)
!2269 = !DILocation(line: 126, column: 9, scope: !2265)
!2270 = !DILocation(line: 128, column: 14, scope: !2250)
!2271 = !DILocation(line: 128, column: 7, scope: !2250)
!2272 = !DILocation(line: 133, column: 42, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2247, file: !602, line: 133, column: 7)
!2274 = !DILocation(line: 133, column: 28, scope: !2273)
!2275 = !DILocation(line: 133, column: 50, scope: !2273)
!2276 = !DILocation(line: 133, column: 7, scope: !2247)
!2277 = !DILocation(line: 134, column: 12, scope: !2273)
!2278 = !DILocation(line: 134, column: 5, scope: !2273)
!2279 = !DILocation(line: 135, column: 1, scope: !2247)
!2280 = !DISubprogram(name: "_exit", scope: !2281, file: !2281, line: 624, type: !1014, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2281 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2282 = distinct !DISubprogram(name: "verror", scope: !617, file: !617, line: 251, type: !2283, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !2285)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{null, !118, !118, !173, !627}
!2285 = !{!2286, !2287, !2288, !2289}
!2286 = !DILocalVariable(name: "status", arg: 1, scope: !2282, file: !617, line: 251, type: !118)
!2287 = !DILocalVariable(name: "errnum", arg: 2, scope: !2282, file: !617, line: 251, type: !118)
!2288 = !DILocalVariable(name: "message", arg: 3, scope: !2282, file: !617, line: 251, type: !173)
!2289 = !DILocalVariable(name: "args", arg: 4, scope: !2282, file: !617, line: 251, type: !627)
!2290 = !DILocation(line: 0, scope: !2282)
!2291 = !DILocation(line: 261, column: 3, scope: !2282)
!2292 = !DILocation(line: 265, column: 7, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2282, file: !617, line: 265, column: 7)
!2294 = !DILocation(line: 265, column: 7, scope: !2282)
!2295 = !DILocation(line: 266, column: 5, scope: !2293)
!2296 = !DILocation(line: 272, column: 7, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2293, file: !617, line: 268, column: 5)
!2298 = !DILocation(line: 276, column: 3, scope: !2282)
!2299 = !DILocation(line: 282, column: 1, scope: !2282)
!2300 = distinct !DISubprogram(name: "flush_stdout", scope: !617, file: !617, line: 163, type: !663, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !2301)
!2301 = !{!2302}
!2302 = !DILocalVariable(name: "stdout_fd", scope: !2300, file: !617, line: 166, type: !118)
!2303 = !DILocation(line: 0, scope: !2300)
!2304 = !DILocalVariable(name: "fd", arg: 1, scope: !2305, file: !617, line: 145, type: !118)
!2305 = distinct !DISubprogram(name: "is_open", scope: !617, file: !617, line: 145, type: !1536, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !2306)
!2306 = !{!2304}
!2307 = !DILocation(line: 0, scope: !2305, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 182, column: 25, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2300, file: !617, line: 182, column: 7)
!2310 = !DILocation(line: 157, column: 15, scope: !2305, inlinedAt: !2308)
!2311 = !DILocation(line: 157, column: 12, scope: !2305, inlinedAt: !2308)
!2312 = !DILocation(line: 182, column: 7, scope: !2300)
!2313 = !DILocation(line: 184, column: 5, scope: !2309)
!2314 = !DILocation(line: 185, column: 1, scope: !2300)
!2315 = distinct !DISubprogram(name: "error_tail", scope: !617, file: !617, line: 219, type: !2283, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !2316)
!2316 = !{!2317, !2318, !2319, !2320}
!2317 = !DILocalVariable(name: "status", arg: 1, scope: !2315, file: !617, line: 219, type: !118)
!2318 = !DILocalVariable(name: "errnum", arg: 2, scope: !2315, file: !617, line: 219, type: !118)
!2319 = !DILocalVariable(name: "message", arg: 3, scope: !2315, file: !617, line: 219, type: !173)
!2320 = !DILocalVariable(name: "args", arg: 4, scope: !2315, file: !617, line: 219, type: !627)
!2321 = distinct !DIAssignID()
!2322 = !DILocation(line: 0, scope: !2315)
!2323 = !DILocation(line: 229, column: 13, scope: !2315)
!2324 = !DILocalVariable(name: "__stream", arg: 1, scope: !2325, file: !1088, line: 132, type: !2328)
!2325 = distinct !DISubprogram(name: "vfprintf", scope: !1088, file: !1088, line: 132, type: !2326, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !2363)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!118, !2328, !1092, !627}
!2328 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2329)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !2331)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !2332)
!2332 = !{!2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2331, file: !269, line: 51, baseType: !118, size: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2331, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2331, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2331, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2331, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2331, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2331, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2331, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2331, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2331, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2331, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2331, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2331, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2331, file: !269, line: 70, baseType: !2347, size: 64, offset: 832)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2331, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2331, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2331, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2331, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2331, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2331, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2331, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2331, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2331, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2331, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2331, file: !269, line: 93, baseType: !2347, size: 64, offset: 1344)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2331, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2331, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2331, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2331, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!2363 = !{!2324, !2364, !2365}
!2364 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2325, file: !1088, line: 133, type: !1092)
!2365 = !DILocalVariable(name: "__ap", arg: 3, scope: !2325, file: !1088, line: 133, type: !627)
!2366 = !DILocation(line: 0, scope: !2325, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 229, column: 3, scope: !2315)
!2368 = !DILocation(line: 135, column: 10, scope: !2325, inlinedAt: !2367)
!2369 = !DILocation(line: 232, column: 3, scope: !2315)
!2370 = !DILocation(line: 233, column: 7, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2315, file: !617, line: 233, column: 7)
!2372 = !DILocation(line: 233, column: 7, scope: !2315)
!2373 = !DILocalVariable(name: "errbuf", scope: !2374, file: !617, line: 193, type: !2378)
!2374 = distinct !DISubprogram(name: "print_errno_message", scope: !617, file: !617, line: 188, type: !1014, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !2375)
!2375 = !{!2376, !2377, !2373}
!2376 = !DILocalVariable(name: "errnum", arg: 1, scope: !2374, file: !617, line: 188, type: !118)
!2377 = !DILocalVariable(name: "s", scope: !2374, file: !617, line: 190, type: !173)
!2378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2379)
!2379 = !{!2380}
!2380 = !DISubrange(count: 1024)
!2381 = !DILocation(line: 0, scope: !2374, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 234, column: 5, scope: !2371)
!2383 = !DILocation(line: 193, column: 3, scope: !2374, inlinedAt: !2382)
!2384 = !DILocation(line: 195, column: 7, scope: !2374, inlinedAt: !2382)
!2385 = !DILocation(line: 207, column: 9, scope: !2386, inlinedAt: !2382)
!2386 = distinct !DILexicalBlock(scope: !2374, file: !617, line: 207, column: 7)
!2387 = !DILocation(line: 207, column: 7, scope: !2374, inlinedAt: !2382)
!2388 = !DILocation(line: 208, column: 9, scope: !2386, inlinedAt: !2382)
!2389 = !DILocation(line: 208, column: 5, scope: !2386, inlinedAt: !2382)
!2390 = !DILocation(line: 214, column: 3, scope: !2374, inlinedAt: !2382)
!2391 = !DILocation(line: 216, column: 1, scope: !2374, inlinedAt: !2382)
!2392 = !DILocation(line: 234, column: 5, scope: !2371)
!2393 = !DILocation(line: 238, column: 3, scope: !2315)
!2394 = !DILocalVariable(name: "__c", arg: 1, scope: !2395, file: !1447, line: 101, type: !118)
!2395 = distinct !DISubprogram(name: "putc_unlocked", scope: !1447, file: !1447, line: 101, type: !2396, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !2398)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!118, !118, !2329}
!2398 = !{!2394, !2399}
!2399 = !DILocalVariable(name: "__stream", arg: 2, scope: !2395, file: !1447, line: 101, type: !2329)
!2400 = !DILocation(line: 0, scope: !2395, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 238, column: 3, scope: !2315)
!2402 = !DILocation(line: 103, column: 10, scope: !2395, inlinedAt: !2401)
!2403 = !DILocation(line: 240, column: 3, scope: !2315)
!2404 = !DILocation(line: 241, column: 7, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2315, file: !617, line: 241, column: 7)
!2406 = !DILocation(line: 241, column: 7, scope: !2315)
!2407 = !DILocation(line: 242, column: 5, scope: !2405)
!2408 = !DILocation(line: 243, column: 1, scope: !2315)
!2409 = !DISubprogram(name: "__vfprintf_chk", scope: !1088, file: !1088, line: 96, type: !2410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!118, !2328, !118, !1092, !627}
!2412 = !DISubprogram(name: "strerror_r", scope: !1222, file: !1222, line: 444, type: !2413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!167, !118, !167, !170}
!2415 = !DISubprogram(name: "fcntl", scope: !2416, file: !2416, line: 149, type: !2417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2416 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!118, !118, !118, null}
!2419 = distinct !DISubprogram(name: "error", scope: !617, file: !617, line: 285, type: !2420, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !2422)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{null, !118, !118, !173, null}
!2422 = !{!2423, !2424, !2425, !2426}
!2423 = !DILocalVariable(name: "status", arg: 1, scope: !2419, file: !617, line: 285, type: !118)
!2424 = !DILocalVariable(name: "errnum", arg: 2, scope: !2419, file: !617, line: 285, type: !118)
!2425 = !DILocalVariable(name: "message", arg: 3, scope: !2419, file: !617, line: 285, type: !173)
!2426 = !DILocalVariable(name: "ap", scope: !2419, file: !617, line: 287, type: !2427)
!2427 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1097, line: 52, baseType: !2428)
!2428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2429, line: 12, baseType: !2430)
!2429 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!2430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !617, baseType: !2431)
!2431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 192, elements: !90)
!2432 = distinct !DIAssignID()
!2433 = !DILocation(line: 0, scope: !2419)
!2434 = !DILocation(line: 287, column: 3, scope: !2419)
!2435 = !DILocation(line: 288, column: 3, scope: !2419)
!2436 = !DILocation(line: 289, column: 3, scope: !2419)
!2437 = !DILocation(line: 290, column: 3, scope: !2419)
!2438 = !DILocation(line: 291, column: 1, scope: !2419)
!2439 = !DILocation(line: 0, scope: !624)
!2440 = !DILocation(line: 302, column: 7, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !624, file: !617, line: 302, column: 7)
!2442 = !DILocation(line: 302, column: 7, scope: !624)
!2443 = !DILocation(line: 307, column: 11, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !617, line: 307, column: 11)
!2445 = distinct !DILexicalBlock(scope: !2441, file: !617, line: 303, column: 5)
!2446 = !DILocation(line: 307, column: 27, scope: !2444)
!2447 = !DILocation(line: 308, column: 11, scope: !2444)
!2448 = !DILocation(line: 308, column: 28, scope: !2444)
!2449 = !DILocation(line: 308, column: 25, scope: !2444)
!2450 = !DILocation(line: 309, column: 15, scope: !2444)
!2451 = !DILocation(line: 309, column: 33, scope: !2444)
!2452 = !DILocation(line: 310, column: 19, scope: !2444)
!2453 = !DILocation(line: 311, column: 22, scope: !2444)
!2454 = !DILocation(line: 311, column: 56, scope: !2444)
!2455 = !DILocation(line: 307, column: 11, scope: !2445)
!2456 = !DILocation(line: 316, column: 21, scope: !2445)
!2457 = !DILocation(line: 317, column: 23, scope: !2445)
!2458 = !DILocation(line: 318, column: 5, scope: !2445)
!2459 = !DILocation(line: 327, column: 3, scope: !624)
!2460 = !DILocation(line: 331, column: 7, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !624, file: !617, line: 331, column: 7)
!2462 = !DILocation(line: 331, column: 7, scope: !624)
!2463 = !DILocation(line: 332, column: 5, scope: !2461)
!2464 = !DILocation(line: 338, column: 7, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2461, file: !617, line: 334, column: 5)
!2466 = !DILocation(line: 346, column: 3, scope: !624)
!2467 = !DILocation(line: 350, column: 3, scope: !624)
!2468 = !DILocation(line: 356, column: 1, scope: !624)
!2469 = distinct !DISubprogram(name: "error_at_line", scope: !617, file: !617, line: 359, type: !2470, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !2472)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{null, !118, !118, !173, !112, !173, null}
!2472 = !{!2473, !2474, !2475, !2476, !2477, !2478}
!2473 = !DILocalVariable(name: "status", arg: 1, scope: !2469, file: !617, line: 359, type: !118)
!2474 = !DILocalVariable(name: "errnum", arg: 2, scope: !2469, file: !617, line: 359, type: !118)
!2475 = !DILocalVariable(name: "file_name", arg: 3, scope: !2469, file: !617, line: 359, type: !173)
!2476 = !DILocalVariable(name: "line_number", arg: 4, scope: !2469, file: !617, line: 360, type: !112)
!2477 = !DILocalVariable(name: "message", arg: 5, scope: !2469, file: !617, line: 360, type: !173)
!2478 = !DILocalVariable(name: "ap", scope: !2469, file: !617, line: 362, type: !2427)
!2479 = distinct !DIAssignID()
!2480 = !DILocation(line: 0, scope: !2469)
!2481 = !DILocation(line: 362, column: 3, scope: !2469)
!2482 = !DILocation(line: 363, column: 3, scope: !2469)
!2483 = !DILocation(line: 364, column: 3, scope: !2469)
!2484 = !DILocation(line: 366, column: 3, scope: !2469)
!2485 = !DILocation(line: 367, column: 1, scope: !2469)
!2486 = distinct !DISubprogram(name: "fdadvise", scope: !918, file: !918, line: 25, type: !2487, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !917, retainedNodes: !2491)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{null, !118, !2489, !2489, !2490}
!2489 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1097, line: 63, baseType: !291)
!2490 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !921, line: 51, baseType: !920)
!2491 = !{!2492, !2493, !2494, !2495}
!2492 = !DILocalVariable(name: "fd", arg: 1, scope: !2486, file: !918, line: 25, type: !118)
!2493 = !DILocalVariable(name: "offset", arg: 2, scope: !2486, file: !918, line: 25, type: !2489)
!2494 = !DILocalVariable(name: "len", arg: 3, scope: !2486, file: !918, line: 25, type: !2489)
!2495 = !DILocalVariable(name: "advice", arg: 4, scope: !2486, file: !918, line: 25, type: !2490)
!2496 = !DILocation(line: 0, scope: !2486)
!2497 = !DILocation(line: 28, column: 3, scope: !2486)
!2498 = !DILocation(line: 30, column: 1, scope: !2486)
!2499 = !DISubprogram(name: "posix_fadvise", scope: !2416, file: !2416, line: 273, type: !2500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!118, !118, !2489, !2489, !118}
!2502 = distinct !DISubprogram(name: "fadvise", scope: !918, file: !918, line: 33, type: !2503, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !917, retainedNodes: !2539)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{null, !2505, !2490}
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !2507)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !2508)
!2508 = !{!2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2507, file: !269, line: 51, baseType: !118, size: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2507, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2507, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2507, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2507, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2507, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2507, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2507, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2507, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2507, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2507, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2507, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2507, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2507, file: !269, line: 70, baseType: !2523, size: 64, offset: 832)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2507, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2507, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2507, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2507, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2507, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2507, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2507, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2507, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2507, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2507, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2507, file: !269, line: 93, baseType: !2523, size: 64, offset: 1344)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2507, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2507, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2507, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2507, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!2539 = !{!2540, !2541}
!2540 = !DILocalVariable(name: "fp", arg: 1, scope: !2502, file: !918, line: 33, type: !2505)
!2541 = !DILocalVariable(name: "advice", arg: 2, scope: !2502, file: !918, line: 33, type: !2490)
!2542 = !DILocation(line: 0, scope: !2502)
!2543 = !DILocation(line: 35, column: 7, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2502, file: !918, line: 35, column: 7)
!2545 = !DILocation(line: 35, column: 7, scope: !2502)
!2546 = !DILocation(line: 36, column: 15, scope: !2544)
!2547 = !DILocation(line: 0, scope: !2486, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 36, column: 5, scope: !2544)
!2549 = !DILocation(line: 28, column: 3, scope: !2486, inlinedAt: !2548)
!2550 = !DILocation(line: 36, column: 5, scope: !2544)
!2551 = !DILocation(line: 37, column: 1, scope: !2502)
!2552 = !DISubprogram(name: "fileno", scope: !1097, file: !1097, line: 809, type: !2553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!118, !2505}
!2555 = distinct !DISubprogram(name: "rpl_fclose", scope: !923, file: !923, line: 58, type: !2556, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !2592)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!118, !2558}
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !2560)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !2561)
!2561 = !{!2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2560, file: !269, line: 51, baseType: !118, size: 32)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2560, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2560, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2560, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2560, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2560, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2560, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2560, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2560, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2560, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2560, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2560, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2560, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2560, file: !269, line: 70, baseType: !2576, size: 64, offset: 832)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2560, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2560, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2560, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2560, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2560, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2560, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2560, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2560, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2560, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2560, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2560, file: !269, line: 93, baseType: !2576, size: 64, offset: 1344)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2560, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2560, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2560, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2560, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!2592 = !{!2593, !2594, !2595, !2596}
!2593 = !DILocalVariable(name: "fp", arg: 1, scope: !2555, file: !923, line: 58, type: !2558)
!2594 = !DILocalVariable(name: "saved_errno", scope: !2555, file: !923, line: 60, type: !118)
!2595 = !DILocalVariable(name: "fd", scope: !2555, file: !923, line: 63, type: !118)
!2596 = !DILocalVariable(name: "result", scope: !2555, file: !923, line: 74, type: !118)
!2597 = !DILocation(line: 0, scope: !2555)
!2598 = !DILocation(line: 63, column: 12, scope: !2555)
!2599 = !DILocation(line: 64, column: 10, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2555, file: !923, line: 64, column: 7)
!2601 = !DILocation(line: 64, column: 7, scope: !2555)
!2602 = !DILocation(line: 65, column: 12, scope: !2600)
!2603 = !DILocation(line: 65, column: 5, scope: !2600)
!2604 = !DILocation(line: 70, column: 9, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2555, file: !923, line: 70, column: 7)
!2606 = !DILocation(line: 70, column: 23, scope: !2605)
!2607 = !DILocation(line: 70, column: 33, scope: !2605)
!2608 = !DILocation(line: 70, column: 26, scope: !2605)
!2609 = !DILocation(line: 70, column: 59, scope: !2605)
!2610 = !DILocation(line: 71, column: 7, scope: !2605)
!2611 = !DILocation(line: 71, column: 10, scope: !2605)
!2612 = !DILocation(line: 70, column: 7, scope: !2555)
!2613 = !DILocation(line: 100, column: 12, scope: !2555)
!2614 = !DILocation(line: 105, column: 7, scope: !2555)
!2615 = !DILocation(line: 72, column: 19, scope: !2605)
!2616 = !DILocation(line: 105, column: 19, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2555, file: !923, line: 105, column: 7)
!2618 = !DILocation(line: 107, column: 13, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2617, file: !923, line: 106, column: 5)
!2620 = !DILocation(line: 109, column: 5, scope: !2619)
!2621 = !DILocation(line: 112, column: 1, scope: !2555)
!2622 = !DISubprogram(name: "fclose", scope: !1097, file: !1097, line: 178, type: !2556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2623 = !DISubprogram(name: "__freading", scope: !2624, file: !2624, line: 51, type: !2556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2624 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2625 = !DISubprogram(name: "lseek", scope: !2281, file: !2281, line: 339, type: !2626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!291, !118, !291, !118}
!2628 = distinct !DISubprogram(name: "rpl_fflush", scope: !925, file: !925, line: 130, type: !2629, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !924, retainedNodes: !2665)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!118, !2631}
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !2633)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !2634)
!2634 = !{!2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2633, file: !269, line: 51, baseType: !118, size: 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2633, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2633, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2633, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2633, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2633, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2633, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2633, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2633, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2633, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2633, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2633, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2633, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2633, file: !269, line: 70, baseType: !2649, size: 64, offset: 832)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2633, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2633, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2633, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2633, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2633, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2633, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2633, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2633, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2633, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2633, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2633, file: !269, line: 93, baseType: !2649, size: 64, offset: 1344)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2633, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2633, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2633, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2633, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!2665 = !{!2666}
!2666 = !DILocalVariable(name: "stream", arg: 1, scope: !2628, file: !925, line: 130, type: !2631)
!2667 = !DILocation(line: 0, scope: !2628)
!2668 = !DILocation(line: 151, column: 14, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2628, file: !925, line: 151, column: 7)
!2670 = !DILocation(line: 151, column: 22, scope: !2669)
!2671 = !DILocation(line: 151, column: 27, scope: !2669)
!2672 = !DILocation(line: 151, column: 7, scope: !2628)
!2673 = !DILocation(line: 152, column: 12, scope: !2669)
!2674 = !DILocation(line: 152, column: 5, scope: !2669)
!2675 = !DILocalVariable(name: "fp", arg: 1, scope: !2676, file: !925, line: 42, type: !2631)
!2676 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !925, file: !925, line: 42, type: !2677, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !924, retainedNodes: !2679)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{null, !2631}
!2679 = !{!2675}
!2680 = !DILocation(line: 0, scope: !2676, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 157, column: 3, scope: !2628)
!2682 = !DILocation(line: 44, column: 12, scope: !2683, inlinedAt: !2681)
!2683 = distinct !DILexicalBlock(scope: !2676, file: !925, line: 44, column: 7)
!2684 = !DILocation(line: 44, column: 19, scope: !2683, inlinedAt: !2681)
!2685 = !DILocation(line: 44, column: 7, scope: !2676, inlinedAt: !2681)
!2686 = !DILocation(line: 46, column: 5, scope: !2683, inlinedAt: !2681)
!2687 = !DILocation(line: 159, column: 10, scope: !2628)
!2688 = !DILocation(line: 159, column: 3, scope: !2628)
!2689 = !DILocation(line: 236, column: 1, scope: !2628)
!2690 = !DISubprogram(name: "fflush", scope: !1097, file: !1097, line: 230, type: !2629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2691 = distinct !DISubprogram(name: "fpurge", scope: !928, file: !928, line: 32, type: !2692, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !2728)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!118, !2694}
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !2696)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !2697)
!2697 = !{!2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2696, file: !269, line: 51, baseType: !118, size: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2696, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2696, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2696, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2696, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2696, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2696, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2696, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2696, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2696, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2696, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2696, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2696, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2696, file: !269, line: 70, baseType: !2712, size: 64, offset: 832)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2696, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2696, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2696, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2696, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2696, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2696, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2696, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2696, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2696, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2696, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2696, file: !269, line: 93, baseType: !2712, size: 64, offset: 1344)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2696, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2696, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2696, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2696, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!2728 = !{!2729}
!2729 = !DILocalVariable(name: "fp", arg: 1, scope: !2691, file: !928, line: 32, type: !2694)
!2730 = !DILocation(line: 0, scope: !2691)
!2731 = !DILocation(line: 36, column: 3, scope: !2691)
!2732 = !DILocation(line: 38, column: 3, scope: !2691)
!2733 = !DISubprogram(name: "__fpurge", scope: !2624, file: !2624, line: 72, type: !2734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{null, !2694}
!2736 = distinct !DISubprogram(name: "rpl_fseeko", scope: !930, file: !930, line: 28, type: !2737, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !929, retainedNodes: !2773)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!118, !2739, !2489, !118}
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !2741)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !2742)
!2742 = !{!2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2741, file: !269, line: 51, baseType: !118, size: 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2741, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2741, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2741, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2741, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2741, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2741, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2741, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2741, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2741, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2741, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2741, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2741, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2741, file: !269, line: 70, baseType: !2757, size: 64, offset: 832)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2741, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2741, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2741, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2741, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2741, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2741, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2741, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2741, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2741, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2741, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2741, file: !269, line: 93, baseType: !2757, size: 64, offset: 1344)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2741, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2741, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2741, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2741, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!2773 = !{!2774, !2775, !2776, !2777}
!2774 = !DILocalVariable(name: "fp", arg: 1, scope: !2736, file: !930, line: 28, type: !2739)
!2775 = !DILocalVariable(name: "offset", arg: 2, scope: !2736, file: !930, line: 28, type: !2489)
!2776 = !DILocalVariable(name: "whence", arg: 3, scope: !2736, file: !930, line: 28, type: !118)
!2777 = !DILocalVariable(name: "pos", scope: !2778, file: !930, line: 123, type: !2489)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !930, line: 119, column: 5)
!2779 = distinct !DILexicalBlock(scope: !2736, file: !930, line: 55, column: 7)
!2780 = !DILocation(line: 0, scope: !2736)
!2781 = !DILocation(line: 55, column: 12, scope: !2779)
!2782 = !DILocation(line: 55, column: 33, scope: !2779)
!2783 = !DILocation(line: 55, column: 25, scope: !2779)
!2784 = !DILocation(line: 56, column: 7, scope: !2779)
!2785 = !DILocation(line: 56, column: 15, scope: !2779)
!2786 = !DILocation(line: 56, column: 37, scope: !2779)
!2787 = !{!1455, !1025, i64 32}
!2788 = !DILocation(line: 56, column: 29, scope: !2779)
!2789 = !DILocation(line: 57, column: 7, scope: !2779)
!2790 = !DILocation(line: 57, column: 15, scope: !2779)
!2791 = !{!1455, !1025, i64 72}
!2792 = !DILocation(line: 57, column: 29, scope: !2779)
!2793 = !DILocation(line: 55, column: 7, scope: !2736)
!2794 = !DILocation(line: 123, column: 26, scope: !2778)
!2795 = !DILocation(line: 123, column: 19, scope: !2778)
!2796 = !DILocation(line: 0, scope: !2778)
!2797 = !DILocation(line: 124, column: 15, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2778, file: !930, line: 124, column: 11)
!2799 = !DILocation(line: 124, column: 11, scope: !2778)
!2800 = !DILocation(line: 135, column: 19, scope: !2778)
!2801 = !DILocation(line: 136, column: 12, scope: !2778)
!2802 = !DILocation(line: 136, column: 20, scope: !2778)
!2803 = !{!1455, !1304, i64 144}
!2804 = !DILocation(line: 167, column: 7, scope: !2778)
!2805 = !DILocation(line: 169, column: 10, scope: !2736)
!2806 = !DILocation(line: 169, column: 3, scope: !2736)
!2807 = !DILocation(line: 170, column: 1, scope: !2736)
!2808 = !DISubprogram(name: "fseeko", scope: !1097, file: !1097, line: 736, type: !2809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!118, !2739, !291, !118}
!2811 = distinct !DISubprogram(name: "getndelim2", scope: !932, file: !932, line: 66, type: !2812, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !931, retainedNodes: !2848)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!1407, !1255, !955, !170, !170, !118, !118, !2814}
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !2816)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !2817)
!2817 = !{!2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2816, file: !269, line: 51, baseType: !118, size: 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2816, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2816, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2816, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2816, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2816, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2816, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2816, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2816, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2816, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2816, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2816, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2816, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2816, file: !269, line: 70, baseType: !2832, size: 64, offset: 832)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2816, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2816, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2816, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2816, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2816, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2816, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2816, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2816, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2816, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2816, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2816, file: !269, line: 93, baseType: !2832, size: 64, offset: 1344)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2816, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2816, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2816, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2816, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!2848 = !{!2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2864, !2865, !2866, !2871, !2874, !2875, !2878, !2881, !2882}
!2849 = !DILocalVariable(name: "lineptr", arg: 1, scope: !2811, file: !932, line: 66, type: !1255)
!2850 = !DILocalVariable(name: "linesize", arg: 2, scope: !2811, file: !932, line: 66, type: !955)
!2851 = !DILocalVariable(name: "offset", arg: 3, scope: !2811, file: !932, line: 66, type: !170)
!2852 = !DILocalVariable(name: "nmax", arg: 4, scope: !2811, file: !932, line: 66, type: !170)
!2853 = !DILocalVariable(name: "delim1", arg: 5, scope: !2811, file: !932, line: 67, type: !118)
!2854 = !DILocalVariable(name: "delim2", arg: 6, scope: !2811, file: !932, line: 67, type: !118)
!2855 = !DILocalVariable(name: "stream", arg: 7, scope: !2811, file: !932, line: 67, type: !2814)
!2856 = !DILocalVariable(name: "ptr", scope: !2811, file: !932, line: 69, type: !167)
!2857 = !DILocalVariable(name: "size", scope: !2811, file: !932, line: 70, type: !170)
!2858 = !DILocalVariable(name: "bytes_stored", scope: !2811, file: !932, line: 79, type: !1407)
!2859 = !DILocalVariable(name: "nbytes_avail", scope: !2811, file: !932, line: 84, type: !170)
!2860 = !DILocalVariable(name: "read_pos", scope: !2811, file: !932, line: 86, type: !167)
!2861 = !DILocalVariable(name: "found_delimiter", scope: !2811, file: !932, line: 99, type: !224)
!2862 = !DILocalVariable(name: "c", scope: !2863, file: !932, line: 105, type: !118)
!2863 = distinct !DILexicalBlock(scope: !2811, file: !932, line: 101, column: 5)
!2864 = !DILocalVariable(name: "buffer", scope: !2863, file: !932, line: 106, type: !173)
!2865 = !DILocalVariable(name: "buffer_len", scope: !2863, file: !932, line: 107, type: !170)
!2866 = !DILocalVariable(name: "end", scope: !2867, file: !932, line: 114, type: !173)
!2867 = distinct !DILexicalBlock(scope: !2868, file: !932, line: 113, column: 13)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !932, line: 112, column: 15)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !932, line: 111, column: 9)
!2870 = distinct !DILexicalBlock(scope: !2863, file: !932, line: 110, column: 11)
!2871 = !DILocalVariable(name: "newsize", scope: !2872, file: !932, line: 146, type: !170)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !932, line: 143, column: 9)
!2873 = distinct !DILexicalBlock(scope: !2863, file: !932, line: 142, column: 11)
!2874 = !DILocalVariable(name: "newptr", scope: !2872, file: !932, line: 147, type: !167)
!2875 = !DILocalVariable(name: "newsizemax", scope: !2876, file: !932, line: 159, type: !170)
!2876 = distinct !DILexicalBlock(scope: !2877, file: !932, line: 158, column: 13)
!2877 = distinct !DILexicalBlock(scope: !2872, file: !932, line: 157, column: 15)
!2878 = !DILocalVariable(name: "copy_len", scope: !2879, file: !932, line: 179, type: !170)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !932, line: 178, column: 9)
!2880 = distinct !DILexicalBlock(scope: !2863, file: !932, line: 177, column: 11)
!2881 = !DILabel(scope: !2811, name: "unlock_done", file: !932, line: 203)
!2882 = !DILabel(scope: !2811, name: "done", file: !932, line: 206)
!2883 = distinct !DIAssignID()
!2884 = !DILocation(line: 0, scope: !2863)
!2885 = !DILocation(line: 0, scope: !2811)
!2886 = !DILocation(line: 69, column: 15, scope: !2811)
!2887 = !DILocation(line: 70, column: 17, scope: !2811)
!2888 = !DILocation(line: 71, column: 8, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2811, file: !932, line: 71, column: 7)
!2890 = !DILocation(line: 71, column: 7, scope: !2811)
!2891 = !DILocation(line: 73, column: 14, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2889, file: !932, line: 72, column: 5)
!2893 = !DILocation(line: 74, column: 13, scope: !2892)
!2894 = !DILocation(line: 75, column: 12, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2892, file: !932, line: 75, column: 11)
!2896 = !DILocation(line: 75, column: 11, scope: !2892)
!2897 = !DILocation(line: 81, column: 12, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2811, file: !932, line: 81, column: 7)
!2899 = !DILocation(line: 81, column: 7, scope: !2811)
!2900 = !DILocation(line: 85, column: 10, scope: !2811)
!2901 = !DILocation(line: 88, column: 20, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2811, file: !932, line: 88, column: 7)
!2903 = !DILocation(line: 88, column: 25, scope: !2902)
!2904 = !DILocation(line: 86, column: 24, scope: !2811)
!2905 = !DILocation(line: 92, column: 14, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2811, file: !932, line: 92, column: 7)
!2907 = !DILocation(line: 92, column: 7, scope: !2811)
!2908 = !DILocation(line: 100, column: 3, scope: !2811)
!2909 = !DILocation(line: 107, column: 7, scope: !2863)
!2910 = !DILocation(line: 109, column: 16, scope: !2863)
!2911 = !DILocation(line: 110, column: 11, scope: !2870)
!2912 = !DILocation(line: 110, column: 11, scope: !2863)
!2913 = !DILocation(line: 142, column: 26, scope: !2873)
!2914 = !DILocation(line: 112, column: 15, scope: !2869)
!2915 = !DILocation(line: 114, column: 33, scope: !2867)
!2916 = !DILocation(line: 0, scope: !2867)
!2917 = !DILocation(line: 115, column: 19, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2867, file: !932, line: 115, column: 19)
!2919 = !DILocation(line: 115, column: 19, scope: !2867)
!2920 = !DILocation(line: 117, column: 36, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2918, file: !932, line: 116, column: 17)
!2922 = !DILocation(line: 117, column: 45, scope: !2921)
!2923 = !DILocation(line: 117, column: 30, scope: !2921)
!2924 = distinct !DIAssignID()
!2925 = !DILocation(line: 119, column: 17, scope: !2921)
!2926 = !DILocalVariable(name: "__fp", arg: 1, scope: !2927, file: !1447, line: 66, type: !2814)
!2927 = distinct !DISubprogram(name: "getc_unlocked", scope: !1447, file: !1447, line: 66, type: !2928, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !931, retainedNodes: !2930)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!118, !2814}
!2930 = !{!2926}
!2931 = !DILocation(line: 0, scope: !2927, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 124, column: 15, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2870, file: !932, line: 123, column: 9)
!2934 = !DILocation(line: 68, column: 10, scope: !2927, inlinedAt: !2932)
!2935 = !DILocation(line: 125, column: 15, scope: !2933)
!2936 = !DILocation(line: 125, column: 17, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2933, file: !932, line: 125, column: 15)
!2938 = !DILocation(line: 128, column: 28, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2940, file: !932, line: 128, column: 19)
!2940 = distinct !DILexicalBlock(scope: !2937, file: !932, line: 126, column: 13)
!2941 = !DILocation(line: 0, scope: !2939)
!2942 = !DILocation(line: 194, column: 5, scope: !2811)
!2943 = !DILocation(line: 133, column: 17, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2933, file: !932, line: 133, column: 15)
!2945 = !DILocation(line: 133, column: 27, scope: !2944)
!2946 = !DILocation(line: 135, column: 22, scope: !2933)
!2947 = distinct !DIAssignID()
!2948 = !DILocation(line: 142, column: 37, scope: !2873)
!2949 = !DILocation(line: 142, column: 24, scope: !2873)
!2950 = !DILocation(line: 142, column: 41, scope: !2873)
!2951 = !DILocation(line: 146, column: 33, scope: !2872)
!2952 = !DILocation(line: 146, column: 28, scope: !2872)
!2953 = !DILocation(line: 0, scope: !2872)
!2954 = !DILocation(line: 151, column: 35, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2872, file: !932, line: 151, column: 15)
!2956 = !DILocation(line: 151, column: 23, scope: !2955)
!2957 = !DILocation(line: 151, column: 42, scope: !2955)
!2958 = !DILocation(line: 151, column: 15, scope: !2872)
!2959 = !DILocation(line: 154, column: 23, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2872, file: !932, line: 154, column: 15)
!2961 = !DILocation(line: 154, column: 33, scope: !2960)
!2962 = !DILocation(line: 157, column: 44, scope: !2877)
!2963 = !DILocation(line: 157, column: 34, scope: !2877)
!2964 = !DILocation(line: 157, column: 15, scope: !2872)
!2965 = !DILocation(line: 0, scope: !2876)
!2966 = !DILocation(line: 160, column: 24, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2876, file: !932, line: 160, column: 19)
!2968 = !DILocation(line: 152, column: 21, scope: !2955)
!2969 = !DILocalVariable(name: "ptr", arg: 1, scope: !2970, file: !2971, line: 2057, type: !168)
!2970 = distinct !DISubprogram(name: "rpl_realloc", scope: !2971, file: !2971, line: 2057, type: !2972, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !931, retainedNodes: !2974)
!2971 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!168, !168, !170}
!2974 = !{!2969, !2975}
!2975 = !DILocalVariable(name: "size", arg: 2, scope: !2970, file: !2971, line: 2057, type: !170)
!2976 = !DILocation(line: 0, scope: !2970, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 166, column: 20, scope: !2872)
!2978 = !DILocation(line: 2059, column: 24, scope: !2970, inlinedAt: !2977)
!2979 = !DILocation(line: 2059, column: 10, scope: !2970, inlinedAt: !2977)
!2980 = !DILocation(line: 167, column: 16, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2872, file: !932, line: 167, column: 15)
!2982 = !DILocation(line: 167, column: 15, scope: !2872)
!2983 = !DILocation(line: 165, column: 34, scope: !2872)
!2984 = !DILocation(line: 171, column: 42, scope: !2872)
!2985 = !DILocation(line: 177, column: 13, scope: !2880)
!2986 = !DILocation(line: 177, column: 11, scope: !2863)
!2987 = !DILocation(line: 179, column: 42, scope: !2879)
!2988 = !DILocation(line: 0, scope: !2879)
!2989 = !DILocation(line: 180, column: 15, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2879, file: !932, line: 180, column: 15)
!2991 = !DILocation(line: 180, column: 15, scope: !2879)
!2992 = !DILocation(line: 182, column: 15, scope: !2879)
!2993 = !DILocalVariable(name: "__dest", arg: 1, scope: !2994, file: !2105, line: 26, type: !2997)
!2994 = distinct !DISubprogram(name: "memcpy", scope: !2105, file: !2105, line: 26, type: !2995, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !931, retainedNodes: !2998)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!168, !2997, !1249, !170}
!2997 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !168)
!2998 = !{!2993, !2999, !3000}
!2999 = !DILocalVariable(name: "__src", arg: 2, scope: !2994, file: !2105, line: 26, type: !1249)
!3000 = !DILocalVariable(name: "__len", arg: 3, scope: !2994, file: !2105, line: 26, type: !170)
!3001 = !DILocation(line: 0, scope: !2994, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 183, column: 13, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2879, file: !932, line: 182, column: 15)
!3004 = !DILocation(line: 29, column: 10, scope: !2994, inlinedAt: !3002)
!3005 = !DILocation(line: 183, column: 13, scope: !3003)
!3006 = !DILocation(line: 185, column: 25, scope: !3003)
!3007 = !DILocation(line: 185, column: 23, scope: !3003)
!3008 = !DILocation(line: 186, column: 20, scope: !2879)
!3009 = !DILocation(line: 187, column: 24, scope: !2879)
!3010 = !DILocation(line: 188, column: 9, scope: !2879)
!3011 = !DILocation(line: 192, column: 18, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2863, file: !932, line: 192, column: 11)
!3013 = !DILocation(line: 192, column: 40, scope: !3012)
!3014 = !DILocation(line: 192, column: 21, scope: !3012)
!3015 = !DILocation(line: 192, column: 11, scope: !2863)
!3016 = !DILocation(line: 195, column: 11, scope: !2811)
!3017 = !DILocation(line: 194, column: 5, scope: !2863)
!3018 = distinct !{!3018, !2908, !3019, !1149}
!3019 = !DILocation(line: 195, column: 26, scope: !2811)
!3020 = !DILocation(line: 206, column: 2, scope: !2811)
!3021 = !DILocation(line: 207, column: 12, scope: !2811)
!3022 = !DILocation(line: 208, column: 13, scope: !2811)
!3023 = !DILocation(line: 209, column: 10, scope: !2811)
!3024 = !DILocation(line: 201, column: 34, scope: !2811)
!3025 = !DILocation(line: 199, column: 13, scope: !2811)
!3026 = !DILocation(line: 201, column: 27, scope: !2811)
!3027 = !DILocation(line: 210, column: 1, scope: !2811)
!3028 = !DISubprogram(name: "malloc", scope: !1226, file: !1226, line: 540, type: !3029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!168, !170}
!3031 = !DISubprogram(name: "realloc", scope: !1226, file: !1226, line: 551, type: !2972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3032 = distinct !DISubprogram(name: "getprogname", scope: !935, file: !935, line: 54, type: !3033, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !934)
!3033 = !DISubroutineType(types: !989)
!3034 = !DILocation(line: 58, column: 10, scope: !3032)
!3035 = !DILocation(line: 58, column: 3, scope: !3032)
!3036 = distinct !DISubprogram(name: "memchr2", scope: !937, file: !937, line: 36, type: !3037, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !936, retainedNodes: !3039)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!168, !1250, !118, !118, !170}
!3039 = !{!3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3051, !3055, !3057, !3058, !3059, !3061, !3062}
!3040 = !DILocalVariable(name: "s", arg: 1, scope: !3036, file: !937, line: 36, type: !1250)
!3041 = !DILocalVariable(name: "c1_in", arg: 2, scope: !3036, file: !937, line: 36, type: !118)
!3042 = !DILocalVariable(name: "c2_in", arg: 3, scope: !3036, file: !937, line: 36, type: !118)
!3043 = !DILocalVariable(name: "n", arg: 4, scope: !3036, file: !937, line: 36, type: !170)
!3044 = !DILocalVariable(name: "c1", scope: !3036, file: !937, line: 45, type: !175)
!3045 = !DILocalVariable(name: "c2", scope: !3036, file: !937, line: 46, type: !175)
!3046 = !DILocalVariable(name: "void_ptr", scope: !3036, file: !937, line: 53, type: !1250)
!3047 = !DILocalVariable(name: "char_ptr", scope: !3048, file: !937, line: 58, type: !940)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !937, line: 57, column: 5)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !937, line: 54, column: 3)
!3050 = distinct !DILexicalBlock(scope: !3036, file: !937, line: 54, column: 3)
!3051 = !DILocalVariable(name: "longword_ptr", scope: !3036, file: !937, line: 64, type: !3052)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3054)
!3054 = !DIDerivedType(tag: DW_TAG_typedef, name: "longword", scope: !3036, file: !937, line: 43, baseType: !172)
!3055 = !DILocalVariable(name: "repeated_one", scope: !3056, file: !937, line: 73, type: !3054)
!3056 = distinct !DILexicalBlock(scope: !3036, file: !937, line: 68, column: 3)
!3057 = !DILocalVariable(name: "repeated_c1", scope: !3056, file: !937, line: 74, type: !3054)
!3058 = !DILocalVariable(name: "repeated_c2", scope: !3056, file: !937, line: 75, type: !3054)
!3059 = !DILocalVariable(name: "longword1", scope: !3060, file: !937, line: 130, type: !3054)
!3060 = distinct !DILexicalBlock(scope: !3056, file: !937, line: 129, column: 7)
!3061 = !DILocalVariable(name: "longword2", scope: !3060, file: !937, line: 131, type: !3054)
!3062 = !DILocalVariable(name: "char_ptr", scope: !3063, file: !937, line: 143, type: !940)
!3063 = distinct !DILexicalBlock(scope: !3036, file: !937, line: 142, column: 3)
!3064 = !DILocation(line: 0, scope: !3036)
!3065 = !DILocation(line: 48, column: 7, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3036, file: !937, line: 48, column: 7)
!3067 = !DILocation(line: 48, column: 13, scope: !3066)
!3068 = !DILocation(line: 48, column: 10, scope: !3066)
!3069 = !DILocation(line: 48, column: 7, scope: !3036)
!3070 = !DILocation(line: 55, column: 10, scope: !3049)
!3071 = !DILocation(line: 55, column: 14, scope: !3049)
!3072 = !DILocation(line: 54, column: 3, scope: !3050)
!3073 = !DILocation(line: 49, column: 21, scope: !3066)
!3074 = !DILocation(line: 49, column: 5, scope: !3066)
!3075 = !DILocation(line: 0, scope: !3048)
!3076 = !DILocation(line: 59, column: 11, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3048, file: !937, line: 59, column: 11)
!3078 = !DILocation(line: 59, column: 21, scope: !3077)
!3079 = !DILocation(line: 59, column: 27, scope: !3077)
!3080 = !DILocation(line: 56, column: 8, scope: !3049)
!3081 = distinct !{!3081, !3072, !3082, !1149}
!3082 = !DILocation(line: 62, column: 5, scope: !3050)
!3083 = !DILocation(line: 54, column: 17, scope: !3050)
!3084 = !DILocation(line: 0, scope: !3056)
!3085 = !DILocation(line: 76, column: 17, scope: !3056)
!3086 = !DILocation(line: 77, column: 17, scope: !3056)
!3087 = !DILocation(line: 81, column: 21, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3089, file: !937, line: 79, column: 7)
!3089 = distinct !DILexicalBlock(scope: !3056, file: !937, line: 78, column: 9)
!3090 = !DILocation(line: 82, column: 21, scope: !3088)
!3091 = !DILocation(line: 128, column: 5, scope: !3056)
!3092 = !DILocation(line: 64, column: 19, scope: !3036)
!3093 = !DILocation(line: 128, column: 14, scope: !3056)
!3094 = !DILocation(line: 130, column: 30, scope: !3060)
!3095 = !DILocation(line: 130, column: 44, scope: !3060)
!3096 = !DILocation(line: 0, scope: !3060)
!3097 = !DILocation(line: 131, column: 44, scope: !3060)
!3098 = !DILocation(line: 133, column: 27, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3060, file: !937, line: 133, column: 13)
!3100 = !DILocation(line: 133, column: 45, scope: !3099)
!3101 = !DILocation(line: 133, column: 43, scope: !3099)
!3102 = !DILocation(line: 134, column: 29, scope: !3099)
!3103 = !DILocation(line: 134, column: 47, scope: !3099)
!3104 = !DILocation(line: 134, column: 45, scope: !3099)
!3105 = !DILocation(line: 134, column: 15, scope: !3099)
!3106 = !DILocation(line: 135, column: 14, scope: !3099)
!3107 = !DILocation(line: 135, column: 37, scope: !3099)
!3108 = !DILocation(line: 133, column: 13, scope: !3060)
!3109 = !DILocation(line: 0, scope: !3063)
!3110 = !DILocation(line: 152, column: 14, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3112, file: !937, line: 152, column: 5)
!3112 = distinct !DILexicalBlock(scope: !3063, file: !937, line: 152, column: 5)
!3113 = !DILocation(line: 152, column: 5, scope: !3112)
!3114 = !DILocation(line: 154, column: 13, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !937, line: 154, column: 13)
!3116 = distinct !DILexicalBlock(scope: !3111, file: !937, line: 153, column: 7)
!3117 = !DILocation(line: 154, column: 23, scope: !3115)
!3118 = !DILocation(line: 154, column: 29, scope: !3115)
!3119 = !DILocation(line: 152, column: 19, scope: !3111)
!3120 = !DILocation(line: 152, column: 24, scope: !3111)
!3121 = distinct !{!3121, !3113, !3122, !1149}
!3122 = !DILocation(line: 156, column: 7, scope: !3112)
!3123 = !DILocation(line: 160, column: 1, scope: !3036)
!3124 = !DISubprogram(name: "memchr", scope: !1222, file: !1222, line: 107, type: !3125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!168, !1250, !118, !170}
!3127 = distinct !DISubprogram(name: "set_program_name", scope: !668, file: !668, line: 37, type: !1052, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3128)
!3128 = !{!3129, !3130, !3131}
!3129 = !DILocalVariable(name: "argv0", arg: 1, scope: !3127, file: !668, line: 37, type: !173)
!3130 = !DILocalVariable(name: "slash", scope: !3127, file: !668, line: 44, type: !173)
!3131 = !DILocalVariable(name: "base", scope: !3127, file: !668, line: 45, type: !173)
!3132 = !DILocation(line: 0, scope: !3127)
!3133 = !DILocation(line: 44, column: 23, scope: !3127)
!3134 = !DILocation(line: 45, column: 22, scope: !3127)
!3135 = !DILocation(line: 46, column: 17, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3127, file: !668, line: 46, column: 7)
!3137 = !DILocation(line: 46, column: 9, scope: !3136)
!3138 = !DILocation(line: 46, column: 25, scope: !3136)
!3139 = !DILocation(line: 46, column: 40, scope: !3136)
!3140 = !DILocalVariable(name: "__s1", arg: 1, scope: !3141, file: !1115, line: 974, type: !1250)
!3141 = distinct !DISubprogram(name: "memeq", scope: !1115, file: !1115, line: 974, type: !3142, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3144)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!224, !1250, !1250, !170}
!3144 = !{!3140, !3145, !3146}
!3145 = !DILocalVariable(name: "__s2", arg: 2, scope: !3141, file: !1115, line: 974, type: !1250)
!3146 = !DILocalVariable(name: "__n", arg: 3, scope: !3141, file: !1115, line: 974, type: !170)
!3147 = !DILocation(line: 0, scope: !3141, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 46, column: 28, scope: !3136)
!3149 = !DILocation(line: 976, column: 11, scope: !3141, inlinedAt: !3148)
!3150 = !DILocation(line: 976, column: 10, scope: !3141, inlinedAt: !3148)
!3151 = !DILocation(line: 46, column: 7, scope: !3127)
!3152 = !DILocation(line: 49, column: 11, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3154, file: !668, line: 49, column: 11)
!3154 = distinct !DILexicalBlock(scope: !3136, file: !668, line: 47, column: 5)
!3155 = !DILocation(line: 49, column: 36, scope: !3153)
!3156 = !DILocation(line: 49, column: 11, scope: !3154)
!3157 = !DILocation(line: 65, column: 16, scope: !3127)
!3158 = !DILocation(line: 71, column: 27, scope: !3127)
!3159 = !DILocation(line: 74, column: 33, scope: !3127)
!3160 = !DILocation(line: 76, column: 1, scope: !3127)
!3161 = !DISubprogram(name: "strrchr", scope: !1222, file: !1222, line: 273, type: !1237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3162 = distinct !DIAssignID()
!3163 = !DILocation(line: 0, scope: !677)
!3164 = distinct !DIAssignID()
!3165 = !DILocation(line: 40, column: 29, scope: !677)
!3166 = !DILocation(line: 41, column: 19, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !677, file: !678, line: 41, column: 7)
!3168 = !DILocation(line: 41, column: 7, scope: !677)
!3169 = !DILocation(line: 47, column: 3, scope: !677)
!3170 = !DILocation(line: 48, column: 3, scope: !677)
!3171 = !DILocalVariable(name: "ps", arg: 1, scope: !3172, file: !3173, line: 1135, type: !3176)
!3172 = distinct !DISubprogram(name: "mbszero", scope: !3173, file: !3173, line: 1135, type: !3174, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3177)
!3173 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!3174 = !DISubroutineType(types: !3175)
!3175 = !{null, !3176}
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!3177 = !{!3171}
!3178 = !DILocation(line: 0, scope: !3172, inlinedAt: !3179)
!3179 = distinct !DILocation(line: 48, column: 18, scope: !677)
!3180 = !DILocalVariable(name: "__dest", arg: 1, scope: !3181, file: !2105, line: 57, type: !168)
!3181 = distinct !DISubprogram(name: "memset", scope: !2105, file: !2105, line: 57, type: !3182, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3184)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!168, !168, !118, !170}
!3184 = !{!3180, !3185, !3186}
!3185 = !DILocalVariable(name: "__ch", arg: 2, scope: !3181, file: !2105, line: 57, type: !118)
!3186 = !DILocalVariable(name: "__len", arg: 3, scope: !3181, file: !2105, line: 57, type: !170)
!3187 = !DILocation(line: 0, scope: !3181, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 1137, column: 3, scope: !3172, inlinedAt: !3179)
!3189 = !DILocation(line: 59, column: 10, scope: !3181, inlinedAt: !3188)
!3190 = !DILocation(line: 49, column: 7, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !677, file: !678, line: 49, column: 7)
!3192 = !DILocation(line: 49, column: 39, scope: !3191)
!3193 = !DILocation(line: 49, column: 44, scope: !3191)
!3194 = !DILocation(line: 54, column: 1, scope: !677)
!3195 = !DISubprogram(name: "mbrtoc32", scope: !689, file: !689, line: 57, type: !3196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!170, !3198, !1092, !170, !3200}
!3198 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3199)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3176)
!3201 = distinct !DISubprogram(name: "clone_quoting_options", scope: !708, file: !708, line: 113, type: !3202, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3205)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!3204, !3204}
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!3205 = !{!3206, !3207, !3208}
!3206 = !DILocalVariable(name: "o", arg: 1, scope: !3201, file: !708, line: 113, type: !3204)
!3207 = !DILocalVariable(name: "saved_errno", scope: !3201, file: !708, line: 115, type: !118)
!3208 = !DILocalVariable(name: "p", scope: !3201, file: !708, line: 116, type: !3204)
!3209 = !DILocation(line: 0, scope: !3201)
!3210 = !DILocation(line: 115, column: 21, scope: !3201)
!3211 = !DILocation(line: 116, column: 40, scope: !3201)
!3212 = !DILocation(line: 116, column: 31, scope: !3201)
!3213 = !DILocation(line: 118, column: 9, scope: !3201)
!3214 = !DILocation(line: 119, column: 3, scope: !3201)
!3215 = distinct !DISubprogram(name: "get_quoting_style", scope: !708, file: !708, line: 124, type: !3216, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3220)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!731, !3218}
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !746)
!3220 = !{!3221}
!3221 = !DILocalVariable(name: "o", arg: 1, scope: !3215, file: !708, line: 124, type: !3218)
!3222 = !DILocation(line: 0, scope: !3215)
!3223 = !DILocation(line: 126, column: 11, scope: !3215)
!3224 = !DILocation(line: 126, column: 46, scope: !3215)
!3225 = !{!3226, !1103, i64 0}
!3226 = !{!"quoting_options", !1103, i64 0, !1103, i64 4, !1026, i64 8, !1025, i64 40, !1025, i64 48}
!3227 = !DILocation(line: 126, column: 3, scope: !3215)
!3228 = distinct !DISubprogram(name: "set_quoting_style", scope: !708, file: !708, line: 132, type: !3229, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3231)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{null, !3204, !731}
!3231 = !{!3232, !3233}
!3232 = !DILocalVariable(name: "o", arg: 1, scope: !3228, file: !708, line: 132, type: !3204)
!3233 = !DILocalVariable(name: "s", arg: 2, scope: !3228, file: !708, line: 132, type: !731)
!3234 = !DILocation(line: 0, scope: !3228)
!3235 = !DILocation(line: 134, column: 4, scope: !3228)
!3236 = !DILocation(line: 134, column: 45, scope: !3228)
!3237 = !DILocation(line: 135, column: 1, scope: !3228)
!3238 = distinct !DISubprogram(name: "set_char_quoting", scope: !708, file: !708, line: 143, type: !3239, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3241)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!118, !3204, !4, !118}
!3241 = !{!3242, !3243, !3244, !3245, !3246, !3248, !3249}
!3242 = !DILocalVariable(name: "o", arg: 1, scope: !3238, file: !708, line: 143, type: !3204)
!3243 = !DILocalVariable(name: "c", arg: 2, scope: !3238, file: !708, line: 143, type: !4)
!3244 = !DILocalVariable(name: "i", arg: 3, scope: !3238, file: !708, line: 143, type: !118)
!3245 = !DILocalVariable(name: "uc", scope: !3238, file: !708, line: 145, type: !175)
!3246 = !DILocalVariable(name: "p", scope: !3238, file: !708, line: 146, type: !3247)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!3248 = !DILocalVariable(name: "shift", scope: !3238, file: !708, line: 148, type: !118)
!3249 = !DILocalVariable(name: "r", scope: !3238, file: !708, line: 149, type: !112)
!3250 = !DILocation(line: 0, scope: !3238)
!3251 = !DILocation(line: 147, column: 6, scope: !3238)
!3252 = !DILocation(line: 147, column: 41, scope: !3238)
!3253 = !DILocation(line: 147, column: 62, scope: !3238)
!3254 = !DILocation(line: 147, column: 57, scope: !3238)
!3255 = !DILocation(line: 148, column: 15, scope: !3238)
!3256 = !DILocation(line: 149, column: 21, scope: !3238)
!3257 = !DILocation(line: 149, column: 24, scope: !3238)
!3258 = !DILocation(line: 149, column: 34, scope: !3238)
!3259 = !DILocation(line: 150, column: 19, scope: !3238)
!3260 = !DILocation(line: 150, column: 24, scope: !3238)
!3261 = !DILocation(line: 150, column: 6, scope: !3238)
!3262 = !DILocation(line: 151, column: 3, scope: !3238)
!3263 = distinct !DISubprogram(name: "set_quoting_flags", scope: !708, file: !708, line: 159, type: !3264, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3266)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!118, !3204, !118}
!3266 = !{!3267, !3268, !3269}
!3267 = !DILocalVariable(name: "o", arg: 1, scope: !3263, file: !708, line: 159, type: !3204)
!3268 = !DILocalVariable(name: "i", arg: 2, scope: !3263, file: !708, line: 159, type: !118)
!3269 = !DILocalVariable(name: "r", scope: !3263, file: !708, line: 163, type: !118)
!3270 = !DILocation(line: 0, scope: !3263)
!3271 = !DILocation(line: 161, column: 8, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3263, file: !708, line: 161, column: 7)
!3273 = !DILocation(line: 161, column: 7, scope: !3263)
!3274 = !DILocation(line: 163, column: 14, scope: !3263)
!3275 = !{!3226, !1103, i64 4}
!3276 = !DILocation(line: 164, column: 12, scope: !3263)
!3277 = !DILocation(line: 165, column: 3, scope: !3263)
!3278 = distinct !DISubprogram(name: "set_custom_quoting", scope: !708, file: !708, line: 169, type: !3279, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3281)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{null, !3204, !173, !173}
!3281 = !{!3282, !3283, !3284}
!3282 = !DILocalVariable(name: "o", arg: 1, scope: !3278, file: !708, line: 169, type: !3204)
!3283 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3278, file: !708, line: 170, type: !173)
!3284 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3278, file: !708, line: 170, type: !173)
!3285 = !DILocation(line: 0, scope: !3278)
!3286 = !DILocation(line: 172, column: 8, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3278, file: !708, line: 172, column: 7)
!3288 = !DILocation(line: 172, column: 7, scope: !3278)
!3289 = !DILocation(line: 174, column: 12, scope: !3278)
!3290 = !DILocation(line: 175, column: 8, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3278, file: !708, line: 175, column: 7)
!3292 = !DILocation(line: 175, column: 19, scope: !3291)
!3293 = !DILocation(line: 176, column: 5, scope: !3291)
!3294 = !DILocation(line: 177, column: 6, scope: !3278)
!3295 = !DILocation(line: 177, column: 17, scope: !3278)
!3296 = !{!3226, !1025, i64 40}
!3297 = !DILocation(line: 178, column: 6, scope: !3278)
!3298 = !DILocation(line: 178, column: 18, scope: !3278)
!3299 = !{!3226, !1025, i64 48}
!3300 = !DILocation(line: 179, column: 1, scope: !3278)
!3301 = !DISubprogram(name: "abort", scope: !1226, file: !1226, line: 598, type: !663, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3302 = distinct !DISubprogram(name: "quotearg_buffer", scope: !708, file: !708, line: 774, type: !3303, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3305)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!170, !167, !170, !173, !170, !3218}
!3305 = !{!3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313}
!3306 = !DILocalVariable(name: "buffer", arg: 1, scope: !3302, file: !708, line: 774, type: !167)
!3307 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3302, file: !708, line: 774, type: !170)
!3308 = !DILocalVariable(name: "arg", arg: 3, scope: !3302, file: !708, line: 775, type: !173)
!3309 = !DILocalVariable(name: "argsize", arg: 4, scope: !3302, file: !708, line: 775, type: !170)
!3310 = !DILocalVariable(name: "o", arg: 5, scope: !3302, file: !708, line: 776, type: !3218)
!3311 = !DILocalVariable(name: "p", scope: !3302, file: !708, line: 778, type: !3218)
!3312 = !DILocalVariable(name: "saved_errno", scope: !3302, file: !708, line: 779, type: !118)
!3313 = !DILocalVariable(name: "r", scope: !3302, file: !708, line: 780, type: !170)
!3314 = !DILocation(line: 0, scope: !3302)
!3315 = !DILocation(line: 778, column: 37, scope: !3302)
!3316 = !DILocation(line: 779, column: 21, scope: !3302)
!3317 = !DILocation(line: 781, column: 43, scope: !3302)
!3318 = !DILocation(line: 781, column: 53, scope: !3302)
!3319 = !DILocation(line: 781, column: 63, scope: !3302)
!3320 = !DILocation(line: 782, column: 43, scope: !3302)
!3321 = !DILocation(line: 782, column: 58, scope: !3302)
!3322 = !DILocation(line: 780, column: 14, scope: !3302)
!3323 = !DILocation(line: 783, column: 9, scope: !3302)
!3324 = !DILocation(line: 784, column: 3, scope: !3302)
!3325 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !708, file: !708, line: 251, type: !3326, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3330)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!170, !167, !170, !173, !170, !731, !118, !3328, !173, !173}
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!3330 = !{!3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3356, !3358, !3361, !3362, !3363, !3364, !3367, !3368, !3370, !3371, !3374, !3378, !3379, !3387, !3390, !3391, !3392}
!3331 = !DILocalVariable(name: "buffer", arg: 1, scope: !3325, file: !708, line: 251, type: !167)
!3332 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3325, file: !708, line: 251, type: !170)
!3333 = !DILocalVariable(name: "arg", arg: 3, scope: !3325, file: !708, line: 252, type: !173)
!3334 = !DILocalVariable(name: "argsize", arg: 4, scope: !3325, file: !708, line: 252, type: !170)
!3335 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3325, file: !708, line: 253, type: !731)
!3336 = !DILocalVariable(name: "flags", arg: 6, scope: !3325, file: !708, line: 253, type: !118)
!3337 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3325, file: !708, line: 254, type: !3328)
!3338 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3325, file: !708, line: 255, type: !173)
!3339 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3325, file: !708, line: 256, type: !173)
!3340 = !DILocalVariable(name: "unibyte_locale", scope: !3325, file: !708, line: 258, type: !224)
!3341 = !DILocalVariable(name: "len", scope: !3325, file: !708, line: 260, type: !170)
!3342 = !DILocalVariable(name: "orig_buffersize", scope: !3325, file: !708, line: 261, type: !170)
!3343 = !DILocalVariable(name: "quote_string", scope: !3325, file: !708, line: 262, type: !173)
!3344 = !DILocalVariable(name: "quote_string_len", scope: !3325, file: !708, line: 263, type: !170)
!3345 = !DILocalVariable(name: "backslash_escapes", scope: !3325, file: !708, line: 264, type: !224)
!3346 = !DILocalVariable(name: "elide_outer_quotes", scope: !3325, file: !708, line: 265, type: !224)
!3347 = !DILocalVariable(name: "encountered_single_quote", scope: !3325, file: !708, line: 266, type: !224)
!3348 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3325, file: !708, line: 267, type: !224)
!3349 = !DILabel(scope: !3325, name: "process_input", file: !708, line: 308)
!3350 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3325, file: !708, line: 309, type: !224)
!3351 = !DILocalVariable(name: "lq", scope: !3352, file: !708, line: 361, type: !173)
!3352 = distinct !DILexicalBlock(scope: !3353, file: !708, line: 361, column: 11)
!3353 = distinct !DILexicalBlock(scope: !3354, file: !708, line: 360, column: 13)
!3354 = distinct !DILexicalBlock(scope: !3355, file: !708, line: 333, column: 7)
!3355 = distinct !DILexicalBlock(scope: !3325, file: !708, line: 312, column: 5)
!3356 = !DILocalVariable(name: "i", scope: !3357, file: !708, line: 395, type: !170)
!3357 = distinct !DILexicalBlock(scope: !3325, file: !708, line: 395, column: 3)
!3358 = !DILocalVariable(name: "is_right_quote", scope: !3359, file: !708, line: 397, type: !224)
!3359 = distinct !DILexicalBlock(scope: !3360, file: !708, line: 396, column: 5)
!3360 = distinct !DILexicalBlock(scope: !3357, file: !708, line: 395, column: 3)
!3361 = !DILocalVariable(name: "escaping", scope: !3359, file: !708, line: 398, type: !224)
!3362 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3359, file: !708, line: 399, type: !224)
!3363 = !DILocalVariable(name: "c", scope: !3359, file: !708, line: 417, type: !175)
!3364 = !DILabel(scope: !3365, name: "c_and_shell_escape", file: !708, line: 502)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !708, line: 478, column: 9)
!3366 = distinct !DILexicalBlock(scope: !3359, file: !708, line: 419, column: 9)
!3367 = !DILabel(scope: !3365, name: "c_escape", file: !708, line: 507)
!3368 = !DILocalVariable(name: "m", scope: !3369, file: !708, line: 598, type: !170)
!3369 = distinct !DILexicalBlock(scope: !3366, file: !708, line: 596, column: 11)
!3370 = !DILocalVariable(name: "printable", scope: !3369, file: !708, line: 600, type: !224)
!3371 = !DILocalVariable(name: "mbs", scope: !3372, file: !708, line: 609, type: !780)
!3372 = distinct !DILexicalBlock(scope: !3373, file: !708, line: 608, column: 15)
!3373 = distinct !DILexicalBlock(scope: !3369, file: !708, line: 602, column: 17)
!3374 = !DILocalVariable(name: "w", scope: !3375, file: !708, line: 618, type: !688)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !708, line: 617, column: 19)
!3376 = distinct !DILexicalBlock(scope: !3377, file: !708, line: 616, column: 17)
!3377 = distinct !DILexicalBlock(scope: !3372, file: !708, line: 616, column: 17)
!3378 = !DILocalVariable(name: "bytes", scope: !3375, file: !708, line: 619, type: !170)
!3379 = !DILocalVariable(name: "j", scope: !3380, file: !708, line: 648, type: !170)
!3380 = distinct !DILexicalBlock(scope: !3381, file: !708, line: 648, column: 29)
!3381 = distinct !DILexicalBlock(scope: !3382, file: !708, line: 647, column: 27)
!3382 = distinct !DILexicalBlock(scope: !3383, file: !708, line: 645, column: 29)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !708, line: 636, column: 23)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !708, line: 628, column: 30)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !708, line: 623, column: 30)
!3386 = distinct !DILexicalBlock(scope: !3375, file: !708, line: 621, column: 25)
!3387 = !DILocalVariable(name: "ilim", scope: !3388, file: !708, line: 674, type: !170)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !708, line: 671, column: 15)
!3389 = distinct !DILexicalBlock(scope: !3369, file: !708, line: 670, column: 17)
!3390 = !DILabel(scope: !3359, name: "store_escape", file: !708, line: 709)
!3391 = !DILabel(scope: !3359, name: "store_c", file: !708, line: 712)
!3392 = !DILabel(scope: !3325, name: "force_outer_quoting_style", file: !708, line: 753)
!3393 = distinct !DIAssignID()
!3394 = distinct !DIAssignID()
!3395 = distinct !DIAssignID()
!3396 = distinct !DIAssignID()
!3397 = distinct !DIAssignID()
!3398 = !DILocation(line: 0, scope: !3372)
!3399 = distinct !DIAssignID()
!3400 = !DILocation(line: 0, scope: !3375)
!3401 = !DILocation(line: 0, scope: !3325)
!3402 = !DILocation(line: 258, column: 25, scope: !3325)
!3403 = !DILocation(line: 258, column: 36, scope: !3325)
!3404 = !DILocation(line: 265, column: 8, scope: !3325)
!3405 = !DILocation(line: 267, column: 3, scope: !3325)
!3406 = !DILocation(line: 261, column: 10, scope: !3325)
!3407 = !DILocation(line: 262, column: 15, scope: !3325)
!3408 = !DILocation(line: 263, column: 10, scope: !3325)
!3409 = !DILocation(line: 264, column: 8, scope: !3325)
!3410 = !DILocation(line: 266, column: 8, scope: !3325)
!3411 = !DILocation(line: 267, column: 8, scope: !3325)
!3412 = !DILocation(line: 308, column: 2, scope: !3325)
!3413 = !DILocation(line: 311, column: 3, scope: !3325)
!3414 = !DILocation(line: 318, column: 11, scope: !3355)
!3415 = !DILocation(line: 318, column: 12, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3355, file: !708, line: 318, column: 11)
!3417 = !DILocation(line: 319, column: 9, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3419, file: !708, line: 319, column: 9)
!3419 = distinct !DILexicalBlock(scope: !3416, file: !708, line: 319, column: 9)
!3420 = !DILocation(line: 319, column: 9, scope: !3419)
!3421 = !DILocation(line: 0, scope: !771, inlinedAt: !3422)
!3422 = distinct !DILocation(line: 357, column: 26, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3424, file: !708, line: 335, column: 11)
!3424 = distinct !DILexicalBlock(scope: !3354, file: !708, line: 334, column: 13)
!3425 = !DILocation(line: 199, column: 29, scope: !771, inlinedAt: !3422)
!3426 = !DILocation(line: 201, column: 19, scope: !3427, inlinedAt: !3422)
!3427 = distinct !DILexicalBlock(scope: !771, file: !708, line: 201, column: 7)
!3428 = !DILocation(line: 201, column: 7, scope: !771, inlinedAt: !3422)
!3429 = !DILocation(line: 229, column: 3, scope: !771, inlinedAt: !3422)
!3430 = !DILocation(line: 230, column: 3, scope: !771, inlinedAt: !3422)
!3431 = !DILocalVariable(name: "ps", arg: 1, scope: !3432, file: !3173, line: 1135, type: !3435)
!3432 = distinct !DISubprogram(name: "mbszero", scope: !3173, file: !3173, line: 1135, type: !3433, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3436)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{null, !3435}
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!3436 = !{!3431}
!3437 = !DILocation(line: 0, scope: !3432, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 230, column: 18, scope: !771, inlinedAt: !3422)
!3439 = !DILocalVariable(name: "__dest", arg: 1, scope: !3440, file: !2105, line: 57, type: !168)
!3440 = distinct !DISubprogram(name: "memset", scope: !2105, file: !2105, line: 57, type: !3182, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3441)
!3441 = !{!3439, !3442, !3443}
!3442 = !DILocalVariable(name: "__ch", arg: 2, scope: !3440, file: !2105, line: 57, type: !118)
!3443 = !DILocalVariable(name: "__len", arg: 3, scope: !3440, file: !2105, line: 57, type: !170)
!3444 = !DILocation(line: 0, scope: !3440, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 1137, column: 3, scope: !3432, inlinedAt: !3438)
!3446 = !DILocation(line: 59, column: 10, scope: !3440, inlinedAt: !3445)
!3447 = !DILocation(line: 231, column: 7, scope: !3448, inlinedAt: !3422)
!3448 = distinct !DILexicalBlock(scope: !771, file: !708, line: 231, column: 7)
!3449 = !DILocation(line: 231, column: 40, scope: !3448, inlinedAt: !3422)
!3450 = !DILocation(line: 231, column: 45, scope: !3448, inlinedAt: !3422)
!3451 = !DILocation(line: 235, column: 1, scope: !771, inlinedAt: !3422)
!3452 = !DILocation(line: 0, scope: !771, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 358, column: 27, scope: !3423)
!3454 = !DILocation(line: 199, column: 29, scope: !771, inlinedAt: !3453)
!3455 = !DILocation(line: 201, column: 19, scope: !3427, inlinedAt: !3453)
!3456 = !DILocation(line: 201, column: 7, scope: !771, inlinedAt: !3453)
!3457 = !DILocation(line: 229, column: 3, scope: !771, inlinedAt: !3453)
!3458 = !DILocation(line: 230, column: 3, scope: !771, inlinedAt: !3453)
!3459 = !DILocation(line: 0, scope: !3432, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 230, column: 18, scope: !771, inlinedAt: !3453)
!3461 = !DILocation(line: 0, scope: !3440, inlinedAt: !3462)
!3462 = distinct !DILocation(line: 1137, column: 3, scope: !3432, inlinedAt: !3460)
!3463 = !DILocation(line: 59, column: 10, scope: !3440, inlinedAt: !3462)
!3464 = !DILocation(line: 231, column: 7, scope: !3448, inlinedAt: !3453)
!3465 = !DILocation(line: 231, column: 40, scope: !3448, inlinedAt: !3453)
!3466 = !DILocation(line: 231, column: 45, scope: !3448, inlinedAt: !3453)
!3467 = !DILocation(line: 235, column: 1, scope: !771, inlinedAt: !3453)
!3468 = !DILocation(line: 360, column: 14, scope: !3353)
!3469 = !DILocation(line: 360, column: 13, scope: !3354)
!3470 = !DILocation(line: 0, scope: !3352)
!3471 = !DILocation(line: 361, column: 45, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3352, file: !708, line: 361, column: 11)
!3473 = !DILocation(line: 361, column: 11, scope: !3352)
!3474 = !DILocation(line: 362, column: 13, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3476, file: !708, line: 362, column: 13)
!3476 = distinct !DILexicalBlock(scope: !3472, file: !708, line: 362, column: 13)
!3477 = !DILocation(line: 362, column: 13, scope: !3476)
!3478 = !DILocation(line: 361, column: 52, scope: !3472)
!3479 = distinct !{!3479, !3473, !3480, !1149}
!3480 = !DILocation(line: 362, column: 13, scope: !3352)
!3481 = !DILocation(line: 260, column: 10, scope: !3325)
!3482 = !DILocation(line: 365, column: 28, scope: !3354)
!3483 = !DILocation(line: 367, column: 7, scope: !3355)
!3484 = !DILocation(line: 370, column: 7, scope: !3355)
!3485 = !DILocation(line: 373, column: 7, scope: !3355)
!3486 = !DILocation(line: 376, column: 12, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3355, file: !708, line: 376, column: 11)
!3488 = !DILocation(line: 376, column: 11, scope: !3355)
!3489 = !DILocation(line: 381, column: 12, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3355, file: !708, line: 381, column: 11)
!3491 = !DILocation(line: 381, column: 11, scope: !3355)
!3492 = !DILocation(line: 382, column: 9, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3494, file: !708, line: 382, column: 9)
!3494 = distinct !DILexicalBlock(scope: !3490, file: !708, line: 382, column: 9)
!3495 = !DILocation(line: 382, column: 9, scope: !3494)
!3496 = !DILocation(line: 389, column: 7, scope: !3355)
!3497 = !DILocation(line: 392, column: 7, scope: !3355)
!3498 = !DILocation(line: 0, scope: !3357)
!3499 = !DILocation(line: 395, column: 8, scope: !3357)
!3500 = !DILocation(line: 309, column: 8, scope: !3325)
!3501 = !DILocation(line: 395, scope: !3357)
!3502 = !DILocation(line: 395, column: 34, scope: !3360)
!3503 = !DILocation(line: 395, column: 26, scope: !3360)
!3504 = !DILocation(line: 395, column: 48, scope: !3360)
!3505 = !DILocation(line: 395, column: 55, scope: !3360)
!3506 = !DILocation(line: 395, column: 3, scope: !3357)
!3507 = !DILocation(line: 395, column: 67, scope: !3360)
!3508 = !DILocation(line: 0, scope: !3359)
!3509 = !DILocation(line: 402, column: 11, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3359, file: !708, line: 401, column: 11)
!3511 = !DILocation(line: 404, column: 17, scope: !3510)
!3512 = !DILocation(line: 405, column: 39, scope: !3510)
!3513 = !DILocation(line: 409, column: 32, scope: !3510)
!3514 = !DILocation(line: 405, column: 19, scope: !3510)
!3515 = !DILocation(line: 405, column: 15, scope: !3510)
!3516 = !DILocation(line: 410, column: 11, scope: !3510)
!3517 = !DILocation(line: 410, column: 25, scope: !3510)
!3518 = !DILocalVariable(name: "__s1", arg: 1, scope: !3519, file: !1115, line: 974, type: !1250)
!3519 = distinct !DISubprogram(name: "memeq", scope: !1115, file: !1115, line: 974, type: !3142, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3520)
!3520 = !{!3518, !3521, !3522}
!3521 = !DILocalVariable(name: "__s2", arg: 2, scope: !3519, file: !1115, line: 974, type: !1250)
!3522 = !DILocalVariable(name: "__n", arg: 3, scope: !3519, file: !1115, line: 974, type: !170)
!3523 = !DILocation(line: 0, scope: !3519, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 410, column: 14, scope: !3510)
!3525 = !DILocation(line: 976, column: 11, scope: !3519, inlinedAt: !3524)
!3526 = !DILocation(line: 976, column: 10, scope: !3519, inlinedAt: !3524)
!3527 = !DILocation(line: 401, column: 11, scope: !3359)
!3528 = !DILocation(line: 417, column: 25, scope: !3359)
!3529 = !DILocation(line: 418, column: 7, scope: !3359)
!3530 = !DILocation(line: 421, column: 15, scope: !3366)
!3531 = !DILocation(line: 423, column: 15, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !708, line: 423, column: 15)
!3533 = distinct !DILexicalBlock(scope: !3534, file: !708, line: 422, column: 13)
!3534 = distinct !DILexicalBlock(scope: !3366, file: !708, line: 421, column: 15)
!3535 = !DILocation(line: 423, column: 15, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3532, file: !708, line: 423, column: 15)
!3537 = !DILocation(line: 423, column: 15, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !708, line: 423, column: 15)
!3539 = distinct !DILexicalBlock(scope: !3540, file: !708, line: 423, column: 15)
!3540 = distinct !DILexicalBlock(scope: !3536, file: !708, line: 423, column: 15)
!3541 = !DILocation(line: 423, column: 15, scope: !3539)
!3542 = !DILocation(line: 423, column: 15, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3544, file: !708, line: 423, column: 15)
!3544 = distinct !DILexicalBlock(scope: !3540, file: !708, line: 423, column: 15)
!3545 = !DILocation(line: 423, column: 15, scope: !3544)
!3546 = !DILocation(line: 423, column: 15, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !708, line: 423, column: 15)
!3548 = distinct !DILexicalBlock(scope: !3540, file: !708, line: 423, column: 15)
!3549 = !DILocation(line: 423, column: 15, scope: !3548)
!3550 = !DILocation(line: 423, column: 15, scope: !3540)
!3551 = !DILocation(line: 423, column: 15, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3553, file: !708, line: 423, column: 15)
!3553 = distinct !DILexicalBlock(scope: !3532, file: !708, line: 423, column: 15)
!3554 = !DILocation(line: 423, column: 15, scope: !3553)
!3555 = !DILocation(line: 431, column: 19, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3533, file: !708, line: 430, column: 19)
!3557 = !DILocation(line: 431, column: 24, scope: !3556)
!3558 = !DILocation(line: 431, column: 28, scope: !3556)
!3559 = !DILocation(line: 431, column: 38, scope: !3556)
!3560 = !DILocation(line: 431, column: 48, scope: !3556)
!3561 = !DILocation(line: 431, column: 59, scope: !3556)
!3562 = !DILocation(line: 433, column: 19, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3564, file: !708, line: 433, column: 19)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !708, line: 433, column: 19)
!3565 = distinct !DILexicalBlock(scope: !3556, file: !708, line: 432, column: 17)
!3566 = !DILocation(line: 433, column: 19, scope: !3564)
!3567 = !DILocation(line: 434, column: 19, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !708, line: 434, column: 19)
!3569 = distinct !DILexicalBlock(scope: !3565, file: !708, line: 434, column: 19)
!3570 = !DILocation(line: 434, column: 19, scope: !3569)
!3571 = !DILocation(line: 435, column: 17, scope: !3565)
!3572 = !DILocation(line: 442, column: 20, scope: !3534)
!3573 = !DILocation(line: 447, column: 11, scope: !3366)
!3574 = !DILocation(line: 450, column: 19, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3366, file: !708, line: 448, column: 13)
!3576 = !DILocation(line: 456, column: 19, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3575, file: !708, line: 455, column: 19)
!3578 = !DILocation(line: 456, column: 24, scope: !3577)
!3579 = !DILocation(line: 456, column: 28, scope: !3577)
!3580 = !DILocation(line: 456, column: 38, scope: !3577)
!3581 = !DILocation(line: 456, column: 41, scope: !3577)
!3582 = !DILocation(line: 456, column: 52, scope: !3577)
!3583 = !DILocation(line: 455, column: 19, scope: !3575)
!3584 = !DILocation(line: 457, column: 25, scope: !3577)
!3585 = !DILocation(line: 457, column: 17, scope: !3577)
!3586 = !DILocation(line: 464, column: 25, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3577, file: !708, line: 458, column: 19)
!3588 = !DILocation(line: 468, column: 21, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3590, file: !708, line: 468, column: 21)
!3590 = distinct !DILexicalBlock(scope: !3587, file: !708, line: 468, column: 21)
!3591 = !DILocation(line: 468, column: 21, scope: !3590)
!3592 = !DILocation(line: 469, column: 21, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3594, file: !708, line: 469, column: 21)
!3594 = distinct !DILexicalBlock(scope: !3587, file: !708, line: 469, column: 21)
!3595 = !DILocation(line: 469, column: 21, scope: !3594)
!3596 = !DILocation(line: 470, column: 21, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3598, file: !708, line: 470, column: 21)
!3598 = distinct !DILexicalBlock(scope: !3587, file: !708, line: 470, column: 21)
!3599 = !DILocation(line: 470, column: 21, scope: !3598)
!3600 = !DILocation(line: 471, column: 21, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3602, file: !708, line: 471, column: 21)
!3602 = distinct !DILexicalBlock(scope: !3587, file: !708, line: 471, column: 21)
!3603 = !DILocation(line: 471, column: 21, scope: !3602)
!3604 = !DILocation(line: 472, column: 21, scope: !3587)
!3605 = !DILocation(line: 482, column: 33, scope: !3365)
!3606 = !DILocation(line: 483, column: 33, scope: !3365)
!3607 = !DILocation(line: 485, column: 33, scope: !3365)
!3608 = !DILocation(line: 486, column: 33, scope: !3365)
!3609 = !DILocation(line: 487, column: 33, scope: !3365)
!3610 = !DILocation(line: 490, column: 17, scope: !3365)
!3611 = !DILocation(line: 492, column: 21, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3613, file: !708, line: 491, column: 15)
!3613 = distinct !DILexicalBlock(scope: !3365, file: !708, line: 490, column: 17)
!3614 = !DILocation(line: 499, column: 35, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3365, file: !708, line: 499, column: 17)
!3616 = !DILocation(line: 499, column: 57, scope: !3615)
!3617 = !DILocation(line: 0, scope: !3365)
!3618 = !DILocation(line: 502, column: 11, scope: !3365)
!3619 = !DILocation(line: 504, column: 17, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3365, file: !708, line: 503, column: 17)
!3621 = !DILocation(line: 507, column: 11, scope: !3365)
!3622 = !DILocation(line: 508, column: 17, scope: !3365)
!3623 = !DILocation(line: 517, column: 15, scope: !3366)
!3624 = !DILocation(line: 517, column: 40, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3366, file: !708, line: 517, column: 15)
!3626 = !DILocation(line: 517, column: 47, scope: !3625)
!3627 = !DILocation(line: 517, column: 18, scope: !3625)
!3628 = !DILocation(line: 521, column: 17, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3366, file: !708, line: 521, column: 15)
!3630 = !DILocation(line: 521, column: 15, scope: !3366)
!3631 = !DILocation(line: 525, column: 11, scope: !3366)
!3632 = !DILocation(line: 537, column: 15, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3366, file: !708, line: 536, column: 15)
!3634 = !DILocation(line: 544, column: 15, scope: !3366)
!3635 = !DILocation(line: 546, column: 19, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3637, file: !708, line: 545, column: 13)
!3637 = distinct !DILexicalBlock(scope: !3366, file: !708, line: 544, column: 15)
!3638 = !DILocation(line: 549, column: 19, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3636, file: !708, line: 549, column: 19)
!3640 = !DILocation(line: 549, column: 30, scope: !3639)
!3641 = !DILocation(line: 558, column: 15, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3643, file: !708, line: 558, column: 15)
!3643 = distinct !DILexicalBlock(scope: !3636, file: !708, line: 558, column: 15)
!3644 = !DILocation(line: 558, column: 15, scope: !3643)
!3645 = !DILocation(line: 559, column: 15, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3647, file: !708, line: 559, column: 15)
!3647 = distinct !DILexicalBlock(scope: !3636, file: !708, line: 559, column: 15)
!3648 = !DILocation(line: 559, column: 15, scope: !3647)
!3649 = !DILocation(line: 560, column: 15, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3651, file: !708, line: 560, column: 15)
!3651 = distinct !DILexicalBlock(scope: !3636, file: !708, line: 560, column: 15)
!3652 = !DILocation(line: 560, column: 15, scope: !3651)
!3653 = !DILocation(line: 562, column: 13, scope: !3636)
!3654 = !DILocation(line: 602, column: 17, scope: !3369)
!3655 = !DILocation(line: 0, scope: !3369)
!3656 = !DILocation(line: 605, column: 29, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3373, file: !708, line: 603, column: 15)
!3658 = !DILocation(line: 605, column: 27, scope: !3657)
!3659 = !DILocation(line: 606, column: 15, scope: !3657)
!3660 = !DILocation(line: 609, column: 17, scope: !3372)
!3661 = !DILocation(line: 0, scope: !3432, inlinedAt: !3662)
!3662 = distinct !DILocation(line: 609, column: 32, scope: !3372)
!3663 = !DILocation(line: 0, scope: !3440, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 1137, column: 3, scope: !3432, inlinedAt: !3662)
!3665 = !DILocation(line: 59, column: 10, scope: !3440, inlinedAt: !3664)
!3666 = !DILocation(line: 613, column: 29, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3372, file: !708, line: 613, column: 21)
!3668 = !DILocation(line: 613, column: 21, scope: !3372)
!3669 = !DILocation(line: 614, column: 29, scope: !3667)
!3670 = !DILocation(line: 614, column: 19, scope: !3667)
!3671 = !DILocation(line: 618, column: 21, scope: !3375)
!3672 = !DILocation(line: 620, column: 54, scope: !3375)
!3673 = !DILocation(line: 619, column: 36, scope: !3375)
!3674 = !DILocation(line: 621, column: 25, scope: !3375)
!3675 = !DILocation(line: 631, column: 38, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3384, file: !708, line: 629, column: 23)
!3677 = !DILocation(line: 631, column: 48, scope: !3676)
!3678 = !DILocation(line: 626, column: 25, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3385, file: !708, line: 624, column: 23)
!3680 = !DILocation(line: 631, column: 51, scope: !3676)
!3681 = !DILocation(line: 631, column: 25, scope: !3676)
!3682 = !DILocation(line: 632, column: 28, scope: !3676)
!3683 = !DILocation(line: 631, column: 34, scope: !3676)
!3684 = distinct !{!3684, !3681, !3682, !1149}
!3685 = !DILocation(line: 0, scope: !3380)
!3686 = !DILocation(line: 646, column: 29, scope: !3382)
!3687 = !DILocation(line: 649, column: 39, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3380, file: !708, line: 648, column: 29)
!3689 = !DILocation(line: 649, column: 31, scope: !3688)
!3690 = !DILocation(line: 648, column: 60, scope: !3688)
!3691 = !DILocation(line: 648, column: 50, scope: !3688)
!3692 = !DILocation(line: 648, column: 29, scope: !3380)
!3693 = distinct !{!3693, !3692, !3694, !1149}
!3694 = !DILocation(line: 654, column: 33, scope: !3380)
!3695 = !DILocation(line: 657, column: 43, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3383, file: !708, line: 657, column: 29)
!3697 = !DILocalVariable(name: "wc", arg: 1, scope: !3698, file: !3699, line: 865, type: !3702)
!3698 = distinct !DISubprogram(name: "c32isprint", scope: !3699, file: !3699, line: 865, type: !3700, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3704)
!3699 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!118, !3702}
!3702 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3703, line: 20, baseType: !112)
!3703 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3704 = !{!3697}
!3705 = !DILocation(line: 0, scope: !3698, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 657, column: 31, scope: !3696)
!3707 = !DILocation(line: 871, column: 10, scope: !3698, inlinedAt: !3706)
!3708 = !DILocation(line: 657, column: 31, scope: !3696)
!3709 = !DILocation(line: 664, column: 23, scope: !3375)
!3710 = !DILocation(line: 665, column: 19, scope: !3376)
!3711 = !DILocation(line: 666, column: 15, scope: !3373)
!3712 = !DILocation(line: 0, scope: !3373)
!3713 = !DILocation(line: 670, column: 19, scope: !3389)
!3714 = !DILocation(line: 670, column: 23, scope: !3389)
!3715 = !DILocation(line: 674, column: 33, scope: !3388)
!3716 = !DILocation(line: 0, scope: !3388)
!3717 = !DILocation(line: 676, column: 17, scope: !3388)
!3718 = !DILocation(line: 398, column: 12, scope: !3359)
!3719 = !DILocation(line: 678, column: 43, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3721, file: !708, line: 678, column: 25)
!3721 = distinct !DILexicalBlock(scope: !3722, file: !708, line: 677, column: 19)
!3722 = distinct !DILexicalBlock(scope: !3723, file: !708, line: 676, column: 17)
!3723 = distinct !DILexicalBlock(scope: !3388, file: !708, line: 676, column: 17)
!3724 = !DILocation(line: 680, column: 25, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3726, file: !708, line: 680, column: 25)
!3726 = distinct !DILexicalBlock(scope: !3720, file: !708, line: 679, column: 23)
!3727 = !DILocation(line: 680, column: 25, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3725, file: !708, line: 680, column: 25)
!3729 = !DILocation(line: 680, column: 25, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3731, file: !708, line: 680, column: 25)
!3731 = distinct !DILexicalBlock(scope: !3732, file: !708, line: 680, column: 25)
!3732 = distinct !DILexicalBlock(scope: !3728, file: !708, line: 680, column: 25)
!3733 = !DILocation(line: 680, column: 25, scope: !3731)
!3734 = !DILocation(line: 680, column: 25, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3736, file: !708, line: 680, column: 25)
!3736 = distinct !DILexicalBlock(scope: !3732, file: !708, line: 680, column: 25)
!3737 = !DILocation(line: 680, column: 25, scope: !3736)
!3738 = !DILocation(line: 680, column: 25, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3740, file: !708, line: 680, column: 25)
!3740 = distinct !DILexicalBlock(scope: !3732, file: !708, line: 680, column: 25)
!3741 = !DILocation(line: 680, column: 25, scope: !3740)
!3742 = !DILocation(line: 680, column: 25, scope: !3732)
!3743 = !DILocation(line: 680, column: 25, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3745, file: !708, line: 680, column: 25)
!3745 = distinct !DILexicalBlock(scope: !3725, file: !708, line: 680, column: 25)
!3746 = !DILocation(line: 680, column: 25, scope: !3745)
!3747 = !DILocation(line: 681, column: 25, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3749, file: !708, line: 681, column: 25)
!3749 = distinct !DILexicalBlock(scope: !3726, file: !708, line: 681, column: 25)
!3750 = !DILocation(line: 681, column: 25, scope: !3749)
!3751 = !DILocation(line: 682, column: 25, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3753, file: !708, line: 682, column: 25)
!3753 = distinct !DILexicalBlock(scope: !3726, file: !708, line: 682, column: 25)
!3754 = !DILocation(line: 682, column: 25, scope: !3753)
!3755 = !DILocation(line: 683, column: 38, scope: !3726)
!3756 = !DILocation(line: 683, column: 33, scope: !3726)
!3757 = !DILocation(line: 684, column: 23, scope: !3726)
!3758 = !DILocation(line: 685, column: 30, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3720, file: !708, line: 685, column: 30)
!3760 = !DILocation(line: 685, column: 30, scope: !3720)
!3761 = !DILocation(line: 687, column: 25, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3763, file: !708, line: 687, column: 25)
!3763 = distinct !DILexicalBlock(scope: !3764, file: !708, line: 687, column: 25)
!3764 = distinct !DILexicalBlock(scope: !3759, file: !708, line: 686, column: 23)
!3765 = !DILocation(line: 687, column: 25, scope: !3763)
!3766 = !DILocation(line: 689, column: 23, scope: !3764)
!3767 = !DILocation(line: 690, column: 35, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3721, file: !708, line: 690, column: 25)
!3769 = !DILocation(line: 690, column: 30, scope: !3768)
!3770 = !DILocation(line: 690, column: 25, scope: !3721)
!3771 = !DILocation(line: 692, column: 21, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3773, file: !708, line: 692, column: 21)
!3773 = distinct !DILexicalBlock(scope: !3721, file: !708, line: 692, column: 21)
!3774 = !DILocation(line: 692, column: 21, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3776, file: !708, line: 692, column: 21)
!3776 = distinct !DILexicalBlock(scope: !3777, file: !708, line: 692, column: 21)
!3777 = distinct !DILexicalBlock(scope: !3772, file: !708, line: 692, column: 21)
!3778 = !DILocation(line: 692, column: 21, scope: !3776)
!3779 = !DILocation(line: 692, column: 21, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3781, file: !708, line: 692, column: 21)
!3781 = distinct !DILexicalBlock(scope: !3777, file: !708, line: 692, column: 21)
!3782 = !DILocation(line: 692, column: 21, scope: !3781)
!3783 = !DILocation(line: 692, column: 21, scope: !3777)
!3784 = !DILocation(line: 0, scope: !3721)
!3785 = !DILocation(line: 693, column: 21, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3787, file: !708, line: 693, column: 21)
!3787 = distinct !DILexicalBlock(scope: !3721, file: !708, line: 693, column: 21)
!3788 = !DILocation(line: 693, column: 21, scope: !3787)
!3789 = !DILocation(line: 694, column: 25, scope: !3721)
!3790 = !DILocation(line: 676, column: 17, scope: !3722)
!3791 = distinct !{!3791, !3792, !3793}
!3792 = !DILocation(line: 676, column: 17, scope: !3723)
!3793 = !DILocation(line: 695, column: 19, scope: !3723)
!3794 = !DILocation(line: 409, column: 30, scope: !3510)
!3795 = !DILocation(line: 702, column: 34, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3359, file: !708, line: 702, column: 11)
!3797 = !DILocation(line: 704, column: 14, scope: !3796)
!3798 = !DILocation(line: 705, column: 14, scope: !3796)
!3799 = !DILocation(line: 705, column: 35, scope: !3796)
!3800 = !DILocation(line: 705, column: 17, scope: !3796)
!3801 = !DILocation(line: 705, column: 47, scope: !3796)
!3802 = !DILocation(line: 705, column: 65, scope: !3796)
!3803 = !DILocation(line: 706, column: 11, scope: !3796)
!3804 = !DILocation(line: 702, column: 11, scope: !3359)
!3805 = !DILocation(line: 395, column: 15, scope: !3357)
!3806 = !DILocation(line: 709, column: 5, scope: !3359)
!3807 = !DILocation(line: 710, column: 7, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3359, file: !708, line: 710, column: 7)
!3809 = !DILocation(line: 710, column: 7, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3808, file: !708, line: 710, column: 7)
!3811 = !DILocation(line: 710, column: 7, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3813, file: !708, line: 710, column: 7)
!3813 = distinct !DILexicalBlock(scope: !3814, file: !708, line: 710, column: 7)
!3814 = distinct !DILexicalBlock(scope: !3810, file: !708, line: 710, column: 7)
!3815 = !DILocation(line: 710, column: 7, scope: !3813)
!3816 = !DILocation(line: 710, column: 7, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3818, file: !708, line: 710, column: 7)
!3818 = distinct !DILexicalBlock(scope: !3814, file: !708, line: 710, column: 7)
!3819 = !DILocation(line: 710, column: 7, scope: !3818)
!3820 = !DILocation(line: 710, column: 7, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3822, file: !708, line: 710, column: 7)
!3822 = distinct !DILexicalBlock(scope: !3814, file: !708, line: 710, column: 7)
!3823 = !DILocation(line: 710, column: 7, scope: !3822)
!3824 = !DILocation(line: 710, column: 7, scope: !3814)
!3825 = !DILocation(line: 710, column: 7, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3827, file: !708, line: 710, column: 7)
!3827 = distinct !DILexicalBlock(scope: !3808, file: !708, line: 710, column: 7)
!3828 = !DILocation(line: 710, column: 7, scope: !3827)
!3829 = !DILocation(line: 712, column: 5, scope: !3359)
!3830 = !DILocation(line: 713, column: 7, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3832, file: !708, line: 713, column: 7)
!3832 = distinct !DILexicalBlock(scope: !3359, file: !708, line: 713, column: 7)
!3833 = !DILocation(line: 417, column: 21, scope: !3359)
!3834 = !DILocation(line: 713, column: 7, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3836, file: !708, line: 713, column: 7)
!3836 = distinct !DILexicalBlock(scope: !3837, file: !708, line: 713, column: 7)
!3837 = distinct !DILexicalBlock(scope: !3831, file: !708, line: 713, column: 7)
!3838 = !DILocation(line: 713, column: 7, scope: !3836)
!3839 = !DILocation(line: 713, column: 7, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3841, file: !708, line: 713, column: 7)
!3841 = distinct !DILexicalBlock(scope: !3837, file: !708, line: 713, column: 7)
!3842 = !DILocation(line: 713, column: 7, scope: !3841)
!3843 = !DILocation(line: 713, column: 7, scope: !3837)
!3844 = !DILocation(line: 714, column: 7, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3846, file: !708, line: 714, column: 7)
!3846 = distinct !DILexicalBlock(scope: !3359, file: !708, line: 714, column: 7)
!3847 = !DILocation(line: 714, column: 7, scope: !3846)
!3848 = !DILocation(line: 716, column: 13, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3359, file: !708, line: 716, column: 11)
!3850 = !DILocation(line: 716, column: 11, scope: !3359)
!3851 = !DILocation(line: 718, column: 5, scope: !3360)
!3852 = !DILocation(line: 395, column: 82, scope: !3360)
!3853 = !DILocation(line: 395, column: 3, scope: !3360)
!3854 = distinct !{!3854, !3506, !3855, !1149}
!3855 = !DILocation(line: 718, column: 5, scope: !3357)
!3856 = !DILocation(line: 720, column: 11, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3325, file: !708, line: 720, column: 7)
!3858 = !DILocation(line: 720, column: 16, scope: !3857)
!3859 = !DILocation(line: 728, column: 51, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3325, file: !708, line: 728, column: 7)
!3861 = !DILocation(line: 731, column: 11, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3863, file: !708, line: 731, column: 11)
!3863 = distinct !DILexicalBlock(scope: !3860, file: !708, line: 730, column: 5)
!3864 = !DILocation(line: 731, column: 11, scope: !3863)
!3865 = !DILocation(line: 732, column: 16, scope: !3862)
!3866 = !DILocation(line: 732, column: 9, scope: !3862)
!3867 = !DILocation(line: 736, column: 18, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3862, file: !708, line: 736, column: 16)
!3869 = !DILocation(line: 736, column: 29, scope: !3868)
!3870 = !DILocation(line: 745, column: 7, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3325, file: !708, line: 745, column: 7)
!3872 = !DILocation(line: 745, column: 20, scope: !3871)
!3873 = !DILocation(line: 746, column: 12, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3875, file: !708, line: 746, column: 5)
!3875 = distinct !DILexicalBlock(scope: !3871, file: !708, line: 746, column: 5)
!3876 = !DILocation(line: 746, column: 5, scope: !3875)
!3877 = !DILocation(line: 747, column: 7, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3879, file: !708, line: 747, column: 7)
!3879 = distinct !DILexicalBlock(scope: !3874, file: !708, line: 747, column: 7)
!3880 = !DILocation(line: 747, column: 7, scope: !3879)
!3881 = !DILocation(line: 746, column: 39, scope: !3874)
!3882 = distinct !{!3882, !3876, !3883, !1149}
!3883 = !DILocation(line: 747, column: 7, scope: !3875)
!3884 = !DILocation(line: 749, column: 11, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3325, file: !708, line: 749, column: 7)
!3886 = !DILocation(line: 749, column: 7, scope: !3325)
!3887 = !DILocation(line: 750, column: 5, scope: !3885)
!3888 = !DILocation(line: 750, column: 17, scope: !3885)
!3889 = !DILocation(line: 753, column: 2, scope: !3325)
!3890 = !DILocation(line: 756, column: 51, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3325, file: !708, line: 756, column: 7)
!3892 = !DILocation(line: 756, column: 21, scope: !3891)
!3893 = !DILocation(line: 760, column: 42, scope: !3325)
!3894 = !DILocation(line: 758, column: 10, scope: !3325)
!3895 = !DILocation(line: 758, column: 3, scope: !3325)
!3896 = !DILocation(line: 762, column: 1, scope: !3325)
!3897 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1226, file: !1226, line: 98, type: !3898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!170}
!3900 = !DISubprogram(name: "iswprint", scope: !3901, file: !3901, line: 120, type: !3700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3901 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3902 = distinct !DISubprogram(name: "quotearg_alloc", scope: !708, file: !708, line: 788, type: !3903, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3905)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!167, !173, !170, !3218}
!3905 = !{!3906, !3907, !3908}
!3906 = !DILocalVariable(name: "arg", arg: 1, scope: !3902, file: !708, line: 788, type: !173)
!3907 = !DILocalVariable(name: "argsize", arg: 2, scope: !3902, file: !708, line: 788, type: !170)
!3908 = !DILocalVariable(name: "o", arg: 3, scope: !3902, file: !708, line: 789, type: !3218)
!3909 = !DILocation(line: 0, scope: !3902)
!3910 = !DILocalVariable(name: "arg", arg: 1, scope: !3911, file: !708, line: 801, type: !173)
!3911 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !708, file: !708, line: 801, type: !3912, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3914)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!167, !173, !170, !955, !3218}
!3914 = !{!3910, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922}
!3915 = !DILocalVariable(name: "argsize", arg: 2, scope: !3911, file: !708, line: 801, type: !170)
!3916 = !DILocalVariable(name: "size", arg: 3, scope: !3911, file: !708, line: 801, type: !955)
!3917 = !DILocalVariable(name: "o", arg: 4, scope: !3911, file: !708, line: 802, type: !3218)
!3918 = !DILocalVariable(name: "p", scope: !3911, file: !708, line: 804, type: !3218)
!3919 = !DILocalVariable(name: "saved_errno", scope: !3911, file: !708, line: 805, type: !118)
!3920 = !DILocalVariable(name: "flags", scope: !3911, file: !708, line: 807, type: !118)
!3921 = !DILocalVariable(name: "bufsize", scope: !3911, file: !708, line: 808, type: !170)
!3922 = !DILocalVariable(name: "buf", scope: !3911, file: !708, line: 812, type: !167)
!3923 = !DILocation(line: 0, scope: !3911, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 791, column: 10, scope: !3902)
!3925 = !DILocation(line: 804, column: 37, scope: !3911, inlinedAt: !3924)
!3926 = !DILocation(line: 805, column: 21, scope: !3911, inlinedAt: !3924)
!3927 = !DILocation(line: 807, column: 18, scope: !3911, inlinedAt: !3924)
!3928 = !DILocation(line: 807, column: 24, scope: !3911, inlinedAt: !3924)
!3929 = !DILocation(line: 808, column: 72, scope: !3911, inlinedAt: !3924)
!3930 = !DILocation(line: 809, column: 56, scope: !3911, inlinedAt: !3924)
!3931 = !DILocation(line: 810, column: 49, scope: !3911, inlinedAt: !3924)
!3932 = !DILocation(line: 811, column: 49, scope: !3911, inlinedAt: !3924)
!3933 = !DILocation(line: 808, column: 20, scope: !3911, inlinedAt: !3924)
!3934 = !DILocation(line: 811, column: 62, scope: !3911, inlinedAt: !3924)
!3935 = !DILocation(line: 812, column: 15, scope: !3911, inlinedAt: !3924)
!3936 = !DILocation(line: 813, column: 60, scope: !3911, inlinedAt: !3924)
!3937 = !DILocation(line: 815, column: 32, scope: !3911, inlinedAt: !3924)
!3938 = !DILocation(line: 815, column: 47, scope: !3911, inlinedAt: !3924)
!3939 = !DILocation(line: 813, column: 3, scope: !3911, inlinedAt: !3924)
!3940 = !DILocation(line: 816, column: 9, scope: !3911, inlinedAt: !3924)
!3941 = !DILocation(line: 791, column: 3, scope: !3902)
!3942 = !DILocation(line: 0, scope: !3911)
!3943 = !DILocation(line: 804, column: 37, scope: !3911)
!3944 = !DILocation(line: 805, column: 21, scope: !3911)
!3945 = !DILocation(line: 807, column: 18, scope: !3911)
!3946 = !DILocation(line: 807, column: 27, scope: !3911)
!3947 = !DILocation(line: 807, column: 24, scope: !3911)
!3948 = !DILocation(line: 808, column: 72, scope: !3911)
!3949 = !DILocation(line: 809, column: 56, scope: !3911)
!3950 = !DILocation(line: 810, column: 49, scope: !3911)
!3951 = !DILocation(line: 811, column: 49, scope: !3911)
!3952 = !DILocation(line: 808, column: 20, scope: !3911)
!3953 = !DILocation(line: 811, column: 62, scope: !3911)
!3954 = !DILocation(line: 812, column: 15, scope: !3911)
!3955 = !DILocation(line: 813, column: 60, scope: !3911)
!3956 = !DILocation(line: 815, column: 32, scope: !3911)
!3957 = !DILocation(line: 815, column: 47, scope: !3911)
!3958 = !DILocation(line: 813, column: 3, scope: !3911)
!3959 = !DILocation(line: 816, column: 9, scope: !3911)
!3960 = !DILocation(line: 817, column: 7, scope: !3911)
!3961 = !DILocation(line: 818, column: 11, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3911, file: !708, line: 817, column: 7)
!3963 = !DILocation(line: 818, column: 5, scope: !3962)
!3964 = !DILocation(line: 819, column: 3, scope: !3911)
!3965 = distinct !DISubprogram(name: "quotearg_free", scope: !708, file: !708, line: 837, type: !663, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3966)
!3966 = !{!3967, !3968}
!3967 = !DILocalVariable(name: "sv", scope: !3965, file: !708, line: 839, type: !794)
!3968 = !DILocalVariable(name: "i", scope: !3969, file: !708, line: 840, type: !118)
!3969 = distinct !DILexicalBlock(scope: !3965, file: !708, line: 840, column: 3)
!3970 = !DILocation(line: 839, column: 24, scope: !3965)
!3971 = !DILocation(line: 0, scope: !3965)
!3972 = !DILocation(line: 0, scope: !3969)
!3973 = !DILocation(line: 840, column: 21, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3969, file: !708, line: 840, column: 3)
!3975 = !DILocation(line: 840, column: 3, scope: !3969)
!3976 = !DILocation(line: 842, column: 13, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3965, file: !708, line: 842, column: 7)
!3978 = !{!3979, !1025, i64 8}
!3979 = !{!"slotvec", !1304, i64 0, !1025, i64 8}
!3980 = !DILocation(line: 842, column: 17, scope: !3977)
!3981 = !DILocation(line: 842, column: 7, scope: !3965)
!3982 = !DILocation(line: 841, column: 17, scope: !3974)
!3983 = !DILocation(line: 841, column: 5, scope: !3974)
!3984 = !DILocation(line: 840, column: 32, scope: !3974)
!3985 = distinct !{!3985, !3975, !3986, !1149}
!3986 = !DILocation(line: 841, column: 20, scope: !3969)
!3987 = !DILocation(line: 844, column: 7, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3977, file: !708, line: 843, column: 5)
!3989 = !DILocation(line: 845, column: 21, scope: !3988)
!3990 = !{!3979, !1304, i64 0}
!3991 = !DILocation(line: 846, column: 20, scope: !3988)
!3992 = !DILocation(line: 847, column: 5, scope: !3988)
!3993 = !DILocation(line: 848, column: 10, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3965, file: !708, line: 848, column: 7)
!3995 = !DILocation(line: 848, column: 7, scope: !3965)
!3996 = !DILocation(line: 850, column: 7, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3994, file: !708, line: 849, column: 5)
!3998 = !DILocation(line: 851, column: 15, scope: !3997)
!3999 = !DILocation(line: 852, column: 5, scope: !3997)
!4000 = !DILocation(line: 853, column: 10, scope: !3965)
!4001 = !DILocation(line: 854, column: 1, scope: !3965)
!4002 = distinct !DISubprogram(name: "quotearg_n", scope: !708, file: !708, line: 919, type: !1219, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4003)
!4003 = !{!4004, !4005}
!4004 = !DILocalVariable(name: "n", arg: 1, scope: !4002, file: !708, line: 919, type: !118)
!4005 = !DILocalVariable(name: "arg", arg: 2, scope: !4002, file: !708, line: 919, type: !173)
!4006 = !DILocation(line: 0, scope: !4002)
!4007 = !DILocation(line: 921, column: 10, scope: !4002)
!4008 = !DILocation(line: 921, column: 3, scope: !4002)
!4009 = distinct !DISubprogram(name: "quotearg_n_options", scope: !708, file: !708, line: 866, type: !4010, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4012)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{!167, !118, !173, !170, !3218}
!4012 = !{!4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4023, !4024, !4026, !4027, !4028}
!4013 = !DILocalVariable(name: "n", arg: 1, scope: !4009, file: !708, line: 866, type: !118)
!4014 = !DILocalVariable(name: "arg", arg: 2, scope: !4009, file: !708, line: 866, type: !173)
!4015 = !DILocalVariable(name: "argsize", arg: 3, scope: !4009, file: !708, line: 866, type: !170)
!4016 = !DILocalVariable(name: "options", arg: 4, scope: !4009, file: !708, line: 867, type: !3218)
!4017 = !DILocalVariable(name: "saved_errno", scope: !4009, file: !708, line: 869, type: !118)
!4018 = !DILocalVariable(name: "sv", scope: !4009, file: !708, line: 871, type: !794)
!4019 = !DILocalVariable(name: "nslots_max", scope: !4009, file: !708, line: 873, type: !118)
!4020 = !DILocalVariable(name: "preallocated", scope: !4021, file: !708, line: 879, type: !224)
!4021 = distinct !DILexicalBlock(scope: !4022, file: !708, line: 878, column: 5)
!4022 = distinct !DILexicalBlock(scope: !4009, file: !708, line: 877, column: 7)
!4023 = !DILocalVariable(name: "new_nslots", scope: !4021, file: !708, line: 880, type: !968)
!4024 = !DILocalVariable(name: "size", scope: !4025, file: !708, line: 891, type: !170)
!4025 = distinct !DILexicalBlock(scope: !4009, file: !708, line: 890, column: 3)
!4026 = !DILocalVariable(name: "val", scope: !4025, file: !708, line: 892, type: !167)
!4027 = !DILocalVariable(name: "flags", scope: !4025, file: !708, line: 894, type: !118)
!4028 = !DILocalVariable(name: "qsize", scope: !4025, file: !708, line: 895, type: !170)
!4029 = distinct !DIAssignID()
!4030 = !DILocation(line: 0, scope: !4021)
!4031 = !DILocation(line: 0, scope: !4009)
!4032 = !DILocation(line: 869, column: 21, scope: !4009)
!4033 = !DILocation(line: 871, column: 24, scope: !4009)
!4034 = !DILocation(line: 874, column: 17, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4009, file: !708, line: 874, column: 7)
!4036 = !DILocation(line: 875, column: 5, scope: !4035)
!4037 = !DILocation(line: 877, column: 7, scope: !4022)
!4038 = !DILocation(line: 877, column: 14, scope: !4022)
!4039 = !DILocation(line: 877, column: 7, scope: !4009)
!4040 = !DILocation(line: 879, column: 31, scope: !4021)
!4041 = !DILocation(line: 880, column: 7, scope: !4021)
!4042 = !DILocation(line: 880, column: 26, scope: !4021)
!4043 = !DILocation(line: 880, column: 13, scope: !4021)
!4044 = distinct !DIAssignID()
!4045 = !DILocation(line: 882, column: 31, scope: !4021)
!4046 = !DILocation(line: 883, column: 33, scope: !4021)
!4047 = !DILocation(line: 883, column: 42, scope: !4021)
!4048 = !DILocation(line: 883, column: 31, scope: !4021)
!4049 = !DILocation(line: 882, column: 22, scope: !4021)
!4050 = !DILocation(line: 882, column: 15, scope: !4021)
!4051 = !DILocation(line: 884, column: 11, scope: !4021)
!4052 = !DILocation(line: 885, column: 15, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4021, file: !708, line: 884, column: 11)
!4054 = !{i64 0, i64 8, !1303, i64 8, i64 8, !1024}
!4055 = !DILocation(line: 885, column: 9, scope: !4053)
!4056 = !DILocation(line: 886, column: 20, scope: !4021)
!4057 = !DILocation(line: 886, column: 18, scope: !4021)
!4058 = !DILocation(line: 886, column: 32, scope: !4021)
!4059 = !DILocation(line: 886, column: 43, scope: !4021)
!4060 = !DILocation(line: 886, column: 53, scope: !4021)
!4061 = !DILocation(line: 0, scope: !3440, inlinedAt: !4062)
!4062 = distinct !DILocation(line: 886, column: 7, scope: !4021)
!4063 = !DILocation(line: 59, column: 10, scope: !3440, inlinedAt: !4062)
!4064 = !DILocation(line: 887, column: 16, scope: !4021)
!4065 = !DILocation(line: 887, column: 14, scope: !4021)
!4066 = !DILocation(line: 888, column: 5, scope: !4022)
!4067 = !DILocation(line: 888, column: 5, scope: !4021)
!4068 = !DILocation(line: 891, column: 19, scope: !4025)
!4069 = !DILocation(line: 891, column: 25, scope: !4025)
!4070 = !DILocation(line: 0, scope: !4025)
!4071 = !DILocation(line: 892, column: 23, scope: !4025)
!4072 = !DILocation(line: 894, column: 26, scope: !4025)
!4073 = !DILocation(line: 894, column: 32, scope: !4025)
!4074 = !DILocation(line: 896, column: 55, scope: !4025)
!4075 = !DILocation(line: 897, column: 55, scope: !4025)
!4076 = !DILocation(line: 898, column: 55, scope: !4025)
!4077 = !DILocation(line: 899, column: 55, scope: !4025)
!4078 = !DILocation(line: 895, column: 20, scope: !4025)
!4079 = !DILocation(line: 901, column: 14, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4025, file: !708, line: 901, column: 9)
!4081 = !DILocation(line: 901, column: 9, scope: !4025)
!4082 = !DILocation(line: 903, column: 35, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4080, file: !708, line: 902, column: 7)
!4084 = !DILocation(line: 903, column: 20, scope: !4083)
!4085 = !DILocation(line: 904, column: 17, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4083, file: !708, line: 904, column: 13)
!4087 = !DILocation(line: 904, column: 13, scope: !4083)
!4088 = !DILocation(line: 905, column: 11, scope: !4086)
!4089 = !DILocation(line: 906, column: 27, scope: !4083)
!4090 = !DILocation(line: 906, column: 19, scope: !4083)
!4091 = !DILocation(line: 907, column: 69, scope: !4083)
!4092 = !DILocation(line: 909, column: 44, scope: !4083)
!4093 = !DILocation(line: 910, column: 44, scope: !4083)
!4094 = !DILocation(line: 907, column: 9, scope: !4083)
!4095 = !DILocation(line: 911, column: 7, scope: !4083)
!4096 = !DILocation(line: 913, column: 11, scope: !4025)
!4097 = !DILocation(line: 914, column: 5, scope: !4025)
!4098 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !708, file: !708, line: 925, type: !4099, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4101)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!167, !118, !173, !170}
!4101 = !{!4102, !4103, !4104}
!4102 = !DILocalVariable(name: "n", arg: 1, scope: !4098, file: !708, line: 925, type: !118)
!4103 = !DILocalVariable(name: "arg", arg: 2, scope: !4098, file: !708, line: 925, type: !173)
!4104 = !DILocalVariable(name: "argsize", arg: 3, scope: !4098, file: !708, line: 925, type: !170)
!4105 = !DILocation(line: 0, scope: !4098)
!4106 = !DILocation(line: 927, column: 10, scope: !4098)
!4107 = !DILocation(line: 927, column: 3, scope: !4098)
!4108 = distinct !DISubprogram(name: "quotearg", scope: !708, file: !708, line: 931, type: !1228, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4109)
!4109 = !{!4110}
!4110 = !DILocalVariable(name: "arg", arg: 1, scope: !4108, file: !708, line: 931, type: !173)
!4111 = !DILocation(line: 0, scope: !4108)
!4112 = !DILocation(line: 0, scope: !4002, inlinedAt: !4113)
!4113 = distinct !DILocation(line: 933, column: 10, scope: !4108)
!4114 = !DILocation(line: 921, column: 10, scope: !4002, inlinedAt: !4113)
!4115 = !DILocation(line: 933, column: 3, scope: !4108)
!4116 = distinct !DISubprogram(name: "quotearg_mem", scope: !708, file: !708, line: 937, type: !4117, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4119)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!167, !173, !170}
!4119 = !{!4120, !4121}
!4120 = !DILocalVariable(name: "arg", arg: 1, scope: !4116, file: !708, line: 937, type: !173)
!4121 = !DILocalVariable(name: "argsize", arg: 2, scope: !4116, file: !708, line: 937, type: !170)
!4122 = !DILocation(line: 0, scope: !4116)
!4123 = !DILocation(line: 0, scope: !4098, inlinedAt: !4124)
!4124 = distinct !DILocation(line: 939, column: 10, scope: !4116)
!4125 = !DILocation(line: 927, column: 10, scope: !4098, inlinedAt: !4124)
!4126 = !DILocation(line: 939, column: 3, scope: !4116)
!4127 = distinct !DISubprogram(name: "quotearg_n_style", scope: !708, file: !708, line: 943, type: !4128, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4130)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!167, !118, !731, !173}
!4130 = !{!4131, !4132, !4133, !4134}
!4131 = !DILocalVariable(name: "n", arg: 1, scope: !4127, file: !708, line: 943, type: !118)
!4132 = !DILocalVariable(name: "s", arg: 2, scope: !4127, file: !708, line: 943, type: !731)
!4133 = !DILocalVariable(name: "arg", arg: 3, scope: !4127, file: !708, line: 943, type: !173)
!4134 = !DILocalVariable(name: "o", scope: !4127, file: !708, line: 945, type: !3219)
!4135 = distinct !DIAssignID()
!4136 = !DILocation(line: 0, scope: !4127)
!4137 = !DILocation(line: 945, column: 3, scope: !4127)
!4138 = !{!4139}
!4139 = distinct !{!4139, !4140, !"quoting_options_from_style: argument 0"}
!4140 = distinct !{!4140, !"quoting_options_from_style"}
!4141 = !DILocation(line: 945, column: 36, scope: !4127)
!4142 = !DILocalVariable(name: "style", arg: 1, scope: !4143, file: !708, line: 183, type: !731)
!4143 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !708, file: !708, line: 183, type: !4144, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4146)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!746, !731}
!4146 = !{!4142, !4147}
!4147 = !DILocalVariable(name: "o", scope: !4143, file: !708, line: 185, type: !746)
!4148 = !DILocation(line: 0, scope: !4143, inlinedAt: !4149)
!4149 = distinct !DILocation(line: 945, column: 36, scope: !4127)
!4150 = !DILocation(line: 185, column: 26, scope: !4143, inlinedAt: !4149)
!4151 = distinct !DIAssignID()
!4152 = !DILocation(line: 186, column: 13, scope: !4153, inlinedAt: !4149)
!4153 = distinct !DILexicalBlock(scope: !4143, file: !708, line: 186, column: 7)
!4154 = !DILocation(line: 186, column: 7, scope: !4143, inlinedAt: !4149)
!4155 = !DILocation(line: 187, column: 5, scope: !4153, inlinedAt: !4149)
!4156 = !DILocation(line: 188, column: 11, scope: !4143, inlinedAt: !4149)
!4157 = distinct !DIAssignID()
!4158 = !DILocation(line: 946, column: 10, scope: !4127)
!4159 = !DILocation(line: 947, column: 1, scope: !4127)
!4160 = !DILocation(line: 946, column: 3, scope: !4127)
!4161 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !708, file: !708, line: 950, type: !4162, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4164)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!167, !118, !731, !173, !170}
!4164 = !{!4165, !4166, !4167, !4168, !4169}
!4165 = !DILocalVariable(name: "n", arg: 1, scope: !4161, file: !708, line: 950, type: !118)
!4166 = !DILocalVariable(name: "s", arg: 2, scope: !4161, file: !708, line: 950, type: !731)
!4167 = !DILocalVariable(name: "arg", arg: 3, scope: !4161, file: !708, line: 951, type: !173)
!4168 = !DILocalVariable(name: "argsize", arg: 4, scope: !4161, file: !708, line: 951, type: !170)
!4169 = !DILocalVariable(name: "o", scope: !4161, file: !708, line: 953, type: !3219)
!4170 = distinct !DIAssignID()
!4171 = !DILocation(line: 0, scope: !4161)
!4172 = !DILocation(line: 953, column: 3, scope: !4161)
!4173 = !{!4174}
!4174 = distinct !{!4174, !4175, !"quoting_options_from_style: argument 0"}
!4175 = distinct !{!4175, !"quoting_options_from_style"}
!4176 = !DILocation(line: 953, column: 36, scope: !4161)
!4177 = !DILocation(line: 0, scope: !4143, inlinedAt: !4178)
!4178 = distinct !DILocation(line: 953, column: 36, scope: !4161)
!4179 = !DILocation(line: 185, column: 26, scope: !4143, inlinedAt: !4178)
!4180 = distinct !DIAssignID()
!4181 = !DILocation(line: 186, column: 13, scope: !4153, inlinedAt: !4178)
!4182 = !DILocation(line: 186, column: 7, scope: !4143, inlinedAt: !4178)
!4183 = !DILocation(line: 187, column: 5, scope: !4153, inlinedAt: !4178)
!4184 = !DILocation(line: 188, column: 11, scope: !4143, inlinedAt: !4178)
!4185 = distinct !DIAssignID()
!4186 = !DILocation(line: 954, column: 10, scope: !4161)
!4187 = !DILocation(line: 955, column: 1, scope: !4161)
!4188 = !DILocation(line: 954, column: 3, scope: !4161)
!4189 = distinct !DISubprogram(name: "quotearg_style", scope: !708, file: !708, line: 958, type: !4190, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4192)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!167, !731, !173}
!4192 = !{!4193, !4194}
!4193 = !DILocalVariable(name: "s", arg: 1, scope: !4189, file: !708, line: 958, type: !731)
!4194 = !DILocalVariable(name: "arg", arg: 2, scope: !4189, file: !708, line: 958, type: !173)
!4195 = distinct !DIAssignID()
!4196 = !DILocation(line: 0, scope: !4189)
!4197 = !DILocation(line: 0, scope: !4127, inlinedAt: !4198)
!4198 = distinct !DILocation(line: 960, column: 10, scope: !4189)
!4199 = !DILocation(line: 945, column: 3, scope: !4127, inlinedAt: !4198)
!4200 = !{!4201}
!4201 = distinct !{!4201, !4202, !"quoting_options_from_style: argument 0"}
!4202 = distinct !{!4202, !"quoting_options_from_style"}
!4203 = !DILocation(line: 945, column: 36, scope: !4127, inlinedAt: !4198)
!4204 = !DILocation(line: 0, scope: !4143, inlinedAt: !4205)
!4205 = distinct !DILocation(line: 945, column: 36, scope: !4127, inlinedAt: !4198)
!4206 = !DILocation(line: 185, column: 26, scope: !4143, inlinedAt: !4205)
!4207 = distinct !DIAssignID()
!4208 = !DILocation(line: 186, column: 13, scope: !4153, inlinedAt: !4205)
!4209 = !DILocation(line: 186, column: 7, scope: !4143, inlinedAt: !4205)
!4210 = !DILocation(line: 187, column: 5, scope: !4153, inlinedAt: !4205)
!4211 = !DILocation(line: 188, column: 11, scope: !4143, inlinedAt: !4205)
!4212 = distinct !DIAssignID()
!4213 = !DILocation(line: 946, column: 10, scope: !4127, inlinedAt: !4198)
!4214 = !DILocation(line: 947, column: 1, scope: !4127, inlinedAt: !4198)
!4215 = !DILocation(line: 960, column: 3, scope: !4189)
!4216 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !708, file: !708, line: 964, type: !4217, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4219)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!167, !731, !173, !170}
!4219 = !{!4220, !4221, !4222}
!4220 = !DILocalVariable(name: "s", arg: 1, scope: !4216, file: !708, line: 964, type: !731)
!4221 = !DILocalVariable(name: "arg", arg: 2, scope: !4216, file: !708, line: 964, type: !173)
!4222 = !DILocalVariable(name: "argsize", arg: 3, scope: !4216, file: !708, line: 964, type: !170)
!4223 = distinct !DIAssignID()
!4224 = !DILocation(line: 0, scope: !4216)
!4225 = !DILocation(line: 0, scope: !4161, inlinedAt: !4226)
!4226 = distinct !DILocation(line: 966, column: 10, scope: !4216)
!4227 = !DILocation(line: 953, column: 3, scope: !4161, inlinedAt: !4226)
!4228 = !{!4229}
!4229 = distinct !{!4229, !4230, !"quoting_options_from_style: argument 0"}
!4230 = distinct !{!4230, !"quoting_options_from_style"}
!4231 = !DILocation(line: 953, column: 36, scope: !4161, inlinedAt: !4226)
!4232 = !DILocation(line: 0, scope: !4143, inlinedAt: !4233)
!4233 = distinct !DILocation(line: 953, column: 36, scope: !4161, inlinedAt: !4226)
!4234 = !DILocation(line: 185, column: 26, scope: !4143, inlinedAt: !4233)
!4235 = distinct !DIAssignID()
!4236 = !DILocation(line: 186, column: 13, scope: !4153, inlinedAt: !4233)
!4237 = !DILocation(line: 186, column: 7, scope: !4143, inlinedAt: !4233)
!4238 = !DILocation(line: 187, column: 5, scope: !4153, inlinedAt: !4233)
!4239 = !DILocation(line: 188, column: 11, scope: !4143, inlinedAt: !4233)
!4240 = distinct !DIAssignID()
!4241 = !DILocation(line: 954, column: 10, scope: !4161, inlinedAt: !4226)
!4242 = !DILocation(line: 955, column: 1, scope: !4161, inlinedAt: !4226)
!4243 = !DILocation(line: 966, column: 3, scope: !4216)
!4244 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !708, file: !708, line: 970, type: !4245, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4247)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!167, !173, !170, !4}
!4247 = !{!4248, !4249, !4250, !4251}
!4248 = !DILocalVariable(name: "arg", arg: 1, scope: !4244, file: !708, line: 970, type: !173)
!4249 = !DILocalVariable(name: "argsize", arg: 2, scope: !4244, file: !708, line: 970, type: !170)
!4250 = !DILocalVariable(name: "ch", arg: 3, scope: !4244, file: !708, line: 970, type: !4)
!4251 = !DILocalVariable(name: "options", scope: !4244, file: !708, line: 972, type: !746)
!4252 = distinct !DIAssignID()
!4253 = !DILocation(line: 0, scope: !4244)
!4254 = !DILocation(line: 972, column: 3, scope: !4244)
!4255 = !DILocation(line: 973, column: 13, scope: !4244)
!4256 = !{i64 0, i64 4, !1102, i64 4, i64 4, !1102, i64 8, i64 32, !1111, i64 40, i64 8, !1024, i64 48, i64 8, !1024}
!4257 = distinct !DIAssignID()
!4258 = !DILocation(line: 0, scope: !3238, inlinedAt: !4259)
!4259 = distinct !DILocation(line: 974, column: 3, scope: !4244)
!4260 = !DILocation(line: 147, column: 41, scope: !3238, inlinedAt: !4259)
!4261 = !DILocation(line: 147, column: 62, scope: !3238, inlinedAt: !4259)
!4262 = !DILocation(line: 147, column: 57, scope: !3238, inlinedAt: !4259)
!4263 = !DILocation(line: 148, column: 15, scope: !3238, inlinedAt: !4259)
!4264 = !DILocation(line: 149, column: 21, scope: !3238, inlinedAt: !4259)
!4265 = !DILocation(line: 149, column: 24, scope: !3238, inlinedAt: !4259)
!4266 = !DILocation(line: 150, column: 19, scope: !3238, inlinedAt: !4259)
!4267 = !DILocation(line: 150, column: 24, scope: !3238, inlinedAt: !4259)
!4268 = !DILocation(line: 150, column: 6, scope: !3238, inlinedAt: !4259)
!4269 = !DILocation(line: 975, column: 10, scope: !4244)
!4270 = !DILocation(line: 976, column: 1, scope: !4244)
!4271 = !DILocation(line: 975, column: 3, scope: !4244)
!4272 = distinct !DISubprogram(name: "quotearg_char", scope: !708, file: !708, line: 979, type: !4273, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4275)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{!167, !173, !4}
!4275 = !{!4276, !4277}
!4276 = !DILocalVariable(name: "arg", arg: 1, scope: !4272, file: !708, line: 979, type: !173)
!4277 = !DILocalVariable(name: "ch", arg: 2, scope: !4272, file: !708, line: 979, type: !4)
!4278 = distinct !DIAssignID()
!4279 = !DILocation(line: 0, scope: !4272)
!4280 = !DILocation(line: 0, scope: !4244, inlinedAt: !4281)
!4281 = distinct !DILocation(line: 981, column: 10, scope: !4272)
!4282 = !DILocation(line: 972, column: 3, scope: !4244, inlinedAt: !4281)
!4283 = !DILocation(line: 973, column: 13, scope: !4244, inlinedAt: !4281)
!4284 = distinct !DIAssignID()
!4285 = !DILocation(line: 0, scope: !3238, inlinedAt: !4286)
!4286 = distinct !DILocation(line: 974, column: 3, scope: !4244, inlinedAt: !4281)
!4287 = !DILocation(line: 147, column: 41, scope: !3238, inlinedAt: !4286)
!4288 = !DILocation(line: 147, column: 62, scope: !3238, inlinedAt: !4286)
!4289 = !DILocation(line: 147, column: 57, scope: !3238, inlinedAt: !4286)
!4290 = !DILocation(line: 148, column: 15, scope: !3238, inlinedAt: !4286)
!4291 = !DILocation(line: 149, column: 21, scope: !3238, inlinedAt: !4286)
!4292 = !DILocation(line: 149, column: 24, scope: !3238, inlinedAt: !4286)
!4293 = !DILocation(line: 150, column: 19, scope: !3238, inlinedAt: !4286)
!4294 = !DILocation(line: 150, column: 24, scope: !3238, inlinedAt: !4286)
!4295 = !DILocation(line: 150, column: 6, scope: !3238, inlinedAt: !4286)
!4296 = !DILocation(line: 975, column: 10, scope: !4244, inlinedAt: !4281)
!4297 = !DILocation(line: 976, column: 1, scope: !4244, inlinedAt: !4281)
!4298 = !DILocation(line: 981, column: 3, scope: !4272)
!4299 = distinct !DISubprogram(name: "quotearg_colon", scope: !708, file: !708, line: 985, type: !1228, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4300)
!4300 = !{!4301}
!4301 = !DILocalVariable(name: "arg", arg: 1, scope: !4299, file: !708, line: 985, type: !173)
!4302 = distinct !DIAssignID()
!4303 = !DILocation(line: 0, scope: !4299)
!4304 = !DILocation(line: 0, scope: !4272, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 987, column: 10, scope: !4299)
!4306 = !DILocation(line: 0, scope: !4244, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 981, column: 10, scope: !4272, inlinedAt: !4305)
!4308 = !DILocation(line: 972, column: 3, scope: !4244, inlinedAt: !4307)
!4309 = !DILocation(line: 973, column: 13, scope: !4244, inlinedAt: !4307)
!4310 = distinct !DIAssignID()
!4311 = !DILocation(line: 0, scope: !3238, inlinedAt: !4312)
!4312 = distinct !DILocation(line: 974, column: 3, scope: !4244, inlinedAt: !4307)
!4313 = !DILocation(line: 147, column: 57, scope: !3238, inlinedAt: !4312)
!4314 = !DILocation(line: 149, column: 21, scope: !3238, inlinedAt: !4312)
!4315 = !DILocation(line: 150, column: 6, scope: !3238, inlinedAt: !4312)
!4316 = !DILocation(line: 975, column: 10, scope: !4244, inlinedAt: !4307)
!4317 = !DILocation(line: 976, column: 1, scope: !4244, inlinedAt: !4307)
!4318 = !DILocation(line: 987, column: 3, scope: !4299)
!4319 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !708, file: !708, line: 991, type: !4117, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4320)
!4320 = !{!4321, !4322}
!4321 = !DILocalVariable(name: "arg", arg: 1, scope: !4319, file: !708, line: 991, type: !173)
!4322 = !DILocalVariable(name: "argsize", arg: 2, scope: !4319, file: !708, line: 991, type: !170)
!4323 = distinct !DIAssignID()
!4324 = !DILocation(line: 0, scope: !4319)
!4325 = !DILocation(line: 0, scope: !4244, inlinedAt: !4326)
!4326 = distinct !DILocation(line: 993, column: 10, scope: !4319)
!4327 = !DILocation(line: 972, column: 3, scope: !4244, inlinedAt: !4326)
!4328 = !DILocation(line: 973, column: 13, scope: !4244, inlinedAt: !4326)
!4329 = distinct !DIAssignID()
!4330 = !DILocation(line: 0, scope: !3238, inlinedAt: !4331)
!4331 = distinct !DILocation(line: 974, column: 3, scope: !4244, inlinedAt: !4326)
!4332 = !DILocation(line: 147, column: 57, scope: !3238, inlinedAt: !4331)
!4333 = !DILocation(line: 149, column: 21, scope: !3238, inlinedAt: !4331)
!4334 = !DILocation(line: 150, column: 6, scope: !3238, inlinedAt: !4331)
!4335 = !DILocation(line: 975, column: 10, scope: !4244, inlinedAt: !4326)
!4336 = !DILocation(line: 976, column: 1, scope: !4244, inlinedAt: !4326)
!4337 = !DILocation(line: 993, column: 3, scope: !4319)
!4338 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !708, file: !708, line: 997, type: !4128, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4339)
!4339 = !{!4340, !4341, !4342, !4343}
!4340 = !DILocalVariable(name: "n", arg: 1, scope: !4338, file: !708, line: 997, type: !118)
!4341 = !DILocalVariable(name: "s", arg: 2, scope: !4338, file: !708, line: 997, type: !731)
!4342 = !DILocalVariable(name: "arg", arg: 3, scope: !4338, file: !708, line: 997, type: !173)
!4343 = !DILocalVariable(name: "options", scope: !4338, file: !708, line: 999, type: !746)
!4344 = distinct !DIAssignID()
!4345 = !DILocation(line: 0, scope: !4338)
!4346 = !DILocation(line: 185, column: 26, scope: !4143, inlinedAt: !4347)
!4347 = distinct !DILocation(line: 1000, column: 13, scope: !4338)
!4348 = !DILocation(line: 999, column: 3, scope: !4338)
!4349 = !DILocation(line: 0, scope: !4143, inlinedAt: !4347)
!4350 = !DILocation(line: 186, column: 13, scope: !4153, inlinedAt: !4347)
!4351 = !DILocation(line: 186, column: 7, scope: !4143, inlinedAt: !4347)
!4352 = !DILocation(line: 187, column: 5, scope: !4153, inlinedAt: !4347)
!4353 = !{!4354}
!4354 = distinct !{!4354, !4355, !"quoting_options_from_style: argument 0"}
!4355 = distinct !{!4355, !"quoting_options_from_style"}
!4356 = !DILocation(line: 1000, column: 13, scope: !4338)
!4357 = distinct !DIAssignID()
!4358 = distinct !DIAssignID()
!4359 = !DILocation(line: 0, scope: !3238, inlinedAt: !4360)
!4360 = distinct !DILocation(line: 1001, column: 3, scope: !4338)
!4361 = !DILocation(line: 147, column: 57, scope: !3238, inlinedAt: !4360)
!4362 = !DILocation(line: 149, column: 21, scope: !3238, inlinedAt: !4360)
!4363 = !DILocation(line: 150, column: 6, scope: !3238, inlinedAt: !4360)
!4364 = distinct !DIAssignID()
!4365 = !DILocation(line: 1002, column: 10, scope: !4338)
!4366 = !DILocation(line: 1003, column: 1, scope: !4338)
!4367 = !DILocation(line: 1002, column: 3, scope: !4338)
!4368 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !708, file: !708, line: 1006, type: !4369, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4371)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{!167, !118, !173, !173, !173}
!4371 = !{!4372, !4373, !4374, !4375}
!4372 = !DILocalVariable(name: "n", arg: 1, scope: !4368, file: !708, line: 1006, type: !118)
!4373 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4368, file: !708, line: 1006, type: !173)
!4374 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4368, file: !708, line: 1007, type: !173)
!4375 = !DILocalVariable(name: "arg", arg: 4, scope: !4368, file: !708, line: 1007, type: !173)
!4376 = distinct !DIAssignID()
!4377 = !DILocation(line: 0, scope: !4368)
!4378 = !DILocalVariable(name: "o", scope: !4379, file: !708, line: 1018, type: !746)
!4379 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !708, file: !708, line: 1014, type: !4380, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4382)
!4380 = !DISubroutineType(types: !4381)
!4381 = !{!167, !118, !173, !173, !173, !170}
!4382 = !{!4383, !4384, !4385, !4386, !4387, !4378}
!4383 = !DILocalVariable(name: "n", arg: 1, scope: !4379, file: !708, line: 1014, type: !118)
!4384 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4379, file: !708, line: 1014, type: !173)
!4385 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4379, file: !708, line: 1015, type: !173)
!4386 = !DILocalVariable(name: "arg", arg: 4, scope: !4379, file: !708, line: 1016, type: !173)
!4387 = !DILocalVariable(name: "argsize", arg: 5, scope: !4379, file: !708, line: 1016, type: !170)
!4388 = !DILocation(line: 0, scope: !4379, inlinedAt: !4389)
!4389 = distinct !DILocation(line: 1009, column: 10, scope: !4368)
!4390 = !DILocation(line: 1018, column: 3, scope: !4379, inlinedAt: !4389)
!4391 = !DILocation(line: 1018, column: 30, scope: !4379, inlinedAt: !4389)
!4392 = distinct !DIAssignID()
!4393 = distinct !DIAssignID()
!4394 = !DILocation(line: 0, scope: !3278, inlinedAt: !4395)
!4395 = distinct !DILocation(line: 1019, column: 3, scope: !4379, inlinedAt: !4389)
!4396 = !DILocation(line: 174, column: 12, scope: !3278, inlinedAt: !4395)
!4397 = distinct !DIAssignID()
!4398 = !DILocation(line: 175, column: 8, scope: !3291, inlinedAt: !4395)
!4399 = !DILocation(line: 175, column: 19, scope: !3291, inlinedAt: !4395)
!4400 = !DILocation(line: 176, column: 5, scope: !3291, inlinedAt: !4395)
!4401 = !DILocation(line: 177, column: 6, scope: !3278, inlinedAt: !4395)
!4402 = !DILocation(line: 177, column: 17, scope: !3278, inlinedAt: !4395)
!4403 = distinct !DIAssignID()
!4404 = !DILocation(line: 178, column: 6, scope: !3278, inlinedAt: !4395)
!4405 = !DILocation(line: 178, column: 18, scope: !3278, inlinedAt: !4395)
!4406 = distinct !DIAssignID()
!4407 = !DILocation(line: 1020, column: 10, scope: !4379, inlinedAt: !4389)
!4408 = !DILocation(line: 1021, column: 1, scope: !4379, inlinedAt: !4389)
!4409 = !DILocation(line: 1009, column: 3, scope: !4368)
!4410 = distinct !DIAssignID()
!4411 = !DILocation(line: 0, scope: !4379)
!4412 = !DILocation(line: 1018, column: 3, scope: !4379)
!4413 = !DILocation(line: 1018, column: 30, scope: !4379)
!4414 = distinct !DIAssignID()
!4415 = distinct !DIAssignID()
!4416 = !DILocation(line: 0, scope: !3278, inlinedAt: !4417)
!4417 = distinct !DILocation(line: 1019, column: 3, scope: !4379)
!4418 = !DILocation(line: 174, column: 12, scope: !3278, inlinedAt: !4417)
!4419 = distinct !DIAssignID()
!4420 = !DILocation(line: 175, column: 8, scope: !3291, inlinedAt: !4417)
!4421 = !DILocation(line: 175, column: 19, scope: !3291, inlinedAt: !4417)
!4422 = !DILocation(line: 176, column: 5, scope: !3291, inlinedAt: !4417)
!4423 = !DILocation(line: 177, column: 6, scope: !3278, inlinedAt: !4417)
!4424 = !DILocation(line: 177, column: 17, scope: !3278, inlinedAt: !4417)
!4425 = distinct !DIAssignID()
!4426 = !DILocation(line: 178, column: 6, scope: !3278, inlinedAt: !4417)
!4427 = !DILocation(line: 178, column: 18, scope: !3278, inlinedAt: !4417)
!4428 = distinct !DIAssignID()
!4429 = !DILocation(line: 1020, column: 10, scope: !4379)
!4430 = !DILocation(line: 1021, column: 1, scope: !4379)
!4431 = !DILocation(line: 1020, column: 3, scope: !4379)
!4432 = distinct !DISubprogram(name: "quotearg_custom", scope: !708, file: !708, line: 1024, type: !4433, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4435)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!167, !173, !173, !173}
!4435 = !{!4436, !4437, !4438}
!4436 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4432, file: !708, line: 1024, type: !173)
!4437 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4432, file: !708, line: 1024, type: !173)
!4438 = !DILocalVariable(name: "arg", arg: 3, scope: !4432, file: !708, line: 1025, type: !173)
!4439 = distinct !DIAssignID()
!4440 = !DILocation(line: 0, scope: !4432)
!4441 = !DILocation(line: 0, scope: !4368, inlinedAt: !4442)
!4442 = distinct !DILocation(line: 1027, column: 10, scope: !4432)
!4443 = !DILocation(line: 0, scope: !4379, inlinedAt: !4444)
!4444 = distinct !DILocation(line: 1009, column: 10, scope: !4368, inlinedAt: !4442)
!4445 = !DILocation(line: 1018, column: 3, scope: !4379, inlinedAt: !4444)
!4446 = !DILocation(line: 1018, column: 30, scope: !4379, inlinedAt: !4444)
!4447 = distinct !DIAssignID()
!4448 = distinct !DIAssignID()
!4449 = !DILocation(line: 0, scope: !3278, inlinedAt: !4450)
!4450 = distinct !DILocation(line: 1019, column: 3, scope: !4379, inlinedAt: !4444)
!4451 = !DILocation(line: 174, column: 12, scope: !3278, inlinedAt: !4450)
!4452 = distinct !DIAssignID()
!4453 = !DILocation(line: 175, column: 8, scope: !3291, inlinedAt: !4450)
!4454 = !DILocation(line: 175, column: 19, scope: !3291, inlinedAt: !4450)
!4455 = !DILocation(line: 176, column: 5, scope: !3291, inlinedAt: !4450)
!4456 = !DILocation(line: 177, column: 6, scope: !3278, inlinedAt: !4450)
!4457 = !DILocation(line: 177, column: 17, scope: !3278, inlinedAt: !4450)
!4458 = distinct !DIAssignID()
!4459 = !DILocation(line: 178, column: 6, scope: !3278, inlinedAt: !4450)
!4460 = !DILocation(line: 178, column: 18, scope: !3278, inlinedAt: !4450)
!4461 = distinct !DIAssignID()
!4462 = !DILocation(line: 1020, column: 10, scope: !4379, inlinedAt: !4444)
!4463 = !DILocation(line: 1021, column: 1, scope: !4379, inlinedAt: !4444)
!4464 = !DILocation(line: 1027, column: 3, scope: !4432)
!4465 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !708, file: !708, line: 1031, type: !4466, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4468)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{!167, !173, !173, !173, !170}
!4468 = !{!4469, !4470, !4471, !4472}
!4469 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4465, file: !708, line: 1031, type: !173)
!4470 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4465, file: !708, line: 1031, type: !173)
!4471 = !DILocalVariable(name: "arg", arg: 3, scope: !4465, file: !708, line: 1032, type: !173)
!4472 = !DILocalVariable(name: "argsize", arg: 4, scope: !4465, file: !708, line: 1032, type: !170)
!4473 = distinct !DIAssignID()
!4474 = !DILocation(line: 0, scope: !4465)
!4475 = !DILocation(line: 0, scope: !4379, inlinedAt: !4476)
!4476 = distinct !DILocation(line: 1034, column: 10, scope: !4465)
!4477 = !DILocation(line: 1018, column: 3, scope: !4379, inlinedAt: !4476)
!4478 = !DILocation(line: 1018, column: 30, scope: !4379, inlinedAt: !4476)
!4479 = distinct !DIAssignID()
!4480 = distinct !DIAssignID()
!4481 = !DILocation(line: 0, scope: !3278, inlinedAt: !4482)
!4482 = distinct !DILocation(line: 1019, column: 3, scope: !4379, inlinedAt: !4476)
!4483 = !DILocation(line: 174, column: 12, scope: !3278, inlinedAt: !4482)
!4484 = distinct !DIAssignID()
!4485 = !DILocation(line: 175, column: 8, scope: !3291, inlinedAt: !4482)
!4486 = !DILocation(line: 175, column: 19, scope: !3291, inlinedAt: !4482)
!4487 = !DILocation(line: 176, column: 5, scope: !3291, inlinedAt: !4482)
!4488 = !DILocation(line: 177, column: 6, scope: !3278, inlinedAt: !4482)
!4489 = !DILocation(line: 177, column: 17, scope: !3278, inlinedAt: !4482)
!4490 = distinct !DIAssignID()
!4491 = !DILocation(line: 178, column: 6, scope: !3278, inlinedAt: !4482)
!4492 = !DILocation(line: 178, column: 18, scope: !3278, inlinedAt: !4482)
!4493 = distinct !DIAssignID()
!4494 = !DILocation(line: 1020, column: 10, scope: !4379, inlinedAt: !4476)
!4495 = !DILocation(line: 1021, column: 1, scope: !4379, inlinedAt: !4476)
!4496 = !DILocation(line: 1034, column: 3, scope: !4465)
!4497 = distinct !DISubprogram(name: "quote_n_mem", scope: !708, file: !708, line: 1049, type: !4498, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4500)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!173, !118, !173, !170}
!4500 = !{!4501, !4502, !4503}
!4501 = !DILocalVariable(name: "n", arg: 1, scope: !4497, file: !708, line: 1049, type: !118)
!4502 = !DILocalVariable(name: "arg", arg: 2, scope: !4497, file: !708, line: 1049, type: !173)
!4503 = !DILocalVariable(name: "argsize", arg: 3, scope: !4497, file: !708, line: 1049, type: !170)
!4504 = !DILocation(line: 0, scope: !4497)
!4505 = !DILocation(line: 1051, column: 10, scope: !4497)
!4506 = !DILocation(line: 1051, column: 3, scope: !4497)
!4507 = distinct !DISubprogram(name: "quote_mem", scope: !708, file: !708, line: 1055, type: !4508, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4510)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{!173, !173, !170}
!4510 = !{!4511, !4512}
!4511 = !DILocalVariable(name: "arg", arg: 1, scope: !4507, file: !708, line: 1055, type: !173)
!4512 = !DILocalVariable(name: "argsize", arg: 2, scope: !4507, file: !708, line: 1055, type: !170)
!4513 = !DILocation(line: 0, scope: !4507)
!4514 = !DILocation(line: 0, scope: !4497, inlinedAt: !4515)
!4515 = distinct !DILocation(line: 1057, column: 10, scope: !4507)
!4516 = !DILocation(line: 1051, column: 10, scope: !4497, inlinedAt: !4515)
!4517 = !DILocation(line: 1057, column: 3, scope: !4507)
!4518 = distinct !DISubprogram(name: "quote_n", scope: !708, file: !708, line: 1061, type: !4519, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4521)
!4519 = !DISubroutineType(types: !4520)
!4520 = !{!173, !118, !173}
!4521 = !{!4522, !4523}
!4522 = !DILocalVariable(name: "n", arg: 1, scope: !4518, file: !708, line: 1061, type: !118)
!4523 = !DILocalVariable(name: "arg", arg: 2, scope: !4518, file: !708, line: 1061, type: !173)
!4524 = !DILocation(line: 0, scope: !4518)
!4525 = !DILocation(line: 0, scope: !4497, inlinedAt: !4526)
!4526 = distinct !DILocation(line: 1063, column: 10, scope: !4518)
!4527 = !DILocation(line: 1051, column: 10, scope: !4497, inlinedAt: !4526)
!4528 = !DILocation(line: 1063, column: 3, scope: !4518)
!4529 = distinct !DISubprogram(name: "quote", scope: !708, file: !708, line: 1067, type: !4530, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !4532)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!173, !173}
!4532 = !{!4533}
!4533 = !DILocalVariable(name: "arg", arg: 1, scope: !4529, file: !708, line: 1067, type: !173)
!4534 = !DILocation(line: 0, scope: !4529)
!4535 = !DILocation(line: 0, scope: !4518, inlinedAt: !4536)
!4536 = distinct !DILocation(line: 1069, column: 10, scope: !4529)
!4537 = !DILocation(line: 0, scope: !4497, inlinedAt: !4538)
!4538 = distinct !DILocation(line: 1063, column: 10, scope: !4518, inlinedAt: !4536)
!4539 = !DILocation(line: 1051, column: 10, scope: !4497, inlinedAt: !4538)
!4540 = !DILocation(line: 1069, column: 3, scope: !4529)
!4541 = distinct !DISubprogram(name: "version_etc_arn", scope: !807, file: !807, line: 61, type: !4542, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !942, retainedNodes: !4579)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{null, !4544, !173, !173, !173, !4578, !170}
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !4546)
!4546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !4547)
!4547 = !{!4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4546, file: !269, line: 51, baseType: !118, size: 32)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4546, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4546, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4546, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4546, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4546, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4546, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4546, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4546, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4546, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4546, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4546, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4546, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4546, file: !269, line: 70, baseType: !4562, size: 64, offset: 832)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4546, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4546, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4546, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4546, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4546, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4546, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4546, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4546, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4546, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4546, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4546, file: !269, line: 93, baseType: !4562, size: 64, offset: 1344)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4546, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4546, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4546, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4546, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!4579 = !{!4580, !4581, !4582, !4583, !4584, !4585}
!4580 = !DILocalVariable(name: "stream", arg: 1, scope: !4541, file: !807, line: 61, type: !4544)
!4581 = !DILocalVariable(name: "command_name", arg: 2, scope: !4541, file: !807, line: 62, type: !173)
!4582 = !DILocalVariable(name: "package", arg: 3, scope: !4541, file: !807, line: 62, type: !173)
!4583 = !DILocalVariable(name: "version", arg: 4, scope: !4541, file: !807, line: 63, type: !173)
!4584 = !DILocalVariable(name: "authors", arg: 5, scope: !4541, file: !807, line: 64, type: !4578)
!4585 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4541, file: !807, line: 64, type: !170)
!4586 = !DILocation(line: 0, scope: !4541)
!4587 = !DILocation(line: 66, column: 7, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4541, file: !807, line: 66, column: 7)
!4589 = !DILocation(line: 66, column: 7, scope: !4541)
!4590 = !DILocation(line: 67, column: 5, scope: !4588)
!4591 = !DILocation(line: 69, column: 5, scope: !4588)
!4592 = !DILocation(line: 83, column: 3, scope: !4541)
!4593 = !DILocation(line: 85, column: 3, scope: !4541)
!4594 = !DILocation(line: 88, column: 3, scope: !4541)
!4595 = !DILocation(line: 95, column: 3, scope: !4541)
!4596 = !DILocation(line: 97, column: 3, scope: !4541)
!4597 = !DILocation(line: 105, column: 7, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4541, file: !807, line: 98, column: 5)
!4599 = !DILocation(line: 106, column: 7, scope: !4598)
!4600 = !DILocation(line: 109, column: 7, scope: !4598)
!4601 = !DILocation(line: 110, column: 7, scope: !4598)
!4602 = !DILocation(line: 113, column: 7, scope: !4598)
!4603 = !DILocation(line: 115, column: 7, scope: !4598)
!4604 = !DILocation(line: 120, column: 7, scope: !4598)
!4605 = !DILocation(line: 122, column: 7, scope: !4598)
!4606 = !DILocation(line: 127, column: 7, scope: !4598)
!4607 = !DILocation(line: 129, column: 7, scope: !4598)
!4608 = !DILocation(line: 134, column: 7, scope: !4598)
!4609 = !DILocation(line: 137, column: 7, scope: !4598)
!4610 = !DILocation(line: 142, column: 7, scope: !4598)
!4611 = !DILocation(line: 145, column: 7, scope: !4598)
!4612 = !DILocation(line: 150, column: 7, scope: !4598)
!4613 = !DILocation(line: 154, column: 7, scope: !4598)
!4614 = !DILocation(line: 159, column: 7, scope: !4598)
!4615 = !DILocation(line: 163, column: 7, scope: !4598)
!4616 = !DILocation(line: 170, column: 7, scope: !4598)
!4617 = !DILocation(line: 174, column: 7, scope: !4598)
!4618 = !DILocation(line: 176, column: 1, scope: !4541)
!4619 = distinct !DISubprogram(name: "version_etc_ar", scope: !807, file: !807, line: 183, type: !4620, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !942, retainedNodes: !4622)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{null, !4544, !173, !173, !173, !4578}
!4622 = !{!4623, !4624, !4625, !4626, !4627, !4628}
!4623 = !DILocalVariable(name: "stream", arg: 1, scope: !4619, file: !807, line: 183, type: !4544)
!4624 = !DILocalVariable(name: "command_name", arg: 2, scope: !4619, file: !807, line: 184, type: !173)
!4625 = !DILocalVariable(name: "package", arg: 3, scope: !4619, file: !807, line: 184, type: !173)
!4626 = !DILocalVariable(name: "version", arg: 4, scope: !4619, file: !807, line: 185, type: !173)
!4627 = !DILocalVariable(name: "authors", arg: 5, scope: !4619, file: !807, line: 185, type: !4578)
!4628 = !DILocalVariable(name: "n_authors", scope: !4619, file: !807, line: 187, type: !170)
!4629 = !DILocation(line: 0, scope: !4619)
!4630 = !DILocation(line: 189, column: 8, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4619, file: !807, line: 189, column: 3)
!4632 = !DILocation(line: 189, scope: !4631)
!4633 = !DILocation(line: 189, column: 23, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4631, file: !807, line: 189, column: 3)
!4635 = !DILocation(line: 189, column: 3, scope: !4631)
!4636 = !DILocation(line: 189, column: 52, scope: !4634)
!4637 = distinct !{!4637, !4635, !4638, !1149}
!4638 = !DILocation(line: 190, column: 5, scope: !4631)
!4639 = !DILocation(line: 191, column: 3, scope: !4619)
!4640 = !DILocation(line: 192, column: 1, scope: !4619)
!4641 = distinct !DISubprogram(name: "version_etc_va", scope: !807, file: !807, line: 199, type: !4642, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !942, retainedNodes: !4651)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{null, !4544, !173, !173, !173, !4644}
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4646)
!4646 = !{!4647, !4648, !4649, !4650}
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4645, file: !807, line: 192, baseType: !112, size: 32)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4645, file: !807, line: 192, baseType: !112, size: 32, offset: 32)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4645, file: !807, line: 192, baseType: !168, size: 64, offset: 64)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4645, file: !807, line: 192, baseType: !168, size: 64, offset: 128)
!4651 = !{!4652, !4653, !4654, !4655, !4656, !4657, !4658}
!4652 = !DILocalVariable(name: "stream", arg: 1, scope: !4641, file: !807, line: 199, type: !4544)
!4653 = !DILocalVariable(name: "command_name", arg: 2, scope: !4641, file: !807, line: 200, type: !173)
!4654 = !DILocalVariable(name: "package", arg: 3, scope: !4641, file: !807, line: 200, type: !173)
!4655 = !DILocalVariable(name: "version", arg: 4, scope: !4641, file: !807, line: 201, type: !173)
!4656 = !DILocalVariable(name: "authors", arg: 5, scope: !4641, file: !807, line: 201, type: !4644)
!4657 = !DILocalVariable(name: "n_authors", scope: !4641, file: !807, line: 203, type: !170)
!4658 = !DILocalVariable(name: "authtab", scope: !4641, file: !807, line: 204, type: !4659)
!4659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 640, elements: !95)
!4660 = distinct !DIAssignID()
!4661 = !DILocation(line: 0, scope: !4641)
!4662 = !DILocation(line: 204, column: 3, scope: !4641)
!4663 = !DILocation(line: 208, column: 35, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4665, file: !807, line: 206, column: 3)
!4665 = distinct !DILexicalBlock(scope: !4641, file: !807, line: 206, column: 3)
!4666 = !DILocation(line: 208, column: 33, scope: !4664)
!4667 = !DILocation(line: 208, column: 67, scope: !4664)
!4668 = !DILocation(line: 206, column: 3, scope: !4665)
!4669 = !DILocation(line: 208, column: 14, scope: !4664)
!4670 = !DILocation(line: 0, scope: !4665)
!4671 = !DILocation(line: 211, column: 3, scope: !4641)
!4672 = !DILocation(line: 213, column: 1, scope: !4641)
!4673 = distinct !DISubprogram(name: "version_etc", scope: !807, file: !807, line: 230, type: !4674, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !942, retainedNodes: !4676)
!4674 = !DISubroutineType(types: !4675)
!4675 = !{null, !4544, !173, !173, !173, null}
!4676 = !{!4677, !4678, !4679, !4680, !4681}
!4677 = !DILocalVariable(name: "stream", arg: 1, scope: !4673, file: !807, line: 230, type: !4544)
!4678 = !DILocalVariable(name: "command_name", arg: 2, scope: !4673, file: !807, line: 231, type: !173)
!4679 = !DILocalVariable(name: "package", arg: 3, scope: !4673, file: !807, line: 231, type: !173)
!4680 = !DILocalVariable(name: "version", arg: 4, scope: !4673, file: !807, line: 232, type: !173)
!4681 = !DILocalVariable(name: "authors", scope: !4673, file: !807, line: 234, type: !4682)
!4682 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1097, line: 52, baseType: !4683)
!4683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2429, line: 12, baseType: !4684)
!4684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !807, baseType: !4685)
!4685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4645, size: 192, elements: !90)
!4686 = distinct !DIAssignID()
!4687 = !DILocation(line: 0, scope: !4673)
!4688 = !DILocation(line: 234, column: 3, scope: !4673)
!4689 = !DILocation(line: 235, column: 3, scope: !4673)
!4690 = !DILocation(line: 236, column: 3, scope: !4673)
!4691 = !DILocation(line: 237, column: 3, scope: !4673)
!4692 = !DILocation(line: 238, column: 1, scope: !4673)
!4693 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !807, file: !807, line: 241, type: !663, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !942)
!4694 = !DILocation(line: 243, column: 3, scope: !4693)
!4695 = !DILocation(line: 248, column: 3, scope: !4693)
!4696 = !DILocation(line: 254, column: 3, scope: !4693)
!4697 = !DILocation(line: 259, column: 3, scope: !4693)
!4698 = !DILocation(line: 261, column: 1, scope: !4693)
!4699 = distinct !DISubprogram(name: "xnrealloc", scope: !4700, file: !4700, line: 147, type: !4701, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !4703)
!4700 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!168, !168, !170, !170}
!4703 = !{!4704, !4705, !4706}
!4704 = !DILocalVariable(name: "p", arg: 1, scope: !4699, file: !4700, line: 147, type: !168)
!4705 = !DILocalVariable(name: "n", arg: 2, scope: !4699, file: !4700, line: 147, type: !170)
!4706 = !DILocalVariable(name: "s", arg: 3, scope: !4699, file: !4700, line: 147, type: !170)
!4707 = !DILocation(line: 0, scope: !4699)
!4708 = !DILocalVariable(name: "p", arg: 1, scope: !4709, file: !949, line: 83, type: !168)
!4709 = distinct !DISubprogram(name: "xreallocarray", scope: !949, file: !949, line: 83, type: !4701, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !4710)
!4710 = !{!4708, !4711, !4712}
!4711 = !DILocalVariable(name: "n", arg: 2, scope: !4709, file: !949, line: 83, type: !170)
!4712 = !DILocalVariable(name: "s", arg: 3, scope: !4709, file: !949, line: 83, type: !170)
!4713 = !DILocation(line: 0, scope: !4709, inlinedAt: !4714)
!4714 = distinct !DILocation(line: 149, column: 10, scope: !4699)
!4715 = !DILocation(line: 85, column: 25, scope: !4709, inlinedAt: !4714)
!4716 = !DILocalVariable(name: "p", arg: 1, scope: !4717, file: !949, line: 37, type: !168)
!4717 = distinct !DISubprogram(name: "check_nonnull", scope: !949, file: !949, line: 37, type: !4718, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !4720)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{!168, !168}
!4720 = !{!4716}
!4721 = !DILocation(line: 0, scope: !4717, inlinedAt: !4722)
!4722 = distinct !DILocation(line: 85, column: 10, scope: !4709, inlinedAt: !4714)
!4723 = !DILocation(line: 39, column: 8, scope: !4724, inlinedAt: !4722)
!4724 = distinct !DILexicalBlock(scope: !4717, file: !949, line: 39, column: 7)
!4725 = !DILocation(line: 39, column: 7, scope: !4717, inlinedAt: !4722)
!4726 = !DILocation(line: 40, column: 5, scope: !4724, inlinedAt: !4722)
!4727 = !DILocation(line: 149, column: 3, scope: !4699)
!4728 = !DILocation(line: 0, scope: !4709)
!4729 = !DILocation(line: 85, column: 25, scope: !4709)
!4730 = !DILocation(line: 0, scope: !4717, inlinedAt: !4731)
!4731 = distinct !DILocation(line: 85, column: 10, scope: !4709)
!4732 = !DILocation(line: 39, column: 8, scope: !4724, inlinedAt: !4731)
!4733 = !DILocation(line: 39, column: 7, scope: !4717, inlinedAt: !4731)
!4734 = !DILocation(line: 40, column: 5, scope: !4724, inlinedAt: !4731)
!4735 = !DILocation(line: 85, column: 3, scope: !4709)
!4736 = distinct !DISubprogram(name: "xmalloc", scope: !949, file: !949, line: 47, type: !3029, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !4737)
!4737 = !{!4738}
!4738 = !DILocalVariable(name: "s", arg: 1, scope: !4736, file: !949, line: 47, type: !170)
!4739 = !DILocation(line: 0, scope: !4736)
!4740 = !DILocation(line: 49, column: 25, scope: !4736)
!4741 = !DILocation(line: 0, scope: !4717, inlinedAt: !4742)
!4742 = distinct !DILocation(line: 49, column: 10, scope: !4736)
!4743 = !DILocation(line: 39, column: 8, scope: !4724, inlinedAt: !4742)
!4744 = !DILocation(line: 39, column: 7, scope: !4717, inlinedAt: !4742)
!4745 = !DILocation(line: 40, column: 5, scope: !4724, inlinedAt: !4742)
!4746 = !DILocation(line: 49, column: 3, scope: !4736)
!4747 = distinct !DISubprogram(name: "ximalloc", scope: !949, file: !949, line: 53, type: !4748, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !4750)
!4748 = !DISubroutineType(types: !4749)
!4749 = !{!168, !968}
!4750 = !{!4751}
!4751 = !DILocalVariable(name: "s", arg: 1, scope: !4747, file: !949, line: 53, type: !968)
!4752 = !DILocation(line: 0, scope: !4747)
!4753 = !DILocalVariable(name: "s", arg: 1, scope: !4754, file: !4755, line: 55, type: !968)
!4754 = distinct !DISubprogram(name: "imalloc", scope: !4755, file: !4755, line: 55, type: !4748, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !4756)
!4755 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4756 = !{!4753}
!4757 = !DILocation(line: 0, scope: !4754, inlinedAt: !4758)
!4758 = distinct !DILocation(line: 55, column: 25, scope: !4747)
!4759 = !DILocation(line: 57, column: 26, scope: !4754, inlinedAt: !4758)
!4760 = !DILocation(line: 0, scope: !4717, inlinedAt: !4761)
!4761 = distinct !DILocation(line: 55, column: 10, scope: !4747)
!4762 = !DILocation(line: 39, column: 8, scope: !4724, inlinedAt: !4761)
!4763 = !DILocation(line: 39, column: 7, scope: !4717, inlinedAt: !4761)
!4764 = !DILocation(line: 40, column: 5, scope: !4724, inlinedAt: !4761)
!4765 = !DILocation(line: 55, column: 3, scope: !4747)
!4766 = distinct !DISubprogram(name: "xcharalloc", scope: !949, file: !949, line: 59, type: !4767, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !4769)
!4767 = !DISubroutineType(types: !4768)
!4768 = !{!167, !170}
!4769 = !{!4770}
!4770 = !DILocalVariable(name: "n", arg: 1, scope: !4766, file: !949, line: 59, type: !170)
!4771 = !DILocation(line: 0, scope: !4766)
!4772 = !DILocation(line: 0, scope: !4736, inlinedAt: !4773)
!4773 = distinct !DILocation(line: 61, column: 10, scope: !4766)
!4774 = !DILocation(line: 49, column: 25, scope: !4736, inlinedAt: !4773)
!4775 = !DILocation(line: 0, scope: !4717, inlinedAt: !4776)
!4776 = distinct !DILocation(line: 49, column: 10, scope: !4736, inlinedAt: !4773)
!4777 = !DILocation(line: 39, column: 8, scope: !4724, inlinedAt: !4776)
!4778 = !DILocation(line: 39, column: 7, scope: !4717, inlinedAt: !4776)
!4779 = !DILocation(line: 40, column: 5, scope: !4724, inlinedAt: !4776)
!4780 = !DILocation(line: 61, column: 3, scope: !4766)
!4781 = distinct !DISubprogram(name: "xrealloc", scope: !949, file: !949, line: 68, type: !2972, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !4782)
!4782 = !{!4783, !4784}
!4783 = !DILocalVariable(name: "p", arg: 1, scope: !4781, file: !949, line: 68, type: !168)
!4784 = !DILocalVariable(name: "s", arg: 2, scope: !4781, file: !949, line: 68, type: !170)
!4785 = !DILocation(line: 0, scope: !4781)
!4786 = !DILocalVariable(name: "ptr", arg: 1, scope: !4787, file: !2971, line: 2057, type: !168)
!4787 = distinct !DISubprogram(name: "rpl_realloc", scope: !2971, file: !2971, line: 2057, type: !2972, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !4788)
!4788 = !{!4786, !4789}
!4789 = !DILocalVariable(name: "size", arg: 2, scope: !4787, file: !2971, line: 2057, type: !170)
!4790 = !DILocation(line: 0, scope: !4787, inlinedAt: !4791)
!4791 = distinct !DILocation(line: 70, column: 25, scope: !4781)
!4792 = !DILocation(line: 2059, column: 24, scope: !4787, inlinedAt: !4791)
!4793 = !DILocation(line: 2059, column: 10, scope: !4787, inlinedAt: !4791)
!4794 = !DILocation(line: 0, scope: !4717, inlinedAt: !4795)
!4795 = distinct !DILocation(line: 70, column: 10, scope: !4781)
!4796 = !DILocation(line: 39, column: 8, scope: !4724, inlinedAt: !4795)
!4797 = !DILocation(line: 39, column: 7, scope: !4717, inlinedAt: !4795)
!4798 = !DILocation(line: 40, column: 5, scope: !4724, inlinedAt: !4795)
!4799 = !DILocation(line: 70, column: 3, scope: !4781)
!4800 = distinct !DISubprogram(name: "xirealloc", scope: !949, file: !949, line: 74, type: !4801, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !4803)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!168, !168, !968}
!4803 = !{!4804, !4805}
!4804 = !DILocalVariable(name: "p", arg: 1, scope: !4800, file: !949, line: 74, type: !168)
!4805 = !DILocalVariable(name: "s", arg: 2, scope: !4800, file: !949, line: 74, type: !968)
!4806 = !DILocation(line: 0, scope: !4800)
!4807 = !DILocalVariable(name: "p", arg: 1, scope: !4808, file: !4755, line: 66, type: !168)
!4808 = distinct !DISubprogram(name: "irealloc", scope: !4755, file: !4755, line: 66, type: !4801, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !4809)
!4809 = !{!4807, !4810}
!4810 = !DILocalVariable(name: "s", arg: 2, scope: !4808, file: !4755, line: 66, type: !968)
!4811 = !DILocation(line: 0, scope: !4808, inlinedAt: !4812)
!4812 = distinct !DILocation(line: 76, column: 25, scope: !4800)
!4813 = !DILocation(line: 0, scope: !4787, inlinedAt: !4814)
!4814 = distinct !DILocation(line: 68, column: 26, scope: !4808, inlinedAt: !4812)
!4815 = !DILocation(line: 2059, column: 24, scope: !4787, inlinedAt: !4814)
!4816 = !DILocation(line: 2059, column: 10, scope: !4787, inlinedAt: !4814)
!4817 = !DILocation(line: 0, scope: !4717, inlinedAt: !4818)
!4818 = distinct !DILocation(line: 76, column: 10, scope: !4800)
!4819 = !DILocation(line: 39, column: 8, scope: !4724, inlinedAt: !4818)
!4820 = !DILocation(line: 39, column: 7, scope: !4717, inlinedAt: !4818)
!4821 = !DILocation(line: 40, column: 5, scope: !4724, inlinedAt: !4818)
!4822 = !DILocation(line: 76, column: 3, scope: !4800)
!4823 = distinct !DISubprogram(name: "xireallocarray", scope: !949, file: !949, line: 89, type: !4824, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !4826)
!4824 = !DISubroutineType(types: !4825)
!4825 = !{!168, !168, !968, !968}
!4826 = !{!4827, !4828, !4829}
!4827 = !DILocalVariable(name: "p", arg: 1, scope: !4823, file: !949, line: 89, type: !168)
!4828 = !DILocalVariable(name: "n", arg: 2, scope: !4823, file: !949, line: 89, type: !968)
!4829 = !DILocalVariable(name: "s", arg: 3, scope: !4823, file: !949, line: 89, type: !968)
!4830 = !DILocation(line: 0, scope: !4823)
!4831 = !DILocalVariable(name: "p", arg: 1, scope: !4832, file: !4755, line: 98, type: !168)
!4832 = distinct !DISubprogram(name: "ireallocarray", scope: !4755, file: !4755, line: 98, type: !4824, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !4833)
!4833 = !{!4831, !4834, !4835}
!4834 = !DILocalVariable(name: "n", arg: 2, scope: !4832, file: !4755, line: 98, type: !968)
!4835 = !DILocalVariable(name: "s", arg: 3, scope: !4832, file: !4755, line: 98, type: !968)
!4836 = !DILocation(line: 0, scope: !4832, inlinedAt: !4837)
!4837 = distinct !DILocation(line: 91, column: 25, scope: !4823)
!4838 = !DILocation(line: 101, column: 13, scope: !4832, inlinedAt: !4837)
!4839 = !DILocation(line: 0, scope: !4717, inlinedAt: !4840)
!4840 = distinct !DILocation(line: 91, column: 10, scope: !4823)
!4841 = !DILocation(line: 39, column: 8, scope: !4724, inlinedAt: !4840)
!4842 = !DILocation(line: 39, column: 7, scope: !4717, inlinedAt: !4840)
!4843 = !DILocation(line: 40, column: 5, scope: !4724, inlinedAt: !4840)
!4844 = !DILocation(line: 91, column: 3, scope: !4823)
!4845 = distinct !DISubprogram(name: "xnmalloc", scope: !949, file: !949, line: 98, type: !4846, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !4848)
!4846 = !DISubroutineType(types: !4847)
!4847 = !{!168, !170, !170}
!4848 = !{!4849, !4850}
!4849 = !DILocalVariable(name: "n", arg: 1, scope: !4845, file: !949, line: 98, type: !170)
!4850 = !DILocalVariable(name: "s", arg: 2, scope: !4845, file: !949, line: 98, type: !170)
!4851 = !DILocation(line: 0, scope: !4845)
!4852 = !DILocation(line: 0, scope: !4709, inlinedAt: !4853)
!4853 = distinct !DILocation(line: 100, column: 10, scope: !4845)
!4854 = !DILocation(line: 85, column: 25, scope: !4709, inlinedAt: !4853)
!4855 = !DILocation(line: 0, scope: !4717, inlinedAt: !4856)
!4856 = distinct !DILocation(line: 85, column: 10, scope: !4709, inlinedAt: !4853)
!4857 = !DILocation(line: 39, column: 8, scope: !4724, inlinedAt: !4856)
!4858 = !DILocation(line: 39, column: 7, scope: !4717, inlinedAt: !4856)
!4859 = !DILocation(line: 40, column: 5, scope: !4724, inlinedAt: !4856)
!4860 = !DILocation(line: 100, column: 3, scope: !4845)
!4861 = distinct !DISubprogram(name: "xinmalloc", scope: !949, file: !949, line: 104, type: !4862, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !4864)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!168, !968, !968}
!4864 = !{!4865, !4866}
!4865 = !DILocalVariable(name: "n", arg: 1, scope: !4861, file: !949, line: 104, type: !968)
!4866 = !DILocalVariable(name: "s", arg: 2, scope: !4861, file: !949, line: 104, type: !968)
!4867 = !DILocation(line: 0, scope: !4861)
!4868 = !DILocation(line: 0, scope: !4823, inlinedAt: !4869)
!4869 = distinct !DILocation(line: 106, column: 10, scope: !4861)
!4870 = !DILocation(line: 0, scope: !4832, inlinedAt: !4871)
!4871 = distinct !DILocation(line: 91, column: 25, scope: !4823, inlinedAt: !4869)
!4872 = !DILocation(line: 101, column: 13, scope: !4832, inlinedAt: !4871)
!4873 = !DILocation(line: 0, scope: !4717, inlinedAt: !4874)
!4874 = distinct !DILocation(line: 91, column: 10, scope: !4823, inlinedAt: !4869)
!4875 = !DILocation(line: 39, column: 8, scope: !4724, inlinedAt: !4874)
!4876 = !DILocation(line: 39, column: 7, scope: !4717, inlinedAt: !4874)
!4877 = !DILocation(line: 40, column: 5, scope: !4724, inlinedAt: !4874)
!4878 = !DILocation(line: 106, column: 3, scope: !4861)
!4879 = distinct !DISubprogram(name: "x2realloc", scope: !949, file: !949, line: 116, type: !4880, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !4882)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{!168, !168, !955}
!4882 = !{!4883, !4884}
!4883 = !DILocalVariable(name: "p", arg: 1, scope: !4879, file: !949, line: 116, type: !168)
!4884 = !DILocalVariable(name: "ps", arg: 2, scope: !4879, file: !949, line: 116, type: !955)
!4885 = !DILocation(line: 0, scope: !4879)
!4886 = !DILocation(line: 0, scope: !952, inlinedAt: !4887)
!4887 = distinct !DILocation(line: 118, column: 10, scope: !4879)
!4888 = !DILocation(line: 178, column: 14, scope: !952, inlinedAt: !4887)
!4889 = !DILocation(line: 180, column: 9, scope: !4890, inlinedAt: !4887)
!4890 = distinct !DILexicalBlock(scope: !952, file: !949, line: 180, column: 7)
!4891 = !DILocation(line: 180, column: 7, scope: !952, inlinedAt: !4887)
!4892 = !DILocation(line: 182, column: 13, scope: !4893, inlinedAt: !4887)
!4893 = distinct !DILexicalBlock(scope: !4894, file: !949, line: 182, column: 11)
!4894 = distinct !DILexicalBlock(scope: !4890, file: !949, line: 181, column: 5)
!4895 = !DILocation(line: 182, column: 11, scope: !4894, inlinedAt: !4887)
!4896 = !DILocation(line: 197, column: 11, scope: !4897, inlinedAt: !4887)
!4897 = distinct !DILexicalBlock(scope: !4898, file: !949, line: 197, column: 11)
!4898 = distinct !DILexicalBlock(scope: !4890, file: !949, line: 195, column: 5)
!4899 = !DILocation(line: 197, column: 11, scope: !4898, inlinedAt: !4887)
!4900 = !DILocation(line: 198, column: 9, scope: !4897, inlinedAt: !4887)
!4901 = !DILocation(line: 0, scope: !4709, inlinedAt: !4902)
!4902 = distinct !DILocation(line: 201, column: 7, scope: !952, inlinedAt: !4887)
!4903 = !DILocation(line: 85, column: 25, scope: !4709, inlinedAt: !4902)
!4904 = !DILocation(line: 0, scope: !4717, inlinedAt: !4905)
!4905 = distinct !DILocation(line: 85, column: 10, scope: !4709, inlinedAt: !4902)
!4906 = !DILocation(line: 39, column: 8, scope: !4724, inlinedAt: !4905)
!4907 = !DILocation(line: 39, column: 7, scope: !4717, inlinedAt: !4905)
!4908 = !DILocation(line: 40, column: 5, scope: !4724, inlinedAt: !4905)
!4909 = !DILocation(line: 202, column: 7, scope: !952, inlinedAt: !4887)
!4910 = !DILocation(line: 118, column: 3, scope: !4879)
!4911 = !DILocation(line: 0, scope: !952)
!4912 = !DILocation(line: 178, column: 14, scope: !952)
!4913 = !DILocation(line: 180, column: 9, scope: !4890)
!4914 = !DILocation(line: 180, column: 7, scope: !952)
!4915 = !DILocation(line: 182, column: 13, scope: !4893)
!4916 = !DILocation(line: 182, column: 11, scope: !4894)
!4917 = !DILocation(line: 190, column: 30, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4893, file: !949, line: 183, column: 9)
!4919 = !DILocation(line: 191, column: 16, scope: !4918)
!4920 = !DILocation(line: 191, column: 13, scope: !4918)
!4921 = !DILocation(line: 192, column: 9, scope: !4918)
!4922 = !DILocation(line: 197, column: 11, scope: !4897)
!4923 = !DILocation(line: 197, column: 11, scope: !4898)
!4924 = !DILocation(line: 198, column: 9, scope: !4897)
!4925 = !DILocation(line: 0, scope: !4709, inlinedAt: !4926)
!4926 = distinct !DILocation(line: 201, column: 7, scope: !952)
!4927 = !DILocation(line: 85, column: 25, scope: !4709, inlinedAt: !4926)
!4928 = !DILocation(line: 0, scope: !4717, inlinedAt: !4929)
!4929 = distinct !DILocation(line: 85, column: 10, scope: !4709, inlinedAt: !4926)
!4930 = !DILocation(line: 39, column: 8, scope: !4724, inlinedAt: !4929)
!4931 = !DILocation(line: 39, column: 7, scope: !4717, inlinedAt: !4929)
!4932 = !DILocation(line: 40, column: 5, scope: !4724, inlinedAt: !4929)
!4933 = !DILocation(line: 202, column: 7, scope: !952)
!4934 = !DILocation(line: 203, column: 3, scope: !952)
!4935 = !DILocation(line: 0, scope: !964)
!4936 = !DILocation(line: 230, column: 14, scope: !964)
!4937 = !DILocation(line: 238, column: 7, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !964, file: !949, line: 238, column: 7)
!4939 = !DILocation(line: 238, column: 7, scope: !964)
!4940 = !DILocation(line: 240, column: 9, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !964, file: !949, line: 240, column: 7)
!4942 = !DILocation(line: 240, column: 18, scope: !4941)
!4943 = !DILocation(line: 253, column: 8, scope: !964)
!4944 = !DILocation(line: 256, column: 7, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !964, file: !949, line: 256, column: 7)
!4946 = !DILocation(line: 256, column: 7, scope: !964)
!4947 = !DILocation(line: 258, column: 27, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4945, file: !949, line: 257, column: 5)
!4949 = !DILocation(line: 259, column: 50, scope: !4948)
!4950 = !DILocation(line: 259, column: 32, scope: !4948)
!4951 = !DILocation(line: 260, column: 5, scope: !4948)
!4952 = !DILocation(line: 262, column: 9, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !964, file: !949, line: 262, column: 7)
!4954 = !DILocation(line: 262, column: 7, scope: !964)
!4955 = !DILocation(line: 263, column: 9, scope: !4953)
!4956 = !DILocation(line: 263, column: 5, scope: !4953)
!4957 = !DILocation(line: 264, column: 9, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !964, file: !949, line: 264, column: 7)
!4959 = !DILocation(line: 264, column: 14, scope: !4958)
!4960 = !DILocation(line: 265, column: 7, scope: !4958)
!4961 = !DILocation(line: 265, column: 11, scope: !4958)
!4962 = !DILocation(line: 266, column: 11, scope: !4958)
!4963 = !DILocation(line: 267, column: 14, scope: !4958)
!4964 = !DILocation(line: 264, column: 7, scope: !964)
!4965 = !DILocation(line: 268, column: 5, scope: !4958)
!4966 = !DILocation(line: 0, scope: !4781, inlinedAt: !4967)
!4967 = distinct !DILocation(line: 269, column: 8, scope: !964)
!4968 = !DILocation(line: 0, scope: !4787, inlinedAt: !4969)
!4969 = distinct !DILocation(line: 70, column: 25, scope: !4781, inlinedAt: !4967)
!4970 = !DILocation(line: 2059, column: 24, scope: !4787, inlinedAt: !4969)
!4971 = !DILocation(line: 2059, column: 10, scope: !4787, inlinedAt: !4969)
!4972 = !DILocation(line: 0, scope: !4717, inlinedAt: !4973)
!4973 = distinct !DILocation(line: 70, column: 10, scope: !4781, inlinedAt: !4967)
!4974 = !DILocation(line: 39, column: 8, scope: !4724, inlinedAt: !4973)
!4975 = !DILocation(line: 39, column: 7, scope: !4717, inlinedAt: !4973)
!4976 = !DILocation(line: 40, column: 5, scope: !4724, inlinedAt: !4973)
!4977 = !DILocation(line: 270, column: 7, scope: !964)
!4978 = !DILocation(line: 271, column: 3, scope: !964)
!4979 = distinct !DISubprogram(name: "xzalloc", scope: !949, file: !949, line: 279, type: !3029, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !4980)
!4980 = !{!4981}
!4981 = !DILocalVariable(name: "s", arg: 1, scope: !4979, file: !949, line: 279, type: !170)
!4982 = !DILocation(line: 0, scope: !4979)
!4983 = !DILocalVariable(name: "n", arg: 1, scope: !4984, file: !949, line: 294, type: !170)
!4984 = distinct !DISubprogram(name: "xcalloc", scope: !949, file: !949, line: 294, type: !4846, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !4985)
!4985 = !{!4983, !4986}
!4986 = !DILocalVariable(name: "s", arg: 2, scope: !4984, file: !949, line: 294, type: !170)
!4987 = !DILocation(line: 0, scope: !4984, inlinedAt: !4988)
!4988 = distinct !DILocation(line: 281, column: 10, scope: !4979)
!4989 = !DILocation(line: 296, column: 25, scope: !4984, inlinedAt: !4988)
!4990 = !DILocation(line: 0, scope: !4717, inlinedAt: !4991)
!4991 = distinct !DILocation(line: 296, column: 10, scope: !4984, inlinedAt: !4988)
!4992 = !DILocation(line: 39, column: 8, scope: !4724, inlinedAt: !4991)
!4993 = !DILocation(line: 39, column: 7, scope: !4717, inlinedAt: !4991)
!4994 = !DILocation(line: 40, column: 5, scope: !4724, inlinedAt: !4991)
!4995 = !DILocation(line: 281, column: 3, scope: !4979)
!4996 = !DISubprogram(name: "calloc", scope: !1226, file: !1226, line: 543, type: !4846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4997 = !DILocation(line: 0, scope: !4984)
!4998 = !DILocation(line: 296, column: 25, scope: !4984)
!4999 = !DILocation(line: 0, scope: !4717, inlinedAt: !5000)
!5000 = distinct !DILocation(line: 296, column: 10, scope: !4984)
!5001 = !DILocation(line: 39, column: 8, scope: !4724, inlinedAt: !5000)
!5002 = !DILocation(line: 39, column: 7, scope: !4717, inlinedAt: !5000)
!5003 = !DILocation(line: 40, column: 5, scope: !4724, inlinedAt: !5000)
!5004 = !DILocation(line: 296, column: 3, scope: !4984)
!5005 = distinct !DISubprogram(name: "xizalloc", scope: !949, file: !949, line: 285, type: !4748, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !5006)
!5006 = !{!5007}
!5007 = !DILocalVariable(name: "s", arg: 1, scope: !5005, file: !949, line: 285, type: !968)
!5008 = !DILocation(line: 0, scope: !5005)
!5009 = !DILocalVariable(name: "n", arg: 1, scope: !5010, file: !949, line: 300, type: !968)
!5010 = distinct !DISubprogram(name: "xicalloc", scope: !949, file: !949, line: 300, type: !4862, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !5011)
!5011 = !{!5009, !5012}
!5012 = !DILocalVariable(name: "s", arg: 2, scope: !5010, file: !949, line: 300, type: !968)
!5013 = !DILocation(line: 0, scope: !5010, inlinedAt: !5014)
!5014 = distinct !DILocation(line: 287, column: 10, scope: !5005)
!5015 = !DILocalVariable(name: "n", arg: 1, scope: !5016, file: !4755, line: 77, type: !968)
!5016 = distinct !DISubprogram(name: "icalloc", scope: !4755, file: !4755, line: 77, type: !4862, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !5017)
!5017 = !{!5015, !5018}
!5018 = !DILocalVariable(name: "s", arg: 2, scope: !5016, file: !4755, line: 77, type: !968)
!5019 = !DILocation(line: 0, scope: !5016, inlinedAt: !5020)
!5020 = distinct !DILocation(line: 302, column: 25, scope: !5010, inlinedAt: !5014)
!5021 = !DILocation(line: 91, column: 10, scope: !5016, inlinedAt: !5020)
!5022 = !DILocation(line: 0, scope: !4717, inlinedAt: !5023)
!5023 = distinct !DILocation(line: 302, column: 10, scope: !5010, inlinedAt: !5014)
!5024 = !DILocation(line: 39, column: 8, scope: !4724, inlinedAt: !5023)
!5025 = !DILocation(line: 39, column: 7, scope: !4717, inlinedAt: !5023)
!5026 = !DILocation(line: 40, column: 5, scope: !4724, inlinedAt: !5023)
!5027 = !DILocation(line: 287, column: 3, scope: !5005)
!5028 = !DILocation(line: 0, scope: !5010)
!5029 = !DILocation(line: 0, scope: !5016, inlinedAt: !5030)
!5030 = distinct !DILocation(line: 302, column: 25, scope: !5010)
!5031 = !DILocation(line: 91, column: 10, scope: !5016, inlinedAt: !5030)
!5032 = !DILocation(line: 0, scope: !4717, inlinedAt: !5033)
!5033 = distinct !DILocation(line: 302, column: 10, scope: !5010)
!5034 = !DILocation(line: 39, column: 8, scope: !4724, inlinedAt: !5033)
!5035 = !DILocation(line: 39, column: 7, scope: !4717, inlinedAt: !5033)
!5036 = !DILocation(line: 40, column: 5, scope: !4724, inlinedAt: !5033)
!5037 = !DILocation(line: 302, column: 3, scope: !5010)
!5038 = distinct !DISubprogram(name: "xmemdup", scope: !949, file: !949, line: 310, type: !5039, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !5041)
!5039 = !DISubroutineType(types: !5040)
!5040 = !{!168, !1250, !170}
!5041 = !{!5042, !5043}
!5042 = !DILocalVariable(name: "p", arg: 1, scope: !5038, file: !949, line: 310, type: !1250)
!5043 = !DILocalVariable(name: "s", arg: 2, scope: !5038, file: !949, line: 310, type: !170)
!5044 = !DILocation(line: 0, scope: !5038)
!5045 = !DILocation(line: 0, scope: !4736, inlinedAt: !5046)
!5046 = distinct !DILocation(line: 312, column: 18, scope: !5038)
!5047 = !DILocation(line: 49, column: 25, scope: !4736, inlinedAt: !5046)
!5048 = !DILocation(line: 0, scope: !4717, inlinedAt: !5049)
!5049 = distinct !DILocation(line: 49, column: 10, scope: !4736, inlinedAt: !5046)
!5050 = !DILocation(line: 39, column: 8, scope: !4724, inlinedAt: !5049)
!5051 = !DILocation(line: 39, column: 7, scope: !4717, inlinedAt: !5049)
!5052 = !DILocation(line: 40, column: 5, scope: !4724, inlinedAt: !5049)
!5053 = !DILocalVariable(name: "__dest", arg: 1, scope: !5054, file: !2105, line: 26, type: !2997)
!5054 = distinct !DISubprogram(name: "memcpy", scope: !2105, file: !2105, line: 26, type: !2995, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !5055)
!5055 = !{!5053, !5056, !5057}
!5056 = !DILocalVariable(name: "__src", arg: 2, scope: !5054, file: !2105, line: 26, type: !1249)
!5057 = !DILocalVariable(name: "__len", arg: 3, scope: !5054, file: !2105, line: 26, type: !170)
!5058 = !DILocation(line: 0, scope: !5054, inlinedAt: !5059)
!5059 = distinct !DILocation(line: 312, column: 10, scope: !5038)
!5060 = !DILocation(line: 29, column: 10, scope: !5054, inlinedAt: !5059)
!5061 = !DILocation(line: 312, column: 3, scope: !5038)
!5062 = distinct !DISubprogram(name: "ximemdup", scope: !949, file: !949, line: 316, type: !5063, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !5065)
!5063 = !DISubroutineType(types: !5064)
!5064 = !{!168, !1250, !968}
!5065 = !{!5066, !5067}
!5066 = !DILocalVariable(name: "p", arg: 1, scope: !5062, file: !949, line: 316, type: !1250)
!5067 = !DILocalVariable(name: "s", arg: 2, scope: !5062, file: !949, line: 316, type: !968)
!5068 = !DILocation(line: 0, scope: !5062)
!5069 = !DILocation(line: 0, scope: !4747, inlinedAt: !5070)
!5070 = distinct !DILocation(line: 318, column: 18, scope: !5062)
!5071 = !DILocation(line: 0, scope: !4754, inlinedAt: !5072)
!5072 = distinct !DILocation(line: 55, column: 25, scope: !4747, inlinedAt: !5070)
!5073 = !DILocation(line: 57, column: 26, scope: !4754, inlinedAt: !5072)
!5074 = !DILocation(line: 0, scope: !4717, inlinedAt: !5075)
!5075 = distinct !DILocation(line: 55, column: 10, scope: !4747, inlinedAt: !5070)
!5076 = !DILocation(line: 39, column: 8, scope: !4724, inlinedAt: !5075)
!5077 = !DILocation(line: 39, column: 7, scope: !4717, inlinedAt: !5075)
!5078 = !DILocation(line: 40, column: 5, scope: !4724, inlinedAt: !5075)
!5079 = !DILocation(line: 0, scope: !5054, inlinedAt: !5080)
!5080 = distinct !DILocation(line: 318, column: 10, scope: !5062)
!5081 = !DILocation(line: 29, column: 10, scope: !5054, inlinedAt: !5080)
!5082 = !DILocation(line: 318, column: 3, scope: !5062)
!5083 = distinct !DISubprogram(name: "ximemdup0", scope: !949, file: !949, line: 325, type: !5084, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !5086)
!5084 = !DISubroutineType(types: !5085)
!5085 = !{!167, !1250, !968}
!5086 = !{!5087, !5088, !5089}
!5087 = !DILocalVariable(name: "p", arg: 1, scope: !5083, file: !949, line: 325, type: !1250)
!5088 = !DILocalVariable(name: "s", arg: 2, scope: !5083, file: !949, line: 325, type: !968)
!5089 = !DILocalVariable(name: "result", scope: !5083, file: !949, line: 327, type: !167)
!5090 = !DILocation(line: 0, scope: !5083)
!5091 = !DILocation(line: 327, column: 30, scope: !5083)
!5092 = !DILocation(line: 0, scope: !4747, inlinedAt: !5093)
!5093 = distinct !DILocation(line: 327, column: 18, scope: !5083)
!5094 = !DILocation(line: 0, scope: !4754, inlinedAt: !5095)
!5095 = distinct !DILocation(line: 55, column: 25, scope: !4747, inlinedAt: !5093)
!5096 = !DILocation(line: 57, column: 26, scope: !4754, inlinedAt: !5095)
!5097 = !DILocation(line: 0, scope: !4717, inlinedAt: !5098)
!5098 = distinct !DILocation(line: 55, column: 10, scope: !4747, inlinedAt: !5093)
!5099 = !DILocation(line: 39, column: 8, scope: !4724, inlinedAt: !5098)
!5100 = !DILocation(line: 39, column: 7, scope: !4717, inlinedAt: !5098)
!5101 = !DILocation(line: 40, column: 5, scope: !4724, inlinedAt: !5098)
!5102 = !DILocation(line: 328, column: 3, scope: !5083)
!5103 = !DILocation(line: 328, column: 13, scope: !5083)
!5104 = !DILocation(line: 0, scope: !5054, inlinedAt: !5105)
!5105 = distinct !DILocation(line: 329, column: 10, scope: !5083)
!5106 = !DILocation(line: 29, column: 10, scope: !5054, inlinedAt: !5105)
!5107 = !DILocation(line: 329, column: 3, scope: !5083)
!5108 = distinct !DISubprogram(name: "xstrdup", scope: !949, file: !949, line: 335, type: !1228, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !5109)
!5109 = !{!5110}
!5110 = !DILocalVariable(name: "string", arg: 1, scope: !5108, file: !949, line: 335, type: !173)
!5111 = !DILocation(line: 0, scope: !5108)
!5112 = !DILocation(line: 337, column: 27, scope: !5108)
!5113 = !DILocation(line: 337, column: 43, scope: !5108)
!5114 = !DILocation(line: 0, scope: !5038, inlinedAt: !5115)
!5115 = distinct !DILocation(line: 337, column: 10, scope: !5108)
!5116 = !DILocation(line: 0, scope: !4736, inlinedAt: !5117)
!5117 = distinct !DILocation(line: 312, column: 18, scope: !5038, inlinedAt: !5115)
!5118 = !DILocation(line: 49, column: 25, scope: !4736, inlinedAt: !5117)
!5119 = !DILocation(line: 0, scope: !4717, inlinedAt: !5120)
!5120 = distinct !DILocation(line: 49, column: 10, scope: !4736, inlinedAt: !5117)
!5121 = !DILocation(line: 39, column: 8, scope: !4724, inlinedAt: !5120)
!5122 = !DILocation(line: 39, column: 7, scope: !4717, inlinedAt: !5120)
!5123 = !DILocation(line: 40, column: 5, scope: !4724, inlinedAt: !5120)
!5124 = !DILocation(line: 0, scope: !5054, inlinedAt: !5125)
!5125 = distinct !DILocation(line: 312, column: 10, scope: !5038, inlinedAt: !5115)
!5126 = !DILocation(line: 29, column: 10, scope: !5054, inlinedAt: !5125)
!5127 = !DILocation(line: 337, column: 3, scope: !5108)
!5128 = distinct !DISubprogram(name: "xalloc_die", scope: !891, file: !891, line: 32, type: !663, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !981, retainedNodes: !5129)
!5129 = !{!5130}
!5130 = !DILocalVariable(name: "__errstatus", scope: !5131, file: !891, line: 34, type: !5132)
!5131 = distinct !DILexicalBlock(scope: !5128, file: !891, line: 34, column: 3)
!5132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!5133 = !DILocation(line: 34, column: 3, scope: !5131)
!5134 = !DILocation(line: 0, scope: !5131)
!5135 = !DILocation(line: 40, column: 3, scope: !5128)
!5136 = distinct !DISubprogram(name: "rpl_fopen", scope: !984, file: !984, line: 46, type: !5137, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !983, retainedNodes: !5173)
!5137 = !DISubroutineType(types: !5138)
!5138 = !{!5139, !173, !173}
!5139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5140, size: 64)
!5140 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !5141)
!5141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !5142)
!5142 = !{!5143, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172}
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5141, file: !269, line: 51, baseType: !118, size: 32)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5141, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5141, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5141, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5141, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5141, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5141, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5141, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5141, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5141, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5141, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5141, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5141, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5141, file: !269, line: 70, baseType: !5157, size: 64, offset: 832)
!5157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5141, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5141, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5141, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5141, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5141, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5141, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5141, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5141, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5141, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5141, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5141, file: !269, line: 93, baseType: !5157, size: 64, offset: 1344)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5141, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5141, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5141, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5141, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!5173 = !{!5174, !5175, !5176, !5177, !5178, !5179, !5183, !5185, !5186, !5191, !5194, !5195}
!5174 = !DILocalVariable(name: "filename", arg: 1, scope: !5136, file: !984, line: 46, type: !173)
!5175 = !DILocalVariable(name: "mode", arg: 2, scope: !5136, file: !984, line: 46, type: !173)
!5176 = !DILocalVariable(name: "open_direction", scope: !5136, file: !984, line: 54, type: !118)
!5177 = !DILocalVariable(name: "open_flags", scope: !5136, file: !984, line: 55, type: !118)
!5178 = !DILocalVariable(name: "open_flags_gnu", scope: !5136, file: !984, line: 57, type: !224)
!5179 = !DILocalVariable(name: "fdopen_mode_buf", scope: !5136, file: !984, line: 59, type: !5180)
!5180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !5181)
!5181 = !{!5182}
!5182 = !DISubrange(count: 81)
!5183 = !DILocalVariable(name: "p", scope: !5184, file: !984, line: 62, type: !173)
!5184 = distinct !DILexicalBlock(scope: !5136, file: !984, line: 61, column: 3)
!5185 = !DILocalVariable(name: "q", scope: !5184, file: !984, line: 64, type: !167)
!5186 = !DILocalVariable(name: "len", scope: !5187, file: !984, line: 128, type: !170)
!5187 = distinct !DILexicalBlock(scope: !5188, file: !984, line: 127, column: 9)
!5188 = distinct !DILexicalBlock(scope: !5189, file: !984, line: 68, column: 7)
!5189 = distinct !DILexicalBlock(scope: !5190, file: !984, line: 67, column: 5)
!5190 = distinct !DILexicalBlock(scope: !5184, file: !984, line: 67, column: 5)
!5191 = !DILocalVariable(name: "fd", scope: !5192, file: !984, line: 199, type: !118)
!5192 = distinct !DILexicalBlock(scope: !5193, file: !984, line: 198, column: 5)
!5193 = distinct !DILexicalBlock(scope: !5136, file: !984, line: 197, column: 7)
!5194 = !DILocalVariable(name: "fp", scope: !5192, file: !984, line: 204, type: !5139)
!5195 = !DILocalVariable(name: "saved_errno", scope: !5196, file: !984, line: 207, type: !118)
!5196 = distinct !DILexicalBlock(scope: !5197, file: !984, line: 206, column: 9)
!5197 = distinct !DILexicalBlock(scope: !5192, file: !984, line: 205, column: 11)
!5198 = distinct !DIAssignID()
!5199 = !DILocation(line: 0, scope: !5136)
!5200 = !DILocation(line: 59, column: 3, scope: !5136)
!5201 = !DILocation(line: 0, scope: !5184)
!5202 = !DILocation(line: 67, column: 5, scope: !5184)
!5203 = !DILocation(line: 54, column: 7, scope: !5136)
!5204 = !DILocation(line: 67, column: 12, scope: !5189)
!5205 = !DILocation(line: 67, column: 5, scope: !5190)
!5206 = !DILocation(line: 74, column: 19, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5208, file: !984, line: 74, column: 17)
!5208 = distinct !DILexicalBlock(scope: !5188, file: !984, line: 70, column: 11)
!5209 = !DILocation(line: 74, column: 17, scope: !5208)
!5210 = !DILocation(line: 75, column: 17, scope: !5207)
!5211 = !DILocation(line: 75, column: 20, scope: !5207)
!5212 = !DILocation(line: 75, column: 15, scope: !5207)
!5213 = !DILocation(line: 80, column: 24, scope: !5208)
!5214 = !DILocation(line: 82, column: 19, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5208, file: !984, line: 82, column: 17)
!5216 = !DILocation(line: 82, column: 17, scope: !5208)
!5217 = !DILocation(line: 83, column: 17, scope: !5215)
!5218 = !DILocation(line: 83, column: 20, scope: !5215)
!5219 = !DILocation(line: 83, column: 15, scope: !5215)
!5220 = !DILocation(line: 88, column: 24, scope: !5208)
!5221 = !DILocation(line: 90, column: 19, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5208, file: !984, line: 90, column: 17)
!5223 = !DILocation(line: 90, column: 17, scope: !5208)
!5224 = !DILocation(line: 91, column: 17, scope: !5222)
!5225 = !DILocation(line: 91, column: 20, scope: !5222)
!5226 = !DILocation(line: 91, column: 15, scope: !5222)
!5227 = !DILocation(line: 100, column: 19, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5208, file: !984, line: 100, column: 17)
!5229 = !DILocation(line: 100, column: 17, scope: !5208)
!5230 = !DILocation(line: 101, column: 17, scope: !5228)
!5231 = !DILocation(line: 101, column: 20, scope: !5228)
!5232 = !DILocation(line: 101, column: 15, scope: !5228)
!5233 = !DILocation(line: 107, column: 19, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5208, file: !984, line: 107, column: 17)
!5235 = !DILocation(line: 107, column: 17, scope: !5208)
!5236 = !DILocation(line: 108, column: 17, scope: !5234)
!5237 = !DILocation(line: 108, column: 20, scope: !5234)
!5238 = !DILocation(line: 108, column: 15, scope: !5234)
!5239 = !DILocation(line: 113, column: 24, scope: !5208)
!5240 = !DILocation(line: 115, column: 13, scope: !5208)
!5241 = !DILocation(line: 117, column: 24, scope: !5208)
!5242 = !DILocation(line: 119, column: 13, scope: !5208)
!5243 = !DILocation(line: 128, column: 24, scope: !5187)
!5244 = !DILocation(line: 0, scope: !5187)
!5245 = !DILocation(line: 129, column: 48, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5187, file: !984, line: 129, column: 15)
!5247 = !DILocation(line: 129, column: 15, scope: !5187)
!5248 = !DILocalVariable(name: "__dest", arg: 1, scope: !5249, file: !2105, line: 26, type: !2997)
!5249 = distinct !DISubprogram(name: "memcpy", scope: !2105, file: !2105, line: 26, type: !2995, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !983, retainedNodes: !5250)
!5250 = !{!5248, !5251, !5252}
!5251 = !DILocalVariable(name: "__src", arg: 2, scope: !5249, file: !2105, line: 26, type: !1249)
!5252 = !DILocalVariable(name: "__len", arg: 3, scope: !5249, file: !2105, line: 26, type: !170)
!5253 = !DILocation(line: 0, scope: !5249, inlinedAt: !5254)
!5254 = distinct !DILocation(line: 131, column: 11, scope: !5187)
!5255 = !DILocation(line: 29, column: 10, scope: !5249, inlinedAt: !5254)
!5256 = !DILocation(line: 132, column: 13, scope: !5187)
!5257 = !DILocation(line: 135, column: 9, scope: !5188)
!5258 = !DILocation(line: 67, column: 25, scope: !5189)
!5259 = !DILocation(line: 67, column: 5, scope: !5189)
!5260 = distinct !{!5260, !5205, !5261, !1149}
!5261 = !DILocation(line: 136, column: 7, scope: !5190)
!5262 = !DILocation(line: 138, column: 8, scope: !5184)
!5263 = !DILocation(line: 197, column: 7, scope: !5193)
!5264 = !DILocation(line: 197, column: 7, scope: !5136)
!5265 = !DILocation(line: 199, column: 47, scope: !5192)
!5266 = !DILocation(line: 199, column: 16, scope: !5192)
!5267 = !DILocation(line: 0, scope: !5192)
!5268 = !DILocation(line: 201, column: 14, scope: !5269)
!5269 = distinct !DILexicalBlock(scope: !5192, file: !984, line: 201, column: 11)
!5270 = !DILocation(line: 201, column: 11, scope: !5192)
!5271 = !DILocation(line: 204, column: 18, scope: !5192)
!5272 = !DILocation(line: 205, column: 14, scope: !5197)
!5273 = !DILocation(line: 205, column: 11, scope: !5192)
!5274 = !DILocation(line: 207, column: 29, scope: !5196)
!5275 = !DILocation(line: 0, scope: !5196)
!5276 = !DILocation(line: 208, column: 11, scope: !5196)
!5277 = !DILocation(line: 209, column: 17, scope: !5196)
!5278 = !DILocation(line: 210, column: 9, scope: !5196)
!5279 = !DILocalVariable(name: "filename", arg: 1, scope: !5280, file: !984, line: 30, type: !173)
!5280 = distinct !DISubprogram(name: "orig_fopen", scope: !984, file: !984, line: 30, type: !5137, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !983, retainedNodes: !5281)
!5281 = !{!5279, !5282}
!5282 = !DILocalVariable(name: "mode", arg: 2, scope: !5280, file: !984, line: 30, type: !173)
!5283 = !DILocation(line: 0, scope: !5280, inlinedAt: !5284)
!5284 = distinct !DILocation(line: 219, column: 10, scope: !5136)
!5285 = !DILocation(line: 32, column: 10, scope: !5280, inlinedAt: !5284)
!5286 = !DILocation(line: 219, column: 3, scope: !5136)
!5287 = !DILocation(line: 220, column: 1, scope: !5136)
!5288 = !DISubprogram(name: "open", scope: !2416, file: !2416, line: 181, type: !5289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5289 = !DISubroutineType(types: !5290)
!5290 = !{!118, !173, !118, null}
!5291 = !DISubprogram(name: "fdopen", scope: !1097, file: !1097, line: 293, type: !5292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5292 = !DISubroutineType(types: !5293)
!5293 = !{!5139, !118, !173}
!5294 = !DISubprogram(name: "close", scope: !2281, file: !2281, line: 358, type: !1536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5295 = !DISubprogram(name: "fopen", scope: !1097, file: !1097, line: 258, type: !5296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5296 = !DISubroutineType(types: !5297)
!5297 = !{!5139, !1092, !1092}
!5298 = distinct !DISubprogram(name: "close_stream", scope: !986, file: !986, line: 55, type: !5299, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !985, retainedNodes: !5335)
!5299 = !DISubroutineType(types: !5300)
!5300 = !{!118, !5301}
!5301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5302, size: 64)
!5302 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !5303)
!5303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !5304)
!5304 = !{!5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5320, !5321, !5322, !5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334}
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5303, file: !269, line: 51, baseType: !118, size: 32)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5303, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5303, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5303, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5303, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5303, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5303, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5303, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5303, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5303, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5303, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5303, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5303, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5303, file: !269, line: 70, baseType: !5319, size: 64, offset: 832)
!5319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5303, size: 64)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5303, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5303, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5303, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5303, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5303, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5303, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5303, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5303, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5303, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5303, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5303, file: !269, line: 93, baseType: !5319, size: 64, offset: 1344)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5303, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5303, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5303, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5303, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!5335 = !{!5336, !5337, !5339, !5340}
!5336 = !DILocalVariable(name: "stream", arg: 1, scope: !5298, file: !986, line: 55, type: !5301)
!5337 = !DILocalVariable(name: "some_pending", scope: !5298, file: !986, line: 57, type: !5338)
!5338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!5339 = !DILocalVariable(name: "prev_fail", scope: !5298, file: !986, line: 58, type: !5338)
!5340 = !DILocalVariable(name: "fclose_fail", scope: !5298, file: !986, line: 59, type: !5338)
!5341 = !DILocation(line: 0, scope: !5298)
!5342 = !DILocation(line: 57, column: 30, scope: !5298)
!5343 = !DILocalVariable(name: "__stream", arg: 1, scope: !5344, file: !1447, line: 135, type: !5301)
!5344 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1447, file: !1447, line: 135, type: !5299, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !985, retainedNodes: !5345)
!5345 = !{!5343}
!5346 = !DILocation(line: 0, scope: !5344, inlinedAt: !5347)
!5347 = distinct !DILocation(line: 58, column: 27, scope: !5298)
!5348 = !DILocation(line: 137, column: 10, scope: !5344, inlinedAt: !5347)
!5349 = !DILocation(line: 58, column: 43, scope: !5298)
!5350 = !DILocation(line: 59, column: 29, scope: !5298)
!5351 = !DILocation(line: 59, column: 45, scope: !5298)
!5352 = !DILocation(line: 69, column: 17, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5298, file: !986, line: 69, column: 7)
!5354 = !DILocation(line: 57, column: 50, scope: !5298)
!5355 = !DILocation(line: 69, column: 33, scope: !5353)
!5356 = !DILocation(line: 69, column: 53, scope: !5353)
!5357 = !DILocation(line: 69, column: 59, scope: !5353)
!5358 = !DILocation(line: 69, column: 7, scope: !5298)
!5359 = !DILocation(line: 71, column: 11, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5353, file: !986, line: 70, column: 5)
!5361 = !DILocation(line: 72, column: 9, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !5360, file: !986, line: 71, column: 11)
!5363 = !DILocation(line: 72, column: 15, scope: !5362)
!5364 = !DILocation(line: 77, column: 1, scope: !5298)
!5365 = !DISubprogram(name: "__fpending", scope: !2624, file: !2624, line: 75, type: !5366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5366 = !DISubroutineType(types: !5367)
!5367 = !{!170, !5301}
!5368 = distinct !DISubprogram(name: "freadptr", scope: !988, file: !988, line: 30, type: !5369, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !987, retainedNodes: !5405)
!5369 = !DISubroutineType(types: !5370)
!5370 = !{!173, !5371, !955}
!5371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5372, size: 64)
!5372 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !5373)
!5373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !5374)
!5374 = !{!5375, !5376, !5377, !5378, !5379, !5380, !5381, !5382, !5383, !5384, !5385, !5386, !5387, !5388, !5390, !5391, !5392, !5393, !5394, !5395, !5396, !5397, !5398, !5399, !5400, !5401, !5402, !5403, !5404}
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5373, file: !269, line: 51, baseType: !118, size: 32)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5373, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5373, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5373, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5373, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5373, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5373, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5373, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5373, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5373, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5373, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5373, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5373, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5373, file: !269, line: 70, baseType: !5389, size: 64, offset: 832)
!5389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5373, size: 64)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5373, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5373, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5373, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5373, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5373, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5373, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5373, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5373, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5373, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5373, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5373, file: !269, line: 93, baseType: !5389, size: 64, offset: 1344)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5373, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5373, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5373, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5373, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!5405 = !{!5406, !5407, !5408}
!5406 = !DILocalVariable(name: "fp", arg: 1, scope: !5368, file: !988, line: 30, type: !5371)
!5407 = !DILocalVariable(name: "sizep", arg: 2, scope: !5368, file: !988, line: 30, type: !955)
!5408 = !DILocalVariable(name: "size", scope: !5368, file: !988, line: 32, type: !170)
!5409 = !DILocation(line: 0, scope: !5368)
!5410 = !DILocation(line: 37, column: 11, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5368, file: !988, line: 37, column: 7)
!5412 = !DILocation(line: 37, column: 31, scope: !5411)
!5413 = !DILocation(line: 37, column: 25, scope: !5411)
!5414 = !DILocation(line: 37, column: 7, scope: !5368)
!5415 = !DILocation(line: 39, column: 14, scope: !5368)
!5416 = !DILocation(line: 39, column: 33, scope: !5368)
!5417 = !DILocation(line: 40, column: 12, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5368, file: !988, line: 40, column: 7)
!5419 = !DILocation(line: 40, column: 7, scope: !5368)
!5420 = !DILocation(line: 39, column: 27, scope: !5368)
!5421 = !DILocation(line: 42, column: 10, scope: !5368)
!5422 = !DILocation(line: 43, column: 3, scope: !5368)
!5423 = !DILocation(line: 125, column: 1, scope: !5368)
!5424 = distinct !DISubprogram(name: "freadseek", scope: !991, file: !991, line: 74, type: !5425, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !990, retainedNodes: !5461)
!5425 = !DISubroutineType(types: !5426)
!5426 = !{!118, !5427, !170}
!5427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5428, size: 64)
!5428 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !5429)
!5429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !5430)
!5430 = !{!5431, !5432, !5433, !5434, !5435, !5436, !5437, !5438, !5439, !5440, !5441, !5442, !5443, !5444, !5446, !5447, !5448, !5449, !5450, !5451, !5452, !5453, !5454, !5455, !5456, !5457, !5458, !5459, !5460}
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5429, file: !269, line: 51, baseType: !118, size: 32)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5429, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5429, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5429, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5429, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5429, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5429, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5429, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5429, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5429, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5429, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5429, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5429, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5429, file: !269, line: 70, baseType: !5445, size: 64, offset: 832)
!5445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5429, size: 64)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5429, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5429, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5429, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5429, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5429, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5429, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5429, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5429, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5429, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5429, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5429, file: !269, line: 93, baseType: !5445, size: 64, offset: 1344)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5429, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5429, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5429, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5429, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!5461 = !{!5462, !5463, !5464, !5465, !5467, !5470, !5471, !5478, !5479}
!5462 = !DILocalVariable(name: "fp", arg: 1, scope: !5424, file: !991, line: 74, type: !5427)
!5463 = !DILocalVariable(name: "offset", arg: 2, scope: !5424, file: !991, line: 74, type: !170)
!5464 = !DILocalVariable(name: "total_buffered", scope: !5424, file: !991, line: 81, type: !170)
!5465 = !DILocalVariable(name: "buffered", scope: !5466, file: !991, line: 86, type: !170)
!5466 = distinct !DILexicalBlock(scope: !5424, file: !991, line: 85, column: 5)
!5467 = !DILocalVariable(name: "increment", scope: !5468, file: !991, line: 90, type: !170)
!5468 = distinct !DILexicalBlock(scope: !5469, file: !991, line: 89, column: 9)
!5469 = distinct !DILexicalBlock(scope: !5466, file: !991, line: 88, column: 11)
!5470 = !DILocalVariable(name: "fd", scope: !5424, file: !991, line: 111, type: !118)
!5471 = !DILocalVariable(name: "buf", scope: !5472, file: !991, line: 123, type: !5475)
!5472 = distinct !DILexicalBlock(scope: !5473, file: !991, line: 122, column: 9)
!5473 = distinct !DILexicalBlock(scope: !5474, file: !991, line: 118, column: 5)
!5474 = distinct !DILexicalBlock(scope: !5424, file: !991, line: 112, column: 7)
!5475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !5476)
!5476 = !{!5477}
!5477 = !DISubrange(count: 4096)
!5478 = !DILocalVariable(name: "count", scope: !5472, file: !991, line: 124, type: !170)
!5479 = !DILabel(scope: !5424, name: "eof", file: !991, line: 134)
!5480 = distinct !DIAssignID()
!5481 = !DILocation(line: 0, scope: !5466)
!5482 = distinct !DIAssignID()
!5483 = !DILocation(line: 0, scope: !5472)
!5484 = !DILocation(line: 0, scope: !5424)
!5485 = !DILocation(line: 76, column: 14, scope: !5486)
!5486 = distinct !DILexicalBlock(scope: !5424, file: !991, line: 76, column: 7)
!5487 = !DILocation(line: 76, column: 7, scope: !5424)
!5488 = !DILocation(line: 81, column: 27, scope: !5424)
!5489 = !DILocation(line: 84, column: 3, scope: !5424)
!5490 = !DILocation(line: 81, column: 10, scope: !5424)
!5491 = !DILocation(line: 84, column: 25, scope: !5424)
!5492 = !DILocation(line: 86, column: 7, scope: !5466)
!5493 = !DILocation(line: 88, column: 11, scope: !5469)
!5494 = !DILocation(line: 88, column: 36, scope: !5469)
!5495 = !DILocation(line: 88, column: 44, scope: !5469)
!5496 = !DILocation(line: 90, column: 31, scope: !5468)
!5497 = !DILocation(line: 0, scope: !5468)
!5498 = !DILocalVariable(name: "fp", arg: 1, scope: !5499, file: !991, line: 34, type: !5427)
!5499 = distinct !DISubprogram(name: "freadptrinc", scope: !991, file: !991, line: 34, type: !5500, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !990, retainedNodes: !5502)
!5500 = !DISubroutineType(types: !5501)
!5501 = !{null, !5427, !170}
!5502 = !{!5498, !5503}
!5503 = !DILocalVariable(name: "increment", arg: 2, scope: !5499, file: !991, line: 34, type: !170)
!5504 = !DILocation(line: 0, scope: !5499, inlinedAt: !5505)
!5505 = distinct !DILocation(line: 92, column: 11, scope: !5468)
!5506 = !DILocation(line: 41, column: 20, scope: !5499, inlinedAt: !5505)
!5507 = !DILocation(line: 93, column: 18, scope: !5468)
!5508 = !DILocation(line: 94, column: 22, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5468, file: !991, line: 94, column: 15)
!5510 = !DILocation(line: 94, column: 15, scope: !5468)
!5511 = !DILocation(line: 96, column: 26, scope: !5468)
!5512 = !DILocation(line: 97, column: 30, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5468, file: !991, line: 97, column: 15)
!5514 = !DILocation(line: 102, column: 11, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5466, file: !991, line: 102, column: 11)
!5516 = !DILocation(line: 102, column: 22, scope: !5515)
!5517 = !DILocation(line: 102, column: 11, scope: !5466)
!5518 = !DILocation(line: 108, column: 5, scope: !5424)
!5519 = !DILocation(line: 104, column: 13, scope: !5466)
!5520 = !DILocation(line: 105, column: 18, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5466, file: !991, line: 105, column: 11)
!5522 = !DILocation(line: 105, column: 11, scope: !5466)
!5523 = !DILocation(line: 107, column: 21, scope: !5466)
!5524 = distinct !{!5524, !5489, !5518, !1149}
!5525 = !DILocation(line: 111, column: 12, scope: !5424)
!5526 = !DILocation(line: 112, column: 10, scope: !5474)
!5527 = !DILocation(line: 112, column: 15, scope: !5474)
!5528 = !DILocation(line: 121, column: 7, scope: !5473)
!5529 = !DILocation(line: 112, column: 18, scope: !5474)
!5530 = !DILocation(line: 112, column: 42, scope: !5474)
!5531 = !DILocation(line: 112, column: 7, scope: !5424)
!5532 = !DILocation(line: 115, column: 14, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5474, file: !991, line: 113, column: 5)
!5534 = !DILocation(line: 115, column: 7, scope: !5533)
!5535 = !DILocation(line: 123, column: 11, scope: !5472)
!5536 = !DILocation(line: 124, column: 27, scope: !5472)
!5537 = !DILocalVariable(name: "__ptr", arg: 1, scope: !5538, file: !1088, line: 288, type: !2997)
!5538 = distinct !DISubprogram(name: "fread", scope: !1088, file: !1088, line: 288, type: !5539, scopeLine: 290, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !990, retainedNodes: !5542)
!5539 = !DISubroutineType(types: !5540)
!5540 = !{!172, !2997, !170, !170, !5541}
!5541 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5427)
!5542 = !{!5537, !5543, !5544, !5545, !5546}
!5543 = !DILocalVariable(name: "__size", arg: 2, scope: !5538, file: !1088, line: 288, type: !170)
!5544 = !DILocalVariable(name: "__n", arg: 3, scope: !5538, file: !1088, line: 288, type: !170)
!5545 = !DILocalVariable(name: "__stream", arg: 4, scope: !5538, file: !1088, line: 289, type: !5541)
!5546 = !DILocalVariable(name: "sz", scope: !5538, file: !1088, line: 291, type: !170)
!5547 = !DILocation(line: 0, scope: !5538, inlinedAt: !5548)
!5548 = distinct !DILocation(line: 125, column: 15, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5472, file: !991, line: 125, column: 15)
!5550 = !DILocation(line: 293, column: 12, scope: !5551, inlinedAt: !5548)
!5551 = distinct !DILexicalBlock(scope: !5538, file: !1088, line: 292, column: 7)
!5552 = !DILocation(line: 125, column: 41, scope: !5549)
!5553 = !DILocation(line: 128, column: 9, scope: !5473)
!5554 = !DILocation(line: 125, column: 15, scope: !5472)
!5555 = !DILocation(line: 129, column: 21, scope: !5473)
!5556 = !DILocation(line: 128, column: 9, scope: !5472)
!5557 = distinct !{!5557, !5528, !5558, !1149}
!5558 = !DILocation(line: 129, column: 24, scope: !5473)
!5559 = !DILocation(line: 134, column: 2, scope: !5424)
!5560 = !DILocation(line: 136, column: 7, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5424, file: !991, line: 136, column: 7)
!5562 = !DILocation(line: 0, scope: !5561)
!5563 = !DILocation(line: 141, column: 1, scope: !5424)
!5564 = !DISubprogram(name: "fgetc", scope: !1097, file: !1097, line: 513, type: !5565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5565 = !DISubroutineType(types: !5566)
!5566 = !{!118, !5427}
!5567 = !DISubprogram(name: "__fread_alias", linkageName: "fread", scope: !1088, file: !1088, line: 275, type: !5568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5568 = !DISubroutineType(types: !5569)
!5569 = !{!170, !2997, !170, !170, !5541}
!5570 = !DISubprogram(name: "ferror", scope: !1097, file: !1097, line: 790, type: !5565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5571 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !898, file: !898, line: 100, type: !5572, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !901, retainedNodes: !5575)
!5572 = !DISubroutineType(types: !5573)
!5573 = !{!170, !3199, !173, !170, !5574}
!5574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!5575 = !{!5576, !5577, !5578, !5579, !5580}
!5576 = !DILocalVariable(name: "pwc", arg: 1, scope: !5571, file: !898, line: 100, type: !3199)
!5577 = !DILocalVariable(name: "s", arg: 2, scope: !5571, file: !898, line: 100, type: !173)
!5578 = !DILocalVariable(name: "n", arg: 3, scope: !5571, file: !898, line: 100, type: !170)
!5579 = !DILocalVariable(name: "ps", arg: 4, scope: !5571, file: !898, line: 100, type: !5574)
!5580 = !DILocalVariable(name: "ret", scope: !5571, file: !898, line: 130, type: !170)
!5581 = !DILocation(line: 0, scope: !5571)
!5582 = !DILocation(line: 105, column: 9, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5571, file: !898, line: 105, column: 7)
!5584 = !DILocation(line: 105, column: 7, scope: !5571)
!5585 = !DILocation(line: 117, column: 10, scope: !5586)
!5586 = distinct !DILexicalBlock(scope: !5571, file: !898, line: 117, column: 7)
!5587 = !DILocation(line: 117, column: 7, scope: !5571)
!5588 = !DILocation(line: 130, column: 16, scope: !5571)
!5589 = !DILocation(line: 135, column: 11, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5571, file: !898, line: 135, column: 7)
!5591 = !DILocation(line: 135, column: 25, scope: !5590)
!5592 = !DILocation(line: 135, column: 30, scope: !5590)
!5593 = !DILocation(line: 135, column: 7, scope: !5571)
!5594 = !DILocalVariable(name: "ps", arg: 1, scope: !5595, file: !3173, line: 1135, type: !5574)
!5595 = distinct !DISubprogram(name: "mbszero", scope: !3173, file: !3173, line: 1135, type: !5596, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !901, retainedNodes: !5598)
!5596 = !DISubroutineType(types: !5597)
!5597 = !{null, !5574}
!5598 = !{!5594}
!5599 = !DILocation(line: 0, scope: !5595, inlinedAt: !5600)
!5600 = distinct !DILocation(line: 137, column: 5, scope: !5590)
!5601 = !DILocalVariable(name: "__dest", arg: 1, scope: !5602, file: !2105, line: 57, type: !168)
!5602 = distinct !DISubprogram(name: "memset", scope: !2105, file: !2105, line: 57, type: !3182, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !901, retainedNodes: !5603)
!5603 = !{!5601, !5604, !5605}
!5604 = !DILocalVariable(name: "__ch", arg: 2, scope: !5602, file: !2105, line: 57, type: !118)
!5605 = !DILocalVariable(name: "__len", arg: 3, scope: !5602, file: !2105, line: 57, type: !170)
!5606 = !DILocation(line: 0, scope: !5602, inlinedAt: !5607)
!5607 = distinct !DILocation(line: 1137, column: 3, scope: !5595, inlinedAt: !5600)
!5608 = !DILocation(line: 59, column: 10, scope: !5602, inlinedAt: !5607)
!5609 = !DILocation(line: 137, column: 5, scope: !5590)
!5610 = !DILocation(line: 138, column: 11, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5571, file: !898, line: 138, column: 7)
!5612 = !DILocation(line: 138, column: 7, scope: !5571)
!5613 = !DILocation(line: 139, column: 5, scope: !5611)
!5614 = !DILocation(line: 143, column: 26, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5571, file: !898, line: 143, column: 7)
!5616 = !DILocation(line: 143, column: 41, scope: !5615)
!5617 = !DILocation(line: 143, column: 7, scope: !5571)
!5618 = !DILocation(line: 145, column: 15, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !5620, file: !898, line: 145, column: 11)
!5620 = distinct !DILexicalBlock(scope: !5615, file: !898, line: 144, column: 5)
!5621 = !DILocation(line: 145, column: 11, scope: !5620)
!5622 = !DILocation(line: 146, column: 32, scope: !5619)
!5623 = !DILocation(line: 146, column: 16, scope: !5619)
!5624 = !DILocation(line: 146, column: 14, scope: !5619)
!5625 = !DILocation(line: 146, column: 9, scope: !5619)
!5626 = !DILocation(line: 286, column: 1, scope: !5571)
!5627 = !DISubprogram(name: "mbsinit", scope: !5628, file: !5628, line: 293, type: !5629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5628 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5629 = !DISubroutineType(types: !5630)
!5630 = !{!118, !5631}
!5631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5632, size: 64)
!5632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !904)
!5633 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !994, file: !994, line: 27, type: !4701, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !993, retainedNodes: !5634)
!5634 = !{!5635, !5636, !5637, !5638}
!5635 = !DILocalVariable(name: "ptr", arg: 1, scope: !5633, file: !994, line: 27, type: !168)
!5636 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5633, file: !994, line: 27, type: !170)
!5637 = !DILocalVariable(name: "size", arg: 3, scope: !5633, file: !994, line: 27, type: !170)
!5638 = !DILocalVariable(name: "nbytes", scope: !5633, file: !994, line: 29, type: !170)
!5639 = !DILocation(line: 0, scope: !5633)
!5640 = !DILocation(line: 30, column: 7, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5633, file: !994, line: 30, column: 7)
!5642 = !DILocation(line: 30, column: 7, scope: !5633)
!5643 = !DILocation(line: 32, column: 7, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5641, file: !994, line: 31, column: 5)
!5645 = !DILocation(line: 32, column: 13, scope: !5644)
!5646 = !DILocation(line: 33, column: 7, scope: !5644)
!5647 = !DILocalVariable(name: "ptr", arg: 1, scope: !5648, file: !2971, line: 2057, type: !168)
!5648 = distinct !DISubprogram(name: "rpl_realloc", scope: !2971, file: !2971, line: 2057, type: !2972, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !993, retainedNodes: !5649)
!5649 = !{!5647, !5650}
!5650 = !DILocalVariable(name: "size", arg: 2, scope: !5648, file: !2971, line: 2057, type: !170)
!5651 = !DILocation(line: 0, scope: !5648, inlinedAt: !5652)
!5652 = distinct !DILocation(line: 37, column: 10, scope: !5633)
!5653 = !DILocation(line: 2059, column: 24, scope: !5648, inlinedAt: !5652)
!5654 = !DILocation(line: 2059, column: 10, scope: !5648, inlinedAt: !5652)
!5655 = !DILocation(line: 37, column: 3, scope: !5633)
!5656 = !DILocation(line: 38, column: 1, scope: !5633)
!5657 = distinct !DISubprogram(name: "freadahead", scope: !996, file: !996, line: 34, type: !5658, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !5694)
!5658 = !DISubroutineType(types: !5659)
!5659 = !{!170, !5660}
!5660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5661, size: 64)
!5661 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !5662)
!5662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !5663)
!5663 = !{!5664, !5665, !5666, !5667, !5668, !5669, !5670, !5671, !5672, !5673, !5674, !5675, !5676, !5677, !5679, !5680, !5681, !5682, !5683, !5684, !5685, !5686, !5687, !5688, !5689, !5690, !5691, !5692, !5693}
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5662, file: !269, line: 51, baseType: !118, size: 32)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5662, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5662, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5662, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5662, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5662, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5662, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5662, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5662, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5662, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5662, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5662, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5662, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5662, file: !269, line: 70, baseType: !5678, size: 64, offset: 832)
!5678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5662, size: 64)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5662, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5662, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5662, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5662, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5662, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5662, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5662, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5662, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5662, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5662, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5662, file: !269, line: 93, baseType: !5678, size: 64, offset: 1344)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5662, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5662, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5662, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5662, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!5694 = !{!5695}
!5695 = !DILocalVariable(name: "fp", arg: 1, scope: !5657, file: !996, line: 34, type: !5660)
!5696 = !DILocation(line: 0, scope: !5657)
!5697 = !DILocation(line: 38, column: 11, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !5657, file: !996, line: 38, column: 7)
!5699 = !DILocation(line: 38, column: 31, scope: !5698)
!5700 = !DILocation(line: 38, column: 25, scope: !5698)
!5701 = !DILocation(line: 38, column: 7, scope: !5657)
!5702 = !DILocation(line: 40, column: 15, scope: !5657)
!5703 = !DILocation(line: 40, column: 34, scope: !5657)
!5704 = !DILocation(line: 40, column: 28, scope: !5657)
!5705 = !DILocation(line: 41, column: 17, scope: !5657)
!5706 = !DILocation(line: 41, column: 24, scope: !5657)
!5707 = !DILocation(line: 41, column: 13, scope: !5657)
!5708 = !DILocation(line: 41, column: 46, scope: !5657)
!5709 = !{!1455, !1025, i64 88}
!5710 = !DILocation(line: 41, column: 65, scope: !5657)
!5711 = !DILocation(line: 41, column: 59, scope: !5657)
!5712 = !DILocation(line: 41, column: 10, scope: !5657)
!5713 = !DILocation(line: 40, column: 3, scope: !5657)
!5714 = !DILocation(line: 103, column: 1, scope: !5657)
!5715 = distinct !DISubprogram(name: "hard_locale", scope: !916, file: !916, line: 28, type: !2041, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !5716)
!5716 = !{!5717, !5718}
!5717 = !DILocalVariable(name: "category", arg: 1, scope: !5715, file: !916, line: 28, type: !118)
!5718 = !DILocalVariable(name: "locale", scope: !5715, file: !916, line: 30, type: !5719)
!5719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5720)
!5720 = !{!5721}
!5721 = !DISubrange(count: 257)
!5722 = distinct !DIAssignID()
!5723 = !DILocation(line: 0, scope: !5715)
!5724 = !DILocation(line: 30, column: 3, scope: !5715)
!5725 = !DILocation(line: 32, column: 7, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5715, file: !916, line: 32, column: 7)
!5727 = !DILocation(line: 32, column: 7, scope: !5715)
!5728 = !DILocalVariable(name: "__s1", arg: 1, scope: !5729, file: !1115, line: 1359, type: !173)
!5729 = distinct !DISubprogram(name: "streq", scope: !1115, file: !1115, line: 1359, type: !1116, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !5730)
!5730 = !{!5728, !5731}
!5731 = !DILocalVariable(name: "__s2", arg: 2, scope: !5729, file: !1115, line: 1359, type: !173)
!5732 = !DILocation(line: 0, scope: !5729, inlinedAt: !5733)
!5733 = distinct !DILocation(line: 35, column: 9, scope: !5734)
!5734 = distinct !DILexicalBlock(scope: !5715, file: !916, line: 35, column: 7)
!5735 = !DILocation(line: 1361, column: 11, scope: !5729, inlinedAt: !5733)
!5736 = !DILocation(line: 35, column: 29, scope: !5734)
!5737 = !DILocation(line: 0, scope: !5729, inlinedAt: !5738)
!5738 = distinct !DILocation(line: 35, column: 32, scope: !5734)
!5739 = !DILocation(line: 1361, column: 11, scope: !5729, inlinedAt: !5738)
!5740 = !DILocation(line: 1361, column: 10, scope: !5729, inlinedAt: !5738)
!5741 = !DILocation(line: 35, column: 7, scope: !5715)
!5742 = !DILocation(line: 46, column: 3, scope: !5715)
!5743 = !DILocation(line: 47, column: 1, scope: !5715)
!5744 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1002, file: !1002, line: 154, type: !5745, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1001, retainedNodes: !5747)
!5745 = !DISubroutineType(types: !5746)
!5746 = !{!118, !118, !167, !170}
!5747 = !{!5748, !5749, !5750}
!5748 = !DILocalVariable(name: "category", arg: 1, scope: !5744, file: !1002, line: 154, type: !118)
!5749 = !DILocalVariable(name: "buf", arg: 2, scope: !5744, file: !1002, line: 154, type: !167)
!5750 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5744, file: !1002, line: 154, type: !170)
!5751 = !DILocation(line: 0, scope: !5744)
!5752 = !DILocation(line: 159, column: 10, scope: !5744)
!5753 = !DILocation(line: 159, column: 3, scope: !5744)
!5754 = distinct !DISubprogram(name: "setlocale_null", scope: !1002, file: !1002, line: 186, type: !5755, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1001, retainedNodes: !5757)
!5755 = !DISubroutineType(types: !5756)
!5756 = !{!173, !118}
!5757 = !{!5758}
!5758 = !DILocalVariable(name: "category", arg: 1, scope: !5754, file: !1002, line: 186, type: !118)
!5759 = !DILocation(line: 0, scope: !5754)
!5760 = !DILocation(line: 189, column: 10, scope: !5754)
!5761 = !DILocation(line: 189, column: 3, scope: !5754)
!5762 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1004, file: !1004, line: 35, type: !5755, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1003, retainedNodes: !5763)
!5763 = !{!5764, !5765}
!5764 = !DILocalVariable(name: "category", arg: 1, scope: !5762, file: !1004, line: 35, type: !118)
!5765 = !DILocalVariable(name: "result", scope: !5762, file: !1004, line: 37, type: !173)
!5766 = !DILocation(line: 0, scope: !5762)
!5767 = !DILocation(line: 37, column: 24, scope: !5762)
!5768 = !DILocation(line: 62, column: 3, scope: !5762)
!5769 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1004, file: !1004, line: 66, type: !5745, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1003, retainedNodes: !5770)
!5770 = !{!5771, !5772, !5773, !5774, !5775}
!5771 = !DILocalVariable(name: "category", arg: 1, scope: !5769, file: !1004, line: 66, type: !118)
!5772 = !DILocalVariable(name: "buf", arg: 2, scope: !5769, file: !1004, line: 66, type: !167)
!5773 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5769, file: !1004, line: 66, type: !170)
!5774 = !DILocalVariable(name: "result", scope: !5769, file: !1004, line: 111, type: !173)
!5775 = !DILocalVariable(name: "length", scope: !5776, file: !1004, line: 125, type: !170)
!5776 = distinct !DILexicalBlock(scope: !5777, file: !1004, line: 124, column: 5)
!5777 = distinct !DILexicalBlock(scope: !5769, file: !1004, line: 113, column: 7)
!5778 = !DILocation(line: 0, scope: !5769)
!5779 = !DILocation(line: 0, scope: !5762, inlinedAt: !5780)
!5780 = distinct !DILocation(line: 111, column: 24, scope: !5769)
!5781 = !DILocation(line: 37, column: 24, scope: !5762, inlinedAt: !5780)
!5782 = !DILocation(line: 113, column: 14, scope: !5777)
!5783 = !DILocation(line: 113, column: 7, scope: !5769)
!5784 = !DILocation(line: 116, column: 19, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5786, file: !1004, line: 116, column: 11)
!5786 = distinct !DILexicalBlock(scope: !5777, file: !1004, line: 114, column: 5)
!5787 = !DILocation(line: 116, column: 11, scope: !5786)
!5788 = !DILocation(line: 120, column: 16, scope: !5785)
!5789 = !DILocation(line: 120, column: 9, scope: !5785)
!5790 = !DILocation(line: 125, column: 23, scope: !5776)
!5791 = !DILocation(line: 0, scope: !5776)
!5792 = !DILocation(line: 126, column: 18, scope: !5793)
!5793 = distinct !DILexicalBlock(scope: !5776, file: !1004, line: 126, column: 11)
!5794 = !DILocation(line: 126, column: 11, scope: !5776)
!5795 = !DILocation(line: 128, column: 39, scope: !5796)
!5796 = distinct !DILexicalBlock(scope: !5793, file: !1004, line: 127, column: 9)
!5797 = !DILocalVariable(name: "__dest", arg: 1, scope: !5798, file: !2105, line: 26, type: !2997)
!5798 = distinct !DISubprogram(name: "memcpy", scope: !2105, file: !2105, line: 26, type: !2995, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1003, retainedNodes: !5799)
!5799 = !{!5797, !5800, !5801}
!5800 = !DILocalVariable(name: "__src", arg: 2, scope: !5798, file: !2105, line: 26, type: !1249)
!5801 = !DILocalVariable(name: "__len", arg: 3, scope: !5798, file: !2105, line: 26, type: !170)
!5802 = !DILocation(line: 0, scope: !5798, inlinedAt: !5803)
!5803 = distinct !DILocation(line: 128, column: 11, scope: !5796)
!5804 = !DILocation(line: 29, column: 10, scope: !5798, inlinedAt: !5803)
!5805 = !DILocation(line: 129, column: 11, scope: !5796)
!5806 = !DILocation(line: 133, column: 23, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5808, file: !1004, line: 133, column: 15)
!5808 = distinct !DILexicalBlock(scope: !5793, file: !1004, line: 132, column: 9)
!5809 = !DILocation(line: 133, column: 15, scope: !5808)
!5810 = !DILocation(line: 138, column: 44, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5807, file: !1004, line: 134, column: 13)
!5812 = !DILocation(line: 0, scope: !5798, inlinedAt: !5813)
!5813 = distinct !DILocation(line: 138, column: 15, scope: !5811)
!5814 = !DILocation(line: 29, column: 10, scope: !5798, inlinedAt: !5813)
!5815 = !DILocation(line: 139, column: 15, scope: !5811)
!5816 = !DILocation(line: 139, column: 32, scope: !5811)
!5817 = !DILocation(line: 140, column: 13, scope: !5811)
!5818 = !DILocation(line: 0, scope: !5777)
!5819 = !DILocation(line: 145, column: 1, scope: !5769)
