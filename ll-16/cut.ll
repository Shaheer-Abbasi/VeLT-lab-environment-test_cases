; ModuleID = 'src/cut.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.field_range_pair = type { i64, i64 }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }

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
@longopts = internal constant [11 x %struct.option] [%struct.option { ptr @.str.68, i32 1, ptr null, i32 98 }, %struct.option { ptr @.str.69, i32 1, ptr null, i32 99 }, %struct.option { ptr @.str.70, i32 1, ptr null, i32 102 }, %struct.option { ptr @.str.71, i32 1, ptr null, i32 100 }, %struct.option { ptr @.str.72, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.73, i32 1, ptr null, i32 256 }, %struct.option { ptr @.str.74, i32 0, ptr null, i32 257 }, %struct.option { ptr @.str.75, i32 0, ptr null, i32 122 }, %struct.option { ptr @.str.76, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.77, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !107
@.str.21 = private unnamed_addr constant [31 x i8] c"only one list may be specified\00", align 1, !dbg !178
@optarg = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [41 x i8] c"the delimiter must be a single character\00", align 1, !dbg !180
@delim = internal unnamed_addr global i8 0, align 4, !dbg !227
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
@output_delimiter_default = internal global [1 x i8] zeroinitializer, align 4, !dbg !233
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !611
@.str.83 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !603
@.str.1.84 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !605
@.str.2.85 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !607
@.str.3.86 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !609
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !613
@stderr = external local_unnamed_addr global ptr, align 8
@.str.87 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !619
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !656
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !621
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !646
@.str.1.93 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !648
@.str.2.95 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !650
@.str.3.94 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !652
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !654
@.str.4.88 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !658
@.str.5.89 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !660
@.str.6.90 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !665
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !670
@.str.118 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !676
@.str.1.119 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !678
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !680
@.str.122 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !711
@.str.1.123 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !714
@.str.2.124 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !716
@.str.3.125 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !718
@.str.4.126 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !720
@.str.5.127 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !722
@.str.6.128 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !724
@.str.7.129 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !726
@.str.8.130 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !728
@.str.9.131 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !730
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.122, ptr @.str.1.123, ptr @.str.2.124, ptr @.str.3.125, ptr @.str.4.126, ptr @.str.5.127, ptr @.str.6.128, ptr @.str.7.129, ptr @.str.8.130, ptr @.str.9.131, ptr null], align 8, !dbg !732
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !743
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !757
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !795
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !802
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !759
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !804
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !747
@.str.10.134 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !764
@.str.11.132 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !766
@.str.12.135 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !768
@.str.13.133 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !770
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !772
@.str.142 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !808
@.str.1.143 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !811
@.str.2.144 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !813
@.str.3.145 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !815
@.str.4.146 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !817
@.str.5.147 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !819
@.str.6.148 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !824
@.str.7.149 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !826
@.str.8.150 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !828
@.str.9.151 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !830
@.str.10.152 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !835
@.str.11.153 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !837
@.str.12.154 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !842
@.str.13.155 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !844
@.str.14.156 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !849
@.str.15.157 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !854
@.str.16.158 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !859
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.163 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !864
@.str.18.164 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !866
@.str.19.165 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !868
@.str.20.166 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !870
@.str.21.167 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !872
@.str.22.168 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !874
@.str.23.169 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !876
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !878
@exit_failure = dso_local global i32 1, align 4, !dbg !886
@.str.186 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !892
@.str.1.184 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !895
@.str.2.185 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !897
@.str.197 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !899
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !902
@.str.204 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !917
@.str.1.205 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !920

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1013 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1017, metadata !DIExpression()), !dbg !1018
  %2 = icmp eq i32 %0, 0, !dbg !1019
  br i1 %2, label %8, label %3, !dbg !1021

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1022, !tbaa !1024
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #41, !dbg !1022
  %6 = load ptr, ptr @program_name, align 8, !dbg !1022, !tbaa !1024
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #41, !dbg !1022
  br label %52, !dbg !1022

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #41, !dbg !1028
  %10 = load ptr, ptr @program_name, align 8, !dbg !1028, !tbaa !1024
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #41, !dbg !1028
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #41, !dbg !1030
  %13 = load ptr, ptr @stdout, align 8, !dbg !1030, !tbaa !1024
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1030
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #41, !dbg !1031
  %16 = load ptr, ptr @stdout, align 8, !dbg !1031, !tbaa !1024
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !1031
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #41, !dbg !1035
  %19 = load ptr, ptr @stdout, align 8, !dbg !1035, !tbaa !1024
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !1035
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #41, !dbg !1038
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1038
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #41, !dbg !1039
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1039
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #41, !dbg !1040
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1040
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #41, !dbg !1041
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1041
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #41, !dbg !1042
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !1042
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #41, !dbg !1043
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !1043
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #41, !dbg !1044
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !1044
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #41, !dbg !1045
  tail call fastcc void @oputs_(ptr noundef %28), !dbg !1045
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #41, !dbg !1046
  tail call fastcc void @oputs_(ptr noundef %29), !dbg !1046
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #41, !dbg !1047
  tail call fastcc void @oputs_(ptr noundef %30), !dbg !1047
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #41, !dbg !1048
  tail call fastcc void @oputs_(ptr noundef %31), !dbg !1048
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #41, !dbg !1049
  %33 = load ptr, ptr @stdout, align 8, !dbg !1049, !tbaa !1024
  %34 = tail call i32 @fputs_unlocked(ptr noundef %32, ptr noundef %33), !dbg !1049
  %35 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #41, !dbg !1050
  %36 = load ptr, ptr @stdout, align 8, !dbg !1050, !tbaa !1024
  %37 = tail call i32 @fputs_unlocked(ptr noundef %35, ptr noundef %36), !dbg !1050
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1051, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1063, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata ptr poison, metadata !1063, metadata !DIExpression()), !dbg !1068
  tail call void @emit_bug_reporting_address() #41, !dbg !1070
  %38 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #41, !dbg !1071
  call void @llvm.dbg.value(metadata ptr %38, metadata !1066, metadata !DIExpression()), !dbg !1068
  %39 = icmp eq ptr %38, null, !dbg !1072
  br i1 %39, label %47, label %40, !dbg !1074

40:                                               ; preds = %8
  %41 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(4) @.str.63, i64 noundef 3) #42, !dbg !1075
  %42 = icmp eq i32 %41, 0, !dbg !1075
  br i1 %42, label %47, label %43, !dbg !1076

43:                                               ; preds = %40
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #41, !dbg !1077
  %45 = load ptr, ptr @stdout, align 8, !dbg !1077, !tbaa !1024
  %46 = tail call i32 @fputs_unlocked(ptr noundef %44, ptr noundef %45), !dbg !1077
  br label %47, !dbg !1079

47:                                               ; preds = %8, %40, %43
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1063, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1067, metadata !DIExpression()), !dbg !1068
  %48 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #41, !dbg !1080
  %49 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %48, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.3) #41, !dbg !1080
  %50 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #41, !dbg !1081
  %51 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %50, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.67) #41, !dbg !1081
  br label %52

52:                                               ; preds = %47, %3
  tail call void @exit(i32 noundef %0) #43, !dbg !1082
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
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !247, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !1099
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1100, !tbaa !1101
  %3 = icmp eq i32 %2, -1, !dbg !1103
  br i1 %3, label %4, label %16, !dbg !1104

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.33) #41, !dbg !1105
  call void @llvm.dbg.value(metadata ptr %5, metadata !249, metadata !DIExpression()), !dbg !1106
  %6 = icmp eq ptr %5, null, !dbg !1107
  br i1 %6, label %14, label %7, !dbg !1108

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1109, !tbaa !1110
  %9 = icmp eq i8 %8, 0, !dbg !1109
  br i1 %9, label %14, label %10, !dbg !1111

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1112, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata ptr @.str.34, metadata !1118, metadata !DIExpression()), !dbg !1119
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.34) #42, !dbg !1121
  %12 = icmp eq i32 %11, 0, !dbg !1122
  %13 = zext i1 %12 to i32, !dbg !1111
  br label %14, !dbg !1111

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1123, !tbaa !1101
  br label %16, !dbg !1124

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1125
  %18 = icmp eq i32 %17, 0, !dbg !1125
  br i1 %18, label %22, label %19, !dbg !1127

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1128, !tbaa !1024
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1128
  br label %122, !dbg !1130

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !252, metadata !DIExpression()), !dbg !1099
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.35) #42, !dbg !1131
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1132
  call void @llvm.dbg.value(metadata ptr %24, metadata !253, metadata !DIExpression()), !dbg !1099
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #42, !dbg !1133
  call void @llvm.dbg.value(metadata ptr %25, metadata !254, metadata !DIExpression()), !dbg !1099
  %26 = icmp eq ptr %25, null, !dbg !1134
  br i1 %26, label %54, label %27, !dbg !1135

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1136
  br i1 %28, label %54, label %29, !dbg !1137

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !255, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata i64 0, metadata !259, metadata !DIExpression()), !dbg !1138
  %30 = icmp ult ptr %24, %25, !dbg !1139
  br i1 %30, label %31, label %52, !dbg !1140

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #44, !dbg !1099
  %33 = load ptr, ptr %32, align 8, !tbaa !1024
  br label %34, !dbg !1140

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !255, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata i64 %36, metadata !259, metadata !DIExpression()), !dbg !1138
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1141
  call void @llvm.dbg.value(metadata ptr %37, metadata !255, metadata !DIExpression()), !dbg !1138
  %38 = load i8, ptr %35, align 1, !dbg !1141, !tbaa !1110
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1141
  %41 = load i16, ptr %40, align 2, !dbg !1141, !tbaa !1142
  %42 = freeze i16 %41, !dbg !1144
  %43 = lshr i16 %42, 13, !dbg !1144
  %44 = and i16 %43, 1, !dbg !1144
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1145
  call void @llvm.dbg.value(metadata i64 %46, metadata !259, metadata !DIExpression()), !dbg !1138
  %47 = icmp ult ptr %37, %25, !dbg !1139
  %48 = icmp ult i64 %46, 2, !dbg !1146
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1146
  br i1 %49, label %34, label %50, !dbg !1140, !llvm.loop !1147

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1149
  br i1 %51, label %52, label %54, !dbg !1151

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1151

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !1099
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !252, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata ptr %55, metadata !254, metadata !DIExpression()), !dbg !1099
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.36) #42, !dbg !1152
  call void @llvm.dbg.value(metadata i64 %57, metadata !260, metadata !DIExpression()), !dbg !1099
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1153
  call void @llvm.dbg.value(metadata ptr %58, metadata !261, metadata !DIExpression()), !dbg !1099
  br label %59, !dbg !1154

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !1099
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !252, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata ptr %60, metadata !261, metadata !DIExpression()), !dbg !1099
  %62 = load i8, ptr %60, align 1, !dbg !1155, !tbaa !1110
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !1156

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1157
  %65 = load i8, ptr %64, align 1, !dbg !1160, !tbaa !1110
  %66 = icmp ne i8 %65, 45, !dbg !1161
  %67 = select i1 %66, i1 %61, i1 false, !dbg !1162
  br label %68, !dbg !1162

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !252, metadata !DIExpression()), !dbg !1099
  %70 = tail call ptr @__ctype_b_loc() #44, !dbg !1163
  %71 = load ptr, ptr %70, align 8, !dbg !1163, !tbaa !1024
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1163
  %74 = load i16, ptr %73, align 2, !dbg !1163, !tbaa !1142
  %75 = and i16 %74, 8192, !dbg !1163
  %76 = icmp eq i16 %75, 0, !dbg !1163
  br i1 %76, label %90, label %77, !dbg !1165

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1166
  br i1 %78, label %92, label %79, !dbg !1169

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1170
  %81 = load i8, ptr %80, align 1, !dbg !1170, !tbaa !1110
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1170
  %84 = load i16, ptr %83, align 2, !dbg !1170, !tbaa !1142
  %85 = and i16 %84, 8192, !dbg !1170
  %86 = icmp eq i16 %85, 0, !dbg !1170
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !1171
  br i1 %89, label %90, label %92, !dbg !1171

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1172
  call void @llvm.dbg.value(metadata ptr %91, metadata !261, metadata !DIExpression()), !dbg !1099
  br label %59, !dbg !1154, !llvm.loop !1173

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !1175
  %94 = load ptr, ptr @stdout, align 8, !dbg !1175, !tbaa !1024
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !1175
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1112, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1112, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1112, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1112, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1112, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1112, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1112, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1112, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1112, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1112, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !318, metadata !DIExpression()), !dbg !1099
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.50, i64 noundef 6) #42, !dbg !1196
  %97 = icmp eq i32 %96, 0, !dbg !1196
  br i1 %97, label %101, label %98, !dbg !1198

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.51, i64 noundef 9) #42, !dbg !1199
  %100 = icmp eq i32 %99, 0, !dbg !1199
  br i1 %100, label %101, label %104, !dbg !1200

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1201
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #41, !dbg !1201
  br label %107, !dbg !1203

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1204
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #41, !dbg !1204
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1206, !tbaa !1024
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.56, ptr noundef %108), !dbg !1206
  %110 = load ptr, ptr @stdout, align 8, !dbg !1207, !tbaa !1024
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.57, ptr noundef %110), !dbg !1207
  %112 = ptrtoint ptr %60 to i64, !dbg !1208
  %113 = sub i64 %112, %93, !dbg !1208
  %114 = load ptr, ptr @stdout, align 8, !dbg !1208, !tbaa !1024
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1208
  %116 = load ptr, ptr @stdout, align 8, !dbg !1209, !tbaa !1024
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.58, ptr noundef %116), !dbg !1209
  %118 = load ptr, ptr @stdout, align 8, !dbg !1210, !tbaa !1024
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.59, ptr noundef %118), !dbg !1210
  %120 = load ptr, ptr @stdout, align 8, !dbg !1211, !tbaa !1024
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1211
  br label %122, !dbg !1212

122:                                              ; preds = %107, %19
  ret void, !dbg !1212
}

; Function Attrs: nounwind
declare !dbg !1213 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1217 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1221 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1223 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1226 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1229 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1232 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1235 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1241 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1242 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1248 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1253, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata ptr %1, metadata !1254, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata i8 0, metadata !1257, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata i8 0, metadata !1258, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata ptr null, metadata !1259, metadata !DIExpression()), !dbg !1264
  %3 = load ptr, ptr %1, align 8, !dbg !1265, !tbaa !1024
  tail call void @set_program_name(ptr noundef %3) #41, !dbg !1266
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.17) #41, !dbg !1267
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #41, !dbg !1268
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.18) #41, !dbg !1269
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #41, !dbg !1270
  br label %8, !dbg !1271

8:                                                ; preds = %36, %2
  %9 = phi i1 [ true, %36 ], [ false, %2 ]
  %10 = phi i1 [ %13, %36 ], [ false, %2 ]
  %11 = phi ptr [ %14, %36 ], [ null, %2 ]
  br label %12, !dbg !1271

12:                                               ; preds = %8, %24
  %13 = phi i1 [ %10, %8 ], [ %20, %24 ]
  %14 = phi ptr [ %11, %8 ], [ %25, %24 ]
  br label %15, !dbg !1271

15:                                               ; preds = %17, %12
  call void @llvm.dbg.value(metadata ptr %14, metadata !1259, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata i8 poison, metadata !1258, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata i8 poison, metadata !1257, metadata !DIExpression()), !dbg !1264
  %16 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.20, ptr noundef nonnull @longopts, ptr noundef null) #41, !dbg !1272
  call void @llvm.dbg.value(metadata i32 %16, metadata !1255, metadata !DIExpression()), !dbg !1264
  switch i32 %16, label %55 [
    i32 -1, label %56
    i32 98, label %19
    i32 99, label %19
    i32 102, label %18
    i32 100, label %26
    i32 256, label %37
    i32 110, label %17
    i32 115, label %45
    i32 122, label %46
    i32 257, label %47
    i32 -2, label %48
    i32 -3, label %49
  ], !dbg !1271

17:                                               ; preds = %15, %47, %46, %45, %43
  br label %15, !dbg !1264, !llvm.loop !1273

18:                                               ; preds = %15
  br label %19, !dbg !1275

19:                                               ; preds = %15, %15, %18
  %20 = phi i1 [ %13, %18 ], [ true, %15 ], [ true, %15 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1258, metadata !DIExpression()), !dbg !1264
  %21 = icmp eq ptr %14, null, !dbg !1275
  br i1 %21, label %24, label %22, !dbg !1279

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #41, !dbg !1280
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %23) #41, !dbg !1280
  tail call void @usage(i32 noundef 1) #45, !dbg !1280
  unreachable, !dbg !1280

24:                                               ; preds = %19
  %25 = load ptr, ptr @optarg, align 8, !dbg !1282, !tbaa !1024
  call void @llvm.dbg.value(metadata ptr %25, metadata !1259, metadata !DIExpression()), !dbg !1264
  br label %12, !dbg !1283, !llvm.loop !1273

26:                                               ; preds = %15
  %27 = load ptr, ptr @optarg, align 8, !dbg !1284, !tbaa !1024
  %28 = load i8, ptr %27, align 1, !dbg !1284, !tbaa !1110
  %29 = icmp eq i8 %28, 0, !dbg !1286
  br i1 %29, label %36, label %30, !dbg !1287

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %27, i64 1, !dbg !1288
  %32 = load i8, ptr %31, align 1, !dbg !1288, !tbaa !1110
  %33 = icmp eq i8 %32, 0, !dbg !1289
  br i1 %33, label %36, label %34, !dbg !1290

34:                                               ; preds = %30
  %35 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #41, !dbg !1291
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %35) #41, !dbg !1291
  tail call void @usage(i32 noundef 1) #45, !dbg !1291
  unreachable, !dbg !1291

36:                                               ; preds = %30, %26
  store i8 %28, ptr @delim, align 4, !dbg !1293, !tbaa !1110
  call void @llvm.dbg.value(metadata i8 1, metadata !1257, metadata !DIExpression()), !dbg !1264
  br label %8, !dbg !1294, !llvm.loop !1273

37:                                               ; preds = %15
  %38 = load ptr, ptr @optarg, align 8, !dbg !1295, !tbaa !1024
  %39 = load i8, ptr %38, align 1, !dbg !1295, !tbaa !1110
  %40 = icmp eq i8 %39, 0, !dbg !1296
  br i1 %40, label %43, label %41, !dbg !1295

41:                                               ; preds = %37
  %42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %38) #42, !dbg !1297
  br label %43, !dbg !1295

43:                                               ; preds = %37, %41
  %44 = phi i64 [ %42, %41 ], [ 1, %37 ], !dbg !1295
  store i64 %44, ptr @output_delimiter_length, align 8, !dbg !1298, !tbaa !1299
  store ptr %38, ptr @output_delimiter_string, align 8, !dbg !1301, !tbaa !1024
  br label %17, !dbg !1302

45:                                               ; preds = %15
  store i1 true, ptr @suppress_non_delimited, align 1, !dbg !1303
  br label %17, !dbg !1304

46:                                               ; preds = %15
  store i1 true, ptr @line_delim, align 1, !dbg !1305
  br label %17, !dbg !1306

47:                                               ; preds = %15
  store i1 true, ptr @complement, align 1, !dbg !1307
  br label %17, !dbg !1308

48:                                               ; preds = %15
  tail call void @usage(i32 noundef 0) #45, !dbg !1309
  unreachable, !dbg !1309

49:                                               ; preds = %15
  %50 = load ptr, ptr @stdout, align 8, !dbg !1310, !tbaa !1024
  %51 = load ptr, ptr @Version, align 8, !dbg !1310, !tbaa !1024
  %52 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.24) #41, !dbg !1310
  %53 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.25) #41, !dbg !1310
  %54 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.26) #41, !dbg !1310
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %50, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23, ptr noundef %51, ptr noundef %52, ptr noundef %53, ptr noundef %54, ptr noundef null) #41, !dbg !1310
  tail call void @exit(i32 noundef 0) #43, !dbg !1310
  unreachable, !dbg !1310

55:                                               ; preds = %15
  tail call void @usage(i32 noundef 1) #45, !dbg !1311
  unreachable, !dbg !1311

56:                                               ; preds = %15
  %57 = icmp eq ptr %14, null, !dbg !1312
  br i1 %57, label %58, label %60, !dbg !1314

58:                                               ; preds = %56
  %59 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #41, !dbg !1315
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %59) #41, !dbg !1315
  tail call void @usage(i32 noundef 1) #45, !dbg !1315
  unreachable, !dbg !1315

60:                                               ; preds = %56
  br i1 %13, label %61, label %68, !dbg !1317

61:                                               ; preds = %60
  br i1 %9, label %62, label %64, !dbg !1318

62:                                               ; preds = %61
  %63 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #41, !dbg !1321
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %63) #41, !dbg !1321
  tail call void @usage(i32 noundef 1) #45, !dbg !1321
  unreachable, !dbg !1321

64:                                               ; preds = %61
  %65 = load i1, ptr @suppress_non_delimited, align 1, !dbg !1324
  br i1 %65, label %66, label %68, !dbg !1326

66:                                               ; preds = %64
  %67 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #41, !dbg !1327
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %67) #41, !dbg !1327
  tail call void @usage(i32 noundef 1) #45, !dbg !1327
  unreachable, !dbg !1327

68:                                               ; preds = %64, %60
  %69 = phi i32 [ 4, %64 ], [ 0, %60 ], !dbg !1329
  %70 = load i1, ptr @complement, align 1, !dbg !1330
  %71 = select i1 %70, i32 2, i32 0, !dbg !1330
  %72 = or i32 %71, %69, !dbg !1331
  tail call void @set_fields(ptr noundef nonnull %14, i32 noundef %72) #41, !dbg !1332
  br i1 %9, label %74, label %73, !dbg !1333

73:                                               ; preds = %68
  store i8 9, ptr @delim, align 4, !dbg !1334, !tbaa !1110
  br label %74, !dbg !1336

74:                                               ; preds = %73, %68
  %75 = load ptr, ptr @output_delimiter_string, align 8, !dbg !1337, !tbaa !1024
  %76 = icmp eq ptr %75, null, !dbg !1339
  br i1 %76, label %77, label %79, !dbg !1340

77:                                               ; preds = %74
  %78 = load i8, ptr @delim, align 4, !dbg !1341, !tbaa !1110
  store i8 %78, ptr @output_delimiter_default, align 4, !dbg !1343, !tbaa !1110
  store ptr @output_delimiter_default, ptr @output_delimiter_string, align 8, !dbg !1344, !tbaa !1024
  store i64 1, ptr @output_delimiter_length, align 8, !dbg !1345, !tbaa !1299
  br label %79, !dbg !1346

79:                                               ; preds = %77, %74
  %80 = select i1 %13, ptr @cut_bytes, ptr @cut_fields, !dbg !1347
  call void @llvm.dbg.value(metadata ptr %80, metadata !1260, metadata !DIExpression()), !dbg !1264
  %81 = load i32, ptr @optind, align 4, !dbg !1348, !tbaa !1101
  %82 = icmp eq i32 %81, %0, !dbg !1350
  br i1 %82, label %85, label %83, !dbg !1351

83:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8 poison, metadata !1256, metadata !DIExpression()), !dbg !1264
  %84 = icmp slt i32 %81, %0, !dbg !1352
  br i1 %84, label %87, label %98, !dbg !1355

85:                                               ; preds = %79
  %86 = tail call fastcc i1 @cut_file(ptr noundef nonnull @.str.30, ptr noundef nonnull %80), !dbg !1356
  call void @llvm.dbg.value(metadata i1 %86, metadata !1256, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1264
  br label %98, !dbg !1357

87:                                               ; preds = %83, %87
  %88 = phi i32 [ %96, %87 ], [ %81, %83 ]
  %89 = phi i1 [ %94, %87 ], [ true, %83 ]
  %90 = sext i32 %88 to i64, !dbg !1358
  %91 = getelementptr inbounds ptr, ptr %1, i64 %90, !dbg !1358
  %92 = load ptr, ptr %91, align 8, !dbg !1358, !tbaa !1024
  %93 = tail call fastcc i1 @cut_file(ptr noundef %92, ptr noundef nonnull %80), !dbg !1359
  %94 = and i1 %89, %93, !dbg !1360
  call void @llvm.dbg.value(metadata i1 %94, metadata !1256, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1264
  %95 = load i32, ptr @optind, align 4, !dbg !1361, !tbaa !1101
  %96 = add nsw i32 %95, 1, !dbg !1361
  store i32 %96, ptr @optind, align 4, !dbg !1361, !tbaa !1101
  call void @llvm.dbg.value(metadata i8 poison, metadata !1256, metadata !DIExpression()), !dbg !1264
  %97 = icmp slt i32 %96, %0, !dbg !1352
  br i1 %97, label %87, label %98, !dbg !1355, !llvm.loop !1362

98:                                               ; preds = %87, %83, %85
  %99 = phi i1 [ %86, %85 ], [ true, %83 ], [ %94, %87 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1256, metadata !DIExpression()), !dbg !1264
  %100 = load i1, ptr @have_read_stdin, align 1, !dbg !1364
  br i1 %100, label %101, label %108, !dbg !1366

101:                                              ; preds = %98
  %102 = load ptr, ptr @stdin, align 8, !dbg !1367, !tbaa !1024
  %103 = tail call i32 @rpl_fclose(ptr noundef %102) #41, !dbg !1368
  %104 = icmp eq i32 %103, -1, !dbg !1369
  br i1 %104, label %105, label %108, !dbg !1370

105:                                              ; preds = %101
  %106 = tail call ptr @__errno_location() #44, !dbg !1371
  %107 = load i32, ptr %106, align 4, !dbg !1371, !tbaa !1101
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %107, ptr noundef nonnull @.str.30) #41, !dbg !1371
  call void @llvm.dbg.value(metadata i8 0, metadata !1256, metadata !DIExpression()), !dbg !1264
  br label %108, !dbg !1373

108:                                              ; preds = %105, %101, %98
  %109 = phi i1 [ false, %105 ], [ %99, %101 ], [ %99, %98 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1256, metadata !DIExpression()), !dbg !1264
  %110 = xor i1 %109, true, !dbg !1374
  %111 = zext i1 %110 to i32, !dbg !1374
  ret i32 %111, !dbg !1375
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
define internal void @cut_bytes(ptr noundef %0) #10 !dbg !1392 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1394, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 0, metadata !1395, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8 0, metadata !1396, metadata !DIExpression()), !dbg !1413
  %2 = load ptr, ptr @frp, align 8, !dbg !1414, !tbaa !1024
  store ptr %2, ptr @current_rp, align 8, !dbg !1415, !tbaa !1024
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  br label %5, !dbg !1416

5:                                                ; preds = %49, %1
  %6 = phi i64 [ 0, %1 ], [ %50, %49 ]
  %7 = phi i1 [ false, %1 ], [ %51, %49 ]
  br label %8, !dbg !1417

8:                                                ; preds = %5, %86
  %9 = phi i64 [ %79, %86 ], [ %6, %5 ], !dbg !1413
  call void @llvm.dbg.value(metadata i8 poison, metadata !1396, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata ptr %0, metadata !1423, metadata !DIExpression()), !dbg !1425
  %10 = load ptr, ptr %3, align 8, !dbg !1417, !tbaa !1426
  %11 = load ptr, ptr %4, align 8, !dbg !1417, !tbaa !1428
  %12 = icmp ult ptr %10, %11, !dbg !1417
  br i1 %12, label %15, label %13, !dbg !1417, !prof !1429

13:                                               ; preds = %8
  %14 = tail call i32 @__uflow(ptr noundef nonnull %0) #41, !dbg !1417
  br label %19, !dbg !1417

15:                                               ; preds = %8
  %16 = getelementptr inbounds i8, ptr %10, i64 1, !dbg !1417
  store ptr %16, ptr %3, align 8, !dbg !1417, !tbaa !1426
  %17 = load i8, ptr %10, align 1, !dbg !1417, !tbaa !1110
  %18 = zext i8 %17 to i32, !dbg !1417
  br label %19, !dbg !1417

19:                                               ; preds = %13, %15
  %20 = phi i32 [ %14, %13 ], [ %18, %15 ], !dbg !1417
  call void @llvm.dbg.value(metadata i32 %20, metadata !1397, metadata !DIExpression()), !dbg !1430
  %21 = load i1, ptr @line_delim, align 1, !dbg !1431
  %22 = select i1 %21, i32 0, i32 10, !dbg !1431
  %23 = icmp eq i32 %20, %22, !dbg !1432
  br i1 %23, label %24, label %52, !dbg !1433

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %20, metadata !1434, metadata !DIExpression()), !dbg !1439
  %25 = load ptr, ptr @stdout, align 8, !dbg !1443, !tbaa !1024
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %25, i64 0, i32 5, !dbg !1443
  %27 = load ptr, ptr %26, align 8, !dbg !1443, !tbaa !1444
  %28 = getelementptr inbounds %struct._IO_FILE, ptr %25, i64 0, i32 6, !dbg !1443
  %29 = load ptr, ptr %28, align 8, !dbg !1443, !tbaa !1445
  %30 = icmp ult ptr %27, %29, !dbg !1443
  br i1 %30, label %31, label %34, !dbg !1443, !prof !1429

31:                                               ; preds = %24
  %32 = trunc i32 %20 to i8, !dbg !1443
  %33 = getelementptr inbounds i8, ptr %27, i64 1, !dbg !1443
  store ptr %33, ptr %26, align 8, !dbg !1443, !tbaa !1444
  store i8 %32, ptr %27, align 1, !dbg !1443, !tbaa !1110
  br label %47, !dbg !1446

34:                                               ; preds = %24
  %35 = and i32 %20, 255, !dbg !1443
  %36 = tail call i32 @__overflow(ptr noundef nonnull %25, i32 noundef %35) #41, !dbg !1443
  %37 = icmp slt i32 %36, 0, !dbg !1447
  br i1 %37, label %38, label %47, !dbg !1446

38:                                               ; preds = %34
  %39 = tail call ptr @__errno_location() #44, !dbg !1448
  %40 = load i32, ptr %39, align 4, !dbg !1448, !tbaa !1101
  call void @llvm.dbg.value(metadata i32 %40, metadata !1451, metadata !DIExpression()), !dbg !1453
  %41 = load ptr, ptr @stdout, align 8, !dbg !1454, !tbaa !1024
  %42 = tail call i32 @fflush_unlocked(ptr noundef %41) #41, !dbg !1454
  %43 = load ptr, ptr @stdout, align 8, !dbg !1455, !tbaa !1024
  %44 = tail call i32 @fpurge(ptr noundef %43) #41, !dbg !1456
  %45 = load ptr, ptr @stdout, align 8, !dbg !1457, !tbaa !1024
  tail call void @clearerr_unlocked(ptr noundef %45) #41, !dbg !1457
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #41, !dbg !1458
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %40, ptr noundef %46) #41, !dbg !1458
  unreachable, !dbg !1458

47:                                               ; preds = %31, %34
  call void @llvm.dbg.value(metadata i64 0, metadata !1395, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8 0, metadata !1396, metadata !DIExpression()), !dbg !1413
  %48 = load ptr, ptr @frp, align 8, !dbg !1459, !tbaa !1024
  store ptr %48, ptr @current_rp, align 8, !dbg !1460, !tbaa !1024
  br label %49, !dbg !1461

49:                                               ; preds = %47, %123, %120
  %50 = phi i64 [ %79, %120 ], [ %79, %123 ], [ 0, %47 ]
  %51 = phi i1 [ %113, %120 ], [ %113, %123 ], [ false, %47 ]
  br label %5, !dbg !1417

52:                                               ; preds = %19
  %53 = icmp eq i32 %20, -1, !dbg !1462
  br i1 %53, label %54, label %78, !dbg !1463

54:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i64 %9, metadata !1395, metadata !DIExpression()), !dbg !1413
  %55 = icmp eq i64 %9, 0, !dbg !1464
  br i1 %55, label %136, label %56, !dbg !1467

56:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 %22, metadata !1434, metadata !DIExpression()), !dbg !1468
  %57 = load ptr, ptr @stdout, align 8, !dbg !1472, !tbaa !1024
  %58 = getelementptr inbounds %struct._IO_FILE, ptr %57, i64 0, i32 5, !dbg !1472
  %59 = load ptr, ptr %58, align 8, !dbg !1472, !tbaa !1444
  %60 = getelementptr inbounds %struct._IO_FILE, ptr %57, i64 0, i32 6, !dbg !1472
  %61 = load ptr, ptr %60, align 8, !dbg !1472, !tbaa !1445
  %62 = icmp ult ptr %59, %61, !dbg !1472
  br i1 %62, label %63, label %66, !dbg !1472, !prof !1429

63:                                               ; preds = %56
  %64 = trunc i32 %22 to i8, !dbg !1472
  %65 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1472
  store ptr %65, ptr %58, align 8, !dbg !1472, !tbaa !1444
  store i8 %64, ptr %59, align 1, !dbg !1472, !tbaa !1110
  br label %136, !dbg !1473

66:                                               ; preds = %56
  %67 = tail call i32 @__overflow(ptr noundef nonnull %57, i32 noundef %22) #41, !dbg !1472
  %68 = icmp slt i32 %67, 0, !dbg !1474
  br i1 %68, label %69, label %136, !dbg !1473

69:                                               ; preds = %66
  %70 = tail call ptr @__errno_location() #44, !dbg !1475
  %71 = load i32, ptr %70, align 4, !dbg !1475, !tbaa !1101
  call void @llvm.dbg.value(metadata i32 %71, metadata !1451, metadata !DIExpression()), !dbg !1477
  %72 = load ptr, ptr @stdout, align 8, !dbg !1478, !tbaa !1024
  %73 = tail call i32 @fflush_unlocked(ptr noundef %72) #41, !dbg !1478
  %74 = load ptr, ptr @stdout, align 8, !dbg !1479, !tbaa !1024
  %75 = tail call i32 @fpurge(ptr noundef %74) #41, !dbg !1480
  %76 = load ptr, ptr @stdout, align 8, !dbg !1481, !tbaa !1024
  tail call void @clearerr_unlocked(ptr noundef %76) #41, !dbg !1481
  %77 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #41, !dbg !1482
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %71, ptr noundef %77) #41, !dbg !1482
  unreachable, !dbg !1482

78:                                               ; preds = %52
  call void @llvm.dbg.value(metadata ptr undef, metadata !1483, metadata !DIExpression()), !dbg !1489
  %79 = add i64 %9, 1, !dbg !1491
  %80 = load ptr, ptr @current_rp, align 8, !dbg !1492, !tbaa !1024
  %81 = getelementptr inbounds %struct.field_range_pair, ptr %80, i64 0, i32 1, !dbg !1494
  %82 = load i64, ptr %81, align 8, !dbg !1494, !tbaa !1495
  %83 = icmp ugt i64 %79, %82, !dbg !1497
  br i1 %83, label %84, label %86, !dbg !1498

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.field_range_pair, ptr %80, i64 1, !dbg !1499
  store ptr %85, ptr @current_rp, align 8, !dbg !1499, !tbaa !1024
  br label %86, !dbg !1500

86:                                               ; preds = %78, %84
  %87 = phi ptr [ %80, %78 ], [ %85, %84 ], !dbg !1501
  call void @llvm.dbg.value(metadata i64 %79, metadata !1395, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %79, metadata !1506, metadata !DIExpression()), !dbg !1508
  %88 = load i64, ptr %87, align 8, !dbg !1509, !tbaa !1510
  %89 = icmp ugt i64 %88, %79, !dbg !1511
  br i1 %89, label %8, label %90, !dbg !1512

90:                                               ; preds = %86
  %91 = load ptr, ptr @output_delimiter_string, align 8, !dbg !1513, !tbaa !1024
  %92 = icmp ne ptr %91, @output_delimiter_default, !dbg !1514
  %93 = select i1 %92, i1 %7, i1 false, !dbg !1515
  %94 = select i1 %92, i1 true, i1 %7, !dbg !1515
  br i1 %93, label %95, label %112, !dbg !1515

95:                                               ; preds = %90
  call void @llvm.dbg.value(metadata i64 %79, metadata !1395, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %79, metadata !1516, metadata !DIExpression()), !dbg !1519
  %96 = icmp eq i64 %88, %79, !dbg !1521
  br i1 %96, label %97, label %112, !dbg !1522

97:                                               ; preds = %95
  %98 = load i64, ptr @output_delimiter_length, align 8, !dbg !1523, !tbaa !1299
  %99 = load ptr, ptr @stdout, align 8, !dbg !1523, !tbaa !1024
  %100 = tail call i64 @fwrite_unlocked(ptr noundef %91, i64 noundef 1, i64 noundef %98, ptr noundef %99), !dbg !1523
  %101 = load i64, ptr @output_delimiter_length, align 8, !dbg !1524, !tbaa !1299
  %102 = icmp eq i64 %100, %101, !dbg !1525
  br i1 %102, label %112, label %103, !dbg !1526

103:                                              ; preds = %97
  %104 = tail call ptr @__errno_location() #44, !dbg !1527
  %105 = load i32, ptr %104, align 4, !dbg !1527, !tbaa !1101
  call void @llvm.dbg.value(metadata i32 %105, metadata !1451, metadata !DIExpression()), !dbg !1529
  %106 = load ptr, ptr @stdout, align 8, !dbg !1530, !tbaa !1024
  %107 = tail call i32 @fflush_unlocked(ptr noundef %106) #41, !dbg !1530
  %108 = load ptr, ptr @stdout, align 8, !dbg !1531, !tbaa !1024
  %109 = tail call i32 @fpurge(ptr noundef %108) #41, !dbg !1532
  %110 = load ptr, ptr @stdout, align 8, !dbg !1533, !tbaa !1024
  tail call void @clearerr_unlocked(ptr noundef %110) #41, !dbg !1533
  %111 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #41, !dbg !1534
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %105, ptr noundef %111) #41, !dbg !1534
  unreachable, !dbg !1534

112:                                              ; preds = %90, %95, %97
  %113 = phi i1 [ %94, %90 ], [ true, %97 ], [ true, %95 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1396, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i32 %20, metadata !1434, metadata !DIExpression()), !dbg !1535
  %114 = load ptr, ptr @stdout, align 8, !dbg !1538, !tbaa !1024
  %115 = getelementptr inbounds %struct._IO_FILE, ptr %114, i64 0, i32 5, !dbg !1538
  %116 = load ptr, ptr %115, align 8, !dbg !1538, !tbaa !1444
  %117 = getelementptr inbounds %struct._IO_FILE, ptr %114, i64 0, i32 6, !dbg !1538
  %118 = load ptr, ptr %117, align 8, !dbg !1538, !tbaa !1445
  %119 = icmp ult ptr %116, %118, !dbg !1538
  br i1 %119, label %120, label %123, !dbg !1538, !prof !1429

120:                                              ; preds = %112
  %121 = trunc i32 %20 to i8, !dbg !1538
  %122 = getelementptr inbounds i8, ptr %116, i64 1, !dbg !1538
  store ptr %122, ptr %115, align 8, !dbg !1538, !tbaa !1444
  store i8 %121, ptr %116, align 1, !dbg !1538, !tbaa !1110
  br label %49, !dbg !1539

123:                                              ; preds = %112
  %124 = and i32 %20, 255, !dbg !1538
  %125 = tail call i32 @__overflow(ptr noundef nonnull %114, i32 noundef %124) #41, !dbg !1538
  %126 = icmp slt i32 %125, 0, !dbg !1540
  br i1 %126, label %127, label %49, !dbg !1539

127:                                              ; preds = %123
  %128 = tail call ptr @__errno_location() #44, !dbg !1541
  %129 = load i32, ptr %128, align 4, !dbg !1541, !tbaa !1101
  call void @llvm.dbg.value(metadata i32 %129, metadata !1451, metadata !DIExpression()), !dbg !1543
  %130 = load ptr, ptr @stdout, align 8, !dbg !1544, !tbaa !1024
  %131 = tail call i32 @fflush_unlocked(ptr noundef %130) #41, !dbg !1544
  %132 = load ptr, ptr @stdout, align 8, !dbg !1545, !tbaa !1024
  %133 = tail call i32 @fpurge(ptr noundef %132) #41, !dbg !1546
  %134 = load ptr, ptr @stdout, align 8, !dbg !1547, !tbaa !1024
  tail call void @clearerr_unlocked(ptr noundef %134) #41, !dbg !1547
  %135 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #41, !dbg !1548
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %129, ptr noundef %135) #41, !dbg !1548
  unreachable, !dbg !1548

136:                                              ; preds = %66, %54, %63
  call void @llvm.dbg.value(metadata i8 poison, metadata !1396, metadata !DIExpression()), !dbg !1413
  ret void, !dbg !1549
}

; Function Attrs: nounwind uwtable
define internal void @cut_fields(ptr noundef %0) #10 !dbg !1550 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1552, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i64 1, metadata !1554, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i8 0, metadata !1555, metadata !DIExpression()), !dbg !1596
  %2 = load ptr, ptr @frp, align 8, !dbg !1597, !tbaa !1024
  store ptr %2, ptr @current_rp, align 8, !dbg !1598, !tbaa !1024
  call void @llvm.dbg.value(metadata ptr %0, metadata !1423, metadata !DIExpression()), !dbg !1599
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !1601
  %4 = load ptr, ptr %3, align 8, !dbg !1601, !tbaa !1426
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !1601
  %6 = load ptr, ptr %5, align 8, !dbg !1601, !tbaa !1428
  %7 = icmp ult ptr %4, %6, !dbg !1601
  br i1 %7, label %8, label %12, !dbg !1601, !prof !1429

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !1601
  store ptr %9, ptr %3, align 8, !dbg !1601, !tbaa !1426
  %10 = load i8, ptr %4, align 1, !dbg !1601, !tbaa !1110
  %11 = zext i8 %10 to i32, !dbg !1601
  call void @llvm.dbg.value(metadata i32 %11, metadata !1553, metadata !DIExpression()), !dbg !1596
  br label %15, !dbg !1602

12:                                               ; preds = %1
  %13 = tail call i32 @__uflow(ptr noundef nonnull %0) #41, !dbg !1601
  call void @llvm.dbg.value(metadata i32 %13, metadata !1553, metadata !DIExpression()), !dbg !1596
  %14 = icmp eq i32 %13, -1, !dbg !1603
  br i1 %14, label %333, label %15, !dbg !1602

15:                                               ; preds = %8, %12
  %16 = phi i32 [ %11, %8 ], [ %13, %12 ]
  %17 = tail call i32 @ungetc(i32 noundef %16, ptr noundef nonnull %0), !dbg !1605
  call void @llvm.dbg.value(metadata i32 0, metadata !1553, metadata !DIExpression()), !dbg !1596
  %18 = load i1, ptr @suppress_non_delimited, align 1, !dbg !1606
  call void @llvm.dbg.value(metadata i64 1, metadata !1506, metadata !DIExpression()), !dbg !1607
  %19 = load ptr, ptr @current_rp, align 8, !dbg !1609, !tbaa !1024
  %20 = load i64, ptr %19, align 8, !dbg !1610, !tbaa !1510
  %21 = icmp ult i64 %20, 2, !dbg !1611
  %22 = xor i1 %18, %21, !dbg !1612
  call void @llvm.dbg.value(metadata i1 %22, metadata !1556, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1596
  br label %23, !dbg !1613

23:                                               ; preds = %77, %15
  %24 = phi i64 [ 1, %15 ], [ %78, %77 ], !dbg !1596
  %25 = phi i1 [ false, %15 ], [ %79, %77 ]
  %26 = phi i32 [ 0, %15 ], [ %80, %77 ], !dbg !1596
  call void @llvm.dbg.value(metadata i32 %26, metadata !1553, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i8 poison, metadata !1555, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i64 %24, metadata !1554, metadata !DIExpression()), !dbg !1596
  %27 = icmp ne i64 %24, 1, !dbg !1614
  %28 = select i1 %27, i1 true, i1 %22, !dbg !1615
  br i1 %28, label %29, label %31, !dbg !1615

29:                                               ; preds = %23
  %30 = load ptr, ptr @current_rp, align 8, !dbg !1616, !tbaa !1024
  br label %151, !dbg !1615

31:                                               ; preds = %23
  %32 = load i8, ptr @delim, align 4, !dbg !1618, !tbaa !1110
  %33 = zext i8 %32 to i32, !dbg !1618
  %34 = load i1, ptr @line_delim, align 1, !dbg !1619
  %35 = select i1 %34, i32 0, i32 10, !dbg !1619
  %36 = tail call i64 @getndelim2(ptr noundef nonnull @field_1_buffer, ptr noundef nonnull @field_1_bufsize, i64 noundef 0, i64 noundef -1, i32 noundef %33, i32 noundef %35, ptr noundef %0) #41, !dbg !1620
  call void @llvm.dbg.value(metadata i64 %36, metadata !1557, metadata !DIExpression()), !dbg !1621
  %37 = icmp slt i64 %36, 0, !dbg !1622
  br i1 %37, label %38, label %44, !dbg !1624

38:                                               ; preds = %31
  %39 = load ptr, ptr @field_1_buffer, align 8, !dbg !1625, !tbaa !1024
  tail call void @free(ptr noundef %39) #41, !dbg !1627
  store ptr null, ptr @field_1_buffer, align 8, !dbg !1628, !tbaa !1024
  call void @llvm.dbg.value(metadata ptr %0, metadata !1629, metadata !DIExpression()), !dbg !1632
  %40 = load i32, ptr %0, align 8, !dbg !1635, !tbaa !1636
  %41 = and i32 %40, 48, !dbg !1637
  %42 = icmp eq i32 %41, 0, !dbg !1637
  br i1 %42, label %43, label %333, !dbg !1637

43:                                               ; preds = %38
  tail call void @xalloc_die() #43, !dbg !1638
  unreachable, !dbg !1638

44:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i64 %36, metadata !1563, metadata !DIExpression()), !dbg !1621
  %45 = icmp eq i64 %36, 0, !dbg !1639
  br i1 %45, label %46, label %47, !dbg !1642

46:                                               ; preds = %44
  tail call void @__assert_fail(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef 335, ptr noundef nonnull @__PRETTY_FUNCTION__.cut_fields) #43, !dbg !1639
  unreachable, !dbg !1639

47:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i32 0, metadata !1553, metadata !DIExpression()), !dbg !1596
  %48 = load ptr, ptr @field_1_buffer, align 8, !dbg !1643, !tbaa !1024
  %49 = add nsw i64 %36, -1, !dbg !1644
  %50 = getelementptr inbounds i8, ptr %48, i64 %49, !dbg !1643
  %51 = load i8, ptr %50, align 1, !dbg !1643, !tbaa !1110
  %52 = load i8, ptr @delim, align 4, !dbg !1645, !tbaa !1110
  %53 = icmp eq i8 %51, %52, !dbg !1646
  br i1 %53, label %106, label %54, !dbg !1647

54:                                               ; preds = %47
  %55 = load i1, ptr @suppress_non_delimited, align 1, !dbg !1648
  br i1 %55, label %77, label %56, !dbg !1649

56:                                               ; preds = %54
  %57 = load ptr, ptr @stdout, align 8, !dbg !1650, !tbaa !1024
  %58 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %48, i64 noundef 1, i64 noundef %36, ptr noundef %57), !dbg !1650
  %59 = icmp eq i64 %58, %36, !dbg !1651
  br i1 %59, label %69, label %60, !dbg !1652

60:                                               ; preds = %56
  %61 = tail call ptr @__errno_location() #44, !dbg !1653
  %62 = load i32, ptr %61, align 4, !dbg !1653, !tbaa !1101
  call void @llvm.dbg.value(metadata i32 %62, metadata !1451, metadata !DIExpression()), !dbg !1655
  %63 = load ptr, ptr @stdout, align 8, !dbg !1656, !tbaa !1024
  %64 = tail call i32 @fflush_unlocked(ptr noundef %63) #41, !dbg !1656
  %65 = load ptr, ptr @stdout, align 8, !dbg !1657, !tbaa !1024
  %66 = tail call i32 @fpurge(ptr noundef %65) #41, !dbg !1658
  %67 = load ptr, ptr @stdout, align 8, !dbg !1659, !tbaa !1024
  tail call void @clearerr_unlocked(ptr noundef %67) #41, !dbg !1659
  %68 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #41, !dbg !1660
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %62, ptr noundef %68) #41, !dbg !1660
  unreachable, !dbg !1660

69:                                               ; preds = %56
  %70 = load ptr, ptr @field_1_buffer, align 8, !dbg !1661, !tbaa !1024
  %71 = getelementptr inbounds i8, ptr %70, i64 %49, !dbg !1661
  %72 = load i8, ptr %71, align 1, !dbg !1661, !tbaa !1110
  %73 = zext i8 %72 to i32, !dbg !1661
  %74 = load i1, ptr @line_delim, align 1, !dbg !1663
  %75 = select i1 %74, i32 0, i32 10, !dbg !1663
  %76 = icmp eq i32 %75, %73, !dbg !1664
  br i1 %76, label %77, label %81, !dbg !1665

77:                                               ; preds = %69, %88, %94, %331, %287, %279, %285, %54
  %78 = phi i64 [ 1, %54 ], [ 1, %331 ], [ %153, %287 ], [ %280, %279 ], [ %280, %285 ], [ 1, %94 ], [ 1, %88 ], [ 1, %69 ]
  %79 = phi i1 [ %25, %54 ], [ false, %331 ], [ %247, %287 ], [ %247, %279 ], [ %247, %285 ], [ %25, %94 ], [ %25, %88 ], [ %25, %69 ]
  %80 = phi i32 [ 0, %54 ], [ %296, %331 ], [ %248, %287 ], [ %248, %279 ], [ %248, %285 ], [ %96, %94 ], [ %75, %88 ], [ %75, %69 ]
  br label %23, !dbg !1596, !llvm.loop !1666

81:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i32 %75, metadata !1434, metadata !DIExpression()), !dbg !1668
  %82 = load ptr, ptr @stdout, align 8, !dbg !1672, !tbaa !1024
  %83 = getelementptr inbounds %struct._IO_FILE, ptr %82, i64 0, i32 5, !dbg !1672
  %84 = load ptr, ptr %83, align 8, !dbg !1672, !tbaa !1444
  %85 = getelementptr inbounds %struct._IO_FILE, ptr %82, i64 0, i32 6, !dbg !1672
  %86 = load ptr, ptr %85, align 8, !dbg !1672, !tbaa !1445
  %87 = icmp ult ptr %84, %86, !dbg !1672
  br i1 %87, label %88, label %91, !dbg !1672, !prof !1429

88:                                               ; preds = %81
  %89 = trunc i32 %75 to i8, !dbg !1672
  %90 = getelementptr inbounds i8, ptr %84, i64 1, !dbg !1672
  store ptr %90, ptr %83, align 8, !dbg !1672, !tbaa !1444
  store i8 %89, ptr %84, align 1, !dbg !1672, !tbaa !1110
  br label %77, !dbg !1673

91:                                               ; preds = %81
  %92 = tail call i32 @__overflow(ptr noundef nonnull %82, i32 noundef %75) #41, !dbg !1672
  %93 = icmp slt i32 %92, 0, !dbg !1674
  br i1 %93, label %97, label %94, !dbg !1673

94:                                               ; preds = %91
  %95 = load i1, ptr @line_delim, align 1, !dbg !1675
  %96 = select i1 %95, i32 0, i32 10, !dbg !1675
  br label %77, !dbg !1673

97:                                               ; preds = %91
  %98 = tail call ptr @__errno_location() #44, !dbg !1676
  %99 = load i32, ptr %98, align 4, !dbg !1676, !tbaa !1101
  call void @llvm.dbg.value(metadata i32 %99, metadata !1451, metadata !DIExpression()), !dbg !1678
  %100 = load ptr, ptr @stdout, align 8, !dbg !1679, !tbaa !1024
  %101 = tail call i32 @fflush_unlocked(ptr noundef %100) #41, !dbg !1679
  %102 = load ptr, ptr @stdout, align 8, !dbg !1680, !tbaa !1024
  %103 = tail call i32 @fpurge(ptr noundef %102) #41, !dbg !1681
  %104 = load ptr, ptr @stdout, align 8, !dbg !1682, !tbaa !1024
  tail call void @clearerr_unlocked(ptr noundef %104) #41, !dbg !1682
  %105 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #41, !dbg !1683
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %99, ptr noundef %105) #41, !dbg !1683
  unreachable, !dbg !1683

106:                                              ; preds = %47
  call void @llvm.dbg.value(metadata i64 1, metadata !1506, metadata !DIExpression()), !dbg !1684
  %107 = load ptr, ptr @current_rp, align 8, !dbg !1686, !tbaa !1024
  %108 = load i64, ptr %107, align 8, !dbg !1687, !tbaa !1510
  %109 = icmp ult i64 %108, 2, !dbg !1688
  br i1 %109, label %110, label %143, !dbg !1689

110:                                              ; preds = %106
  %111 = load ptr, ptr @stdout, align 8, !dbg !1690, !tbaa !1024
  %112 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %48, i64 noundef 1, i64 noundef %49, ptr noundef %111), !dbg !1690
  %113 = icmp eq i64 %112, %49, !dbg !1691
  br i1 %113, label %123, label %114, !dbg !1692

114:                                              ; preds = %110
  %115 = tail call ptr @__errno_location() #44, !dbg !1693
  %116 = load i32, ptr %115, align 4, !dbg !1693, !tbaa !1101
  call void @llvm.dbg.value(metadata i32 %116, metadata !1451, metadata !DIExpression()), !dbg !1695
  %117 = load ptr, ptr @stdout, align 8, !dbg !1696, !tbaa !1024
  %118 = tail call i32 @fflush_unlocked(ptr noundef %117) #41, !dbg !1696
  %119 = load ptr, ptr @stdout, align 8, !dbg !1697, !tbaa !1024
  %120 = tail call i32 @fpurge(ptr noundef %119) #41, !dbg !1698
  %121 = load ptr, ptr @stdout, align 8, !dbg !1699, !tbaa !1024
  tail call void @clearerr_unlocked(ptr noundef %121) #41, !dbg !1699
  %122 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #41, !dbg !1700
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %116, ptr noundef %122) #41, !dbg !1700
  unreachable, !dbg !1700

123:                                              ; preds = %110
  %124 = load i8, ptr @delim, align 4, !dbg !1701, !tbaa !1110
  %125 = zext i8 %124 to i32, !dbg !1701
  %126 = load i1, ptr @line_delim, align 1, !dbg !1702
  %127 = select i1 %126, i32 0, i32 10, !dbg !1702
  %128 = icmp eq i32 %127, %125, !dbg !1703
  br i1 %128, label %129, label %143, !dbg !1704

129:                                              ; preds = %123
  call void @llvm.dbg.value(metadata ptr %0, metadata !1423, metadata !DIExpression()), !dbg !1705
  %130 = load ptr, ptr %3, align 8, !dbg !1707, !tbaa !1426
  %131 = load ptr, ptr %5, align 8, !dbg !1707, !tbaa !1428
  %132 = icmp ult ptr %130, %131, !dbg !1707
  br i1 %132, label %133, label %137, !dbg !1707, !prof !1429

133:                                              ; preds = %129
  %134 = getelementptr inbounds i8, ptr %130, i64 1, !dbg !1707
  store ptr %134, ptr %3, align 8, !dbg !1707, !tbaa !1426
  %135 = load i8, ptr %130, align 1, !dbg !1707, !tbaa !1110
  %136 = zext i8 %135 to i32, !dbg !1707
  call void @llvm.dbg.value(metadata i32 %136, metadata !1580, metadata !DIExpression()), !dbg !1708
  br label %140, !dbg !1709

137:                                              ; preds = %129
  %138 = tail call i32 @__uflow(ptr noundef nonnull %0) #41, !dbg !1707
  call void @llvm.dbg.value(metadata i32 %138, metadata !1580, metadata !DIExpression()), !dbg !1708
  %139 = icmp eq i32 %138, -1, !dbg !1710
  br i1 %139, label %143, label %140, !dbg !1709

140:                                              ; preds = %133, %137
  %141 = phi i32 [ %136, %133 ], [ %138, %137 ]
  %142 = tail call i32 @ungetc(i32 noundef %141, ptr noundef nonnull %0), !dbg !1712
  call void @llvm.dbg.value(metadata i8 1, metadata !1555, metadata !DIExpression()), !dbg !1596
  br label %143, !dbg !1714

143:                                              ; preds = %123, %137, %140, %106
  %144 = phi i1 [ %25, %106 ], [ true, %140 ], [ %25, %137 ], [ true, %123 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1555, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata ptr undef, metadata !1483, metadata !DIExpression()), !dbg !1715
  %145 = load ptr, ptr @current_rp, align 8, !dbg !1717, !tbaa !1024
  %146 = getelementptr inbounds %struct.field_range_pair, ptr %145, i64 0, i32 1, !dbg !1718
  %147 = load i64, ptr %146, align 8, !dbg !1718, !tbaa !1495
  %148 = icmp ult i64 %147, 2, !dbg !1719
  br i1 %148, label %149, label %151, !dbg !1720

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.field_range_pair, ptr %145, i64 1, !dbg !1721
  store ptr %150, ptr @current_rp, align 8, !dbg !1721, !tbaa !1024
  br label %151, !dbg !1722

151:                                              ; preds = %29, %149, %143
  %152 = phi ptr [ %30, %29 ], [ %145, %143 ], [ %150, %149 ], !dbg !1616
  %153 = phi i64 [ %24, %29 ], [ 2, %143 ], [ 2, %149 ], !dbg !1723
  %154 = phi i1 [ %25, %29 ], [ %144, %143 ], [ %144, %149 ]
  %155 = phi i32 [ %26, %29 ], [ 0, %143 ], [ 0, %149 ], !dbg !1724
  call void @llvm.dbg.value(metadata i32 %155, metadata !1553, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i8 poison, metadata !1555, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i32 %155, metadata !1583, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i64 %153, metadata !1554, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i64 %153, metadata !1506, metadata !DIExpression()), !dbg !1726
  %156 = load i64, ptr %152, align 8, !dbg !1727, !tbaa !1510
  %157 = icmp ugt i64 %156, %153, !dbg !1728
  br i1 %157, label %222, label %158, !dbg !1729

158:                                              ; preds = %151
  br i1 %154, label %160, label %159, !dbg !1730

159:                                              ; preds = %160, %158
  br label %176, !dbg !1731

160:                                              ; preds = %158
  %161 = load i64, ptr @output_delimiter_length, align 8, !dbg !1732, !tbaa !1299
  %162 = load ptr, ptr @output_delimiter_string, align 8, !dbg !1732, !tbaa !1024
  %163 = load ptr, ptr @stdout, align 8, !dbg !1732, !tbaa !1024
  %164 = tail call i64 @fwrite_unlocked(ptr noundef %162, i64 noundef 1, i64 noundef %161, ptr noundef %163), !dbg !1732
  %165 = load i64, ptr @output_delimiter_length, align 8, !dbg !1733, !tbaa !1299
  %166 = icmp eq i64 %164, %165, !dbg !1734
  br i1 %166, label %159, label %167, !dbg !1735

167:                                              ; preds = %160
  %168 = tail call ptr @__errno_location() #44, !dbg !1736
  %169 = load i32, ptr %168, align 4, !dbg !1736, !tbaa !1101
  call void @llvm.dbg.value(metadata i32 %169, metadata !1451, metadata !DIExpression()), !dbg !1738
  %170 = load ptr, ptr @stdout, align 8, !dbg !1739, !tbaa !1024
  %171 = tail call i32 @fflush_unlocked(ptr noundef %170) #41, !dbg !1739
  %172 = load ptr, ptr @stdout, align 8, !dbg !1740, !tbaa !1024
  %173 = tail call i32 @fpurge(ptr noundef %172) #41, !dbg !1741
  %174 = load ptr, ptr @stdout, align 8, !dbg !1742, !tbaa !1024
  tail call void @clearerr_unlocked(ptr noundef %174) #41, !dbg !1742
  %175 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #41, !dbg !1743
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %169, ptr noundef %175) #41, !dbg !1743
  unreachable, !dbg !1743

176:                                              ; preds = %208, %159
  %177 = phi i32 [ %155, %159 ], [ %188, %208 ], !dbg !1725
  call void @llvm.dbg.value(metadata i32 %177, metadata !1583, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata ptr %0, metadata !1423, metadata !DIExpression()), !dbg !1744
  %178 = load ptr, ptr %3, align 8, !dbg !1746, !tbaa !1426
  %179 = load ptr, ptr %5, align 8, !dbg !1746, !tbaa !1428
  %180 = icmp ult ptr %178, %179, !dbg !1746
  br i1 %180, label %183, label %181, !dbg !1746, !prof !1429

181:                                              ; preds = %176
  %182 = tail call i32 @__uflow(ptr noundef nonnull %0) #41, !dbg !1746
  br label %187, !dbg !1746

183:                                              ; preds = %176
  %184 = getelementptr inbounds i8, ptr %178, i64 1, !dbg !1746
  store ptr %184, ptr %3, align 8, !dbg !1746, !tbaa !1426
  %185 = load i8, ptr %178, align 1, !dbg !1746, !tbaa !1110
  %186 = zext i8 %185 to i32, !dbg !1746
  br label %187, !dbg !1746

187:                                              ; preds = %181, %183
  %188 = phi i32 [ %182, %181 ], [ %186, %183 ], !dbg !1746
  call void @llvm.dbg.value(metadata i32 %188, metadata !1553, metadata !DIExpression()), !dbg !1596
  %189 = load i8, ptr @delim, align 4, !dbg !1747, !tbaa !1110
  %190 = zext i8 %189 to i32, !dbg !1747
  %191 = icmp eq i32 %188, %190, !dbg !1748
  br i1 %191, label %244, label %192, !dbg !1749

192:                                              ; preds = %187
  %193 = load i1, ptr @line_delim, align 1, !dbg !1750
  %194 = select i1 %193, i32 0, i32 10, !dbg !1750
  %195 = icmp ne i32 %188, %194, !dbg !1751
  %196 = icmp ne i32 %188, -1
  %197 = and i1 %196, %195, !dbg !1752
  br i1 %197, label %198, label %244, !dbg !1752

198:                                              ; preds = %192
  call void @llvm.dbg.value(metadata i32 %188, metadata !1434, metadata !DIExpression()), !dbg !1753
  %199 = load ptr, ptr @stdout, align 8, !dbg !1757, !tbaa !1024
  %200 = getelementptr inbounds %struct._IO_FILE, ptr %199, i64 0, i32 5, !dbg !1757
  %201 = load ptr, ptr %200, align 8, !dbg !1757, !tbaa !1444
  %202 = getelementptr inbounds %struct._IO_FILE, ptr %199, i64 0, i32 6, !dbg !1757
  %203 = load ptr, ptr %202, align 8, !dbg !1757, !tbaa !1445
  %204 = icmp ult ptr %201, %203, !dbg !1757
  br i1 %204, label %205, label %209, !dbg !1757, !prof !1429

205:                                              ; preds = %198
  %206 = trunc i32 %188 to i8, !dbg !1757
  %207 = getelementptr inbounds i8, ptr %201, i64 1, !dbg !1757
  store ptr %207, ptr %200, align 8, !dbg !1757, !tbaa !1444
  store i8 %206, ptr %201, align 1, !dbg !1757, !tbaa !1110
  br label %208, !dbg !1758

208:                                              ; preds = %205, %209
  br label %176, !dbg !1725, !llvm.loop !1759

209:                                              ; preds = %198
  %210 = and i32 %188, 255, !dbg !1757
  %211 = tail call i32 @__overflow(ptr noundef nonnull %199, i32 noundef %210) #41, !dbg !1757
  %212 = icmp slt i32 %211, 0, !dbg !1761
  br i1 %212, label %213, label %208, !dbg !1758

213:                                              ; preds = %209
  %214 = tail call ptr @__errno_location() #44, !dbg !1762
  %215 = load i32, ptr %214, align 4, !dbg !1762, !tbaa !1101
  call void @llvm.dbg.value(metadata i32 %215, metadata !1451, metadata !DIExpression()), !dbg !1764
  %216 = load ptr, ptr @stdout, align 8, !dbg !1765, !tbaa !1024
  %217 = tail call i32 @fflush_unlocked(ptr noundef %216) #41, !dbg !1765
  %218 = load ptr, ptr @stdout, align 8, !dbg !1766, !tbaa !1024
  %219 = tail call i32 @fpurge(ptr noundef %218) #41, !dbg !1767
  %220 = load ptr, ptr @stdout, align 8, !dbg !1768, !tbaa !1024
  tail call void @clearerr_unlocked(ptr noundef %220) #41, !dbg !1768
  %221 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #41, !dbg !1769
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %215, ptr noundef %221) #41, !dbg !1769
  unreachable, !dbg !1769

222:                                              ; preds = %151, %238
  %223 = phi i32 [ %234, %238 ], [ %155, %151 ], !dbg !1725
  call void @llvm.dbg.value(metadata i32 %223, metadata !1583, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata ptr %0, metadata !1423, metadata !DIExpression()), !dbg !1770
  %224 = load ptr, ptr %3, align 8, !dbg !1773, !tbaa !1426
  %225 = load ptr, ptr %5, align 8, !dbg !1773, !tbaa !1428
  %226 = icmp ult ptr %224, %225, !dbg !1773
  br i1 %226, label %229, label %227, !dbg !1773, !prof !1429

227:                                              ; preds = %222
  %228 = tail call i32 @__uflow(ptr noundef nonnull %0) #41, !dbg !1773
  br label %233, !dbg !1773

229:                                              ; preds = %222
  %230 = getelementptr inbounds i8, ptr %224, i64 1, !dbg !1773
  store ptr %230, ptr %3, align 8, !dbg !1773, !tbaa !1426
  %231 = load i8, ptr %224, align 1, !dbg !1773, !tbaa !1110
  %232 = zext i8 %231 to i32, !dbg !1773
  br label %233, !dbg !1773

233:                                              ; preds = %227, %229
  %234 = phi i32 [ %228, %227 ], [ %232, %229 ], !dbg !1773
  call void @llvm.dbg.value(metadata i32 %234, metadata !1553, metadata !DIExpression()), !dbg !1596
  %235 = load i8, ptr @delim, align 4, !dbg !1774, !tbaa !1110
  %236 = zext i8 %235 to i32, !dbg !1774
  %237 = icmp eq i32 %234, %236, !dbg !1775
  br i1 %237, label %244, label %238, !dbg !1776

238:                                              ; preds = %233
  %239 = load i1, ptr @line_delim, align 1, !dbg !1777
  %240 = select i1 %239, i32 0, i32 10, !dbg !1777
  %241 = icmp ne i32 %234, %240, !dbg !1778
  %242 = icmp ne i32 %234, -1
  %243 = and i1 %242, %241, !dbg !1779
  br i1 %243, label %222, label %244, !dbg !1779, !llvm.loop !1780

244:                                              ; preds = %187, %192, %233, %238
  %245 = phi i8 [ %235, %238 ], [ %235, %233 ], [ %189, %192 ], [ %189, %187 ]
  %246 = phi i32 [ %223, %238 ], [ %223, %233 ], [ %177, %192 ], [ %177, %187 ], !dbg !1783
  %247 = phi i1 [ %154, %238 ], [ %154, %233 ], [ true, %192 ], [ true, %187 ]
  %248 = phi i32 [ %234, %238 ], [ %234, %233 ], [ %188, %192 ], [ %188, %187 ], !dbg !1784
  %249 = zext i8 %245 to i32, !dbg !1784
  call void @llvm.dbg.value(metadata i32 %248, metadata !1553, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i8 poison, metadata !1555, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i32 %246, metadata !1583, metadata !DIExpression()), !dbg !1725
  %250 = load i1, ptr @line_delim, align 1, !dbg !1785
  %251 = select i1 %250, i32 0, i32 10, !dbg !1785
  %252 = icmp eq i32 %251, %249, !dbg !1786
  %253 = icmp eq i32 %248, %249
  %254 = select i1 %252, i1 %253, i1 false, !dbg !1787
  br i1 %254, label %255, label %276, !dbg !1787

255:                                              ; preds = %244
  call void @llvm.dbg.value(metadata ptr %0, metadata !1423, metadata !DIExpression()), !dbg !1788
  %256 = load ptr, ptr %3, align 8, !dbg !1790, !tbaa !1426
  %257 = load ptr, ptr %5, align 8, !dbg !1790, !tbaa !1428
  %258 = icmp ult ptr %256, %257, !dbg !1790
  br i1 %258, label %259, label %263, !dbg !1790, !prof !1429

259:                                              ; preds = %255
  %260 = getelementptr inbounds i8, ptr %256, i64 1, !dbg !1790
  store ptr %260, ptr %3, align 8, !dbg !1790, !tbaa !1426
  %261 = load i8, ptr %256, align 1, !dbg !1790, !tbaa !1110
  %262 = zext i8 %261 to i32, !dbg !1790
  call void @llvm.dbg.value(metadata i32 %262, metadata !1593, metadata !DIExpression()), !dbg !1791
  br label %271, !dbg !1792

263:                                              ; preds = %255
  %264 = tail call i32 @__uflow(ptr noundef nonnull %0) #41, !dbg !1790
  call void @llvm.dbg.value(metadata i32 %264, metadata !1593, metadata !DIExpression()), !dbg !1791
  %265 = icmp eq i32 %264, -1, !dbg !1793
  br i1 %265, label %266, label %271, !dbg !1792

266:                                              ; preds = %263
  call void @llvm.dbg.value(metadata i32 -1, metadata !1553, metadata !DIExpression()), !dbg !1596
  %267 = load i8, ptr @delim, align 4, !dbg !1795, !tbaa !1110
  %268 = zext i8 %267 to i32, !dbg !1795
  %269 = load i1, ptr @line_delim, align 1, !dbg !1797
  %270 = select i1 %269, i32 0, i32 10, !dbg !1797
  br label %293, !dbg !1799

271:                                              ; preds = %259, %263
  %272 = phi i32 [ %262, %259 ], [ %264, %263 ]
  %273 = tail call i32 @ungetc(i32 noundef %272, ptr noundef nonnull %0), !dbg !1800
  %274 = load i8, ptr @delim, align 4, !dbg !1795, !tbaa !1110
  %275 = zext i8 %274 to i32, !dbg !1795
  br label %276, !dbg !1800

276:                                              ; preds = %271, %244
  %277 = phi i32 [ %275, %271 ], [ %249, %244 ], !dbg !1795
  call void @llvm.dbg.value(metadata i32 %248, metadata !1553, metadata !DIExpression()), !dbg !1596
  %278 = icmp eq i32 %248, %277, !dbg !1801
  br i1 %278, label %279, label %287, !dbg !1802

279:                                              ; preds = %276
  call void @llvm.dbg.value(metadata ptr undef, metadata !1483, metadata !DIExpression()), !dbg !1803
  %280 = add i64 %153, 1, !dbg !1805
  %281 = load ptr, ptr @current_rp, align 8, !dbg !1806, !tbaa !1024
  %282 = getelementptr inbounds %struct.field_range_pair, ptr %281, i64 0, i32 1, !dbg !1807
  %283 = load i64, ptr %282, align 8, !dbg !1807, !tbaa !1495
  %284 = icmp ugt i64 %280, %283, !dbg !1808
  br i1 %284, label %285, label %77, !dbg !1809

285:                                              ; preds = %279
  %286 = getelementptr inbounds %struct.field_range_pair, ptr %281, i64 1, !dbg !1810
  store ptr %286, ptr @current_rp, align 8, !dbg !1810, !tbaa !1024
  br label %77, !dbg !1811

287:                                              ; preds = %276
  %288 = load i1, ptr @line_delim, align 1, !dbg !1797
  %289 = select i1 %288, i32 0, i32 10, !dbg !1797
  %290 = icmp eq i32 %248, %289, !dbg !1812
  %291 = icmp eq i32 %248, -1
  %292 = or i1 %291, %290, !dbg !1799
  br i1 %292, label %293, label %77, !dbg !1799

293:                                              ; preds = %266, %287
  %294 = phi i1 [ true, %266 ], [ %291, %287 ]
  %295 = phi i32 [ %270, %266 ], [ %289, %287 ]
  %296 = phi i32 [ -1, %266 ], [ %248, %287 ]
  %297 = phi i32 [ %268, %266 ], [ %277, %287 ]
  br i1 %247, label %302, label %298, !dbg !1813

298:                                              ; preds = %293
  %299 = load i1, ptr @suppress_non_delimited, align 1, !dbg !1816
  call void @llvm.dbg.value(metadata i64 %153, metadata !1554, metadata !DIExpression()), !dbg !1596
  %300 = icmp eq i64 %153, 1
  %301 = select i1 %299, i1 %300, i1 false, !dbg !1817
  br i1 %301, label %330, label %302, !dbg !1817

302:                                              ; preds = %298, %293
  %303 = icmp eq i32 %296, %295, !dbg !1818
  %304 = icmp ne i32 %246, %295
  %305 = select i1 %303, i1 true, i1 %304, !dbg !1821
  %306 = icmp eq i32 %295, %297
  %307 = select i1 %305, i1 true, i1 %306, !dbg !1821
  br i1 %307, label %308, label %330, !dbg !1821

308:                                              ; preds = %302
  call void @llvm.dbg.value(metadata i32 %289, metadata !1434, metadata !DIExpression()), !dbg !1822
  %309 = load ptr, ptr @stdout, align 8, !dbg !1826, !tbaa !1024
  %310 = getelementptr inbounds %struct._IO_FILE, ptr %309, i64 0, i32 5, !dbg !1826
  %311 = load ptr, ptr %310, align 8, !dbg !1826, !tbaa !1444
  %312 = getelementptr inbounds %struct._IO_FILE, ptr %309, i64 0, i32 6, !dbg !1826
  %313 = load ptr, ptr %312, align 8, !dbg !1826, !tbaa !1445
  %314 = icmp ult ptr %311, %313, !dbg !1826
  br i1 %314, label %315, label %318, !dbg !1826, !prof !1429

315:                                              ; preds = %308
  %316 = trunc i32 %295 to i8, !dbg !1826
  %317 = getelementptr inbounds i8, ptr %311, i64 1, !dbg !1826
  store ptr %317, ptr %310, align 8, !dbg !1826, !tbaa !1444
  store i8 %316, ptr %311, align 1, !dbg !1826, !tbaa !1110
  br i1 %294, label %333, label %331, !dbg !1827

318:                                              ; preds = %308
  %319 = tail call i32 @__overflow(ptr noundef nonnull %309, i32 noundef %295) #41, !dbg !1826
  %320 = icmp slt i32 %319, 0, !dbg !1828
  br i1 %320, label %321, label %330, !dbg !1829

321:                                              ; preds = %318
  %322 = tail call ptr @__errno_location() #44, !dbg !1830
  %323 = load i32, ptr %322, align 4, !dbg !1830, !tbaa !1101
  call void @llvm.dbg.value(metadata i32 %323, metadata !1451, metadata !DIExpression()), !dbg !1832
  %324 = load ptr, ptr @stdout, align 8, !dbg !1833, !tbaa !1024
  %325 = tail call i32 @fflush_unlocked(ptr noundef %324) #41, !dbg !1833
  %326 = load ptr, ptr @stdout, align 8, !dbg !1834, !tbaa !1024
  %327 = tail call i32 @fpurge(ptr noundef %326) #41, !dbg !1835
  %328 = load ptr, ptr @stdout, align 8, !dbg !1836, !tbaa !1024
  tail call void @clearerr_unlocked(ptr noundef %328) #41, !dbg !1836
  %329 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #41, !dbg !1837
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %323, ptr noundef %329) #41, !dbg !1837
  unreachable, !dbg !1837

330:                                              ; preds = %302, %318, %298
  br i1 %294, label %333, label %331, !dbg !1827

331:                                              ; preds = %315, %330
  call void @llvm.dbg.value(metadata i64 1, metadata !1554, metadata !DIExpression()), !dbg !1596
  %332 = load ptr, ptr @frp, align 8, !dbg !1838, !tbaa !1024
  store ptr %332, ptr @current_rp, align 8, !dbg !1839, !tbaa !1024
  call void @llvm.dbg.value(metadata i8 0, metadata !1555, metadata !DIExpression()), !dbg !1596
  br label %77, !dbg !1840

333:                                              ; preds = %315, %330, %38, %12
  ret void, !dbg !1841
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @cut_file(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !dbg !1842 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1846, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata ptr %1, metadata !1847, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata ptr %0, metadata !1112, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata ptr @.str.30, metadata !1118, metadata !DIExpression()), !dbg !1851
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.30) #42, !dbg !1854
  %4 = icmp eq i32 %3, 0, !dbg !1855
  br i1 %4, label %5, label %7, !dbg !1856

5:                                                ; preds = %2
  store i1 true, ptr @have_read_stdin, align 1, !dbg !1857
  %6 = load ptr, ptr @stdin, align 8, !dbg !1859, !tbaa !1024, !nonnull !1033
  call void @llvm.dbg.value(metadata ptr %6, metadata !1848, metadata !DIExpression()), !dbg !1850
  br label %13, !dbg !1860

7:                                                ; preds = %2
  %8 = tail call noalias ptr @rpl_fopen(ptr noundef %0, ptr noundef nonnull @.str.81) #41, !dbg !1861
  call void @llvm.dbg.value(metadata ptr %8, metadata !1848, metadata !DIExpression()), !dbg !1850
  %9 = icmp eq ptr %8, null, !dbg !1863
  br i1 %9, label %10, label %13, !dbg !1865

10:                                               ; preds = %7
  %11 = tail call ptr @__errno_location() #44, !dbg !1866
  %12 = load i32, ptr %11, align 4, !dbg !1866, !tbaa !1101
  br label %32, !dbg !1868

13:                                               ; preds = %7, %5
  %14 = phi ptr [ %6, %5 ], [ %8, %7 ], !dbg !1869
  call void @llvm.dbg.value(metadata ptr %14, metadata !1848, metadata !DIExpression()), !dbg !1850
  tail call void @fadvise(ptr noundef nonnull %14, i32 noundef 2) #41, !dbg !1870
  tail call void %1(ptr noundef nonnull %14) #41, !dbg !1871, !callees !1872
  %15 = tail call ptr @__errno_location() #44, !dbg !1873
  %16 = load i32, ptr %15, align 4, !dbg !1873, !tbaa !1101
  call void @llvm.dbg.value(metadata i32 %16, metadata !1849, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata ptr %14, metadata !1629, metadata !DIExpression()), !dbg !1874
  %17 = load i32, ptr %14, align 8, !dbg !1877, !tbaa !1636
  %18 = and i32 %17, 32, !dbg !1878
  %19 = icmp eq i32 %18, 0, !dbg !1878
  %20 = select i1 %19, i32 0, i32 %16, !dbg !1879
  call void @llvm.dbg.value(metadata i32 %20, metadata !1849, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata ptr %0, metadata !1112, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata ptr @.str.30, metadata !1118, metadata !DIExpression()), !dbg !1880
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.30) #42, !dbg !1883
  %22 = icmp eq i32 %21, 0, !dbg !1884
  br i1 %22, label %23, label %24, !dbg !1885

23:                                               ; preds = %13
  tail call void @clearerr_unlocked(ptr noundef nonnull %14) #41, !dbg !1886
  br label %29, !dbg !1886

24:                                               ; preds = %13
  %25 = tail call i32 @rpl_fclose(ptr noundef nonnull %14) #41, !dbg !1887
  %26 = icmp eq i32 %25, -1, !dbg !1889
  br i1 %26, label %27, label %29, !dbg !1890

27:                                               ; preds = %24
  %28 = load i32, ptr %15, align 4, !dbg !1891, !tbaa !1101
  call void @llvm.dbg.value(metadata i32 %28, metadata !1849, metadata !DIExpression()), !dbg !1850
  br label %29, !dbg !1892

29:                                               ; preds = %24, %27, %23
  %30 = phi i32 [ %20, %23 ], [ %28, %27 ], [ %20, %24 ], !dbg !1850
  call void @llvm.dbg.value(metadata i32 %30, metadata !1849, metadata !DIExpression()), !dbg !1850
  %31 = icmp eq i32 %30, 0, !dbg !1893
  br i1 %31, label %35, label %32, !dbg !1895

32:                                               ; preds = %29, %10
  %33 = phi i32 [ %12, %10 ], [ %30, %29 ]
  %34 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #41, !dbg !1850
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %33, ptr noundef nonnull @.str.82, ptr noundef %34) #41, !dbg !1850
  br label %35, !dbg !1896

35:                                               ; preds = %32, %29
  %36 = phi i1 [ true, %29 ], [ false, %32 ], !dbg !1850
  ret i1 %36, !dbg !1896
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1897 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1901 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

declare !dbg !1902 i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1903 noundef i32 @ungetc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1906 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare !dbg !1909 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare !dbg !1913 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1914 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @set_fields(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !521 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !569, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i32 %1, metadata !570, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i64 1, metadata !571, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i64 0, metadata !572, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8 0, metadata !573, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8 0, metadata !574, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8 0, metadata !575, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8 0, metadata !576, metadata !DIExpression()), !dbg !1917
  %3 = and i32 %1, 1, !dbg !1918
  %4 = icmp ne i32 %3, 0, !dbg !1918
  br i1 %4, label %5, label %10, !dbg !1920

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %0, metadata !1921, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata ptr @.str.37, metadata !1924, metadata !DIExpression()), !dbg !1925
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.37) #42, !dbg !1927
  %7 = icmp eq i32 %6, 0, !dbg !1928
  br i1 %7, label %8, label %10, !dbg !1929

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 1, metadata !572, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8 1, metadata !573, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8 1, metadata !575, metadata !DIExpression()), !dbg !1917
  %9 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1930
  call void @llvm.dbg.value(metadata ptr %9, metadata !569, metadata !DIExpression()), !dbg !1917
  br label %10, !dbg !1932

10:                                               ; preds = %8, %5, %2
  %11 = phi i64 [ 0, %2 ], [ 0, %5 ], [ 1, %8 ]
  %12 = phi i1 [ false, %2 ], [ false, %5 ], [ true, %8 ]
  %13 = phi ptr [ %0, %2 ], [ %0, %5 ], [ %9, %8 ]
  br label %14, !dbg !1933

14:                                               ; preds = %10, %155
  %15 = phi i64 [ %156, %155 ], [ 1, %10 ], !dbg !1917
  %16 = phi i64 [ %157, %155 ], [ %11, %10 ], !dbg !1917
  %17 = phi i1 [ %158, %155 ], [ %12, %10 ]
  %18 = phi i1 [ %159, %155 ], [ false, %10 ]
  %19 = phi i1 [ %160, %155 ], [ %12, %10 ]
  %20 = phi i1 [ %161, %155 ], [ false, %10 ]
  %21 = phi ptr [ %162, %155 ], [ %13, %10 ], !dbg !1917
  call void @llvm.dbg.value(metadata ptr %21, metadata !569, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8 poison, metadata !576, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8 poison, metadata !575, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8 poison, metadata !574, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8 poison, metadata !573, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i64 %16, metadata !572, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i64 %15, metadata !571, metadata !DIExpression()), !dbg !1917
  %22 = load i8, ptr %21, align 1, !dbg !1934, !tbaa !1110
  switch i8 %22, label %39 [
    i8 45, label %23
    i8 44, label %49
  ], !dbg !1935

23:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8 0, metadata !576, metadata !DIExpression()), !dbg !1917
  br i1 %19, label %24, label %29, !dbg !1936

24:                                               ; preds = %23
  %25 = and i32 %1, 4, !dbg !1938
  %26 = icmp eq i32 %25, 0, !dbg !1938
  %27 = select i1 %26, ptr @.str.2.38, ptr @.str.1.39, !dbg !1938
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %27, i32 noundef 5) #41, !dbg !1938
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %28) #41, !dbg !1938
  tail call void @usage(i32 noundef 1) #43, !dbg !1938
  unreachable, !dbg !1938

29:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8 1, metadata !575, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata ptr %21, metadata !569, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1917
  %30 = icmp eq i64 %16, 0
  %31 = select i1 %17, i1 %30, i1 false, !dbg !1941
  br i1 %31, label %32, label %37, !dbg !1941

32:                                               ; preds = %29
  %33 = and i32 %1, 4, !dbg !1943
  %34 = icmp eq i32 %33, 0, !dbg !1943
  %35 = select i1 %34, ptr @.str.4.40, ptr @.str.3.41, !dbg !1943
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %35, i32 noundef 5) #41, !dbg !1943
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %36) #41, !dbg !1943
  tail call void @usage(i32 noundef 1) #43, !dbg !1943
  unreachable, !dbg !1943

37:                                               ; preds = %29
  call void @llvm.dbg.value(metadata ptr %21, metadata !569, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1917
  %38 = select i1 %17, i64 %16, i64 1, !dbg !1945
  call void @llvm.dbg.value(metadata i64 %38, metadata !571, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i64 0, metadata !572, metadata !DIExpression()), !dbg !1917
  br label %155, !dbg !1946

39:                                               ; preds = %14
  %40 = tail call ptr @__ctype_b_loc() #44, !dbg !1947
  %41 = load ptr, ptr %40, align 8, !dbg !1947, !tbaa !1024
  %42 = zext i8 %22 to i64
  %43 = getelementptr inbounds i16, ptr %41, i64 %42, !dbg !1947
  %44 = load i16, ptr %43, align 2, !dbg !1947, !tbaa !1142
  %45 = and i16 %44, 1, !dbg !1947
  %46 = icmp ne i16 %45, 0, !dbg !1947
  %47 = icmp eq i8 %22, 0
  %48 = or i1 %47, %46, !dbg !1948
  br i1 %48, label %49, label %114, !dbg !1948

49:                                               ; preds = %14, %39
  call void @llvm.dbg.value(metadata i8 0, metadata !576, metadata !DIExpression()), !dbg !1917
  br i1 %19, label %50, label %85, !dbg !1949

50:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8 0, metadata !575, metadata !DIExpression()), !dbg !1917
  %51 = select i1 %17, i1 true, i1 %18, !dbg !1951
  %52 = or i1 %4, %51, !dbg !1951
  %53 = select i1 %51, i64 %15, i64 1, !dbg !1951
  br i1 %52, label %56, label %54, !dbg !1951

54:                                               ; preds = %50
  %55 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5.42, i32 noundef 5) #41, !dbg !1955
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %55) #41, !dbg !1955
  tail call void @usage(i32 noundef 1) #43, !dbg !1955
  unreachable, !dbg !1955

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 %53, metadata !571, metadata !DIExpression()), !dbg !1917
  br i1 %18, label %69, label %57, !dbg !1959

57:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i64 %53, metadata !1960, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 -1, metadata !1965, metadata !DIExpression()), !dbg !1966
  %58 = load i64, ptr @n_frp, align 8, !dbg !1970, !tbaa !1299
  %59 = load i64, ptr @n_frp_allocated, align 8, !dbg !1972, !tbaa !1299
  %60 = icmp eq i64 %58, %59, !dbg !1973
  %61 = load ptr, ptr @frp, align 8, !dbg !1966, !tbaa !1024
  br i1 %60, label %62, label %65, !dbg !1974

62:                                               ; preds = %57
  %63 = tail call nonnull ptr @xpalloc(ptr noundef %61, ptr noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #41, !dbg !1975
  store ptr %63, ptr @frp, align 8, !dbg !1976, !tbaa !1024
  %64 = load i64, ptr @n_frp, align 8, !dbg !1977, !tbaa !1299
  br label %65, !dbg !1978

65:                                               ; preds = %57, %62
  %66 = phi i64 [ %64, %62 ], [ %58, %57 ], !dbg !1977
  %67 = phi ptr [ %63, %62 ], [ %61, %57 ], !dbg !1979
  %68 = getelementptr inbounds %struct.field_range_pair, ptr %67, i64 %66, !dbg !1979
  store i64 %53, ptr %68, align 8, !dbg !1980, !tbaa !1510
  br label %104, !dbg !1981

69:                                               ; preds = %56
  %70 = icmp ult i64 %16, %53, !dbg !1982
  br i1 %70, label %71, label %73, !dbg !1985

71:                                               ; preds = %69
  %72 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6.43, i32 noundef 5) #41, !dbg !1986
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %72) #41, !dbg !1986
  tail call void @usage(i32 noundef 1) #43, !dbg !1986
  unreachable, !dbg !1986

73:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i64 %53, metadata !1960, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i64 %16, metadata !1965, metadata !DIExpression()), !dbg !1988
  %74 = load i64, ptr @n_frp, align 8, !dbg !1990, !tbaa !1299
  %75 = load i64, ptr @n_frp_allocated, align 8, !dbg !1991, !tbaa !1299
  %76 = icmp eq i64 %74, %75, !dbg !1992
  %77 = load ptr, ptr @frp, align 8, !dbg !1988, !tbaa !1024
  br i1 %76, label %78, label %81, !dbg !1993

78:                                               ; preds = %73
  %79 = tail call nonnull ptr @xpalloc(ptr noundef %77, ptr noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #41, !dbg !1994
  store ptr %79, ptr @frp, align 8, !dbg !1995, !tbaa !1024
  %80 = load i64, ptr @n_frp, align 8, !dbg !1996, !tbaa !1299
  br label %81, !dbg !1997

81:                                               ; preds = %73, %78
  %82 = phi i64 [ %80, %78 ], [ %74, %73 ], !dbg !1996
  %83 = phi ptr [ %79, %78 ], [ %77, %73 ], !dbg !1998
  %84 = getelementptr inbounds %struct.field_range_pair, ptr %83, i64 %82, !dbg !1998
  store i64 %53, ptr %84, align 8, !dbg !1999, !tbaa !1510
  br label %104

85:                                               ; preds = %49
  %86 = icmp eq i64 %16, 0, !dbg !2000
  br i1 %86, label %87, label %92, !dbg !2003

87:                                               ; preds = %85
  %88 = and i32 %1, 4, !dbg !2004
  %89 = icmp eq i32 %88, 0, !dbg !2004
  %90 = select i1 %89, ptr @.str.4.40, ptr @.str.3.41, !dbg !2004
  %91 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %90, i32 noundef 5) #41, !dbg !2004
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %91) #41, !dbg !2004
  tail call void @usage(i32 noundef 1) #43, !dbg !2004
  unreachable, !dbg !2004

92:                                               ; preds = %85
  call void @llvm.dbg.value(metadata i64 %16, metadata !1960, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i64 %16, metadata !1965, metadata !DIExpression()), !dbg !2006
  %93 = load i64, ptr @n_frp, align 8, !dbg !2008, !tbaa !1299
  %94 = load i64, ptr @n_frp_allocated, align 8, !dbg !2009, !tbaa !1299
  %95 = icmp eq i64 %93, %94, !dbg !2010
  %96 = load ptr, ptr @frp, align 8, !dbg !2006, !tbaa !1024
  br i1 %95, label %97, label %100, !dbg !2011

97:                                               ; preds = %92
  %98 = tail call nonnull ptr @xpalloc(ptr noundef %96, ptr noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #41, !dbg !2012
  store ptr %98, ptr @frp, align 8, !dbg !2013, !tbaa !1024
  %99 = load i64, ptr @n_frp, align 8, !dbg !2014, !tbaa !1299
  br label %100, !dbg !2015

100:                                              ; preds = %92, %97
  %101 = phi i64 [ %99, %97 ], [ %93, %92 ], !dbg !2014
  %102 = phi ptr [ %98, %97 ], [ %96, %92 ], !dbg !2016
  %103 = getelementptr inbounds %struct.field_range_pair, ptr %102, i64 %101, !dbg !2016
  store i64 %16, ptr %103, align 8, !dbg !2017, !tbaa !1510
  call void @llvm.dbg.value(metadata i64 0, metadata !572, metadata !DIExpression()), !dbg !1917
  br label %104

104:                                              ; preds = %65, %81, %100
  %105 = phi ptr [ %67, %65 ], [ %83, %81 ], [ %102, %100 ]
  %106 = phi i64 [ -1, %65 ], [ %16, %81 ], [ %16, %100 ]
  %107 = phi i64 [ %53, %65 ], [ %53, %81 ], [ %15, %100 ], !dbg !2018
  %108 = load i64, ptr @n_frp, align 8, !dbg !2019, !tbaa !1299
  %109 = getelementptr inbounds %struct.field_range_pair, ptr %105, i64 %108, i32 1, !dbg !2019
  store i64 %106, ptr %109, align 8, !dbg !2019, !tbaa !1495
  %110 = load i64, ptr @n_frp, align 8, !dbg !2019, !tbaa !1299
  %111 = add nsw i64 %110, 1, !dbg !2019
  store i64 %111, ptr @n_frp, align 8, !dbg !2019, !tbaa !1299
  call void @llvm.dbg.value(metadata i8 poison, metadata !575, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i64 0, metadata !572, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i64 %107, metadata !571, metadata !DIExpression()), !dbg !1917
  %112 = load i8, ptr %21, align 1, !dbg !2020, !tbaa !1110
  %113 = icmp eq i8 %112, 0, !dbg !2022
  br i1 %113, label %163, label %155, !dbg !2023

114:                                              ; preds = %39
  %115 = zext i8 %22 to i32, !dbg !2024
  call void @llvm.dbg.value(metadata i32 %115, metadata !2025, metadata !DIExpression()), !dbg !2031
  %116 = add nsw i32 %115, -48, !dbg !2033
  %117 = icmp ult i32 %116, 10, !dbg !2033
  br i1 %117, label %118, label %149, !dbg !2034

118:                                              ; preds = %114
  %119 = load ptr, ptr @set_fields.num_start, align 8
  %120 = icmp ne ptr %119, null
  %121 = select i1 %20, i1 %120, i1 false, !dbg !2035
  br i1 %121, label %123, label %122, !dbg !2035

122:                                              ; preds = %118
  store ptr %21, ptr @set_fields.num_start, align 8, !dbg !2037, !tbaa !1024
  br label %123, !dbg !2038

123:                                              ; preds = %118, %122
  %124 = phi ptr [ %119, %118 ], [ %21, %122 ]
  call void @llvm.dbg.value(metadata i8 1, metadata !576, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8 poison, metadata !574, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8 poison, metadata !573, metadata !DIExpression()), !dbg !1917
  %125 = icmp ult i64 %16, 1844674407370955162, !dbg !2039
  call void @llvm.dbg.value(metadata i64 %16, metadata !572, metadata !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value)), !dbg !1917
  br i1 %125, label %126, label %141, !dbg !2039

126:                                              ; preds = %123
  %127 = select i1 %19, i1 true, i1 %18
  %128 = xor i1 %19, true
  %129 = select i1 %128, i1 true, i1 %17
  %130 = mul nuw i64 %16, 10, !dbg !2039
  call void @llvm.dbg.value(metadata i64 %130, metadata !572, metadata !DIExpression()), !dbg !1917
  %131 = zext i64 %130 to i65, !dbg !2039
  %132 = zext i32 %116 to i65, !dbg !2039
  %133 = tail call { i65, i1 } @llvm.sadd.with.overflow.i65(i65 %131, i65 %132), !dbg !2039
  %134 = extractvalue { i65, i1 } %133, 1, !dbg !2039
  %135 = extractvalue { i65, i1 } %133, 0, !dbg !2039
  %136 = trunc i65 %135 to i64, !dbg !2039
  %137 = icmp slt i65 %135, 0, !dbg !2039
  %138 = or i1 %134, %137, !dbg !2039
  call void @llvm.dbg.value(metadata i64 %136, metadata !572, metadata !DIExpression()), !dbg !1917
  %139 = icmp eq i64 %136, -1
  %140 = or i1 %138, %139, !dbg !2040
  br i1 %140, label %141, label %155, !dbg !2040

141:                                              ; preds = %126, %123
  %142 = tail call i64 @strspn(ptr noundef nonnull %124, ptr noundef nonnull @.str.7.44) #42, !dbg !2041
  %143 = tail call noalias nonnull ptr @ximemdup0(ptr noundef nonnull %124, i64 noundef %142) #41, !dbg !2042
  call void @llvm.dbg.value(metadata ptr %143, metadata !577, metadata !DIExpression()), !dbg !2043
  %144 = and i32 %1, 4, !dbg !2044
  %145 = icmp eq i32 %144, 0, !dbg !2044
  %146 = select i1 %145, ptr @.str.9.45, ptr @.str.8.46, !dbg !2044
  %147 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %146, i32 noundef 5) #41, !dbg !2044
  %148 = tail call ptr @quote(ptr noundef nonnull %143) #41, !dbg !2044
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %147, ptr noundef %148) #41, !dbg !2044
  tail call void @free(ptr noundef nonnull %143) #41, !dbg !2045
  tail call void @usage(i32 noundef 1) #43, !dbg !2046
  unreachable, !dbg !2046

149:                                              ; preds = %114
  %150 = and i32 %1, 4, !dbg !2047
  %151 = icmp eq i32 %150, 0, !dbg !2047
  %152 = select i1 %151, ptr @.str.11.47, ptr @.str.10.48, !dbg !2047
  %153 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %152, i32 noundef 5) #41, !dbg !2047
  %154 = tail call ptr @quote(ptr noundef nonnull %21) #41, !dbg !2047
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %153, ptr noundef %154) #41, !dbg !2047
  tail call void @usage(i32 noundef 1) #43, !dbg !2049
  unreachable, !dbg !2049

155:                                              ; preds = %126, %104, %37
  %156 = phi i64 [ %38, %37 ], [ %107, %104 ], [ %15, %126 ], !dbg !1917
  %157 = phi i64 [ 0, %37 ], [ 0, %104 ], [ %136, %126 ], !dbg !2050
  %158 = phi i1 [ %17, %37 ], [ false, %104 ], [ %129, %126 ]
  %159 = phi i1 [ %18, %37 ], [ false, %104 ], [ %127, %126 ]
  %160 = phi i1 [ true, %37 ], [ false, %104 ], [ %19, %126 ]
  %161 = phi i1 [ false, %37 ], [ false, %104 ], [ true, %126 ]
  %162 = getelementptr inbounds i8, ptr %21, i64 1, !dbg !2050
  call void @llvm.dbg.value(metadata ptr %162, metadata !569, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8 poison, metadata !576, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8 poison, metadata !575, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8 poison, metadata !574, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8 poison, metadata !573, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i64 %157, metadata !572, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i64 %156, metadata !571, metadata !DIExpression()), !dbg !1917
  br label %14, !dbg !1933, !llvm.loop !2051

163:                                              ; preds = %104
  %164 = icmp eq i64 %111, 0, !dbg !2053
  br i1 %164, label %165, label %170, !dbg !2055

165:                                              ; preds = %163
  %166 = and i32 %1, 4, !dbg !2056
  %167 = icmp eq i32 %166, 0, !dbg !2056
  %168 = select i1 %167, ptr @.str.13.49, ptr @.str.12.50, !dbg !2056
  %169 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %168, i32 noundef 5) #41, !dbg !2056
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %169) #41, !dbg !2056
  tail call void @usage(i32 noundef 1) #43, !dbg !2056
  unreachable, !dbg !2056

170:                                              ; preds = %163
  tail call void @qsort(ptr noundef nonnull %105, i64 noundef %111, i64 noundef 16, ptr noundef nonnull @compare_ranges) #41, !dbg !2058
  call void @llvm.dbg.value(metadata i64 0, metadata !585, metadata !DIExpression()), !dbg !2059
  %171 = load i64, ptr @n_frp, align 8, !dbg !2060, !tbaa !1299
  %172 = icmp sgt i64 %171, 0, !dbg !2061
  br i1 %172, label %177, label %173, !dbg !2062

173:                                              ; preds = %212, %170
  %174 = phi i64 [ %171, %170 ], [ %213, %212 ], !dbg !2060
  %175 = and i32 %1, 2, !dbg !2063
  %176 = icmp eq i32 %175, 0, !dbg !2063
  br i1 %176, label %287, label %215, !dbg !2065

177:                                              ; preds = %170, %212
  %178 = phi i64 [ %213, %212 ], [ %171, %170 ]
  %179 = phi i64 [ %180, %212 ], [ 0, %170 ]
  call void @llvm.dbg.value(metadata i64 %179, metadata !585, metadata !DIExpression()), !dbg !2059
  %180 = add nuw nsw i64 %179, 1, !dbg !2066
  call void @llvm.dbg.value(metadata i64 %180, metadata !587, metadata !DIExpression()), !dbg !2067
  %181 = icmp slt i64 %180, %178, !dbg !2068
  br i1 %181, label %182, label %212, !dbg !2070

182:                                              ; preds = %177
  %183 = sub nsw i64 1152921504606846974, %179
  %184 = load ptr, ptr @frp, align 8, !dbg !2071, !tbaa !1024
  %185 = getelementptr inbounds %struct.field_range_pair, ptr %184, i64 %180, !dbg !2071
  %186 = load i64, ptr %185, align 8, !dbg !2074, !tbaa !1510
  %187 = getelementptr inbounds %struct.field_range_pair, ptr %184, i64 %179, i32 1, !dbg !2075
  %188 = load i64, ptr %187, align 8, !dbg !2075, !tbaa !1495
  %189 = icmp ugt i64 %186, %188, !dbg !2076
  br i1 %189, label %212, label %197, !dbg !2077

190:                                              ; preds = %197
  %191 = load ptr, ptr @frp, align 8, !dbg !2071, !tbaa !1024
  %192 = getelementptr inbounds %struct.field_range_pair, ptr %191, i64 %180, !dbg !2071
  %193 = load i64, ptr %192, align 8, !dbg !2074, !tbaa !1510
  %194 = getelementptr inbounds %struct.field_range_pair, ptr %191, i64 %179, i32 1, !dbg !2075
  %195 = load i64, ptr %194, align 8, !dbg !2075, !tbaa !1495
  %196 = icmp ugt i64 %193, %195, !dbg !2076
  br i1 %196, label %212, label %197, !dbg !2077, !llvm.loop !2078

197:                                              ; preds = %182, %190
  %198 = phi i64 [ %195, %190 ], [ %188, %182 ]
  %199 = phi ptr [ %194, %190 ], [ %187, %182 ]
  %200 = phi ptr [ %192, %190 ], [ %185, %182 ]
  %201 = phi ptr [ %191, %190 ], [ %184, %182 ]
  %202 = getelementptr inbounds %struct.field_range_pair, ptr %201, i64 %180, i32 1, !dbg !2080
  %203 = load i64, ptr %202, align 8, !dbg !2080, !tbaa !1495
  %204 = tail call i64 @llvm.umax.i64(i64 %203, i64 %198), !dbg !2080
  store i64 %204, ptr %199, align 8, !dbg !2082, !tbaa !1495
  %205 = getelementptr inbounds %struct.field_range_pair, ptr %200, i64 1, !dbg !2083
  %206 = load i64, ptr @n_frp, align 8, !dbg !2084, !tbaa !1299
  %207 = add i64 %183, %206, !dbg !2085
  %208 = shl i64 %207, 4, !dbg !2086
  call void @llvm.dbg.value(metadata ptr %200, metadata !2087, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata ptr %205, metadata !2093, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %208, metadata !2094, metadata !DIExpression()), !dbg !2095
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %200, ptr noundef nonnull align 1 %205, i64 noundef %208, i1 noundef false) #41, !dbg !2097
  %209 = load i64, ptr @n_frp, align 8, !dbg !2098, !tbaa !1299
  %210 = add nsw i64 %209, -1, !dbg !2098
  store i64 %210, ptr @n_frp, align 8, !dbg !2098, !tbaa !1299
  call void @llvm.dbg.value(metadata i64 %180, metadata !587, metadata !DIExpression()), !dbg !2067
  %211 = icmp slt i64 %180, %210, !dbg !2068
  br i1 %211, label %190, label %212, !dbg !2070, !llvm.loop !2078

212:                                              ; preds = %190, %197, %182, %177
  %213 = phi i64 [ %178, %177 ], [ %178, %182 ], [ %210, %197 ], [ %210, %190 ], !dbg !2060
  call void @llvm.dbg.value(metadata i64 %180, metadata !585, metadata !DIExpression()), !dbg !2059
  %214 = icmp slt i64 %180, %213, !dbg !2061
  br i1 %214, label %177, label %173, !dbg !2062, !llvm.loop !2099

215:                                              ; preds = %173
  %216 = load ptr, ptr @frp, align 8, !dbg !2101, !tbaa !1024
  call void @llvm.dbg.value(metadata ptr %216, metadata !2104, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %174, metadata !2105, metadata !DIExpression()), !dbg !2109
  store ptr null, ptr @frp, align 8, !dbg !2110, !tbaa !1024
  store i64 0, ptr @n_frp, align 8, !dbg !2111, !tbaa !1299
  store i64 0, ptr @n_frp_allocated, align 8, !dbg !2112, !tbaa !1299
  %217 = load i64, ptr %216, align 8, !dbg !2113, !tbaa !1510
  %218 = icmp ugt i64 %217, 1, !dbg !2115
  br i1 %218, label %219, label %228, !dbg !2116

219:                                              ; preds = %215
  %220 = add i64 %217, -1, !dbg !2117
  call void @llvm.dbg.value(metadata i64 1, metadata !1960, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %220, metadata !1965, metadata !DIExpression()), !dbg !2118
  %221 = tail call nonnull ptr @xpalloc(ptr noundef null, ptr noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #41, !dbg !2120
  store ptr %221, ptr @frp, align 8, !dbg !2121, !tbaa !1024
  %222 = load i64, ptr @n_frp, align 8, !dbg !2122, !tbaa !1299
  %223 = getelementptr inbounds %struct.field_range_pair, ptr %221, i64 %222, !dbg !2123
  store i64 1, ptr %223, align 8, !dbg !2124, !tbaa !1510
  %224 = load i64, ptr @n_frp, align 8, !dbg !2125, !tbaa !1299
  %225 = getelementptr inbounds %struct.field_range_pair, ptr %221, i64 %224, i32 1, !dbg !2126
  store i64 %220, ptr %225, align 8, !dbg !2127, !tbaa !1495
  %226 = load i64, ptr @n_frp, align 8, !dbg !2128, !tbaa !1299
  %227 = add nsw i64 %226, 1, !dbg !2128
  store i64 %227, ptr @n_frp, align 8, !dbg !2128, !tbaa !1299
  br label %228, !dbg !2129

228:                                              ; preds = %219, %215
  %229 = phi ptr [ %221, %219 ], [ null, %215 ]
  %230 = phi i64 [ %227, %219 ], [ 0, %215 ]
  call void @llvm.dbg.value(metadata i64 1, metadata !2106, metadata !DIExpression()), !dbg !2130
  %231 = icmp sgt i64 %174, 1, !dbg !2131
  br i1 %231, label %239, label %232, !dbg !2133

232:                                              ; preds = %265, %228
  %233 = phi ptr [ %229, %228 ], [ %266, %265 ]
  %234 = phi i64 [ %230, %228 ], [ %267, %265 ]
  %235 = add nsw i64 %174, -1, !dbg !2134
  %236 = getelementptr inbounds %struct.field_range_pair, ptr %216, i64 %235, i32 1, !dbg !2136
  %237 = load i64, ptr %236, align 8, !dbg !2136, !tbaa !1495
  %238 = icmp eq i64 %237, -1, !dbg !2137
  br i1 %238, label %285, label %270, !dbg !2138

239:                                              ; preds = %228, %265
  %240 = phi ptr [ %266, %265 ], [ %229, %228 ]
  %241 = phi i64 [ %267, %265 ], [ %230, %228 ]
  %242 = phi i64 [ %268, %265 ], [ 1, %228 ]
  call void @llvm.dbg.value(metadata i64 %242, metadata !2106, metadata !DIExpression()), !dbg !2130
  %243 = add nsw i64 %242, -1, !dbg !2139
  %244 = getelementptr inbounds %struct.field_range_pair, ptr %216, i64 %243, i32 1, !dbg !2142
  %245 = load i64, ptr %244, align 8, !dbg !2142, !tbaa !1495
  %246 = add i64 %245, 1, !dbg !2143
  %247 = getelementptr inbounds %struct.field_range_pair, ptr %216, i64 %242, !dbg !2144
  %248 = load i64, ptr %247, align 8, !dbg !2145, !tbaa !1510
  %249 = icmp eq i64 %246, %248, !dbg !2146
  br i1 %249, label %265, label %250, !dbg !2147

250:                                              ; preds = %239
  %251 = add i64 %248, -1, !dbg !2148
  call void @llvm.dbg.value(metadata i64 %246, metadata !1960, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i64 %251, metadata !1965, metadata !DIExpression()), !dbg !2149
  %252 = load i64, ptr @n_frp_allocated, align 8, !dbg !2151, !tbaa !1299
  %253 = icmp eq i64 %241, %252, !dbg !2152
  br i1 %253, label %254, label %257, !dbg !2153

254:                                              ; preds = %250
  %255 = tail call nonnull ptr @xpalloc(ptr noundef %240, ptr noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #41, !dbg !2154
  store ptr %255, ptr @frp, align 8, !dbg !2155, !tbaa !1024
  %256 = load i64, ptr @n_frp, align 8, !dbg !2156, !tbaa !1299
  br label %257, !dbg !2157

257:                                              ; preds = %254, %250
  %258 = phi ptr [ %255, %254 ], [ %240, %250 ]
  %259 = phi i64 [ %256, %254 ], [ %241, %250 ], !dbg !2156
  %260 = getelementptr inbounds %struct.field_range_pair, ptr %258, i64 %259, !dbg !2158
  store i64 %246, ptr %260, align 8, !dbg !2159, !tbaa !1510
  %261 = load i64, ptr @n_frp, align 8, !dbg !2160, !tbaa !1299
  %262 = getelementptr inbounds %struct.field_range_pair, ptr %258, i64 %261, i32 1, !dbg !2161
  store i64 %251, ptr %262, align 8, !dbg !2162, !tbaa !1495
  %263 = load i64, ptr @n_frp, align 8, !dbg !2163, !tbaa !1299
  %264 = add nsw i64 %263, 1, !dbg !2163
  store i64 %264, ptr @n_frp, align 8, !dbg !2163, !tbaa !1299
  br label %265, !dbg !2164

265:                                              ; preds = %257, %239
  %266 = phi ptr [ %240, %239 ], [ %258, %257 ]
  %267 = phi i64 [ %241, %239 ], [ %264, %257 ]
  %268 = add nuw nsw i64 %242, 1, !dbg !2165
  call void @llvm.dbg.value(metadata i64 %268, metadata !2106, metadata !DIExpression()), !dbg !2130
  %269 = icmp eq i64 %268, %174, !dbg !2131
  br i1 %269, label %232, label %239, !dbg !2133, !llvm.loop !2166

270:                                              ; preds = %232
  %271 = add nuw i64 %237, 1, !dbg !2168
  call void @llvm.dbg.value(metadata i64 %271, metadata !1960, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 -1, metadata !1965, metadata !DIExpression()), !dbg !2169
  %272 = load i64, ptr @n_frp_allocated, align 8, !dbg !2171, !tbaa !1299
  %273 = icmp eq i64 %234, %272, !dbg !2172
  br i1 %273, label %274, label %277, !dbg !2173

274:                                              ; preds = %270
  %275 = tail call nonnull ptr @xpalloc(ptr noundef %233, ptr noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #41, !dbg !2174
  store ptr %275, ptr @frp, align 8, !dbg !2175, !tbaa !1024
  %276 = load i64, ptr @n_frp, align 8, !dbg !2176, !tbaa !1299
  br label %277, !dbg !2177

277:                                              ; preds = %274, %270
  %278 = phi i64 [ %276, %274 ], [ %234, %270 ], !dbg !2176
  %279 = phi ptr [ %275, %274 ], [ %233, %270 ], !dbg !2178
  %280 = getelementptr inbounds %struct.field_range_pair, ptr %279, i64 %278, !dbg !2178
  store i64 %271, ptr %280, align 8, !dbg !2179, !tbaa !1510
  %281 = load i64, ptr @n_frp, align 8, !dbg !2180, !tbaa !1299
  %282 = getelementptr inbounds %struct.field_range_pair, ptr %279, i64 %281, i32 1, !dbg !2181
  store i64 -1, ptr %282, align 8, !dbg !2182, !tbaa !1495
  %283 = load i64, ptr @n_frp, align 8, !dbg !2183, !tbaa !1299
  %284 = add nsw i64 %283, 1, !dbg !2183
  store i64 %284, ptr @n_frp, align 8, !dbg !2183, !tbaa !1299
  br label %285, !dbg !2184

285:                                              ; preds = %232, %277
  tail call void @free(ptr noundef nonnull %216) #41, !dbg !2185
  %286 = load i64, ptr @n_frp, align 8, !dbg !2186, !tbaa !1299
  br label %287, !dbg !2187

287:                                              ; preds = %285, %173
  %288 = phi i64 [ %286, %285 ], [ %174, %173 ], !dbg !2186
  %289 = add nsw i64 %288, 1, !dbg !2186
  store i64 %289, ptr @n_frp, align 8, !dbg !2186, !tbaa !1299
  %290 = load ptr, ptr @frp, align 8, !dbg !2188, !tbaa !1024
  %291 = shl i64 %289, 4, !dbg !2189
  %292 = tail call ptr @xrealloc(ptr noundef %290, i64 noundef %291) #46, !dbg !2190
  store ptr %292, ptr @frp, align 8, !dbg !2191, !tbaa !1024
  %293 = load i64, ptr @n_frp, align 8, !dbg !2192, !tbaa !1299
  %294 = add nsw i64 %293, -1, !dbg !2193
  %295 = getelementptr inbounds %struct.field_range_pair, ptr %292, i64 %294, i32 1, !dbg !2194
  store i64 -1, ptr %295, align 8, !dbg !2195, !tbaa !1495
  %296 = load i64, ptr @n_frp, align 8, !dbg !2196, !tbaa !1299
  %297 = add nsw i64 %296, -1, !dbg !2197
  %298 = getelementptr inbounds %struct.field_range_pair, ptr %292, i64 %297, !dbg !2198
  store i64 -1, ptr %298, align 8, !dbg !2199, !tbaa !1510
  ret void, !dbg !2200
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i65, i1 } @llvm.sadd.with.overflow.i65(i65, i65) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @compare_ranges(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !dbg !2201 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2205, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata ptr %1, metadata !2206, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata ptr %0, metadata !2207, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata ptr %1, metadata !2210, metadata !DIExpression()), !dbg !2211
  %3 = load i64, ptr %0, align 8, !dbg !2212, !tbaa !1510
  %4 = load i64, ptr %1, align 8, !dbg !2212, !tbaa !1510
  %5 = icmp ugt i64 %3, %4, !dbg !2212
  %6 = zext i1 %5 to i32, !dbg !2212
  %7 = icmp ult i64 %3, %4, !dbg !2212
  %8 = sext i1 %7 to i32, !dbg !2212
  %9 = add nsw i32 %8, %6, !dbg !2212
  ret i32 %9, !dbg !2213
}

; Function Attrs: nofree
declare !dbg !2214 void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #15 !dbg !2219 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2221, metadata !DIExpression()), !dbg !2222
  store ptr %0, ptr @file_name, align 8, !dbg !2223, !tbaa !1024
  ret void, !dbg !2224
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #15 !dbg !2225 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2229, metadata !DIExpression()), !dbg !2230
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !2231, !tbaa !2232
  ret void, !dbg !2234
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2235 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2240, !tbaa !1024
  %2 = tail call i32 @close_stream(ptr noundef %1) #41, !dbg !2241
  %3 = icmp eq i32 %2, 0, !dbg !2242
  br i1 %3, label %22, label %4, !dbg !2243

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !2244, !tbaa !2232, !range !2245, !noundef !1033
  %6 = icmp eq i8 %5, 0, !dbg !2244
  br i1 %6, label %11, label %7, !dbg !2246

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #44, !dbg !2247
  %9 = load i32, ptr %8, align 4, !dbg !2247, !tbaa !1101
  %10 = icmp eq i32 %9, 32, !dbg !2248
  br i1 %10, label %22, label %11, !dbg !2249

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.1.84, i32 noundef 5) #41, !dbg !2250
  call void @llvm.dbg.value(metadata ptr %12, metadata !2237, metadata !DIExpression()), !dbg !2251
  %13 = load ptr, ptr @file_name, align 8, !dbg !2252, !tbaa !1024
  %14 = icmp eq ptr %13, null, !dbg !2252
  %15 = tail call ptr @__errno_location() #44, !dbg !2254
  %16 = load i32, ptr %15, align 4, !dbg !2254, !tbaa !1101
  br i1 %14, label %19, label %17, !dbg !2255

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #41, !dbg !2256
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.85, ptr noundef %18, ptr noundef %12) #41, !dbg !2256
  br label %20, !dbg !2256

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.86, ptr noundef %12) #41, !dbg !2257
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2258, !tbaa !1101
  tail call void @_exit(i32 noundef %21) #43, !dbg !2259
  unreachable, !dbg !2259

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2260, !tbaa !1024
  %24 = tail call i32 @close_stream(ptr noundef %23) #41, !dbg !2262
  %25 = icmp eq i32 %24, 0, !dbg !2263
  br i1 %25, label %28, label %26, !dbg !2264

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2265, !tbaa !1101
  tail call void @_exit(i32 noundef %27) #43, !dbg !2266
  unreachable, !dbg !2266

28:                                               ; preds = %22
  ret void, !dbg !2267
}

; Function Attrs: noreturn
declare !dbg !2268 void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #17 !dbg !2270 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2274, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i32 %1, metadata !2275, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata ptr %2, metadata !2276, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2277, metadata !DIExpression()), !dbg !2279
  tail call fastcc void @flush_stdout(), !dbg !2280
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !2281, !tbaa !1024
  %7 = icmp eq ptr %6, null, !dbg !2281
  br i1 %7, label %9, label %8, !dbg !2283

8:                                                ; preds = %4
  tail call void %6() #41, !dbg !2284
  br label %13, !dbg !2284

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !2285, !tbaa !1024
  %11 = tail call ptr @getprogname() #42, !dbg !2285
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.87, ptr noundef %11) #41, !dbg !2285
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #41, !dbg !2287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2287, !tbaa.struct !2288
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !2287
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #41, !dbg !2287
  ret void, !dbg !2289
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2290 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2292, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i32 1, metadata !2294, metadata !DIExpression()), !dbg !2297
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #41, !dbg !2300
  %2 = icmp slt i32 %1, 0, !dbg !2301
  br i1 %2, label %6, label %3, !dbg !2302

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2303, !tbaa !1024
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #41, !dbg !2303
  br label %6, !dbg !2303

6:                                                ; preds = %3, %0
  ret void, !dbg !2304
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !2305 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2307, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 %1, metadata !2308, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata ptr %2, metadata !2309, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2310, metadata !DIExpression()), !dbg !2312
  %7 = load ptr, ptr @stderr, align 8, !dbg !2313, !tbaa !1024
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #41, !dbg !2314, !noalias !2358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2362
  call void @llvm.dbg.value(metadata ptr %7, metadata !2354, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata ptr %2, metadata !2355, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2356, metadata !DIExpression()), !dbg !2364
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #41, !dbg !2314
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #41, !dbg !2314, !noalias !2358
  %9 = load i32, ptr @error_message_count, align 4, !dbg !2365, !tbaa !1101
  %10 = add i32 %9, 1, !dbg !2365
  store i32 %10, ptr @error_message_count, align 4, !dbg !2365, !tbaa !1101
  %11 = icmp eq i32 %1, 0, !dbg !2366
  br i1 %11, label %21, label %12, !dbg !2368

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2369, metadata !DIExpression()), !dbg !2377
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #41, !dbg !2379
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2373, metadata !DIExpression()), !dbg !2380
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #41, !dbg !2381
  call void @llvm.dbg.value(metadata ptr %13, metadata !2372, metadata !DIExpression()), !dbg !2377
  %14 = icmp eq ptr %13, null, !dbg !2382
  br i1 %14, label %15, label %17, !dbg !2384

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.88, ptr noundef nonnull @.str.5.89, i32 noundef 5) #41, !dbg !2385
  call void @llvm.dbg.value(metadata ptr %16, metadata !2372, metadata !DIExpression()), !dbg !2377
  br label %17, !dbg !2386

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2377
  call void @llvm.dbg.value(metadata ptr %18, metadata !2372, metadata !DIExpression()), !dbg !2377
  %19 = load ptr, ptr @stderr, align 8, !dbg !2387, !tbaa !1024
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.90, ptr noundef %18) #41, !dbg !2387
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #41, !dbg !2388
  br label %21, !dbg !2389

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2390, !tbaa !1024
  call void @llvm.dbg.value(metadata i32 10, metadata !2391, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata ptr %22, metadata !2396, metadata !DIExpression()), !dbg !2397
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2399
  %24 = load ptr, ptr %23, align 8, !dbg !2399, !tbaa !1444
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2399
  %26 = load ptr, ptr %25, align 8, !dbg !2399, !tbaa !1445
  %27 = icmp ult ptr %24, %26, !dbg !2399
  br i1 %27, label %30, label %28, !dbg !2399, !prof !1429

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #41, !dbg !2399
  br label %32, !dbg !2399

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2399
  store ptr %31, ptr %23, align 8, !dbg !2399, !tbaa !1444
  store i8 10, ptr %24, align 1, !dbg !2399, !tbaa !1110
  br label %32, !dbg !2399

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2400, !tbaa !1024
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #41, !dbg !2400
  %35 = icmp eq i32 %0, 0, !dbg !2401
  br i1 %35, label %37, label %36, !dbg !2403

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #43, !dbg !2404
  unreachable, !dbg !2404

37:                                               ; preds = %32
  ret void, !dbg !2405
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #18

declare !dbg !2406 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2409 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2412 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2416 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2420, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i32 %1, metadata !2421, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata ptr %2, metadata !2422, metadata !DIExpression()), !dbg !2424
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #41, !dbg !2425
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2423, metadata !DIExpression()), !dbg !2426
  call void @llvm.va_start(ptr nonnull %4), !dbg !2427
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #41, !dbg !2428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2428, !tbaa.struct !2288
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #47, !dbg !2428
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #41, !dbg !2428
  call void @llvm.va_end(ptr nonnull %4), !dbg !2429
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #41, !dbg !2430
  ret void, !dbg !2430
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #17 !dbg !623 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !640, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i32 %1, metadata !641, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %2, metadata !642, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i32 %3, metadata !643, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %4, metadata !644, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.declare(metadata ptr %5, metadata !645, metadata !DIExpression()), !dbg !2432
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2433, !tbaa !1101
  %9 = icmp eq i32 %8, 0, !dbg !2433
  br i1 %9, label %24, label %10, !dbg !2435

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2436, !tbaa !1101
  %12 = icmp eq i32 %11, %3, !dbg !2439
  br i1 %12, label %13, label %23, !dbg !2440

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2441, !tbaa !1024
  %15 = icmp eq ptr %14, %2, !dbg !2442
  br i1 %15, label %37, label %16, !dbg !2443

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2444
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2445
  br i1 %19, label %20, label %23, !dbg !2445

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !2446
  %22 = icmp eq i32 %21, 0, !dbg !2447
  br i1 %22, label %37, label %23, !dbg !2448

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2449, !tbaa !1024
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2450, !tbaa !1101
  br label %24, !dbg !2451

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2452
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2453, !tbaa !1024
  %26 = icmp eq ptr %25, null, !dbg !2453
  br i1 %26, label %28, label %27, !dbg !2455

27:                                               ; preds = %24
  tail call void %25() #41, !dbg !2456
  br label %32, !dbg !2456

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2457, !tbaa !1024
  %30 = tail call ptr @getprogname() #42, !dbg !2457
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.93, ptr noundef %30) #41, !dbg !2457
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2459, !tbaa !1024
  %34 = icmp eq ptr %2, null, !dbg !2459
  %35 = select i1 %34, ptr @.str.3.94, ptr @.str.2.95, !dbg !2459
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #41, !dbg !2459
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #41, !dbg !2460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2460, !tbaa.struct !2288
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2460
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #41, !dbg !2460
  br label %37, !dbg !2461

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2461
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2462 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2466, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i32 %1, metadata !2467, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata ptr %2, metadata !2468, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i32 %3, metadata !2469, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata ptr %4, metadata !2470, metadata !DIExpression()), !dbg !2472
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #41, !dbg !2473
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2471, metadata !DIExpression()), !dbg !2474
  call void @llvm.va_start(ptr nonnull %6), !dbg !2475
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #41, !dbg !2476
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2476, !tbaa.struct !2288
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #47, !dbg !2476
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #41, !dbg !2476
  call void @llvm.va_end(ptr nonnull %6), !dbg !2477
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #41, !dbg !2478
  ret void, !dbg !2478
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2479 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2485, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i64 %1, metadata !2486, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i64 %2, metadata !2487, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i32 %3, metadata !2488, metadata !DIExpression()), !dbg !2489
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #41, !dbg !2490
  ret void, !dbg !2491
}

; Function Attrs: nounwind
declare !dbg !2492 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2495 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2533, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i32 %1, metadata !2534, metadata !DIExpression()), !dbg !2535
  %3 = icmp eq ptr %0, null, !dbg !2536
  br i1 %3, label %7, label %4, !dbg !2538

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !2539
  call void @llvm.dbg.value(metadata i32 %5, metadata !2485, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i64 0, metadata !2486, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i64 0, metadata !2487, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i32 %1, metadata !2488, metadata !DIExpression()), !dbg !2540
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #41, !dbg !2542
  br label %7, !dbg !2543

7:                                                ; preds = %4, %2
  ret void, !dbg !2544
}

; Function Attrs: nofree nounwind
declare !dbg !2545 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2548 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2586, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i32 0, metadata !2587, metadata !DIExpression()), !dbg !2590
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !2591
  call void @llvm.dbg.value(metadata i32 %2, metadata !2588, metadata !DIExpression()), !dbg !2590
  %3 = icmp slt i32 %2, 0, !dbg !2592
  br i1 %3, label %4, label %6, !dbg !2594

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2595
  br label %24, !dbg !2596

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #41, !dbg !2597
  %8 = icmp eq i32 %7, 0, !dbg !2597
  br i1 %8, label %13, label %9, !dbg !2599

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !2600
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #41, !dbg !2601
  %12 = icmp eq i64 %11, -1, !dbg !2602
  br i1 %12, label %16, label %13, !dbg !2603

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #41, !dbg !2604
  %15 = icmp eq i32 %14, 0, !dbg !2604
  br i1 %15, label %16, label %18, !dbg !2605

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !2587, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i32 0, metadata !2589, metadata !DIExpression()), !dbg !2590
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2606
  call void @llvm.dbg.value(metadata i32 %17, metadata !2589, metadata !DIExpression()), !dbg !2590
  br label %24, !dbg !2607

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #44, !dbg !2608
  %20 = load i32, ptr %19, align 4, !dbg !2608, !tbaa !1101
  call void @llvm.dbg.value(metadata i32 %20, metadata !2587, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i32 0, metadata !2589, metadata !DIExpression()), !dbg !2590
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2606
  call void @llvm.dbg.value(metadata i32 %21, metadata !2589, metadata !DIExpression()), !dbg !2590
  %22 = icmp eq i32 %20, 0, !dbg !2609
  br i1 %22, label %24, label %23, !dbg !2607

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2611, !tbaa !1101
  call void @llvm.dbg.value(metadata i32 -1, metadata !2589, metadata !DIExpression()), !dbg !2590
  br label %24, !dbg !2613

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2590
  ret i32 %25, !dbg !2614
}

; Function Attrs: nofree nounwind
declare !dbg !2615 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2616 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2618 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2621 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2659, metadata !DIExpression()), !dbg !2660
  %2 = icmp eq ptr %0, null, !dbg !2661
  br i1 %2, label %6, label %3, !dbg !2663

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #41, !dbg !2664
  %5 = icmp eq i32 %4, 0, !dbg !2664
  br i1 %5, label %6, label %8, !dbg !2665

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2666
  br label %16, !dbg !2667

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2668, metadata !DIExpression()), !dbg !2673
  %9 = load i32, ptr %0, align 8, !dbg !2675, !tbaa !1636
  %10 = and i32 %9, 256, !dbg !2677
  %11 = icmp eq i32 %10, 0, !dbg !2677
  br i1 %11, label %14, label %12, !dbg !2678

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #41, !dbg !2679
  br label %14, !dbg !2679

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2680
  br label %16, !dbg !2681

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2660
  ret i32 %17, !dbg !2682
}

; Function Attrs: nofree nounwind
declare !dbg !2683 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2684 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2722, metadata !DIExpression()), !dbg !2723
  tail call void @__fpurge(ptr noundef nonnull %0) #41, !dbg !2724
  ret i32 0, !dbg !2725
}

; Function Attrs: nounwind
declare !dbg !2726 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2729 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2767, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i64 %1, metadata !2768, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i32 %2, metadata !2769, metadata !DIExpression()), !dbg !2773
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2774
  %5 = load ptr, ptr %4, align 8, !dbg !2774, !tbaa !1428
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2775
  %7 = load ptr, ptr %6, align 8, !dbg !2775, !tbaa !1426
  %8 = icmp eq ptr %5, %7, !dbg !2776
  br i1 %8, label %9, label %27, !dbg !2777

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2778
  %11 = load ptr, ptr %10, align 8, !dbg !2778, !tbaa !1444
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2779
  %13 = load ptr, ptr %12, align 8, !dbg !2779, !tbaa !2780
  %14 = icmp eq ptr %11, %13, !dbg !2781
  br i1 %14, label %15, label %27, !dbg !2782

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2783
  %17 = load ptr, ptr %16, align 8, !dbg !2783, !tbaa !2784
  %18 = icmp eq ptr %17, null, !dbg !2785
  br i1 %18, label %19, label %27, !dbg !2786

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !2787
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #41, !dbg !2788
  call void @llvm.dbg.value(metadata i64 %21, metadata !2770, metadata !DIExpression()), !dbg !2789
  %22 = icmp eq i64 %21, -1, !dbg !2790
  br i1 %22, label %29, label %23, !dbg !2792

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2793, !tbaa !1636
  %25 = and i32 %24, -17, !dbg !2793
  store i32 %25, ptr %0, align 8, !dbg !2793, !tbaa !1636
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2794
  store i64 %21, ptr %26, align 8, !dbg !2795, !tbaa !2796
  br label %29, !dbg !2797

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2798
  br label %29, !dbg !2799

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2773
  ret i32 %30, !dbg !2800
}

; Function Attrs: nofree nounwind
declare !dbg !2801 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @getndelim2(ptr nocapture noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #10 !dbg !2804 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2842, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata ptr %1, metadata !2843, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %2, metadata !2844, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %3, metadata !2845, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i32 %4, metadata !2846, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i32 %5, metadata !2847, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata ptr %6, metadata !2848, metadata !DIExpression()), !dbg !2876
  %9 = load ptr, ptr %0, align 8, !dbg !2877, !tbaa !1024
  call void @llvm.dbg.value(metadata ptr %9, metadata !2849, metadata !DIExpression()), !dbg !2876
  %10 = load i64, ptr %1, align 8, !dbg !2878, !tbaa !1299
  call void @llvm.dbg.value(metadata i64 %10, metadata !2850, metadata !DIExpression()), !dbg !2876
  %11 = icmp eq ptr %9, null, !dbg !2879
  br i1 %11, label %12, label %16, !dbg !2881

12:                                               ; preds = %7
  %13 = tail call i64 @llvm.umin.i64(i64 %3, i64 64), !dbg !2882
  call void @llvm.dbg.value(metadata i64 %13, metadata !2850, metadata !DIExpression()), !dbg !2876
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #48, !dbg !2884
  call void @llvm.dbg.value(metadata ptr %14, metadata !2849, metadata !DIExpression()), !dbg !2876
  %15 = icmp eq ptr %14, null, !dbg !2885
  br i1 %15, label %152, label %16, !dbg !2887

16:                                               ; preds = %12, %7
  %17 = phi i64 [ %10, %7 ], [ %13, %12 ], !dbg !2876
  %18 = phi ptr [ %9, %7 ], [ %14, %12 ], !dbg !2876
  call void @llvm.dbg.value(metadata ptr %18, metadata !2849, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %17, metadata !2850, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 -1, metadata !2851, metadata !DIExpression()), !dbg !2876
  %19 = icmp ult i64 %17, %2, !dbg !2888
  br i1 %19, label %138, label %20, !dbg !2890

20:                                               ; preds = %16
  %21 = sub i64 %17, %2, !dbg !2891
  call void @llvm.dbg.value(metadata i64 %21, metadata !2852, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata !DIArgList(ptr %18, i64 %2), metadata !2853, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2876
  %22 = icmp ne i64 %21, 0, !dbg !2892
  %23 = icmp ult i64 %17, %3
  %24 = or i1 %23, %22, !dbg !2894
  br i1 %24, label %25, label %138, !dbg !2894

25:                                               ; preds = %20
  %26 = getelementptr inbounds i8, ptr %18, i64 %2, !dbg !2895
  call void @llvm.dbg.value(metadata ptr %26, metadata !2853, metadata !DIExpression()), !dbg !2876
  %27 = icmp eq i32 %4, -1, !dbg !2896
  %28 = icmp eq i32 %5, -1, !dbg !2898
  %29 = select i1 %28, i32 %4, i32 %5, !dbg !2898
  %30 = select i1 %27, i32 %5, i32 %29, !dbg !2898
  %31 = select i1 %27, i32 %5, i32 %4, !dbg !2898
  call void @llvm.dbg.value(metadata i32 %31, metadata !2846, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i32 %30, metadata !2847, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8 0, metadata !2854, metadata !DIExpression()), !dbg !2876
  %32 = icmp eq i32 %31, -1
  %33 = getelementptr inbounds %struct._IO_FILE, ptr %6, i64 0, i32 1
  %34 = getelementptr inbounds %struct._IO_FILE, ptr %6, i64 0, i32 2
  %35 = xor i64 %2, -9223372036854775808
  br label %36, !dbg !2899

36:                                               ; preds = %133, %25
  %37 = phi i64 [ %17, %25 ], [ %111, %133 ], !dbg !2876
  %38 = phi i64 [ %21, %25 ], [ %127, %133 ], !dbg !2876
  %39 = phi ptr [ %26, %25 ], [ %128, %133 ], !dbg !2876
  %40 = phi i32 [ undef, %25 ], [ %76, %133 ]
  %41 = phi ptr [ %18, %25 ], [ %114, %133 ], !dbg !2876
  call void @llvm.dbg.value(metadata ptr %41, metadata !2849, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i32 %40, metadata !2855, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8 poison, metadata !2854, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata ptr %39, metadata !2853, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %38, metadata !2852, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %37, metadata !2850, metadata !DIExpression()), !dbg !2876
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #41, !dbg !2901
  call void @llvm.dbg.value(metadata ptr %8, metadata !2858, metadata !DIExpression(DW_OP_deref)), !dbg !2900
  %42 = call ptr @freadptr(ptr noundef %6, ptr noundef nonnull %8) #41, !dbg !2902
  call void @llvm.dbg.value(metadata ptr %42, metadata !2857, metadata !DIExpression()), !dbg !2900
  %43 = icmp eq ptr %42, null, !dbg !2903
  br i1 %43, label %54, label %44, !dbg !2904

44:                                               ; preds = %36
  %45 = load i64, ptr %8, align 8, !dbg !2900, !tbaa !1299
  br i1 %32, label %73, label %46, !dbg !2905

46:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 %45, metadata !2858, metadata !DIExpression()), !dbg !2900
  %47 = call ptr @memchr2(ptr noundef nonnull %42, i32 noundef %31, i32 noundef %30, i64 noundef %45) #42, !dbg !2906
  call void @llvm.dbg.value(metadata ptr %47, metadata !2859, metadata !DIExpression()), !dbg !2907
  %48 = icmp eq ptr %47, null, !dbg !2908
  br i1 %48, label %73, label %49, !dbg !2910

49:                                               ; preds = %46
  %50 = ptrtoint ptr %47 to i64, !dbg !2911
  %51 = ptrtoint ptr %42 to i64, !dbg !2911
  %52 = sub i64 1, %51, !dbg !2911
  %53 = add i64 %52, %50, !dbg !2913
  call void @llvm.dbg.value(metadata i64 %53, metadata !2858, metadata !DIExpression()), !dbg !2900
  store i64 %53, ptr %8, align 8, !dbg !2914, !tbaa !1299
  call void @llvm.dbg.value(metadata i8 1, metadata !2854, metadata !DIExpression()), !dbg !2876
  br label %73, !dbg !2915

54:                                               ; preds = %36
  call void @llvm.dbg.value(metadata ptr %6, metadata !2916, metadata !DIExpression()), !dbg !2921
  %55 = load ptr, ptr %33, align 8, !dbg !2924, !tbaa !1426
  %56 = load ptr, ptr %34, align 8, !dbg !2924, !tbaa !1428
  %57 = icmp ult ptr %55, %56, !dbg !2924
  br i1 %57, label %58, label %62, !dbg !2924, !prof !1429

58:                                               ; preds = %54
  %59 = getelementptr inbounds i8, ptr %55, i64 1, !dbg !2924
  store ptr %59, ptr %33, align 8, !dbg !2924, !tbaa !1426
  %60 = load i8, ptr %55, align 1, !dbg !2924, !tbaa !1110
  %61 = zext i8 %60 to i32, !dbg !2924
  call void @llvm.dbg.value(metadata i32 %61, metadata !2855, metadata !DIExpression()), !dbg !2900
  br label %68, !dbg !2925

62:                                               ; preds = %54
  %63 = call i32 @__uflow(ptr noundef nonnull %6) #41, !dbg !2924
  call void @llvm.dbg.value(metadata i32 %63, metadata !2855, metadata !DIExpression()), !dbg !2900
  %64 = icmp eq i32 %63, -1, !dbg !2926
  br i1 %64, label %65, label %68, !dbg !2925

65:                                               ; preds = %62
  %66 = icmp eq ptr %39, %41, !dbg !2928
  br i1 %66, label %134, label %67, !dbg !2931

67:                                               ; preds = %65
  call void @llvm.dbg.value(metadata ptr %41, metadata !2849, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i32 poison, metadata !2855, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8 poison, metadata !2854, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata ptr %39, metadata !2853, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 poison, metadata !2852, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %37, metadata !2850, metadata !DIExpression()), !dbg !2876
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #41, !dbg !2932
  br label %141

68:                                               ; preds = %58, %62
  %69 = phi i32 [ %61, %58 ], [ %63, %62 ]
  %70 = icmp eq i32 %69, %31, !dbg !2933
  %71 = icmp eq i32 %69, %30
  %72 = or i1 %70, %71, !dbg !2935
  call void @llvm.dbg.value(metadata i8 poison, metadata !2854, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 1, metadata !2858, metadata !DIExpression()), !dbg !2900
  store i64 1, ptr %8, align 8, !dbg !2936, !tbaa !1299
  br label %73

73:                                               ; preds = %44, %46, %49, %68
  %74 = phi i64 [ 1, %68 ], [ %53, %49 ], [ %45, %46 ], [ %45, %44 ], !dbg !2937
  %75 = phi i1 [ %72, %68 ], [ true, %49 ], [ false, %46 ], [ false, %44 ]
  %76 = phi i32 [ %69, %68 ], [ %40, %49 ], [ %40, %46 ], [ %40, %44 ]
  call void @llvm.dbg.value(metadata i32 %76, metadata !2855, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8 poison, metadata !2854, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %74, metadata !2858, metadata !DIExpression()), !dbg !2900
  %77 = add i64 %74, 1, !dbg !2938
  %78 = icmp ult i64 %38, %77, !dbg !2939
  %79 = icmp ult i64 %37, %3
  %80 = select i1 %78, i1 %79, i1 false, !dbg !2940
  br i1 %80, label %81, label %110, !dbg !2940

81:                                               ; preds = %73
  %82 = icmp ult i64 %37, 64, !dbg !2941
  %83 = add i64 %37, 64, !dbg !2942
  %84 = shl i64 %37, 1, !dbg !2942
  %85 = select i1 %82, i64 %83, i64 %84, !dbg !2942
  call void @llvm.dbg.value(metadata i64 %85, metadata !2864, metadata !DIExpression()), !dbg !2943
  %86 = ptrtoint ptr %39 to i64, !dbg !2944
  %87 = ptrtoint ptr %41 to i64, !dbg !2944
  %88 = sub i64 %86, %87, !dbg !2944
  %89 = sub i64 %85, %88, !dbg !2946
  %90 = icmp ult i64 %89, %77, !dbg !2947
  %91 = add i64 %77, %88, !dbg !2948
  %92 = select i1 %90, i64 %91, i64 %85, !dbg !2948
  call void @llvm.dbg.value(metadata i64 %92, metadata !2864, metadata !DIExpression()), !dbg !2943
  %93 = icmp uge i64 %37, %92, !dbg !2949
  %94 = icmp ugt i64 %92, %3
  %95 = or i1 %93, %94, !dbg !2951
  %96 = select i1 %95, i64 %3, i64 %92, !dbg !2951
  call void @llvm.dbg.value(metadata i64 %96, metadata !2864, metadata !DIExpression()), !dbg !2943
  %97 = sub i64 %96, %2, !dbg !2952
  %98 = icmp slt i64 %97, 0, !dbg !2953
  br i1 %98, label %99, label %101, !dbg !2954

99:                                               ; preds = %81
  call void @llvm.dbg.value(metadata i64 %35, metadata !2868, metadata !DIExpression()), !dbg !2955
  %100 = icmp eq i64 %37, %35, !dbg !2956
  call void @llvm.dbg.value(metadata i64 poison, metadata !2864, metadata !DIExpression()), !dbg !2943
  br i1 %100, label %137, label %101

101:                                              ; preds = %99, %81
  %102 = phi i64 [ %35, %99 ], [ %96, %81 ], !dbg !2958
  call void @llvm.dbg.value(metadata i64 %102, metadata !2864, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata !DIArgList(i64 %102, i64 %88), metadata !2852, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2876
  call void @llvm.dbg.value(metadata ptr %41, metadata !2959, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i64 %102, metadata !2965, metadata !DIExpression()), !dbg !2966
  %103 = icmp eq i64 %102, 0, !dbg !2968
  %104 = select i1 %103, i64 1, i64 %102, !dbg !2968
  %105 = call ptr @realloc(ptr noundef %41, i64 noundef %104) #46, !dbg !2969
  call void @llvm.dbg.value(metadata ptr %105, metadata !2867, metadata !DIExpression()), !dbg !2943
  %106 = icmp eq ptr %105, null, !dbg !2970
  br i1 %106, label %134, label %107, !dbg !2972

107:                                              ; preds = %101
  %108 = sub i64 %102, %88, !dbg !2973
  call void @llvm.dbg.value(metadata i64 %108, metadata !2852, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata ptr %105, metadata !2849, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %102, metadata !2850, metadata !DIExpression()), !dbg !2876
  %109 = getelementptr inbounds i8, ptr %105, i64 %88, !dbg !2974
  call void @llvm.dbg.value(metadata ptr %109, metadata !2853, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata !DIArgList(i64 %102, i64 %88), metadata !2852, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2876
  br label %110

110:                                              ; preds = %107, %73
  %111 = phi i64 [ %37, %73 ], [ %102, %107 ], !dbg !2876
  %112 = phi i64 [ %38, %73 ], [ %108, %107 ], !dbg !2876
  %113 = phi ptr [ %39, %73 ], [ %109, %107 ], !dbg !2876
  %114 = phi ptr [ %41, %73 ], [ %105, %107 ], !dbg !2876
  call void @llvm.dbg.value(metadata ptr %114, metadata !2849, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata ptr %113, metadata !2853, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %112, metadata !2852, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %111, metadata !2850, metadata !DIExpression()), !dbg !2876
  %115 = icmp ugt i64 %112, 1, !dbg !2975
  br i1 %115, label %116, label %126, !dbg !2976

116:                                              ; preds = %110
  %117 = add i64 %112, -1, !dbg !2977
  call void @llvm.dbg.value(metadata i64 %117, metadata !2871, metadata !DIExpression()), !dbg !2978
  %118 = load i64, ptr %8, align 8, !dbg !2979, !tbaa !1299
  call void @llvm.dbg.value(metadata i64 %118, metadata !2858, metadata !DIExpression()), !dbg !2900
  %119 = call i64 @llvm.umin.i64(i64 %118, i64 %117), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %119, metadata !2871, metadata !DIExpression()), !dbg !2978
  br i1 %43, label %121, label %120, !dbg !2982

120:                                              ; preds = %116
  call void @llvm.dbg.value(metadata ptr %113, metadata !2983, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata ptr %42, metadata !2989, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i64 %119, metadata !2990, metadata !DIExpression()), !dbg !2991
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %113, ptr noundef nonnull align 1 %42, i64 noundef %119, i1 noundef false) #41, !dbg !2994
  br label %123, !dbg !2995

121:                                              ; preds = %116
  %122 = trunc i32 %76 to i8, !dbg !2996
  store i8 %122, ptr %113, align 1, !dbg !2997, !tbaa !1110
  br label %123

123:                                              ; preds = %121, %120
  %124 = getelementptr inbounds i8, ptr %113, i64 %119, !dbg !2998
  call void @llvm.dbg.value(metadata ptr %124, metadata !2853, metadata !DIExpression()), !dbg !2876
  %125 = sub i64 %112, %119, !dbg !2999
  call void @llvm.dbg.value(metadata i64 %125, metadata !2852, metadata !DIExpression()), !dbg !2876
  br label %126, !dbg !3000

126:                                              ; preds = %123, %110
  %127 = phi i64 [ %125, %123 ], [ %112, %110 ], !dbg !2900
  %128 = phi ptr [ %124, %123 ], [ %113, %110 ], !dbg !2900
  call void @llvm.dbg.value(metadata ptr %128, metadata !2853, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %127, metadata !2852, metadata !DIExpression()), !dbg !2876
  br i1 %43, label %133, label %129, !dbg !3001

129:                                              ; preds = %126
  %130 = load i64, ptr %8, align 8, !dbg !3003, !tbaa !1299
  call void @llvm.dbg.value(metadata i64 %130, metadata !2858, metadata !DIExpression()), !dbg !2900
  %131 = call i32 @freadseek(ptr noundef %6, i64 noundef %130) #41, !dbg !3004
  %132 = icmp eq i32 %131, 0, !dbg !3004
  br i1 %132, label %133, label %134, !dbg !3005

133:                                              ; preds = %126, %129
  call void @llvm.dbg.value(metadata ptr %114, metadata !2849, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i32 %76, metadata !2855, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8 poison, metadata !2854, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata ptr %128, metadata !2853, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %127, metadata !2852, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %111, metadata !2850, metadata !DIExpression()), !dbg !2876
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #41, !dbg !2932
  br i1 %75, label %141, label %36, !dbg !3006, !llvm.loop !3007

134:                                              ; preds = %129, %101, %65
  %135 = phi i64 [ %37, %65 ], [ %37, %101 ], [ %111, %129 ]
  %136 = phi ptr [ %39, %65 ], [ %41, %101 ], [ %114, %129 ]
  call void @llvm.dbg.value(metadata ptr %136, metadata !2849, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i32 poison, metadata !2855, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8 poison, metadata !2854, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata ptr poison, metadata !2853, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 poison, metadata !2852, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %135, metadata !2850, metadata !DIExpression()), !dbg !2876
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #41, !dbg !2932
  br label %138

137:                                              ; preds = %99
  call void @llvm.dbg.value(metadata ptr %41, metadata !2849, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i32 %76, metadata !2855, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8 poison, metadata !2854, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata ptr undef, metadata !2853, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %38, metadata !2852, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %35, metadata !2850, metadata !DIExpression()), !dbg !2876
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #41, !dbg !2932
  br label %138

138:                                              ; preds = %137, %16, %20, %134
  %139 = phi i64 [ %135, %134 ], [ %17, %20 ], [ %35, %137 ], [ %17, %16 ]
  %140 = phi ptr [ %136, %134 ], [ %18, %20 ], [ %41, %137 ], [ %18, %16 ]
  call void @llvm.dbg.value(metadata ptr %140, metadata !2849, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 -1, metadata !2851, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %139, metadata !2850, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.label(metadata !2875), !dbg !3009
  store ptr %140, ptr %0, align 8, !dbg !3010, !tbaa !1024
  store i64 %139, ptr %1, align 8, !dbg !3011, !tbaa !1299
  br label %152, !dbg !3012

141:                                              ; preds = %133, %67
  %142 = phi ptr [ %41, %67 ], [ %114, %133 ]
  %143 = phi ptr [ %39, %67 ], [ %128, %133 ]
  %144 = phi i64 [ %37, %67 ], [ %111, %133 ]
  %145 = freeze ptr %142, !dbg !3013
  store i8 0, ptr %143, align 1, !dbg !3014, !tbaa !1110
  %146 = getelementptr i8, ptr %145, i64 %2, !dbg !3013
  %147 = ptrtoint ptr %143 to i64, !dbg !3015
  %148 = ptrtoint ptr %146 to i64, !dbg !3015
  %149 = sub i64 %147, %148, !dbg !3015
  call void @llvm.dbg.value(metadata ptr %142, metadata !2849, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %149, metadata !2851, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %144, metadata !2850, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.label(metadata !2875), !dbg !3009
  store ptr %145, ptr %0, align 8, !dbg !3010, !tbaa !1024
  store i64 %144, ptr %1, align 8, !dbg !3011, !tbaa !1299
  %150 = icmp eq ptr %143, %146, !dbg !3012
  %151 = select i1 %150, i64 -1, i64 %149, !dbg !3012
  br label %152, !dbg !3012

152:                                              ; preds = %141, %138, %12
  %153 = phi i64 [ -1, %12 ], [ -1, %138 ], [ %151, %141 ], !dbg !2876
  ret i64 %153, !dbg !3016
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3017 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3020 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #22 !dbg !3021 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !3023, !tbaa !1024
  ret ptr %1, !dbg !3024
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @memchr2(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #23 !dbg !3025 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3029, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 %1, metadata !3030, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 %2, metadata !3031, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64 %3, metadata !3032, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 %1, metadata !3033, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 %2, metadata !3034, metadata !DIExpression()), !dbg !3053
  %5 = and i32 %1, 255, !dbg !3054
  %6 = and i32 %2, 255, !dbg !3056
  %7 = icmp eq i32 %5, %6, !dbg !3057
  br i1 %7, label %14, label %8, !dbg !3058

8:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i64 %3, metadata !3032, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %0, metadata !3035, metadata !DIExpression()), !dbg !3053
  %9 = icmp eq i64 %3, 0, !dbg !3059
  %10 = ptrtoint ptr %0 to i64
  %11 = and i64 %10, 7
  %12 = icmp eq i64 %11, 0
  %13 = or i1 %9, %12, !dbg !3060
  br i1 %13, label %123, label %16, !dbg !3060

14:                                               ; preds = %4
  %15 = tail call ptr @memchr(ptr noundef %0, i32 noundef %5, i64 noundef %3) #42, !dbg !3061
  br label %166, !dbg !3062

16:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i64 %3, metadata !3032, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %0, metadata !3035, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %0, metadata !3036, metadata !DIExpression()), !dbg !3063
  %17 = load i8, ptr %0, align 1, !dbg !3064, !tbaa !1110
  %18 = zext i8 %17 to i32, !dbg !3064
  %19 = icmp ne i32 %5, %18, !dbg !3066
  %20 = icmp ne i32 %6, %18
  %21 = and i1 %19, %20, !dbg !3067
  call void @llvm.dbg.value(metadata ptr poison, metadata !3035, metadata !DIExpression()), !dbg !3053
  br i1 %21, label %22, label %166

22:                                               ; preds = %16
  %23 = getelementptr i8, ptr %0, i64 1, !dbg !3067
  call void @llvm.dbg.value(metadata ptr %23, metadata !3035, metadata !DIExpression()), !dbg !3053
  %24 = add i64 %3, -1, !dbg !3068
  call void @llvm.dbg.value(metadata i64 %24, metadata !3032, metadata !DIExpression()), !dbg !3053
  %25 = icmp eq i64 %24, 0, !dbg !3059
  %26 = ptrtoint ptr %23 to i64
  %27 = and i64 %26, 7
  %28 = icmp eq i64 %27, 0
  %29 = or i1 %25, %28, !dbg !3060
  br i1 %29, label %123, label %30, !dbg !3060, !llvm.loop !3069

30:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 %24, metadata !3032, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %23, metadata !3035, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %23, metadata !3036, metadata !DIExpression()), !dbg !3063
  %31 = load i8, ptr %23, align 1, !dbg !3064, !tbaa !1110
  %32 = zext i8 %31 to i32, !dbg !3064
  %33 = icmp ne i32 %5, %32, !dbg !3066
  %34 = icmp ne i32 %6, %32
  %35 = and i1 %33, %34, !dbg !3067
  call void @llvm.dbg.value(metadata ptr poison, metadata !3035, metadata !DIExpression()), !dbg !3053
  br i1 %35, label %36, label %166

36:                                               ; preds = %30
  %37 = getelementptr i8, ptr %0, i64 2, !dbg !3067
  call void @llvm.dbg.value(metadata ptr %37, metadata !3035, metadata !DIExpression()), !dbg !3053
  %38 = add i64 %3, -2, !dbg !3068
  call void @llvm.dbg.value(metadata i64 %38, metadata !3032, metadata !DIExpression()), !dbg !3053
  %39 = icmp eq i64 %38, 0, !dbg !3059
  %40 = ptrtoint ptr %37 to i64
  %41 = and i64 %40, 7
  %42 = icmp eq i64 %41, 0
  %43 = or i1 %39, %42, !dbg !3060
  br i1 %43, label %123, label %44, !dbg !3060, !llvm.loop !3069

44:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i64 %38, metadata !3032, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %37, metadata !3035, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %37, metadata !3036, metadata !DIExpression()), !dbg !3063
  %45 = load i8, ptr %37, align 1, !dbg !3064, !tbaa !1110
  %46 = zext i8 %45 to i32, !dbg !3064
  %47 = icmp ne i32 %5, %46, !dbg !3066
  %48 = icmp ne i32 %6, %46
  %49 = and i1 %47, %48, !dbg !3067
  call void @llvm.dbg.value(metadata ptr poison, metadata !3035, metadata !DIExpression()), !dbg !3053
  br i1 %49, label %50, label %166

50:                                               ; preds = %44
  %51 = getelementptr i8, ptr %0, i64 3, !dbg !3067
  call void @llvm.dbg.value(metadata ptr %51, metadata !3035, metadata !DIExpression()), !dbg !3053
  %52 = add i64 %3, -3, !dbg !3068
  call void @llvm.dbg.value(metadata i64 %52, metadata !3032, metadata !DIExpression()), !dbg !3053
  %53 = icmp eq i64 %52, 0, !dbg !3059
  %54 = ptrtoint ptr %51 to i64
  %55 = and i64 %54, 7
  %56 = icmp eq i64 %55, 0
  %57 = or i1 %53, %56, !dbg !3060
  br i1 %57, label %123, label %58, !dbg !3060, !llvm.loop !3069

58:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 %52, metadata !3032, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %51, metadata !3035, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %51, metadata !3036, metadata !DIExpression()), !dbg !3063
  %59 = load i8, ptr %51, align 1, !dbg !3064, !tbaa !1110
  %60 = zext i8 %59 to i32, !dbg !3064
  %61 = icmp ne i32 %5, %60, !dbg !3066
  %62 = icmp ne i32 %6, %60
  %63 = and i1 %61, %62, !dbg !3067
  call void @llvm.dbg.value(metadata ptr poison, metadata !3035, metadata !DIExpression()), !dbg !3053
  br i1 %63, label %64, label %166

64:                                               ; preds = %58
  %65 = getelementptr i8, ptr %0, i64 4, !dbg !3067
  call void @llvm.dbg.value(metadata ptr %65, metadata !3035, metadata !DIExpression()), !dbg !3053
  %66 = add i64 %3, -4, !dbg !3068
  call void @llvm.dbg.value(metadata i64 %66, metadata !3032, metadata !DIExpression()), !dbg !3053
  %67 = icmp eq i64 %66, 0, !dbg !3059
  %68 = ptrtoint ptr %65 to i64
  %69 = and i64 %68, 7
  %70 = icmp eq i64 %69, 0
  %71 = or i1 %67, %70, !dbg !3060
  br i1 %71, label %123, label %72, !dbg !3060, !llvm.loop !3069

72:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 %66, metadata !3032, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %65, metadata !3035, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %65, metadata !3036, metadata !DIExpression()), !dbg !3063
  %73 = load i8, ptr %65, align 1, !dbg !3064, !tbaa !1110
  %74 = zext i8 %73 to i32, !dbg !3064
  %75 = icmp ne i32 %5, %74, !dbg !3066
  %76 = icmp ne i32 %6, %74
  %77 = and i1 %75, %76, !dbg !3067
  call void @llvm.dbg.value(metadata ptr poison, metadata !3035, metadata !DIExpression()), !dbg !3053
  br i1 %77, label %78, label %166

78:                                               ; preds = %72
  %79 = getelementptr i8, ptr %0, i64 5, !dbg !3067
  call void @llvm.dbg.value(metadata ptr %79, metadata !3035, metadata !DIExpression()), !dbg !3053
  %80 = add i64 %3, -5, !dbg !3068
  call void @llvm.dbg.value(metadata i64 %80, metadata !3032, metadata !DIExpression()), !dbg !3053
  %81 = icmp eq i64 %80, 0, !dbg !3059
  %82 = ptrtoint ptr %79 to i64
  %83 = and i64 %82, 7
  %84 = icmp eq i64 %83, 0
  %85 = or i1 %81, %84, !dbg !3060
  br i1 %85, label %123, label %86, !dbg !3060, !llvm.loop !3069

86:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 %80, metadata !3032, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %79, metadata !3035, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %79, metadata !3036, metadata !DIExpression()), !dbg !3063
  %87 = load i8, ptr %79, align 1, !dbg !3064, !tbaa !1110
  %88 = zext i8 %87 to i32, !dbg !3064
  %89 = icmp ne i32 %5, %88, !dbg !3066
  %90 = icmp ne i32 %6, %88
  %91 = and i1 %89, %90, !dbg !3067
  call void @llvm.dbg.value(metadata ptr poison, metadata !3035, metadata !DIExpression()), !dbg !3053
  br i1 %91, label %92, label %166

92:                                               ; preds = %86
  %93 = getelementptr i8, ptr %0, i64 6, !dbg !3067
  call void @llvm.dbg.value(metadata ptr %93, metadata !3035, metadata !DIExpression()), !dbg !3053
  %94 = add i64 %3, -6, !dbg !3068
  call void @llvm.dbg.value(metadata i64 %94, metadata !3032, metadata !DIExpression()), !dbg !3053
  %95 = icmp eq i64 %94, 0, !dbg !3059
  %96 = ptrtoint ptr %93 to i64
  %97 = and i64 %96, 7
  %98 = icmp eq i64 %97, 0
  %99 = or i1 %95, %98, !dbg !3060
  br i1 %99, label %123, label %100, !dbg !3060, !llvm.loop !3069

100:                                              ; preds = %92
  call void @llvm.dbg.value(metadata i64 %94, metadata !3032, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %93, metadata !3035, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %93, metadata !3036, metadata !DIExpression()), !dbg !3063
  %101 = load i8, ptr %93, align 1, !dbg !3064, !tbaa !1110
  %102 = zext i8 %101 to i32, !dbg !3064
  %103 = icmp ne i32 %5, %102, !dbg !3066
  %104 = icmp ne i32 %6, %102
  %105 = and i1 %103, %104, !dbg !3067
  call void @llvm.dbg.value(metadata ptr poison, metadata !3035, metadata !DIExpression()), !dbg !3053
  br i1 %105, label %106, label %166

106:                                              ; preds = %100
  %107 = getelementptr i8, ptr %0, i64 7, !dbg !3067
  call void @llvm.dbg.value(metadata ptr %107, metadata !3035, metadata !DIExpression()), !dbg !3053
  %108 = add i64 %3, -7, !dbg !3068
  call void @llvm.dbg.value(metadata i64 %108, metadata !3032, metadata !DIExpression()), !dbg !3053
  %109 = icmp eq i64 %108, 0, !dbg !3059
  %110 = ptrtoint ptr %107 to i64
  %111 = and i64 %110, 7
  %112 = icmp eq i64 %111, 0
  %113 = or i1 %109, %112, !dbg !3060
  br i1 %113, label %123, label %114, !dbg !3060, !llvm.loop !3069

114:                                              ; preds = %106
  call void @llvm.dbg.value(metadata i64 %108, metadata !3032, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %107, metadata !3035, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %107, metadata !3036, metadata !DIExpression()), !dbg !3063
  %115 = load i8, ptr %107, align 1, !dbg !3064, !tbaa !1110
  %116 = zext i8 %115 to i32, !dbg !3064
  %117 = icmp ne i32 %5, %116, !dbg !3066
  %118 = icmp ne i32 %6, %116
  %119 = and i1 %117, %118, !dbg !3067
  call void @llvm.dbg.value(metadata ptr poison, metadata !3035, metadata !DIExpression()), !dbg !3053
  br i1 %119, label %120, label %166

120:                                              ; preds = %114
  %121 = getelementptr i8, ptr %0, i64 8, !dbg !3067
  call void @llvm.dbg.value(metadata ptr %121, metadata !3035, metadata !DIExpression()), !dbg !3053
  %122 = add i64 %3, -8, !dbg !3068
  call void @llvm.dbg.value(metadata i64 %122, metadata !3032, metadata !DIExpression()), !dbg !3053
  br label %123

123:                                              ; preds = %22, %36, %50, %64, %78, %92, %106, %120, %8
  %124 = phi ptr [ %0, %8 ], [ %23, %22 ], [ %37, %36 ], [ %51, %50 ], [ %65, %64 ], [ %79, %78 ], [ %93, %92 ], [ %107, %106 ], [ %121, %120 ], !dbg !3072
  %125 = phi i64 [ %3, %8 ], [ %24, %22 ], [ %38, %36 ], [ %52, %50 ], [ %66, %64 ], [ %80, %78 ], [ %94, %92 ], [ %108, %106 ], [ %122, %120 ]
  call void @llvm.dbg.value(metadata ptr %124, metadata !3040, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64 16843009, metadata !3044, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i32 %5, metadata !3046, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3073
  call void @llvm.dbg.value(metadata i32 %6, metadata !3047, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3073
  %126 = mul nuw i32 %5, 16843009, !dbg !3074
  %127 = zext i32 %126 to i64, !dbg !3074
  call void @llvm.dbg.value(metadata i64 %127, metadata !3046, metadata !DIExpression()), !dbg !3073
  %128 = mul nuw i32 %6, 16843009, !dbg !3075
  %129 = zext i32 %128 to i64, !dbg !3075
  call void @llvm.dbg.value(metadata i64 %129, metadata !3047, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 72340172838076673, metadata !3044, metadata !DIExpression()), !dbg !3073
  %130 = mul nuw i64 %127, 4294967297, !dbg !3076
  call void @llvm.dbg.value(metadata i64 %130, metadata !3046, metadata !DIExpression()), !dbg !3073
  %131 = mul nuw i64 %129, 4294967297, !dbg !3079
  call void @llvm.dbg.value(metadata i64 %131, metadata !3047, metadata !DIExpression()), !dbg !3073
  br label %132, !dbg !3080

132:                                              ; preds = %136, %123
  %133 = phi ptr [ %124, %123 ], [ %149, %136 ], !dbg !3081
  %134 = phi i64 [ %125, %123 ], [ %150, %136 ]
  call void @llvm.dbg.value(metadata i64 %134, metadata !3032, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %133, metadata !3040, metadata !DIExpression()), !dbg !3053
  %135 = icmp ugt i64 %134, 7, !dbg !3082
  br i1 %135, label %136, label %151, !dbg !3080

136:                                              ; preds = %132
  %137 = load i64, ptr %133, align 8, !dbg !3083, !tbaa !1299
  %138 = xor i64 %137, %130, !dbg !3084
  call void @llvm.dbg.value(metadata i64 %138, metadata !3048, metadata !DIExpression()), !dbg !3085
  %139 = xor i64 %137, %131, !dbg !3086
  call void @llvm.dbg.value(metadata i64 %139, metadata !3050, metadata !DIExpression()), !dbg !3085
  %140 = add i64 %138, -72340172838076673, !dbg !3087
  %141 = xor i64 %138, -1, !dbg !3089
  %142 = and i64 %140, %141, !dbg !3090
  %143 = add i64 %139, -72340172838076673, !dbg !3091
  %144 = xor i64 %139, -1, !dbg !3092
  %145 = and i64 %143, %144, !dbg !3093
  %146 = or i64 %142, %145, !dbg !3094
  %147 = and i64 %146, -9187201950435737472, !dbg !3095
  %148 = icmp eq i64 %147, 0, !dbg !3096
  %149 = getelementptr inbounds i64, ptr %133, i64 1, !dbg !3097
  %150 = add i64 %134, -8, !dbg !3097
  call void @llvm.dbg.value(metadata i64 poison, metadata !3032, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr poison, metadata !3040, metadata !DIExpression()), !dbg !3053
  br i1 %148, label %132, label %153

151:                                              ; preds = %132
  call void @llvm.dbg.value(metadata i64 %134, metadata !3032, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %133, metadata !3040, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %133, metadata !3051, metadata !DIExpression()), !dbg !3098
  %152 = icmp eq i64 %134, 0, !dbg !3099
  br i1 %152, label %166, label %153, !dbg !3102

153:                                              ; preds = %136, %151
  br label %154, !dbg !3102

154:                                              ; preds = %153, %162
  %155 = phi ptr [ %164, %162 ], [ %133, %153 ]
  %156 = phi i64 [ %163, %162 ], [ %134, %153 ]
  call void @llvm.dbg.value(metadata ptr %155, metadata !3051, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64 %156, metadata !3032, metadata !DIExpression()), !dbg !3053
  %157 = load i8, ptr %155, align 1, !dbg !3103, !tbaa !1110
  %158 = zext i8 %157 to i32, !dbg !3103
  %159 = icmp eq i32 %5, %158, !dbg !3106
  %160 = icmp eq i32 %6, %158
  %161 = or i1 %159, %160, !dbg !3107
  br i1 %161, label %166, label %162, !dbg !3107

162:                                              ; preds = %154
  %163 = add i64 %156, -1, !dbg !3108
  call void @llvm.dbg.value(metadata i64 %163, metadata !3032, metadata !DIExpression()), !dbg !3053
  %164 = getelementptr inbounds i8, ptr %155, i64 1, !dbg !3109
  call void @llvm.dbg.value(metadata ptr %164, metadata !3051, metadata !DIExpression()), !dbg !3098
  %165 = icmp eq i64 %163, 0, !dbg !3099
  br i1 %165, label %166, label %154, !dbg !3102, !llvm.loop !3110

166:                                              ; preds = %16, %30, %44, %58, %72, %86, %100, %114, %162, %154, %151, %14
  %167 = phi ptr [ %15, %14 ], [ null, %151 ], [ null, %162 ], [ %155, %154 ], [ %0, %16 ], [ %23, %30 ], [ %37, %44 ], [ %51, %58 ], [ %65, %72 ], [ %79, %86 ], [ %93, %100 ], [ %107, %114 ], !dbg !3053
  ret ptr %167, !dbg !3112
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3113 ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #24 !dbg !3116 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3118, metadata !DIExpression()), !dbg !3121
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #42, !dbg !3122
  call void @llvm.dbg.value(metadata ptr %2, metadata !3119, metadata !DIExpression()), !dbg !3121
  %3 = icmp eq ptr %2, null, !dbg !3123
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !3123
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !3123
  call void @llvm.dbg.value(metadata ptr %5, metadata !3120, metadata !DIExpression()), !dbg !3121
  %6 = ptrtoint ptr %5 to i64, !dbg !3124
  %7 = ptrtoint ptr %0 to i64, !dbg !3124
  %8 = sub i64 %6, %7, !dbg !3124
  %9 = icmp sgt i64 %8, 6, !dbg !3126
  br i1 %9, label %10, label %19, !dbg !3127

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !3128
  call void @llvm.dbg.value(metadata ptr %11, metadata !3129, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata ptr @.str.118, metadata !3134, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i64 7, metadata !3135, metadata !DIExpression()), !dbg !3136
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.118, i64 7), !dbg !3138
  %13 = icmp eq i32 %12, 0, !dbg !3139
  br i1 %13, label %14, label %19, !dbg !3140

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !3118, metadata !DIExpression()), !dbg !3121
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.119, i64 noundef 3) #42, !dbg !3141
  %16 = icmp eq i32 %15, 0, !dbg !3144
  %17 = select i1 %16, i64 3, i64 0, !dbg !3145
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !3145
  br label %19, !dbg !3145

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !3121
  call void @llvm.dbg.value(metadata ptr %21, metadata !3120, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata ptr %20, metadata !3118, metadata !DIExpression()), !dbg !3121
  store ptr %20, ptr @program_name, align 8, !dbg !3146, !tbaa !1024
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !3147, !tbaa !1024
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !3148, !tbaa !1024
  ret void, !dbg !3149
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3150 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #25

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !682 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !689, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata ptr %1, metadata !690, metadata !DIExpression()), !dbg !3151
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #41, !dbg !3152
  call void @llvm.dbg.value(metadata ptr %5, metadata !691, metadata !DIExpression()), !dbg !3151
  %6 = icmp eq ptr %5, %0, !dbg !3153
  br i1 %6, label %7, label %14, !dbg !3155

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #41, !dbg !3156
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #41, !dbg !3157
  call void @llvm.dbg.declare(metadata ptr %4, metadata !697, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata ptr %4, metadata !3159, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata ptr %4, metadata !3168, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i32 0, metadata !3173, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 8, metadata !3174, metadata !DIExpression()), !dbg !3175
  store i64 0, ptr %4, align 8, !dbg !3177
  call void @llvm.dbg.value(metadata ptr %3, metadata !692, metadata !DIExpression(DW_OP_deref)), !dbg !3151
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #41, !dbg !3178
  %9 = icmp eq i64 %8, 2, !dbg !3180
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !692, metadata !DIExpression()), !dbg !3151
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !3181
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !3151
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #41, !dbg !3182
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #41, !dbg !3182
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !3151
  ret ptr %15, !dbg !3182
}

; Function Attrs: nounwind
declare !dbg !3183 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !3189 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3194, metadata !DIExpression()), !dbg !3197
  %2 = tail call ptr @__errno_location() #44, !dbg !3198
  %3 = load i32, ptr %2, align 4, !dbg !3198, !tbaa !1101
  call void @llvm.dbg.value(metadata i32 %3, metadata !3195, metadata !DIExpression()), !dbg !3197
  %4 = icmp eq ptr %0, null, !dbg !3199
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3199
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #46, !dbg !3200
  call void @llvm.dbg.value(metadata ptr %6, metadata !3196, metadata !DIExpression()), !dbg !3197
  store i32 %3, ptr %2, align 4, !dbg !3201, !tbaa !1101
  ret ptr %6, !dbg !3202
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #26 !dbg !3203 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3209, metadata !DIExpression()), !dbg !3210
  %2 = icmp eq ptr %0, null, !dbg !3211
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !3211
  %4 = load i32, ptr %3, align 8, !dbg !3212, !tbaa !3213
  ret i32 %4, !dbg !3215
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #27 !dbg !3216 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3220, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i32 %1, metadata !3221, metadata !DIExpression()), !dbg !3222
  %3 = icmp eq ptr %0, null, !dbg !3223
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3223
  store i32 %1, ptr %4, align 8, !dbg !3224, !tbaa !3213
  ret void, !dbg !3225
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #28 !dbg !3226 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3230, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 %1, metadata !3231, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i32 %2, metadata !3232, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 %1, metadata !3233, metadata !DIExpression()), !dbg !3238
  %4 = icmp eq ptr %0, null, !dbg !3239
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3239
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3240
  %7 = lshr i8 %1, 5, !dbg !3241
  %8 = zext i8 %7 to i64, !dbg !3241
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !3242
  call void @llvm.dbg.value(metadata ptr %9, metadata !3234, metadata !DIExpression()), !dbg !3238
  %10 = and i8 %1, 31, !dbg !3243
  %11 = zext i8 %10 to i32, !dbg !3243
  call void @llvm.dbg.value(metadata i32 %11, metadata !3236, metadata !DIExpression()), !dbg !3238
  %12 = load i32, ptr %9, align 4, !dbg !3244, !tbaa !1101
  %13 = lshr i32 %12, %11, !dbg !3245
  %14 = and i32 %13, 1, !dbg !3246
  call void @llvm.dbg.value(metadata i32 %14, metadata !3237, metadata !DIExpression()), !dbg !3238
  %15 = xor i32 %13, %2, !dbg !3247
  %16 = and i32 %15, 1, !dbg !3247
  %17 = shl nuw i32 %16, %11, !dbg !3248
  %18 = xor i32 %17, %12, !dbg !3249
  store i32 %18, ptr %9, align 4, !dbg !3249, !tbaa !1101
  ret i32 %14, !dbg !3250
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #28 !dbg !3251 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3255, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i32 %1, metadata !3256, metadata !DIExpression()), !dbg !3258
  %3 = icmp eq ptr %0, null, !dbg !3259
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3261
  call void @llvm.dbg.value(metadata ptr %4, metadata !3255, metadata !DIExpression()), !dbg !3258
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !3262
  %6 = load i32, ptr %5, align 4, !dbg !3262, !tbaa !3263
  call void @llvm.dbg.value(metadata i32 %6, metadata !3257, metadata !DIExpression()), !dbg !3258
  store i32 %1, ptr %5, align 4, !dbg !3264, !tbaa !3263
  ret i32 %6, !dbg !3265
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3266 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3270, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata ptr %1, metadata !3271, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata ptr %2, metadata !3272, metadata !DIExpression()), !dbg !3273
  %4 = icmp eq ptr %0, null, !dbg !3274
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3276
  call void @llvm.dbg.value(metadata ptr %5, metadata !3270, metadata !DIExpression()), !dbg !3273
  store i32 10, ptr %5, align 8, !dbg !3277, !tbaa !3213
  %6 = icmp ne ptr %1, null, !dbg !3278
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3280
  br i1 %8, label %10, label %9, !dbg !3280

9:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3281
  unreachable, !dbg !3281

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3282
  store ptr %1, ptr %11, align 8, !dbg !3283, !tbaa !3284
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3285
  store ptr %2, ptr %12, align 8, !dbg !3286, !tbaa !3287
  ret void, !dbg !3288
}

; Function Attrs: noreturn nounwind
declare !dbg !3289 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !3290 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3294, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %1, metadata !3295, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata ptr %2, metadata !3296, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %3, metadata !3297, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata ptr %4, metadata !3298, metadata !DIExpression()), !dbg !3302
  %6 = icmp eq ptr %4, null, !dbg !3303
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !3303
  call void @llvm.dbg.value(metadata ptr %7, metadata !3299, metadata !DIExpression()), !dbg !3302
  %8 = tail call ptr @__errno_location() #44, !dbg !3304
  %9 = load i32, ptr %8, align 4, !dbg !3304, !tbaa !1101
  call void @llvm.dbg.value(metadata i32 %9, metadata !3300, metadata !DIExpression()), !dbg !3302
  %10 = load i32, ptr %7, align 8, !dbg !3305, !tbaa !3213
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !3306
  %12 = load i32, ptr %11, align 4, !dbg !3306, !tbaa !3263
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !3307
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !3308
  %15 = load ptr, ptr %14, align 8, !dbg !3308, !tbaa !3284
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !3309
  %17 = load ptr, ptr %16, align 8, !dbg !3309, !tbaa !3287
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %18, metadata !3301, metadata !DIExpression()), !dbg !3302
  store i32 %9, ptr %8, align 4, !dbg !3311, !tbaa !1101
  ret i64 %18, !dbg !3312
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !3313 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !3319, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %1, metadata !3320, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata ptr %2, metadata !3321, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %3, metadata !3322, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i32 %4, metadata !3323, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i32 %5, metadata !3324, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata ptr %6, metadata !3325, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata ptr %7, metadata !3326, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata ptr %8, metadata !3327, metadata !DIExpression()), !dbg !3381
  %16 = tail call i64 @__ctype_get_mb_cur_max() #41, !dbg !3382
  %17 = icmp eq i64 %16, 1, !dbg !3383
  call void @llvm.dbg.value(metadata i1 %17, metadata !3328, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3381
  call void @llvm.dbg.value(metadata i64 0, metadata !3329, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 0, metadata !3330, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata ptr null, metadata !3331, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 0, metadata !3332, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 0, metadata !3333, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i32 %5, metadata !3334, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3381
  call void @llvm.dbg.value(metadata i8 0, metadata !3335, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 1, metadata !3336, metadata !DIExpression()), !dbg !3381
  %18 = and i32 %5, 2, !dbg !3384
  %19 = icmp ne i32 %18, 0, !dbg !3384
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !3384

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !3385
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !3386
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !3387
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !3320, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 poison, metadata !3336, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 poison, metadata !3335, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 poison, metadata !3334, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 poison, metadata !3333, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %34, metadata !3332, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata ptr %33, metadata !3331, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %32, metadata !3330, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 0, metadata !3329, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %31, metadata !3322, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata ptr %30, metadata !3327, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata ptr %29, metadata !3326, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i32 %28, metadata !3323, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.label(metadata !3374), !dbg !3388
  call void @llvm.dbg.value(metadata i8 0, metadata !3337, metadata !DIExpression()), !dbg !3381
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
  ], !dbg !3389

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !3334, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i32 5, metadata !3323, metadata !DIExpression()), !dbg !3381
  br label %102, !dbg !3390

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !3334, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i32 5, metadata !3323, metadata !DIExpression()), !dbg !3381
  br i1 %36, label %102, label %42, !dbg !3390

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !3391
  br i1 %43, label %102, label %44, !dbg !3395

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !3391, !tbaa !1110
  br label %102, !dbg !3391

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.132, metadata !778, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i32 %28, metadata !779, metadata !DIExpression()), !dbg !3396
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.133, ptr noundef nonnull @.str.11.132, i32 noundef 5) #41, !dbg !3400
  call void @llvm.dbg.value(metadata ptr %46, metadata !780, metadata !DIExpression()), !dbg !3396
  %47 = icmp eq ptr %46, @.str.11.132, !dbg !3401
  br i1 %47, label %48, label %57, !dbg !3403

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #41, !dbg !3404
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #41, !dbg !3405
  call void @llvm.dbg.declare(metadata ptr %13, metadata !782, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata ptr %13, metadata !3407, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata ptr %13, metadata !3415, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i32 0, metadata !3418, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i64 8, metadata !3419, metadata !DIExpression()), !dbg !3420
  store i64 0, ptr %13, align 8, !dbg !3422
  call void @llvm.dbg.value(metadata ptr %12, metadata !781, metadata !DIExpression(DW_OP_deref)), !dbg !3396
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #41, !dbg !3423
  %50 = icmp eq i64 %49, 3, !dbg !3425
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !781, metadata !DIExpression()), !dbg !3396
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !3426
  %54 = icmp eq i32 %28, 9, !dbg !3426
  %55 = select i1 %54, ptr @.str.10.134, ptr @.str.12.135, !dbg !3426
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !3426
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #41, !dbg !3427
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #41, !dbg !3427
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !3396
  call void @llvm.dbg.value(metadata ptr %58, metadata !3326, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata ptr @.str.12.135, metadata !778, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i32 %28, metadata !779, metadata !DIExpression()), !dbg !3428
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.133, ptr noundef nonnull @.str.12.135, i32 noundef 5) #41, !dbg !3430
  call void @llvm.dbg.value(metadata ptr %59, metadata !780, metadata !DIExpression()), !dbg !3428
  %60 = icmp eq ptr %59, @.str.12.135, !dbg !3431
  br i1 %60, label %61, label %70, !dbg !3432

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #41, !dbg !3433
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #41, !dbg !3434
  call void @llvm.dbg.declare(metadata ptr %11, metadata !782, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata ptr %11, metadata !3407, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata ptr %11, metadata !3415, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i32 0, metadata !3418, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i64 8, metadata !3419, metadata !DIExpression()), !dbg !3438
  store i64 0, ptr %11, align 8, !dbg !3440
  call void @llvm.dbg.value(metadata ptr %10, metadata !781, metadata !DIExpression(DW_OP_deref)), !dbg !3428
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #41, !dbg !3441
  %63 = icmp eq i64 %62, 3, !dbg !3442
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !781, metadata !DIExpression()), !dbg !3428
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !3443
  %67 = icmp eq i32 %28, 9, !dbg !3443
  %68 = select i1 %67, ptr @.str.10.134, ptr @.str.12.135, !dbg !3443
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !3443
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #41, !dbg !3444
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #41, !dbg !3444
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !3327, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata ptr %71, metadata !3326, metadata !DIExpression()), !dbg !3381
  br i1 %36, label %88, label %73, !dbg !3445

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !3338, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 0, metadata !3329, metadata !DIExpression()), !dbg !3381
  %74 = load i8, ptr %71, align 1, !dbg !3447, !tbaa !1110
  %75 = icmp eq i8 %74, 0, !dbg !3449
  br i1 %75, label %88, label %76, !dbg !3449

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !3338, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 %79, metadata !3329, metadata !DIExpression()), !dbg !3381
  %80 = icmp ult i64 %79, %39, !dbg !3450
  br i1 %80, label %81, label %83, !dbg !3453

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !3450
  store i8 %77, ptr %82, align 1, !dbg !3450, !tbaa !1110
  br label %83, !dbg !3450

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !3453
  call void @llvm.dbg.value(metadata i64 %84, metadata !3329, metadata !DIExpression()), !dbg !3381
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !3454
  call void @llvm.dbg.value(metadata ptr %85, metadata !3338, metadata !DIExpression()), !dbg !3446
  %86 = load i8, ptr %85, align 1, !dbg !3447, !tbaa !1110
  %87 = icmp eq i8 %86, 0, !dbg !3449
  br i1 %87, label %88, label %76, !dbg !3449, !llvm.loop !3455

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !3457
  call void @llvm.dbg.value(metadata i64 %89, metadata !3329, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 1, metadata !3333, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata ptr %72, metadata !3331, metadata !DIExpression()), !dbg !3381
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #42, !dbg !3458
  call void @llvm.dbg.value(metadata i64 %90, metadata !3332, metadata !DIExpression()), !dbg !3381
  br label %102, !dbg !3459

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !3333, metadata !DIExpression()), !dbg !3381
  br label %93, !dbg !3460

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !3334, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 poison, metadata !3333, metadata !DIExpression()), !dbg !3381
  br i1 %36, label %102, label %96, !dbg !3461

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3334, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 poison, metadata !3333, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i32 2, metadata !3323, metadata !DIExpression()), !dbg !3381
  br label %102, !dbg !3462

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !3334, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 poison, metadata !3333, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i32 2, metadata !3323, metadata !DIExpression()), !dbg !3381
  br i1 %36, label %102, label %96, !dbg !3462

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !3463
  br i1 %98, label %102, label %99, !dbg !3467

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !3463, !tbaa !1110
  br label %102, !dbg !3463

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !3334, metadata !DIExpression()), !dbg !3381
  br label %102, !dbg !3468

101:                                              ; preds = %27
  call void @abort() #43, !dbg !3469
  unreachable, !dbg !3469

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !3457
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.134, %42 ], [ @.str.10.134, %44 ], [ @.str.10.134, %41 ], [ %33, %27 ], [ @.str.12.135, %96 ], [ @.str.12.135, %99 ], [ @.str.12.135, %95 ], [ @.str.10.134, %40 ], [ @.str.12.135, %93 ], [ @.str.12.135, %92 ], !dbg !3381
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !3381
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3334, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 poison, metadata !3333, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %108, metadata !3332, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata ptr %107, metadata !3331, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %106, metadata !3329, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata ptr %105, metadata !3327, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata ptr %104, metadata !3326, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i32 %103, metadata !3323, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 0, metadata !3343, metadata !DIExpression()), !dbg !3470
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
  br label %122, !dbg !3471

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !3457
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !3385
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !3472
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !3320, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %129, metadata !3343, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i8 poison, metadata !3337, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 poison, metadata !3336, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 poison, metadata !3335, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %125, metadata !3330, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %124, metadata !3329, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %123, metadata !3322, metadata !DIExpression()), !dbg !3381
  %131 = icmp eq i64 %123, -1, !dbg !3473
  br i1 %131, label %132, label %136, !dbg !3474

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3475
  %134 = load i8, ptr %133, align 1, !dbg !3475, !tbaa !1110
  %135 = icmp eq i8 %134, 0, !dbg !3476
  br i1 %135, label %579, label %138, !dbg !3477

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !3478
  br i1 %137, label %579, label %138, !dbg !3477

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !3345, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i8 0, metadata !3348, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i8 0, metadata !3349, metadata !DIExpression()), !dbg !3479
  br i1 %114, label %139, label %152, !dbg !3480

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !3482
  %141 = select i1 %131, i1 %115, i1 false, !dbg !3483
  br i1 %141, label %142, label %144, !dbg !3483

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !3484
  call void @llvm.dbg.value(metadata i64 %143, metadata !3322, metadata !DIExpression()), !dbg !3381
  br label %144, !dbg !3485

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !3485
  call void @llvm.dbg.value(metadata i64 %145, metadata !3322, metadata !DIExpression()), !dbg !3381
  %146 = icmp ugt i64 %140, %145, !dbg !3486
  br i1 %146, label %152, label %147, !dbg !3487

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3488
  call void @llvm.dbg.value(metadata ptr %148, metadata !3489, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata ptr %107, metadata !3492, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i64 %108, metadata !3493, metadata !DIExpression()), !dbg !3494
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !3496
  %150 = icmp eq i32 %149, 0, !dbg !3497
  %151 = and i1 %150, %110, !dbg !3498
  br i1 %151, label %630, label %152, !dbg !3498

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3345, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i64 %153, metadata !3322, metadata !DIExpression()), !dbg !3381
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3499
  %156 = load i8, ptr %155, align 1, !dbg !3499, !tbaa !1110
  call void @llvm.dbg.value(metadata i8 %156, metadata !3350, metadata !DIExpression()), !dbg !3479
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
  ], !dbg !3500

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !3501

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !3502

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !3348, metadata !DIExpression()), !dbg !3479
  %160 = select i1 %111, i1 true, i1 %128, !dbg !3506
  br i1 %160, label %177, label %161, !dbg !3506

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !3508
  br i1 %162, label %163, label %165, !dbg !3512

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3508
  store i8 39, ptr %164, align 1, !dbg !3508, !tbaa !1110
  br label %165, !dbg !3508

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !3512
  call void @llvm.dbg.value(metadata i64 %166, metadata !3329, metadata !DIExpression()), !dbg !3381
  %167 = icmp ult i64 %166, %130, !dbg !3513
  br i1 %167, label %168, label %170, !dbg !3516

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !3513
  store i8 36, ptr %169, align 1, !dbg !3513, !tbaa !1110
  br label %170, !dbg !3513

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !3516
  call void @llvm.dbg.value(metadata i64 %171, metadata !3329, metadata !DIExpression()), !dbg !3381
  %172 = icmp ult i64 %171, %130, !dbg !3517
  br i1 %172, label %173, label %175, !dbg !3520

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !3517
  store i8 39, ptr %174, align 1, !dbg !3517, !tbaa !1110
  br label %175, !dbg !3517

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !3520
  call void @llvm.dbg.value(metadata i64 %176, metadata !3329, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 1, metadata !3337, metadata !DIExpression()), !dbg !3381
  br label %177, !dbg !3521

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !3381
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3337, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %178, metadata !3329, metadata !DIExpression()), !dbg !3381
  %180 = icmp ult i64 %178, %130, !dbg !3522
  br i1 %180, label %181, label %183, !dbg !3525

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !3522
  store i8 92, ptr %182, align 1, !dbg !3522, !tbaa !1110
  br label %183, !dbg !3522

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !3525
  call void @llvm.dbg.value(metadata i64 %184, metadata !3329, metadata !DIExpression()), !dbg !3381
  br i1 %111, label %185, label %482, !dbg !3526

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !3528
  %187 = icmp ult i64 %186, %153, !dbg !3529
  br i1 %187, label %188, label %439, !dbg !3530

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !3531
  %190 = load i8, ptr %189, align 1, !dbg !3531, !tbaa !1110
  %191 = add i8 %190, -48, !dbg !3532
  %192 = icmp ult i8 %191, 10, !dbg !3532
  br i1 %192, label %193, label %439, !dbg !3532

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !3533
  br i1 %194, label %195, label %197, !dbg !3537

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !3533
  store i8 48, ptr %196, align 1, !dbg !3533, !tbaa !1110
  br label %197, !dbg !3533

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !3537
  call void @llvm.dbg.value(metadata i64 %198, metadata !3329, metadata !DIExpression()), !dbg !3381
  %199 = icmp ult i64 %198, %130, !dbg !3538
  br i1 %199, label %200, label %202, !dbg !3541

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !3538
  store i8 48, ptr %201, align 1, !dbg !3538, !tbaa !1110
  br label %202, !dbg !3538

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !3541
  call void @llvm.dbg.value(metadata i64 %203, metadata !3329, metadata !DIExpression()), !dbg !3381
  br label %439, !dbg !3542

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !3543

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !3544

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !3545

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !3547

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !3549
  %210 = icmp ult i64 %209, %153, !dbg !3550
  br i1 %210, label %211, label %439, !dbg !3551

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !3552
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !3553
  %214 = load i8, ptr %213, align 1, !dbg !3553, !tbaa !1110
  %215 = icmp eq i8 %214, 63, !dbg !3554
  br i1 %215, label %216, label %439, !dbg !3555

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !3556
  %218 = load i8, ptr %217, align 1, !dbg !3556, !tbaa !1110
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
  ], !dbg !3557

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !3558

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !3350, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i64 %209, metadata !3343, metadata !DIExpression()), !dbg !3470
  %221 = icmp ult i64 %124, %130, !dbg !3560
  br i1 %221, label %222, label %224, !dbg !3563

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3560
  store i8 63, ptr %223, align 1, !dbg !3560, !tbaa !1110
  br label %224, !dbg !3560

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !3563
  call void @llvm.dbg.value(metadata i64 %225, metadata !3329, metadata !DIExpression()), !dbg !3381
  %226 = icmp ult i64 %225, %130, !dbg !3564
  br i1 %226, label %227, label %229, !dbg !3567

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !3564
  store i8 34, ptr %228, align 1, !dbg !3564, !tbaa !1110
  br label %229, !dbg !3564

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !3567
  call void @llvm.dbg.value(metadata i64 %230, metadata !3329, metadata !DIExpression()), !dbg !3381
  %231 = icmp ult i64 %230, %130, !dbg !3568
  br i1 %231, label %232, label %234, !dbg !3571

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !3568
  store i8 34, ptr %233, align 1, !dbg !3568, !tbaa !1110
  br label %234, !dbg !3568

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !3571
  call void @llvm.dbg.value(metadata i64 %235, metadata !3329, metadata !DIExpression()), !dbg !3381
  %236 = icmp ult i64 %235, %130, !dbg !3572
  br i1 %236, label %237, label %239, !dbg !3575

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !3572
  store i8 63, ptr %238, align 1, !dbg !3572, !tbaa !1110
  br label %239, !dbg !3572

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !3575
  call void @llvm.dbg.value(metadata i64 %240, metadata !3329, metadata !DIExpression()), !dbg !3381
  br label %439, !dbg !3576

241:                                              ; preds = %152
  br label %251, !dbg !3577

242:                                              ; preds = %152
  br label %251, !dbg !3578

243:                                              ; preds = %152
  br label %249, !dbg !3579

244:                                              ; preds = %152
  br label %249, !dbg !3580

245:                                              ; preds = %152
  br label %251, !dbg !3581

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !3582

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !3583

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !3586

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !3588
  call void @llvm.dbg.label(metadata !3375), !dbg !3589
  br i1 %119, label %621, label %251, !dbg !3590

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !3588
  call void @llvm.dbg.label(metadata !3377), !dbg !3592
  br i1 %109, label %493, label %450, !dbg !3593

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !3594

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !3595, !tbaa !1110
  %256 = icmp eq i8 %255, 0, !dbg !3597
  br i1 %256, label %257, label %439, !dbg !3598

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !3599
  br i1 %258, label %259, label %439, !dbg !3601

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !3349, metadata !DIExpression()), !dbg !3479
  br label %260, !dbg !3602

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3349, metadata !DIExpression()), !dbg !3479
  br i1 %116, label %262, label %439, !dbg !3603

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !3605

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !3335, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 1, metadata !3349, metadata !DIExpression()), !dbg !3479
  br i1 %116, label %264, label %439, !dbg !3606

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !3607

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !3610
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !3612
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !3612
  %270 = select i1 %268, i64 %130, i64 0, !dbg !3612
  call void @llvm.dbg.value(metadata i64 %270, metadata !3320, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %269, metadata !3330, metadata !DIExpression()), !dbg !3381
  %271 = icmp ult i64 %124, %270, !dbg !3613
  br i1 %271, label %272, label %274, !dbg !3616

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3613
  store i8 39, ptr %273, align 1, !dbg !3613, !tbaa !1110
  br label %274, !dbg !3613

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !3616
  call void @llvm.dbg.value(metadata i64 %275, metadata !3329, metadata !DIExpression()), !dbg !3381
  %276 = icmp ult i64 %275, %270, !dbg !3617
  br i1 %276, label %277, label %279, !dbg !3620

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !3617
  store i8 92, ptr %278, align 1, !dbg !3617, !tbaa !1110
  br label %279, !dbg !3617

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !3620
  call void @llvm.dbg.value(metadata i64 %280, metadata !3329, metadata !DIExpression()), !dbg !3381
  %281 = icmp ult i64 %280, %270, !dbg !3621
  br i1 %281, label %282, label %284, !dbg !3624

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !3621
  store i8 39, ptr %283, align 1, !dbg !3621, !tbaa !1110
  br label %284, !dbg !3621

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !3624
  call void @llvm.dbg.value(metadata i64 %285, metadata !3329, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 0, metadata !3337, metadata !DIExpression()), !dbg !3381
  br label %439, !dbg !3625

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !3626

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !3351, metadata !DIExpression()), !dbg !3627
  %288 = tail call ptr @__ctype_b_loc() #44, !dbg !3628
  %289 = load ptr, ptr %288, align 8, !dbg !3628, !tbaa !1024
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !3628
  %292 = load i16, ptr %291, align 2, !dbg !3628, !tbaa !1142
  %293 = and i16 %292, 16384, !dbg !3628
  %294 = icmp ne i16 %293, 0, !dbg !3630
  call void @llvm.dbg.value(metadata i1 %294, metadata !3354, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3627
  br label %337, !dbg !3631

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #41, !dbg !3632
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3355, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata ptr %14, metadata !3407, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata ptr %14, metadata !3415, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i32 0, metadata !3418, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i64 8, metadata !3419, metadata !DIExpression()), !dbg !3636
  store i64 0, ptr %14, align 8, !dbg !3638
  call void @llvm.dbg.value(metadata i64 0, metadata !3351, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i8 1, metadata !3354, metadata !DIExpression()), !dbg !3627
  %296 = icmp eq i64 %153, -1, !dbg !3639
  br i1 %296, label %297, label %299, !dbg !3641

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !3642
  call void @llvm.dbg.value(metadata i64 %298, metadata !3322, metadata !DIExpression()), !dbg !3381
  br label %299, !dbg !3643

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !3479
  call void @llvm.dbg.value(metadata i64 %300, metadata !3322, metadata !DIExpression()), !dbg !3381
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #41, !dbg !3644
  %301 = sub i64 %300, %129, !dbg !3645
  call void @llvm.dbg.value(metadata ptr %15, metadata !3358, metadata !DIExpression(DW_OP_deref)), !dbg !3646
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #41, !dbg !3647
  call void @llvm.dbg.value(metadata i64 %302, metadata !3362, metadata !DIExpression()), !dbg !3646
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !3648

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !3351, metadata !DIExpression()), !dbg !3627
  %304 = icmp ugt i64 %300, %129, !dbg !3649
  br i1 %304, label %306, label %332, !dbg !3651

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !3354, metadata !DIExpression()), !dbg !3627
  br label %332, !dbg !3652

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !3351, metadata !DIExpression()), !dbg !3627
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !3654
  %310 = load i8, ptr %309, align 1, !dbg !3654, !tbaa !1110
  %311 = icmp eq i8 %310, 0, !dbg !3651
  br i1 %311, label %332, label %312, !dbg !3655

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !3656
  call void @llvm.dbg.value(metadata i64 %313, metadata !3351, metadata !DIExpression()), !dbg !3627
  %314 = add i64 %313, %129, !dbg !3657
  %315 = icmp eq i64 %313, %301, !dbg !3649
  br i1 %315, label %332, label %306, !dbg !3651, !llvm.loop !3658

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !3659
  %319 = and i1 %318, %110, !dbg !3659
  call void @llvm.dbg.value(metadata i64 1, metadata !3363, metadata !DIExpression()), !dbg !3660
  br i1 %319, label %320, label %328, !dbg !3659

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !3363, metadata !DIExpression()), !dbg !3660
  %322 = add i64 %321, %129, !dbg !3661
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !3663
  %324 = load i8, ptr %323, align 1, !dbg !3663, !tbaa !1110
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !3664

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !3665
  call void @llvm.dbg.value(metadata i64 %326, metadata !3363, metadata !DIExpression()), !dbg !3660
  %327 = icmp eq i64 %326, %302, !dbg !3666
  br i1 %327, label %328, label %320, !dbg !3667, !llvm.loop !3668

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !3670, !tbaa !1101
  call void @llvm.dbg.value(metadata i32 %329, metadata !3358, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 %329, metadata !3672, metadata !DIExpression()), !dbg !3680
  %330 = call i32 @iswprint(i32 noundef %329) #41, !dbg !3682
  %331 = icmp ne i32 %330, 0, !dbg !3683
  call void @llvm.dbg.value(metadata i8 poison, metadata !3354, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i64 %302, metadata !3351, metadata !DIExpression()), !dbg !3627
  br label %332, !dbg !3684

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3354, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i64 %333, metadata !3351, metadata !DIExpression()), !dbg !3627
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !3685
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !3686
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !3354, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i64 0, metadata !3351, metadata !DIExpression()), !dbg !3627
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !3685
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !3686
  call void @llvm.dbg.label(metadata !3380), !dbg !3687
  %336 = select i1 %109, i32 4, i32 2, !dbg !3688
  br label %626, !dbg !3688

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !3479
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !3690
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3354, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i64 %339, metadata !3351, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i64 %338, metadata !3322, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i1 %340, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3479
  %341 = icmp ult i64 %339, 2, !dbg !3691
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !3692
  br i1 %343, label %439, label %344, !dbg !3692

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !3693
  call void @llvm.dbg.value(metadata i64 %345, metadata !3371, metadata !DIExpression()), !dbg !3694
  br label %346, !dbg !3695

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !3381
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !3470
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !3696
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !3479
  call void @llvm.dbg.value(metadata i8 %352, metadata !3350, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i8 %351, metadata !3348, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i8 poison, metadata !3345, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i64 %349, metadata !3343, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i8 poison, metadata !3337, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %347, metadata !3329, metadata !DIExpression()), !dbg !3381
  br i1 %342, label %397, label %353, !dbg !3697

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !3702

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !3348, metadata !DIExpression()), !dbg !3479
  %355 = select i1 %111, i1 true, i1 %348, !dbg !3705
  br i1 %355, label %372, label %356, !dbg !3705

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !3707
  br i1 %357, label %358, label %360, !dbg !3711

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3707
  store i8 39, ptr %359, align 1, !dbg !3707, !tbaa !1110
  br label %360, !dbg !3707

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !3711
  call void @llvm.dbg.value(metadata i64 %361, metadata !3329, metadata !DIExpression()), !dbg !3381
  %362 = icmp ult i64 %361, %130, !dbg !3712
  br i1 %362, label %363, label %365, !dbg !3715

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !3712
  store i8 36, ptr %364, align 1, !dbg !3712, !tbaa !1110
  br label %365, !dbg !3712

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !3715
  call void @llvm.dbg.value(metadata i64 %366, metadata !3329, metadata !DIExpression()), !dbg !3381
  %367 = icmp ult i64 %366, %130, !dbg !3716
  br i1 %367, label %368, label %370, !dbg !3719

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !3716
  store i8 39, ptr %369, align 1, !dbg !3716, !tbaa !1110
  br label %370, !dbg !3716

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !3719
  call void @llvm.dbg.value(metadata i64 %371, metadata !3329, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 1, metadata !3337, metadata !DIExpression()), !dbg !3381
  br label %372, !dbg !3720

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !3381
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3337, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %373, metadata !3329, metadata !DIExpression()), !dbg !3381
  %375 = icmp ult i64 %373, %130, !dbg !3721
  br i1 %375, label %376, label %378, !dbg !3724

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !3721
  store i8 92, ptr %377, align 1, !dbg !3721, !tbaa !1110
  br label %378, !dbg !3721

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !3724
  call void @llvm.dbg.value(metadata i64 %379, metadata !3329, metadata !DIExpression()), !dbg !3381
  %380 = icmp ult i64 %379, %130, !dbg !3725
  br i1 %380, label %381, label %385, !dbg !3728

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !3725
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !3725
  store i8 %383, ptr %384, align 1, !dbg !3725, !tbaa !1110
  br label %385, !dbg !3725

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !3728
  call void @llvm.dbg.value(metadata i64 %386, metadata !3329, metadata !DIExpression()), !dbg !3381
  %387 = icmp ult i64 %386, %130, !dbg !3729
  br i1 %387, label %388, label %393, !dbg !3732

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !3729
  %391 = or i8 %390, 48, !dbg !3729
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3729
  store i8 %391, ptr %392, align 1, !dbg !3729, !tbaa !1110
  br label %393, !dbg !3729

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !3732
  call void @llvm.dbg.value(metadata i64 %394, metadata !3329, metadata !DIExpression()), !dbg !3381
  %395 = and i8 %352, 7, !dbg !3733
  %396 = or i8 %395, 48, !dbg !3734
  call void @llvm.dbg.value(metadata i8 %396, metadata !3350, metadata !DIExpression()), !dbg !3479
  br label %404, !dbg !3735

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !3736

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !3737
  br i1 %399, label %400, label %402, !dbg !3742

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3737
  store i8 92, ptr %401, align 1, !dbg !3737, !tbaa !1110
  br label %402, !dbg !3737

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !3742
  call void @llvm.dbg.value(metadata i64 %403, metadata !3329, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 0, metadata !3345, metadata !DIExpression()), !dbg !3479
  br label %404, !dbg !3743

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !3381
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !3479
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !3479
  call void @llvm.dbg.value(metadata i8 %409, metadata !3350, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i8 %408, metadata !3348, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i8 poison, metadata !3345, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i8 poison, metadata !3337, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %405, metadata !3329, metadata !DIExpression()), !dbg !3381
  %410 = add i64 %349, 1, !dbg !3744
  %411 = icmp ugt i64 %345, %410, !dbg !3746
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !3747

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !3748
  %415 = select i1 %406, i1 %414, i1 false, !dbg !3748
  br i1 %415, label %416, label %427, !dbg !3748

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !3751
  br i1 %417, label %418, label %420, !dbg !3755

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !3751
  store i8 39, ptr %419, align 1, !dbg !3751, !tbaa !1110
  br label %420, !dbg !3751

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !3755
  call void @llvm.dbg.value(metadata i64 %421, metadata !3329, metadata !DIExpression()), !dbg !3381
  %422 = icmp ult i64 %421, %130, !dbg !3756
  br i1 %422, label %423, label %425, !dbg !3759

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !3756
  store i8 39, ptr %424, align 1, !dbg !3756, !tbaa !1110
  br label %425, !dbg !3756

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !3759
  call void @llvm.dbg.value(metadata i64 %426, metadata !3329, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 0, metadata !3337, metadata !DIExpression()), !dbg !3381
  br label %427, !dbg !3760

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !3761
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3337, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %428, metadata !3329, metadata !DIExpression()), !dbg !3381
  %430 = icmp ult i64 %428, %130, !dbg !3762
  br i1 %430, label %431, label %433, !dbg !3765

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !3762
  store i8 %409, ptr %432, align 1, !dbg !3762, !tbaa !1110
  br label %433, !dbg !3762

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !3765
  call void @llvm.dbg.value(metadata i64 %434, metadata !3329, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %410, metadata !3343, metadata !DIExpression()), !dbg !3470
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !3766
  %436 = load i8, ptr %435, align 1, !dbg !3766, !tbaa !1110
  call void @llvm.dbg.value(metadata i8 %436, metadata !3350, metadata !DIExpression()), !dbg !3479
  br label %346, !dbg !3767, !llvm.loop !3768

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !3350, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i1 %340, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3479
  call void @llvm.dbg.value(metadata i8 %408, metadata !3348, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i8 poison, metadata !3345, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i64 %349, metadata !3343, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i8 poison, metadata !3337, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %405, metadata !3329, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %338, metadata !3322, metadata !DIExpression()), !dbg !3381
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !3771
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !3381
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !3385
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !3470
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !3479
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !3320, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 %448, metadata !3350, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i8 poison, metadata !3349, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i8 poison, metadata !3348, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i8 poison, metadata !3345, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i64 %445, metadata !3343, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i8 poison, metadata !3337, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 poison, metadata !3335, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %442, metadata !3330, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %441, metadata !3329, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %440, metadata !3322, metadata !DIExpression()), !dbg !3381
  br i1 %112, label %461, label %450, !dbg !3772

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
  br i1 %121, label %462, label %482, !dbg !3774

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !3775

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
  %473 = lshr i8 %464, 5, !dbg !3776
  %474 = zext i8 %473 to i64, !dbg !3776
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !3777
  %476 = load i32, ptr %475, align 4, !dbg !3777, !tbaa !1101
  %477 = and i8 %464, 31, !dbg !3778
  %478 = zext i8 %477 to i32, !dbg !3778
  %479 = shl nuw i32 1, %478, !dbg !3779
  %480 = and i32 %476, %479, !dbg !3779
  %481 = icmp eq i32 %480, 0, !dbg !3779
  br i1 %481, label %482, label %493, !dbg !3780

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
  br i1 %154, label %493, label %529, !dbg !3781

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !3771
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !3381
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !3385
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !3782
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !3479
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !3320, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 %501, metadata !3350, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i8 poison, metadata !3349, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i64 %499, metadata !3343, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i8 poison, metadata !3337, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 poison, metadata !3335, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %496, metadata !3330, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %495, metadata !3329, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %494, metadata !3322, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.label(metadata !3378), !dbg !3783
  br i1 %110, label %621, label %503, !dbg !3784

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !3348, metadata !DIExpression()), !dbg !3479
  %504 = select i1 %111, i1 true, i1 %498, !dbg !3786
  br i1 %504, label %521, label %505, !dbg !3786

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !3788
  br i1 %506, label %507, label %509, !dbg !3792

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !3788
  store i8 39, ptr %508, align 1, !dbg !3788, !tbaa !1110
  br label %509, !dbg !3788

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !3792
  call void @llvm.dbg.value(metadata i64 %510, metadata !3329, metadata !DIExpression()), !dbg !3381
  %511 = icmp ult i64 %510, %502, !dbg !3793
  br i1 %511, label %512, label %514, !dbg !3796

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !3793
  store i8 36, ptr %513, align 1, !dbg !3793, !tbaa !1110
  br label %514, !dbg !3793

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !3796
  call void @llvm.dbg.value(metadata i64 %515, metadata !3329, metadata !DIExpression()), !dbg !3381
  %516 = icmp ult i64 %515, %502, !dbg !3797
  br i1 %516, label %517, label %519, !dbg !3800

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !3797
  store i8 39, ptr %518, align 1, !dbg !3797, !tbaa !1110
  br label %519, !dbg !3797

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !3800
  call void @llvm.dbg.value(metadata i64 %520, metadata !3329, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 1, metadata !3337, metadata !DIExpression()), !dbg !3381
  br label %521, !dbg !3801

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !3479
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3337, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %522, metadata !3329, metadata !DIExpression()), !dbg !3381
  %524 = icmp ult i64 %522, %502, !dbg !3802
  br i1 %524, label %525, label %527, !dbg !3805

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3802
  store i8 92, ptr %526, align 1, !dbg !3802, !tbaa !1110
  br label %527, !dbg !3802

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !3805
  call void @llvm.dbg.value(metadata i64 %502, metadata !3320, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 %501, metadata !3350, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i8 poison, metadata !3349, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i8 poison, metadata !3348, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i64 %499, metadata !3343, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i8 poison, metadata !3337, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 poison, metadata !3335, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %496, metadata !3330, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %528, metadata !3329, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %494, metadata !3322, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.label(metadata !3379), !dbg !3806
  br label %553, !dbg !3807

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !3771
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !3381
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !3385
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !3782
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !3810
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !3320, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 %538, metadata !3350, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i8 poison, metadata !3349, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i8 poison, metadata !3348, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i64 %535, metadata !3343, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i8 poison, metadata !3337, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 poison, metadata !3335, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %532, metadata !3330, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %531, metadata !3329, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %530, metadata !3322, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.label(metadata !3379), !dbg !3806
  %540 = xor i1 %534, true, !dbg !3807
  %541 = select i1 %540, i1 true, i1 %536, !dbg !3807
  br i1 %541, label %553, label %542, !dbg !3807

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !3811
  br i1 %543, label %544, label %546, !dbg !3815

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !3811
  store i8 39, ptr %545, align 1, !dbg !3811, !tbaa !1110
  br label %546, !dbg !3811

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !3815
  call void @llvm.dbg.value(metadata i64 %547, metadata !3329, metadata !DIExpression()), !dbg !3381
  %548 = icmp ult i64 %547, %539, !dbg !3816
  br i1 %548, label %549, label %551, !dbg !3819

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !3816
  store i8 39, ptr %550, align 1, !dbg !3816, !tbaa !1110
  br label %551, !dbg !3816

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !3819
  call void @llvm.dbg.value(metadata i64 %552, metadata !3329, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 0, metadata !3337, metadata !DIExpression()), !dbg !3381
  br label %553, !dbg !3820

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !3479
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3337, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %561, metadata !3329, metadata !DIExpression()), !dbg !3381
  %563 = icmp ult i64 %561, %554, !dbg !3821
  br i1 %563, label %564, label %566, !dbg !3824

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !3821
  store i8 %555, ptr %565, align 1, !dbg !3821, !tbaa !1110
  br label %566, !dbg !3821

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3824
  call void @llvm.dbg.value(metadata i64 %567, metadata !3329, metadata !DIExpression()), !dbg !3381
  %568 = select i1 %556, i1 %127, i1 false, !dbg !3825
  call void @llvm.dbg.value(metadata i8 poison, metadata !3336, metadata !DIExpression()), !dbg !3381
  br label %569, !dbg !3826

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !3771
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !3381
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !3385
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !3782
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !3320, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %576, metadata !3343, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i8 poison, metadata !3337, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 poison, metadata !3336, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 poison, metadata !3335, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %572, metadata !3330, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %571, metadata !3329, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %570, metadata !3322, metadata !DIExpression()), !dbg !3381
  %578 = add i64 %576, 1, !dbg !3827
  call void @llvm.dbg.value(metadata i64 %578, metadata !3343, metadata !DIExpression()), !dbg !3470
  br label %122, !dbg !3828, !llvm.loop !3829

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !3320, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 poison, metadata !3336, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 poison, metadata !3335, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %125, metadata !3330, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %124, metadata !3329, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %123, metadata !3322, metadata !DIExpression()), !dbg !3381
  %580 = icmp ne i64 %124, 0, !dbg !3831
  %581 = xor i1 %110, true, !dbg !3833
  %582 = or i1 %580, %581, !dbg !3833
  %583 = or i1 %582, %111, !dbg !3833
  br i1 %583, label %584, label %621, !dbg !3833

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !3834
  %586 = xor i1 %126, true, !dbg !3834
  %587 = select i1 %585, i1 true, i1 %586, !dbg !3834
  br i1 %587, label %595, label %588, !dbg !3834

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !3836

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !3838
  br label %636, !dbg !3840

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !3841
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !3843
  br i1 %594, label %27, label %595, !dbg !3843

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !3844
  %598 = or i1 %597, %596, !dbg !3846
  br i1 %598, label %614, label %599, !dbg !3846

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !3331, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %124, metadata !3329, metadata !DIExpression()), !dbg !3381
  %600 = load i8, ptr %107, align 1, !dbg !3847, !tbaa !1110
  %601 = icmp eq i8 %600, 0, !dbg !3850
  br i1 %601, label %614, label %602, !dbg !3850

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !3331, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %605, metadata !3329, metadata !DIExpression()), !dbg !3381
  %606 = icmp ult i64 %605, %130, !dbg !3851
  br i1 %606, label %607, label %609, !dbg !3854

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !3851
  store i8 %603, ptr %608, align 1, !dbg !3851, !tbaa !1110
  br label %609, !dbg !3851

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !3854
  call void @llvm.dbg.value(metadata i64 %610, metadata !3329, metadata !DIExpression()), !dbg !3381
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !3855
  call void @llvm.dbg.value(metadata ptr %611, metadata !3331, metadata !DIExpression()), !dbg !3381
  %612 = load i8, ptr %611, align 1, !dbg !3847, !tbaa !1110
  %613 = icmp eq i8 %612, 0, !dbg !3850
  br i1 %613, label %614, label %602, !dbg !3850, !llvm.loop !3856

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !3457
  call void @llvm.dbg.value(metadata i64 %615, metadata !3329, metadata !DIExpression()), !dbg !3381
  %616 = icmp ult i64 %615, %130, !dbg !3858
  br i1 %616, label %617, label %636, !dbg !3860

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !3861
  store i8 0, ptr %618, align 1, !dbg !3862, !tbaa !1110
  br label %636, !dbg !3861

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !3380), !dbg !3687
  %620 = icmp eq i32 %103, 2, !dbg !3863
  br i1 %620, label %626, label %630, !dbg !3688

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !3380), !dbg !3687
  %624 = icmp eq i32 %103, 2, !dbg !3863
  %625 = select i1 %109, i32 4, i32 2, !dbg !3688
  br i1 %624, label %626, label %630, !dbg !3688

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !3688

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !3323, metadata !DIExpression()), !dbg !3381
  %634 = and i32 %5, -3, !dbg !3864
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !3865
  br label %636, !dbg !3866

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !3867
}

; Function Attrs: nounwind
declare !dbg !3868 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3871 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3873 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3877, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i64 %1, metadata !3878, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata ptr %2, metadata !3879, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata ptr %0, metadata !3881, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata i64 %1, metadata !3886, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata ptr null, metadata !3887, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata ptr %2, metadata !3888, metadata !DIExpression()), !dbg !3894
  %4 = icmp eq ptr %2, null, !dbg !3896
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3896
  call void @llvm.dbg.value(metadata ptr %5, metadata !3889, metadata !DIExpression()), !dbg !3894
  %6 = tail call ptr @__errno_location() #44, !dbg !3897
  %7 = load i32, ptr %6, align 4, !dbg !3897, !tbaa !1101
  call void @llvm.dbg.value(metadata i32 %7, metadata !3890, metadata !DIExpression()), !dbg !3894
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3898
  %9 = load i32, ptr %8, align 4, !dbg !3898, !tbaa !3263
  %10 = or i32 %9, 1, !dbg !3899
  call void @llvm.dbg.value(metadata i32 %10, metadata !3891, metadata !DIExpression()), !dbg !3894
  %11 = load i32, ptr %5, align 8, !dbg !3900, !tbaa !3213
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3901
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3902
  %14 = load ptr, ptr %13, align 8, !dbg !3902, !tbaa !3284
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3903
  %16 = load ptr, ptr %15, align 8, !dbg !3903, !tbaa !3287
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3904
  %18 = add i64 %17, 1, !dbg !3905
  call void @llvm.dbg.value(metadata i64 %18, metadata !3892, metadata !DIExpression()), !dbg !3894
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #48, !dbg !3906
  call void @llvm.dbg.value(metadata ptr %19, metadata !3893, metadata !DIExpression()), !dbg !3894
  %20 = load i32, ptr %5, align 8, !dbg !3907, !tbaa !3213
  %21 = load ptr, ptr %13, align 8, !dbg !3908, !tbaa !3284
  %22 = load ptr, ptr %15, align 8, !dbg !3909, !tbaa !3287
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3910
  store i32 %7, ptr %6, align 4, !dbg !3911, !tbaa !1101
  ret ptr %19, !dbg !3912
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3882 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3881, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata i64 %1, metadata !3886, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata ptr %2, metadata !3887, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata ptr %3, metadata !3888, metadata !DIExpression()), !dbg !3913
  %5 = icmp eq ptr %3, null, !dbg !3914
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3914
  call void @llvm.dbg.value(metadata ptr %6, metadata !3889, metadata !DIExpression()), !dbg !3913
  %7 = tail call ptr @__errno_location() #44, !dbg !3915
  %8 = load i32, ptr %7, align 4, !dbg !3915, !tbaa !1101
  call void @llvm.dbg.value(metadata i32 %8, metadata !3890, metadata !DIExpression()), !dbg !3913
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3916
  %10 = load i32, ptr %9, align 4, !dbg !3916, !tbaa !3263
  %11 = icmp eq ptr %2, null, !dbg !3917
  %12 = zext i1 %11 to i32, !dbg !3917
  %13 = or i32 %10, %12, !dbg !3918
  call void @llvm.dbg.value(metadata i32 %13, metadata !3891, metadata !DIExpression()), !dbg !3913
  %14 = load i32, ptr %6, align 8, !dbg !3919, !tbaa !3213
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3920
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3921
  %17 = load ptr, ptr %16, align 8, !dbg !3921, !tbaa !3284
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3922
  %19 = load ptr, ptr %18, align 8, !dbg !3922, !tbaa !3287
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3923
  %21 = add i64 %20, 1, !dbg !3924
  call void @llvm.dbg.value(metadata i64 %21, metadata !3892, metadata !DIExpression()), !dbg !3913
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #48, !dbg !3925
  call void @llvm.dbg.value(metadata ptr %22, metadata !3893, metadata !DIExpression()), !dbg !3913
  %23 = load i32, ptr %6, align 8, !dbg !3926, !tbaa !3213
  %24 = load ptr, ptr %16, align 8, !dbg !3927, !tbaa !3284
  %25 = load ptr, ptr %18, align 8, !dbg !3928, !tbaa !3287
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3929
  store i32 %8, ptr %7, align 4, !dbg !3930, !tbaa !1101
  br i1 %11, label %28, label %27, !dbg !3931

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3932, !tbaa !1299
  br label %28, !dbg !3934

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3935
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3936 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3941, !tbaa !1024
  call void @llvm.dbg.value(metadata ptr %1, metadata !3938, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 1, metadata !3939, metadata !DIExpression()), !dbg !3943
  %2 = load i32, ptr @nslots, align 4, !tbaa !1101
  call void @llvm.dbg.value(metadata i32 1, metadata !3939, metadata !DIExpression()), !dbg !3943
  %3 = icmp sgt i32 %2, 1, !dbg !3944
  br i1 %3, label %4, label %6, !dbg !3946

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3944
  br label %10, !dbg !3946

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3947
  %8 = load ptr, ptr %7, align 8, !dbg !3947, !tbaa !3949
  %9 = icmp eq ptr %8, @slot0, !dbg !3951
  br i1 %9, label %17, label %16, !dbg !3952

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3939, metadata !DIExpression()), !dbg !3943
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3953
  %13 = load ptr, ptr %12, align 8, !dbg !3953, !tbaa !3949
  tail call void @free(ptr noundef %13) #41, !dbg !3954
  %14 = add nuw nsw i64 %11, 1, !dbg !3955
  call void @llvm.dbg.value(metadata i64 %14, metadata !3939, metadata !DIExpression()), !dbg !3943
  %15 = icmp eq i64 %14, %5, !dbg !3944
  br i1 %15, label %6, label %10, !dbg !3946, !llvm.loop !3956

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #41, !dbg !3958
  store i64 256, ptr @slotvec0, align 8, !dbg !3960, !tbaa !3961
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3962, !tbaa !3949
  br label %17, !dbg !3963

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3964
  br i1 %18, label %20, label %19, !dbg !3966

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #41, !dbg !3967
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3969, !tbaa !1024
  br label %20, !dbg !3970

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3971, !tbaa !1101
  ret void, !dbg !3972
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3973 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3975, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata ptr %1, metadata !3976, metadata !DIExpression()), !dbg !3977
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3978
  ret ptr %3, !dbg !3979
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3980 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3984, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata ptr %1, metadata !3985, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i64 %2, metadata !3986, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata ptr %3, metadata !3987, metadata !DIExpression()), !dbg !4000
  %6 = tail call ptr @__errno_location() #44, !dbg !4001
  %7 = load i32, ptr %6, align 4, !dbg !4001, !tbaa !1101
  call void @llvm.dbg.value(metadata i32 %7, metadata !3988, metadata !DIExpression()), !dbg !4000
  %8 = load ptr, ptr @slotvec, align 8, !dbg !4002, !tbaa !1024
  call void @llvm.dbg.value(metadata ptr %8, metadata !3989, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3990, metadata !DIExpression()), !dbg !4000
  %9 = icmp ugt i32 %0, 2147483646, !dbg !4003
  br i1 %9, label %10, label %11, !dbg !4003

10:                                               ; preds = %4
  tail call void @abort() #43, !dbg !4005
  unreachable, !dbg !4005

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !4006, !tbaa !1101
  %13 = icmp sgt i32 %12, %0, !dbg !4007
  br i1 %13, label %32, label %14, !dbg !4008

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !4009
  call void @llvm.dbg.value(metadata i1 %15, metadata !3991, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4010
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #41, !dbg !4011
  %16 = sext i32 %12 to i64, !dbg !4012
  call void @llvm.dbg.value(metadata i64 %16, metadata !3994, metadata !DIExpression()), !dbg !4010
  store i64 %16, ptr %5, align 8, !dbg !4013, !tbaa !1299
  %17 = select i1 %15, ptr null, ptr %8, !dbg !4014
  %18 = add nuw nsw i32 %0, 1, !dbg !4015
  %19 = sub i32 %18, %12, !dbg !4016
  %20 = sext i32 %19 to i64, !dbg !4017
  call void @llvm.dbg.value(metadata ptr %5, metadata !3994, metadata !DIExpression(DW_OP_deref)), !dbg !4010
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #41, !dbg !4018
  call void @llvm.dbg.value(metadata ptr %21, metadata !3989, metadata !DIExpression()), !dbg !4000
  store ptr %21, ptr @slotvec, align 8, !dbg !4019, !tbaa !1024
  br i1 %15, label %22, label %23, !dbg !4020

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !4021, !tbaa.struct !4023
  br label %23, !dbg !4024

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !4025, !tbaa !1101
  %25 = sext i32 %24 to i64, !dbg !4026
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !4026
  %27 = load i64, ptr %5, align 8, !dbg !4027, !tbaa !1299
  call void @llvm.dbg.value(metadata i64 %27, metadata !3994, metadata !DIExpression()), !dbg !4010
  %28 = sub nsw i64 %27, %25, !dbg !4028
  %29 = shl i64 %28, 4, !dbg !4029
  call void @llvm.dbg.value(metadata ptr %26, metadata !3415, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i32 0, metadata !3418, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i64 %29, metadata !3419, metadata !DIExpression()), !dbg !4030
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #41, !dbg !4032
  %30 = load i64, ptr %5, align 8, !dbg !4033, !tbaa !1299
  call void @llvm.dbg.value(metadata i64 %30, metadata !3994, metadata !DIExpression()), !dbg !4010
  %31 = trunc i64 %30 to i32, !dbg !4033
  store i32 %31, ptr @nslots, align 4, !dbg !4034, !tbaa !1101
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #41, !dbg !4035
  br label %32, !dbg !4036

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !4000
  call void @llvm.dbg.value(metadata ptr %33, metadata !3989, metadata !DIExpression()), !dbg !4000
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !4037
  %36 = load i64, ptr %35, align 8, !dbg !4038, !tbaa !3961
  call void @llvm.dbg.value(metadata i64 %36, metadata !3995, metadata !DIExpression()), !dbg !4039
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !4040
  %38 = load ptr, ptr %37, align 8, !dbg !4040, !tbaa !3949
  call void @llvm.dbg.value(metadata ptr %38, metadata !3997, metadata !DIExpression()), !dbg !4039
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !4041
  %40 = load i32, ptr %39, align 4, !dbg !4041, !tbaa !3263
  %41 = or i32 %40, 1, !dbg !4042
  call void @llvm.dbg.value(metadata i32 %41, metadata !3998, metadata !DIExpression()), !dbg !4039
  %42 = load i32, ptr %3, align 8, !dbg !4043, !tbaa !3213
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !4044
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !4045
  %45 = load ptr, ptr %44, align 8, !dbg !4045, !tbaa !3284
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !4046
  %47 = load ptr, ptr %46, align 8, !dbg !4046, !tbaa !3287
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !4047
  call void @llvm.dbg.value(metadata i64 %48, metadata !3999, metadata !DIExpression()), !dbg !4039
  %49 = icmp ugt i64 %36, %48, !dbg !4048
  br i1 %49, label %60, label %50, !dbg !4050

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !4051
  call void @llvm.dbg.value(metadata i64 %51, metadata !3995, metadata !DIExpression()), !dbg !4039
  store i64 %51, ptr %35, align 8, !dbg !4053, !tbaa !3961
  %52 = icmp eq ptr %38, @slot0, !dbg !4054
  br i1 %52, label %54, label %53, !dbg !4056

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #41, !dbg !4057
  br label %54, !dbg !4057

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #48, !dbg !4058
  call void @llvm.dbg.value(metadata ptr %55, metadata !3997, metadata !DIExpression()), !dbg !4039
  store ptr %55, ptr %37, align 8, !dbg !4059, !tbaa !3949
  %56 = load i32, ptr %3, align 8, !dbg !4060, !tbaa !3213
  %57 = load ptr, ptr %44, align 8, !dbg !4061, !tbaa !3284
  %58 = load ptr, ptr %46, align 8, !dbg !4062, !tbaa !3287
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !4063
  br label %60, !dbg !4064

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !4039
  call void @llvm.dbg.value(metadata ptr %61, metadata !3997, metadata !DIExpression()), !dbg !4039
  store i32 %7, ptr %6, align 4, !dbg !4065, !tbaa !1101
  ret ptr %61, !dbg !4066
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #29

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4067 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4071, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata ptr %1, metadata !4072, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata i64 %2, metadata !4073, metadata !DIExpression()), !dbg !4074
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !4075
  ret ptr %4, !dbg !4076
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !4077 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4079, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i32 0, metadata !3975, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata ptr %0, metadata !3976, metadata !DIExpression()), !dbg !4081
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !4083
  ret ptr %2, !dbg !4084
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4085 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4089, metadata !DIExpression()), !dbg !4091
  call void @llvm.dbg.value(metadata i64 %1, metadata !4090, metadata !DIExpression()), !dbg !4091
  call void @llvm.dbg.value(metadata i32 0, metadata !4071, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata ptr %0, metadata !4072, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i64 %1, metadata !4073, metadata !DIExpression()), !dbg !4092
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !4094
  ret ptr %3, !dbg !4095
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4096 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4100, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i32 %1, metadata !4101, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata ptr %2, metadata !4102, metadata !DIExpression()), !dbg !4104
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !4105
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4103, metadata !DIExpression()), !dbg !4106
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4107), !dbg !4110
  call void @llvm.dbg.value(metadata i32 %1, metadata !4111, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4116, metadata !DIExpression()), !dbg !4119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !4119, !alias.scope !4107
  %5 = icmp eq i32 %1, 10, !dbg !4120
  br i1 %5, label %6, label %7, !dbg !4122

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !4123, !noalias !4107
  unreachable, !dbg !4123

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !4124, !tbaa !3213, !alias.scope !4107
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4125
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !4126
  ret ptr %8, !dbg !4127
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4128 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4132, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i32 %1, metadata !4133, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata ptr %2, metadata !4134, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i64 %3, metadata !4135, metadata !DIExpression()), !dbg !4137
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !4138
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4136, metadata !DIExpression()), !dbg !4139
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4140), !dbg !4143
  call void @llvm.dbg.value(metadata i32 %1, metadata !4111, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4116, metadata !DIExpression()), !dbg !4146
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !4146, !alias.scope !4140
  %6 = icmp eq i32 %1, 10, !dbg !4147
  br i1 %6, label %7, label %8, !dbg !4148

7:                                                ; preds = %4
  tail call void @abort() #43, !dbg !4149, !noalias !4140
  unreachable, !dbg !4149

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !4150, !tbaa !3213, !alias.scope !4140
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4151
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !4152
  ret ptr %9, !dbg !4153
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4154 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4158, metadata !DIExpression()), !dbg !4160
  call void @llvm.dbg.value(metadata ptr %1, metadata !4159, metadata !DIExpression()), !dbg !4160
  call void @llvm.dbg.value(metadata i32 0, metadata !4100, metadata !DIExpression()), !dbg !4161
  call void @llvm.dbg.value(metadata i32 %0, metadata !4101, metadata !DIExpression()), !dbg !4161
  call void @llvm.dbg.value(metadata ptr %1, metadata !4102, metadata !DIExpression()), !dbg !4161
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !4163
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4103, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4165), !dbg !4168
  call void @llvm.dbg.value(metadata i32 %0, metadata !4111, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4116, metadata !DIExpression()), !dbg !4171
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !4171, !alias.scope !4165
  %4 = icmp eq i32 %0, 10, !dbg !4172
  br i1 %4, label %5, label %6, !dbg !4173

5:                                                ; preds = %2
  tail call void @abort() #43, !dbg !4174, !noalias !4165
  unreachable, !dbg !4174

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !4175, !tbaa !3213, !alias.scope !4165
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !4176
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !4177
  ret ptr %7, !dbg !4178
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4179 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4183, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata ptr %1, metadata !4184, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata i64 %2, metadata !4185, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata i32 0, metadata !4132, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i32 %0, metadata !4133, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata ptr %1, metadata !4134, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 %2, metadata !4135, metadata !DIExpression()), !dbg !4187
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !4189
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4136, metadata !DIExpression()), !dbg !4190
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4191), !dbg !4194
  call void @llvm.dbg.value(metadata i32 %0, metadata !4111, metadata !DIExpression()), !dbg !4195
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4116, metadata !DIExpression()), !dbg !4197
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !4197, !alias.scope !4191
  %5 = icmp eq i32 %0, 10, !dbg !4198
  br i1 %5, label %6, label %7, !dbg !4199

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !4200, !noalias !4191
  unreachable, !dbg !4200

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !4201, !tbaa !3213, !alias.scope !4191
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !4202
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !4203
  ret ptr %8, !dbg !4204
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !4205 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4209, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.value(metadata i64 %1, metadata !4210, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.value(metadata i8 %2, metadata !4211, metadata !DIExpression()), !dbg !4213
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !4214
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4212, metadata !DIExpression()), !dbg !4215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4216, !tbaa.struct !4217
  call void @llvm.dbg.value(metadata ptr %4, metadata !3230, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i8 %2, metadata !3231, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i32 1, metadata !3232, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i8 %2, metadata !3233, metadata !DIExpression()), !dbg !4218
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !4220
  %6 = lshr i8 %2, 5, !dbg !4221
  %7 = zext i8 %6 to i64, !dbg !4221
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !4222
  call void @llvm.dbg.value(metadata ptr %8, metadata !3234, metadata !DIExpression()), !dbg !4218
  %9 = and i8 %2, 31, !dbg !4223
  %10 = zext i8 %9 to i32, !dbg !4223
  call void @llvm.dbg.value(metadata i32 %10, metadata !3236, metadata !DIExpression()), !dbg !4218
  %11 = load i32, ptr %8, align 4, !dbg !4224, !tbaa !1101
  %12 = lshr i32 %11, %10, !dbg !4225
  call void @llvm.dbg.value(metadata i32 %12, metadata !3237, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4218
  %13 = and i32 %12, 1, !dbg !4226
  %14 = xor i32 %13, 1, !dbg !4226
  %15 = shl nuw i32 %14, %10, !dbg !4227
  %16 = xor i32 %15, %11, !dbg !4228
  store i32 %16, ptr %8, align 4, !dbg !4228, !tbaa !1101
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !4229
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !4230
  ret ptr %17, !dbg !4231
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !4232 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4236, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata i8 %1, metadata !4237, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata ptr %0, metadata !4209, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i64 -1, metadata !4210, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i8 %1, metadata !4211, metadata !DIExpression()), !dbg !4239
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !4241
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4212, metadata !DIExpression()), !dbg !4242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4243, !tbaa.struct !4217
  call void @llvm.dbg.value(metadata ptr %3, metadata !3230, metadata !DIExpression()), !dbg !4244
  call void @llvm.dbg.value(metadata i8 %1, metadata !3231, metadata !DIExpression()), !dbg !4244
  call void @llvm.dbg.value(metadata i32 1, metadata !3232, metadata !DIExpression()), !dbg !4244
  call void @llvm.dbg.value(metadata i8 %1, metadata !3233, metadata !DIExpression()), !dbg !4244
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !4246
  %5 = lshr i8 %1, 5, !dbg !4247
  %6 = zext i8 %5 to i64, !dbg !4247
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !4248
  call void @llvm.dbg.value(metadata ptr %7, metadata !3234, metadata !DIExpression()), !dbg !4244
  %8 = and i8 %1, 31, !dbg !4249
  %9 = zext i8 %8 to i32, !dbg !4249
  call void @llvm.dbg.value(metadata i32 %9, metadata !3236, metadata !DIExpression()), !dbg !4244
  %10 = load i32, ptr %7, align 4, !dbg !4250, !tbaa !1101
  %11 = lshr i32 %10, %9, !dbg !4251
  call void @llvm.dbg.value(metadata i32 %11, metadata !3237, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4244
  %12 = and i32 %11, 1, !dbg !4252
  %13 = xor i32 %12, 1, !dbg !4252
  %14 = shl nuw i32 %13, %9, !dbg !4253
  %15 = xor i32 %14, %10, !dbg !4254
  store i32 %15, ptr %7, align 4, !dbg !4254, !tbaa !1101
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !4255
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !4256
  ret ptr %16, !dbg !4257
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !4258 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4260, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.value(metadata ptr %0, metadata !4236, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata i8 58, metadata !4237, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata ptr %0, metadata !4209, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.value(metadata i64 -1, metadata !4210, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.value(metadata i8 58, metadata !4211, metadata !DIExpression()), !dbg !4264
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #41, !dbg !4266
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4212, metadata !DIExpression()), !dbg !4267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4268, !tbaa.struct !4217
  call void @llvm.dbg.value(metadata ptr %2, metadata !3230, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.value(metadata i8 58, metadata !3231, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.value(metadata i32 1, metadata !3232, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.value(metadata i8 58, metadata !3233, metadata !DIExpression()), !dbg !4269
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !4271
  call void @llvm.dbg.value(metadata ptr %3, metadata !3234, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.value(metadata i32 26, metadata !3236, metadata !DIExpression()), !dbg !4269
  %4 = load i32, ptr %3, align 4, !dbg !4272, !tbaa !1101
  call void @llvm.dbg.value(metadata i32 %4, metadata !3237, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4269
  %5 = or i32 %4, 67108864, !dbg !4273
  store i32 %5, ptr %3, align 4, !dbg !4273, !tbaa !1101
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !4274
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #41, !dbg !4275
  ret ptr %6, !dbg !4276
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4277 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4279, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %1, metadata !4280, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata ptr %0, metadata !4209, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i64 %1, metadata !4210, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i8 58, metadata !4211, metadata !DIExpression()), !dbg !4282
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !4284
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4212, metadata !DIExpression()), !dbg !4285
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4286, !tbaa.struct !4217
  call void @llvm.dbg.value(metadata ptr %3, metadata !3230, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i8 58, metadata !3231, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i32 1, metadata !3232, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i8 58, metadata !3233, metadata !DIExpression()), !dbg !4287
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !4289
  call void @llvm.dbg.value(metadata ptr %4, metadata !3234, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i32 26, metadata !3236, metadata !DIExpression()), !dbg !4287
  %5 = load i32, ptr %4, align 4, !dbg !4290, !tbaa !1101
  call void @llvm.dbg.value(metadata i32 %5, metadata !3237, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4287
  %6 = or i32 %5, 67108864, !dbg !4291
  store i32 %6, ptr %4, align 4, !dbg !4291, !tbaa !1101
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !4292
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !4293
  ret ptr %7, !dbg !4294
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4295 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !4116, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4301
  call void @llvm.dbg.value(metadata i32 %0, metadata !4297, metadata !DIExpression()), !dbg !4303
  call void @llvm.dbg.value(metadata i32 %1, metadata !4298, metadata !DIExpression()), !dbg !4303
  call void @llvm.dbg.value(metadata ptr %2, metadata !4299, metadata !DIExpression()), !dbg !4303
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !4304
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4300, metadata !DIExpression()), !dbg !4305
  call void @llvm.dbg.value(metadata i32 %1, metadata !4111, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i32 0, metadata !4116, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4306
  %5 = icmp eq i32 %1, 10, !dbg !4307
  br i1 %5, label %6, label %7, !dbg !4308

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !4309, !noalias !4310
  unreachable, !dbg !4309

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !4116, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4306
  store i32 %1, ptr %4, align 8, !dbg !4313, !tbaa.struct !4217
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !4313
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !4313
  call void @llvm.dbg.value(metadata ptr %4, metadata !3230, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i8 58, metadata !3231, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 1, metadata !3232, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i8 58, metadata !3233, metadata !DIExpression()), !dbg !4314
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !4316
  call void @llvm.dbg.value(metadata ptr %9, metadata !3234, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 26, metadata !3236, metadata !DIExpression()), !dbg !4314
  %10 = load i32, ptr %9, align 4, !dbg !4317, !tbaa !1101
  call void @llvm.dbg.value(metadata i32 %10, metadata !3237, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4314
  %11 = or i32 %10, 67108864, !dbg !4318
  store i32 %11, ptr %9, align 4, !dbg !4318, !tbaa !1101
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4319
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !4320
  ret ptr %12, !dbg !4321
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4322 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4326, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata ptr %1, metadata !4327, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata ptr %2, metadata !4328, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata ptr %3, metadata !4329, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 %0, metadata !4331, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata ptr %1, metadata !4336, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata ptr %2, metadata !4337, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata ptr %3, metadata !4338, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i64 -1, metadata !4339, metadata !DIExpression()), !dbg !4341
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !4343
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4340, metadata !DIExpression()), !dbg !4344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4345, !tbaa.struct !4217
  call void @llvm.dbg.value(metadata ptr %5, metadata !3270, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata ptr %1, metadata !3271, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata ptr %2, metadata !3272, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata ptr %5, metadata !3270, metadata !DIExpression()), !dbg !4346
  store i32 10, ptr %5, align 8, !dbg !4348, !tbaa !3213
  %6 = icmp ne ptr %1, null, !dbg !4349
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4350
  br i1 %8, label %10, label %9, !dbg !4350

9:                                                ; preds = %4
  tail call void @abort() #43, !dbg !4351
  unreachable, !dbg !4351

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4352
  store ptr %1, ptr %11, align 8, !dbg !4353, !tbaa !3284
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4354
  store ptr %2, ptr %12, align 8, !dbg !4355, !tbaa !3287
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4356
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !4357
  ret ptr %13, !dbg !4358
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !4332 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4331, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.value(metadata ptr %1, metadata !4336, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.value(metadata ptr %2, metadata !4337, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.value(metadata ptr %3, metadata !4338, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.value(metadata i64 %4, metadata !4339, metadata !DIExpression()), !dbg !4359
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #41, !dbg !4360
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4340, metadata !DIExpression()), !dbg !4361
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4362, !tbaa.struct !4217
  call void @llvm.dbg.value(metadata ptr %6, metadata !3270, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata ptr %1, metadata !3271, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata ptr %2, metadata !3272, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata ptr %6, metadata !3270, metadata !DIExpression()), !dbg !4363
  store i32 10, ptr %6, align 8, !dbg !4365, !tbaa !3213
  %7 = icmp ne ptr %1, null, !dbg !4366
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4367
  br i1 %9, label %11, label %10, !dbg !4367

10:                                               ; preds = %5
  tail call void @abort() #43, !dbg !4368
  unreachable, !dbg !4368

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4369
  store ptr %1, ptr %12, align 8, !dbg !4370, !tbaa !3284
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4371
  store ptr %2, ptr %13, align 8, !dbg !4372, !tbaa !3287
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4373
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #41, !dbg !4374
  ret ptr %14, !dbg !4375
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4376 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4380, metadata !DIExpression()), !dbg !4383
  call void @llvm.dbg.value(metadata ptr %1, metadata !4381, metadata !DIExpression()), !dbg !4383
  call void @llvm.dbg.value(metadata ptr %2, metadata !4382, metadata !DIExpression()), !dbg !4383
  call void @llvm.dbg.value(metadata i32 0, metadata !4326, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata ptr %0, metadata !4327, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata ptr %1, metadata !4328, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata ptr %2, metadata !4329, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i32 0, metadata !4331, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata ptr %0, metadata !4336, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata ptr %1, metadata !4337, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata ptr %2, metadata !4338, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i64 -1, metadata !4339, metadata !DIExpression()), !dbg !4386
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !4388
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4340, metadata !DIExpression()), !dbg !4389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4390, !tbaa.struct !4217
  call void @llvm.dbg.value(metadata ptr %4, metadata !3270, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata ptr %0, metadata !3271, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata ptr %1, metadata !3272, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata ptr %4, metadata !3270, metadata !DIExpression()), !dbg !4391
  store i32 10, ptr %4, align 8, !dbg !4393, !tbaa !3213
  %5 = icmp ne ptr %0, null, !dbg !4394
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4395
  br i1 %7, label %9, label %8, !dbg !4395

8:                                                ; preds = %3
  tail call void @abort() #43, !dbg !4396
  unreachable, !dbg !4396

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4397
  store ptr %0, ptr %10, align 8, !dbg !4398, !tbaa !3284
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4399
  store ptr %1, ptr %11, align 8, !dbg !4400, !tbaa !3287
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4401
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !4402
  ret ptr %12, !dbg !4403
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4404 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4408, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata ptr %1, metadata !4409, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata ptr %2, metadata !4410, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata i64 %3, metadata !4411, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata i32 0, metadata !4331, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.value(metadata ptr %0, metadata !4336, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.value(metadata ptr %1, metadata !4337, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.value(metadata ptr %2, metadata !4338, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.value(metadata i64 %3, metadata !4339, metadata !DIExpression()), !dbg !4413
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !4415
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4340, metadata !DIExpression()), !dbg !4416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4417, !tbaa.struct !4217
  call void @llvm.dbg.value(metadata ptr %5, metadata !3270, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata ptr %0, metadata !3271, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata ptr %1, metadata !3272, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata ptr %5, metadata !3270, metadata !DIExpression()), !dbg !4418
  store i32 10, ptr %5, align 8, !dbg !4420, !tbaa !3213
  %6 = icmp ne ptr %0, null, !dbg !4421
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4422
  br i1 %8, label %10, label %9, !dbg !4422

9:                                                ; preds = %4
  tail call void @abort() #43, !dbg !4423
  unreachable, !dbg !4423

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4424
  store ptr %0, ptr %11, align 8, !dbg !4425, !tbaa !3284
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4426
  store ptr %1, ptr %12, align 8, !dbg !4427, !tbaa !3287
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4428
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !4429
  ret ptr %13, !dbg !4430
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4431 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4435, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.value(metadata ptr %1, metadata !4436, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.value(metadata i64 %2, metadata !4437, metadata !DIExpression()), !dbg !4438
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4439
  ret ptr %4, !dbg !4440
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4441 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4445, metadata !DIExpression()), !dbg !4447
  call void @llvm.dbg.value(metadata i64 %1, metadata !4446, metadata !DIExpression()), !dbg !4447
  call void @llvm.dbg.value(metadata i32 0, metadata !4435, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.value(metadata ptr %0, metadata !4436, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.value(metadata i64 %1, metadata !4437, metadata !DIExpression()), !dbg !4448
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4450
  ret ptr %3, !dbg !4451
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4452 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4456, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata ptr %1, metadata !4457, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i32 %0, metadata !4435, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata ptr %1, metadata !4436, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata i64 -1, metadata !4437, metadata !DIExpression()), !dbg !4459
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4461
  ret ptr %3, !dbg !4462
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4463 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4467, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata i32 0, metadata !4456, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.value(metadata ptr %0, metadata !4457, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.value(metadata i32 0, metadata !4435, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.value(metadata ptr %0, metadata !4436, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.value(metadata i64 -1, metadata !4437, metadata !DIExpression()), !dbg !4471
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4473
  ret ptr %2, !dbg !4474
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4475 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4514, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata ptr %1, metadata !4515, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata ptr %2, metadata !4516, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata ptr %3, metadata !4517, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata ptr %4, metadata !4518, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata i64 %5, metadata !4519, metadata !DIExpression()), !dbg !4520
  %7 = icmp eq ptr %1, null, !dbg !4521
  br i1 %7, label %10, label %8, !dbg !4523

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.142, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #41, !dbg !4524
  br label %12, !dbg !4524

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.143, ptr noundef %2, ptr noundef %3) #41, !dbg !4525
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.3.145, i32 noundef 5) #41, !dbg !4526
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #41, !dbg !4526
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.146, ptr noundef %0), !dbg !4527
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.5.147, i32 noundef 5) #41, !dbg !4528
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.148) #41, !dbg !4528
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.146, ptr noundef %0), !dbg !4529
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
  ], !dbg !4530

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.7.149, i32 noundef 5) #41, !dbg !4531
  %21 = load ptr, ptr %4, align 8, !dbg !4531, !tbaa !1024
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #41, !dbg !4531
  br label %147, !dbg !4533

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.8.150, i32 noundef 5) #41, !dbg !4534
  %25 = load ptr, ptr %4, align 8, !dbg !4534, !tbaa !1024
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4534
  %27 = load ptr, ptr %26, align 8, !dbg !4534, !tbaa !1024
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #41, !dbg !4534
  br label %147, !dbg !4535

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.9.151, i32 noundef 5) #41, !dbg !4536
  %31 = load ptr, ptr %4, align 8, !dbg !4536, !tbaa !1024
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4536
  %33 = load ptr, ptr %32, align 8, !dbg !4536, !tbaa !1024
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4536
  %35 = load ptr, ptr %34, align 8, !dbg !4536, !tbaa !1024
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #41, !dbg !4536
  br label %147, !dbg !4537

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.10.152, i32 noundef 5) #41, !dbg !4538
  %39 = load ptr, ptr %4, align 8, !dbg !4538, !tbaa !1024
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4538
  %41 = load ptr, ptr %40, align 8, !dbg !4538, !tbaa !1024
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4538
  %43 = load ptr, ptr %42, align 8, !dbg !4538, !tbaa !1024
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4538
  %45 = load ptr, ptr %44, align 8, !dbg !4538, !tbaa !1024
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #41, !dbg !4538
  br label %147, !dbg !4539

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.11.153, i32 noundef 5) #41, !dbg !4540
  %49 = load ptr, ptr %4, align 8, !dbg !4540, !tbaa !1024
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4540
  %51 = load ptr, ptr %50, align 8, !dbg !4540, !tbaa !1024
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4540
  %53 = load ptr, ptr %52, align 8, !dbg !4540, !tbaa !1024
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4540
  %55 = load ptr, ptr %54, align 8, !dbg !4540, !tbaa !1024
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4540
  %57 = load ptr, ptr %56, align 8, !dbg !4540, !tbaa !1024
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #41, !dbg !4540
  br label %147, !dbg !4541

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.12.154, i32 noundef 5) #41, !dbg !4542
  %61 = load ptr, ptr %4, align 8, !dbg !4542, !tbaa !1024
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4542
  %63 = load ptr, ptr %62, align 8, !dbg !4542, !tbaa !1024
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4542
  %65 = load ptr, ptr %64, align 8, !dbg !4542, !tbaa !1024
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4542
  %67 = load ptr, ptr %66, align 8, !dbg !4542, !tbaa !1024
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4542
  %69 = load ptr, ptr %68, align 8, !dbg !4542, !tbaa !1024
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4542
  %71 = load ptr, ptr %70, align 8, !dbg !4542, !tbaa !1024
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #41, !dbg !4542
  br label %147, !dbg !4543

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.13.155, i32 noundef 5) #41, !dbg !4544
  %75 = load ptr, ptr %4, align 8, !dbg !4544, !tbaa !1024
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4544
  %77 = load ptr, ptr %76, align 8, !dbg !4544, !tbaa !1024
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4544
  %79 = load ptr, ptr %78, align 8, !dbg !4544, !tbaa !1024
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4544
  %81 = load ptr, ptr %80, align 8, !dbg !4544, !tbaa !1024
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4544
  %83 = load ptr, ptr %82, align 8, !dbg !4544, !tbaa !1024
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4544
  %85 = load ptr, ptr %84, align 8, !dbg !4544, !tbaa !1024
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4544
  %87 = load ptr, ptr %86, align 8, !dbg !4544, !tbaa !1024
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #41, !dbg !4544
  br label %147, !dbg !4545

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.14.156, i32 noundef 5) #41, !dbg !4546
  %91 = load ptr, ptr %4, align 8, !dbg !4546, !tbaa !1024
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4546
  %93 = load ptr, ptr %92, align 8, !dbg !4546, !tbaa !1024
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4546
  %95 = load ptr, ptr %94, align 8, !dbg !4546, !tbaa !1024
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4546
  %97 = load ptr, ptr %96, align 8, !dbg !4546, !tbaa !1024
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4546
  %99 = load ptr, ptr %98, align 8, !dbg !4546, !tbaa !1024
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4546
  %101 = load ptr, ptr %100, align 8, !dbg !4546, !tbaa !1024
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4546
  %103 = load ptr, ptr %102, align 8, !dbg !4546, !tbaa !1024
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4546
  %105 = load ptr, ptr %104, align 8, !dbg !4546, !tbaa !1024
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #41, !dbg !4546
  br label %147, !dbg !4547

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.15.157, i32 noundef 5) #41, !dbg !4548
  %109 = load ptr, ptr %4, align 8, !dbg !4548, !tbaa !1024
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4548
  %111 = load ptr, ptr %110, align 8, !dbg !4548, !tbaa !1024
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4548
  %113 = load ptr, ptr %112, align 8, !dbg !4548, !tbaa !1024
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4548
  %115 = load ptr, ptr %114, align 8, !dbg !4548, !tbaa !1024
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4548
  %117 = load ptr, ptr %116, align 8, !dbg !4548, !tbaa !1024
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4548
  %119 = load ptr, ptr %118, align 8, !dbg !4548, !tbaa !1024
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4548
  %121 = load ptr, ptr %120, align 8, !dbg !4548, !tbaa !1024
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4548
  %123 = load ptr, ptr %122, align 8, !dbg !4548, !tbaa !1024
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4548
  %125 = load ptr, ptr %124, align 8, !dbg !4548, !tbaa !1024
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #41, !dbg !4548
  br label %147, !dbg !4549

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.16.158, i32 noundef 5) #41, !dbg !4550
  %129 = load ptr, ptr %4, align 8, !dbg !4550, !tbaa !1024
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4550
  %131 = load ptr, ptr %130, align 8, !dbg !4550, !tbaa !1024
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4550
  %133 = load ptr, ptr %132, align 8, !dbg !4550, !tbaa !1024
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4550
  %135 = load ptr, ptr %134, align 8, !dbg !4550, !tbaa !1024
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4550
  %137 = load ptr, ptr %136, align 8, !dbg !4550, !tbaa !1024
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4550
  %139 = load ptr, ptr %138, align 8, !dbg !4550, !tbaa !1024
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4550
  %141 = load ptr, ptr %140, align 8, !dbg !4550, !tbaa !1024
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4550
  %143 = load ptr, ptr %142, align 8, !dbg !4550, !tbaa !1024
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4550
  %145 = load ptr, ptr %144, align 8, !dbg !4550, !tbaa !1024
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #41, !dbg !4550
  br label %147, !dbg !4551

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4552
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4553 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4557, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata ptr %1, metadata !4558, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata ptr %2, metadata !4559, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata ptr %3, metadata !4560, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata ptr %4, metadata !4561, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i64 0, metadata !4562, metadata !DIExpression()), !dbg !4563
  br label %6, !dbg !4564

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4566
  call void @llvm.dbg.value(metadata i64 %7, metadata !4562, metadata !DIExpression()), !dbg !4563
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4567
  %9 = load ptr, ptr %8, align 8, !dbg !4567, !tbaa !1024
  %10 = icmp eq ptr %9, null, !dbg !4569
  %11 = add i64 %7, 1, !dbg !4570
  call void @llvm.dbg.value(metadata i64 %11, metadata !4562, metadata !DIExpression()), !dbg !4563
  br i1 %10, label %12, label %6, !dbg !4569, !llvm.loop !4571

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4573
  ret void, !dbg !4574
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4575 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4590, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.value(metadata ptr %1, metadata !4591, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.value(metadata ptr %2, metadata !4592, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.value(metadata ptr %3, metadata !4593, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4594, metadata !DIExpression()), !dbg !4599
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #41, !dbg !4600
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4596, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata i64 0, metadata !4595, metadata !DIExpression()), !dbg !4598
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4595, metadata !DIExpression()), !dbg !4598
  %10 = icmp sgt i32 %9, -1, !dbg !4602
  br i1 %10, label %18, label %11, !dbg !4602

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4602
  store i32 %12, ptr %7, align 8, !dbg !4602
  %13 = icmp ult i32 %9, -7, !dbg !4602
  br i1 %13, label %14, label %18, !dbg !4602

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4602
  %16 = sext i32 %9 to i64, !dbg !4602
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4602
  br label %22, !dbg !4602

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4602
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4602
  store ptr %21, ptr %4, align 8, !dbg !4602
  br label %22, !dbg !4602

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4602
  %25 = load ptr, ptr %24, align 8, !dbg !4602
  store ptr %25, ptr %6, align 8, !dbg !4605, !tbaa !1024
  %26 = icmp eq ptr %25, null, !dbg !4606
  br i1 %26, label %197, label %27, !dbg !4607

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !4595, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.value(metadata i64 1, metadata !4595, metadata !DIExpression()), !dbg !4598
  %28 = icmp sgt i32 %23, -1, !dbg !4602
  br i1 %28, label %36, label %29, !dbg !4602

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4602
  store i32 %30, ptr %7, align 8, !dbg !4602
  %31 = icmp ult i32 %23, -7, !dbg !4602
  br i1 %31, label %32, label %36, !dbg !4602

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4602
  %34 = sext i32 %23 to i64, !dbg !4602
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4602
  br label %40, !dbg !4602

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4602
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4602
  store ptr %39, ptr %4, align 8, !dbg !4602
  br label %40, !dbg !4602

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4602
  %43 = load ptr, ptr %42, align 8, !dbg !4602
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4608
  store ptr %43, ptr %44, align 8, !dbg !4605, !tbaa !1024
  %45 = icmp eq ptr %43, null, !dbg !4606
  br i1 %45, label %197, label %46, !dbg !4607

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4595, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.value(metadata i64 2, metadata !4595, metadata !DIExpression()), !dbg !4598
  %47 = icmp sgt i32 %41, -1, !dbg !4602
  br i1 %47, label %55, label %48, !dbg !4602

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4602
  store i32 %49, ptr %7, align 8, !dbg !4602
  %50 = icmp ult i32 %41, -7, !dbg !4602
  br i1 %50, label %51, label %55, !dbg !4602

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4602
  %53 = sext i32 %41 to i64, !dbg !4602
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4602
  br label %59, !dbg !4602

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4602
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4602
  store ptr %58, ptr %4, align 8, !dbg !4602
  br label %59, !dbg !4602

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4602
  %62 = load ptr, ptr %61, align 8, !dbg !4602
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4608
  store ptr %62, ptr %63, align 8, !dbg !4605, !tbaa !1024
  %64 = icmp eq ptr %62, null, !dbg !4606
  br i1 %64, label %197, label %65, !dbg !4607

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !4595, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.value(metadata i64 3, metadata !4595, metadata !DIExpression()), !dbg !4598
  %66 = icmp sgt i32 %60, -1, !dbg !4602
  br i1 %66, label %74, label %67, !dbg !4602

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4602
  store i32 %68, ptr %7, align 8, !dbg !4602
  %69 = icmp ult i32 %60, -7, !dbg !4602
  br i1 %69, label %70, label %74, !dbg !4602

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4602
  %72 = sext i32 %60 to i64, !dbg !4602
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4602
  br label %78, !dbg !4602

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4602
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4602
  store ptr %77, ptr %4, align 8, !dbg !4602
  br label %78, !dbg !4602

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4602
  %81 = load ptr, ptr %80, align 8, !dbg !4602
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4608
  store ptr %81, ptr %82, align 8, !dbg !4605, !tbaa !1024
  %83 = icmp eq ptr %81, null, !dbg !4606
  br i1 %83, label %197, label %84, !dbg !4607

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !4595, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.value(metadata i64 4, metadata !4595, metadata !DIExpression()), !dbg !4598
  %85 = icmp sgt i32 %79, -1, !dbg !4602
  br i1 %85, label %93, label %86, !dbg !4602

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4602
  store i32 %87, ptr %7, align 8, !dbg !4602
  %88 = icmp ult i32 %79, -7, !dbg !4602
  br i1 %88, label %89, label %93, !dbg !4602

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4602
  %91 = sext i32 %79 to i64, !dbg !4602
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4602
  br label %97, !dbg !4602

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4602
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4602
  store ptr %96, ptr %4, align 8, !dbg !4602
  br label %97, !dbg !4602

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4602
  %100 = load ptr, ptr %99, align 8, !dbg !4602
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4608
  store ptr %100, ptr %101, align 8, !dbg !4605, !tbaa !1024
  %102 = icmp eq ptr %100, null, !dbg !4606
  br i1 %102, label %197, label %103, !dbg !4607

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !4595, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.value(metadata i64 5, metadata !4595, metadata !DIExpression()), !dbg !4598
  %104 = icmp sgt i32 %98, -1, !dbg !4602
  br i1 %104, label %112, label %105, !dbg !4602

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4602
  store i32 %106, ptr %7, align 8, !dbg !4602
  %107 = icmp ult i32 %98, -7, !dbg !4602
  br i1 %107, label %108, label %112, !dbg !4602

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4602
  %110 = sext i32 %98 to i64, !dbg !4602
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4602
  br label %116, !dbg !4602

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4602
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4602
  store ptr %115, ptr %4, align 8, !dbg !4602
  br label %116, !dbg !4602

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4602
  %119 = load ptr, ptr %118, align 8, !dbg !4602
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4608
  store ptr %119, ptr %120, align 8, !dbg !4605, !tbaa !1024
  %121 = icmp eq ptr %119, null, !dbg !4606
  br i1 %121, label %197, label %122, !dbg !4607

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !4595, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.value(metadata i64 6, metadata !4595, metadata !DIExpression()), !dbg !4598
  %123 = icmp sgt i32 %117, -1, !dbg !4602
  br i1 %123, label %131, label %124, !dbg !4602

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4602
  store i32 %125, ptr %7, align 8, !dbg !4602
  %126 = icmp ult i32 %117, -7, !dbg !4602
  br i1 %126, label %127, label %131, !dbg !4602

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4602
  %129 = sext i32 %117 to i64, !dbg !4602
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4602
  br label %135, !dbg !4602

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4602
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4602
  store ptr %134, ptr %4, align 8, !dbg !4602
  br label %135, !dbg !4602

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4602
  %138 = load ptr, ptr %137, align 8, !dbg !4602
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4608
  store ptr %138, ptr %139, align 8, !dbg !4605, !tbaa !1024
  %140 = icmp eq ptr %138, null, !dbg !4606
  br i1 %140, label %197, label %141, !dbg !4607

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !4595, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.value(metadata i64 7, metadata !4595, metadata !DIExpression()), !dbg !4598
  %142 = icmp sgt i32 %136, -1, !dbg !4602
  br i1 %142, label %150, label %143, !dbg !4602

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4602
  store i32 %144, ptr %7, align 8, !dbg !4602
  %145 = icmp ult i32 %136, -7, !dbg !4602
  br i1 %145, label %146, label %150, !dbg !4602

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4602
  %148 = sext i32 %136 to i64, !dbg !4602
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4602
  br label %154, !dbg !4602

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4602
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4602
  store ptr %153, ptr %4, align 8, !dbg !4602
  br label %154, !dbg !4602

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4602
  %157 = load ptr, ptr %156, align 8, !dbg !4602
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4608
  store ptr %157, ptr %158, align 8, !dbg !4605, !tbaa !1024
  %159 = icmp eq ptr %157, null, !dbg !4606
  br i1 %159, label %197, label %160, !dbg !4607

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !4595, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.value(metadata i64 8, metadata !4595, metadata !DIExpression()), !dbg !4598
  %161 = icmp sgt i32 %155, -1, !dbg !4602
  br i1 %161, label %169, label %162, !dbg !4602

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4602
  store i32 %163, ptr %7, align 8, !dbg !4602
  %164 = icmp ult i32 %155, -7, !dbg !4602
  br i1 %164, label %165, label %169, !dbg !4602

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4602
  %167 = sext i32 %155 to i64, !dbg !4602
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4602
  br label %173, !dbg !4602

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4602
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4602
  store ptr %172, ptr %4, align 8, !dbg !4602
  br label %173, !dbg !4602

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4602
  %176 = load ptr, ptr %175, align 8, !dbg !4602
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4608
  store ptr %176, ptr %177, align 8, !dbg !4605, !tbaa !1024
  %178 = icmp eq ptr %176, null, !dbg !4606
  br i1 %178, label %197, label %179, !dbg !4607

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !4595, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.value(metadata i64 9, metadata !4595, metadata !DIExpression()), !dbg !4598
  %180 = icmp sgt i32 %174, -1, !dbg !4602
  br i1 %180, label %188, label %181, !dbg !4602

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4602
  store i32 %182, ptr %7, align 8, !dbg !4602
  %183 = icmp ult i32 %174, -7, !dbg !4602
  br i1 %183, label %184, label %188, !dbg !4602

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4602
  %186 = sext i32 %174 to i64, !dbg !4602
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4602
  br label %191, !dbg !4602

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4602
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4602
  store ptr %190, ptr %4, align 8, !dbg !4602
  br label %191, !dbg !4602

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4602
  %193 = load ptr, ptr %192, align 8, !dbg !4602
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4608
  store ptr %193, ptr %194, align 8, !dbg !4605, !tbaa !1024
  %195 = icmp eq ptr %193, null, !dbg !4606
  %196 = select i1 %195, i64 9, i64 10, !dbg !4607
  br label %197, !dbg !4607

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4609
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4610
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #41, !dbg !4611
  ret void, !dbg !4611
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4612 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4616, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata ptr %1, metadata !4617, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata ptr %2, metadata !4618, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata ptr %3, metadata !4619, metadata !DIExpression()), !dbg !4621
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #41, !dbg !4622
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4620, metadata !DIExpression()), !dbg !4623
  call void @llvm.va_start(ptr nonnull %5), !dbg !4624
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #41, !dbg !4625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4625, !tbaa.struct !2288
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4625
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #41, !dbg !4625
  call void @llvm.va_end(ptr nonnull %5), !dbg !4626
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #41, !dbg !4627
  ret void, !dbg !4627
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4628 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4629, !tbaa !1024
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.146, ptr noundef %1), !dbg !4629
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.17.163, i32 noundef 5) #41, !dbg !4630
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.164) #41, !dbg !4630
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.19.165, i32 noundef 5) #41, !dbg !4631
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.166, ptr noundef nonnull @.str.21.167) #41, !dbg !4631
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.144, ptr noundef nonnull @.str.22.168, i32 noundef 5) #41, !dbg !4632
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.169) #41, !dbg !4632
  ret void, !dbg !4633
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4634 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4639, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata i64 %1, metadata !4640, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata i64 %2, metadata !4641, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata ptr %0, metadata !4643, metadata !DIExpression()), !dbg !4648
  call void @llvm.dbg.value(metadata i64 %1, metadata !4646, metadata !DIExpression()), !dbg !4648
  call void @llvm.dbg.value(metadata i64 %2, metadata !4647, metadata !DIExpression()), !dbg !4648
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4650
  call void @llvm.dbg.value(metadata ptr %4, metadata !4651, metadata !DIExpression()), !dbg !4656
  %5 = icmp eq ptr %4, null, !dbg !4658
  br i1 %5, label %6, label %7, !dbg !4660

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4661
  unreachable, !dbg !4661

7:                                                ; preds = %3
  ret ptr %4, !dbg !4662
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !4644 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4643, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata i64 %1, metadata !4646, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata i64 %2, metadata !4647, metadata !DIExpression()), !dbg !4663
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4664
  call void @llvm.dbg.value(metadata ptr %4, metadata !4651, metadata !DIExpression()), !dbg !4665
  %5 = icmp eq ptr %4, null, !dbg !4667
  br i1 %5, label %6, label %7, !dbg !4668

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4669
  unreachable, !dbg !4669

7:                                                ; preds = %3
  ret ptr %4, !dbg !4670
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4671 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4673, metadata !DIExpression()), !dbg !4674
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4675
  call void @llvm.dbg.value(metadata ptr %2, metadata !4651, metadata !DIExpression()), !dbg !4676
  %3 = icmp eq ptr %2, null, !dbg !4678
  br i1 %3, label %4, label %5, !dbg !4679

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4680
  unreachable, !dbg !4680

5:                                                ; preds = %1
  ret ptr %2, !dbg !4681
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4682 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4686, metadata !DIExpression()), !dbg !4687
  call void @llvm.dbg.value(metadata i64 %0, metadata !4688, metadata !DIExpression()), !dbg !4692
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4694
  call void @llvm.dbg.value(metadata ptr %2, metadata !4651, metadata !DIExpression()), !dbg !4695
  %3 = icmp eq ptr %2, null, !dbg !4697
  br i1 %3, label %4, label %5, !dbg !4698

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4699
  unreachable, !dbg !4699

5:                                                ; preds = %1
  ret ptr %2, !dbg !4700
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4701 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4705, metadata !DIExpression()), !dbg !4706
  call void @llvm.dbg.value(metadata i64 %0, metadata !4673, metadata !DIExpression()), !dbg !4707
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4709
  call void @llvm.dbg.value(metadata ptr %2, metadata !4651, metadata !DIExpression()), !dbg !4710
  %3 = icmp eq ptr %2, null, !dbg !4712
  br i1 %3, label %4, label %5, !dbg !4713

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4714
  unreachable, !dbg !4714

5:                                                ; preds = %1
  ret ptr %2, !dbg !4715
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4716 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4718, metadata !DIExpression()), !dbg !4720
  call void @llvm.dbg.value(metadata i64 %1, metadata !4719, metadata !DIExpression()), !dbg !4720
  call void @llvm.dbg.value(metadata ptr %0, metadata !4721, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.value(metadata i64 %1, metadata !4724, metadata !DIExpression()), !dbg !4725
  %3 = icmp eq i64 %1, 0, !dbg !4727
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4727
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !4728
  call void @llvm.dbg.value(metadata ptr %5, metadata !4651, metadata !DIExpression()), !dbg !4729
  %6 = icmp eq ptr %5, null, !dbg !4731
  br i1 %6, label %7, label %8, !dbg !4732

7:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4733
  unreachable, !dbg !4733

8:                                                ; preds = %2
  ret ptr %5, !dbg !4734
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4735 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4739, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i64 %1, metadata !4740, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata ptr %0, metadata !4742, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i64 %1, metadata !4745, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata ptr %0, metadata !4721, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.value(metadata i64 %1, metadata !4724, metadata !DIExpression()), !dbg !4748
  %3 = icmp eq i64 %1, 0, !dbg !4750
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4750
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !4751
  call void @llvm.dbg.value(metadata ptr %5, metadata !4651, metadata !DIExpression()), !dbg !4752
  %6 = icmp eq ptr %5, null, !dbg !4754
  br i1 %6, label %7, label %8, !dbg !4755

7:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4756
  unreachable, !dbg !4756

8:                                                ; preds = %2
  ret ptr %5, !dbg !4757
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !4758 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4762, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata i64 %1, metadata !4763, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata i64 %2, metadata !4764, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata ptr %0, metadata !4766, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i64 %1, metadata !4769, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i64 %2, metadata !4770, metadata !DIExpression()), !dbg !4771
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4773
  call void @llvm.dbg.value(metadata ptr %4, metadata !4651, metadata !DIExpression()), !dbg !4774
  %5 = icmp eq ptr %4, null, !dbg !4776
  br i1 %5, label %6, label %7, !dbg !4777

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4778
  unreachable, !dbg !4778

7:                                                ; preds = %3
  ret ptr %4, !dbg !4779
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4780 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4784, metadata !DIExpression()), !dbg !4786
  call void @llvm.dbg.value(metadata i64 %1, metadata !4785, metadata !DIExpression()), !dbg !4786
  call void @llvm.dbg.value(metadata ptr null, metadata !4643, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata i64 %0, metadata !4646, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata i64 %1, metadata !4647, metadata !DIExpression()), !dbg !4787
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #41, !dbg !4789
  call void @llvm.dbg.value(metadata ptr %3, metadata !4651, metadata !DIExpression()), !dbg !4790
  %4 = icmp eq ptr %3, null, !dbg !4792
  br i1 %4, label %5, label %6, !dbg !4793

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4794
  unreachable, !dbg !4794

6:                                                ; preds = %2
  ret ptr %3, !dbg !4795
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4796 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4800, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i64 %1, metadata !4801, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata ptr null, metadata !4762, metadata !DIExpression()), !dbg !4803
  call void @llvm.dbg.value(metadata i64 %0, metadata !4763, metadata !DIExpression()), !dbg !4803
  call void @llvm.dbg.value(metadata i64 %1, metadata !4764, metadata !DIExpression()), !dbg !4803
  call void @llvm.dbg.value(metadata ptr null, metadata !4766, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.value(metadata i64 %0, metadata !4769, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.value(metadata i64 %1, metadata !4770, metadata !DIExpression()), !dbg !4805
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #41, !dbg !4807
  call void @llvm.dbg.value(metadata ptr %3, metadata !4651, metadata !DIExpression()), !dbg !4808
  %4 = icmp eq ptr %3, null, !dbg !4810
  br i1 %4, label %5, label %6, !dbg !4811

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4812
  unreachable, !dbg !4812

6:                                                ; preds = %2
  ret ptr %3, !dbg !4813
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4814 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4818, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata ptr %1, metadata !4819, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata ptr %0, metadata !960, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.value(metadata ptr %1, metadata !961, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.value(metadata i64 1, metadata !962, metadata !DIExpression()), !dbg !4821
  %3 = load i64, ptr %1, align 8, !dbg !4823, !tbaa !1299
  call void @llvm.dbg.value(metadata i64 %3, metadata !963, metadata !DIExpression()), !dbg !4821
  %4 = icmp eq ptr %0, null, !dbg !4824
  br i1 %4, label %5, label %8, !dbg !4826

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4827
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4830
  br label %15, !dbg !4830

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4831
  %10 = add nuw i64 %9, 1, !dbg !4831
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4831
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4831
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4831
  call void @llvm.dbg.value(metadata i64 %13, metadata !963, metadata !DIExpression()), !dbg !4821
  br i1 %12, label %14, label %15, !dbg !4834

14:                                               ; preds = %8
  tail call void @xalloc_die() #43, !dbg !4835
  unreachable, !dbg !4835

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4821
  call void @llvm.dbg.value(metadata i64 %16, metadata !963, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.value(metadata ptr %0, metadata !4643, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata i64 %16, metadata !4646, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata i64 1, metadata !4647, metadata !DIExpression()), !dbg !4836
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #41, !dbg !4838
  call void @llvm.dbg.value(metadata ptr %17, metadata !4651, metadata !DIExpression()), !dbg !4839
  %18 = icmp eq ptr %17, null, !dbg !4841
  br i1 %18, label %19, label %20, !dbg !4842

19:                                               ; preds = %15
  tail call void @xalloc_die() #43, !dbg !4843
  unreachable, !dbg !4843

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !960, metadata !DIExpression()), !dbg !4821
  store i64 %16, ptr %1, align 8, !dbg !4844, !tbaa !1299
  ret ptr %17, !dbg !4845
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !955 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !960, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata ptr %1, metadata !961, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata i64 %2, metadata !962, metadata !DIExpression()), !dbg !4846
  %4 = load i64, ptr %1, align 8, !dbg !4847, !tbaa !1299
  call void @llvm.dbg.value(metadata i64 %4, metadata !963, metadata !DIExpression()), !dbg !4846
  %5 = icmp eq ptr %0, null, !dbg !4848
  br i1 %5, label %6, label %13, !dbg !4849

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4850
  br i1 %7, label %8, label %20, !dbg !4851

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4852
  call void @llvm.dbg.value(metadata i64 %9, metadata !963, metadata !DIExpression()), !dbg !4846
  %10 = icmp ugt i64 %2, 128, !dbg !4854
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4855
  call void @llvm.dbg.value(metadata i64 %12, metadata !963, metadata !DIExpression()), !dbg !4846
  br label %20, !dbg !4856

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4857
  %15 = add nuw i64 %14, 1, !dbg !4857
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4857
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4857
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4857
  call void @llvm.dbg.value(metadata i64 %18, metadata !963, metadata !DIExpression()), !dbg !4846
  br i1 %17, label %19, label %20, !dbg !4858

19:                                               ; preds = %13
  tail call void @xalloc_die() #43, !dbg !4859
  unreachable, !dbg !4859

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4846
  call void @llvm.dbg.value(metadata i64 %21, metadata !963, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata ptr %0, metadata !4643, metadata !DIExpression()), !dbg !4860
  call void @llvm.dbg.value(metadata i64 %21, metadata !4646, metadata !DIExpression()), !dbg !4860
  call void @llvm.dbg.value(metadata i64 %2, metadata !4647, metadata !DIExpression()), !dbg !4860
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #41, !dbg !4862
  call void @llvm.dbg.value(metadata ptr %22, metadata !4651, metadata !DIExpression()), !dbg !4863
  %23 = icmp eq ptr %22, null, !dbg !4865
  br i1 %23, label %24, label %25, !dbg !4866

24:                                               ; preds = %20
  tail call void @xalloc_die() #43, !dbg !4867
  unreachable, !dbg !4867

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !960, metadata !DIExpression()), !dbg !4846
  store i64 %21, ptr %1, align 8, !dbg !4868, !tbaa !1299
  ret ptr %22, !dbg !4869
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !967 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !972, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata ptr %1, metadata !973, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata i64 %2, metadata !974, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata i64 %3, metadata !975, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata i64 %4, metadata !976, metadata !DIExpression()), !dbg !4870
  %6 = load i64, ptr %1, align 8, !dbg !4871, !tbaa !1299
  call void @llvm.dbg.value(metadata i64 %6, metadata !977, metadata !DIExpression()), !dbg !4870
  %7 = ashr i64 %6, 1, !dbg !4872
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4872
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4872
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4872
  call void @llvm.dbg.value(metadata i64 %10, metadata !978, metadata !DIExpression()), !dbg !4870
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4874
  call void @llvm.dbg.value(metadata i64 %11, metadata !978, metadata !DIExpression()), !dbg !4870
  %12 = icmp sgt i64 %3, -1, !dbg !4875
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4877
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4877
  call void @llvm.dbg.value(metadata i64 %15, metadata !978, metadata !DIExpression()), !dbg !4870
  %16 = icmp slt i64 %4, 0, !dbg !4878
  br i1 %16, label %17, label %30, !dbg !4878

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4878
  br i1 %18, label %19, label %24, !dbg !4878

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4878
  %21 = udiv i64 9223372036854775807, %20, !dbg !4878
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4878
  br i1 %23, label %46, label %43, !dbg !4878

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4878
  br i1 %25, label %43, label %26, !dbg !4878

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4878
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4878
  %29 = icmp ult i64 %28, %15, !dbg !4878
  br i1 %29, label %46, label %43, !dbg !4878

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4878
  br i1 %31, label %43, label %32, !dbg !4878

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4878
  br i1 %33, label %34, label %40, !dbg !4878

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4878
  br i1 %35, label %43, label %36, !dbg !4878

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4878
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4878
  %39 = icmp ult i64 %38, %4, !dbg !4878
  br i1 %39, label %46, label %43, !dbg !4878

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4878
  br i1 %42, label %46, label %43, !dbg !4878

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !979, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4870
  %44 = mul i64 %15, %4, !dbg !4878
  call void @llvm.dbg.value(metadata i64 %44, metadata !979, metadata !DIExpression()), !dbg !4870
  %45 = icmp slt i64 %44, 128, !dbg !4878
  br i1 %45, label %46, label %52, !dbg !4878

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !980, metadata !DIExpression()), !dbg !4870
  %48 = sdiv i64 %47, %4, !dbg !4879
  call void @llvm.dbg.value(metadata i64 %48, metadata !978, metadata !DIExpression()), !dbg !4870
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4882
  call void @llvm.dbg.value(metadata i64 %51, metadata !979, metadata !DIExpression()), !dbg !4870
  br label %52, !dbg !4883

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4870
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4870
  call void @llvm.dbg.value(metadata i64 %54, metadata !979, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata i64 %53, metadata !978, metadata !DIExpression()), !dbg !4870
  %55 = icmp eq ptr %0, null, !dbg !4884
  br i1 %55, label %56, label %57, !dbg !4886

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !4887, !tbaa !1299
  br label %57, !dbg !4888

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4889
  %59 = icmp slt i64 %58, %2, !dbg !4891
  br i1 %59, label %60, label %97, !dbg !4892

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4893
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4893
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4893
  call void @llvm.dbg.value(metadata i64 %63, metadata !978, metadata !DIExpression()), !dbg !4870
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !4894
  br i1 %66, label %96, label %67, !dbg !4894

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !4895

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4895
  br i1 %69, label %70, label %75, !dbg !4895

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4895
  %72 = udiv i64 9223372036854775807, %71, !dbg !4895
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4895
  br i1 %74, label %96, label %94, !dbg !4895

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4895
  br i1 %76, label %94, label %77, !dbg !4895

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4895
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4895
  %80 = icmp ult i64 %79, %63, !dbg !4895
  br i1 %80, label %96, label %94, !dbg !4895

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4895
  br i1 %82, label %94, label %83, !dbg !4895

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4895
  br i1 %84, label %85, label %91, !dbg !4895

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4895
  br i1 %86, label %94, label %87, !dbg !4895

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4895
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4895
  %90 = icmp ult i64 %89, %4, !dbg !4895
  br i1 %90, label %96, label %94, !dbg !4895

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !4895
  br i1 %93, label %96, label %94, !dbg !4895

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !979, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4870
  %95 = mul i64 %63, %4, !dbg !4895
  call void @llvm.dbg.value(metadata i64 %95, metadata !979, metadata !DIExpression()), !dbg !4870
  br label %97, !dbg !4896

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #43, !dbg !4897
  unreachable, !dbg !4897

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4870
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4870
  call void @llvm.dbg.value(metadata i64 %99, metadata !979, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata i64 %98, metadata !978, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata ptr %0, metadata !4718, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata i64 %99, metadata !4719, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata ptr %0, metadata !4721, metadata !DIExpression()), !dbg !4900
  call void @llvm.dbg.value(metadata i64 %99, metadata !4724, metadata !DIExpression()), !dbg !4900
  %100 = icmp eq i64 %99, 0, !dbg !4902
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4902
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #46, !dbg !4903
  call void @llvm.dbg.value(metadata ptr %102, metadata !4651, metadata !DIExpression()), !dbg !4904
  %103 = icmp eq ptr %102, null, !dbg !4906
  br i1 %103, label %104, label %105, !dbg !4907

104:                                              ; preds = %97
  tail call void @xalloc_die() #43, !dbg !4908
  unreachable, !dbg !4908

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !972, metadata !DIExpression()), !dbg !4870
  store i64 %98, ptr %1, align 8, !dbg !4909, !tbaa !1299
  ret ptr %102, !dbg !4910
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4911 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4913, metadata !DIExpression()), !dbg !4914
  call void @llvm.dbg.value(metadata i64 %0, metadata !4915, metadata !DIExpression()), !dbg !4919
  call void @llvm.dbg.value(metadata i64 1, metadata !4918, metadata !DIExpression()), !dbg !4919
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #49, !dbg !4921
  call void @llvm.dbg.value(metadata ptr %2, metadata !4651, metadata !DIExpression()), !dbg !4922
  %3 = icmp eq ptr %2, null, !dbg !4924
  br i1 %3, label %4, label %5, !dbg !4925

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4926
  unreachable, !dbg !4926

5:                                                ; preds = %1
  ret ptr %2, !dbg !4927
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4928 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4916 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4915, metadata !DIExpression()), !dbg !4929
  call void @llvm.dbg.value(metadata i64 %1, metadata !4918, metadata !DIExpression()), !dbg !4929
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #49, !dbg !4930
  call void @llvm.dbg.value(metadata ptr %3, metadata !4651, metadata !DIExpression()), !dbg !4931
  %4 = icmp eq ptr %3, null, !dbg !4933
  br i1 %4, label %5, label %6, !dbg !4934

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4935
  unreachable, !dbg !4935

6:                                                ; preds = %2
  ret ptr %3, !dbg !4936
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4937 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4939, metadata !DIExpression()), !dbg !4940
  call void @llvm.dbg.value(metadata i64 %0, metadata !4941, metadata !DIExpression()), !dbg !4945
  call void @llvm.dbg.value(metadata i64 1, metadata !4944, metadata !DIExpression()), !dbg !4945
  call void @llvm.dbg.value(metadata i64 %0, metadata !4947, metadata !DIExpression()), !dbg !4951
  call void @llvm.dbg.value(metadata i64 1, metadata !4950, metadata !DIExpression()), !dbg !4951
  call void @llvm.dbg.value(metadata i64 %0, metadata !4947, metadata !DIExpression()), !dbg !4951
  call void @llvm.dbg.value(metadata i64 1, metadata !4950, metadata !DIExpression()), !dbg !4951
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #49, !dbg !4953
  call void @llvm.dbg.value(metadata ptr %2, metadata !4651, metadata !DIExpression()), !dbg !4954
  %3 = icmp eq ptr %2, null, !dbg !4956
  br i1 %3, label %4, label %5, !dbg !4957

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4958
  unreachable, !dbg !4958

5:                                                ; preds = %1
  ret ptr %2, !dbg !4959
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4942 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4941, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata i64 %1, metadata !4944, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata i64 %0, metadata !4947, metadata !DIExpression()), !dbg !4961
  call void @llvm.dbg.value(metadata i64 %1, metadata !4950, metadata !DIExpression()), !dbg !4961
  call void @llvm.dbg.value(metadata i64 %0, metadata !4947, metadata !DIExpression()), !dbg !4961
  call void @llvm.dbg.value(metadata i64 %1, metadata !4950, metadata !DIExpression()), !dbg !4961
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #49, !dbg !4963
  call void @llvm.dbg.value(metadata ptr %3, metadata !4651, metadata !DIExpression()), !dbg !4964
  %4 = icmp eq ptr %3, null, !dbg !4966
  br i1 %4, label %5, label %6, !dbg !4967

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4968
  unreachable, !dbg !4968

6:                                                ; preds = %2
  ret ptr %3, !dbg !4969
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4970 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4974, metadata !DIExpression()), !dbg !4976
  call void @llvm.dbg.value(metadata i64 %1, metadata !4975, metadata !DIExpression()), !dbg !4976
  call void @llvm.dbg.value(metadata i64 %1, metadata !4673, metadata !DIExpression()), !dbg !4977
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !4979
  call void @llvm.dbg.value(metadata ptr %3, metadata !4651, metadata !DIExpression()), !dbg !4980
  %4 = icmp eq ptr %3, null, !dbg !4982
  br i1 %4, label %5, label %6, !dbg !4983

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4984
  unreachable, !dbg !4984

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4985, metadata !DIExpression()), !dbg !4990
  call void @llvm.dbg.value(metadata ptr %0, metadata !4988, metadata !DIExpression()), !dbg !4990
  call void @llvm.dbg.value(metadata i64 %1, metadata !4989, metadata !DIExpression()), !dbg !4990
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4992
  ret ptr %3, !dbg !4993
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4994 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4998, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.value(metadata i64 %1, metadata !4999, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.value(metadata i64 %1, metadata !4686, metadata !DIExpression()), !dbg !5001
  call void @llvm.dbg.value(metadata i64 %1, metadata !4688, metadata !DIExpression()), !dbg !5003
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !5005
  call void @llvm.dbg.value(metadata ptr %3, metadata !4651, metadata !DIExpression()), !dbg !5006
  %4 = icmp eq ptr %3, null, !dbg !5008
  br i1 %4, label %5, label %6, !dbg !5009

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !5010
  unreachable, !dbg !5010

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4985, metadata !DIExpression()), !dbg !5011
  call void @llvm.dbg.value(metadata ptr %0, metadata !4988, metadata !DIExpression()), !dbg !5011
  call void @llvm.dbg.value(metadata i64 %1, metadata !4989, metadata !DIExpression()), !dbg !5011
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !5013
  ret ptr %3, !dbg !5014
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !5015 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5019, metadata !DIExpression()), !dbg !5022
  call void @llvm.dbg.value(metadata i64 %1, metadata !5020, metadata !DIExpression()), !dbg !5022
  %3 = add nsw i64 %1, 1, !dbg !5023
  call void @llvm.dbg.value(metadata i64 %3, metadata !4686, metadata !DIExpression()), !dbg !5024
  call void @llvm.dbg.value(metadata i64 %3, metadata !4688, metadata !DIExpression()), !dbg !5026
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !5028
  call void @llvm.dbg.value(metadata ptr %4, metadata !4651, metadata !DIExpression()), !dbg !5029
  %5 = icmp eq ptr %4, null, !dbg !5031
  br i1 %5, label %6, label %7, !dbg !5032

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !5033
  unreachable, !dbg !5033

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !5021, metadata !DIExpression()), !dbg !5022
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !5034
  store i8 0, ptr %8, align 1, !dbg !5035, !tbaa !1110
  call void @llvm.dbg.value(metadata ptr %4, metadata !4985, metadata !DIExpression()), !dbg !5036
  call void @llvm.dbg.value(metadata ptr %0, metadata !4988, metadata !DIExpression()), !dbg !5036
  call void @llvm.dbg.value(metadata i64 %1, metadata !4989, metadata !DIExpression()), !dbg !5036
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !5038
  ret ptr %4, !dbg !5039
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !5040 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5042, metadata !DIExpression()), !dbg !5043
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #42, !dbg !5044
  %3 = add i64 %2, 1, !dbg !5045
  call void @llvm.dbg.value(metadata ptr %0, metadata !4974, metadata !DIExpression()), !dbg !5046
  call void @llvm.dbg.value(metadata i64 %3, metadata !4975, metadata !DIExpression()), !dbg !5046
  call void @llvm.dbg.value(metadata i64 %3, metadata !4673, metadata !DIExpression()), !dbg !5048
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !5050
  call void @llvm.dbg.value(metadata ptr %4, metadata !4651, metadata !DIExpression()), !dbg !5051
  %5 = icmp eq ptr %4, null, !dbg !5053
  br i1 %5, label %6, label %7, !dbg !5054

6:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !5055
  unreachable, !dbg !5055

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4985, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata ptr %0, metadata !4988, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata i64 %3, metadata !4989, metadata !DIExpression()), !dbg !5056
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #41, !dbg !5058
  ret ptr %4, !dbg !5059
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !5060 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !5065, !tbaa !1101
  call void @llvm.dbg.value(metadata i32 %1, metadata !5062, metadata !DIExpression()), !dbg !5066
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.184, ptr noundef nonnull @.str.2.185, i32 noundef 5) #41, !dbg !5065
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.186, ptr noundef %2) #41, !dbg !5065
  %3 = icmp eq i32 %1, 0, !dbg !5065
  tail call void @llvm.assume(i1 %3), !dbg !5065
  tail call void @abort() #43, !dbg !5067
  unreachable, !dbg !5067
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #30

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !5068 {
  %3 = alloca [81 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %0, metadata !5106, metadata !DIExpression()), !dbg !5130
  call void @llvm.dbg.value(metadata ptr %1, metadata !5107, metadata !DIExpression()), !dbg !5130
  call void @llvm.dbg.value(metadata i32 0, metadata !5108, metadata !DIExpression()), !dbg !5130
  call void @llvm.dbg.value(metadata i32 0, metadata !5109, metadata !DIExpression()), !dbg !5130
  call void @llvm.dbg.value(metadata i8 0, metadata !5110, metadata !DIExpression()), !dbg !5130
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #41, !dbg !5131
  call void @llvm.dbg.declare(metadata ptr %3, metadata !5111, metadata !DIExpression()), !dbg !5132
  call void @llvm.dbg.value(metadata ptr %1, metadata !5115, metadata !DIExpression()), !dbg !5133
  call void @llvm.dbg.value(metadata ptr %3, metadata !5117, metadata !DIExpression()), !dbg !5133
  br label %4, !dbg !5134

4:                                                ; preds = %43, %2
  %5 = phi i1 [ false, %2 ], [ %44, %43 ]
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !5133
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !5130
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !5135
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !5130
  call void @llvm.dbg.value(metadata i32 %9, metadata !5108, metadata !DIExpression()), !dbg !5130
  call void @llvm.dbg.value(metadata i32 %8, metadata !5109, metadata !DIExpression()), !dbg !5130
  call void @llvm.dbg.value(metadata ptr %10, metadata !5117, metadata !DIExpression()), !dbg !5133
  call void @llvm.dbg.value(metadata ptr %6, metadata !5115, metadata !DIExpression()), !dbg !5133
  call void @llvm.dbg.value(metadata i8 poison, metadata !5110, metadata !DIExpression()), !dbg !5130
  %11 = load i8, ptr %6, align 1, !dbg !5136, !tbaa !1110
  switch i8 %11, label %38 [
    i8 0, label %49
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !5137

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !5108, metadata !DIExpression()), !dbg !5130
  %13 = icmp slt i64 %7, 80, !dbg !5138
  br i1 %13, label %14, label %43, !dbg !5141

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !5142
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !5117, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5133
  store i8 114, ptr %10, align 1, !dbg !5143, !tbaa !1110
  br label %43, !dbg !5144

16:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !5108, metadata !DIExpression()), !dbg !5130
  %17 = or i32 %8, 576, !dbg !5145
  call void @llvm.dbg.value(metadata i32 %17, metadata !5109, metadata !DIExpression()), !dbg !5130
  %18 = icmp slt i64 %7, 80, !dbg !5146
  br i1 %18, label %19, label %43, !dbg !5148

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !5149
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !5117, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5133
  store i8 119, ptr %10, align 1, !dbg !5150, !tbaa !1110
  br label %43, !dbg !5151

21:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !5108, metadata !DIExpression()), !dbg !5130
  %22 = or i32 %8, 1088, !dbg !5152
  call void @llvm.dbg.value(metadata i32 %22, metadata !5109, metadata !DIExpression()), !dbg !5130
  %23 = icmp slt i64 %7, 80, !dbg !5153
  br i1 %23, label %24, label %43, !dbg !5155

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !5156
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !5117, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5133
  store i8 97, ptr %10, align 1, !dbg !5157, !tbaa !1110
  br label %43, !dbg !5158

26:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %8, metadata !5109, metadata !DIExpression()), !dbg !5130
  %27 = icmp slt i64 %7, 80, !dbg !5159
  br i1 %27, label %28, label %43, !dbg !5161

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !5162
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !5117, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5133
  store i8 98, ptr %10, align 1, !dbg !5163, !tbaa !1110
  br label %43, !dbg !5164

30:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 2, metadata !5108, metadata !DIExpression()), !dbg !5130
  %31 = icmp slt i64 %7, 80, !dbg !5165
  br i1 %31, label %32, label %43, !dbg !5167

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !5168
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !5117, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5133
  store i8 43, ptr %10, align 1, !dbg !5169, !tbaa !1110
  br label %43, !dbg !5170

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !5171
  call void @llvm.dbg.value(metadata i32 %35, metadata !5109, metadata !DIExpression()), !dbg !5130
  call void @llvm.dbg.value(metadata i8 1, metadata !5110, metadata !DIExpression()), !dbg !5130
  br label %43, !dbg !5172

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !5173
  call void @llvm.dbg.value(metadata i32 %37, metadata !5109, metadata !DIExpression()), !dbg !5130
  call void @llvm.dbg.value(metadata i8 1, metadata !5110, metadata !DIExpression()), !dbg !5130
  br label %43, !dbg !5174

38:                                               ; preds = %4
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #42, !dbg !5175
  call void @llvm.dbg.value(metadata i64 %39, metadata !5118, metadata !DIExpression()), !dbg !5176
  %40 = sub nsw i64 80, %7, !dbg !5177
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !5179
  call void @llvm.dbg.value(metadata i64 %41, metadata !5118, metadata !DIExpression()), !dbg !5176
  call void @llvm.dbg.value(metadata ptr %10, metadata !5180, metadata !DIExpression()), !dbg !5185
  call void @llvm.dbg.value(metadata ptr %6, metadata !5183, metadata !DIExpression()), !dbg !5185
  call void @llvm.dbg.value(metadata i64 %41, metadata !5184, metadata !DIExpression()), !dbg !5185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %10, ptr noundef nonnull align 1 %6, i64 noundef %41, i1 noundef false) #41, !dbg !5187
  %42 = getelementptr inbounds i8, ptr %10, i64 %41, !dbg !5188
  call void @llvm.dbg.value(metadata ptr %42, metadata !5117, metadata !DIExpression()), !dbg !5133
  br label %49, !dbg !5189

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i1 [ true, %36 ], [ true, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ]
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !5130
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !5130
  call void @llvm.dbg.value(metadata i32 %47, metadata !5108, metadata !DIExpression()), !dbg !5130
  call void @llvm.dbg.value(metadata i32 %46, metadata !5109, metadata !DIExpression()), !dbg !5130
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !5117, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5133
  call void @llvm.dbg.value(metadata i8 poison, metadata !5110, metadata !DIExpression()), !dbg !5130
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !5190
  call void @llvm.dbg.value(metadata ptr %48, metadata !5115, metadata !DIExpression()), !dbg !5133
  br label %4, !dbg !5191, !llvm.loop !5192

49:                                               ; preds = %4, %38
  %50 = phi ptr [ %42, %38 ], [ %10, %4 ], !dbg !5133
  call void @llvm.dbg.value(metadata ptr %50, metadata !5117, metadata !DIExpression()), !dbg !5133
  store i8 0, ptr %50, align 1, !dbg !5194, !tbaa !1110
  br i1 %5, label %51, label %62, !dbg !5195

51:                                               ; preds = %49
  %52 = or i32 %9, %8, !dbg !5196
  %53 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %52, i32 noundef 438) #41, !dbg !5197
  call void @llvm.dbg.value(metadata i32 %53, metadata !5123, metadata !DIExpression()), !dbg !5198
  %54 = icmp slt i32 %53, 0, !dbg !5199
  br i1 %54, label %64, label %55, !dbg !5201

55:                                               ; preds = %51
  %56 = call noalias ptr @fdopen(i32 noundef %53, ptr noundef nonnull %3) #41, !dbg !5202
  call void @llvm.dbg.value(metadata ptr %56, metadata !5126, metadata !DIExpression()), !dbg !5198
  %57 = icmp eq ptr %56, null, !dbg !5203
  br i1 %57, label %58, label %64, !dbg !5204

58:                                               ; preds = %55
  %59 = tail call ptr @__errno_location() #44, !dbg !5205
  %60 = load i32, ptr %59, align 4, !dbg !5205, !tbaa !1101
  call void @llvm.dbg.value(metadata i32 %60, metadata !5127, metadata !DIExpression()), !dbg !5206
  %61 = tail call i32 @close(i32 noundef %53) #41, !dbg !5207
  store i32 %60, ptr %59, align 4, !dbg !5208, !tbaa !1101
  br label %64, !dbg !5209

62:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !5210, metadata !DIExpression()), !dbg !5214
  call void @llvm.dbg.value(metadata ptr %1, metadata !5213, metadata !DIExpression()), !dbg !5214
  %63 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !5216
  br label %64, !dbg !5217

64:                                               ; preds = %51, %58, %55, %62
  %65 = phi ptr [ %63, %62 ], [ null, %51 ], [ null, %58 ], [ %56, %55 ], !dbg !5130
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #41, !dbg !5218
  ret ptr %65, !dbg !5218
}

; Function Attrs: nofree
declare !dbg !5219 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare !dbg !5222 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !5225 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !5226 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !5229 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5267, metadata !DIExpression()), !dbg !5272
  %2 = tail call i64 @__fpending(ptr noundef %0) #41, !dbg !5273
  call void @llvm.dbg.value(metadata i1 poison, metadata !5268, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5272
  call void @llvm.dbg.value(metadata ptr %0, metadata !5274, metadata !DIExpression()), !dbg !5277
  %3 = load i32, ptr %0, align 8, !dbg !5279, !tbaa !1636
  %4 = and i32 %3, 32, !dbg !5280
  %5 = icmp eq i32 %4, 0, !dbg !5280
  call void @llvm.dbg.value(metadata i1 %5, metadata !5270, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5272
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #41, !dbg !5281
  %7 = icmp eq i32 %6, 0, !dbg !5282
  call void @llvm.dbg.value(metadata i1 %7, metadata !5271, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5272
  br i1 %5, label %8, label %18, !dbg !5283

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5285
  call void @llvm.dbg.value(metadata i1 %9, metadata !5268, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5272
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5286
  %11 = xor i1 %7, true, !dbg !5286
  %12 = sext i1 %11 to i32, !dbg !5286
  br i1 %10, label %21, label %13, !dbg !5286

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #44, !dbg !5287
  %15 = load i32, ptr %14, align 4, !dbg !5287, !tbaa !1101
  %16 = icmp ne i32 %15, 9, !dbg !5288
  %17 = sext i1 %16 to i32, !dbg !5289
  br label %21, !dbg !5289

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5290

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #44, !dbg !5292
  store i32 0, ptr %20, align 4, !dbg !5294, !tbaa !1101
  br label %21, !dbg !5292

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5272
  ret i32 %22, !dbg !5295
}

; Function Attrs: nounwind
declare !dbg !5296 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @freadptr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #37 !dbg !5299 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5337, metadata !DIExpression()), !dbg !5340
  call void @llvm.dbg.value(metadata ptr %1, metadata !5338, metadata !DIExpression()), !dbg !5340
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !5341
  %4 = load ptr, ptr %3, align 8, !dbg !5341, !tbaa !1444
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !5343
  %6 = load ptr, ptr %5, align 8, !dbg !5343, !tbaa !2780
  %7 = icmp ugt ptr %4, %6, !dbg !5344
  br i1 %7, label %18, label %8, !dbg !5345

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !5346
  %10 = load ptr, ptr %9, align 8, !dbg !5346, !tbaa !1428
  %11 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !5347
  %12 = load ptr, ptr %11, align 8, !dbg !5347, !tbaa !1426
  call void @llvm.dbg.value(metadata !DIArgList(ptr %10, ptr %12), metadata !5339, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5340
  %13 = icmp eq ptr %10, %12, !dbg !5348
  br i1 %13, label %18, label %14, !dbg !5350

14:                                               ; preds = %8
  %15 = ptrtoint ptr %12 to i64, !dbg !5351
  call void @llvm.dbg.value(metadata !DIArgList(ptr %10, i64 %15), metadata !5339, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5340
  %16 = ptrtoint ptr %10 to i64, !dbg !5351
  call void @llvm.dbg.value(metadata !DIArgList(i64 %16, ptr %12), metadata !5339, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5340
  %17 = sub i64 %16, %15, !dbg !5351
  call void @llvm.dbg.value(metadata i64 %17, metadata !5339, metadata !DIExpression()), !dbg !5340
  store i64 %17, ptr %1, align 8, !dbg !5352, !tbaa !1299
  br label %18, !dbg !5353

18:                                               ; preds = %8, %2, %14
  %19 = phi ptr [ %12, %14 ], [ null, %2 ], [ null, %8 ], !dbg !5340
  ret ptr %19, !dbg !5354
}

; Function Attrs: nounwind uwtable
define dso_local i32 @freadseek(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !5355 {
  %3 = alloca i64, align 8
  %4 = alloca [4096 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %0, metadata !5393, metadata !DIExpression()), !dbg !5411
  call void @llvm.dbg.value(metadata i64 %1, metadata !5394, metadata !DIExpression()), !dbg !5411
  %5 = icmp eq i64 %1, 0, !dbg !5412
  br i1 %5, label %66, label %6, !dbg !5414

6:                                                ; preds = %2
  %7 = tail call i64 @freadahead(ptr noundef %0) #42, !dbg !5415
  call void @llvm.dbg.value(metadata i64 %7, metadata !5395, metadata !DIExpression()), !dbg !5411
  %8 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  br label %9, !dbg !5416

9:                                                ; preds = %40, %6
  %10 = phi i64 [ %7, %6 ], [ %41, %40 ], !dbg !5417
  %11 = phi i64 [ %1, %6 ], [ %43, %40 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !5394, metadata !DIExpression()), !dbg !5411
  call void @llvm.dbg.value(metadata i64 %10, metadata !5395, metadata !DIExpression()), !dbg !5411
  %12 = icmp eq i64 %10, 0, !dbg !5418
  br i1 %12, label %44, label %13, !dbg !5416

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #41, !dbg !5419
  call void @llvm.dbg.value(metadata ptr %3, metadata !5396, metadata !DIExpression(DW_OP_deref)), !dbg !5420
  %14 = call ptr @freadptr(ptr noundef %0, ptr noundef nonnull %3) #41, !dbg !5421
  %15 = icmp ne ptr %14, null, !dbg !5422
  %16 = load i64, ptr %3, align 8
  call void @llvm.dbg.value(metadata i64 %16, metadata !5396, metadata !DIExpression()), !dbg !5420
  %17 = icmp ne i64 %16, 0
  %18 = select i1 %15, i1 %17, i1 false, !dbg !5423
  br i1 %18, label %19, label %28, !dbg !5423

19:                                               ; preds = %13
  %20 = call i64 @llvm.umin.i64(i64 %16, i64 %11), !dbg !5424
  call void @llvm.dbg.value(metadata i64 %20, metadata !5398, metadata !DIExpression()), !dbg !5425
  call void @llvm.dbg.value(metadata ptr %0, metadata !5426, metadata !DIExpression()), !dbg !5432
  call void @llvm.dbg.value(metadata i64 %20, metadata !5431, metadata !DIExpression()), !dbg !5432
  %21 = load ptr, ptr %8, align 8, !dbg !5434, !tbaa !1426
  %22 = getelementptr inbounds i8, ptr %21, i64 %20, !dbg !5434
  store ptr %22, ptr %8, align 8, !dbg !5434, !tbaa !1426
  %23 = sub i64 %11, %20, !dbg !5435
  call void @llvm.dbg.value(metadata i64 %23, metadata !5394, metadata !DIExpression()), !dbg !5411
  %24 = icmp eq i64 %23, 0, !dbg !5436
  br i1 %24, label %39, label %25, !dbg !5438

25:                                               ; preds = %19
  %26 = sub i64 %10, %20, !dbg !5439
  call void @llvm.dbg.value(metadata i64 %26, metadata !5395, metadata !DIExpression()), !dbg !5411
  %27 = icmp eq i64 %26, 0, !dbg !5440
  br i1 %27, label %40, label %28

28:                                               ; preds = %25, %13
  %29 = phi i64 [ %26, %25 ], [ %10, %13 ], !dbg !5417
  %30 = phi i64 [ %23, %25 ], [ %11, %13 ]
  call void @llvm.dbg.value(metadata i64 %30, metadata !5394, metadata !DIExpression()), !dbg !5411
  call void @llvm.dbg.value(metadata i64 %29, metadata !5395, metadata !DIExpression()), !dbg !5411
  %31 = call i32 @fgetc(ptr noundef %0), !dbg !5442
  %32 = icmp eq i32 %31, -1, !dbg !5444
  br i1 %32, label %33, label %34, !dbg !5445

33:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i64 poison, metadata !5394, metadata !DIExpression()), !dbg !5411
  call void @llvm.dbg.value(metadata i64 poison, metadata !5395, metadata !DIExpression()), !dbg !5411
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41, !dbg !5446
  br label %62

34:                                               ; preds = %28
  %35 = add i64 %30, -1, !dbg !5447
  call void @llvm.dbg.value(metadata i64 %35, metadata !5394, metadata !DIExpression()), !dbg !5411
  %36 = icmp eq i64 %35, 0, !dbg !5448
  br i1 %36, label %39, label %37, !dbg !5450

37:                                               ; preds = %34
  %38 = add i64 %29, -1, !dbg !5451
  call void @llvm.dbg.value(metadata i64 %38, metadata !5395, metadata !DIExpression()), !dbg !5411
  br label %40, !dbg !5446

39:                                               ; preds = %34, %19
  call void @llvm.dbg.value(metadata i64 poison, metadata !5394, metadata !DIExpression()), !dbg !5411
  call void @llvm.dbg.value(metadata i64 poison, metadata !5395, metadata !DIExpression()), !dbg !5411
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41, !dbg !5446
  br label %66

40:                                               ; preds = %25, %37
  %41 = phi i64 [ %38, %37 ], [ 0, %25 ], !dbg !5411
  %42 = phi i32 [ 0, %37 ], [ 3, %25 ]
  %43 = phi i64 [ %35, %37 ], [ %23, %25 ], !dbg !5420
  call void @llvm.dbg.value(metadata i64 %43, metadata !5394, metadata !DIExpression()), !dbg !5411
  call void @llvm.dbg.value(metadata i64 %41, metadata !5395, metadata !DIExpression()), !dbg !5411
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41, !dbg !5446
  switch i32 %42, label %66 [
    i32 0, label %9
    i32 3, label %44
  ], !llvm.loop !5452

44:                                               ; preds = %40, %9
  %45 = phi i64 [ %43, %40 ], [ %11, %9 ]
  call void @llvm.dbg.value(metadata i64 %45, metadata !5394, metadata !DIExpression()), !dbg !5411
  %46 = call i32 @fileno(ptr noundef %0) #41, !dbg !5453
  call void @llvm.dbg.value(metadata i32 %46, metadata !5401, metadata !DIExpression()), !dbg !5411
  %47 = icmp sgt i32 %46, -1, !dbg !5454
  br i1 %47, label %49, label %48, !dbg !5455

48:                                               ; preds = %49, %44
  br label %54, !dbg !5456

49:                                               ; preds = %44
  %50 = call i64 @lseek(i32 noundef %46, i64 noundef 0, i32 noundef 1) #41, !dbg !5457
  %51 = icmp sgt i64 %50, -1, !dbg !5458
  br i1 %51, label %52, label %48, !dbg !5459

52:                                               ; preds = %49
  %53 = call i32 @rpl_fseeko(ptr noundef %0, i64 noundef %45, i32 noundef 1) #41, !dbg !5460
  br label %66, !dbg !5462

54:                                               ; preds = %48, %59
  %55 = phi i64 [ %60, %59 ], [ %45, %48 ], !dbg !5435
  call void @llvm.dbg.value(metadata i64 %55, metadata !5394, metadata !DIExpression()), !dbg !5411
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #41, !dbg !5463
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5402, metadata !DIExpression()), !dbg !5464
  %56 = call i64 @llvm.umin.i64(i64 %55, i64 4096), !dbg !5465
  call void @llvm.dbg.value(metadata i64 %56, metadata !5409, metadata !DIExpression()), !dbg !5466
  call void @llvm.dbg.value(metadata ptr %4, metadata !5467, metadata !DIExpression()), !dbg !5477
  call void @llvm.dbg.value(metadata i64 1, metadata !5473, metadata !DIExpression()), !dbg !5477
  call void @llvm.dbg.value(metadata i64 %56, metadata !5474, metadata !DIExpression()), !dbg !5477
  call void @llvm.dbg.value(metadata ptr %0, metadata !5475, metadata !DIExpression()), !dbg !5477
  call void @llvm.dbg.value(metadata i64 4096, metadata !5476, metadata !DIExpression()), !dbg !5477
  %57 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef %56, ptr noundef %0), !dbg !5480
  %58 = icmp ult i64 %57, %56, !dbg !5482
  call void @llvm.dbg.value(metadata i64 poison, metadata !5394, metadata !DIExpression()), !dbg !5411
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #41, !dbg !5483
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = sub i64 %55, %56, !dbg !5484
  call void @llvm.dbg.value(metadata i64 %60, metadata !5394, metadata !DIExpression()), !dbg !5411
  %61 = icmp eq i64 %60, 0, !dbg !5485
  br i1 %61, label %66, label %54, !dbg !5486, !llvm.loop !5487

62:                                               ; preds = %54, %33
  call void @llvm.dbg.label(metadata !5410), !dbg !5489
  %63 = call i32 @ferror(ptr noundef %0) #41, !dbg !5490
  %64 = icmp ne i32 %63, 0, !dbg !5490
  %65 = sext i1 %64 to i32, !dbg !5492
  br label %66, !dbg !5492

66:                                               ; preds = %40, %59, %39, %52, %62, %2
  %67 = phi i32 [ 0, %2 ], [ %53, %52 ], [ %65, %62 ], [ 0, %39 ], [ 0, %59 ], [ 0, %40 ], !dbg !5411
  ret i32 %67, !dbg !5493
}

; Function Attrs: nofree nounwind
declare !dbg !5494 noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: alwaysinline nobuiltin nounwind uwtable
declare !dbg !5497 i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #38

; Function Attrs: nofree nounwind memory(read)
declare !dbg !5500 noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5501 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5506, metadata !DIExpression()), !dbg !5511
  call void @llvm.dbg.value(metadata ptr %1, metadata !5507, metadata !DIExpression()), !dbg !5511
  call void @llvm.dbg.value(metadata i64 %2, metadata !5508, metadata !DIExpression()), !dbg !5511
  call void @llvm.dbg.value(metadata ptr %3, metadata !5509, metadata !DIExpression()), !dbg !5511
  %5 = icmp eq ptr %1, null, !dbg !5512
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5514
  %7 = select i1 %5, ptr @.str.197, ptr %1, !dbg !5514
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5514
  call void @llvm.dbg.value(metadata i64 %8, metadata !5508, metadata !DIExpression()), !dbg !5511
  call void @llvm.dbg.value(metadata ptr %7, metadata !5507, metadata !DIExpression()), !dbg !5511
  call void @llvm.dbg.value(metadata ptr %6, metadata !5506, metadata !DIExpression()), !dbg !5511
  %9 = icmp eq ptr %3, null, !dbg !5515
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5517
  call void @llvm.dbg.value(metadata ptr %10, metadata !5509, metadata !DIExpression()), !dbg !5511
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #41, !dbg !5518
  call void @llvm.dbg.value(metadata i64 %11, metadata !5510, metadata !DIExpression()), !dbg !5511
  %12 = icmp ult i64 %11, -3, !dbg !5519
  br i1 %12, label %13, label %17, !dbg !5521

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #42, !dbg !5522
  %15 = icmp eq i32 %14, 0, !dbg !5522
  br i1 %15, label %16, label %29, !dbg !5523

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5524, metadata !DIExpression()), !dbg !5529
  call void @llvm.dbg.value(metadata ptr %10, metadata !5531, metadata !DIExpression()), !dbg !5536
  call void @llvm.dbg.value(metadata i32 0, metadata !5534, metadata !DIExpression()), !dbg !5536
  call void @llvm.dbg.value(metadata i64 8, metadata !5535, metadata !DIExpression()), !dbg !5536
  store i64 0, ptr %10, align 1, !dbg !5538
  br label %29, !dbg !5539

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5540
  br i1 %18, label %19, label %20, !dbg !5542

19:                                               ; preds = %17
  tail call void @abort() #43, !dbg !5543
  unreachable, !dbg !5543

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5544

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #41, !dbg !5546
  br i1 %23, label %29, label %24, !dbg !5547

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5548
  br i1 %25, label %29, label %26, !dbg !5551

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5552, !tbaa !1110
  %28 = zext i8 %27 to i32, !dbg !5553
  store i32 %28, ptr %6, align 4, !dbg !5554, !tbaa !1101
  br label %29, !dbg !5555

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5511
  ret i64 %30, !dbg !5556
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5557 i32 @mbsinit(ptr noundef) local_unnamed_addr #39

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #40 !dbg !5563 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5565, metadata !DIExpression()), !dbg !5569
  call void @llvm.dbg.value(metadata i64 %1, metadata !5566, metadata !DIExpression()), !dbg !5569
  call void @llvm.dbg.value(metadata i64 %2, metadata !5567, metadata !DIExpression()), !dbg !5569
  %4 = icmp eq i64 %2, 0, !dbg !5570
  br i1 %4, label %8, label %5, !dbg !5570

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5570
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5570
  br i1 %7, label %13, label %8, !dbg !5570

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5568, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5569
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5568, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5569
  %9 = mul i64 %2, %1, !dbg !5570
  call void @llvm.dbg.value(metadata i64 %9, metadata !5568, metadata !DIExpression()), !dbg !5569
  call void @llvm.dbg.value(metadata ptr %0, metadata !5572, metadata !DIExpression()), !dbg !5576
  call void @llvm.dbg.value(metadata i64 %9, metadata !5575, metadata !DIExpression()), !dbg !5576
  %10 = icmp eq i64 %9, 0, !dbg !5578
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5578
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #46, !dbg !5579
  br label %15, !dbg !5580

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5568, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5569
  %14 = tail call ptr @__errno_location() #44, !dbg !5581
  store i32 12, ptr %14, align 4, !dbg !5583, !tbaa !1101
  br label %15, !dbg !5584

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5569
  ret ptr %16, !dbg !5585
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @freadahead(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !5586 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5624, metadata !DIExpression()), !dbg !5625
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !5626
  %3 = load ptr, ptr %2, align 8, !dbg !5626, !tbaa !1444
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !5628
  %5 = load ptr, ptr %4, align 8, !dbg !5628, !tbaa !2780
  %6 = icmp ugt ptr %3, %5, !dbg !5629
  br i1 %6, label %29, label %7, !dbg !5630

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !5631
  %9 = load ptr, ptr %8, align 8, !dbg !5631, !tbaa !1428
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !5632
  %11 = load ptr, ptr %10, align 8, !dbg !5632, !tbaa !1426
  %12 = ptrtoint ptr %9 to i64, !dbg !5633
  %13 = ptrtoint ptr %11 to i64, !dbg !5633
  %14 = sub i64 %12, %13, !dbg !5633
  %15 = load i32, ptr %0, align 8, !dbg !5634, !tbaa !1636
  %16 = and i32 %15, 256, !dbg !5635
  %17 = icmp eq i32 %16, 0, !dbg !5635
  br i1 %17, label %26, label %18, !dbg !5636

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 11, !dbg !5637
  %20 = load ptr, ptr %19, align 8, !dbg !5637, !tbaa !5638
  %21 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !5639
  %22 = load ptr, ptr %21, align 8, !dbg !5639, !tbaa !2784
  %23 = ptrtoint ptr %20 to i64, !dbg !5640
  %24 = ptrtoint ptr %22 to i64, !dbg !5640
  %25 = sub i64 %23, %24, !dbg !5640
  br label %26, !dbg !5636

26:                                               ; preds = %7, %18
  %27 = phi i64 [ %25, %18 ], [ 0, %7 ], !dbg !5636
  %28 = add nsw i64 %14, %27, !dbg !5641
  br label %29, !dbg !5642

29:                                               ; preds = %1, %26
  %30 = phi i64 [ %28, %26 ], [ 0, %1 ], !dbg !5625
  ret i64 %30, !dbg !5643
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5644 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !5646, metadata !DIExpression()), !dbg !5651
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #41, !dbg !5652
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5647, metadata !DIExpression()), !dbg !5653
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #41, !dbg !5654
  %4 = icmp eq i32 %3, 0, !dbg !5654
  br i1 %4, label %5, label %12, !dbg !5656

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5657, metadata !DIExpression()), !dbg !5661
  call void @llvm.dbg.value(metadata ptr @.str.204, metadata !5660, metadata !DIExpression()), !dbg !5661
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.204, i64 2), !dbg !5664
  %7 = icmp eq i32 %6, 0, !dbg !5665
  br i1 %7, label %11, label %8, !dbg !5666

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5657, metadata !DIExpression()), !dbg !5667
  call void @llvm.dbg.value(metadata ptr @.str.1.205, metadata !5660, metadata !DIExpression()), !dbg !5667
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.205, i64 6), !dbg !5669
  %10 = icmp eq i32 %9, 0, !dbg !5670
  br i1 %10, label %11, label %12, !dbg !5671

11:                                               ; preds = %8, %5
  br label %12, !dbg !5672

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5651
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #41, !dbg !5673
  ret i1 %13, !dbg !5673
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5674 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5678, metadata !DIExpression()), !dbg !5681
  call void @llvm.dbg.value(metadata ptr %1, metadata !5679, metadata !DIExpression()), !dbg !5681
  call void @llvm.dbg.value(metadata i64 %2, metadata !5680, metadata !DIExpression()), !dbg !5681
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #41, !dbg !5682
  ret i32 %4, !dbg !5683
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5684 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5688, metadata !DIExpression()), !dbg !5689
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #41, !dbg !5690
  ret ptr %2, !dbg !5691
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5692 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5694, metadata !DIExpression()), !dbg !5696
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #41, !dbg !5697
  call void @llvm.dbg.value(metadata ptr %2, metadata !5695, metadata !DIExpression()), !dbg !5696
  ret ptr %2, !dbg !5698
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5699 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5701, metadata !DIExpression()), !dbg !5708
  call void @llvm.dbg.value(metadata ptr %1, metadata !5702, metadata !DIExpression()), !dbg !5708
  call void @llvm.dbg.value(metadata i64 %2, metadata !5703, metadata !DIExpression()), !dbg !5708
  call void @llvm.dbg.value(metadata i32 %0, metadata !5694, metadata !DIExpression()), !dbg !5709
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #41, !dbg !5711
  call void @llvm.dbg.value(metadata ptr %4, metadata !5695, metadata !DIExpression()), !dbg !5709
  call void @llvm.dbg.value(metadata ptr %4, metadata !5704, metadata !DIExpression()), !dbg !5708
  %5 = icmp eq ptr %4, null, !dbg !5712
  br i1 %5, label %6, label %9, !dbg !5713

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5714
  br i1 %7, label %19, label %8, !dbg !5717

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5718, !tbaa !1110
  br label %19, !dbg !5719

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #42, !dbg !5720
  call void @llvm.dbg.value(metadata i64 %10, metadata !5705, metadata !DIExpression()), !dbg !5721
  %11 = icmp ult i64 %10, %2, !dbg !5722
  br i1 %11, label %12, label %14, !dbg !5724

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5725
  call void @llvm.dbg.value(metadata ptr %1, metadata !5727, metadata !DIExpression()), !dbg !5732
  call void @llvm.dbg.value(metadata ptr %4, metadata !5730, metadata !DIExpression()), !dbg !5732
  call void @llvm.dbg.value(metadata i64 %13, metadata !5731, metadata !DIExpression()), !dbg !5732
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #41, !dbg !5734
  br label %19, !dbg !5735

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5736
  br i1 %15, label %19, label %16, !dbg !5739

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5740
  call void @llvm.dbg.value(metadata ptr %1, metadata !5727, metadata !DIExpression()), !dbg !5742
  call void @llvm.dbg.value(metadata ptr %4, metadata !5730, metadata !DIExpression()), !dbg !5742
  call void @llvm.dbg.value(metadata i64 %17, metadata !5731, metadata !DIExpression()), !dbg !5742
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #41, !dbg !5744
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5745
  store i8 0, ptr %18, align 1, !dbg !5746, !tbaa !1110
  br label %19, !dbg !5747

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5748
  ret i32 %20, !dbg !5749
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
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #13 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #17 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #25 = { nofree nounwind willreturn memory(argmem: read) }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #29 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { alwaysinline nobuiltin nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #40 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #41 = { nounwind }
attributes #42 = { nounwind willreturn memory(read) }
attributes #43 = { noreturn nounwind }
attributes #44 = { nounwind willreturn memory(none) }
attributes #45 = { noreturn }
attributes #46 = { nounwind allocsize(1) }
attributes #47 = { cold }
attributes #48 = { nounwind allocsize(0) }
attributes #49 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!109, !524, !596, !600, !615, !888, !922, !925, !927, !930, !932, !934, !937, !939, !672, !686, !734, !945, !880, !951, !982, !984, !986, !988, !991, !904, !994, !997, !999, !1001, !1003}
!llvm.ident = !{!1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005, !1005}
!llvm.module.flags = !{!1006, !1007, !1008, !1009, !1010, !1011, !1012}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 128, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/cut.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b9f2457426dca29db9725f5b9c21ca1")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
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
!114 = !DIEnumerator(name: "OUTPUT_DELIMITER_OPTION", value: 256)
!115 = !DIEnumerator(name: "COMPLEMENT_OPTION", value: 257)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !117, line: 337, baseType: !118, size: 32, elements: !119)
!117 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!118 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!119 = !{!120, !121}
!120 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!121 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
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
!267 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !270)
!269 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!292 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!484 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!614 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !615, file: !616, line: 66, type: !667, isLocal: false, isDefinition: true)
!615 = distinct !DICompileUnit(language: DW_LANG_C11, file: !616, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !617, globals: !618, splitDebugInlining: false, nameTableKind: None)
!616 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!617 = !{!168, !175}
!618 = !{!619, !621, !646, !648, !650, !652, !613, !654, !656, !658, !660, !665}
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !616, line: 272, type: !325, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(name: "old_file_name", scope: !623, file: !616, line: 304, type: !173, isLocal: true, isDefinition: true)
!623 = distinct !DISubprogram(name: "verror_at_line", scope: !616, file: !616, line: 298, type: !624, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !639)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !118, !118, !173, !112, !173, !626}
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !627, line: 52, baseType: !628)
!627 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !629, line: 14, baseType: !630)
!629 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !631, baseType: !632)
!631 = !DIFile(filename: "lib/error.c", directory: "/src")
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !633)
!633 = !{!634, !635, !636, !637, !638}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !632, file: !631, baseType: !168, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !632, file: !631, baseType: !168, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !632, file: !631, baseType: !168, size: 64, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !632, file: !631, baseType: !118, size: 32, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !632, file: !631, baseType: !118, size: 32, offset: 224)
!639 = !{!640, !641, !642, !643, !644, !645}
!640 = !DILocalVariable(name: "status", arg: 1, scope: !623, file: !616, line: 298, type: !118)
!641 = !DILocalVariable(name: "errnum", arg: 2, scope: !623, file: !616, line: 298, type: !118)
!642 = !DILocalVariable(name: "file_name", arg: 3, scope: !623, file: !616, line: 298, type: !173)
!643 = !DILocalVariable(name: "line_number", arg: 4, scope: !623, file: !616, line: 298, type: !112)
!644 = !DILocalVariable(name: "message", arg: 5, scope: !623, file: !616, line: 298, type: !173)
!645 = !DILocalVariable(name: "args", arg: 6, scope: !623, file: !616, line: 298, type: !626)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(name: "old_line_number", scope: !623, file: !616, line: 305, type: !112, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !616, line: 338, type: !19, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !616, line: 346, type: !361, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !616, line: 346, type: !219, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(name: "error_message_count", scope: !615, file: !616, line: 69, type: !112, isLocal: false, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !615, file: !616, line: 295, type: !118, isLocal: false, isDefinition: true)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !616, line: 208, type: !356, isLocal: true, isDefinition: true)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !616, line: 208, type: !662, isLocal: true, isDefinition: true)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 21)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !616, line: 214, type: !325, isLocal: true, isDefinition: true)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{null}
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(name: "program_name", scope: !672, file: !673, line: 31, type: !173, isLocal: false, isDefinition: true)
!672 = distinct !DICompileUnit(language: DW_LANG_C11, file: !673, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !674, globals: !675, splitDebugInlining: false, nameTableKind: None)
!673 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!674 = !{!167}
!675 = !{!670, !676, !678}
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !673, line: 46, type: !361, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !673, line: 49, type: !19, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(name: "utf07FF", scope: !682, file: !683, line: 46, type: !710, isLocal: true, isDefinition: true)
!682 = distinct !DISubprogram(name: "proper_name_lite", scope: !683, file: !683, line: 38, type: !684, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !688)
!683 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!684 = !DISubroutineType(types: !685)
!685 = !{!173, !173, !173}
!686 = distinct !DICompileUnit(language: DW_LANG_C11, file: !683, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !687, splitDebugInlining: false, nameTableKind: None)
!687 = !{!680}
!688 = !{!689, !690, !691, !692, !697}
!689 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !682, file: !683, line: 38, type: !173)
!690 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !682, file: !683, line: 38, type: !173)
!691 = !DILocalVariable(name: "translation", scope: !682, file: !683, line: 40, type: !173)
!692 = !DILocalVariable(name: "w", scope: !682, file: !683, line: 47, type: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !694, line: 37, baseType: !695)
!694 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !292, line: 57, baseType: !696)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !292, line: 42, baseType: !112)
!697 = !DILocalVariable(name: "mbs", scope: !682, file: !683, line: 48, type: !698)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !699, line: 6, baseType: !700)
!699 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !701, line: 21, baseType: !702)
!701 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !701, line: 13, size: 64, elements: !703)
!703 = !{!704, !705}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !702, file: !701, line: 15, baseType: !118, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !702, file: !701, line: 20, baseType: !706, size: 32, offset: 32)
!706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !702, file: !701, line: 16, size: 32, elements: !707)
!707 = !{!708, !709}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !706, file: !701, line: 18, baseType: !112, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !706, file: !701, line: 19, baseType: !19, size: 32)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 16, elements: !220)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(scope: null, file: !713, line: 78, type: !361, isLocal: true, isDefinition: true)
!713 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(scope: null, file: !713, line: 79, type: !334, isLocal: true, isDefinition: true)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(scope: null, file: !713, line: 80, type: !202, isLocal: true, isDefinition: true)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(scope: null, file: !713, line: 81, type: !202, isLocal: true, isDefinition: true)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(scope: null, file: !713, line: 82, type: !314, isLocal: true, isDefinition: true)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !713, line: 83, type: !219, isLocal: true, isDefinition: true)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(scope: null, file: !713, line: 84, type: !361, isLocal: true, isDefinition: true)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !713, line: 85, type: !356, isLocal: true, isDefinition: true)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !713, line: 86, type: !356, isLocal: true, isDefinition: true)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !713, line: 87, type: !361, isLocal: true, isDefinition: true)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !734, file: !713, line: 76, type: !806, isLocal: false, isDefinition: true)
!734 = distinct !DICompileUnit(language: DW_LANG_C11, file: !713, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !735, retainedTypes: !741, globals: !742, splitDebugInlining: false, nameTableKind: None)
!735 = !{!143, !736, !128}
!736 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !144, line: 254, baseType: !112, size: 32, elements: !737)
!737 = !{!738, !739, !740}
!738 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!739 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!740 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!741 = !{!118, !169, !170}
!742 = !{!711, !714, !716, !718, !720, !722, !724, !726, !728, !730, !732, !743, !747, !757, !759, !764, !766, !768, !770, !772, !795, !802, !804}
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !734, file: !713, line: 92, type: !745, isLocal: false, isDefinition: true)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 320, elements: !95)
!746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !734, file: !713, line: 1040, type: !749, isLocal: false, isDefinition: true)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !713, line: 56, size: 448, elements: !750)
!750 = !{!751, !752, !753, !755, !756}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !749, file: !713, line: 59, baseType: !143, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !749, file: !713, line: 62, baseType: !118, size: 32, offset: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !749, file: !713, line: 66, baseType: !754, size: 256, offset: 64)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 256, elements: !362)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !749, file: !713, line: 69, baseType: !173, size: 64, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !749, file: !713, line: 72, baseType: !173, size: 64, offset: 384)
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !734, file: !713, line: 107, type: !749, isLocal: true, isDefinition: true)
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(name: "slot0", scope: !734, file: !713, line: 831, type: !761, isLocal: true, isDefinition: true)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !762)
!762 = !{!763}
!763 = !DISubrange(count: 256)
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(scope: null, file: !713, line: 321, type: !219, isLocal: true, isDefinition: true)
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(scope: null, file: !713, line: 357, type: !219, isLocal: true, isDefinition: true)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(scope: null, file: !713, line: 358, type: !219, isLocal: true, isDefinition: true)
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(scope: null, file: !713, line: 199, type: !356, isLocal: true, isDefinition: true)
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(name: "quote", scope: !774, file: !713, line: 228, type: !793, isLocal: true, isDefinition: true)
!774 = distinct !DISubprogram(name: "gettext_quote", scope: !713, file: !713, line: 197, type: !775, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !777)
!775 = !DISubroutineType(types: !776)
!776 = !{!173, !173, !143}
!777 = !{!778, !779, !780, !781, !782}
!778 = !DILocalVariable(name: "msgid", arg: 1, scope: !774, file: !713, line: 197, type: !173)
!779 = !DILocalVariable(name: "s", arg: 2, scope: !774, file: !713, line: 197, type: !143)
!780 = !DILocalVariable(name: "translation", scope: !774, file: !713, line: 199, type: !173)
!781 = !DILocalVariable(name: "w", scope: !774, file: !713, line: 229, type: !693)
!782 = !DILocalVariable(name: "mbs", scope: !774, file: !713, line: 230, type: !783)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !699, line: 6, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !701, line: 21, baseType: !785)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !701, line: 13, size: 64, elements: !786)
!786 = !{!787, !788}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !785, file: !701, line: 15, baseType: !118, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !785, file: !701, line: 20, baseType: !789, size: 32, offset: 32)
!789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !785, file: !701, line: 16, size: 32, elements: !790)
!790 = !{!791, !792}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !789, file: !701, line: 18, baseType: !112, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !789, file: !701, line: 19, baseType: !19, size: 32)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 64, elements: !794)
!794 = !{!221, !21}
!795 = !DIGlobalVariableExpression(var: !796, expr: !DIExpression())
!796 = distinct !DIGlobalVariable(name: "slotvec", scope: !734, file: !713, line: 834, type: !797, isLocal: true, isDefinition: true)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !713, line: 823, size: 128, elements: !799)
!799 = !{!800, !801}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !798, file: !713, line: 825, baseType: !170, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !798, file: !713, line: 826, baseType: !167, size: 64, offset: 64)
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(name: "nslots", scope: !734, file: !713, line: 832, type: !118, isLocal: true, isDefinition: true)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(name: "slotvec0", scope: !734, file: !713, line: 833, type: !798, isLocal: true, isDefinition: true)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, size: 704, elements: !434)
!807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(scope: null, file: !810, line: 67, type: !104, isLocal: true, isDefinition: true)
!810 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(scope: null, file: !810, line: 69, type: !356, isLocal: true, isDefinition: true)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(scope: null, file: !810, line: 83, type: !356, isLocal: true, isDefinition: true)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !810, line: 83, type: !19, isLocal: true, isDefinition: true)
!817 = !DIGlobalVariableExpression(var: !818, expr: !DIExpression())
!818 = distinct !DIGlobalVariable(scope: null, file: !810, line: 85, type: !219, isLocal: true, isDefinition: true)
!819 = !DIGlobalVariableExpression(var: !820, expr: !DIExpression())
!820 = distinct !DIGlobalVariable(scope: null, file: !810, line: 88, type: !821, isLocal: true, isDefinition: true)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !822)
!822 = !{!823}
!823 = !DISubrange(count: 171)
!824 = !DIGlobalVariableExpression(var: !825, expr: !DIExpression())
!825 = distinct !DIGlobalVariable(scope: null, file: !810, line: 88, type: !514, isLocal: true, isDefinition: true)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(scope: null, file: !810, line: 105, type: !197, isLocal: true, isDefinition: true)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(scope: null, file: !810, line: 109, type: !547, isLocal: true, isDefinition: true)
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(scope: null, file: !810, line: 113, type: !832, isLocal: true, isDefinition: true)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !833)
!833 = !{!834}
!834 = !DISubrange(count: 28)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(scope: null, file: !810, line: 120, type: !500, isLocal: true, isDefinition: true)
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression())
!838 = distinct !DIGlobalVariable(scope: null, file: !810, line: 127, type: !839, isLocal: true, isDefinition: true)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !840)
!840 = !{!841}
!841 = !DISubrange(count: 36)
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(scope: null, file: !810, line: 134, type: !383, isLocal: true, isDefinition: true)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(scope: null, file: !810, line: 142, type: !846, isLocal: true, isDefinition: true)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !847)
!847 = !{!848}
!848 = !DISubrange(count: 44)
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(scope: null, file: !810, line: 150, type: !851, isLocal: true, isDefinition: true)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !852)
!852 = !{!853}
!853 = !DISubrange(count: 48)
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(scope: null, file: !810, line: 159, type: !856, isLocal: true, isDefinition: true)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !857)
!857 = !{!858}
!858 = !DISubrange(count: 52)
!859 = !DIGlobalVariableExpression(var: !860, expr: !DIExpression())
!860 = distinct !DIGlobalVariable(scope: null, file: !810, line: 170, type: !861, isLocal: true, isDefinition: true)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !862)
!862 = !{!863}
!863 = !DISubrange(count: 60)
!864 = !DIGlobalVariableExpression(var: !865, expr: !DIExpression())
!865 = distinct !DIGlobalVariable(scope: null, file: !810, line: 248, type: !314, isLocal: true, isDefinition: true)
!866 = !DIGlobalVariableExpression(var: !867, expr: !DIExpression())
!867 = distinct !DIGlobalVariable(scope: null, file: !810, line: 248, type: !405, isLocal: true, isDefinition: true)
!868 = !DIGlobalVariableExpression(var: !869, expr: !DIExpression())
!869 = distinct !DIGlobalVariable(scope: null, file: !810, line: 254, type: !314, isLocal: true, isDefinition: true)
!870 = !DIGlobalVariableExpression(var: !871, expr: !DIExpression())
!871 = distinct !DIGlobalVariable(scope: null, file: !810, line: 254, type: !187, isLocal: true, isDefinition: true)
!872 = !DIGlobalVariableExpression(var: !873, expr: !DIExpression())
!873 = distinct !DIGlobalVariable(scope: null, file: !810, line: 254, type: !383, isLocal: true, isDefinition: true)
!874 = !DIGlobalVariableExpression(var: !875, expr: !DIExpression())
!875 = distinct !DIGlobalVariable(scope: null, file: !810, line: 259, type: !3, isLocal: true, isDefinition: true)
!876 = !DIGlobalVariableExpression(var: !877, expr: !DIExpression())
!877 = distinct !DIGlobalVariable(scope: null, file: !810, line: 259, type: !537, isLocal: true, isDefinition: true)
!878 = !DIGlobalVariableExpression(var: !879, expr: !DIExpression())
!879 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !880, file: !881, line: 26, type: !883, isLocal: false, isDefinition: true)
!880 = distinct !DICompileUnit(language: DW_LANG_C11, file: !881, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !882, splitDebugInlining: false, nameTableKind: None)
!881 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!882 = !{!878}
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 376, elements: !884)
!884 = !{!885}
!885 = !DISubrange(count: 47)
!886 = !DIGlobalVariableExpression(var: !887, expr: !DIExpression())
!887 = distinct !DIGlobalVariable(name: "exit_failure", scope: !888, file: !889, line: 24, type: !891, isLocal: false, isDefinition: true)
!888 = distinct !DICompileUnit(language: DW_LANG_C11, file: !889, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !890, splitDebugInlining: false, nameTableKind: None)
!889 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!890 = !{!886}
!891 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !118)
!892 = !DIGlobalVariableExpression(var: !893, expr: !DIExpression())
!893 = distinct !DIGlobalVariable(scope: null, file: !894, line: 34, type: !345, isLocal: true, isDefinition: true)
!894 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!895 = !DIGlobalVariableExpression(var: !896, expr: !DIExpression())
!896 = distinct !DIGlobalVariable(scope: null, file: !894, line: 34, type: !356, isLocal: true, isDefinition: true)
!897 = !DIGlobalVariableExpression(var: !898, expr: !DIExpression())
!898 = distinct !DIGlobalVariable(scope: null, file: !894, line: 34, type: !378, isLocal: true, isDefinition: true)
!899 = !DIGlobalVariableExpression(var: !900, expr: !DIExpression())
!900 = distinct !DIGlobalVariable(scope: null, file: !901, line: 108, type: !89, isLocal: true, isDefinition: true)
!901 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!902 = !DIGlobalVariableExpression(var: !903, expr: !DIExpression())
!903 = distinct !DIGlobalVariable(name: "internal_state", scope: !904, file: !901, line: 97, type: !907, isLocal: true, isDefinition: true)
!904 = distinct !DICompileUnit(language: DW_LANG_C11, file: !901, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !905, globals: !906, splitDebugInlining: false, nameTableKind: None)
!905 = !{!168, !170, !175}
!906 = !{!899, !902}
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !699, line: 6, baseType: !908)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !701, line: 21, baseType: !909)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !701, line: 13, size: 64, elements: !910)
!910 = !{!911, !912}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !909, file: !701, line: 15, baseType: !118, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !909, file: !701, line: 20, baseType: !913, size: 32, offset: 32)
!913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !909, file: !701, line: 16, size: 32, elements: !914)
!914 = !{!915, !916}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !913, file: !701, line: 18, baseType: !112, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !913, file: !701, line: 19, baseType: !19, size: 32)
!917 = !DIGlobalVariableExpression(var: !918, expr: !DIExpression())
!918 = distinct !DIGlobalVariable(scope: null, file: !919, line: 35, type: !219, isLocal: true, isDefinition: true)
!919 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!920 = !DIGlobalVariableExpression(var: !921, expr: !DIExpression())
!921 = distinct !DIGlobalVariable(scope: null, file: !919, line: 35, type: !334, isLocal: true, isDefinition: true)
!922 = distinct !DICompileUnit(language: DW_LANG_C11, file: !923, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !924, splitDebugInlining: false, nameTableKind: None)
!923 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!924 = !{!157}
!925 = distinct !DICompileUnit(language: DW_LANG_C11, file: !926, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!926 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!927 = distinct !DICompileUnit(language: DW_LANG_C11, file: !928, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !929, splitDebugInlining: false, nameTableKind: None)
!928 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!929 = !{!168}
!930 = distinct !DICompileUnit(language: DW_LANG_C11, file: !931, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!931 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!932 = distinct !DICompileUnit(language: DW_LANG_C11, file: !933, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !929, splitDebugInlining: false, nameTableKind: None)
!933 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!934 = distinct !DICompileUnit(language: DW_LANG_C11, file: !935, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !936, splitDebugInlining: false, nameTableKind: None)
!935 = !DIFile(filename: "lib/getndelim2.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d286772550dcd0d4e4164dd1f736b40f")
!936 = !{!176}
!937 = distinct !DICompileUnit(language: DW_LANG_C11, file: !938, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!938 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!939 = distinct !DICompileUnit(language: DW_LANG_C11, file: !940, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !941, splitDebugInlining: false, nameTableKind: None)
!940 = !DIFile(filename: "lib/memchr2.c", directory: "/src", checksumkind: CSK_MD5, checksum: "02120b13899f3db9fd2d834284ba56fe")
!941 = !{!175, !168, !942, !943}
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !461, line: 90, baseType: !172)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!945 = distinct !DICompileUnit(language: DW_LANG_C11, file: !810, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !946, retainedTypes: !929, globals: !950, splitDebugInlining: false, nameTableKind: None)
!946 = !{!947}
!947 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !810, line: 40, baseType: !112, size: 32, elements: !948)
!948 = !{!949}
!949 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!950 = !{!808, !811, !813, !815, !817, !819, !824, !826, !828, !830, !835, !837, !842, !844, !849, !854, !859, !864, !866, !868, !870, !872, !874, !876}
!951 = distinct !DICompileUnit(language: DW_LANG_C11, file: !952, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !953, retainedTypes: !981, splitDebugInlining: false, nameTableKind: None)
!952 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!953 = !{!954, !966}
!954 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !955, file: !952, line: 188, baseType: !112, size: 32, elements: !964)
!955 = distinct !DISubprogram(name: "x2nrealloc", scope: !952, file: !952, line: 176, type: !956, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !959)
!956 = !DISubroutineType(types: !957)
!957 = !{!168, !168, !958, !170}
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!959 = !{!960, !961, !962, !963}
!960 = !DILocalVariable(name: "p", arg: 1, scope: !955, file: !952, line: 176, type: !168)
!961 = !DILocalVariable(name: "pn", arg: 2, scope: !955, file: !952, line: 176, type: !958)
!962 = !DILocalVariable(name: "s", arg: 3, scope: !955, file: !952, line: 176, type: !170)
!963 = !DILocalVariable(name: "n", scope: !955, file: !952, line: 178, type: !170)
!964 = !{!965}
!965 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!966 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !967, file: !952, line: 228, baseType: !112, size: 32, elements: !964)
!967 = distinct !DISubprogram(name: "xpalloc", scope: !952, file: !952, line: 223, type: !968, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !971)
!968 = !DISubroutineType(types: !969)
!969 = !{!168, !168, !970, !563, !565, !563}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!971 = !{!972, !973, !974, !975, !976, !977, !978, !979, !980}
!972 = !DILocalVariable(name: "pa", arg: 1, scope: !967, file: !952, line: 223, type: !168)
!973 = !DILocalVariable(name: "pn", arg: 2, scope: !967, file: !952, line: 223, type: !970)
!974 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !967, file: !952, line: 223, type: !563)
!975 = !DILocalVariable(name: "n_max", arg: 4, scope: !967, file: !952, line: 223, type: !565)
!976 = !DILocalVariable(name: "s", arg: 5, scope: !967, file: !952, line: 223, type: !563)
!977 = !DILocalVariable(name: "n0", scope: !967, file: !952, line: 230, type: !563)
!978 = !DILocalVariable(name: "n", scope: !967, file: !952, line: 237, type: !563)
!979 = !DILocalVariable(name: "nbytes", scope: !967, file: !952, line: 248, type: !563)
!980 = !DILocalVariable(name: "adjusted_nbytes", scope: !967, file: !952, line: 252, type: !563)
!981 = !{!167, !168, !224, !293, !172}
!982 = distinct !DICompileUnit(language: DW_LANG_C11, file: !894, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !983, splitDebugInlining: false, nameTableKind: None)
!983 = !{!892, !895, !897}
!984 = distinct !DICompileUnit(language: DW_LANG_C11, file: !985, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !929, splitDebugInlining: false, nameTableKind: None)
!985 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!986 = distinct !DICompileUnit(language: DW_LANG_C11, file: !987, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!987 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!988 = distinct !DICompileUnit(language: DW_LANG_C11, file: !989, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !990, splitDebugInlining: false, nameTableKind: None)
!989 = !DIFile(filename: "lib/freadptr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c5958d0c7223ea506787ed1086f8c77f")
!990 = !{!173}
!991 = distinct !DICompileUnit(language: DW_LANG_C11, file: !992, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !993, splitDebugInlining: false, nameTableKind: None)
!992 = !DIFile(filename: "lib/freadseek.c", directory: "/src", checksumkind: CSK_MD5, checksum: "65aa8ebe67d000642bdd4080692a0013")
!993 = !{!168, !172}
!994 = distinct !DICompileUnit(language: DW_LANG_C11, file: !995, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !996, splitDebugInlining: false, nameTableKind: None)
!995 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!996 = !{!224, !172, !168}
!997 = distinct !DICompileUnit(language: DW_LANG_C11, file: !998, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!998 = !DIFile(filename: "lib/freadahead.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0335573db6cc583acb894a308e230b2b")
!999 = distinct !DICompileUnit(language: DW_LANG_C11, file: !919, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1000, splitDebugInlining: false, nameTableKind: None)
!1000 = !{!917, !920}
!1001 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1002, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1002 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1003 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1004, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !929, splitDebugInlining: false, nameTableKind: None)
!1004 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1005 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!1006 = !{i32 7, !"Dwarf Version", i32 5}
!1007 = !{i32 2, !"Debug Info Version", i32 3}
!1008 = !{i32 1, !"wchar_size", i32 4}
!1009 = !{i32 8, !"PIC Level", i32 2}
!1010 = !{i32 7, !"PIE Level", i32 2}
!1011 = !{i32 7, !"uwtable", i32 2}
!1012 = !{i32 7, !"frame-pointer", i32 1}
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
!1031 = !DILocation(line: 729, column: 3, scope: !1032, inlinedAt: !1034)
!1032 = distinct !DISubprogram(name: "emit_stdin_note", scope: !117, file: !117, line: 727, type: !668, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1033)
!1033 = !{}
!1034 = distinct !DILocation(line: 139, column: 7, scope: !1029)
!1035 = !DILocation(line: 736, column: 3, scope: !1036, inlinedAt: !1037)
!1036 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !117, file: !117, line: 734, type: !668, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1033)
!1037 = distinct !DILocation(line: 140, column: 7, scope: !1029)
!1038 = !DILocation(line: 142, column: 7, scope: !1029)
!1039 = !DILocation(line: 146, column: 7, scope: !1029)
!1040 = !DILocation(line: 150, column: 7, scope: !1029)
!1041 = !DILocation(line: 154, column: 7, scope: !1029)
!1042 = !DILocation(line: 159, column: 7, scope: !1029)
!1043 = !DILocation(line: 163, column: 7, scope: !1029)
!1044 = !DILocation(line: 167, column: 7, scope: !1029)
!1045 = !DILocation(line: 171, column: 7, scope: !1029)
!1046 = !DILocation(line: 176, column: 7, scope: !1029)
!1047 = !DILocation(line: 180, column: 7, scope: !1029)
!1048 = !DILocation(line: 181, column: 7, scope: !1029)
!1049 = !DILocation(line: 182, column: 7, scope: !1029)
!1050 = !DILocation(line: 188, column: 7, scope: !1029)
!1051 = !DILocalVariable(name: "program", arg: 1, scope: !1052, file: !117, line: 836, type: !173)
!1052 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !117, file: !117, line: 836, type: !1053, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1055)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !173}
!1055 = !{!1051, !1056, !1063, !1064, !1066, !1067}
!1056 = !DILocalVariable(name: "infomap", scope: !1052, file: !117, line: 838, type: !1057)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1058, size: 896, elements: !357)
!1058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1059)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1052, file: !117, line: 838, size: 128, elements: !1060)
!1060 = !{!1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1059, file: !117, line: 838, baseType: !173, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1059, file: !117, line: 838, baseType: !173, size: 64, offset: 64)
!1063 = !DILocalVariable(name: "node", scope: !1052, file: !117, line: 848, type: !173)
!1064 = !DILocalVariable(name: "map_prog", scope: !1052, file: !117, line: 849, type: !1065)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1066 = !DILocalVariable(name: "lc_messages", scope: !1052, file: !117, line: 861, type: !173)
!1067 = !DILocalVariable(name: "url_program", scope: !1052, file: !117, line: 874, type: !173)
!1068 = !DILocation(line: 0, scope: !1052, inlinedAt: !1069)
!1069 = distinct !DILocation(line: 196, column: 7, scope: !1029)
!1070 = !DILocation(line: 857, column: 3, scope: !1052, inlinedAt: !1069)
!1071 = !DILocation(line: 861, column: 29, scope: !1052, inlinedAt: !1069)
!1072 = !DILocation(line: 862, column: 7, scope: !1073, inlinedAt: !1069)
!1073 = distinct !DILexicalBlock(scope: !1052, file: !117, line: 862, column: 7)
!1074 = !DILocation(line: 862, column: 19, scope: !1073, inlinedAt: !1069)
!1075 = !DILocation(line: 862, column: 22, scope: !1073, inlinedAt: !1069)
!1076 = !DILocation(line: 862, column: 7, scope: !1052, inlinedAt: !1069)
!1077 = !DILocation(line: 868, column: 7, scope: !1078, inlinedAt: !1069)
!1078 = distinct !DILexicalBlock(scope: !1073, file: !117, line: 863, column: 5)
!1079 = !DILocation(line: 870, column: 5, scope: !1078, inlinedAt: !1069)
!1080 = !DILocation(line: 875, column: 3, scope: !1052, inlinedAt: !1069)
!1081 = !DILocation(line: 877, column: 3, scope: !1052, inlinedAt: !1069)
!1082 = !DILocation(line: 198, column: 3, scope: !1013)
!1083 = !DISubprogram(name: "dcgettext", scope: !1084, file: !1084, line: 51, type: !1085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1084 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!167, !173, !173, !118}
!1087 = !DISubprogram(name: "__fprintf_chk", scope: !1088, file: !1088, line: 93, type: !1089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1088 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!118, !1091, !118, !1092, null}
!1091 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !265)
!1092 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !173)
!1093 = !DISubprogram(name: "__printf_chk", scope: !1088, file: !1088, line: 95, type: !1094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!118, !118, !1092, null}
!1096 = !DISubprogram(name: "fputs_unlocked", scope: !627, file: !627, line: 691, type: !1097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!118, !1092, !1091}
!1099 = !DILocation(line: 0, scope: !243)
!1100 = !DILocation(line: 581, column: 7, scope: !251)
!1101 = !{!1102, !1102, i64 0}
!1102 = !{!"int", !1026, i64 0}
!1103 = !DILocation(line: 581, column: 19, scope: !251)
!1104 = !DILocation(line: 581, column: 7, scope: !243)
!1105 = !DILocation(line: 585, column: 26, scope: !250)
!1106 = !DILocation(line: 0, scope: !250)
!1107 = !DILocation(line: 586, column: 23, scope: !250)
!1108 = !DILocation(line: 586, column: 28, scope: !250)
!1109 = !DILocation(line: 586, column: 32, scope: !250)
!1110 = !{!1026, !1026, i64 0}
!1111 = !DILocation(line: 586, column: 38, scope: !250)
!1112 = !DILocalVariable(name: "__s1", arg: 1, scope: !1113, file: !1114, line: 1359, type: !173)
!1113 = distinct !DISubprogram(name: "streq", scope: !1114, file: !1114, line: 1359, type: !1115, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1117)
!1114 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!224, !173, !173}
!1117 = !{!1112, !1118}
!1118 = !DILocalVariable(name: "__s2", arg: 2, scope: !1113, file: !1114, line: 1359, type: !173)
!1119 = !DILocation(line: 0, scope: !1113, inlinedAt: !1120)
!1120 = distinct !DILocation(line: 586, column: 41, scope: !250)
!1121 = !DILocation(line: 1361, column: 11, scope: !1113, inlinedAt: !1120)
!1122 = !DILocation(line: 1361, column: 10, scope: !1113, inlinedAt: !1120)
!1123 = !DILocation(line: 586, column: 19, scope: !250)
!1124 = !DILocation(line: 587, column: 5, scope: !250)
!1125 = !DILocation(line: 588, column: 7, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !243, file: !117, line: 588, column: 7)
!1127 = !DILocation(line: 588, column: 7, scope: !243)
!1128 = !DILocation(line: 590, column: 7, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1126, file: !117, line: 589, column: 5)
!1130 = !DILocation(line: 591, column: 7, scope: !1129)
!1131 = !DILocation(line: 595, column: 37, scope: !243)
!1132 = !DILocation(line: 595, column: 35, scope: !243)
!1133 = !DILocation(line: 596, column: 29, scope: !243)
!1134 = !DILocation(line: 597, column: 8, scope: !258)
!1135 = !DILocation(line: 597, column: 7, scope: !243)
!1136 = !DILocation(line: 604, column: 24, scope: !257)
!1137 = !DILocation(line: 604, column: 12, scope: !258)
!1138 = !DILocation(line: 0, scope: !256)
!1139 = !DILocation(line: 610, column: 16, scope: !256)
!1140 = !DILocation(line: 610, column: 7, scope: !256)
!1141 = !DILocation(line: 611, column: 21, scope: !256)
!1142 = !{!1143, !1143, i64 0}
!1143 = !{!"short", !1026, i64 0}
!1144 = !DILocation(line: 611, column: 19, scope: !256)
!1145 = !DILocation(line: 611, column: 16, scope: !256)
!1146 = !DILocation(line: 610, column: 30, scope: !256)
!1147 = distinct !{!1147, !1140, !1141, !1148}
!1148 = !{!"llvm.loop.mustprogress"}
!1149 = !DILocation(line: 612, column: 18, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !256, file: !117, line: 612, column: 11)
!1151 = !DILocation(line: 612, column: 11, scope: !256)
!1152 = !DILocation(line: 620, column: 23, scope: !243)
!1153 = !DILocation(line: 625, column: 39, scope: !243)
!1154 = !DILocation(line: 626, column: 3, scope: !243)
!1155 = !DILocation(line: 626, column: 10, scope: !243)
!1156 = !DILocation(line: 626, column: 21, scope: !243)
!1157 = !DILocation(line: 628, column: 44, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !117, line: 628, column: 11)
!1159 = distinct !DILexicalBlock(scope: !243, file: !117, line: 627, column: 5)
!1160 = !DILocation(line: 628, column: 32, scope: !1158)
!1161 = !DILocation(line: 628, column: 49, scope: !1158)
!1162 = !DILocation(line: 628, column: 11, scope: !1159)
!1163 = !DILocation(line: 630, column: 11, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1159, file: !117, line: 630, column: 11)
!1165 = !DILocation(line: 630, column: 11, scope: !1159)
!1166 = !DILocation(line: 632, column: 26, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !117, line: 632, column: 15)
!1168 = distinct !DILexicalBlock(scope: !1164, file: !117, line: 631, column: 9)
!1169 = !DILocation(line: 632, column: 34, scope: !1167)
!1170 = !DILocation(line: 632, column: 37, scope: !1167)
!1171 = !DILocation(line: 632, column: 15, scope: !1168)
!1172 = !DILocation(line: 640, column: 16, scope: !1159)
!1173 = distinct !{!1173, !1154, !1174, !1148}
!1174 = !DILocation(line: 641, column: 5, scope: !243)
!1175 = !DILocation(line: 644, column: 3, scope: !243)
!1176 = !DILocation(line: 0, scope: !1113, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 648, column: 31, scope: !243)
!1178 = !DILocation(line: 0, scope: !1113, inlinedAt: !1179)
!1179 = distinct !DILocation(line: 649, column: 31, scope: !243)
!1180 = !DILocation(line: 0, scope: !1113, inlinedAt: !1181)
!1181 = distinct !DILocation(line: 650, column: 31, scope: !243)
!1182 = !DILocation(line: 0, scope: !1113, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 651, column: 31, scope: !243)
!1184 = !DILocation(line: 0, scope: !1113, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 652, column: 31, scope: !243)
!1186 = !DILocation(line: 0, scope: !1113, inlinedAt: !1187)
!1187 = distinct !DILocation(line: 653, column: 31, scope: !243)
!1188 = !DILocation(line: 0, scope: !1113, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 654, column: 31, scope: !243)
!1190 = !DILocation(line: 0, scope: !1113, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 655, column: 31, scope: !243)
!1192 = !DILocation(line: 0, scope: !1113, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 656, column: 31, scope: !243)
!1194 = !DILocation(line: 0, scope: !1113, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 657, column: 31, scope: !243)
!1196 = !DILocation(line: 663, column: 7, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !243, file: !117, line: 663, column: 7)
!1198 = !DILocation(line: 664, column: 7, scope: !1197)
!1199 = !DILocation(line: 664, column: 10, scope: !1197)
!1200 = !DILocation(line: 663, column: 7, scope: !243)
!1201 = !DILocation(line: 669, column: 7, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1197, file: !117, line: 665, column: 5)
!1203 = !DILocation(line: 671, column: 5, scope: !1202)
!1204 = !DILocation(line: 676, column: 7, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1197, file: !117, line: 673, column: 5)
!1206 = !DILocation(line: 679, column: 3, scope: !243)
!1207 = !DILocation(line: 683, column: 3, scope: !243)
!1208 = !DILocation(line: 686, column: 3, scope: !243)
!1209 = !DILocation(line: 688, column: 3, scope: !243)
!1210 = !DILocation(line: 691, column: 3, scope: !243)
!1211 = !DILocation(line: 695, column: 3, scope: !243)
!1212 = !DILocation(line: 696, column: 1, scope: !243)
!1213 = !DISubprogram(name: "setlocale", scope: !1214, file: !1214, line: 122, type: !1215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1214 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!167, !118, !173}
!1217 = !DISubprogram(name: "strncmp", scope: !1218, file: !1218, line: 159, type: !1219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1218 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!118, !173, !173, !170}
!1221 = !DISubprogram(name: "exit", scope: !1222, file: !1222, line: 624, type: !1014, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1222 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1223 = !DISubprogram(name: "getenv", scope: !1222, file: !1222, line: 641, type: !1224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!167, !173}
!1226 = !DISubprogram(name: "strcmp", scope: !1218, file: !1218, line: 156, type: !1227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!118, !173, !173}
!1229 = !DISubprogram(name: "strspn", scope: !1218, file: !1218, line: 297, type: !1230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!172, !173, !173}
!1232 = !DISubprogram(name: "strchr", scope: !1218, file: !1218, line: 246, type: !1233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!167, !173, !118}
!1235 = !DISubprogram(name: "__ctype_b_loc", scope: !129, file: !129, line: 79, type: !1236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!1238}
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!1241 = !DISubprogram(name: "strcspn", scope: !1218, file: !1218, line: 293, type: !1230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1242 = !DISubprogram(name: "fwrite_unlocked", scope: !627, file: !627, line: 704, type: !1243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!170, !1245, !170, !170, !1091}
!1245 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1246)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1248 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 495, type: !1249, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1252)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!118, !118, !1251}
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!1252 = !{!1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260}
!1253 = !DILocalVariable(name: "argc", arg: 1, scope: !1248, file: !2, line: 495, type: !118)
!1254 = !DILocalVariable(name: "argv", arg: 2, scope: !1248, file: !2, line: 495, type: !1251)
!1255 = !DILocalVariable(name: "optc", scope: !1248, file: !2, line: 497, type: !118)
!1256 = !DILocalVariable(name: "ok", scope: !1248, file: !2, line: 498, type: !224)
!1257 = !DILocalVariable(name: "delim_specified", scope: !1248, file: !2, line: 499, type: !224)
!1258 = !DILocalVariable(name: "byte_mode", scope: !1248, file: !2, line: 500, type: !224)
!1259 = !DILocalVariable(name: "spec_list_string", scope: !1248, file: !2, line: 501, type: !167)
!1260 = !DILocalVariable(name: "cut_stream", scope: !1248, file: !2, line: 595, type: !1261)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{null, !265}
!1264 = !DILocation(line: 0, scope: !1248)
!1265 = !DILocation(line: 504, column: 21, scope: !1248)
!1266 = !DILocation(line: 504, column: 3, scope: !1248)
!1267 = !DILocation(line: 505, column: 3, scope: !1248)
!1268 = !DILocation(line: 506, column: 3, scope: !1248)
!1269 = !DILocation(line: 507, column: 3, scope: !1248)
!1270 = !DILocation(line: 509, column: 3, scope: !1248)
!1271 = !DILocation(line: 511, column: 3, scope: !1248)
!1272 = !DILocation(line: 511, column: 18, scope: !1248)
!1273 = distinct !{!1273, !1271, !1274, !1148}
!1274 = !DILocation(line: 565, column: 5, scope: !1248)
!1275 = !DILocation(line: 523, column: 15, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !2, line: 523, column: 15)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 515, column: 9)
!1278 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 513, column: 5)
!1279 = !DILocation(line: 523, column: 15, scope: !1277)
!1280 = !DILocation(line: 524, column: 13, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 524, column: 13)
!1282 = !DILocation(line: 525, column: 30, scope: !1277)
!1283 = !DILocation(line: 526, column: 11, scope: !1277)
!1284 = !DILocation(line: 531, column: 15, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1277, file: !2, line: 531, column: 15)
!1286 = !DILocation(line: 531, column: 25, scope: !1285)
!1287 = !DILocation(line: 531, column: 33, scope: !1285)
!1288 = !DILocation(line: 531, column: 36, scope: !1285)
!1289 = !DILocation(line: 531, column: 46, scope: !1285)
!1290 = !DILocation(line: 531, column: 15, scope: !1277)
!1291 = !DILocation(line: 532, column: 13, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 532, column: 13)
!1293 = !DILocation(line: 533, column: 17, scope: !1277)
!1294 = !DILocation(line: 535, column: 11, scope: !1277)
!1295 = !DILocation(line: 540, column: 38, scope: !1277)
!1296 = !DILocation(line: 540, column: 48, scope: !1277)
!1297 = !DILocation(line: 541, column: 44, scope: !1277)
!1298 = !DILocation(line: 540, column: 35, scope: !1277)
!1299 = !{!1300, !1300, i64 0}
!1300 = !{!"long", !1026, i64 0}
!1301 = !DILocation(line: 542, column: 35, scope: !1277)
!1302 = !DILocation(line: 543, column: 11, scope: !1277)
!1303 = !DILocation(line: 549, column: 34, scope: !1277)
!1304 = !DILocation(line: 550, column: 11, scope: !1277)
!1305 = !DILocation(line: 553, column: 22, scope: !1277)
!1306 = !DILocation(line: 554, column: 11, scope: !1277)
!1307 = !DILocation(line: 557, column: 22, scope: !1277)
!1308 = !DILocation(line: 558, column: 11, scope: !1277)
!1309 = !DILocation(line: 560, column: 9, scope: !1277)
!1310 = !DILocation(line: 561, column: 9, scope: !1277)
!1311 = !DILocation(line: 563, column: 11, scope: !1277)
!1312 = !DILocation(line: 567, column: 8, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 567, column: 7)
!1314 = !DILocation(line: 567, column: 7, scope: !1248)
!1315 = !DILocation(line: 568, column: 5, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 568, column: 5)
!1317 = !DILocation(line: 570, column: 7, scope: !1248)
!1318 = !DILocation(line: 572, column: 11, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !2, line: 571, column: 5)
!1320 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 570, column: 7)
!1321 = !DILocation(line: 573, column: 9, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !2, line: 573, column: 9)
!1323 = distinct !DILexicalBlock(scope: !1319, file: !2, line: 572, column: 11)
!1324 = !DILocation(line: 576, column: 11, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1319, file: !2, line: 576, column: 11)
!1326 = !DILocation(line: 576, column: 11, scope: !1319)
!1327 = !DILocation(line: 577, column: 9, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !2, line: 577, column: 9)
!1329 = !DILocation(line: 582, column: 17, scope: !1248)
!1330 = !DILocation(line: 583, column: 19, scope: !1248)
!1331 = !DILocation(line: 583, column: 16, scope: !1248)
!1332 = !DILocation(line: 581, column: 3, scope: !1248)
!1333 = !DILocation(line: 585, column: 7, scope: !1248)
!1334 = !DILocation(line: 586, column: 11, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 585, column: 7)
!1336 = !DILocation(line: 586, column: 5, scope: !1335)
!1337 = !DILocation(line: 588, column: 7, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 588, column: 7)
!1339 = !DILocation(line: 588, column: 31, scope: !1338)
!1340 = !DILocation(line: 588, column: 7, scope: !1248)
!1341 = !DILocation(line: 590, column: 37, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1338, file: !2, line: 589, column: 5)
!1343 = !DILocation(line: 590, column: 35, scope: !1342)
!1344 = !DILocation(line: 591, column: 31, scope: !1342)
!1345 = !DILocation(line: 592, column: 31, scope: !1342)
!1346 = !DILocation(line: 593, column: 5, scope: !1342)
!1347 = !DILocation(line: 595, column: 33, scope: !1248)
!1348 = !DILocation(line: 596, column: 7, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 596, column: 7)
!1350 = !DILocation(line: 596, column: 14, scope: !1349)
!1351 = !DILocation(line: 596, column: 7, scope: !1248)
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
!1362 = distinct !{!1362, !1355, !1363, !1148}
!1363 = !DILocation(line: 600, column: 47, scope: !1354)
!1364 = !DILocation(line: 603, column: 7, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 603, column: 7)
!1366 = !DILocation(line: 603, column: 23, scope: !1365)
!1367 = !DILocation(line: 603, column: 34, scope: !1365)
!1368 = !DILocation(line: 603, column: 26, scope: !1365)
!1369 = !DILocation(line: 603, column: 41, scope: !1365)
!1370 = !DILocation(line: 603, column: 7, scope: !1248)
!1371 = !DILocation(line: 605, column: 7, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1365, file: !2, line: 604, column: 5)
!1373 = !DILocation(line: 607, column: 5, scope: !1372)
!1374 = !DILocation(line: 609, column: 10, scope: !1248)
!1375 = !DILocation(line: 609, column: 3, scope: !1248)
!1376 = !DISubprogram(name: "bindtextdomain", scope: !1084, file: !1084, line: 86, type: !1377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!167, !173, !173}
!1379 = !DISubprogram(name: "textdomain", scope: !1084, file: !1084, line: 82, type: !1224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1380 = !DISubprogram(name: "atexit", scope: !1222, file: !1222, line: 602, type: !1381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!118, !667}
!1383 = !DISubprogram(name: "getopt_long", scope: !484, file: !484, line: 66, type: !1384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!118, !118, !1386, !173, !1388, !489}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!1389 = !DISubprogram(name: "strlen", scope: !1218, file: !1218, line: 407, type: !1390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!172, !173}
!1392 = distinct !DISubprogram(name: "cut_bytes", scope: !2, file: !2, line: 232, type: !1262, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1393)
!1393 = !{!1394, !1395, !1396, !1397, !1399, !1411, !1412}
!1394 = !DILocalVariable(name: "stream", arg: 1, scope: !1392, file: !2, line: 232, type: !265)
!1395 = !DILocalVariable(name: "byte_idx", scope: !1392, file: !2, line: 234, type: !460)
!1396 = !DILocalVariable(name: "print_delimiter", scope: !1392, file: !2, line: 237, type: !224)
!1397 = !DILocalVariable(name: "c", scope: !1398, file: !2, line: 244, type: !118)
!1398 = distinct !DILexicalBlock(scope: !1392, file: !2, line: 243, column: 5)
!1399 = !DILocalVariable(name: "__ptr", scope: !1400, file: !2, line: 274, type: !173)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !2, line: 274, column: 27)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !2, line: 274, column: 27)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !2, line: 273, column: 21)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !2, line: 272, column: 23)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 271, column: 17)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 270, column: 19)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !2, line: 269, column: 13)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !2, line: 268, column: 15)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 266, column: 9)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 256, column: 16)
!1410 = distinct !DILexicalBlock(scope: !1398, file: !2, line: 248, column: 11)
!1411 = !DILocalVariable(name: "__stream", scope: !1400, file: !2, line: 274, type: !265)
!1412 = !DILocalVariable(name: "__cnt", scope: !1400, file: !2, line: 274, type: !170)
!1413 = !DILocation(line: 0, scope: !1392)
!1414 = !DILocation(line: 241, column: 16, scope: !1392)
!1415 = !DILocation(line: 241, column: 14, scope: !1392)
!1416 = !DILocation(line: 242, column: 3, scope: !1392)
!1417 = !DILocation(line: 68, column: 10, scope: !1418, inlinedAt: !1424)
!1418 = distinct !DISubprogram(name: "getc_unlocked", scope: !1419, file: !1419, line: 66, type: !1420, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1422)
!1419 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!118, !265}
!1422 = !{!1423}
!1423 = !DILocalVariable(name: "__fp", arg: 1, scope: !1418, file: !1419, line: 66, type: !265)
!1424 = distinct !DILocation(line: 246, column: 11, scope: !1398)
!1425 = !DILocation(line: 0, scope: !1418, inlinedAt: !1424)
!1426 = !{!1427, !1025, i64 8}
!1427 = !{!"_IO_FILE", !1102, i64 0, !1025, i64 8, !1025, i64 16, !1025, i64 24, !1025, i64 32, !1025, i64 40, !1025, i64 48, !1025, i64 56, !1025, i64 64, !1025, i64 72, !1025, i64 80, !1025, i64 88, !1025, i64 96, !1025, i64 104, !1102, i64 112, !1102, i64 116, !1300, i64 120, !1143, i64 128, !1026, i64 130, !1026, i64 131, !1025, i64 136, !1300, i64 144, !1025, i64 152, !1025, i64 160, !1025, i64 168, !1025, i64 176, !1300, i64 184, !1102, i64 192, !1026, i64 196}
!1428 = !{!1427, !1025, i64 16}
!1429 = !{!"branch_weights", i32 2000, i32 1}
!1430 = !DILocation(line: 0, scope: !1398)
!1431 = !DILocation(line: 248, column: 16, scope: !1410)
!1432 = !DILocation(line: 248, column: 13, scope: !1410)
!1433 = !DILocation(line: 248, column: 11, scope: !1398)
!1434 = !DILocalVariable(name: "__c", arg: 1, scope: !1435, file: !1419, line: 108, type: !118)
!1435 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1419, file: !1419, line: 108, type: !1436, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1438)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!118, !118}
!1438 = !{!1434}
!1439 = !DILocation(line: 0, scope: !1435, inlinedAt: !1440)
!1440 = distinct !DILocation(line: 250, column: 15, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !2, line: 250, column: 15)
!1442 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 249, column: 9)
!1443 = !DILocation(line: 110, column: 10, scope: !1435, inlinedAt: !1440)
!1444 = !{!1427, !1025, i64 40}
!1445 = !{!1427, !1025, i64 48}
!1446 = !DILocation(line: 250, column: 15, scope: !1442)
!1447 = !DILocation(line: 250, column: 27, scope: !1441)
!1448 = !DILocation(line: 948, column: 21, scope: !1449, inlinedAt: !1452)
!1449 = distinct !DISubprogram(name: "write_error", scope: !117, file: !117, line: 946, type: !668, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1450)
!1450 = !{!1451}
!1451 = !DILocalVariable(name: "saved_errno", scope: !1449, file: !117, line: 948, type: !118)
!1452 = distinct !DILocation(line: 251, column: 13, scope: !1441)
!1453 = !DILocation(line: 0, scope: !1449, inlinedAt: !1452)
!1454 = !DILocation(line: 949, column: 3, scope: !1449, inlinedAt: !1452)
!1455 = !DILocation(line: 950, column: 11, scope: !1449, inlinedAt: !1452)
!1456 = !DILocation(line: 950, column: 3, scope: !1449, inlinedAt: !1452)
!1457 = !DILocation(line: 951, column: 3, scope: !1449, inlinedAt: !1452)
!1458 = !DILocation(line: 952, column: 3, scope: !1449, inlinedAt: !1452)
!1459 = !DILocation(line: 254, column: 24, scope: !1442)
!1460 = !DILocation(line: 254, column: 22, scope: !1442)
!1461 = !DILocation(line: 255, column: 9, scope: !1442)
!1462 = !DILocation(line: 256, column: 18, scope: !1409)
!1463 = !DILocation(line: 256, column: 16, scope: !1410)
!1464 = !DILocation(line: 258, column: 24, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !2, line: 258, column: 15)
!1466 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 257, column: 9)
!1467 = !DILocation(line: 258, column: 15, scope: !1466)
!1468 = !DILocation(line: 0, scope: !1435, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 260, column: 17, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !2, line: 260, column: 17)
!1471 = distinct !DILexicalBlock(scope: !1465, file: !2, line: 259, column: 11)
!1472 = !DILocation(line: 110, column: 10, scope: !1435, inlinedAt: !1469)
!1473 = !DILocation(line: 260, column: 17, scope: !1471)
!1474 = !DILocation(line: 260, column: 38, scope: !1470)
!1475 = !DILocation(line: 948, column: 21, scope: !1449, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 261, column: 15, scope: !1470)
!1477 = !DILocation(line: 0, scope: !1449, inlinedAt: !1476)
!1478 = !DILocation(line: 949, column: 3, scope: !1449, inlinedAt: !1476)
!1479 = !DILocation(line: 950, column: 11, scope: !1449, inlinedAt: !1476)
!1480 = !DILocation(line: 950, column: 3, scope: !1449, inlinedAt: !1476)
!1481 = !DILocation(line: 951, column: 3, scope: !1449, inlinedAt: !1476)
!1482 = !DILocation(line: 952, column: 3, scope: !1449, inlinedAt: !1476)
!1483 = !DILocalVariable(name: "item_idx", arg: 1, scope: !1484, file: !2, line: 206, type: !1487)
!1484 = distinct !DISubprogram(name: "next_item", scope: !2, file: !2, line: 206, type: !1485, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1488)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{null, !1487}
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!1488 = !{!1483}
!1489 = !DILocation(line: 0, scope: !1484, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 267, column: 11, scope: !1408)
!1491 = !DILocation(line: 208, column: 14, scope: !1484, inlinedAt: !1490)
!1492 = !DILocation(line: 209, column: 21, scope: !1493, inlinedAt: !1490)
!1493 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 209, column: 7)
!1494 = !DILocation(line: 209, column: 33, scope: !1493, inlinedAt: !1490)
!1495 = !{!1496, !1300, i64 8}
!1496 = !{!"field_range_pair", !1300, i64 0, !1300, i64 8}
!1497 = !DILocation(line: 209, column: 19, scope: !1493, inlinedAt: !1490)
!1498 = !DILocation(line: 209, column: 7, scope: !1484, inlinedAt: !1490)
!1499 = !DILocation(line: 210, column: 15, scope: !1493, inlinedAt: !1490)
!1500 = !DILocation(line: 210, column: 5, scope: !1493, inlinedAt: !1490)
!1501 = !DILocation(line: 218, column: 10, scope: !1502, inlinedAt: !1507)
!1502 = distinct !DISubprogram(name: "print_kth", scope: !2, file: !2, line: 216, type: !1503, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1505)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!224, !460}
!1505 = !{!1506}
!1506 = !DILocalVariable(name: "k", arg: 1, scope: !1502, file: !2, line: 216, type: !460)
!1507 = distinct !DILocation(line: 268, column: 15, scope: !1407)
!1508 = !DILocation(line: 0, scope: !1502, inlinedAt: !1507)
!1509 = !DILocation(line: 218, column: 22, scope: !1502, inlinedAt: !1507)
!1510 = !{!1496, !1300, i64 0}
!1511 = !DILocation(line: 218, column: 25, scope: !1502, inlinedAt: !1507)
!1512 = !DILocation(line: 268, column: 15, scope: !1408)
!1513 = !DILocation(line: 270, column: 19, scope: !1405)
!1514 = !DILocation(line: 270, column: 43, scope: !1405)
!1515 = !DILocation(line: 270, column: 19, scope: !1406)
!1516 = !DILocalVariable(name: "k", arg: 1, scope: !1517, file: !2, line: 224, type: !460)
!1517 = distinct !DISubprogram(name: "is_range_start_index", scope: !2, file: !2, line: 224, type: !1503, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1518)
!1518 = !{!1516}
!1519 = !DILocation(line: 0, scope: !1517, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 272, column: 42, scope: !1403)
!1521 = !DILocation(line: 226, column: 12, scope: !1517, inlinedAt: !1520)
!1522 = !DILocation(line: 272, column: 23, scope: !1404)
!1523 = !DILocation(line: 274, column: 27, scope: !1401)
!1524 = !DILocation(line: 276, column: 30, scope: !1401)
!1525 = !DILocation(line: 276, column: 27, scope: !1401)
!1526 = !DILocation(line: 274, column: 27, scope: !1402)
!1527 = !DILocation(line: 948, column: 21, scope: !1449, inlinedAt: !1528)
!1528 = distinct !DILocation(line: 277, column: 25, scope: !1401)
!1529 = !DILocation(line: 0, scope: !1449, inlinedAt: !1528)
!1530 = !DILocation(line: 949, column: 3, scope: !1449, inlinedAt: !1528)
!1531 = !DILocation(line: 950, column: 11, scope: !1449, inlinedAt: !1528)
!1532 = !DILocation(line: 950, column: 3, scope: !1449, inlinedAt: !1528)
!1533 = !DILocation(line: 951, column: 3, scope: !1449, inlinedAt: !1528)
!1534 = !DILocation(line: 952, column: 3, scope: !1449, inlinedAt: !1528)
!1535 = !DILocation(line: 0, scope: !1435, inlinedAt: !1536)
!1536 = distinct !DILocation(line: 282, column: 19, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 282, column: 19)
!1538 = !DILocation(line: 110, column: 10, scope: !1435, inlinedAt: !1536)
!1539 = !DILocation(line: 282, column: 19, scope: !1406)
!1540 = !DILocation(line: 282, column: 31, scope: !1537)
!1541 = !DILocation(line: 948, column: 21, scope: !1449, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 283, column: 17, scope: !1537)
!1543 = !DILocation(line: 0, scope: !1449, inlinedAt: !1542)
!1544 = !DILocation(line: 949, column: 3, scope: !1449, inlinedAt: !1542)
!1545 = !DILocation(line: 950, column: 11, scope: !1449, inlinedAt: !1542)
!1546 = !DILocation(line: 950, column: 3, scope: !1449, inlinedAt: !1542)
!1547 = !DILocation(line: 951, column: 3, scope: !1449, inlinedAt: !1542)
!1548 = !DILocation(line: 952, column: 3, scope: !1449, inlinedAt: !1542)
!1549 = !DILocation(line: 287, column: 1, scope: !1392)
!1550 = distinct !DISubprogram(name: "cut_fields", scope: !2, file: !2, line: 292, type: !1262, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1551)
!1551 = !{!1552, !1553, !1554, !1555, !1556, !1557, !1563, !1564, !1571, !1572, !1573, !1578, !1579, !1580, !1583, !1584, !1591, !1592, !1593}
!1552 = !DILocalVariable(name: "stream", arg: 1, scope: !1550, file: !2, line: 292, type: !265)
!1553 = !DILocalVariable(name: "c", scope: !1550, file: !2, line: 294, type: !118)
!1554 = !DILocalVariable(name: "field_idx", scope: !1550, file: !2, line: 295, type: !460)
!1555 = !DILocalVariable(name: "found_any_selected_field", scope: !1550, file: !2, line: 296, type: !224)
!1556 = !DILocalVariable(name: "buffer_first_field", scope: !1550, file: !2, line: 297, type: !224)
!1557 = !DILocalVariable(name: "len", scope: !1558, file: !2, line: 320, type: !1561)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !2, line: 319, column: 9)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 318, column: 11)
!1560 = distinct !DILexicalBlock(scope: !1550, file: !2, line: 317, column: 5)
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !627, line: 77, baseType: !1562)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !292, line: 194, baseType: !293)
!1563 = !DILocalVariable(name: "n_bytes", scope: !1558, file: !2, line: 321, type: !170)
!1564 = !DILocalVariable(name: "__ptr", scope: !1565, file: !2, line: 350, type: !173)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !2, line: 350, column: 23)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !2, line: 350, column: 23)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !2, line: 349, column: 17)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !2, line: 344, column: 19)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !2, line: 343, column: 13)
!1570 = distinct !DILexicalBlock(scope: !1558, file: !2, line: 342, column: 15)
!1571 = !DILocalVariable(name: "__stream", scope: !1565, file: !2, line: 350, type: !265)
!1572 = !DILocalVariable(name: "__cnt", scope: !1565, file: !2, line: 350, type: !170)
!1573 = !DILocalVariable(name: "__ptr", scope: !1574, file: !2, line: 367, type: !173)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !2, line: 367, column: 19)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !2, line: 367, column: 19)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !2, line: 365, column: 13)
!1577 = distinct !DILexicalBlock(scope: !1558, file: !2, line: 364, column: 15)
!1578 = !DILocalVariable(name: "__stream", scope: !1574, file: !2, line: 367, type: !265)
!1579 = !DILocalVariable(name: "__cnt", scope: !1574, file: !2, line: 367, type: !170)
!1580 = !DILocalVariable(name: "last_c", scope: !1581, file: !2, line: 374, type: !118)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 373, column: 17)
!1582 = distinct !DILexicalBlock(scope: !1576, file: !2, line: 372, column: 19)
!1583 = !DILocalVariable(name: "prev_c", scope: !1560, file: !2, line: 389, type: !118)
!1584 = !DILocalVariable(name: "__ptr", scope: !1585, file: !2, line: 395, type: !173)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !2, line: 395, column: 19)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !2, line: 395, column: 19)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !2, line: 394, column: 13)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !2, line: 393, column: 15)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !2, line: 392, column: 9)
!1590 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 391, column: 11)
!1591 = !DILocalVariable(name: "__stream", scope: !1585, file: !2, line: 395, type: !265)
!1592 = !DILocalVariable(name: "__cnt", scope: !1585, file: !2, line: 395, type: !170)
!1593 = !DILocalVariable(name: "last_c", scope: !1594, file: !2, line: 418, type: !118)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !2, line: 417, column: 9)
!1595 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 416, column: 11)
!1596 = !DILocation(line: 0, scope: !1550)
!1597 = !DILocation(line: 299, column: 16, scope: !1550)
!1598 = !DILocation(line: 299, column: 14, scope: !1550)
!1599 = !DILocation(line: 0, scope: !1418, inlinedAt: !1600)
!1600 = distinct !DILocation(line: 301, column: 7, scope: !1550)
!1601 = !DILocation(line: 68, column: 10, scope: !1418, inlinedAt: !1600)
!1602 = !DILocation(line: 302, column: 7, scope: !1550)
!1603 = !DILocation(line: 302, column: 9, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1550, file: !2, line: 302, column: 7)
!1605 = !DILocation(line: 305, column: 3, scope: !1550)
!1606 = !DILocation(line: 314, column: 25, scope: !1550)
!1607 = !DILocation(line: 0, scope: !1502, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 314, column: 51, scope: !1550)
!1609 = !DILocation(line: 218, column: 10, scope: !1502, inlinedAt: !1608)
!1610 = !DILocation(line: 218, column: 22, scope: !1502, inlinedAt: !1608)
!1611 = !DILocation(line: 218, column: 25, scope: !1502, inlinedAt: !1608)
!1612 = !DILocation(line: 314, column: 48, scope: !1550)
!1613 = !DILocation(line: 316, column: 3, scope: !1550)
!1614 = !DILocation(line: 318, column: 21, scope: !1559)
!1615 = !DILocation(line: 318, column: 26, scope: !1559)
!1616 = !DILocation(line: 218, column: 10, scope: !1502, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 391, column: 11, scope: !1590)
!1618 = !DILocation(line: 324, column: 48, scope: !1558)
!1619 = !DILocation(line: 324, column: 55, scope: !1558)
!1620 = !DILocation(line: 323, column: 17, scope: !1558)
!1621 = !DILocation(line: 0, scope: !1558)
!1622 = !DILocation(line: 325, column: 19, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1558, file: !2, line: 325, column: 15)
!1624 = !DILocation(line: 325, column: 15, scope: !1558)
!1625 = !DILocation(line: 327, column: 21, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1623, file: !2, line: 326, column: 13)
!1627 = !DILocation(line: 327, column: 15, scope: !1626)
!1628 = !DILocation(line: 328, column: 30, scope: !1626)
!1629 = !DILocalVariable(name: "__stream", arg: 1, scope: !1630, file: !1419, line: 135, type: !265)
!1630 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1419, file: !1419, line: 135, type: !1420, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1631)
!1631 = !{!1629}
!1632 = !DILocation(line: 0, scope: !1630, inlinedAt: !1633)
!1633 = distinct !DILocation(line: 329, column: 19, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1626, file: !2, line: 329, column: 19)
!1635 = !DILocation(line: 137, column: 10, scope: !1630, inlinedAt: !1633)
!1636 = !{!1427, !1102, i64 0}
!1637 = !DILocation(line: 329, column: 35, scope: !1634)
!1638 = !DILocation(line: 331, column: 15, scope: !1626)
!1639 = !DILocation(line: 335, column: 11, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !2, line: 335, column: 11)
!1641 = distinct !DILexicalBlock(scope: !1558, file: !2, line: 335, column: 11)
!1642 = !DILocation(line: 335, column: 11, scope: !1641)
!1643 = !DILocation(line: 342, column: 25, scope: !1570)
!1644 = !DILocation(line: 342, column: 48, scope: !1570)
!1645 = !DILocation(line: 342, column: 57, scope: !1570)
!1646 = !DILocation(line: 342, column: 54, scope: !1570)
!1647 = !DILocation(line: 342, column: 15, scope: !1558)
!1648 = !DILocation(line: 344, column: 19, scope: !1568)
!1649 = !DILocation(line: 344, column: 19, scope: !1569)
!1650 = !DILocation(line: 350, column: 23, scope: !1566)
!1651 = !DILocation(line: 351, column: 23, scope: !1566)
!1652 = !DILocation(line: 350, column: 23, scope: !1567)
!1653 = !DILocation(line: 948, column: 21, scope: !1449, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 352, column: 21, scope: !1566)
!1655 = !DILocation(line: 0, scope: !1449, inlinedAt: !1654)
!1656 = !DILocation(line: 949, column: 3, scope: !1449, inlinedAt: !1654)
!1657 = !DILocation(line: 950, column: 11, scope: !1449, inlinedAt: !1654)
!1658 = !DILocation(line: 950, column: 3, scope: !1449, inlinedAt: !1654)
!1659 = !DILocation(line: 951, column: 3, scope: !1449, inlinedAt: !1654)
!1660 = !DILocation(line: 952, column: 3, scope: !1449, inlinedAt: !1654)
!1661 = !DILocation(line: 354, column: 23, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1567, file: !2, line: 354, column: 23)
!1663 = !DILocation(line: 354, column: 54, scope: !1662)
!1664 = !DILocation(line: 354, column: 51, scope: !1662)
!1665 = !DILocation(line: 354, column: 23, scope: !1567)
!1666 = distinct !{!1666, !1613, !1667}
!1667 = !DILocation(line: 448, column: 5, scope: !1550)
!1668 = !DILocation(line: 0, scope: !1435, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 356, column: 27, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !2, line: 356, column: 27)
!1671 = distinct !DILexicalBlock(scope: !1662, file: !2, line: 355, column: 21)
!1672 = !DILocation(line: 110, column: 10, scope: !1435, inlinedAt: !1669)
!1673 = !DILocation(line: 356, column: 27, scope: !1671)
!1674 = !DILocation(line: 356, column: 48, scope: !1670)
!1675 = !DILocation(line: 359, column: 23, scope: !1567)
!1676 = !DILocation(line: 948, column: 21, scope: !1449, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 357, column: 25, scope: !1670)
!1678 = !DILocation(line: 0, scope: !1449, inlinedAt: !1677)
!1679 = !DILocation(line: 949, column: 3, scope: !1449, inlinedAt: !1677)
!1680 = !DILocation(line: 950, column: 11, scope: !1449, inlinedAt: !1677)
!1681 = !DILocation(line: 950, column: 3, scope: !1449, inlinedAt: !1677)
!1682 = !DILocation(line: 951, column: 3, scope: !1449, inlinedAt: !1677)
!1683 = !DILocation(line: 952, column: 3, scope: !1449, inlinedAt: !1677)
!1684 = !DILocation(line: 0, scope: !1502, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 364, column: 15, scope: !1577)
!1686 = !DILocation(line: 218, column: 10, scope: !1502, inlinedAt: !1685)
!1687 = !DILocation(line: 218, column: 22, scope: !1502, inlinedAt: !1685)
!1688 = !DILocation(line: 218, column: 25, scope: !1502, inlinedAt: !1685)
!1689 = !DILocation(line: 364, column: 15, scope: !1558)
!1690 = !DILocation(line: 367, column: 19, scope: !1575)
!1691 = !DILocation(line: 368, column: 19, scope: !1575)
!1692 = !DILocation(line: 367, column: 19, scope: !1576)
!1693 = !DILocation(line: 948, column: 21, scope: !1449, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 369, column: 17, scope: !1575)
!1695 = !DILocation(line: 0, scope: !1449, inlinedAt: !1694)
!1696 = !DILocation(line: 949, column: 3, scope: !1449, inlinedAt: !1694)
!1697 = !DILocation(line: 950, column: 11, scope: !1449, inlinedAt: !1694)
!1698 = !DILocation(line: 950, column: 3, scope: !1449, inlinedAt: !1694)
!1699 = !DILocation(line: 951, column: 3, scope: !1449, inlinedAt: !1694)
!1700 = !DILocation(line: 952, column: 3, scope: !1449, inlinedAt: !1694)
!1701 = !DILocation(line: 372, column: 19, scope: !1582)
!1702 = !DILocation(line: 372, column: 28, scope: !1582)
!1703 = !DILocation(line: 372, column: 25, scope: !1582)
!1704 = !DILocation(line: 372, column: 19, scope: !1576)
!1705 = !DILocation(line: 0, scope: !1418, inlinedAt: !1706)
!1706 = distinct !DILocation(line: 374, column: 32, scope: !1581)
!1707 = !DILocation(line: 68, column: 10, scope: !1418, inlinedAt: !1706)
!1708 = !DILocation(line: 0, scope: !1581)
!1709 = !DILocation(line: 375, column: 23, scope: !1581)
!1710 = !DILocation(line: 375, column: 30, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 375, column: 23)
!1712 = !DILocation(line: 377, column: 23, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1711, file: !2, line: 376, column: 21)
!1714 = !DILocation(line: 379, column: 21, scope: !1713)
!1715 = !DILocation(line: 0, scope: !1484, inlinedAt: !1716)
!1716 = distinct !DILocation(line: 386, column: 11, scope: !1558)
!1717 = !DILocation(line: 209, column: 21, scope: !1493, inlinedAt: !1716)
!1718 = !DILocation(line: 209, column: 33, scope: !1493, inlinedAt: !1716)
!1719 = !DILocation(line: 209, column: 19, scope: !1493, inlinedAt: !1716)
!1720 = !DILocation(line: 209, column: 7, scope: !1484, inlinedAt: !1716)
!1721 = !DILocation(line: 210, column: 15, scope: !1493, inlinedAt: !1716)
!1722 = !DILocation(line: 210, column: 5, scope: !1493, inlinedAt: !1716)
!1723 = !DILocation(line: 295, column: 13, scope: !1550)
!1724 = !DILocation(line: 306, column: 5, scope: !1550)
!1725 = !DILocation(line: 0, scope: !1560)
!1726 = !DILocation(line: 0, scope: !1502, inlinedAt: !1617)
!1727 = !DILocation(line: 218, column: 22, scope: !1502, inlinedAt: !1617)
!1728 = !DILocation(line: 218, column: 25, scope: !1502, inlinedAt: !1617)
!1729 = !DILocation(line: 391, column: 11, scope: !1560)
!1730 = !DILocation(line: 393, column: 15, scope: !1589)
!1731 = !DILocation(line: 402, column: 11, scope: !1589)
!1732 = !DILocation(line: 395, column: 19, scope: !1586)
!1733 = !DILocation(line: 397, column: 22, scope: !1586)
!1734 = !DILocation(line: 397, column: 19, scope: !1586)
!1735 = !DILocation(line: 395, column: 19, scope: !1587)
!1736 = !DILocation(line: 948, column: 21, scope: !1449, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 398, column: 17, scope: !1586)
!1738 = !DILocation(line: 0, scope: !1449, inlinedAt: !1737)
!1739 = !DILocation(line: 949, column: 3, scope: !1449, inlinedAt: !1737)
!1740 = !DILocation(line: 950, column: 11, scope: !1449, inlinedAt: !1737)
!1741 = !DILocation(line: 950, column: 3, scope: !1449, inlinedAt: !1737)
!1742 = !DILocation(line: 951, column: 3, scope: !1449, inlinedAt: !1737)
!1743 = !DILocation(line: 952, column: 3, scope: !1449, inlinedAt: !1737)
!1744 = !DILocation(line: 0, scope: !1418, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 402, column: 23, scope: !1589)
!1746 = !DILocation(line: 68, column: 10, scope: !1418, inlinedAt: !1745)
!1747 = !DILocation(line: 402, column: 41, scope: !1589)
!1748 = !DILocation(line: 402, column: 38, scope: !1589)
!1749 = !DILocation(line: 402, column: 47, scope: !1589)
!1750 = !DILocation(line: 402, column: 55, scope: !1589)
!1751 = !DILocation(line: 402, column: 52, scope: !1589)
!1752 = !DILocation(line: 402, column: 66, scope: !1589)
!1753 = !DILocation(line: 0, scope: !1435, inlinedAt: !1754)
!1754 = distinct !DILocation(line: 404, column: 19, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !2, line: 404, column: 19)
!1756 = distinct !DILexicalBlock(scope: !1589, file: !2, line: 403, column: 13)
!1757 = !DILocation(line: 110, column: 10, scope: !1435, inlinedAt: !1754)
!1758 = !DILocation(line: 404, column: 19, scope: !1756)
!1759 = distinct !{!1759, !1731, !1760, !1148}
!1760 = !DILocation(line: 407, column: 13, scope: !1589)
!1761 = !DILocation(line: 404, column: 31, scope: !1755)
!1762 = !DILocation(line: 948, column: 21, scope: !1449, inlinedAt: !1763)
!1763 = distinct !DILocation(line: 405, column: 17, scope: !1755)
!1764 = !DILocation(line: 0, scope: !1449, inlinedAt: !1763)
!1765 = !DILocation(line: 949, column: 3, scope: !1449, inlinedAt: !1763)
!1766 = !DILocation(line: 950, column: 11, scope: !1449, inlinedAt: !1763)
!1767 = !DILocation(line: 950, column: 3, scope: !1449, inlinedAt: !1763)
!1768 = !DILocation(line: 951, column: 3, scope: !1449, inlinedAt: !1763)
!1769 = !DILocation(line: 952, column: 3, scope: !1449, inlinedAt: !1763)
!1770 = !DILocation(line: 0, scope: !1418, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 411, column: 23, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1590, file: !2, line: 410, column: 9)
!1773 = !DILocation(line: 68, column: 10, scope: !1418, inlinedAt: !1771)
!1774 = !DILocation(line: 411, column: 41, scope: !1772)
!1775 = !DILocation(line: 411, column: 38, scope: !1772)
!1776 = !DILocation(line: 411, column: 47, scope: !1772)
!1777 = !DILocation(line: 411, column: 55, scope: !1772)
!1778 = !DILocation(line: 411, column: 52, scope: !1772)
!1779 = !DILocation(line: 411, column: 66, scope: !1772)
!1780 = distinct !{!1780, !1781, !1782, !1148}
!1781 = !DILocation(line: 411, column: 11, scope: !1772)
!1782 = !DILocation(line: 412, column: 22, scope: !1772)
!1783 = !DILocation(line: 389, column: 11, scope: !1560)
!1784 = !DILocation(line: 0, scope: !1590)
!1785 = !DILocation(line: 416, column: 20, scope: !1595)
!1786 = !DILocation(line: 416, column: 17, scope: !1595)
!1787 = !DILocation(line: 416, column: 31, scope: !1595)
!1788 = !DILocation(line: 0, scope: !1418, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 418, column: 24, scope: !1594)
!1790 = !DILocation(line: 68, column: 10, scope: !1418, inlinedAt: !1789)
!1791 = !DILocation(line: 0, scope: !1594)
!1792 = !DILocation(line: 419, column: 15, scope: !1594)
!1793 = !DILocation(line: 419, column: 22, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1594, file: !2, line: 419, column: 15)
!1795 = !DILocation(line: 425, column: 16, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 425, column: 11)
!1797 = !DILocation(line: 427, column: 21, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1796, file: !2, line: 427, column: 16)
!1799 = !DILocation(line: 427, column: 32, scope: !1798)
!1800 = !DILocation(line: 420, column: 13, scope: !1794)
!1801 = !DILocation(line: 425, column: 13, scope: !1796)
!1802 = !DILocation(line: 425, column: 11, scope: !1560)
!1803 = !DILocation(line: 0, scope: !1484, inlinedAt: !1804)
!1804 = distinct !DILocation(line: 426, column: 9, scope: !1796)
!1805 = !DILocation(line: 208, column: 14, scope: !1484, inlinedAt: !1804)
!1806 = !DILocation(line: 209, column: 21, scope: !1493, inlinedAt: !1804)
!1807 = !DILocation(line: 209, column: 33, scope: !1493, inlinedAt: !1804)
!1808 = !DILocation(line: 209, column: 19, scope: !1493, inlinedAt: !1804)
!1809 = !DILocation(line: 209, column: 7, scope: !1484, inlinedAt: !1804)
!1810 = !DILocation(line: 210, column: 15, scope: !1493, inlinedAt: !1804)
!1811 = !DILocation(line: 210, column: 5, scope: !1493, inlinedAt: !1804)
!1812 = !DILocation(line: 427, column: 18, scope: !1798)
!1813 = !DILocation(line: 430, column: 15, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !2, line: 429, column: 15)
!1815 = distinct !DILexicalBlock(scope: !1798, file: !2, line: 428, column: 9)
!1816 = !DILocation(line: 430, column: 20, scope: !1814)
!1817 = !DILocation(line: 430, column: 43, scope: !1814)
!1818 = !DILocation(line: 433, column: 21, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !2, line: 433, column: 19)
!1820 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 431, column: 13)
!1821 = !DILocation(line: 433, column: 35, scope: !1819)
!1822 = !DILocation(line: 0, scope: !1435, inlinedAt: !1823)
!1823 = distinct !DILocation(line: 436, column: 23, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !2, line: 436, column: 23)
!1825 = distinct !DILexicalBlock(scope: !1819, file: !2, line: 435, column: 17)
!1826 = !DILocation(line: 110, column: 10, scope: !1435, inlinedAt: !1823)
!1827 = !DILocation(line: 440, column: 15, scope: !1815)
!1828 = !DILocation(line: 436, column: 44, scope: !1824)
!1829 = !DILocation(line: 436, column: 23, scope: !1825)
!1830 = !DILocation(line: 948, column: 21, scope: !1449, inlinedAt: !1831)
!1831 = distinct !DILocation(line: 437, column: 21, scope: !1824)
!1832 = !DILocation(line: 0, scope: !1449, inlinedAt: !1831)
!1833 = !DILocation(line: 949, column: 3, scope: !1449, inlinedAt: !1831)
!1834 = !DILocation(line: 950, column: 11, scope: !1449, inlinedAt: !1831)
!1835 = !DILocation(line: 950, column: 3, scope: !1449, inlinedAt: !1831)
!1836 = !DILocation(line: 951, column: 3, scope: !1449, inlinedAt: !1831)
!1837 = !DILocation(line: 952, column: 3, scope: !1449, inlinedAt: !1831)
!1838 = !DILocation(line: 445, column: 24, scope: !1815)
!1839 = !DILocation(line: 445, column: 22, scope: !1815)
!1840 = !DILocation(line: 447, column: 9, scope: !1815)
!1841 = !DILocation(line: 449, column: 1, scope: !1550)
!1842 = distinct !DISubprogram(name: "cut_file", scope: !2, file: !2, line: 455, type: !1843, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1845)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!224, !173, !1261}
!1845 = !{!1846, !1847, !1848, !1849}
!1846 = !DILocalVariable(name: "file", arg: 1, scope: !1842, file: !2, line: 455, type: !173)
!1847 = !DILocalVariable(name: "cut_stream", arg: 2, scope: !1842, file: !2, line: 455, type: !1261)
!1848 = !DILocalVariable(name: "stream", scope: !1842, file: !2, line: 457, type: !265)
!1849 = !DILocalVariable(name: "err", scope: !1842, file: !2, line: 479, type: !118)
!1850 = !DILocation(line: 0, scope: !1842)
!1851 = !DILocation(line: 0, scope: !1113, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 459, column: 7, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1842, file: !2, line: 459, column: 7)
!1854 = !DILocation(line: 1361, column: 11, scope: !1113, inlinedAt: !1852)
!1855 = !DILocation(line: 1361, column: 10, scope: !1113, inlinedAt: !1852)
!1856 = !DILocation(line: 459, column: 7, scope: !1842)
!1857 = !DILocation(line: 461, column: 23, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1853, file: !2, line: 460, column: 5)
!1859 = !DILocation(line: 462, column: 16, scope: !1858)
!1860 = !DILocation(line: 464, column: 5, scope: !1858)
!1861 = !DILocation(line: 467, column: 16, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1853, file: !2, line: 466, column: 5)
!1863 = !DILocation(line: 468, column: 18, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1862, file: !2, line: 468, column: 11)
!1865 = !DILocation(line: 468, column: 11, scope: !1862)
!1866 = !DILocation(line: 470, column: 11, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1864, file: !2, line: 469, column: 9)
!1868 = !DILocation(line: 471, column: 11, scope: !1867)
!1869 = !DILocation(line: 0, scope: !1853)
!1870 = !DILocation(line: 475, column: 3, scope: !1842)
!1871 = !DILocation(line: 477, column: 3, scope: !1842)
!1872 = !{ptr @cut_bytes, ptr @cut_fields}
!1873 = !DILocation(line: 479, column: 13, scope: !1842)
!1874 = !DILocation(line: 0, scope: !1630, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 480, column: 8, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1842, file: !2, line: 480, column: 7)
!1877 = !DILocation(line: 137, column: 10, scope: !1630, inlinedAt: !1875)
!1878 = !DILocation(line: 480, column: 8, scope: !1876)
!1879 = !DILocation(line: 480, column: 7, scope: !1842)
!1880 = !DILocation(line: 0, scope: !1113, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 482, column: 7, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1842, file: !2, line: 482, column: 7)
!1883 = !DILocation(line: 1361, column: 11, scope: !1113, inlinedAt: !1881)
!1884 = !DILocation(line: 1361, column: 10, scope: !1113, inlinedAt: !1881)
!1885 = !DILocation(line: 482, column: 7, scope: !1842)
!1886 = !DILocation(line: 483, column: 5, scope: !1882)
!1887 = !DILocation(line: 484, column: 12, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1882, file: !2, line: 484, column: 12)
!1889 = !DILocation(line: 484, column: 28, scope: !1888)
!1890 = !DILocation(line: 484, column: 12, scope: !1882)
!1891 = !DILocation(line: 485, column: 11, scope: !1888)
!1892 = !DILocation(line: 485, column: 5, scope: !1888)
!1893 = !DILocation(line: 486, column: 7, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1842, file: !2, line: 486, column: 7)
!1895 = !DILocation(line: 486, column: 7, scope: !1842)
!1896 = !DILocation(line: 492, column: 1, scope: !1842)
!1897 = !DISubprogram(name: "__errno_location", scope: !1898, file: !1898, line: 37, type: !1899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1898 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!489}
!1901 = !DISubprogram(name: "clearerr_unlocked", scope: !627, file: !627, line: 794, type: !1262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1902 = !DISubprogram(name: "__uflow", scope: !627, file: !627, line: 885, type: !1420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1903 = !DISubprogram(name: "ungetc", scope: !627, file: !627, line: 668, type: !1904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!118, !118, !265}
!1906 = !DISubprogram(name: "free", scope: !1222, file: !1222, line: 555, type: !1907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{null, !168}
!1909 = !DISubprogram(name: "__assert_fail", scope: !1910, file: !1910, line: 69, type: !1911, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1910 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!1911 = !DISubroutineType(types: !1912)
!1912 = !{null, !173, !173, !112, !173}
!1913 = !DISubprogram(name: "fflush_unlocked", scope: !627, file: !627, line: 239, type: !1420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1914 = !DISubprogram(name: "__overflow", scope: !627, file: !627, line: 886, type: !1915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!118, !265, !118}
!1917 = !DILocation(line: 0, scope: !521)
!1918 = !DILocation(line: 149, column: 16, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !521, file: !497, line: 149, column: 7)
!1920 = !DILocation(line: 149, column: 37, scope: !1919)
!1921 = !DILocalVariable(name: "__s1", arg: 1, scope: !1922, file: !1114, line: 1359, type: !173)
!1922 = distinct !DISubprogram(name: "streq", scope: !1114, file: !1114, line: 1359, type: !1115, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !1923)
!1923 = !{!1921, !1924}
!1924 = !DILocalVariable(name: "__s2", arg: 2, scope: !1922, file: !1114, line: 1359, type: !173)
!1925 = !DILocation(line: 0, scope: !1922, inlinedAt: !1926)
!1926 = distinct !DILocation(line: 149, column: 40, scope: !1919)
!1927 = !DILocation(line: 1361, column: 11, scope: !1922, inlinedAt: !1926)
!1928 = !DILocation(line: 1361, column: 10, scope: !1922, inlinedAt: !1926)
!1929 = !DILocation(line: 149, column: 7, scope: !521)
!1930 = !DILocation(line: 154, column: 15, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1919, file: !497, line: 150, column: 5)
!1932 = !DILocation(line: 155, column: 5, scope: !1931)
!1933 = !DILocation(line: 157, column: 3, scope: !521)
!1934 = !DILocation(line: 159, column: 11, scope: !583)
!1935 = !DILocation(line: 159, column: 11, scope: !584)
!1936 = !DILocation(line: 163, column: 15, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !583, file: !497, line: 160, column: 9)
!1938 = !DILocation(line: 164, column: 13, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !497, line: 164, column: 13)
!1940 = distinct !DILexicalBlock(scope: !1937, file: !497, line: 163, column: 15)
!1941 = !DILocation(line: 171, column: 29, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1937, file: !497, line: 171, column: 15)
!1943 = !DILocation(line: 172, column: 13, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1942, file: !497, line: 172, column: 13)
!1945 = !DILocation(line: 176, column: 22, scope: !1937)
!1946 = !DILocation(line: 178, column: 9, scope: !1937)
!1947 = !DILocation(line: 180, column: 19, scope: !582)
!1948 = !DILocation(line: 180, column: 50, scope: !582)
!1949 = !DILocation(line: 184, column: 15, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !582, file: !497, line: 181, column: 9)
!1951 = !DILocation(line: 188, column: 34, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !497, line: 188, column: 19)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !497, line: 185, column: 13)
!1954 = distinct !DILexicalBlock(scope: !1950, file: !497, line: 184, column: 15)
!1955 = !DILocation(line: 194, column: 21, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !497, line: 194, column: 21)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !497, line: 191, column: 23)
!1958 = distinct !DILexicalBlock(scope: !1952, file: !497, line: 189, column: 17)
!1959 = !DILocation(line: 199, column: 19, scope: !1953)
!1960 = !DILocalVariable(name: "lo", arg: 1, scope: !1961, file: !497, line: 47, type: !460)
!1961 = distinct !DISubprogram(name: "add_range_pair", scope: !497, file: !497, line: 47, type: !1962, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !1964)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{null, !460, !460}
!1964 = !{!1960, !1965}
!1965 = !DILocalVariable(name: "hi", arg: 2, scope: !1961, file: !497, line: 47, type: !460)
!1966 = !DILocation(line: 0, scope: !1961, inlinedAt: !1967)
!1967 = distinct !DILocation(line: 202, column: 19, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !497, line: 200, column: 17)
!1969 = distinct !DILexicalBlock(scope: !1953, file: !497, line: 199, column: 19)
!1970 = !DILocation(line: 49, column: 7, scope: !1971, inlinedAt: !1967)
!1971 = distinct !DILexicalBlock(scope: !1961, file: !497, line: 49, column: 7)
!1972 = !DILocation(line: 49, column: 16, scope: !1971, inlinedAt: !1967)
!1973 = !DILocation(line: 49, column: 13, scope: !1971, inlinedAt: !1967)
!1974 = !DILocation(line: 49, column: 7, scope: !1961, inlinedAt: !1967)
!1975 = !DILocation(line: 50, column: 11, scope: !1971, inlinedAt: !1967)
!1976 = !DILocation(line: 50, column: 9, scope: !1971, inlinedAt: !1967)
!1977 = !DILocation(line: 51, column: 7, scope: !1961, inlinedAt: !1967)
!1978 = !DILocation(line: 50, column: 5, scope: !1971, inlinedAt: !1967)
!1979 = !DILocation(line: 51, column: 3, scope: !1961, inlinedAt: !1967)
!1980 = !DILocation(line: 51, column: 17, scope: !1961, inlinedAt: !1967)
!1981 = !DILocation(line: 203, column: 17, scope: !1968)
!1982 = !DILocation(line: 207, column: 29, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !497, line: 207, column: 23)
!1984 = distinct !DILexicalBlock(scope: !1969, file: !497, line: 205, column: 17)
!1985 = !DILocation(line: 207, column: 23, scope: !1984)
!1986 = !DILocation(line: 208, column: 21, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1983, file: !497, line: 208, column: 21)
!1988 = !DILocation(line: 0, scope: !1961, inlinedAt: !1989)
!1989 = distinct !DILocation(line: 210, column: 19, scope: !1984)
!1990 = !DILocation(line: 49, column: 7, scope: !1971, inlinedAt: !1989)
!1991 = !DILocation(line: 49, column: 16, scope: !1971, inlinedAt: !1989)
!1992 = !DILocation(line: 49, column: 13, scope: !1971, inlinedAt: !1989)
!1993 = !DILocation(line: 49, column: 7, scope: !1961, inlinedAt: !1989)
!1994 = !DILocation(line: 50, column: 11, scope: !1971, inlinedAt: !1989)
!1995 = !DILocation(line: 50, column: 9, scope: !1971, inlinedAt: !1989)
!1996 = !DILocation(line: 51, column: 7, scope: !1961, inlinedAt: !1989)
!1997 = !DILocation(line: 50, column: 5, scope: !1971, inlinedAt: !1989)
!1998 = !DILocation(line: 51, column: 3, scope: !1961, inlinedAt: !1989)
!1999 = !DILocation(line: 51, column: 17, scope: !1961, inlinedAt: !1989)
!2000 = !DILocation(line: 217, column: 25, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !497, line: 217, column: 19)
!2002 = distinct !DILexicalBlock(scope: !1954, file: !497, line: 215, column: 13)
!2003 = !DILocation(line: 217, column: 19, scope: !2002)
!2004 = !DILocation(line: 218, column: 17, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2001, file: !497, line: 218, column: 17)
!2006 = !DILocation(line: 0, scope: !1961, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 222, column: 15, scope: !2002)
!2008 = !DILocation(line: 49, column: 7, scope: !1971, inlinedAt: !2007)
!2009 = !DILocation(line: 49, column: 16, scope: !1971, inlinedAt: !2007)
!2010 = !DILocation(line: 49, column: 13, scope: !1971, inlinedAt: !2007)
!2011 = !DILocation(line: 49, column: 7, scope: !1961, inlinedAt: !2007)
!2012 = !DILocation(line: 50, column: 11, scope: !1971, inlinedAt: !2007)
!2013 = !DILocation(line: 50, column: 9, scope: !1971, inlinedAt: !2007)
!2014 = !DILocation(line: 51, column: 7, scope: !1961, inlinedAt: !2007)
!2015 = !DILocation(line: 50, column: 5, scope: !1971, inlinedAt: !2007)
!2016 = !DILocation(line: 51, column: 3, scope: !1961, inlinedAt: !2007)
!2017 = !DILocation(line: 51, column: 17, scope: !1961, inlinedAt: !2007)
!2018 = !DILocation(line: 138, column: 13, scope: !521)
!2019 = !DILocation(line: 0, scope: !1954)
!2020 = !DILocation(line: 226, column: 15, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1950, file: !497, line: 226, column: 15)
!2022 = !DILocation(line: 226, column: 25, scope: !2021)
!2023 = !DILocation(line: 226, column: 15, scope: !1950)
!2024 = !DILocation(line: 180, column: 53, scope: !582)
!2025 = !DILocalVariable(name: "c", arg: 1, scope: !2026, file: !2027, line: 233, type: !118)
!2026 = distinct !DISubprogram(name: "c_isdigit", scope: !2027, file: !2027, line: 233, type: !2028, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2030)
!2027 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!224, !118}
!2030 = !{!2025}
!2031 = !DILocation(line: 0, scope: !2026, inlinedAt: !2032)
!2032 = distinct !DILocation(line: 233, column: 16, scope: !581)
!2033 = !DILocation(line: 235, column: 3, scope: !2026, inlinedAt: !2032)
!2034 = !DILocation(line: 233, column: 16, scope: !582)
!2035 = !DILocation(line: 238, column: 26, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !580, file: !497, line: 238, column: 15)
!2037 = !DILocation(line: 239, column: 23, scope: !2036)
!2038 = !DILocation(line: 239, column: 13, scope: !2036)
!2039 = !DILocation(line: 248, column: 16, scope: !579)
!2040 = !DILocation(line: 249, column: 15, scope: !579)
!2041 = !DILocation(line: 254, column: 42, scope: !578)
!2042 = !DILocation(line: 253, column: 31, scope: !578)
!2043 = !DILocation(line: 0, scope: !578)
!2044 = !DILocation(line: 255, column: 15, scope: !578)
!2045 = !DILocation(line: 259, column: 15, scope: !578)
!2046 = !DILocation(line: 260, column: 15, scope: !578)
!2047 = !DILocation(line: 267, column: 11, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !581, file: !497, line: 266, column: 9)
!2049 = !DILocation(line: 271, column: 11, scope: !2048)
!2050 = !DILocation(line: 0, scope: !583)
!2051 = distinct !{!2051, !1933, !2052}
!2052 = !DILocation(line: 273, column: 5, scope: !521)
!2053 = !DILocation(line: 275, column: 8, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !521, file: !497, line: 275, column: 7)
!2055 = !DILocation(line: 275, column: 7, scope: !521)
!2056 = !DILocation(line: 276, column: 5, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2054, file: !497, line: 276, column: 5)
!2058 = !DILocation(line: 280, column: 3, scope: !521)
!2059 = !DILocation(line: 0, scope: !586)
!2060 = !DILocation(line: 283, column: 25, scope: !590)
!2061 = !DILocation(line: 283, column: 23, scope: !590)
!2062 = !DILocation(line: 283, column: 3, scope: !586)
!2063 = !DILocation(line: 299, column: 15, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !521, file: !497, line: 299, column: 7)
!2065 = !DILocation(line: 299, column: 7, scope: !521)
!2066 = !DILocation(line: 285, column: 24, scope: !588)
!2067 = !DILocation(line: 0, scope: !588)
!2068 = !DILocation(line: 285, column: 31, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !588, file: !497, line: 285, column: 7)
!2070 = !DILocation(line: 285, column: 7, scope: !588)
!2071 = !DILocation(line: 287, column: 15, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !497, line: 287, column: 15)
!2073 = distinct !DILexicalBlock(scope: !2069, file: !497, line: 286, column: 9)
!2074 = !DILocation(line: 287, column: 22, scope: !2072)
!2075 = !DILocation(line: 287, column: 35, scope: !2072)
!2076 = !DILocation(line: 287, column: 25, scope: !2072)
!2077 = !DILocation(line: 287, column: 15, scope: !2073)
!2078 = distinct !{!2078, !2070, !2079, !1148}
!2079 = !DILocation(line: 296, column: 9, scope: !588)
!2080 = !DILocation(line: 289, column: 27, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2072, file: !497, line: 288, column: 13)
!2082 = !DILocation(line: 289, column: 25, scope: !2081)
!2083 = !DILocation(line: 290, column: 41, scope: !2081)
!2084 = !DILocation(line: 290, column: 47, scope: !2081)
!2085 = !DILocation(line: 290, column: 57, scope: !2081)
!2086 = !DILocation(line: 290, column: 62, scope: !2081)
!2087 = !DILocalVariable(name: "__dest", arg: 1, scope: !2088, file: !2089, line: 34, type: !168)
!2088 = distinct !DISubprogram(name: "memmove", scope: !2089, file: !2089, line: 34, type: !2090, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2092)
!2089 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!168, !168, !1246, !170}
!2092 = !{!2087, !2093, !2094}
!2093 = !DILocalVariable(name: "__src", arg: 2, scope: !2088, file: !2089, line: 34, type: !1246)
!2094 = !DILocalVariable(name: "__len", arg: 3, scope: !2088, file: !2089, line: 34, type: !170)
!2095 = !DILocation(line: 0, scope: !2088, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 290, column: 15, scope: !2081)
!2097 = !DILocation(line: 36, column: 10, scope: !2088, inlinedAt: !2096)
!2098 = !DILocation(line: 291, column: 20, scope: !2081)
!2099 = distinct !{!2099, !2062, !2100, !1148}
!2100 = !DILocation(line: 297, column: 5, scope: !586)
!2101 = !DILocation(line: 72, column: 32, scope: !2102, inlinedAt: !2108)
!2102 = distinct !DISubprogram(name: "complement_rp", scope: !497, file: !497, line: 70, type: !668, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2103)
!2103 = !{!2104, !2105, !2106}
!2104 = !DILocalVariable(name: "c", scope: !2102, file: !497, line: 72, type: !556)
!2105 = !DILocalVariable(name: "n", scope: !2102, file: !497, line: 73, type: !563)
!2106 = !DILocalVariable(name: "i", scope: !2107, file: !497, line: 82, type: !563)
!2107 = distinct !DILexicalBlock(scope: !2102, file: !497, line: 82, column: 3)
!2108 = distinct !DILocation(line: 300, column: 5, scope: !2064)
!2109 = !DILocation(line: 0, scope: !2102, inlinedAt: !2108)
!2110 = !DILocation(line: 75, column: 7, scope: !2102, inlinedAt: !2108)
!2111 = !DILocation(line: 76, column: 9, scope: !2102, inlinedAt: !2108)
!2112 = !DILocation(line: 77, column: 19, scope: !2102, inlinedAt: !2108)
!2113 = !DILocation(line: 79, column: 12, scope: !2114, inlinedAt: !2108)
!2114 = distinct !DILexicalBlock(scope: !2102, file: !497, line: 79, column: 7)
!2115 = !DILocation(line: 79, column: 15, scope: !2114, inlinedAt: !2108)
!2116 = !DILocation(line: 79, column: 7, scope: !2102, inlinedAt: !2108)
!2117 = !DILocation(line: 80, column: 32, scope: !2114, inlinedAt: !2108)
!2118 = !DILocation(line: 0, scope: !1961, inlinedAt: !2119)
!2119 = distinct !DILocation(line: 80, column: 5, scope: !2114, inlinedAt: !2108)
!2120 = !DILocation(line: 50, column: 11, scope: !1971, inlinedAt: !2119)
!2121 = !DILocation(line: 50, column: 9, scope: !1971, inlinedAt: !2119)
!2122 = !DILocation(line: 51, column: 7, scope: !1961, inlinedAt: !2119)
!2123 = !DILocation(line: 51, column: 3, scope: !1961, inlinedAt: !2119)
!2124 = !DILocation(line: 51, column: 17, scope: !1961, inlinedAt: !2119)
!2125 = !DILocation(line: 52, column: 7, scope: !1961, inlinedAt: !2119)
!2126 = !DILocation(line: 52, column: 14, scope: !1961, inlinedAt: !2119)
!2127 = !DILocation(line: 52, column: 17, scope: !1961, inlinedAt: !2119)
!2128 = !DILocation(line: 53, column: 3, scope: !1961, inlinedAt: !2119)
!2129 = !DILocation(line: 80, column: 5, scope: !2114, inlinedAt: !2108)
!2130 = !DILocation(line: 0, scope: !2107, inlinedAt: !2108)
!2131 = !DILocation(line: 82, column: 23, scope: !2132, inlinedAt: !2108)
!2132 = distinct !DILexicalBlock(scope: !2107, file: !497, line: 82, column: 3)
!2133 = !DILocation(line: 82, column: 3, scope: !2107, inlinedAt: !2108)
!2134 = !DILocation(line: 90, column: 11, scope: !2135, inlinedAt: !2108)
!2135 = distinct !DILexicalBlock(scope: !2102, file: !497, line: 90, column: 7)
!2136 = !DILocation(line: 90, column: 16, scope: !2135, inlinedAt: !2108)
!2137 = !DILocation(line: 90, column: 19, scope: !2135, inlinedAt: !2108)
!2138 = !DILocation(line: 90, column: 7, scope: !2102, inlinedAt: !2108)
!2139 = !DILocation(line: 84, column: 15, scope: !2140, inlinedAt: !2108)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !497, line: 84, column: 11)
!2141 = distinct !DILexicalBlock(scope: !2132, file: !497, line: 83, column: 5)
!2142 = !DILocation(line: 84, column: 20, scope: !2140, inlinedAt: !2108)
!2143 = !DILocation(line: 84, column: 23, scope: !2140, inlinedAt: !2108)
!2144 = !DILocation(line: 84, column: 30, scope: !2140, inlinedAt: !2108)
!2145 = !DILocation(line: 84, column: 35, scope: !2140, inlinedAt: !2108)
!2146 = !DILocation(line: 84, column: 27, scope: !2140, inlinedAt: !2108)
!2147 = !DILocation(line: 84, column: 11, scope: !2141, inlinedAt: !2108)
!2148 = !DILocation(line: 87, column: 48, scope: !2141, inlinedAt: !2108)
!2149 = !DILocation(line: 0, scope: !1961, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 87, column: 7, scope: !2141, inlinedAt: !2108)
!2151 = !DILocation(line: 49, column: 16, scope: !1971, inlinedAt: !2150)
!2152 = !DILocation(line: 49, column: 13, scope: !1971, inlinedAt: !2150)
!2153 = !DILocation(line: 49, column: 7, scope: !1961, inlinedAt: !2150)
!2154 = !DILocation(line: 50, column: 11, scope: !1971, inlinedAt: !2150)
!2155 = !DILocation(line: 50, column: 9, scope: !1971, inlinedAt: !2150)
!2156 = !DILocation(line: 51, column: 7, scope: !1961, inlinedAt: !2150)
!2157 = !DILocation(line: 50, column: 5, scope: !1971, inlinedAt: !2150)
!2158 = !DILocation(line: 51, column: 3, scope: !1961, inlinedAt: !2150)
!2159 = !DILocation(line: 51, column: 17, scope: !1961, inlinedAt: !2150)
!2160 = !DILocation(line: 52, column: 7, scope: !1961, inlinedAt: !2150)
!2161 = !DILocation(line: 52, column: 14, scope: !1961, inlinedAt: !2150)
!2162 = !DILocation(line: 52, column: 17, scope: !1961, inlinedAt: !2150)
!2163 = !DILocation(line: 53, column: 3, scope: !1961, inlinedAt: !2150)
!2164 = !DILocation(line: 88, column: 5, scope: !2141, inlinedAt: !2108)
!2165 = !DILocation(line: 82, column: 28, scope: !2132, inlinedAt: !2108)
!2166 = distinct !{!2166, !2133, !2167, !1148}
!2167 = !DILocation(line: 88, column: 5, scope: !2107, inlinedAt: !2108)
!2168 = !DILocation(line: 91, column: 33, scope: !2135, inlinedAt: !2108)
!2169 = !DILocation(line: 0, scope: !1961, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 91, column: 5, scope: !2135, inlinedAt: !2108)
!2171 = !DILocation(line: 49, column: 16, scope: !1971, inlinedAt: !2170)
!2172 = !DILocation(line: 49, column: 13, scope: !1971, inlinedAt: !2170)
!2173 = !DILocation(line: 49, column: 7, scope: !1961, inlinedAt: !2170)
!2174 = !DILocation(line: 50, column: 11, scope: !1971, inlinedAt: !2170)
!2175 = !DILocation(line: 50, column: 9, scope: !1971, inlinedAt: !2170)
!2176 = !DILocation(line: 51, column: 7, scope: !1961, inlinedAt: !2170)
!2177 = !DILocation(line: 50, column: 5, scope: !1971, inlinedAt: !2170)
!2178 = !DILocation(line: 51, column: 3, scope: !1961, inlinedAt: !2170)
!2179 = !DILocation(line: 51, column: 17, scope: !1961, inlinedAt: !2170)
!2180 = !DILocation(line: 52, column: 7, scope: !1961, inlinedAt: !2170)
!2181 = !DILocation(line: 52, column: 14, scope: !1961, inlinedAt: !2170)
!2182 = !DILocation(line: 52, column: 17, scope: !1961, inlinedAt: !2170)
!2183 = !DILocation(line: 53, column: 3, scope: !1961, inlinedAt: !2170)
!2184 = !DILocation(line: 91, column: 5, scope: !2135, inlinedAt: !2108)
!2185 = !DILocation(line: 93, column: 3, scope: !2102, inlinedAt: !2108)
!2186 = !DILocation(line: 305, column: 3, scope: !521)
!2187 = !DILocation(line: 300, column: 5, scope: !2064)
!2188 = !DILocation(line: 306, column: 19, scope: !521)
!2189 = !DILocation(line: 306, column: 30, scope: !521)
!2190 = !DILocation(line: 306, column: 9, scope: !521)
!2191 = !DILocation(line: 306, column: 7, scope: !521)
!2192 = !DILocation(line: 307, column: 27, scope: !521)
!2193 = !DILocation(line: 307, column: 33, scope: !521)
!2194 = !DILocation(line: 307, column: 38, scope: !521)
!2195 = !DILocation(line: 307, column: 41, scope: !521)
!2196 = !DILocation(line: 307, column: 7, scope: !521)
!2197 = !DILocation(line: 307, column: 13, scope: !521)
!2198 = !DILocation(line: 307, column: 3, scope: !521)
!2199 = !DILocation(line: 307, column: 21, scope: !521)
!2200 = !DILocation(line: 308, column: 1, scope: !521)
!2201 = distinct !DISubprogram(name: "compare_ranges", scope: !497, file: !497, line: 60, type: !2202, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2204)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!118, !1246, !1246}
!2204 = !{!2205, !2206, !2207, !2210}
!2205 = !DILocalVariable(name: "a", arg: 1, scope: !2201, file: !497, line: 60, type: !1246)
!2206 = !DILocalVariable(name: "b", arg: 2, scope: !2201, file: !497, line: 60, type: !1246)
!2207 = !DILocalVariable(name: "ap", scope: !2201, file: !497, line: 62, type: !2208)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !557)
!2210 = !DILocalVariable(name: "bp", scope: !2201, file: !497, line: 62, type: !2208)
!2211 = !DILocation(line: 0, scope: !2201)
!2212 = !DILocation(line: 63, column: 10, scope: !2201)
!2213 = !DILocation(line: 63, column: 3, scope: !2201)
!2214 = !DISubprogram(name: "qsort", scope: !1222, file: !1222, line: 838, type: !2215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{null, !168, !170, !170, !2217}
!2217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1222, line: 816, baseType: !2218)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2219 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !601, file: !601, line: 50, type: !1053, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !2220)
!2220 = !{!2221}
!2221 = !DILocalVariable(name: "file", arg: 1, scope: !2219, file: !601, line: 50, type: !173)
!2222 = !DILocation(line: 0, scope: !2219)
!2223 = !DILocation(line: 52, column: 13, scope: !2219)
!2224 = !DILocation(line: 53, column: 1, scope: !2219)
!2225 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !601, file: !601, line: 87, type: !2226, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !2228)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{null, !224}
!2228 = !{!2229}
!2229 = !DILocalVariable(name: "ignore", arg: 1, scope: !2225, file: !601, line: 87, type: !224)
!2230 = !DILocation(line: 0, scope: !2225)
!2231 = !DILocation(line: 89, column: 16, scope: !2225)
!2232 = !{!2233, !2233, i64 0}
!2233 = !{!"_Bool", !1026, i64 0}
!2234 = !DILocation(line: 90, column: 1, scope: !2225)
!2235 = distinct !DISubprogram(name: "close_stdout", scope: !601, file: !601, line: 116, type: !668, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !2236)
!2236 = !{!2237}
!2237 = !DILocalVariable(name: "write_error", scope: !2238, file: !601, line: 121, type: !173)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !601, line: 120, column: 5)
!2239 = distinct !DILexicalBlock(scope: !2235, file: !601, line: 118, column: 7)
!2240 = !DILocation(line: 118, column: 21, scope: !2239)
!2241 = !DILocation(line: 118, column: 7, scope: !2239)
!2242 = !DILocation(line: 118, column: 29, scope: !2239)
!2243 = !DILocation(line: 119, column: 7, scope: !2239)
!2244 = !DILocation(line: 119, column: 12, scope: !2239)
!2245 = !{i8 0, i8 2}
!2246 = !DILocation(line: 119, column: 25, scope: !2239)
!2247 = !DILocation(line: 119, column: 28, scope: !2239)
!2248 = !DILocation(line: 119, column: 34, scope: !2239)
!2249 = !DILocation(line: 118, column: 7, scope: !2235)
!2250 = !DILocation(line: 121, column: 33, scope: !2238)
!2251 = !DILocation(line: 0, scope: !2238)
!2252 = !DILocation(line: 122, column: 11, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2238, file: !601, line: 122, column: 11)
!2254 = !DILocation(line: 0, scope: !2253)
!2255 = !DILocation(line: 122, column: 11, scope: !2238)
!2256 = !DILocation(line: 123, column: 9, scope: !2253)
!2257 = !DILocation(line: 126, column: 9, scope: !2253)
!2258 = !DILocation(line: 128, column: 14, scope: !2238)
!2259 = !DILocation(line: 128, column: 7, scope: !2238)
!2260 = !DILocation(line: 133, column: 42, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2235, file: !601, line: 133, column: 7)
!2262 = !DILocation(line: 133, column: 28, scope: !2261)
!2263 = !DILocation(line: 133, column: 50, scope: !2261)
!2264 = !DILocation(line: 133, column: 7, scope: !2235)
!2265 = !DILocation(line: 134, column: 12, scope: !2261)
!2266 = !DILocation(line: 134, column: 5, scope: !2261)
!2267 = !DILocation(line: 135, column: 1, scope: !2235)
!2268 = !DISubprogram(name: "_exit", scope: !2269, file: !2269, line: 624, type: !1014, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!2269 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2270 = distinct !DISubprogram(name: "verror", scope: !616, file: !616, line: 251, type: !2271, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2273)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{null, !118, !118, !173, !626}
!2273 = !{!2274, !2275, !2276, !2277}
!2274 = !DILocalVariable(name: "status", arg: 1, scope: !2270, file: !616, line: 251, type: !118)
!2275 = !DILocalVariable(name: "errnum", arg: 2, scope: !2270, file: !616, line: 251, type: !118)
!2276 = !DILocalVariable(name: "message", arg: 3, scope: !2270, file: !616, line: 251, type: !173)
!2277 = !DILocalVariable(name: "args", arg: 4, scope: !2270, file: !616, line: 251, type: !626)
!2278 = !DILocation(line: 0, scope: !2270)
!2279 = !DILocation(line: 251, column: 1, scope: !2270)
!2280 = !DILocation(line: 261, column: 3, scope: !2270)
!2281 = !DILocation(line: 265, column: 7, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2270, file: !616, line: 265, column: 7)
!2283 = !DILocation(line: 265, column: 7, scope: !2270)
!2284 = !DILocation(line: 266, column: 5, scope: !2282)
!2285 = !DILocation(line: 272, column: 7, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2282, file: !616, line: 268, column: 5)
!2287 = !DILocation(line: 276, column: 3, scope: !2270)
!2288 = !{i64 0, i64 8, !1024, i64 8, i64 8, !1024, i64 16, i64 8, !1024, i64 24, i64 4, !1101, i64 28, i64 4, !1101}
!2289 = !DILocation(line: 282, column: 1, scope: !2270)
!2290 = distinct !DISubprogram(name: "flush_stdout", scope: !616, file: !616, line: 163, type: !668, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2291)
!2291 = !{!2292}
!2292 = !DILocalVariable(name: "stdout_fd", scope: !2290, file: !616, line: 166, type: !118)
!2293 = !DILocation(line: 0, scope: !2290)
!2294 = !DILocalVariable(name: "fd", arg: 1, scope: !2295, file: !616, line: 145, type: !118)
!2295 = distinct !DISubprogram(name: "is_open", scope: !616, file: !616, line: 145, type: !1436, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2296)
!2296 = !{!2294}
!2297 = !DILocation(line: 0, scope: !2295, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 182, column: 25, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2290, file: !616, line: 182, column: 7)
!2300 = !DILocation(line: 157, column: 15, scope: !2295, inlinedAt: !2298)
!2301 = !DILocation(line: 157, column: 12, scope: !2295, inlinedAt: !2298)
!2302 = !DILocation(line: 182, column: 7, scope: !2290)
!2303 = !DILocation(line: 184, column: 5, scope: !2299)
!2304 = !DILocation(line: 185, column: 1, scope: !2290)
!2305 = distinct !DISubprogram(name: "error_tail", scope: !616, file: !616, line: 219, type: !2271, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2306)
!2306 = !{!2307, !2308, !2309, !2310}
!2307 = !DILocalVariable(name: "status", arg: 1, scope: !2305, file: !616, line: 219, type: !118)
!2308 = !DILocalVariable(name: "errnum", arg: 2, scope: !2305, file: !616, line: 219, type: !118)
!2309 = !DILocalVariable(name: "message", arg: 3, scope: !2305, file: !616, line: 219, type: !173)
!2310 = !DILocalVariable(name: "args", arg: 4, scope: !2305, file: !616, line: 219, type: !626)
!2311 = !DILocation(line: 0, scope: !2305)
!2312 = !DILocation(line: 219, column: 1, scope: !2305)
!2313 = !DILocation(line: 229, column: 13, scope: !2305)
!2314 = !DILocation(line: 135, column: 10, scope: !2315, inlinedAt: !2357)
!2315 = distinct !DISubprogram(name: "vfprintf", scope: !1088, file: !1088, line: 132, type: !2316, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2353)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!118, !2318, !1092, !628}
!2318 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2319)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !2321)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !2322)
!2322 = !{!2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2321, file: !269, line: 51, baseType: !118, size: 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2321, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2321, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2321, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2321, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2321, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2321, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2321, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2321, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2321, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2321, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2321, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2321, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2321, file: !269, line: 70, baseType: !2337, size: 64, offset: 832)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2321, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2321, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2321, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2321, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2321, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2321, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2321, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2321, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2321, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2321, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2321, file: !269, line: 93, baseType: !2337, size: 64, offset: 1344)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2321, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2321, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2321, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2321, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!2353 = !{!2354, !2355, !2356}
!2354 = !DILocalVariable(name: "__stream", arg: 1, scope: !2315, file: !1088, line: 132, type: !2318)
!2355 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2315, file: !1088, line: 133, type: !1092)
!2356 = !DILocalVariable(name: "__ap", arg: 3, scope: !2315, file: !1088, line: 133, type: !628)
!2357 = distinct !DILocation(line: 229, column: 3, scope: !2305)
!2358 = !{!2359, !2361}
!2359 = distinct !{!2359, !2360, !"vfprintf.inline: argument 0"}
!2360 = distinct !{!2360, !"vfprintf.inline"}
!2361 = distinct !{!2361, !2360, !"vfprintf.inline: argument 1"}
!2362 = !DILocation(line: 229, column: 3, scope: !2305)
!2363 = !DILocation(line: 0, scope: !2315, inlinedAt: !2357)
!2364 = !DILocation(line: 133, column: 49, scope: !2315, inlinedAt: !2357)
!2365 = !DILocation(line: 232, column: 3, scope: !2305)
!2366 = !DILocation(line: 233, column: 7, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2305, file: !616, line: 233, column: 7)
!2368 = !DILocation(line: 233, column: 7, scope: !2305)
!2369 = !DILocalVariable(name: "errnum", arg: 1, scope: !2370, file: !616, line: 188, type: !118)
!2370 = distinct !DISubprogram(name: "print_errno_message", scope: !616, file: !616, line: 188, type: !1014, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2371)
!2371 = !{!2369, !2372, !2373}
!2372 = !DILocalVariable(name: "s", scope: !2370, file: !616, line: 190, type: !173)
!2373 = !DILocalVariable(name: "errbuf", scope: !2370, file: !616, line: 193, type: !2374)
!2374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2375)
!2375 = !{!2376}
!2376 = !DISubrange(count: 1024)
!2377 = !DILocation(line: 0, scope: !2370, inlinedAt: !2378)
!2378 = distinct !DILocation(line: 234, column: 5, scope: !2367)
!2379 = !DILocation(line: 193, column: 3, scope: !2370, inlinedAt: !2378)
!2380 = !DILocation(line: 193, column: 8, scope: !2370, inlinedAt: !2378)
!2381 = !DILocation(line: 195, column: 7, scope: !2370, inlinedAt: !2378)
!2382 = !DILocation(line: 207, column: 9, scope: !2383, inlinedAt: !2378)
!2383 = distinct !DILexicalBlock(scope: !2370, file: !616, line: 207, column: 7)
!2384 = !DILocation(line: 207, column: 7, scope: !2370, inlinedAt: !2378)
!2385 = !DILocation(line: 208, column: 9, scope: !2383, inlinedAt: !2378)
!2386 = !DILocation(line: 208, column: 5, scope: !2383, inlinedAt: !2378)
!2387 = !DILocation(line: 214, column: 3, scope: !2370, inlinedAt: !2378)
!2388 = !DILocation(line: 216, column: 1, scope: !2370, inlinedAt: !2378)
!2389 = !DILocation(line: 234, column: 5, scope: !2367)
!2390 = !DILocation(line: 238, column: 3, scope: !2305)
!2391 = !DILocalVariable(name: "__c", arg: 1, scope: !2392, file: !1419, line: 101, type: !118)
!2392 = distinct !DISubprogram(name: "putc_unlocked", scope: !1419, file: !1419, line: 101, type: !2393, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2395)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!118, !118, !2319}
!2395 = !{!2391, !2396}
!2396 = !DILocalVariable(name: "__stream", arg: 2, scope: !2392, file: !1419, line: 101, type: !2319)
!2397 = !DILocation(line: 0, scope: !2392, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 238, column: 3, scope: !2305)
!2399 = !DILocation(line: 103, column: 10, scope: !2392, inlinedAt: !2398)
!2400 = !DILocation(line: 240, column: 3, scope: !2305)
!2401 = !DILocation(line: 241, column: 7, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2305, file: !616, line: 241, column: 7)
!2403 = !DILocation(line: 241, column: 7, scope: !2305)
!2404 = !DILocation(line: 242, column: 5, scope: !2402)
!2405 = !DILocation(line: 243, column: 1, scope: !2305)
!2406 = !DISubprogram(name: "__vfprintf_chk", scope: !1088, file: !1088, line: 96, type: !2407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!118, !2318, !118, !1092, !628}
!2409 = !DISubprogram(name: "strerror_r", scope: !1218, file: !1218, line: 444, type: !2410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!167, !118, !167, !170}
!2412 = !DISubprogram(name: "fcntl", scope: !2413, file: !2413, line: 149, type: !2414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!2413 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!118, !118, !118, null}
!2416 = distinct !DISubprogram(name: "error", scope: !616, file: !616, line: 285, type: !2417, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2419)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{null, !118, !118, !173, null}
!2419 = !{!2420, !2421, !2422, !2423}
!2420 = !DILocalVariable(name: "status", arg: 1, scope: !2416, file: !616, line: 285, type: !118)
!2421 = !DILocalVariable(name: "errnum", arg: 2, scope: !2416, file: !616, line: 285, type: !118)
!2422 = !DILocalVariable(name: "message", arg: 3, scope: !2416, file: !616, line: 285, type: !173)
!2423 = !DILocalVariable(name: "ap", scope: !2416, file: !616, line: 287, type: !626)
!2424 = !DILocation(line: 0, scope: !2416)
!2425 = !DILocation(line: 287, column: 3, scope: !2416)
!2426 = !DILocation(line: 287, column: 11, scope: !2416)
!2427 = !DILocation(line: 288, column: 3, scope: !2416)
!2428 = !DILocation(line: 289, column: 3, scope: !2416)
!2429 = !DILocation(line: 290, column: 3, scope: !2416)
!2430 = !DILocation(line: 291, column: 1, scope: !2416)
!2431 = !DILocation(line: 0, scope: !623)
!2432 = !DILocation(line: 298, column: 1, scope: !623)
!2433 = !DILocation(line: 302, column: 7, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !623, file: !616, line: 302, column: 7)
!2435 = !DILocation(line: 302, column: 7, scope: !623)
!2436 = !DILocation(line: 307, column: 11, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !616, line: 307, column: 11)
!2438 = distinct !DILexicalBlock(scope: !2434, file: !616, line: 303, column: 5)
!2439 = !DILocation(line: 307, column: 27, scope: !2437)
!2440 = !DILocation(line: 308, column: 11, scope: !2437)
!2441 = !DILocation(line: 308, column: 28, scope: !2437)
!2442 = !DILocation(line: 308, column: 25, scope: !2437)
!2443 = !DILocation(line: 309, column: 15, scope: !2437)
!2444 = !DILocation(line: 309, column: 33, scope: !2437)
!2445 = !DILocation(line: 310, column: 19, scope: !2437)
!2446 = !DILocation(line: 311, column: 22, scope: !2437)
!2447 = !DILocation(line: 311, column: 56, scope: !2437)
!2448 = !DILocation(line: 307, column: 11, scope: !2438)
!2449 = !DILocation(line: 316, column: 21, scope: !2438)
!2450 = !DILocation(line: 317, column: 23, scope: !2438)
!2451 = !DILocation(line: 318, column: 5, scope: !2438)
!2452 = !DILocation(line: 327, column: 3, scope: !623)
!2453 = !DILocation(line: 331, column: 7, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !623, file: !616, line: 331, column: 7)
!2455 = !DILocation(line: 331, column: 7, scope: !623)
!2456 = !DILocation(line: 332, column: 5, scope: !2454)
!2457 = !DILocation(line: 338, column: 7, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2454, file: !616, line: 334, column: 5)
!2459 = !DILocation(line: 346, column: 3, scope: !623)
!2460 = !DILocation(line: 350, column: 3, scope: !623)
!2461 = !DILocation(line: 356, column: 1, scope: !623)
!2462 = distinct !DISubprogram(name: "error_at_line", scope: !616, file: !616, line: 359, type: !2463, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2465)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{null, !118, !118, !173, !112, !173, null}
!2465 = !{!2466, !2467, !2468, !2469, !2470, !2471}
!2466 = !DILocalVariable(name: "status", arg: 1, scope: !2462, file: !616, line: 359, type: !118)
!2467 = !DILocalVariable(name: "errnum", arg: 2, scope: !2462, file: !616, line: 359, type: !118)
!2468 = !DILocalVariable(name: "file_name", arg: 3, scope: !2462, file: !616, line: 359, type: !173)
!2469 = !DILocalVariable(name: "line_number", arg: 4, scope: !2462, file: !616, line: 360, type: !112)
!2470 = !DILocalVariable(name: "message", arg: 5, scope: !2462, file: !616, line: 360, type: !173)
!2471 = !DILocalVariable(name: "ap", scope: !2462, file: !616, line: 362, type: !626)
!2472 = !DILocation(line: 0, scope: !2462)
!2473 = !DILocation(line: 362, column: 3, scope: !2462)
!2474 = !DILocation(line: 362, column: 11, scope: !2462)
!2475 = !DILocation(line: 363, column: 3, scope: !2462)
!2476 = !DILocation(line: 364, column: 3, scope: !2462)
!2477 = !DILocation(line: 366, column: 3, scope: !2462)
!2478 = !DILocation(line: 367, column: 1, scope: !2462)
!2479 = distinct !DISubprogram(name: "fdadvise", scope: !923, file: !923, line: 25, type: !2480, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !2484)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{null, !118, !2482, !2482, !2483}
!2482 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !627, line: 63, baseType: !291)
!2483 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !158, line: 51, baseType: !157)
!2484 = !{!2485, !2486, !2487, !2488}
!2485 = !DILocalVariable(name: "fd", arg: 1, scope: !2479, file: !923, line: 25, type: !118)
!2486 = !DILocalVariable(name: "offset", arg: 2, scope: !2479, file: !923, line: 25, type: !2482)
!2487 = !DILocalVariable(name: "len", arg: 3, scope: !2479, file: !923, line: 25, type: !2482)
!2488 = !DILocalVariable(name: "advice", arg: 4, scope: !2479, file: !923, line: 25, type: !2483)
!2489 = !DILocation(line: 0, scope: !2479)
!2490 = !DILocation(line: 28, column: 3, scope: !2479)
!2491 = !DILocation(line: 30, column: 1, scope: !2479)
!2492 = !DISubprogram(name: "posix_fadvise", scope: !2413, file: !2413, line: 273, type: !2493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!118, !118, !2482, !2482, !118}
!2495 = distinct !DISubprogram(name: "fadvise", scope: !923, file: !923, line: 33, type: !2496, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !2532)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{null, !2498, !2483}
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !2500)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !2501)
!2501 = !{!2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2500, file: !269, line: 51, baseType: !118, size: 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2500, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2500, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2500, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2500, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2500, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2500, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2500, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2500, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2500, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2500, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2500, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2500, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2500, file: !269, line: 70, baseType: !2516, size: 64, offset: 832)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2500, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2500, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2500, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2500, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2500, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2500, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2500, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2500, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2500, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2500, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2500, file: !269, line: 93, baseType: !2516, size: 64, offset: 1344)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2500, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2500, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2500, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2500, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!2532 = !{!2533, !2534}
!2533 = !DILocalVariable(name: "fp", arg: 1, scope: !2495, file: !923, line: 33, type: !2498)
!2534 = !DILocalVariable(name: "advice", arg: 2, scope: !2495, file: !923, line: 33, type: !2483)
!2535 = !DILocation(line: 0, scope: !2495)
!2536 = !DILocation(line: 35, column: 7, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2495, file: !923, line: 35, column: 7)
!2538 = !DILocation(line: 35, column: 7, scope: !2495)
!2539 = !DILocation(line: 36, column: 15, scope: !2537)
!2540 = !DILocation(line: 0, scope: !2479, inlinedAt: !2541)
!2541 = distinct !DILocation(line: 36, column: 5, scope: !2537)
!2542 = !DILocation(line: 28, column: 3, scope: !2479, inlinedAt: !2541)
!2543 = !DILocation(line: 36, column: 5, scope: !2537)
!2544 = !DILocation(line: 37, column: 1, scope: !2495)
!2545 = !DISubprogram(name: "fileno", scope: !627, file: !627, line: 809, type: !2546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!118, !2498}
!2548 = distinct !DISubprogram(name: "rpl_fclose", scope: !926, file: !926, line: 58, type: !2549, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !925, retainedNodes: !2585)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!118, !2551}
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !2553)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !2554)
!2554 = !{!2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2553, file: !269, line: 51, baseType: !118, size: 32)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2553, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2553, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2553, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2553, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2553, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2553, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2553, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2553, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2553, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2553, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2553, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2553, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2553, file: !269, line: 70, baseType: !2569, size: 64, offset: 832)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2553, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2553, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2553, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2553, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2553, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2553, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2553, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2553, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2553, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2553, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2553, file: !269, line: 93, baseType: !2569, size: 64, offset: 1344)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2553, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2553, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2553, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2553, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!2585 = !{!2586, !2587, !2588, !2589}
!2586 = !DILocalVariable(name: "fp", arg: 1, scope: !2548, file: !926, line: 58, type: !2551)
!2587 = !DILocalVariable(name: "saved_errno", scope: !2548, file: !926, line: 60, type: !118)
!2588 = !DILocalVariable(name: "fd", scope: !2548, file: !926, line: 63, type: !118)
!2589 = !DILocalVariable(name: "result", scope: !2548, file: !926, line: 74, type: !118)
!2590 = !DILocation(line: 0, scope: !2548)
!2591 = !DILocation(line: 63, column: 12, scope: !2548)
!2592 = !DILocation(line: 64, column: 10, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2548, file: !926, line: 64, column: 7)
!2594 = !DILocation(line: 64, column: 7, scope: !2548)
!2595 = !DILocation(line: 65, column: 12, scope: !2593)
!2596 = !DILocation(line: 65, column: 5, scope: !2593)
!2597 = !DILocation(line: 70, column: 9, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2548, file: !926, line: 70, column: 7)
!2599 = !DILocation(line: 70, column: 23, scope: !2598)
!2600 = !DILocation(line: 70, column: 33, scope: !2598)
!2601 = !DILocation(line: 70, column: 26, scope: !2598)
!2602 = !DILocation(line: 70, column: 59, scope: !2598)
!2603 = !DILocation(line: 71, column: 7, scope: !2598)
!2604 = !DILocation(line: 71, column: 10, scope: !2598)
!2605 = !DILocation(line: 70, column: 7, scope: !2548)
!2606 = !DILocation(line: 100, column: 12, scope: !2548)
!2607 = !DILocation(line: 105, column: 7, scope: !2548)
!2608 = !DILocation(line: 72, column: 19, scope: !2598)
!2609 = !DILocation(line: 105, column: 19, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2548, file: !926, line: 105, column: 7)
!2611 = !DILocation(line: 107, column: 13, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2610, file: !926, line: 106, column: 5)
!2613 = !DILocation(line: 109, column: 5, scope: !2612)
!2614 = !DILocation(line: 112, column: 1, scope: !2548)
!2615 = !DISubprogram(name: "fclose", scope: !627, file: !627, line: 178, type: !2549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!2616 = !DISubprogram(name: "__freading", scope: !2617, file: !2617, line: 51, type: !2549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!2617 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2618 = !DISubprogram(name: "lseek", scope: !2269, file: !2269, line: 339, type: !2619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!291, !118, !291, !118}
!2621 = distinct !DISubprogram(name: "rpl_fflush", scope: !928, file: !928, line: 130, type: !2622, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !2658)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!118, !2624}
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !2626)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !2627)
!2627 = !{!2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2626, file: !269, line: 51, baseType: !118, size: 32)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2626, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2626, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2626, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2626, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2626, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2626, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2626, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2626, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2626, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2626, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2626, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2626, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2626, file: !269, line: 70, baseType: !2642, size: 64, offset: 832)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2626, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2626, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2626, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2626, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2626, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2626, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2626, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2626, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2626, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2626, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2626, file: !269, line: 93, baseType: !2642, size: 64, offset: 1344)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2626, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2626, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2626, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2626, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!2658 = !{!2659}
!2659 = !DILocalVariable(name: "stream", arg: 1, scope: !2621, file: !928, line: 130, type: !2624)
!2660 = !DILocation(line: 0, scope: !2621)
!2661 = !DILocation(line: 151, column: 14, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2621, file: !928, line: 151, column: 7)
!2663 = !DILocation(line: 151, column: 22, scope: !2662)
!2664 = !DILocation(line: 151, column: 27, scope: !2662)
!2665 = !DILocation(line: 151, column: 7, scope: !2621)
!2666 = !DILocation(line: 152, column: 12, scope: !2662)
!2667 = !DILocation(line: 152, column: 5, scope: !2662)
!2668 = !DILocalVariable(name: "fp", arg: 1, scope: !2669, file: !928, line: 42, type: !2624)
!2669 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !928, file: !928, line: 42, type: !2670, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !2672)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{null, !2624}
!2672 = !{!2668}
!2673 = !DILocation(line: 0, scope: !2669, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 157, column: 3, scope: !2621)
!2675 = !DILocation(line: 44, column: 12, scope: !2676, inlinedAt: !2674)
!2676 = distinct !DILexicalBlock(scope: !2669, file: !928, line: 44, column: 7)
!2677 = !DILocation(line: 44, column: 19, scope: !2676, inlinedAt: !2674)
!2678 = !DILocation(line: 44, column: 7, scope: !2669, inlinedAt: !2674)
!2679 = !DILocation(line: 46, column: 5, scope: !2676, inlinedAt: !2674)
!2680 = !DILocation(line: 159, column: 10, scope: !2621)
!2681 = !DILocation(line: 159, column: 3, scope: !2621)
!2682 = !DILocation(line: 236, column: 1, scope: !2621)
!2683 = !DISubprogram(name: "fflush", scope: !627, file: !627, line: 230, type: !2622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!2684 = distinct !DISubprogram(name: "fpurge", scope: !931, file: !931, line: 32, type: !2685, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !930, retainedNodes: !2721)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!118, !2687}
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !2689)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !2690)
!2690 = !{!2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2689, file: !269, line: 51, baseType: !118, size: 32)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2689, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2689, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2689, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2689, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2689, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2689, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2689, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2689, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2689, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2689, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2689, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2689, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2689, file: !269, line: 70, baseType: !2705, size: 64, offset: 832)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2689, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2689, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2689, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2689, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2689, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2689, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2689, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2689, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2689, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2689, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2689, file: !269, line: 93, baseType: !2705, size: 64, offset: 1344)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2689, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2689, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2689, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2689, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!2721 = !{!2722}
!2722 = !DILocalVariable(name: "fp", arg: 1, scope: !2684, file: !931, line: 32, type: !2687)
!2723 = !DILocation(line: 0, scope: !2684)
!2724 = !DILocation(line: 36, column: 3, scope: !2684)
!2725 = !DILocation(line: 38, column: 3, scope: !2684)
!2726 = !DISubprogram(name: "__fpurge", scope: !2617, file: !2617, line: 72, type: !2727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{null, !2687}
!2729 = distinct !DISubprogram(name: "rpl_fseeko", scope: !933, file: !933, line: 28, type: !2730, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !932, retainedNodes: !2766)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!118, !2732, !2482, !118}
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !2734)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !2735)
!2735 = !{!2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2734, file: !269, line: 51, baseType: !118, size: 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2734, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2734, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2734, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2734, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2734, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2734, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2734, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2734, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2734, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2734, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2734, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2734, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2734, file: !269, line: 70, baseType: !2750, size: 64, offset: 832)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2734, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2734, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2734, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2734, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2734, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2734, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2734, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2734, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2734, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2734, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2734, file: !269, line: 93, baseType: !2750, size: 64, offset: 1344)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2734, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2734, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2734, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2734, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!2766 = !{!2767, !2768, !2769, !2770}
!2767 = !DILocalVariable(name: "fp", arg: 1, scope: !2729, file: !933, line: 28, type: !2732)
!2768 = !DILocalVariable(name: "offset", arg: 2, scope: !2729, file: !933, line: 28, type: !2482)
!2769 = !DILocalVariable(name: "whence", arg: 3, scope: !2729, file: !933, line: 28, type: !118)
!2770 = !DILocalVariable(name: "pos", scope: !2771, file: !933, line: 123, type: !2482)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !933, line: 119, column: 5)
!2772 = distinct !DILexicalBlock(scope: !2729, file: !933, line: 55, column: 7)
!2773 = !DILocation(line: 0, scope: !2729)
!2774 = !DILocation(line: 55, column: 12, scope: !2772)
!2775 = !DILocation(line: 55, column: 33, scope: !2772)
!2776 = !DILocation(line: 55, column: 25, scope: !2772)
!2777 = !DILocation(line: 56, column: 7, scope: !2772)
!2778 = !DILocation(line: 56, column: 15, scope: !2772)
!2779 = !DILocation(line: 56, column: 37, scope: !2772)
!2780 = !{!1427, !1025, i64 32}
!2781 = !DILocation(line: 56, column: 29, scope: !2772)
!2782 = !DILocation(line: 57, column: 7, scope: !2772)
!2783 = !DILocation(line: 57, column: 15, scope: !2772)
!2784 = !{!1427, !1025, i64 72}
!2785 = !DILocation(line: 57, column: 29, scope: !2772)
!2786 = !DILocation(line: 55, column: 7, scope: !2729)
!2787 = !DILocation(line: 123, column: 26, scope: !2771)
!2788 = !DILocation(line: 123, column: 19, scope: !2771)
!2789 = !DILocation(line: 0, scope: !2771)
!2790 = !DILocation(line: 124, column: 15, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2771, file: !933, line: 124, column: 11)
!2792 = !DILocation(line: 124, column: 11, scope: !2771)
!2793 = !DILocation(line: 135, column: 19, scope: !2771)
!2794 = !DILocation(line: 136, column: 12, scope: !2771)
!2795 = !DILocation(line: 136, column: 20, scope: !2771)
!2796 = !{!1427, !1300, i64 144}
!2797 = !DILocation(line: 167, column: 7, scope: !2771)
!2798 = !DILocation(line: 169, column: 10, scope: !2729)
!2799 = !DILocation(line: 169, column: 3, scope: !2729)
!2800 = !DILocation(line: 170, column: 1, scope: !2729)
!2801 = !DISubprogram(name: "fseeko", scope: !627, file: !627, line: 736, type: !2802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!118, !2732, !291, !118}
!2804 = distinct !DISubprogram(name: "getndelim2", scope: !935, file: !935, line: 66, type: !2805, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !934, retainedNodes: !2841)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!1561, !1251, !958, !170, !170, !118, !118, !2807}
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !2809)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !2810)
!2810 = !{!2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2809, file: !269, line: 51, baseType: !118, size: 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2809, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2809, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2809, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2809, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2809, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2809, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2809, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2809, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2809, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2809, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2809, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2809, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2809, file: !269, line: 70, baseType: !2825, size: 64, offset: 832)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2809, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2809, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2809, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2809, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2809, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2809, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2809, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2809, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2809, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2809, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2809, file: !269, line: 93, baseType: !2825, size: 64, offset: 1344)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2809, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2809, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2809, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2809, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!2841 = !{!2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2857, !2858, !2859, !2864, !2867, !2868, !2871, !2874, !2875}
!2842 = !DILocalVariable(name: "lineptr", arg: 1, scope: !2804, file: !935, line: 66, type: !1251)
!2843 = !DILocalVariable(name: "linesize", arg: 2, scope: !2804, file: !935, line: 66, type: !958)
!2844 = !DILocalVariable(name: "offset", arg: 3, scope: !2804, file: !935, line: 66, type: !170)
!2845 = !DILocalVariable(name: "nmax", arg: 4, scope: !2804, file: !935, line: 66, type: !170)
!2846 = !DILocalVariable(name: "delim1", arg: 5, scope: !2804, file: !935, line: 67, type: !118)
!2847 = !DILocalVariable(name: "delim2", arg: 6, scope: !2804, file: !935, line: 67, type: !118)
!2848 = !DILocalVariable(name: "stream", arg: 7, scope: !2804, file: !935, line: 67, type: !2807)
!2849 = !DILocalVariable(name: "ptr", scope: !2804, file: !935, line: 69, type: !167)
!2850 = !DILocalVariable(name: "size", scope: !2804, file: !935, line: 70, type: !170)
!2851 = !DILocalVariable(name: "bytes_stored", scope: !2804, file: !935, line: 79, type: !1561)
!2852 = !DILocalVariable(name: "nbytes_avail", scope: !2804, file: !935, line: 84, type: !170)
!2853 = !DILocalVariable(name: "read_pos", scope: !2804, file: !935, line: 86, type: !167)
!2854 = !DILocalVariable(name: "found_delimiter", scope: !2804, file: !935, line: 99, type: !224)
!2855 = !DILocalVariable(name: "c", scope: !2856, file: !935, line: 105, type: !118)
!2856 = distinct !DILexicalBlock(scope: !2804, file: !935, line: 101, column: 5)
!2857 = !DILocalVariable(name: "buffer", scope: !2856, file: !935, line: 106, type: !173)
!2858 = !DILocalVariable(name: "buffer_len", scope: !2856, file: !935, line: 107, type: !170)
!2859 = !DILocalVariable(name: "end", scope: !2860, file: !935, line: 114, type: !173)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !935, line: 113, column: 13)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !935, line: 112, column: 15)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !935, line: 111, column: 9)
!2863 = distinct !DILexicalBlock(scope: !2856, file: !935, line: 110, column: 11)
!2864 = !DILocalVariable(name: "newsize", scope: !2865, file: !935, line: 146, type: !170)
!2865 = distinct !DILexicalBlock(scope: !2866, file: !935, line: 143, column: 9)
!2866 = distinct !DILexicalBlock(scope: !2856, file: !935, line: 142, column: 11)
!2867 = !DILocalVariable(name: "newptr", scope: !2865, file: !935, line: 147, type: !167)
!2868 = !DILocalVariable(name: "newsizemax", scope: !2869, file: !935, line: 159, type: !170)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !935, line: 158, column: 13)
!2870 = distinct !DILexicalBlock(scope: !2865, file: !935, line: 157, column: 15)
!2871 = !DILocalVariable(name: "copy_len", scope: !2872, file: !935, line: 179, type: !170)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !935, line: 178, column: 9)
!2873 = distinct !DILexicalBlock(scope: !2856, file: !935, line: 177, column: 11)
!2874 = !DILabel(scope: !2804, name: "unlock_done", file: !935, line: 203)
!2875 = !DILabel(scope: !2804, name: "done", file: !935, line: 206)
!2876 = !DILocation(line: 0, scope: !2804)
!2877 = !DILocation(line: 69, column: 15, scope: !2804)
!2878 = !DILocation(line: 70, column: 17, scope: !2804)
!2879 = !DILocation(line: 71, column: 8, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2804, file: !935, line: 71, column: 7)
!2881 = !DILocation(line: 71, column: 7, scope: !2804)
!2882 = !DILocation(line: 73, column: 14, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2880, file: !935, line: 72, column: 5)
!2884 = !DILocation(line: 74, column: 13, scope: !2883)
!2885 = !DILocation(line: 75, column: 12, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2883, file: !935, line: 75, column: 11)
!2887 = !DILocation(line: 75, column: 11, scope: !2883)
!2888 = !DILocation(line: 81, column: 12, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2804, file: !935, line: 81, column: 7)
!2890 = !DILocation(line: 81, column: 7, scope: !2804)
!2891 = !DILocation(line: 85, column: 10, scope: !2804)
!2892 = !DILocation(line: 88, column: 20, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2804, file: !935, line: 88, column: 7)
!2894 = !DILocation(line: 88, column: 25, scope: !2893)
!2895 = !DILocation(line: 86, column: 24, scope: !2804)
!2896 = !DILocation(line: 92, column: 14, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2804, file: !935, line: 92, column: 7)
!2898 = !DILocation(line: 92, column: 7, scope: !2804)
!2899 = !DILocation(line: 100, column: 3, scope: !2804)
!2900 = !DILocation(line: 0, scope: !2856)
!2901 = !DILocation(line: 107, column: 7, scope: !2856)
!2902 = !DILocation(line: 109, column: 16, scope: !2856)
!2903 = !DILocation(line: 110, column: 11, scope: !2863)
!2904 = !DILocation(line: 110, column: 11, scope: !2856)
!2905 = !DILocation(line: 112, column: 15, scope: !2862)
!2906 = !DILocation(line: 114, column: 33, scope: !2860)
!2907 = !DILocation(line: 0, scope: !2860)
!2908 = !DILocation(line: 115, column: 19, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2860, file: !935, line: 115, column: 19)
!2910 = !DILocation(line: 115, column: 19, scope: !2860)
!2911 = !DILocation(line: 117, column: 36, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2909, file: !935, line: 116, column: 17)
!2913 = !DILocation(line: 117, column: 45, scope: !2912)
!2914 = !DILocation(line: 117, column: 30, scope: !2912)
!2915 = !DILocation(line: 119, column: 17, scope: !2912)
!2916 = !DILocalVariable(name: "__fp", arg: 1, scope: !2917, file: !1419, line: 66, type: !2807)
!2917 = distinct !DISubprogram(name: "getc_unlocked", scope: !1419, file: !1419, line: 66, type: !2918, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !934, retainedNodes: !2920)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!118, !2807}
!2920 = !{!2916}
!2921 = !DILocation(line: 0, scope: !2917, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 124, column: 15, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2863, file: !935, line: 123, column: 9)
!2924 = !DILocation(line: 68, column: 10, scope: !2917, inlinedAt: !2922)
!2925 = !DILocation(line: 125, column: 15, scope: !2923)
!2926 = !DILocation(line: 125, column: 17, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2923, file: !935, line: 125, column: 15)
!2928 = !DILocation(line: 128, column: 28, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !935, line: 128, column: 19)
!2930 = distinct !DILexicalBlock(scope: !2927, file: !935, line: 126, column: 13)
!2931 = !DILocation(line: 0, scope: !2929)
!2932 = !DILocation(line: 194, column: 5, scope: !2804)
!2933 = !DILocation(line: 133, column: 17, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2923, file: !935, line: 133, column: 15)
!2935 = !DILocation(line: 133, column: 27, scope: !2934)
!2936 = !DILocation(line: 135, column: 22, scope: !2923)
!2937 = !DILocation(line: 142, column: 26, scope: !2866)
!2938 = !DILocation(line: 142, column: 37, scope: !2866)
!2939 = !DILocation(line: 142, column: 24, scope: !2866)
!2940 = !DILocation(line: 142, column: 41, scope: !2866)
!2941 = !DILocation(line: 146, column: 33, scope: !2865)
!2942 = !DILocation(line: 146, column: 28, scope: !2865)
!2943 = !DILocation(line: 0, scope: !2865)
!2944 = !DILocation(line: 151, column: 35, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2865, file: !935, line: 151, column: 15)
!2946 = !DILocation(line: 151, column: 23, scope: !2945)
!2947 = !DILocation(line: 151, column: 42, scope: !2945)
!2948 = !DILocation(line: 151, column: 15, scope: !2865)
!2949 = !DILocation(line: 154, column: 23, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2865, file: !935, line: 154, column: 15)
!2951 = !DILocation(line: 154, column: 33, scope: !2950)
!2952 = !DILocation(line: 157, column: 44, scope: !2870)
!2953 = !DILocation(line: 157, column: 34, scope: !2870)
!2954 = !DILocation(line: 157, column: 15, scope: !2865)
!2955 = !DILocation(line: 0, scope: !2869)
!2956 = !DILocation(line: 160, column: 24, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2869, file: !935, line: 160, column: 19)
!2958 = !DILocation(line: 152, column: 21, scope: !2945)
!2959 = !DILocalVariable(name: "ptr", arg: 1, scope: !2960, file: !2961, line: 2057, type: !168)
!2960 = distinct !DISubprogram(name: "rpl_realloc", scope: !2961, file: !2961, line: 2057, type: !2962, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !934, retainedNodes: !2964)
!2961 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!168, !168, !170}
!2964 = !{!2959, !2965}
!2965 = !DILocalVariable(name: "size", arg: 2, scope: !2960, file: !2961, line: 2057, type: !170)
!2966 = !DILocation(line: 0, scope: !2960, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 166, column: 20, scope: !2865)
!2968 = !DILocation(line: 2059, column: 24, scope: !2960, inlinedAt: !2967)
!2969 = !DILocation(line: 2059, column: 10, scope: !2960, inlinedAt: !2967)
!2970 = !DILocation(line: 167, column: 16, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2865, file: !935, line: 167, column: 15)
!2972 = !DILocation(line: 167, column: 15, scope: !2865)
!2973 = !DILocation(line: 165, column: 34, scope: !2865)
!2974 = !DILocation(line: 171, column: 42, scope: !2865)
!2975 = !DILocation(line: 177, column: 13, scope: !2873)
!2976 = !DILocation(line: 177, column: 11, scope: !2856)
!2977 = !DILocation(line: 179, column: 42, scope: !2872)
!2978 = !DILocation(line: 0, scope: !2872)
!2979 = !DILocation(line: 180, column: 15, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2872, file: !935, line: 180, column: 15)
!2981 = !DILocation(line: 180, column: 15, scope: !2872)
!2982 = !DILocation(line: 182, column: 15, scope: !2872)
!2983 = !DILocalVariable(name: "__dest", arg: 1, scope: !2984, file: !2089, line: 26, type: !2987)
!2984 = distinct !DISubprogram(name: "memcpy", scope: !2089, file: !2089, line: 26, type: !2985, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !934, retainedNodes: !2988)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!168, !2987, !1245, !170}
!2987 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !168)
!2988 = !{!2983, !2989, !2990}
!2989 = !DILocalVariable(name: "__src", arg: 2, scope: !2984, file: !2089, line: 26, type: !1245)
!2990 = !DILocalVariable(name: "__len", arg: 3, scope: !2984, file: !2089, line: 26, type: !170)
!2991 = !DILocation(line: 0, scope: !2984, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 183, column: 13, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2872, file: !935, line: 182, column: 15)
!2994 = !DILocation(line: 29, column: 10, scope: !2984, inlinedAt: !2992)
!2995 = !DILocation(line: 183, column: 13, scope: !2993)
!2996 = !DILocation(line: 185, column: 25, scope: !2993)
!2997 = !DILocation(line: 185, column: 23, scope: !2993)
!2998 = !DILocation(line: 186, column: 20, scope: !2872)
!2999 = !DILocation(line: 187, column: 24, scope: !2872)
!3000 = !DILocation(line: 188, column: 9, scope: !2872)
!3001 = !DILocation(line: 192, column: 18, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2856, file: !935, line: 192, column: 11)
!3003 = !DILocation(line: 192, column: 40, scope: !3002)
!3004 = !DILocation(line: 192, column: 21, scope: !3002)
!3005 = !DILocation(line: 192, column: 11, scope: !2856)
!3006 = !DILocation(line: 194, column: 5, scope: !2856)
!3007 = distinct !{!3007, !2899, !3008, !1148}
!3008 = !DILocation(line: 195, column: 26, scope: !2804)
!3009 = !DILocation(line: 206, column: 2, scope: !2804)
!3010 = !DILocation(line: 207, column: 12, scope: !2804)
!3011 = !DILocation(line: 208, column: 13, scope: !2804)
!3012 = !DILocation(line: 209, column: 10, scope: !2804)
!3013 = !DILocation(line: 201, column: 34, scope: !2804)
!3014 = !DILocation(line: 199, column: 13, scope: !2804)
!3015 = !DILocation(line: 201, column: 27, scope: !2804)
!3016 = !DILocation(line: 210, column: 1, scope: !2804)
!3017 = !DISubprogram(name: "malloc", scope: !1222, file: !1222, line: 540, type: !3018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!168, !170}
!3020 = !DISubprogram(name: "realloc", scope: !1222, file: !1222, line: 551, type: !2962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!3021 = distinct !DISubprogram(name: "getprogname", scope: !938, file: !938, line: 54, type: !3022, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !937, retainedNodes: !1033)
!3022 = !DISubroutineType(types: !990)
!3023 = !DILocation(line: 58, column: 10, scope: !3021)
!3024 = !DILocation(line: 58, column: 3, scope: !3021)
!3025 = distinct !DISubprogram(name: "memchr2", scope: !940, file: !940, line: 36, type: !3026, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !939, retainedNodes: !3028)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!168, !1246, !118, !118, !170}
!3028 = !{!3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3040, !3044, !3046, !3047, !3048, !3050, !3051}
!3029 = !DILocalVariable(name: "s", arg: 1, scope: !3025, file: !940, line: 36, type: !1246)
!3030 = !DILocalVariable(name: "c1_in", arg: 2, scope: !3025, file: !940, line: 36, type: !118)
!3031 = !DILocalVariable(name: "c2_in", arg: 3, scope: !3025, file: !940, line: 36, type: !118)
!3032 = !DILocalVariable(name: "n", arg: 4, scope: !3025, file: !940, line: 36, type: !170)
!3033 = !DILocalVariable(name: "c1", scope: !3025, file: !940, line: 45, type: !175)
!3034 = !DILocalVariable(name: "c2", scope: !3025, file: !940, line: 46, type: !175)
!3035 = !DILocalVariable(name: "void_ptr", scope: !3025, file: !940, line: 53, type: !1246)
!3036 = !DILocalVariable(name: "char_ptr", scope: !3037, file: !940, line: 58, type: !943)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !940, line: 57, column: 5)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !940, line: 54, column: 3)
!3039 = distinct !DILexicalBlock(scope: !3025, file: !940, line: 54, column: 3)
!3040 = !DILocalVariable(name: "longword_ptr", scope: !3025, file: !940, line: 64, type: !3041)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3043)
!3043 = !DIDerivedType(tag: DW_TAG_typedef, name: "longword", scope: !3025, file: !940, line: 43, baseType: !172)
!3044 = !DILocalVariable(name: "repeated_one", scope: !3045, file: !940, line: 73, type: !3043)
!3045 = distinct !DILexicalBlock(scope: !3025, file: !940, line: 68, column: 3)
!3046 = !DILocalVariable(name: "repeated_c1", scope: !3045, file: !940, line: 74, type: !3043)
!3047 = !DILocalVariable(name: "repeated_c2", scope: !3045, file: !940, line: 75, type: !3043)
!3048 = !DILocalVariable(name: "longword1", scope: !3049, file: !940, line: 130, type: !3043)
!3049 = distinct !DILexicalBlock(scope: !3045, file: !940, line: 129, column: 7)
!3050 = !DILocalVariable(name: "longword2", scope: !3049, file: !940, line: 131, type: !3043)
!3051 = !DILocalVariable(name: "char_ptr", scope: !3052, file: !940, line: 143, type: !943)
!3052 = distinct !DILexicalBlock(scope: !3025, file: !940, line: 142, column: 3)
!3053 = !DILocation(line: 0, scope: !3025)
!3054 = !DILocation(line: 48, column: 7, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3025, file: !940, line: 48, column: 7)
!3056 = !DILocation(line: 48, column: 13, scope: !3055)
!3057 = !DILocation(line: 48, column: 10, scope: !3055)
!3058 = !DILocation(line: 48, column: 7, scope: !3025)
!3059 = !DILocation(line: 55, column: 10, scope: !3038)
!3060 = !DILocation(line: 55, column: 14, scope: !3038)
!3061 = !DILocation(line: 49, column: 21, scope: !3055)
!3062 = !DILocation(line: 49, column: 5, scope: !3055)
!3063 = !DILocation(line: 0, scope: !3037)
!3064 = !DILocation(line: 59, column: 11, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3037, file: !940, line: 59, column: 11)
!3066 = !DILocation(line: 59, column: 21, scope: !3065)
!3067 = !DILocation(line: 59, column: 27, scope: !3065)
!3068 = !DILocation(line: 56, column: 8, scope: !3038)
!3069 = distinct !{!3069, !3070, !3071, !1148}
!3070 = !DILocation(line: 54, column: 3, scope: !3039)
!3071 = !DILocation(line: 62, column: 5, scope: !3039)
!3072 = !DILocation(line: 54, column: 17, scope: !3039)
!3073 = !DILocation(line: 0, scope: !3045)
!3074 = !DILocation(line: 76, column: 17, scope: !3045)
!3075 = !DILocation(line: 77, column: 17, scope: !3045)
!3076 = !DILocation(line: 81, column: 21, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3078, file: !940, line: 79, column: 7)
!3078 = distinct !DILexicalBlock(scope: !3045, file: !940, line: 78, column: 9)
!3079 = !DILocation(line: 82, column: 21, scope: !3077)
!3080 = !DILocation(line: 128, column: 5, scope: !3045)
!3081 = !DILocation(line: 64, column: 19, scope: !3025)
!3082 = !DILocation(line: 128, column: 14, scope: !3045)
!3083 = !DILocation(line: 130, column: 30, scope: !3049)
!3084 = !DILocation(line: 130, column: 44, scope: !3049)
!3085 = !DILocation(line: 0, scope: !3049)
!3086 = !DILocation(line: 131, column: 44, scope: !3049)
!3087 = !DILocation(line: 133, column: 27, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3049, file: !940, line: 133, column: 13)
!3089 = !DILocation(line: 133, column: 45, scope: !3088)
!3090 = !DILocation(line: 133, column: 43, scope: !3088)
!3091 = !DILocation(line: 134, column: 29, scope: !3088)
!3092 = !DILocation(line: 134, column: 47, scope: !3088)
!3093 = !DILocation(line: 134, column: 45, scope: !3088)
!3094 = !DILocation(line: 134, column: 15, scope: !3088)
!3095 = !DILocation(line: 135, column: 14, scope: !3088)
!3096 = !DILocation(line: 135, column: 37, scope: !3088)
!3097 = !DILocation(line: 133, column: 13, scope: !3049)
!3098 = !DILocation(line: 0, scope: !3052)
!3099 = !DILocation(line: 152, column: 14, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !940, line: 152, column: 5)
!3101 = distinct !DILexicalBlock(scope: !3052, file: !940, line: 152, column: 5)
!3102 = !DILocation(line: 152, column: 5, scope: !3101)
!3103 = !DILocation(line: 154, column: 13, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !940, line: 154, column: 13)
!3105 = distinct !DILexicalBlock(scope: !3100, file: !940, line: 153, column: 7)
!3106 = !DILocation(line: 154, column: 23, scope: !3104)
!3107 = !DILocation(line: 154, column: 29, scope: !3104)
!3108 = !DILocation(line: 152, column: 19, scope: !3100)
!3109 = !DILocation(line: 152, column: 24, scope: !3100)
!3110 = distinct !{!3110, !3102, !3111, !1148}
!3111 = !DILocation(line: 156, column: 7, scope: !3101)
!3112 = !DILocation(line: 160, column: 1, scope: !3025)
!3113 = !DISubprogram(name: "memchr", scope: !1218, file: !1218, line: 107, type: !3114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!168, !1246, !118, !170}
!3116 = distinct !DISubprogram(name: "set_program_name", scope: !673, file: !673, line: 37, type: !1053, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3117)
!3117 = !{!3118, !3119, !3120}
!3118 = !DILocalVariable(name: "argv0", arg: 1, scope: !3116, file: !673, line: 37, type: !173)
!3119 = !DILocalVariable(name: "slash", scope: !3116, file: !673, line: 44, type: !173)
!3120 = !DILocalVariable(name: "base", scope: !3116, file: !673, line: 45, type: !173)
!3121 = !DILocation(line: 0, scope: !3116)
!3122 = !DILocation(line: 44, column: 23, scope: !3116)
!3123 = !DILocation(line: 45, column: 22, scope: !3116)
!3124 = !DILocation(line: 46, column: 17, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3116, file: !673, line: 46, column: 7)
!3126 = !DILocation(line: 46, column: 9, scope: !3125)
!3127 = !DILocation(line: 46, column: 25, scope: !3125)
!3128 = !DILocation(line: 46, column: 40, scope: !3125)
!3129 = !DILocalVariable(name: "__s1", arg: 1, scope: !3130, file: !1114, line: 974, type: !1246)
!3130 = distinct !DISubprogram(name: "memeq", scope: !1114, file: !1114, line: 974, type: !3131, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3133)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!224, !1246, !1246, !170}
!3133 = !{!3129, !3134, !3135}
!3134 = !DILocalVariable(name: "__s2", arg: 2, scope: !3130, file: !1114, line: 974, type: !1246)
!3135 = !DILocalVariable(name: "__n", arg: 3, scope: !3130, file: !1114, line: 974, type: !170)
!3136 = !DILocation(line: 0, scope: !3130, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 46, column: 28, scope: !3125)
!3138 = !DILocation(line: 976, column: 11, scope: !3130, inlinedAt: !3137)
!3139 = !DILocation(line: 976, column: 10, scope: !3130, inlinedAt: !3137)
!3140 = !DILocation(line: 46, column: 7, scope: !3116)
!3141 = !DILocation(line: 49, column: 11, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3143, file: !673, line: 49, column: 11)
!3143 = distinct !DILexicalBlock(scope: !3125, file: !673, line: 47, column: 5)
!3144 = !DILocation(line: 49, column: 36, scope: !3142)
!3145 = !DILocation(line: 49, column: 11, scope: !3143)
!3146 = !DILocation(line: 65, column: 16, scope: !3116)
!3147 = !DILocation(line: 71, column: 27, scope: !3116)
!3148 = !DILocation(line: 74, column: 33, scope: !3116)
!3149 = !DILocation(line: 76, column: 1, scope: !3116)
!3150 = !DISubprogram(name: "strrchr", scope: !1218, file: !1218, line: 273, type: !1233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!3151 = !DILocation(line: 0, scope: !682)
!3152 = !DILocation(line: 40, column: 29, scope: !682)
!3153 = !DILocation(line: 41, column: 19, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !682, file: !683, line: 41, column: 7)
!3155 = !DILocation(line: 41, column: 7, scope: !682)
!3156 = !DILocation(line: 47, column: 3, scope: !682)
!3157 = !DILocation(line: 48, column: 3, scope: !682)
!3158 = !DILocation(line: 48, column: 13, scope: !682)
!3159 = !DILocalVariable(name: "ps", arg: 1, scope: !3160, file: !3161, line: 1135, type: !3164)
!3160 = distinct !DISubprogram(name: "mbszero", scope: !3161, file: !3161, line: 1135, type: !3162, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3165)
!3161 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!3162 = !DISubroutineType(types: !3163)
!3163 = !{null, !3164}
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!3165 = !{!3159}
!3166 = !DILocation(line: 0, scope: !3160, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 48, column: 18, scope: !682)
!3168 = !DILocalVariable(name: "__dest", arg: 1, scope: !3169, file: !2089, line: 57, type: !168)
!3169 = distinct !DISubprogram(name: "memset", scope: !2089, file: !2089, line: 57, type: !3170, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3172)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!168, !168, !118, !170}
!3172 = !{!3168, !3173, !3174}
!3173 = !DILocalVariable(name: "__ch", arg: 2, scope: !3169, file: !2089, line: 57, type: !118)
!3174 = !DILocalVariable(name: "__len", arg: 3, scope: !3169, file: !2089, line: 57, type: !170)
!3175 = !DILocation(line: 0, scope: !3169, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 1137, column: 3, scope: !3160, inlinedAt: !3167)
!3177 = !DILocation(line: 59, column: 10, scope: !3169, inlinedAt: !3176)
!3178 = !DILocation(line: 49, column: 7, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !682, file: !683, line: 49, column: 7)
!3180 = !DILocation(line: 49, column: 39, scope: !3179)
!3181 = !DILocation(line: 49, column: 44, scope: !3179)
!3182 = !DILocation(line: 54, column: 1, scope: !682)
!3183 = !DISubprogram(name: "mbrtoc32", scope: !694, file: !694, line: 57, type: !3184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!170, !3186, !1092, !170, !3188}
!3186 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3187)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3164)
!3189 = distinct !DISubprogram(name: "clone_quoting_options", scope: !713, file: !713, line: 113, type: !3190, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3193)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!3192, !3192}
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!3193 = !{!3194, !3195, !3196}
!3194 = !DILocalVariable(name: "o", arg: 1, scope: !3189, file: !713, line: 113, type: !3192)
!3195 = !DILocalVariable(name: "saved_errno", scope: !3189, file: !713, line: 115, type: !118)
!3196 = !DILocalVariable(name: "p", scope: !3189, file: !713, line: 116, type: !3192)
!3197 = !DILocation(line: 0, scope: !3189)
!3198 = !DILocation(line: 115, column: 21, scope: !3189)
!3199 = !DILocation(line: 116, column: 40, scope: !3189)
!3200 = !DILocation(line: 116, column: 31, scope: !3189)
!3201 = !DILocation(line: 118, column: 9, scope: !3189)
!3202 = !DILocation(line: 119, column: 3, scope: !3189)
!3203 = distinct !DISubprogram(name: "get_quoting_style", scope: !713, file: !713, line: 124, type: !3204, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3208)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!143, !3206}
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !749)
!3208 = !{!3209}
!3209 = !DILocalVariable(name: "o", arg: 1, scope: !3203, file: !713, line: 124, type: !3206)
!3210 = !DILocation(line: 0, scope: !3203)
!3211 = !DILocation(line: 126, column: 11, scope: !3203)
!3212 = !DILocation(line: 126, column: 46, scope: !3203)
!3213 = !{!3214, !1026, i64 0}
!3214 = !{!"quoting_options", !1026, i64 0, !1102, i64 4, !1026, i64 8, !1025, i64 40, !1025, i64 48}
!3215 = !DILocation(line: 126, column: 3, scope: !3203)
!3216 = distinct !DISubprogram(name: "set_quoting_style", scope: !713, file: !713, line: 132, type: !3217, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3219)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{null, !3192, !143}
!3219 = !{!3220, !3221}
!3220 = !DILocalVariable(name: "o", arg: 1, scope: !3216, file: !713, line: 132, type: !3192)
!3221 = !DILocalVariable(name: "s", arg: 2, scope: !3216, file: !713, line: 132, type: !143)
!3222 = !DILocation(line: 0, scope: !3216)
!3223 = !DILocation(line: 134, column: 4, scope: !3216)
!3224 = !DILocation(line: 134, column: 45, scope: !3216)
!3225 = !DILocation(line: 135, column: 1, scope: !3216)
!3226 = distinct !DISubprogram(name: "set_char_quoting", scope: !713, file: !713, line: 143, type: !3227, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3229)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!118, !3192, !4, !118}
!3229 = !{!3230, !3231, !3232, !3233, !3234, !3236, !3237}
!3230 = !DILocalVariable(name: "o", arg: 1, scope: !3226, file: !713, line: 143, type: !3192)
!3231 = !DILocalVariable(name: "c", arg: 2, scope: !3226, file: !713, line: 143, type: !4)
!3232 = !DILocalVariable(name: "i", arg: 3, scope: !3226, file: !713, line: 143, type: !118)
!3233 = !DILocalVariable(name: "uc", scope: !3226, file: !713, line: 145, type: !175)
!3234 = !DILocalVariable(name: "p", scope: !3226, file: !713, line: 146, type: !3235)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!3236 = !DILocalVariable(name: "shift", scope: !3226, file: !713, line: 148, type: !118)
!3237 = !DILocalVariable(name: "r", scope: !3226, file: !713, line: 149, type: !112)
!3238 = !DILocation(line: 0, scope: !3226)
!3239 = !DILocation(line: 147, column: 6, scope: !3226)
!3240 = !DILocation(line: 147, column: 41, scope: !3226)
!3241 = !DILocation(line: 147, column: 62, scope: !3226)
!3242 = !DILocation(line: 147, column: 57, scope: !3226)
!3243 = !DILocation(line: 148, column: 15, scope: !3226)
!3244 = !DILocation(line: 149, column: 21, scope: !3226)
!3245 = !DILocation(line: 149, column: 24, scope: !3226)
!3246 = !DILocation(line: 149, column: 34, scope: !3226)
!3247 = !DILocation(line: 150, column: 19, scope: !3226)
!3248 = !DILocation(line: 150, column: 24, scope: !3226)
!3249 = !DILocation(line: 150, column: 6, scope: !3226)
!3250 = !DILocation(line: 151, column: 3, scope: !3226)
!3251 = distinct !DISubprogram(name: "set_quoting_flags", scope: !713, file: !713, line: 159, type: !3252, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3254)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!118, !3192, !118}
!3254 = !{!3255, !3256, !3257}
!3255 = !DILocalVariable(name: "o", arg: 1, scope: !3251, file: !713, line: 159, type: !3192)
!3256 = !DILocalVariable(name: "i", arg: 2, scope: !3251, file: !713, line: 159, type: !118)
!3257 = !DILocalVariable(name: "r", scope: !3251, file: !713, line: 163, type: !118)
!3258 = !DILocation(line: 0, scope: !3251)
!3259 = !DILocation(line: 161, column: 8, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3251, file: !713, line: 161, column: 7)
!3261 = !DILocation(line: 161, column: 7, scope: !3251)
!3262 = !DILocation(line: 163, column: 14, scope: !3251)
!3263 = !{!3214, !1102, i64 4}
!3264 = !DILocation(line: 164, column: 12, scope: !3251)
!3265 = !DILocation(line: 165, column: 3, scope: !3251)
!3266 = distinct !DISubprogram(name: "set_custom_quoting", scope: !713, file: !713, line: 169, type: !3267, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3269)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{null, !3192, !173, !173}
!3269 = !{!3270, !3271, !3272}
!3270 = !DILocalVariable(name: "o", arg: 1, scope: !3266, file: !713, line: 169, type: !3192)
!3271 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3266, file: !713, line: 170, type: !173)
!3272 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3266, file: !713, line: 170, type: !173)
!3273 = !DILocation(line: 0, scope: !3266)
!3274 = !DILocation(line: 172, column: 8, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3266, file: !713, line: 172, column: 7)
!3276 = !DILocation(line: 172, column: 7, scope: !3266)
!3277 = !DILocation(line: 174, column: 12, scope: !3266)
!3278 = !DILocation(line: 175, column: 8, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3266, file: !713, line: 175, column: 7)
!3280 = !DILocation(line: 175, column: 19, scope: !3279)
!3281 = !DILocation(line: 176, column: 5, scope: !3279)
!3282 = !DILocation(line: 177, column: 6, scope: !3266)
!3283 = !DILocation(line: 177, column: 17, scope: !3266)
!3284 = !{!3214, !1025, i64 40}
!3285 = !DILocation(line: 178, column: 6, scope: !3266)
!3286 = !DILocation(line: 178, column: 18, scope: !3266)
!3287 = !{!3214, !1025, i64 48}
!3288 = !DILocation(line: 179, column: 1, scope: !3266)
!3289 = !DISubprogram(name: "abort", scope: !1222, file: !1222, line: 598, type: !668, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!3290 = distinct !DISubprogram(name: "quotearg_buffer", scope: !713, file: !713, line: 774, type: !3291, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3293)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!170, !167, !170, !173, !170, !3206}
!3293 = !{!3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301}
!3294 = !DILocalVariable(name: "buffer", arg: 1, scope: !3290, file: !713, line: 774, type: !167)
!3295 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3290, file: !713, line: 774, type: !170)
!3296 = !DILocalVariable(name: "arg", arg: 3, scope: !3290, file: !713, line: 775, type: !173)
!3297 = !DILocalVariable(name: "argsize", arg: 4, scope: !3290, file: !713, line: 775, type: !170)
!3298 = !DILocalVariable(name: "o", arg: 5, scope: !3290, file: !713, line: 776, type: !3206)
!3299 = !DILocalVariable(name: "p", scope: !3290, file: !713, line: 778, type: !3206)
!3300 = !DILocalVariable(name: "saved_errno", scope: !3290, file: !713, line: 779, type: !118)
!3301 = !DILocalVariable(name: "r", scope: !3290, file: !713, line: 780, type: !170)
!3302 = !DILocation(line: 0, scope: !3290)
!3303 = !DILocation(line: 778, column: 37, scope: !3290)
!3304 = !DILocation(line: 779, column: 21, scope: !3290)
!3305 = !DILocation(line: 781, column: 43, scope: !3290)
!3306 = !DILocation(line: 781, column: 53, scope: !3290)
!3307 = !DILocation(line: 781, column: 63, scope: !3290)
!3308 = !DILocation(line: 782, column: 43, scope: !3290)
!3309 = !DILocation(line: 782, column: 58, scope: !3290)
!3310 = !DILocation(line: 780, column: 14, scope: !3290)
!3311 = !DILocation(line: 783, column: 9, scope: !3290)
!3312 = !DILocation(line: 784, column: 3, scope: !3290)
!3313 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !713, file: !713, line: 251, type: !3314, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3318)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!170, !167, !170, !173, !170, !143, !118, !3316, !173, !173}
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!3318 = !{!3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3343, !3345, !3348, !3349, !3350, !3351, !3354, !3355, !3358, !3362, !3363, !3371, !3374, !3375, !3377, !3378, !3379, !3380}
!3319 = !DILocalVariable(name: "buffer", arg: 1, scope: !3313, file: !713, line: 251, type: !167)
!3320 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3313, file: !713, line: 251, type: !170)
!3321 = !DILocalVariable(name: "arg", arg: 3, scope: !3313, file: !713, line: 252, type: !173)
!3322 = !DILocalVariable(name: "argsize", arg: 4, scope: !3313, file: !713, line: 252, type: !170)
!3323 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3313, file: !713, line: 253, type: !143)
!3324 = !DILocalVariable(name: "flags", arg: 6, scope: !3313, file: !713, line: 253, type: !118)
!3325 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3313, file: !713, line: 254, type: !3316)
!3326 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3313, file: !713, line: 255, type: !173)
!3327 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3313, file: !713, line: 256, type: !173)
!3328 = !DILocalVariable(name: "unibyte_locale", scope: !3313, file: !713, line: 258, type: !224)
!3329 = !DILocalVariable(name: "len", scope: !3313, file: !713, line: 260, type: !170)
!3330 = !DILocalVariable(name: "orig_buffersize", scope: !3313, file: !713, line: 261, type: !170)
!3331 = !DILocalVariable(name: "quote_string", scope: !3313, file: !713, line: 262, type: !173)
!3332 = !DILocalVariable(name: "quote_string_len", scope: !3313, file: !713, line: 263, type: !170)
!3333 = !DILocalVariable(name: "backslash_escapes", scope: !3313, file: !713, line: 264, type: !224)
!3334 = !DILocalVariable(name: "elide_outer_quotes", scope: !3313, file: !713, line: 265, type: !224)
!3335 = !DILocalVariable(name: "encountered_single_quote", scope: !3313, file: !713, line: 266, type: !224)
!3336 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3313, file: !713, line: 267, type: !224)
!3337 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3313, file: !713, line: 309, type: !224)
!3338 = !DILocalVariable(name: "lq", scope: !3339, file: !713, line: 361, type: !173)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !713, line: 361, column: 11)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !713, line: 360, column: 13)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !713, line: 333, column: 7)
!3342 = distinct !DILexicalBlock(scope: !3313, file: !713, line: 312, column: 5)
!3343 = !DILocalVariable(name: "i", scope: !3344, file: !713, line: 395, type: !170)
!3344 = distinct !DILexicalBlock(scope: !3313, file: !713, line: 395, column: 3)
!3345 = !DILocalVariable(name: "is_right_quote", scope: !3346, file: !713, line: 397, type: !224)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !713, line: 396, column: 5)
!3347 = distinct !DILexicalBlock(scope: !3344, file: !713, line: 395, column: 3)
!3348 = !DILocalVariable(name: "escaping", scope: !3346, file: !713, line: 398, type: !224)
!3349 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3346, file: !713, line: 399, type: !224)
!3350 = !DILocalVariable(name: "c", scope: !3346, file: !713, line: 417, type: !175)
!3351 = !DILocalVariable(name: "m", scope: !3352, file: !713, line: 598, type: !170)
!3352 = distinct !DILexicalBlock(scope: !3353, file: !713, line: 596, column: 11)
!3353 = distinct !DILexicalBlock(scope: !3346, file: !713, line: 419, column: 9)
!3354 = !DILocalVariable(name: "printable", scope: !3352, file: !713, line: 600, type: !224)
!3355 = !DILocalVariable(name: "mbs", scope: !3356, file: !713, line: 609, type: !783)
!3356 = distinct !DILexicalBlock(scope: !3357, file: !713, line: 608, column: 15)
!3357 = distinct !DILexicalBlock(scope: !3352, file: !713, line: 602, column: 17)
!3358 = !DILocalVariable(name: "w", scope: !3359, file: !713, line: 618, type: !693)
!3359 = distinct !DILexicalBlock(scope: !3360, file: !713, line: 617, column: 19)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !713, line: 616, column: 17)
!3361 = distinct !DILexicalBlock(scope: !3356, file: !713, line: 616, column: 17)
!3362 = !DILocalVariable(name: "bytes", scope: !3359, file: !713, line: 619, type: !170)
!3363 = !DILocalVariable(name: "j", scope: !3364, file: !713, line: 648, type: !170)
!3364 = distinct !DILexicalBlock(scope: !3365, file: !713, line: 648, column: 29)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !713, line: 647, column: 27)
!3366 = distinct !DILexicalBlock(scope: !3367, file: !713, line: 645, column: 29)
!3367 = distinct !DILexicalBlock(scope: !3368, file: !713, line: 636, column: 23)
!3368 = distinct !DILexicalBlock(scope: !3369, file: !713, line: 628, column: 30)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !713, line: 623, column: 30)
!3370 = distinct !DILexicalBlock(scope: !3359, file: !713, line: 621, column: 25)
!3371 = !DILocalVariable(name: "ilim", scope: !3372, file: !713, line: 674, type: !170)
!3372 = distinct !DILexicalBlock(scope: !3373, file: !713, line: 671, column: 15)
!3373 = distinct !DILexicalBlock(scope: !3352, file: !713, line: 670, column: 17)
!3374 = !DILabel(scope: !3313, name: "process_input", file: !713, line: 308)
!3375 = !DILabel(scope: !3376, name: "c_and_shell_escape", file: !713, line: 502)
!3376 = distinct !DILexicalBlock(scope: !3353, file: !713, line: 478, column: 9)
!3377 = !DILabel(scope: !3376, name: "c_escape", file: !713, line: 507)
!3378 = !DILabel(scope: !3346, name: "store_escape", file: !713, line: 709)
!3379 = !DILabel(scope: !3346, name: "store_c", file: !713, line: 712)
!3380 = !DILabel(scope: !3313, name: "force_outer_quoting_style", file: !713, line: 753)
!3381 = !DILocation(line: 0, scope: !3313)
!3382 = !DILocation(line: 258, column: 25, scope: !3313)
!3383 = !DILocation(line: 258, column: 36, scope: !3313)
!3384 = !DILocation(line: 267, column: 3, scope: !3313)
!3385 = !DILocation(line: 261, column: 10, scope: !3313)
!3386 = !DILocation(line: 262, column: 15, scope: !3313)
!3387 = !DILocation(line: 263, column: 10, scope: !3313)
!3388 = !DILocation(line: 308, column: 2, scope: !3313)
!3389 = !DILocation(line: 311, column: 3, scope: !3313)
!3390 = !DILocation(line: 318, column: 11, scope: !3342)
!3391 = !DILocation(line: 319, column: 9, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !713, line: 319, column: 9)
!3393 = distinct !DILexicalBlock(scope: !3394, file: !713, line: 319, column: 9)
!3394 = distinct !DILexicalBlock(scope: !3342, file: !713, line: 318, column: 11)
!3395 = !DILocation(line: 319, column: 9, scope: !3393)
!3396 = !DILocation(line: 0, scope: !774, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 357, column: 26, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3399, file: !713, line: 335, column: 11)
!3399 = distinct !DILexicalBlock(scope: !3341, file: !713, line: 334, column: 13)
!3400 = !DILocation(line: 199, column: 29, scope: !774, inlinedAt: !3397)
!3401 = !DILocation(line: 201, column: 19, scope: !3402, inlinedAt: !3397)
!3402 = distinct !DILexicalBlock(scope: !774, file: !713, line: 201, column: 7)
!3403 = !DILocation(line: 201, column: 7, scope: !774, inlinedAt: !3397)
!3404 = !DILocation(line: 229, column: 3, scope: !774, inlinedAt: !3397)
!3405 = !DILocation(line: 230, column: 3, scope: !774, inlinedAt: !3397)
!3406 = !DILocation(line: 230, column: 13, scope: !774, inlinedAt: !3397)
!3407 = !DILocalVariable(name: "ps", arg: 1, scope: !3408, file: !3161, line: 1135, type: !3411)
!3408 = distinct !DISubprogram(name: "mbszero", scope: !3161, file: !3161, line: 1135, type: !3409, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3412)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{null, !3411}
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!3412 = !{!3407}
!3413 = !DILocation(line: 0, scope: !3408, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 230, column: 18, scope: !774, inlinedAt: !3397)
!3415 = !DILocalVariable(name: "__dest", arg: 1, scope: !3416, file: !2089, line: 57, type: !168)
!3416 = distinct !DISubprogram(name: "memset", scope: !2089, file: !2089, line: 57, type: !3170, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3417)
!3417 = !{!3415, !3418, !3419}
!3418 = !DILocalVariable(name: "__ch", arg: 2, scope: !3416, file: !2089, line: 57, type: !118)
!3419 = !DILocalVariable(name: "__len", arg: 3, scope: !3416, file: !2089, line: 57, type: !170)
!3420 = !DILocation(line: 0, scope: !3416, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 1137, column: 3, scope: !3408, inlinedAt: !3414)
!3422 = !DILocation(line: 59, column: 10, scope: !3416, inlinedAt: !3421)
!3423 = !DILocation(line: 231, column: 7, scope: !3424, inlinedAt: !3397)
!3424 = distinct !DILexicalBlock(scope: !774, file: !713, line: 231, column: 7)
!3425 = !DILocation(line: 231, column: 40, scope: !3424, inlinedAt: !3397)
!3426 = !DILocation(line: 231, column: 45, scope: !3424, inlinedAt: !3397)
!3427 = !DILocation(line: 235, column: 1, scope: !774, inlinedAt: !3397)
!3428 = !DILocation(line: 0, scope: !774, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 358, column: 27, scope: !3398)
!3430 = !DILocation(line: 199, column: 29, scope: !774, inlinedAt: !3429)
!3431 = !DILocation(line: 201, column: 19, scope: !3402, inlinedAt: !3429)
!3432 = !DILocation(line: 201, column: 7, scope: !774, inlinedAt: !3429)
!3433 = !DILocation(line: 229, column: 3, scope: !774, inlinedAt: !3429)
!3434 = !DILocation(line: 230, column: 3, scope: !774, inlinedAt: !3429)
!3435 = !DILocation(line: 230, column: 13, scope: !774, inlinedAt: !3429)
!3436 = !DILocation(line: 0, scope: !3408, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 230, column: 18, scope: !774, inlinedAt: !3429)
!3438 = !DILocation(line: 0, scope: !3416, inlinedAt: !3439)
!3439 = distinct !DILocation(line: 1137, column: 3, scope: !3408, inlinedAt: !3437)
!3440 = !DILocation(line: 59, column: 10, scope: !3416, inlinedAt: !3439)
!3441 = !DILocation(line: 231, column: 7, scope: !3424, inlinedAt: !3429)
!3442 = !DILocation(line: 231, column: 40, scope: !3424, inlinedAt: !3429)
!3443 = !DILocation(line: 231, column: 45, scope: !3424, inlinedAt: !3429)
!3444 = !DILocation(line: 235, column: 1, scope: !774, inlinedAt: !3429)
!3445 = !DILocation(line: 360, column: 13, scope: !3341)
!3446 = !DILocation(line: 0, scope: !3339)
!3447 = !DILocation(line: 361, column: 45, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3339, file: !713, line: 361, column: 11)
!3449 = !DILocation(line: 361, column: 11, scope: !3339)
!3450 = !DILocation(line: 362, column: 13, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3452, file: !713, line: 362, column: 13)
!3452 = distinct !DILexicalBlock(scope: !3448, file: !713, line: 362, column: 13)
!3453 = !DILocation(line: 362, column: 13, scope: !3452)
!3454 = !DILocation(line: 361, column: 52, scope: !3448)
!3455 = distinct !{!3455, !3449, !3456, !1148}
!3456 = !DILocation(line: 362, column: 13, scope: !3339)
!3457 = !DILocation(line: 260, column: 10, scope: !3313)
!3458 = !DILocation(line: 365, column: 28, scope: !3341)
!3459 = !DILocation(line: 367, column: 7, scope: !3342)
!3460 = !DILocation(line: 370, column: 7, scope: !3342)
!3461 = !DILocation(line: 376, column: 11, scope: !3342)
!3462 = !DILocation(line: 381, column: 11, scope: !3342)
!3463 = !DILocation(line: 382, column: 9, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3465, file: !713, line: 382, column: 9)
!3465 = distinct !DILexicalBlock(scope: !3466, file: !713, line: 382, column: 9)
!3466 = distinct !DILexicalBlock(scope: !3342, file: !713, line: 381, column: 11)
!3467 = !DILocation(line: 382, column: 9, scope: !3465)
!3468 = !DILocation(line: 389, column: 7, scope: !3342)
!3469 = !DILocation(line: 392, column: 7, scope: !3342)
!3470 = !DILocation(line: 0, scope: !3344)
!3471 = !DILocation(line: 395, column: 8, scope: !3344)
!3472 = !DILocation(line: 395, scope: !3344)
!3473 = !DILocation(line: 395, column: 34, scope: !3347)
!3474 = !DILocation(line: 395, column: 26, scope: !3347)
!3475 = !DILocation(line: 395, column: 48, scope: !3347)
!3476 = !DILocation(line: 395, column: 55, scope: !3347)
!3477 = !DILocation(line: 395, column: 3, scope: !3344)
!3478 = !DILocation(line: 395, column: 67, scope: !3347)
!3479 = !DILocation(line: 0, scope: !3346)
!3480 = !DILocation(line: 402, column: 11, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3346, file: !713, line: 401, column: 11)
!3482 = !DILocation(line: 404, column: 17, scope: !3481)
!3483 = !DILocation(line: 405, column: 39, scope: !3481)
!3484 = !DILocation(line: 409, column: 32, scope: !3481)
!3485 = !DILocation(line: 405, column: 19, scope: !3481)
!3486 = !DILocation(line: 405, column: 15, scope: !3481)
!3487 = !DILocation(line: 410, column: 11, scope: !3481)
!3488 = !DILocation(line: 410, column: 25, scope: !3481)
!3489 = !DILocalVariable(name: "__s1", arg: 1, scope: !3490, file: !1114, line: 974, type: !1246)
!3490 = distinct !DISubprogram(name: "memeq", scope: !1114, file: !1114, line: 974, type: !3131, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3491)
!3491 = !{!3489, !3492, !3493}
!3492 = !DILocalVariable(name: "__s2", arg: 2, scope: !3490, file: !1114, line: 974, type: !1246)
!3493 = !DILocalVariable(name: "__n", arg: 3, scope: !3490, file: !1114, line: 974, type: !170)
!3494 = !DILocation(line: 0, scope: !3490, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 410, column: 14, scope: !3481)
!3496 = !DILocation(line: 976, column: 11, scope: !3490, inlinedAt: !3495)
!3497 = !DILocation(line: 976, column: 10, scope: !3490, inlinedAt: !3495)
!3498 = !DILocation(line: 401, column: 11, scope: !3346)
!3499 = !DILocation(line: 417, column: 25, scope: !3346)
!3500 = !DILocation(line: 418, column: 7, scope: !3346)
!3501 = !DILocation(line: 421, column: 15, scope: !3353)
!3502 = !DILocation(line: 423, column: 15, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3504, file: !713, line: 423, column: 15)
!3504 = distinct !DILexicalBlock(scope: !3505, file: !713, line: 422, column: 13)
!3505 = distinct !DILexicalBlock(scope: !3353, file: !713, line: 421, column: 15)
!3506 = !DILocation(line: 423, column: 15, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3503, file: !713, line: 423, column: 15)
!3508 = !DILocation(line: 423, column: 15, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3510, file: !713, line: 423, column: 15)
!3510 = distinct !DILexicalBlock(scope: !3511, file: !713, line: 423, column: 15)
!3511 = distinct !DILexicalBlock(scope: !3507, file: !713, line: 423, column: 15)
!3512 = !DILocation(line: 423, column: 15, scope: !3510)
!3513 = !DILocation(line: 423, column: 15, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3515, file: !713, line: 423, column: 15)
!3515 = distinct !DILexicalBlock(scope: !3511, file: !713, line: 423, column: 15)
!3516 = !DILocation(line: 423, column: 15, scope: !3515)
!3517 = !DILocation(line: 423, column: 15, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3519, file: !713, line: 423, column: 15)
!3519 = distinct !DILexicalBlock(scope: !3511, file: !713, line: 423, column: 15)
!3520 = !DILocation(line: 423, column: 15, scope: !3519)
!3521 = !DILocation(line: 423, column: 15, scope: !3511)
!3522 = !DILocation(line: 423, column: 15, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3524, file: !713, line: 423, column: 15)
!3524 = distinct !DILexicalBlock(scope: !3503, file: !713, line: 423, column: 15)
!3525 = !DILocation(line: 423, column: 15, scope: !3524)
!3526 = !DILocation(line: 431, column: 19, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3504, file: !713, line: 430, column: 19)
!3528 = !DILocation(line: 431, column: 24, scope: !3527)
!3529 = !DILocation(line: 431, column: 28, scope: !3527)
!3530 = !DILocation(line: 431, column: 38, scope: !3527)
!3531 = !DILocation(line: 431, column: 48, scope: !3527)
!3532 = !DILocation(line: 431, column: 59, scope: !3527)
!3533 = !DILocation(line: 433, column: 19, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3535, file: !713, line: 433, column: 19)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !713, line: 433, column: 19)
!3536 = distinct !DILexicalBlock(scope: !3527, file: !713, line: 432, column: 17)
!3537 = !DILocation(line: 433, column: 19, scope: !3535)
!3538 = !DILocation(line: 434, column: 19, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3540, file: !713, line: 434, column: 19)
!3540 = distinct !DILexicalBlock(scope: !3536, file: !713, line: 434, column: 19)
!3541 = !DILocation(line: 434, column: 19, scope: !3540)
!3542 = !DILocation(line: 435, column: 17, scope: !3536)
!3543 = !DILocation(line: 442, column: 20, scope: !3505)
!3544 = !DILocation(line: 447, column: 11, scope: !3353)
!3545 = !DILocation(line: 450, column: 19, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3353, file: !713, line: 448, column: 13)
!3547 = !DILocation(line: 456, column: 19, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3546, file: !713, line: 455, column: 19)
!3549 = !DILocation(line: 456, column: 24, scope: !3548)
!3550 = !DILocation(line: 456, column: 28, scope: !3548)
!3551 = !DILocation(line: 456, column: 38, scope: !3548)
!3552 = !DILocation(line: 456, column: 47, scope: !3548)
!3553 = !DILocation(line: 456, column: 41, scope: !3548)
!3554 = !DILocation(line: 456, column: 52, scope: !3548)
!3555 = !DILocation(line: 455, column: 19, scope: !3546)
!3556 = !DILocation(line: 457, column: 25, scope: !3548)
!3557 = !DILocation(line: 457, column: 17, scope: !3548)
!3558 = !DILocation(line: 464, column: 25, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3548, file: !713, line: 458, column: 19)
!3560 = !DILocation(line: 468, column: 21, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3562, file: !713, line: 468, column: 21)
!3562 = distinct !DILexicalBlock(scope: !3559, file: !713, line: 468, column: 21)
!3563 = !DILocation(line: 468, column: 21, scope: !3562)
!3564 = !DILocation(line: 469, column: 21, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3566, file: !713, line: 469, column: 21)
!3566 = distinct !DILexicalBlock(scope: !3559, file: !713, line: 469, column: 21)
!3567 = !DILocation(line: 469, column: 21, scope: !3566)
!3568 = !DILocation(line: 470, column: 21, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3570, file: !713, line: 470, column: 21)
!3570 = distinct !DILexicalBlock(scope: !3559, file: !713, line: 470, column: 21)
!3571 = !DILocation(line: 470, column: 21, scope: !3570)
!3572 = !DILocation(line: 471, column: 21, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3574, file: !713, line: 471, column: 21)
!3574 = distinct !DILexicalBlock(scope: !3559, file: !713, line: 471, column: 21)
!3575 = !DILocation(line: 471, column: 21, scope: !3574)
!3576 = !DILocation(line: 472, column: 21, scope: !3559)
!3577 = !DILocation(line: 482, column: 33, scope: !3376)
!3578 = !DILocation(line: 483, column: 33, scope: !3376)
!3579 = !DILocation(line: 485, column: 33, scope: !3376)
!3580 = !DILocation(line: 486, column: 33, scope: !3376)
!3581 = !DILocation(line: 487, column: 33, scope: !3376)
!3582 = !DILocation(line: 490, column: 17, scope: !3376)
!3583 = !DILocation(line: 492, column: 21, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3585, file: !713, line: 491, column: 15)
!3585 = distinct !DILexicalBlock(scope: !3376, file: !713, line: 490, column: 17)
!3586 = !DILocation(line: 499, column: 35, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3376, file: !713, line: 499, column: 17)
!3588 = !DILocation(line: 0, scope: !3376)
!3589 = !DILocation(line: 502, column: 11, scope: !3376)
!3590 = !DILocation(line: 504, column: 17, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3376, file: !713, line: 503, column: 17)
!3592 = !DILocation(line: 507, column: 11, scope: !3376)
!3593 = !DILocation(line: 508, column: 17, scope: !3376)
!3594 = !DILocation(line: 517, column: 15, scope: !3353)
!3595 = !DILocation(line: 517, column: 40, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3353, file: !713, line: 517, column: 15)
!3597 = !DILocation(line: 517, column: 47, scope: !3596)
!3598 = !DILocation(line: 517, column: 18, scope: !3596)
!3599 = !DILocation(line: 521, column: 17, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3353, file: !713, line: 521, column: 15)
!3601 = !DILocation(line: 521, column: 15, scope: !3353)
!3602 = !DILocation(line: 525, column: 11, scope: !3353)
!3603 = !DILocation(line: 537, column: 15, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3353, file: !713, line: 536, column: 15)
!3605 = !DILocation(line: 536, column: 15, scope: !3353)
!3606 = !DILocation(line: 544, column: 15, scope: !3353)
!3607 = !DILocation(line: 546, column: 19, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3609, file: !713, line: 545, column: 13)
!3609 = distinct !DILexicalBlock(scope: !3353, file: !713, line: 544, column: 15)
!3610 = !DILocation(line: 549, column: 19, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3608, file: !713, line: 549, column: 19)
!3612 = !DILocation(line: 549, column: 30, scope: !3611)
!3613 = !DILocation(line: 558, column: 15, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3615, file: !713, line: 558, column: 15)
!3615 = distinct !DILexicalBlock(scope: !3608, file: !713, line: 558, column: 15)
!3616 = !DILocation(line: 558, column: 15, scope: !3615)
!3617 = !DILocation(line: 559, column: 15, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3619, file: !713, line: 559, column: 15)
!3619 = distinct !DILexicalBlock(scope: !3608, file: !713, line: 559, column: 15)
!3620 = !DILocation(line: 559, column: 15, scope: !3619)
!3621 = !DILocation(line: 560, column: 15, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !713, line: 560, column: 15)
!3623 = distinct !DILexicalBlock(scope: !3608, file: !713, line: 560, column: 15)
!3624 = !DILocation(line: 560, column: 15, scope: !3623)
!3625 = !DILocation(line: 562, column: 13, scope: !3608)
!3626 = !DILocation(line: 602, column: 17, scope: !3352)
!3627 = !DILocation(line: 0, scope: !3352)
!3628 = !DILocation(line: 605, column: 29, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3357, file: !713, line: 603, column: 15)
!3630 = !DILocation(line: 605, column: 41, scope: !3629)
!3631 = !DILocation(line: 606, column: 15, scope: !3629)
!3632 = !DILocation(line: 609, column: 17, scope: !3356)
!3633 = !DILocation(line: 609, column: 27, scope: !3356)
!3634 = !DILocation(line: 0, scope: !3408, inlinedAt: !3635)
!3635 = distinct !DILocation(line: 609, column: 32, scope: !3356)
!3636 = !DILocation(line: 0, scope: !3416, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 1137, column: 3, scope: !3408, inlinedAt: !3635)
!3638 = !DILocation(line: 59, column: 10, scope: !3416, inlinedAt: !3637)
!3639 = !DILocation(line: 613, column: 29, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3356, file: !713, line: 613, column: 21)
!3641 = !DILocation(line: 613, column: 21, scope: !3356)
!3642 = !DILocation(line: 614, column: 29, scope: !3640)
!3643 = !DILocation(line: 614, column: 19, scope: !3640)
!3644 = !DILocation(line: 618, column: 21, scope: !3359)
!3645 = !DILocation(line: 620, column: 54, scope: !3359)
!3646 = !DILocation(line: 0, scope: !3359)
!3647 = !DILocation(line: 619, column: 36, scope: !3359)
!3648 = !DILocation(line: 621, column: 25, scope: !3359)
!3649 = !DILocation(line: 631, column: 38, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3368, file: !713, line: 629, column: 23)
!3651 = !DILocation(line: 631, column: 48, scope: !3650)
!3652 = !DILocation(line: 626, column: 25, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3369, file: !713, line: 624, column: 23)
!3654 = !DILocation(line: 631, column: 51, scope: !3650)
!3655 = !DILocation(line: 631, column: 25, scope: !3650)
!3656 = !DILocation(line: 632, column: 28, scope: !3650)
!3657 = !DILocation(line: 631, column: 34, scope: !3650)
!3658 = distinct !{!3658, !3655, !3656, !1148}
!3659 = !DILocation(line: 646, column: 29, scope: !3366)
!3660 = !DILocation(line: 0, scope: !3364)
!3661 = !DILocation(line: 649, column: 49, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3364, file: !713, line: 648, column: 29)
!3663 = !DILocation(line: 649, column: 39, scope: !3662)
!3664 = !DILocation(line: 649, column: 31, scope: !3662)
!3665 = !DILocation(line: 648, column: 60, scope: !3662)
!3666 = !DILocation(line: 648, column: 50, scope: !3662)
!3667 = !DILocation(line: 648, column: 29, scope: !3364)
!3668 = distinct !{!3668, !3667, !3669, !1148}
!3669 = !DILocation(line: 654, column: 33, scope: !3364)
!3670 = !DILocation(line: 657, column: 43, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3367, file: !713, line: 657, column: 29)
!3672 = !DILocalVariable(name: "wc", arg: 1, scope: !3673, file: !3674, line: 865, type: !3677)
!3673 = distinct !DISubprogram(name: "c32isprint", scope: !3674, file: !3674, line: 865, type: !3675, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3679)
!3674 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!118, !3677}
!3677 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3678, line: 20, baseType: !112)
!3678 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3679 = !{!3672}
!3680 = !DILocation(line: 0, scope: !3673, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 657, column: 31, scope: !3671)
!3682 = !DILocation(line: 871, column: 10, scope: !3673, inlinedAt: !3681)
!3683 = !DILocation(line: 657, column: 31, scope: !3671)
!3684 = !DILocation(line: 664, column: 23, scope: !3359)
!3685 = !DILocation(line: 665, column: 19, scope: !3360)
!3686 = !DILocation(line: 666, column: 15, scope: !3357)
!3687 = !DILocation(line: 753, column: 2, scope: !3313)
!3688 = !DILocation(line: 756, column: 51, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3313, file: !713, line: 756, column: 7)
!3690 = !DILocation(line: 0, scope: !3357)
!3691 = !DILocation(line: 670, column: 19, scope: !3373)
!3692 = !DILocation(line: 670, column: 23, scope: !3373)
!3693 = !DILocation(line: 674, column: 33, scope: !3372)
!3694 = !DILocation(line: 0, scope: !3372)
!3695 = !DILocation(line: 676, column: 17, scope: !3372)
!3696 = !DILocation(line: 398, column: 12, scope: !3346)
!3697 = !DILocation(line: 678, column: 43, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3699, file: !713, line: 678, column: 25)
!3699 = distinct !DILexicalBlock(scope: !3700, file: !713, line: 677, column: 19)
!3700 = distinct !DILexicalBlock(scope: !3701, file: !713, line: 676, column: 17)
!3701 = distinct !DILexicalBlock(scope: !3372, file: !713, line: 676, column: 17)
!3702 = !DILocation(line: 680, column: 25, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3704, file: !713, line: 680, column: 25)
!3704 = distinct !DILexicalBlock(scope: !3698, file: !713, line: 679, column: 23)
!3705 = !DILocation(line: 680, column: 25, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3703, file: !713, line: 680, column: 25)
!3707 = !DILocation(line: 680, column: 25, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3709, file: !713, line: 680, column: 25)
!3709 = distinct !DILexicalBlock(scope: !3710, file: !713, line: 680, column: 25)
!3710 = distinct !DILexicalBlock(scope: !3706, file: !713, line: 680, column: 25)
!3711 = !DILocation(line: 680, column: 25, scope: !3709)
!3712 = !DILocation(line: 680, column: 25, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3714, file: !713, line: 680, column: 25)
!3714 = distinct !DILexicalBlock(scope: !3710, file: !713, line: 680, column: 25)
!3715 = !DILocation(line: 680, column: 25, scope: !3714)
!3716 = !DILocation(line: 680, column: 25, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3718, file: !713, line: 680, column: 25)
!3718 = distinct !DILexicalBlock(scope: !3710, file: !713, line: 680, column: 25)
!3719 = !DILocation(line: 680, column: 25, scope: !3718)
!3720 = !DILocation(line: 680, column: 25, scope: !3710)
!3721 = !DILocation(line: 680, column: 25, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3723, file: !713, line: 680, column: 25)
!3723 = distinct !DILexicalBlock(scope: !3703, file: !713, line: 680, column: 25)
!3724 = !DILocation(line: 680, column: 25, scope: !3723)
!3725 = !DILocation(line: 681, column: 25, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3727, file: !713, line: 681, column: 25)
!3727 = distinct !DILexicalBlock(scope: !3704, file: !713, line: 681, column: 25)
!3728 = !DILocation(line: 681, column: 25, scope: !3727)
!3729 = !DILocation(line: 682, column: 25, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3731, file: !713, line: 682, column: 25)
!3731 = distinct !DILexicalBlock(scope: !3704, file: !713, line: 682, column: 25)
!3732 = !DILocation(line: 682, column: 25, scope: !3731)
!3733 = !DILocation(line: 683, column: 38, scope: !3704)
!3734 = !DILocation(line: 683, column: 33, scope: !3704)
!3735 = !DILocation(line: 684, column: 23, scope: !3704)
!3736 = !DILocation(line: 685, column: 30, scope: !3698)
!3737 = !DILocation(line: 687, column: 25, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3739, file: !713, line: 687, column: 25)
!3739 = distinct !DILexicalBlock(scope: !3740, file: !713, line: 687, column: 25)
!3740 = distinct !DILexicalBlock(scope: !3741, file: !713, line: 686, column: 23)
!3741 = distinct !DILexicalBlock(scope: !3698, file: !713, line: 685, column: 30)
!3742 = !DILocation(line: 687, column: 25, scope: !3739)
!3743 = !DILocation(line: 689, column: 23, scope: !3740)
!3744 = !DILocation(line: 690, column: 35, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3699, file: !713, line: 690, column: 25)
!3746 = !DILocation(line: 690, column: 30, scope: !3745)
!3747 = !DILocation(line: 690, column: 25, scope: !3699)
!3748 = !DILocation(line: 692, column: 21, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3750, file: !713, line: 692, column: 21)
!3750 = distinct !DILexicalBlock(scope: !3699, file: !713, line: 692, column: 21)
!3751 = !DILocation(line: 692, column: 21, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3753, file: !713, line: 692, column: 21)
!3753 = distinct !DILexicalBlock(scope: !3754, file: !713, line: 692, column: 21)
!3754 = distinct !DILexicalBlock(scope: !3749, file: !713, line: 692, column: 21)
!3755 = !DILocation(line: 692, column: 21, scope: !3753)
!3756 = !DILocation(line: 692, column: 21, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3758, file: !713, line: 692, column: 21)
!3758 = distinct !DILexicalBlock(scope: !3754, file: !713, line: 692, column: 21)
!3759 = !DILocation(line: 692, column: 21, scope: !3758)
!3760 = !DILocation(line: 692, column: 21, scope: !3754)
!3761 = !DILocation(line: 0, scope: !3699)
!3762 = !DILocation(line: 693, column: 21, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3764, file: !713, line: 693, column: 21)
!3764 = distinct !DILexicalBlock(scope: !3699, file: !713, line: 693, column: 21)
!3765 = !DILocation(line: 693, column: 21, scope: !3764)
!3766 = !DILocation(line: 694, column: 25, scope: !3699)
!3767 = !DILocation(line: 676, column: 17, scope: !3700)
!3768 = distinct !{!3768, !3769, !3770}
!3769 = !DILocation(line: 676, column: 17, scope: !3701)
!3770 = !DILocation(line: 695, column: 19, scope: !3701)
!3771 = !DILocation(line: 409, column: 30, scope: !3481)
!3772 = !DILocation(line: 702, column: 34, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3346, file: !713, line: 702, column: 11)
!3774 = !DILocation(line: 704, column: 14, scope: !3773)
!3775 = !DILocation(line: 705, column: 14, scope: !3773)
!3776 = !DILocation(line: 705, column: 35, scope: !3773)
!3777 = !DILocation(line: 705, column: 17, scope: !3773)
!3778 = !DILocation(line: 705, column: 47, scope: !3773)
!3779 = !DILocation(line: 705, column: 65, scope: !3773)
!3780 = !DILocation(line: 706, column: 11, scope: !3773)
!3781 = !DILocation(line: 702, column: 11, scope: !3346)
!3782 = !DILocation(line: 395, column: 15, scope: !3344)
!3783 = !DILocation(line: 709, column: 5, scope: !3346)
!3784 = !DILocation(line: 710, column: 7, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3346, file: !713, line: 710, column: 7)
!3786 = !DILocation(line: 710, column: 7, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3785, file: !713, line: 710, column: 7)
!3788 = !DILocation(line: 710, column: 7, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3790, file: !713, line: 710, column: 7)
!3790 = distinct !DILexicalBlock(scope: !3791, file: !713, line: 710, column: 7)
!3791 = distinct !DILexicalBlock(scope: !3787, file: !713, line: 710, column: 7)
!3792 = !DILocation(line: 710, column: 7, scope: !3790)
!3793 = !DILocation(line: 710, column: 7, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3795, file: !713, line: 710, column: 7)
!3795 = distinct !DILexicalBlock(scope: !3791, file: !713, line: 710, column: 7)
!3796 = !DILocation(line: 710, column: 7, scope: !3795)
!3797 = !DILocation(line: 710, column: 7, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3799, file: !713, line: 710, column: 7)
!3799 = distinct !DILexicalBlock(scope: !3791, file: !713, line: 710, column: 7)
!3800 = !DILocation(line: 710, column: 7, scope: !3799)
!3801 = !DILocation(line: 710, column: 7, scope: !3791)
!3802 = !DILocation(line: 710, column: 7, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3804, file: !713, line: 710, column: 7)
!3804 = distinct !DILexicalBlock(scope: !3785, file: !713, line: 710, column: 7)
!3805 = !DILocation(line: 710, column: 7, scope: !3804)
!3806 = !DILocation(line: 712, column: 5, scope: !3346)
!3807 = !DILocation(line: 713, column: 7, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3809, file: !713, line: 713, column: 7)
!3809 = distinct !DILexicalBlock(scope: !3346, file: !713, line: 713, column: 7)
!3810 = !DILocation(line: 417, column: 21, scope: !3346)
!3811 = !DILocation(line: 713, column: 7, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3813, file: !713, line: 713, column: 7)
!3813 = distinct !DILexicalBlock(scope: !3814, file: !713, line: 713, column: 7)
!3814 = distinct !DILexicalBlock(scope: !3808, file: !713, line: 713, column: 7)
!3815 = !DILocation(line: 713, column: 7, scope: !3813)
!3816 = !DILocation(line: 713, column: 7, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3818, file: !713, line: 713, column: 7)
!3818 = distinct !DILexicalBlock(scope: !3814, file: !713, line: 713, column: 7)
!3819 = !DILocation(line: 713, column: 7, scope: !3818)
!3820 = !DILocation(line: 713, column: 7, scope: !3814)
!3821 = !DILocation(line: 714, column: 7, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3823, file: !713, line: 714, column: 7)
!3823 = distinct !DILexicalBlock(scope: !3346, file: !713, line: 714, column: 7)
!3824 = !DILocation(line: 714, column: 7, scope: !3823)
!3825 = !DILocation(line: 716, column: 11, scope: !3346)
!3826 = !DILocation(line: 718, column: 5, scope: !3347)
!3827 = !DILocation(line: 395, column: 82, scope: !3347)
!3828 = !DILocation(line: 395, column: 3, scope: !3347)
!3829 = distinct !{!3829, !3477, !3830, !1148}
!3830 = !DILocation(line: 718, column: 5, scope: !3344)
!3831 = !DILocation(line: 720, column: 11, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3313, file: !713, line: 720, column: 7)
!3833 = !DILocation(line: 720, column: 16, scope: !3832)
!3834 = !DILocation(line: 728, column: 51, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3313, file: !713, line: 728, column: 7)
!3836 = !DILocation(line: 731, column: 11, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3835, file: !713, line: 730, column: 5)
!3838 = !DILocation(line: 732, column: 16, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3837, file: !713, line: 731, column: 11)
!3840 = !DILocation(line: 732, column: 9, scope: !3839)
!3841 = !DILocation(line: 736, column: 18, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3839, file: !713, line: 736, column: 16)
!3843 = !DILocation(line: 736, column: 29, scope: !3842)
!3844 = !DILocation(line: 745, column: 7, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3313, file: !713, line: 745, column: 7)
!3846 = !DILocation(line: 745, column: 20, scope: !3845)
!3847 = !DILocation(line: 746, column: 12, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3849, file: !713, line: 746, column: 5)
!3849 = distinct !DILexicalBlock(scope: !3845, file: !713, line: 746, column: 5)
!3850 = !DILocation(line: 746, column: 5, scope: !3849)
!3851 = !DILocation(line: 747, column: 7, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3853, file: !713, line: 747, column: 7)
!3853 = distinct !DILexicalBlock(scope: !3848, file: !713, line: 747, column: 7)
!3854 = !DILocation(line: 747, column: 7, scope: !3853)
!3855 = !DILocation(line: 746, column: 39, scope: !3848)
!3856 = distinct !{!3856, !3850, !3857, !1148}
!3857 = !DILocation(line: 747, column: 7, scope: !3849)
!3858 = !DILocation(line: 749, column: 11, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3313, file: !713, line: 749, column: 7)
!3860 = !DILocation(line: 749, column: 7, scope: !3313)
!3861 = !DILocation(line: 750, column: 5, scope: !3859)
!3862 = !DILocation(line: 750, column: 17, scope: !3859)
!3863 = !DILocation(line: 756, column: 21, scope: !3689)
!3864 = !DILocation(line: 760, column: 42, scope: !3313)
!3865 = !DILocation(line: 758, column: 10, scope: !3313)
!3866 = !DILocation(line: 758, column: 3, scope: !3313)
!3867 = !DILocation(line: 762, column: 1, scope: !3313)
!3868 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1222, file: !1222, line: 98, type: !3869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!170}
!3871 = !DISubprogram(name: "iswprint", scope: !3872, file: !3872, line: 120, type: !3675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!3872 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3873 = distinct !DISubprogram(name: "quotearg_alloc", scope: !713, file: !713, line: 788, type: !3874, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3876)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!167, !173, !170, !3206}
!3876 = !{!3877, !3878, !3879}
!3877 = !DILocalVariable(name: "arg", arg: 1, scope: !3873, file: !713, line: 788, type: !173)
!3878 = !DILocalVariable(name: "argsize", arg: 2, scope: !3873, file: !713, line: 788, type: !170)
!3879 = !DILocalVariable(name: "o", arg: 3, scope: !3873, file: !713, line: 789, type: !3206)
!3880 = !DILocation(line: 0, scope: !3873)
!3881 = !DILocalVariable(name: "arg", arg: 1, scope: !3882, file: !713, line: 801, type: !173)
!3882 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !713, file: !713, line: 801, type: !3883, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3885)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!167, !173, !170, !958, !3206}
!3885 = !{!3881, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893}
!3886 = !DILocalVariable(name: "argsize", arg: 2, scope: !3882, file: !713, line: 801, type: !170)
!3887 = !DILocalVariable(name: "size", arg: 3, scope: !3882, file: !713, line: 801, type: !958)
!3888 = !DILocalVariable(name: "o", arg: 4, scope: !3882, file: !713, line: 802, type: !3206)
!3889 = !DILocalVariable(name: "p", scope: !3882, file: !713, line: 804, type: !3206)
!3890 = !DILocalVariable(name: "saved_errno", scope: !3882, file: !713, line: 805, type: !118)
!3891 = !DILocalVariable(name: "flags", scope: !3882, file: !713, line: 807, type: !118)
!3892 = !DILocalVariable(name: "bufsize", scope: !3882, file: !713, line: 808, type: !170)
!3893 = !DILocalVariable(name: "buf", scope: !3882, file: !713, line: 812, type: !167)
!3894 = !DILocation(line: 0, scope: !3882, inlinedAt: !3895)
!3895 = distinct !DILocation(line: 791, column: 10, scope: !3873)
!3896 = !DILocation(line: 804, column: 37, scope: !3882, inlinedAt: !3895)
!3897 = !DILocation(line: 805, column: 21, scope: !3882, inlinedAt: !3895)
!3898 = !DILocation(line: 807, column: 18, scope: !3882, inlinedAt: !3895)
!3899 = !DILocation(line: 807, column: 24, scope: !3882, inlinedAt: !3895)
!3900 = !DILocation(line: 808, column: 72, scope: !3882, inlinedAt: !3895)
!3901 = !DILocation(line: 809, column: 56, scope: !3882, inlinedAt: !3895)
!3902 = !DILocation(line: 810, column: 49, scope: !3882, inlinedAt: !3895)
!3903 = !DILocation(line: 811, column: 49, scope: !3882, inlinedAt: !3895)
!3904 = !DILocation(line: 808, column: 20, scope: !3882, inlinedAt: !3895)
!3905 = !DILocation(line: 811, column: 62, scope: !3882, inlinedAt: !3895)
!3906 = !DILocation(line: 812, column: 15, scope: !3882, inlinedAt: !3895)
!3907 = !DILocation(line: 813, column: 60, scope: !3882, inlinedAt: !3895)
!3908 = !DILocation(line: 815, column: 32, scope: !3882, inlinedAt: !3895)
!3909 = !DILocation(line: 815, column: 47, scope: !3882, inlinedAt: !3895)
!3910 = !DILocation(line: 813, column: 3, scope: !3882, inlinedAt: !3895)
!3911 = !DILocation(line: 816, column: 9, scope: !3882, inlinedAt: !3895)
!3912 = !DILocation(line: 791, column: 3, scope: !3873)
!3913 = !DILocation(line: 0, scope: !3882)
!3914 = !DILocation(line: 804, column: 37, scope: !3882)
!3915 = !DILocation(line: 805, column: 21, scope: !3882)
!3916 = !DILocation(line: 807, column: 18, scope: !3882)
!3917 = !DILocation(line: 807, column: 27, scope: !3882)
!3918 = !DILocation(line: 807, column: 24, scope: !3882)
!3919 = !DILocation(line: 808, column: 72, scope: !3882)
!3920 = !DILocation(line: 809, column: 56, scope: !3882)
!3921 = !DILocation(line: 810, column: 49, scope: !3882)
!3922 = !DILocation(line: 811, column: 49, scope: !3882)
!3923 = !DILocation(line: 808, column: 20, scope: !3882)
!3924 = !DILocation(line: 811, column: 62, scope: !3882)
!3925 = !DILocation(line: 812, column: 15, scope: !3882)
!3926 = !DILocation(line: 813, column: 60, scope: !3882)
!3927 = !DILocation(line: 815, column: 32, scope: !3882)
!3928 = !DILocation(line: 815, column: 47, scope: !3882)
!3929 = !DILocation(line: 813, column: 3, scope: !3882)
!3930 = !DILocation(line: 816, column: 9, scope: !3882)
!3931 = !DILocation(line: 817, column: 7, scope: !3882)
!3932 = !DILocation(line: 818, column: 11, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3882, file: !713, line: 817, column: 7)
!3934 = !DILocation(line: 818, column: 5, scope: !3933)
!3935 = !DILocation(line: 819, column: 3, scope: !3882)
!3936 = distinct !DISubprogram(name: "quotearg_free", scope: !713, file: !713, line: 837, type: !668, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3937)
!3937 = !{!3938, !3939}
!3938 = !DILocalVariable(name: "sv", scope: !3936, file: !713, line: 839, type: !797)
!3939 = !DILocalVariable(name: "i", scope: !3940, file: !713, line: 840, type: !118)
!3940 = distinct !DILexicalBlock(scope: !3936, file: !713, line: 840, column: 3)
!3941 = !DILocation(line: 839, column: 24, scope: !3936)
!3942 = !DILocation(line: 0, scope: !3936)
!3943 = !DILocation(line: 0, scope: !3940)
!3944 = !DILocation(line: 840, column: 21, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3940, file: !713, line: 840, column: 3)
!3946 = !DILocation(line: 840, column: 3, scope: !3940)
!3947 = !DILocation(line: 842, column: 13, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3936, file: !713, line: 842, column: 7)
!3949 = !{!3950, !1025, i64 8}
!3950 = !{!"slotvec", !1300, i64 0, !1025, i64 8}
!3951 = !DILocation(line: 842, column: 17, scope: !3948)
!3952 = !DILocation(line: 842, column: 7, scope: !3936)
!3953 = !DILocation(line: 841, column: 17, scope: !3945)
!3954 = !DILocation(line: 841, column: 5, scope: !3945)
!3955 = !DILocation(line: 840, column: 32, scope: !3945)
!3956 = distinct !{!3956, !3946, !3957, !1148}
!3957 = !DILocation(line: 841, column: 20, scope: !3940)
!3958 = !DILocation(line: 844, column: 7, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3948, file: !713, line: 843, column: 5)
!3960 = !DILocation(line: 845, column: 21, scope: !3959)
!3961 = !{!3950, !1300, i64 0}
!3962 = !DILocation(line: 846, column: 20, scope: !3959)
!3963 = !DILocation(line: 847, column: 5, scope: !3959)
!3964 = !DILocation(line: 848, column: 10, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3936, file: !713, line: 848, column: 7)
!3966 = !DILocation(line: 848, column: 7, scope: !3936)
!3967 = !DILocation(line: 850, column: 7, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3965, file: !713, line: 849, column: 5)
!3969 = !DILocation(line: 851, column: 15, scope: !3968)
!3970 = !DILocation(line: 852, column: 5, scope: !3968)
!3971 = !DILocation(line: 853, column: 10, scope: !3936)
!3972 = !DILocation(line: 854, column: 1, scope: !3936)
!3973 = distinct !DISubprogram(name: "quotearg_n", scope: !713, file: !713, line: 919, type: !1215, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3974)
!3974 = !{!3975, !3976}
!3975 = !DILocalVariable(name: "n", arg: 1, scope: !3973, file: !713, line: 919, type: !118)
!3976 = !DILocalVariable(name: "arg", arg: 2, scope: !3973, file: !713, line: 919, type: !173)
!3977 = !DILocation(line: 0, scope: !3973)
!3978 = !DILocation(line: 921, column: 10, scope: !3973)
!3979 = !DILocation(line: 921, column: 3, scope: !3973)
!3980 = distinct !DISubprogram(name: "quotearg_n_options", scope: !713, file: !713, line: 866, type: !3981, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3983)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!167, !118, !173, !170, !3206}
!3983 = !{!3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3994, !3995, !3997, !3998, !3999}
!3984 = !DILocalVariable(name: "n", arg: 1, scope: !3980, file: !713, line: 866, type: !118)
!3985 = !DILocalVariable(name: "arg", arg: 2, scope: !3980, file: !713, line: 866, type: !173)
!3986 = !DILocalVariable(name: "argsize", arg: 3, scope: !3980, file: !713, line: 866, type: !170)
!3987 = !DILocalVariable(name: "options", arg: 4, scope: !3980, file: !713, line: 867, type: !3206)
!3988 = !DILocalVariable(name: "saved_errno", scope: !3980, file: !713, line: 869, type: !118)
!3989 = !DILocalVariable(name: "sv", scope: !3980, file: !713, line: 871, type: !797)
!3990 = !DILocalVariable(name: "nslots_max", scope: !3980, file: !713, line: 873, type: !118)
!3991 = !DILocalVariable(name: "preallocated", scope: !3992, file: !713, line: 879, type: !224)
!3992 = distinct !DILexicalBlock(scope: !3993, file: !713, line: 878, column: 5)
!3993 = distinct !DILexicalBlock(scope: !3980, file: !713, line: 877, column: 7)
!3994 = !DILocalVariable(name: "new_nslots", scope: !3992, file: !713, line: 880, type: !563)
!3995 = !DILocalVariable(name: "size", scope: !3996, file: !713, line: 891, type: !170)
!3996 = distinct !DILexicalBlock(scope: !3980, file: !713, line: 890, column: 3)
!3997 = !DILocalVariable(name: "val", scope: !3996, file: !713, line: 892, type: !167)
!3998 = !DILocalVariable(name: "flags", scope: !3996, file: !713, line: 894, type: !118)
!3999 = !DILocalVariable(name: "qsize", scope: !3996, file: !713, line: 895, type: !170)
!4000 = !DILocation(line: 0, scope: !3980)
!4001 = !DILocation(line: 869, column: 21, scope: !3980)
!4002 = !DILocation(line: 871, column: 24, scope: !3980)
!4003 = !DILocation(line: 874, column: 17, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !3980, file: !713, line: 874, column: 7)
!4005 = !DILocation(line: 875, column: 5, scope: !4004)
!4006 = !DILocation(line: 877, column: 7, scope: !3993)
!4007 = !DILocation(line: 877, column: 14, scope: !3993)
!4008 = !DILocation(line: 877, column: 7, scope: !3980)
!4009 = !DILocation(line: 879, column: 31, scope: !3992)
!4010 = !DILocation(line: 0, scope: !3992)
!4011 = !DILocation(line: 880, column: 7, scope: !3992)
!4012 = !DILocation(line: 880, column: 26, scope: !3992)
!4013 = !DILocation(line: 880, column: 13, scope: !3992)
!4014 = !DILocation(line: 882, column: 31, scope: !3992)
!4015 = !DILocation(line: 883, column: 33, scope: !3992)
!4016 = !DILocation(line: 883, column: 42, scope: !3992)
!4017 = !DILocation(line: 883, column: 31, scope: !3992)
!4018 = !DILocation(line: 882, column: 22, scope: !3992)
!4019 = !DILocation(line: 882, column: 15, scope: !3992)
!4020 = !DILocation(line: 884, column: 11, scope: !3992)
!4021 = !DILocation(line: 885, column: 15, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !3992, file: !713, line: 884, column: 11)
!4023 = !{i64 0, i64 8, !1299, i64 8, i64 8, !1024}
!4024 = !DILocation(line: 885, column: 9, scope: !4022)
!4025 = !DILocation(line: 886, column: 20, scope: !3992)
!4026 = !DILocation(line: 886, column: 18, scope: !3992)
!4027 = !DILocation(line: 886, column: 32, scope: !3992)
!4028 = !DILocation(line: 886, column: 43, scope: !3992)
!4029 = !DILocation(line: 886, column: 53, scope: !3992)
!4030 = !DILocation(line: 0, scope: !3416, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 886, column: 7, scope: !3992)
!4032 = !DILocation(line: 59, column: 10, scope: !3416, inlinedAt: !4031)
!4033 = !DILocation(line: 887, column: 16, scope: !3992)
!4034 = !DILocation(line: 887, column: 14, scope: !3992)
!4035 = !DILocation(line: 888, column: 5, scope: !3993)
!4036 = !DILocation(line: 888, column: 5, scope: !3992)
!4037 = !DILocation(line: 891, column: 19, scope: !3996)
!4038 = !DILocation(line: 891, column: 25, scope: !3996)
!4039 = !DILocation(line: 0, scope: !3996)
!4040 = !DILocation(line: 892, column: 23, scope: !3996)
!4041 = !DILocation(line: 894, column: 26, scope: !3996)
!4042 = !DILocation(line: 894, column: 32, scope: !3996)
!4043 = !DILocation(line: 896, column: 55, scope: !3996)
!4044 = !DILocation(line: 897, column: 55, scope: !3996)
!4045 = !DILocation(line: 898, column: 55, scope: !3996)
!4046 = !DILocation(line: 899, column: 55, scope: !3996)
!4047 = !DILocation(line: 895, column: 20, scope: !3996)
!4048 = !DILocation(line: 901, column: 14, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !3996, file: !713, line: 901, column: 9)
!4050 = !DILocation(line: 901, column: 9, scope: !3996)
!4051 = !DILocation(line: 903, column: 35, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4049, file: !713, line: 902, column: 7)
!4053 = !DILocation(line: 903, column: 20, scope: !4052)
!4054 = !DILocation(line: 904, column: 17, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4052, file: !713, line: 904, column: 13)
!4056 = !DILocation(line: 904, column: 13, scope: !4052)
!4057 = !DILocation(line: 905, column: 11, scope: !4055)
!4058 = !DILocation(line: 906, column: 27, scope: !4052)
!4059 = !DILocation(line: 906, column: 19, scope: !4052)
!4060 = !DILocation(line: 907, column: 69, scope: !4052)
!4061 = !DILocation(line: 909, column: 44, scope: !4052)
!4062 = !DILocation(line: 910, column: 44, scope: !4052)
!4063 = !DILocation(line: 907, column: 9, scope: !4052)
!4064 = !DILocation(line: 911, column: 7, scope: !4052)
!4065 = !DILocation(line: 913, column: 11, scope: !3996)
!4066 = !DILocation(line: 914, column: 5, scope: !3996)
!4067 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !713, file: !713, line: 925, type: !4068, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !4070)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!167, !118, !173, !170}
!4070 = !{!4071, !4072, !4073}
!4071 = !DILocalVariable(name: "n", arg: 1, scope: !4067, file: !713, line: 925, type: !118)
!4072 = !DILocalVariable(name: "arg", arg: 2, scope: !4067, file: !713, line: 925, type: !173)
!4073 = !DILocalVariable(name: "argsize", arg: 3, scope: !4067, file: !713, line: 925, type: !170)
!4074 = !DILocation(line: 0, scope: !4067)
!4075 = !DILocation(line: 927, column: 10, scope: !4067)
!4076 = !DILocation(line: 927, column: 3, scope: !4067)
!4077 = distinct !DISubprogram(name: "quotearg", scope: !713, file: !713, line: 931, type: !1224, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !4078)
!4078 = !{!4079}
!4079 = !DILocalVariable(name: "arg", arg: 1, scope: !4077, file: !713, line: 931, type: !173)
!4080 = !DILocation(line: 0, scope: !4077)
!4081 = !DILocation(line: 0, scope: !3973, inlinedAt: !4082)
!4082 = distinct !DILocation(line: 933, column: 10, scope: !4077)
!4083 = !DILocation(line: 921, column: 10, scope: !3973, inlinedAt: !4082)
!4084 = !DILocation(line: 933, column: 3, scope: !4077)
!4085 = distinct !DISubprogram(name: "quotearg_mem", scope: !713, file: !713, line: 937, type: !4086, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !4088)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!167, !173, !170}
!4088 = !{!4089, !4090}
!4089 = !DILocalVariable(name: "arg", arg: 1, scope: !4085, file: !713, line: 937, type: !173)
!4090 = !DILocalVariable(name: "argsize", arg: 2, scope: !4085, file: !713, line: 937, type: !170)
!4091 = !DILocation(line: 0, scope: !4085)
!4092 = !DILocation(line: 0, scope: !4067, inlinedAt: !4093)
!4093 = distinct !DILocation(line: 939, column: 10, scope: !4085)
!4094 = !DILocation(line: 927, column: 10, scope: !4067, inlinedAt: !4093)
!4095 = !DILocation(line: 939, column: 3, scope: !4085)
!4096 = distinct !DISubprogram(name: "quotearg_n_style", scope: !713, file: !713, line: 943, type: !4097, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !4099)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!167, !118, !143, !173}
!4099 = !{!4100, !4101, !4102, !4103}
!4100 = !DILocalVariable(name: "n", arg: 1, scope: !4096, file: !713, line: 943, type: !118)
!4101 = !DILocalVariable(name: "s", arg: 2, scope: !4096, file: !713, line: 943, type: !143)
!4102 = !DILocalVariable(name: "arg", arg: 3, scope: !4096, file: !713, line: 943, type: !173)
!4103 = !DILocalVariable(name: "o", scope: !4096, file: !713, line: 945, type: !3207)
!4104 = !DILocation(line: 0, scope: !4096)
!4105 = !DILocation(line: 945, column: 3, scope: !4096)
!4106 = !DILocation(line: 945, column: 32, scope: !4096)
!4107 = !{!4108}
!4108 = distinct !{!4108, !4109, !"quoting_options_from_style: argument 0"}
!4109 = distinct !{!4109, !"quoting_options_from_style"}
!4110 = !DILocation(line: 945, column: 36, scope: !4096)
!4111 = !DILocalVariable(name: "style", arg: 1, scope: !4112, file: !713, line: 183, type: !143)
!4112 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !713, file: !713, line: 183, type: !4113, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !4115)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!749, !143}
!4115 = !{!4111, !4116}
!4116 = !DILocalVariable(name: "o", scope: !4112, file: !713, line: 185, type: !749)
!4117 = !DILocation(line: 0, scope: !4112, inlinedAt: !4118)
!4118 = distinct !DILocation(line: 945, column: 36, scope: !4096)
!4119 = !DILocation(line: 185, column: 26, scope: !4112, inlinedAt: !4118)
!4120 = !DILocation(line: 186, column: 13, scope: !4121, inlinedAt: !4118)
!4121 = distinct !DILexicalBlock(scope: !4112, file: !713, line: 186, column: 7)
!4122 = !DILocation(line: 186, column: 7, scope: !4112, inlinedAt: !4118)
!4123 = !DILocation(line: 187, column: 5, scope: !4121, inlinedAt: !4118)
!4124 = !DILocation(line: 188, column: 11, scope: !4112, inlinedAt: !4118)
!4125 = !DILocation(line: 946, column: 10, scope: !4096)
!4126 = !DILocation(line: 947, column: 1, scope: !4096)
!4127 = !DILocation(line: 946, column: 3, scope: !4096)
!4128 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !713, file: !713, line: 950, type: !4129, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !4131)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{!167, !118, !143, !173, !170}
!4131 = !{!4132, !4133, !4134, !4135, !4136}
!4132 = !DILocalVariable(name: "n", arg: 1, scope: !4128, file: !713, line: 950, type: !118)
!4133 = !DILocalVariable(name: "s", arg: 2, scope: !4128, file: !713, line: 950, type: !143)
!4134 = !DILocalVariable(name: "arg", arg: 3, scope: !4128, file: !713, line: 951, type: !173)
!4135 = !DILocalVariable(name: "argsize", arg: 4, scope: !4128, file: !713, line: 951, type: !170)
!4136 = !DILocalVariable(name: "o", scope: !4128, file: !713, line: 953, type: !3207)
!4137 = !DILocation(line: 0, scope: !4128)
!4138 = !DILocation(line: 953, column: 3, scope: !4128)
!4139 = !DILocation(line: 953, column: 32, scope: !4128)
!4140 = !{!4141}
!4141 = distinct !{!4141, !4142, !"quoting_options_from_style: argument 0"}
!4142 = distinct !{!4142, !"quoting_options_from_style"}
!4143 = !DILocation(line: 953, column: 36, scope: !4128)
!4144 = !DILocation(line: 0, scope: !4112, inlinedAt: !4145)
!4145 = distinct !DILocation(line: 953, column: 36, scope: !4128)
!4146 = !DILocation(line: 185, column: 26, scope: !4112, inlinedAt: !4145)
!4147 = !DILocation(line: 186, column: 13, scope: !4121, inlinedAt: !4145)
!4148 = !DILocation(line: 186, column: 7, scope: !4112, inlinedAt: !4145)
!4149 = !DILocation(line: 187, column: 5, scope: !4121, inlinedAt: !4145)
!4150 = !DILocation(line: 188, column: 11, scope: !4112, inlinedAt: !4145)
!4151 = !DILocation(line: 954, column: 10, scope: !4128)
!4152 = !DILocation(line: 955, column: 1, scope: !4128)
!4153 = !DILocation(line: 954, column: 3, scope: !4128)
!4154 = distinct !DISubprogram(name: "quotearg_style", scope: !713, file: !713, line: 958, type: !4155, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !4157)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!167, !143, !173}
!4157 = !{!4158, !4159}
!4158 = !DILocalVariable(name: "s", arg: 1, scope: !4154, file: !713, line: 958, type: !143)
!4159 = !DILocalVariable(name: "arg", arg: 2, scope: !4154, file: !713, line: 958, type: !173)
!4160 = !DILocation(line: 0, scope: !4154)
!4161 = !DILocation(line: 0, scope: !4096, inlinedAt: !4162)
!4162 = distinct !DILocation(line: 960, column: 10, scope: !4154)
!4163 = !DILocation(line: 945, column: 3, scope: !4096, inlinedAt: !4162)
!4164 = !DILocation(line: 945, column: 32, scope: !4096, inlinedAt: !4162)
!4165 = !{!4166}
!4166 = distinct !{!4166, !4167, !"quoting_options_from_style: argument 0"}
!4167 = distinct !{!4167, !"quoting_options_from_style"}
!4168 = !DILocation(line: 945, column: 36, scope: !4096, inlinedAt: !4162)
!4169 = !DILocation(line: 0, scope: !4112, inlinedAt: !4170)
!4170 = distinct !DILocation(line: 945, column: 36, scope: !4096, inlinedAt: !4162)
!4171 = !DILocation(line: 185, column: 26, scope: !4112, inlinedAt: !4170)
!4172 = !DILocation(line: 186, column: 13, scope: !4121, inlinedAt: !4170)
!4173 = !DILocation(line: 186, column: 7, scope: !4112, inlinedAt: !4170)
!4174 = !DILocation(line: 187, column: 5, scope: !4121, inlinedAt: !4170)
!4175 = !DILocation(line: 188, column: 11, scope: !4112, inlinedAt: !4170)
!4176 = !DILocation(line: 946, column: 10, scope: !4096, inlinedAt: !4162)
!4177 = !DILocation(line: 947, column: 1, scope: !4096, inlinedAt: !4162)
!4178 = !DILocation(line: 960, column: 3, scope: !4154)
!4179 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !713, file: !713, line: 964, type: !4180, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !4182)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!167, !143, !173, !170}
!4182 = !{!4183, !4184, !4185}
!4183 = !DILocalVariable(name: "s", arg: 1, scope: !4179, file: !713, line: 964, type: !143)
!4184 = !DILocalVariable(name: "arg", arg: 2, scope: !4179, file: !713, line: 964, type: !173)
!4185 = !DILocalVariable(name: "argsize", arg: 3, scope: !4179, file: !713, line: 964, type: !170)
!4186 = !DILocation(line: 0, scope: !4179)
!4187 = !DILocation(line: 0, scope: !4128, inlinedAt: !4188)
!4188 = distinct !DILocation(line: 966, column: 10, scope: !4179)
!4189 = !DILocation(line: 953, column: 3, scope: !4128, inlinedAt: !4188)
!4190 = !DILocation(line: 953, column: 32, scope: !4128, inlinedAt: !4188)
!4191 = !{!4192}
!4192 = distinct !{!4192, !4193, !"quoting_options_from_style: argument 0"}
!4193 = distinct !{!4193, !"quoting_options_from_style"}
!4194 = !DILocation(line: 953, column: 36, scope: !4128, inlinedAt: !4188)
!4195 = !DILocation(line: 0, scope: !4112, inlinedAt: !4196)
!4196 = distinct !DILocation(line: 953, column: 36, scope: !4128, inlinedAt: !4188)
!4197 = !DILocation(line: 185, column: 26, scope: !4112, inlinedAt: !4196)
!4198 = !DILocation(line: 186, column: 13, scope: !4121, inlinedAt: !4196)
!4199 = !DILocation(line: 186, column: 7, scope: !4112, inlinedAt: !4196)
!4200 = !DILocation(line: 187, column: 5, scope: !4121, inlinedAt: !4196)
!4201 = !DILocation(line: 188, column: 11, scope: !4112, inlinedAt: !4196)
!4202 = !DILocation(line: 954, column: 10, scope: !4128, inlinedAt: !4188)
!4203 = !DILocation(line: 955, column: 1, scope: !4128, inlinedAt: !4188)
!4204 = !DILocation(line: 966, column: 3, scope: !4179)
!4205 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !713, file: !713, line: 970, type: !4206, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !4208)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!167, !173, !170, !4}
!4208 = !{!4209, !4210, !4211, !4212}
!4209 = !DILocalVariable(name: "arg", arg: 1, scope: !4205, file: !713, line: 970, type: !173)
!4210 = !DILocalVariable(name: "argsize", arg: 2, scope: !4205, file: !713, line: 970, type: !170)
!4211 = !DILocalVariable(name: "ch", arg: 3, scope: !4205, file: !713, line: 970, type: !4)
!4212 = !DILocalVariable(name: "options", scope: !4205, file: !713, line: 972, type: !749)
!4213 = !DILocation(line: 0, scope: !4205)
!4214 = !DILocation(line: 972, column: 3, scope: !4205)
!4215 = !DILocation(line: 972, column: 26, scope: !4205)
!4216 = !DILocation(line: 973, column: 13, scope: !4205)
!4217 = !{i64 0, i64 4, !1110, i64 4, i64 4, !1101, i64 8, i64 32, !1110, i64 40, i64 8, !1024, i64 48, i64 8, !1024}
!4218 = !DILocation(line: 0, scope: !3226, inlinedAt: !4219)
!4219 = distinct !DILocation(line: 974, column: 3, scope: !4205)
!4220 = !DILocation(line: 147, column: 41, scope: !3226, inlinedAt: !4219)
!4221 = !DILocation(line: 147, column: 62, scope: !3226, inlinedAt: !4219)
!4222 = !DILocation(line: 147, column: 57, scope: !3226, inlinedAt: !4219)
!4223 = !DILocation(line: 148, column: 15, scope: !3226, inlinedAt: !4219)
!4224 = !DILocation(line: 149, column: 21, scope: !3226, inlinedAt: !4219)
!4225 = !DILocation(line: 149, column: 24, scope: !3226, inlinedAt: !4219)
!4226 = !DILocation(line: 150, column: 19, scope: !3226, inlinedAt: !4219)
!4227 = !DILocation(line: 150, column: 24, scope: !3226, inlinedAt: !4219)
!4228 = !DILocation(line: 150, column: 6, scope: !3226, inlinedAt: !4219)
!4229 = !DILocation(line: 975, column: 10, scope: !4205)
!4230 = !DILocation(line: 976, column: 1, scope: !4205)
!4231 = !DILocation(line: 975, column: 3, scope: !4205)
!4232 = distinct !DISubprogram(name: "quotearg_char", scope: !713, file: !713, line: 979, type: !4233, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !4235)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!167, !173, !4}
!4235 = !{!4236, !4237}
!4236 = !DILocalVariable(name: "arg", arg: 1, scope: !4232, file: !713, line: 979, type: !173)
!4237 = !DILocalVariable(name: "ch", arg: 2, scope: !4232, file: !713, line: 979, type: !4)
!4238 = !DILocation(line: 0, scope: !4232)
!4239 = !DILocation(line: 0, scope: !4205, inlinedAt: !4240)
!4240 = distinct !DILocation(line: 981, column: 10, scope: !4232)
!4241 = !DILocation(line: 972, column: 3, scope: !4205, inlinedAt: !4240)
!4242 = !DILocation(line: 972, column: 26, scope: !4205, inlinedAt: !4240)
!4243 = !DILocation(line: 973, column: 13, scope: !4205, inlinedAt: !4240)
!4244 = !DILocation(line: 0, scope: !3226, inlinedAt: !4245)
!4245 = distinct !DILocation(line: 974, column: 3, scope: !4205, inlinedAt: !4240)
!4246 = !DILocation(line: 147, column: 41, scope: !3226, inlinedAt: !4245)
!4247 = !DILocation(line: 147, column: 62, scope: !3226, inlinedAt: !4245)
!4248 = !DILocation(line: 147, column: 57, scope: !3226, inlinedAt: !4245)
!4249 = !DILocation(line: 148, column: 15, scope: !3226, inlinedAt: !4245)
!4250 = !DILocation(line: 149, column: 21, scope: !3226, inlinedAt: !4245)
!4251 = !DILocation(line: 149, column: 24, scope: !3226, inlinedAt: !4245)
!4252 = !DILocation(line: 150, column: 19, scope: !3226, inlinedAt: !4245)
!4253 = !DILocation(line: 150, column: 24, scope: !3226, inlinedAt: !4245)
!4254 = !DILocation(line: 150, column: 6, scope: !3226, inlinedAt: !4245)
!4255 = !DILocation(line: 975, column: 10, scope: !4205, inlinedAt: !4240)
!4256 = !DILocation(line: 976, column: 1, scope: !4205, inlinedAt: !4240)
!4257 = !DILocation(line: 981, column: 3, scope: !4232)
!4258 = distinct !DISubprogram(name: "quotearg_colon", scope: !713, file: !713, line: 985, type: !1224, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !4259)
!4259 = !{!4260}
!4260 = !DILocalVariable(name: "arg", arg: 1, scope: !4258, file: !713, line: 985, type: !173)
!4261 = !DILocation(line: 0, scope: !4258)
!4262 = !DILocation(line: 0, scope: !4232, inlinedAt: !4263)
!4263 = distinct !DILocation(line: 987, column: 10, scope: !4258)
!4264 = !DILocation(line: 0, scope: !4205, inlinedAt: !4265)
!4265 = distinct !DILocation(line: 981, column: 10, scope: !4232, inlinedAt: !4263)
!4266 = !DILocation(line: 972, column: 3, scope: !4205, inlinedAt: !4265)
!4267 = !DILocation(line: 972, column: 26, scope: !4205, inlinedAt: !4265)
!4268 = !DILocation(line: 973, column: 13, scope: !4205, inlinedAt: !4265)
!4269 = !DILocation(line: 0, scope: !3226, inlinedAt: !4270)
!4270 = distinct !DILocation(line: 974, column: 3, scope: !4205, inlinedAt: !4265)
!4271 = !DILocation(line: 147, column: 57, scope: !3226, inlinedAt: !4270)
!4272 = !DILocation(line: 149, column: 21, scope: !3226, inlinedAt: !4270)
!4273 = !DILocation(line: 150, column: 6, scope: !3226, inlinedAt: !4270)
!4274 = !DILocation(line: 975, column: 10, scope: !4205, inlinedAt: !4265)
!4275 = !DILocation(line: 976, column: 1, scope: !4205, inlinedAt: !4265)
!4276 = !DILocation(line: 987, column: 3, scope: !4258)
!4277 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !713, file: !713, line: 991, type: !4086, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !4278)
!4278 = !{!4279, !4280}
!4279 = !DILocalVariable(name: "arg", arg: 1, scope: !4277, file: !713, line: 991, type: !173)
!4280 = !DILocalVariable(name: "argsize", arg: 2, scope: !4277, file: !713, line: 991, type: !170)
!4281 = !DILocation(line: 0, scope: !4277)
!4282 = !DILocation(line: 0, scope: !4205, inlinedAt: !4283)
!4283 = distinct !DILocation(line: 993, column: 10, scope: !4277)
!4284 = !DILocation(line: 972, column: 3, scope: !4205, inlinedAt: !4283)
!4285 = !DILocation(line: 972, column: 26, scope: !4205, inlinedAt: !4283)
!4286 = !DILocation(line: 973, column: 13, scope: !4205, inlinedAt: !4283)
!4287 = !DILocation(line: 0, scope: !3226, inlinedAt: !4288)
!4288 = distinct !DILocation(line: 974, column: 3, scope: !4205, inlinedAt: !4283)
!4289 = !DILocation(line: 147, column: 57, scope: !3226, inlinedAt: !4288)
!4290 = !DILocation(line: 149, column: 21, scope: !3226, inlinedAt: !4288)
!4291 = !DILocation(line: 150, column: 6, scope: !3226, inlinedAt: !4288)
!4292 = !DILocation(line: 975, column: 10, scope: !4205, inlinedAt: !4283)
!4293 = !DILocation(line: 976, column: 1, scope: !4205, inlinedAt: !4283)
!4294 = !DILocation(line: 993, column: 3, scope: !4277)
!4295 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !713, file: !713, line: 997, type: !4097, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !4296)
!4296 = !{!4297, !4298, !4299, !4300}
!4297 = !DILocalVariable(name: "n", arg: 1, scope: !4295, file: !713, line: 997, type: !118)
!4298 = !DILocalVariable(name: "s", arg: 2, scope: !4295, file: !713, line: 997, type: !143)
!4299 = !DILocalVariable(name: "arg", arg: 3, scope: !4295, file: !713, line: 997, type: !173)
!4300 = !DILocalVariable(name: "options", scope: !4295, file: !713, line: 999, type: !749)
!4301 = !DILocation(line: 185, column: 26, scope: !4112, inlinedAt: !4302)
!4302 = distinct !DILocation(line: 1000, column: 13, scope: !4295)
!4303 = !DILocation(line: 0, scope: !4295)
!4304 = !DILocation(line: 999, column: 3, scope: !4295)
!4305 = !DILocation(line: 999, column: 26, scope: !4295)
!4306 = !DILocation(line: 0, scope: !4112, inlinedAt: !4302)
!4307 = !DILocation(line: 186, column: 13, scope: !4121, inlinedAt: !4302)
!4308 = !DILocation(line: 186, column: 7, scope: !4112, inlinedAt: !4302)
!4309 = !DILocation(line: 187, column: 5, scope: !4121, inlinedAt: !4302)
!4310 = !{!4311}
!4311 = distinct !{!4311, !4312, !"quoting_options_from_style: argument 0"}
!4312 = distinct !{!4312, !"quoting_options_from_style"}
!4313 = !DILocation(line: 1000, column: 13, scope: !4295)
!4314 = !DILocation(line: 0, scope: !3226, inlinedAt: !4315)
!4315 = distinct !DILocation(line: 1001, column: 3, scope: !4295)
!4316 = !DILocation(line: 147, column: 57, scope: !3226, inlinedAt: !4315)
!4317 = !DILocation(line: 149, column: 21, scope: !3226, inlinedAt: !4315)
!4318 = !DILocation(line: 150, column: 6, scope: !3226, inlinedAt: !4315)
!4319 = !DILocation(line: 1002, column: 10, scope: !4295)
!4320 = !DILocation(line: 1003, column: 1, scope: !4295)
!4321 = !DILocation(line: 1002, column: 3, scope: !4295)
!4322 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !713, file: !713, line: 1006, type: !4323, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !4325)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!167, !118, !173, !173, !173}
!4325 = !{!4326, !4327, !4328, !4329}
!4326 = !DILocalVariable(name: "n", arg: 1, scope: !4322, file: !713, line: 1006, type: !118)
!4327 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4322, file: !713, line: 1006, type: !173)
!4328 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4322, file: !713, line: 1007, type: !173)
!4329 = !DILocalVariable(name: "arg", arg: 4, scope: !4322, file: !713, line: 1007, type: !173)
!4330 = !DILocation(line: 0, scope: !4322)
!4331 = !DILocalVariable(name: "n", arg: 1, scope: !4332, file: !713, line: 1014, type: !118)
!4332 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !713, file: !713, line: 1014, type: !4333, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !4335)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{!167, !118, !173, !173, !173, !170}
!4335 = !{!4331, !4336, !4337, !4338, !4339, !4340}
!4336 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4332, file: !713, line: 1014, type: !173)
!4337 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4332, file: !713, line: 1015, type: !173)
!4338 = !DILocalVariable(name: "arg", arg: 4, scope: !4332, file: !713, line: 1016, type: !173)
!4339 = !DILocalVariable(name: "argsize", arg: 5, scope: !4332, file: !713, line: 1016, type: !170)
!4340 = !DILocalVariable(name: "o", scope: !4332, file: !713, line: 1018, type: !749)
!4341 = !DILocation(line: 0, scope: !4332, inlinedAt: !4342)
!4342 = distinct !DILocation(line: 1009, column: 10, scope: !4322)
!4343 = !DILocation(line: 1018, column: 3, scope: !4332, inlinedAt: !4342)
!4344 = !DILocation(line: 1018, column: 26, scope: !4332, inlinedAt: !4342)
!4345 = !DILocation(line: 1018, column: 30, scope: !4332, inlinedAt: !4342)
!4346 = !DILocation(line: 0, scope: !3266, inlinedAt: !4347)
!4347 = distinct !DILocation(line: 1019, column: 3, scope: !4332, inlinedAt: !4342)
!4348 = !DILocation(line: 174, column: 12, scope: !3266, inlinedAt: !4347)
!4349 = !DILocation(line: 175, column: 8, scope: !3279, inlinedAt: !4347)
!4350 = !DILocation(line: 175, column: 19, scope: !3279, inlinedAt: !4347)
!4351 = !DILocation(line: 176, column: 5, scope: !3279, inlinedAt: !4347)
!4352 = !DILocation(line: 177, column: 6, scope: !3266, inlinedAt: !4347)
!4353 = !DILocation(line: 177, column: 17, scope: !3266, inlinedAt: !4347)
!4354 = !DILocation(line: 178, column: 6, scope: !3266, inlinedAt: !4347)
!4355 = !DILocation(line: 178, column: 18, scope: !3266, inlinedAt: !4347)
!4356 = !DILocation(line: 1020, column: 10, scope: !4332, inlinedAt: !4342)
!4357 = !DILocation(line: 1021, column: 1, scope: !4332, inlinedAt: !4342)
!4358 = !DILocation(line: 1009, column: 3, scope: !4322)
!4359 = !DILocation(line: 0, scope: !4332)
!4360 = !DILocation(line: 1018, column: 3, scope: !4332)
!4361 = !DILocation(line: 1018, column: 26, scope: !4332)
!4362 = !DILocation(line: 1018, column: 30, scope: !4332)
!4363 = !DILocation(line: 0, scope: !3266, inlinedAt: !4364)
!4364 = distinct !DILocation(line: 1019, column: 3, scope: !4332)
!4365 = !DILocation(line: 174, column: 12, scope: !3266, inlinedAt: !4364)
!4366 = !DILocation(line: 175, column: 8, scope: !3279, inlinedAt: !4364)
!4367 = !DILocation(line: 175, column: 19, scope: !3279, inlinedAt: !4364)
!4368 = !DILocation(line: 176, column: 5, scope: !3279, inlinedAt: !4364)
!4369 = !DILocation(line: 177, column: 6, scope: !3266, inlinedAt: !4364)
!4370 = !DILocation(line: 177, column: 17, scope: !3266, inlinedAt: !4364)
!4371 = !DILocation(line: 178, column: 6, scope: !3266, inlinedAt: !4364)
!4372 = !DILocation(line: 178, column: 18, scope: !3266, inlinedAt: !4364)
!4373 = !DILocation(line: 1020, column: 10, scope: !4332)
!4374 = !DILocation(line: 1021, column: 1, scope: !4332)
!4375 = !DILocation(line: 1020, column: 3, scope: !4332)
!4376 = distinct !DISubprogram(name: "quotearg_custom", scope: !713, file: !713, line: 1024, type: !4377, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !4379)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!167, !173, !173, !173}
!4379 = !{!4380, !4381, !4382}
!4380 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4376, file: !713, line: 1024, type: !173)
!4381 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4376, file: !713, line: 1024, type: !173)
!4382 = !DILocalVariable(name: "arg", arg: 3, scope: !4376, file: !713, line: 1025, type: !173)
!4383 = !DILocation(line: 0, scope: !4376)
!4384 = !DILocation(line: 0, scope: !4322, inlinedAt: !4385)
!4385 = distinct !DILocation(line: 1027, column: 10, scope: !4376)
!4386 = !DILocation(line: 0, scope: !4332, inlinedAt: !4387)
!4387 = distinct !DILocation(line: 1009, column: 10, scope: !4322, inlinedAt: !4385)
!4388 = !DILocation(line: 1018, column: 3, scope: !4332, inlinedAt: !4387)
!4389 = !DILocation(line: 1018, column: 26, scope: !4332, inlinedAt: !4387)
!4390 = !DILocation(line: 1018, column: 30, scope: !4332, inlinedAt: !4387)
!4391 = !DILocation(line: 0, scope: !3266, inlinedAt: !4392)
!4392 = distinct !DILocation(line: 1019, column: 3, scope: !4332, inlinedAt: !4387)
!4393 = !DILocation(line: 174, column: 12, scope: !3266, inlinedAt: !4392)
!4394 = !DILocation(line: 175, column: 8, scope: !3279, inlinedAt: !4392)
!4395 = !DILocation(line: 175, column: 19, scope: !3279, inlinedAt: !4392)
!4396 = !DILocation(line: 176, column: 5, scope: !3279, inlinedAt: !4392)
!4397 = !DILocation(line: 177, column: 6, scope: !3266, inlinedAt: !4392)
!4398 = !DILocation(line: 177, column: 17, scope: !3266, inlinedAt: !4392)
!4399 = !DILocation(line: 178, column: 6, scope: !3266, inlinedAt: !4392)
!4400 = !DILocation(line: 178, column: 18, scope: !3266, inlinedAt: !4392)
!4401 = !DILocation(line: 1020, column: 10, scope: !4332, inlinedAt: !4387)
!4402 = !DILocation(line: 1021, column: 1, scope: !4332, inlinedAt: !4387)
!4403 = !DILocation(line: 1027, column: 3, scope: !4376)
!4404 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !713, file: !713, line: 1031, type: !4405, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !4407)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!167, !173, !173, !173, !170}
!4407 = !{!4408, !4409, !4410, !4411}
!4408 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4404, file: !713, line: 1031, type: !173)
!4409 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4404, file: !713, line: 1031, type: !173)
!4410 = !DILocalVariable(name: "arg", arg: 3, scope: !4404, file: !713, line: 1032, type: !173)
!4411 = !DILocalVariable(name: "argsize", arg: 4, scope: !4404, file: !713, line: 1032, type: !170)
!4412 = !DILocation(line: 0, scope: !4404)
!4413 = !DILocation(line: 0, scope: !4332, inlinedAt: !4414)
!4414 = distinct !DILocation(line: 1034, column: 10, scope: !4404)
!4415 = !DILocation(line: 1018, column: 3, scope: !4332, inlinedAt: !4414)
!4416 = !DILocation(line: 1018, column: 26, scope: !4332, inlinedAt: !4414)
!4417 = !DILocation(line: 1018, column: 30, scope: !4332, inlinedAt: !4414)
!4418 = !DILocation(line: 0, scope: !3266, inlinedAt: !4419)
!4419 = distinct !DILocation(line: 1019, column: 3, scope: !4332, inlinedAt: !4414)
!4420 = !DILocation(line: 174, column: 12, scope: !3266, inlinedAt: !4419)
!4421 = !DILocation(line: 175, column: 8, scope: !3279, inlinedAt: !4419)
!4422 = !DILocation(line: 175, column: 19, scope: !3279, inlinedAt: !4419)
!4423 = !DILocation(line: 176, column: 5, scope: !3279, inlinedAt: !4419)
!4424 = !DILocation(line: 177, column: 6, scope: !3266, inlinedAt: !4419)
!4425 = !DILocation(line: 177, column: 17, scope: !3266, inlinedAt: !4419)
!4426 = !DILocation(line: 178, column: 6, scope: !3266, inlinedAt: !4419)
!4427 = !DILocation(line: 178, column: 18, scope: !3266, inlinedAt: !4419)
!4428 = !DILocation(line: 1020, column: 10, scope: !4332, inlinedAt: !4414)
!4429 = !DILocation(line: 1021, column: 1, scope: !4332, inlinedAt: !4414)
!4430 = !DILocation(line: 1034, column: 3, scope: !4404)
!4431 = distinct !DISubprogram(name: "quote_n_mem", scope: !713, file: !713, line: 1049, type: !4432, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !4434)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!173, !118, !173, !170}
!4434 = !{!4435, !4436, !4437}
!4435 = !DILocalVariable(name: "n", arg: 1, scope: !4431, file: !713, line: 1049, type: !118)
!4436 = !DILocalVariable(name: "arg", arg: 2, scope: !4431, file: !713, line: 1049, type: !173)
!4437 = !DILocalVariable(name: "argsize", arg: 3, scope: !4431, file: !713, line: 1049, type: !170)
!4438 = !DILocation(line: 0, scope: !4431)
!4439 = !DILocation(line: 1051, column: 10, scope: !4431)
!4440 = !DILocation(line: 1051, column: 3, scope: !4431)
!4441 = distinct !DISubprogram(name: "quote_mem", scope: !713, file: !713, line: 1055, type: !4442, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !4444)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!173, !173, !170}
!4444 = !{!4445, !4446}
!4445 = !DILocalVariable(name: "arg", arg: 1, scope: !4441, file: !713, line: 1055, type: !173)
!4446 = !DILocalVariable(name: "argsize", arg: 2, scope: !4441, file: !713, line: 1055, type: !170)
!4447 = !DILocation(line: 0, scope: !4441)
!4448 = !DILocation(line: 0, scope: !4431, inlinedAt: !4449)
!4449 = distinct !DILocation(line: 1057, column: 10, scope: !4441)
!4450 = !DILocation(line: 1051, column: 10, scope: !4431, inlinedAt: !4449)
!4451 = !DILocation(line: 1057, column: 3, scope: !4441)
!4452 = distinct !DISubprogram(name: "quote_n", scope: !713, file: !713, line: 1061, type: !4453, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !4455)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!173, !118, !173}
!4455 = !{!4456, !4457}
!4456 = !DILocalVariable(name: "n", arg: 1, scope: !4452, file: !713, line: 1061, type: !118)
!4457 = !DILocalVariable(name: "arg", arg: 2, scope: !4452, file: !713, line: 1061, type: !173)
!4458 = !DILocation(line: 0, scope: !4452)
!4459 = !DILocation(line: 0, scope: !4431, inlinedAt: !4460)
!4460 = distinct !DILocation(line: 1063, column: 10, scope: !4452)
!4461 = !DILocation(line: 1051, column: 10, scope: !4431, inlinedAt: !4460)
!4462 = !DILocation(line: 1063, column: 3, scope: !4452)
!4463 = distinct !DISubprogram(name: "quote", scope: !713, file: !713, line: 1067, type: !4464, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !4466)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!173, !173}
!4466 = !{!4467}
!4467 = !DILocalVariable(name: "arg", arg: 1, scope: !4463, file: !713, line: 1067, type: !173)
!4468 = !DILocation(line: 0, scope: !4463)
!4469 = !DILocation(line: 0, scope: !4452, inlinedAt: !4470)
!4470 = distinct !DILocation(line: 1069, column: 10, scope: !4463)
!4471 = !DILocation(line: 0, scope: !4431, inlinedAt: !4472)
!4472 = distinct !DILocation(line: 1063, column: 10, scope: !4452, inlinedAt: !4470)
!4473 = !DILocation(line: 1051, column: 10, scope: !4431, inlinedAt: !4472)
!4474 = !DILocation(line: 1069, column: 3, scope: !4463)
!4475 = distinct !DISubprogram(name: "version_etc_arn", scope: !810, file: !810, line: 61, type: !4476, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !4513)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{null, !4478, !173, !173, !173, !4512, !170}
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !4480)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !4481)
!4481 = !{!4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4480, file: !269, line: 51, baseType: !118, size: 32)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4480, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4480, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4480, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4480, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4480, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4480, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4480, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4480, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4480, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4480, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4480, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4480, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4480, file: !269, line: 70, baseType: !4496, size: 64, offset: 832)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4480, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4480, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4480, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4480, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4480, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4480, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4480, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4480, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4480, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4480, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4480, file: !269, line: 93, baseType: !4496, size: 64, offset: 1344)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4480, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4480, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4480, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4480, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!4513 = !{!4514, !4515, !4516, !4517, !4518, !4519}
!4514 = !DILocalVariable(name: "stream", arg: 1, scope: !4475, file: !810, line: 61, type: !4478)
!4515 = !DILocalVariable(name: "command_name", arg: 2, scope: !4475, file: !810, line: 62, type: !173)
!4516 = !DILocalVariable(name: "package", arg: 3, scope: !4475, file: !810, line: 62, type: !173)
!4517 = !DILocalVariable(name: "version", arg: 4, scope: !4475, file: !810, line: 63, type: !173)
!4518 = !DILocalVariable(name: "authors", arg: 5, scope: !4475, file: !810, line: 64, type: !4512)
!4519 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4475, file: !810, line: 64, type: !170)
!4520 = !DILocation(line: 0, scope: !4475)
!4521 = !DILocation(line: 66, column: 7, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4475, file: !810, line: 66, column: 7)
!4523 = !DILocation(line: 66, column: 7, scope: !4475)
!4524 = !DILocation(line: 67, column: 5, scope: !4522)
!4525 = !DILocation(line: 69, column: 5, scope: !4522)
!4526 = !DILocation(line: 83, column: 3, scope: !4475)
!4527 = !DILocation(line: 85, column: 3, scope: !4475)
!4528 = !DILocation(line: 88, column: 3, scope: !4475)
!4529 = !DILocation(line: 95, column: 3, scope: !4475)
!4530 = !DILocation(line: 97, column: 3, scope: !4475)
!4531 = !DILocation(line: 105, column: 7, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4475, file: !810, line: 98, column: 5)
!4533 = !DILocation(line: 106, column: 7, scope: !4532)
!4534 = !DILocation(line: 109, column: 7, scope: !4532)
!4535 = !DILocation(line: 110, column: 7, scope: !4532)
!4536 = !DILocation(line: 113, column: 7, scope: !4532)
!4537 = !DILocation(line: 115, column: 7, scope: !4532)
!4538 = !DILocation(line: 120, column: 7, scope: !4532)
!4539 = !DILocation(line: 122, column: 7, scope: !4532)
!4540 = !DILocation(line: 127, column: 7, scope: !4532)
!4541 = !DILocation(line: 129, column: 7, scope: !4532)
!4542 = !DILocation(line: 134, column: 7, scope: !4532)
!4543 = !DILocation(line: 137, column: 7, scope: !4532)
!4544 = !DILocation(line: 142, column: 7, scope: !4532)
!4545 = !DILocation(line: 145, column: 7, scope: !4532)
!4546 = !DILocation(line: 150, column: 7, scope: !4532)
!4547 = !DILocation(line: 154, column: 7, scope: !4532)
!4548 = !DILocation(line: 159, column: 7, scope: !4532)
!4549 = !DILocation(line: 163, column: 7, scope: !4532)
!4550 = !DILocation(line: 170, column: 7, scope: !4532)
!4551 = !DILocation(line: 174, column: 7, scope: !4532)
!4552 = !DILocation(line: 176, column: 1, scope: !4475)
!4553 = distinct !DISubprogram(name: "version_etc_ar", scope: !810, file: !810, line: 183, type: !4554, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !4556)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{null, !4478, !173, !173, !173, !4512}
!4556 = !{!4557, !4558, !4559, !4560, !4561, !4562}
!4557 = !DILocalVariable(name: "stream", arg: 1, scope: !4553, file: !810, line: 183, type: !4478)
!4558 = !DILocalVariable(name: "command_name", arg: 2, scope: !4553, file: !810, line: 184, type: !173)
!4559 = !DILocalVariable(name: "package", arg: 3, scope: !4553, file: !810, line: 184, type: !173)
!4560 = !DILocalVariable(name: "version", arg: 4, scope: !4553, file: !810, line: 185, type: !173)
!4561 = !DILocalVariable(name: "authors", arg: 5, scope: !4553, file: !810, line: 185, type: !4512)
!4562 = !DILocalVariable(name: "n_authors", scope: !4553, file: !810, line: 187, type: !170)
!4563 = !DILocation(line: 0, scope: !4553)
!4564 = !DILocation(line: 189, column: 8, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4553, file: !810, line: 189, column: 3)
!4566 = !DILocation(line: 189, scope: !4565)
!4567 = !DILocation(line: 189, column: 23, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4565, file: !810, line: 189, column: 3)
!4569 = !DILocation(line: 189, column: 3, scope: !4565)
!4570 = !DILocation(line: 189, column: 52, scope: !4568)
!4571 = distinct !{!4571, !4569, !4572, !1148}
!4572 = !DILocation(line: 190, column: 5, scope: !4565)
!4573 = !DILocation(line: 191, column: 3, scope: !4553)
!4574 = !DILocation(line: 192, column: 1, scope: !4553)
!4575 = distinct !DISubprogram(name: "version_etc_va", scope: !810, file: !810, line: 199, type: !4576, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !4589)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{null, !4478, !173, !173, !173, !4578}
!4578 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !627, line: 52, baseType: !4579)
!4579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !629, line: 14, baseType: !4580)
!4580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4581, baseType: !4582)
!4581 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4583)
!4583 = !{!4584, !4585, !4586, !4587, !4588}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4582, file: !4581, line: 192, baseType: !168, size: 64)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4582, file: !4581, line: 192, baseType: !168, size: 64, offset: 64)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4582, file: !4581, line: 192, baseType: !168, size: 64, offset: 128)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4582, file: !4581, line: 192, baseType: !118, size: 32, offset: 192)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4582, file: !4581, line: 192, baseType: !118, size: 32, offset: 224)
!4589 = !{!4590, !4591, !4592, !4593, !4594, !4595, !4596}
!4590 = !DILocalVariable(name: "stream", arg: 1, scope: !4575, file: !810, line: 199, type: !4478)
!4591 = !DILocalVariable(name: "command_name", arg: 2, scope: !4575, file: !810, line: 200, type: !173)
!4592 = !DILocalVariable(name: "package", arg: 3, scope: !4575, file: !810, line: 200, type: !173)
!4593 = !DILocalVariable(name: "version", arg: 4, scope: !4575, file: !810, line: 201, type: !173)
!4594 = !DILocalVariable(name: "authors", arg: 5, scope: !4575, file: !810, line: 201, type: !4578)
!4595 = !DILocalVariable(name: "n_authors", scope: !4575, file: !810, line: 203, type: !170)
!4596 = !DILocalVariable(name: "authtab", scope: !4575, file: !810, line: 204, type: !4597)
!4597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 640, elements: !95)
!4598 = !DILocation(line: 0, scope: !4575)
!4599 = !DILocation(line: 201, column: 46, scope: !4575)
!4600 = !DILocation(line: 204, column: 3, scope: !4575)
!4601 = !DILocation(line: 204, column: 15, scope: !4575)
!4602 = !DILocation(line: 208, column: 35, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4604, file: !810, line: 206, column: 3)
!4604 = distinct !DILexicalBlock(scope: !4575, file: !810, line: 206, column: 3)
!4605 = !DILocation(line: 208, column: 33, scope: !4603)
!4606 = !DILocation(line: 208, column: 67, scope: !4603)
!4607 = !DILocation(line: 206, column: 3, scope: !4604)
!4608 = !DILocation(line: 208, column: 14, scope: !4603)
!4609 = !DILocation(line: 0, scope: !4604)
!4610 = !DILocation(line: 211, column: 3, scope: !4575)
!4611 = !DILocation(line: 213, column: 1, scope: !4575)
!4612 = distinct !DISubprogram(name: "version_etc", scope: !810, file: !810, line: 230, type: !4613, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !4615)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{null, !4478, !173, !173, !173, null}
!4615 = !{!4616, !4617, !4618, !4619, !4620}
!4616 = !DILocalVariable(name: "stream", arg: 1, scope: !4612, file: !810, line: 230, type: !4478)
!4617 = !DILocalVariable(name: "command_name", arg: 2, scope: !4612, file: !810, line: 231, type: !173)
!4618 = !DILocalVariable(name: "package", arg: 3, scope: !4612, file: !810, line: 231, type: !173)
!4619 = !DILocalVariable(name: "version", arg: 4, scope: !4612, file: !810, line: 232, type: !173)
!4620 = !DILocalVariable(name: "authors", scope: !4612, file: !810, line: 234, type: !4578)
!4621 = !DILocation(line: 0, scope: !4612)
!4622 = !DILocation(line: 234, column: 3, scope: !4612)
!4623 = !DILocation(line: 234, column: 11, scope: !4612)
!4624 = !DILocation(line: 235, column: 3, scope: !4612)
!4625 = !DILocation(line: 236, column: 3, scope: !4612)
!4626 = !DILocation(line: 237, column: 3, scope: !4612)
!4627 = !DILocation(line: 238, column: 1, scope: !4612)
!4628 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !810, file: !810, line: 241, type: !668, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !1033)
!4629 = !DILocation(line: 243, column: 3, scope: !4628)
!4630 = !DILocation(line: 248, column: 3, scope: !4628)
!4631 = !DILocation(line: 254, column: 3, scope: !4628)
!4632 = !DILocation(line: 259, column: 3, scope: !4628)
!4633 = !DILocation(line: 261, column: 1, scope: !4628)
!4634 = distinct !DISubprogram(name: "xnrealloc", scope: !4635, file: !4635, line: 147, type: !4636, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !4638)
!4635 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!168, !168, !170, !170}
!4638 = !{!4639, !4640, !4641}
!4639 = !DILocalVariable(name: "p", arg: 1, scope: !4634, file: !4635, line: 147, type: !168)
!4640 = !DILocalVariable(name: "n", arg: 2, scope: !4634, file: !4635, line: 147, type: !170)
!4641 = !DILocalVariable(name: "s", arg: 3, scope: !4634, file: !4635, line: 147, type: !170)
!4642 = !DILocation(line: 0, scope: !4634)
!4643 = !DILocalVariable(name: "p", arg: 1, scope: !4644, file: !952, line: 83, type: !168)
!4644 = distinct !DISubprogram(name: "xreallocarray", scope: !952, file: !952, line: 83, type: !4636, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !4645)
!4645 = !{!4643, !4646, !4647}
!4646 = !DILocalVariable(name: "n", arg: 2, scope: !4644, file: !952, line: 83, type: !170)
!4647 = !DILocalVariable(name: "s", arg: 3, scope: !4644, file: !952, line: 83, type: !170)
!4648 = !DILocation(line: 0, scope: !4644, inlinedAt: !4649)
!4649 = distinct !DILocation(line: 149, column: 10, scope: !4634)
!4650 = !DILocation(line: 85, column: 25, scope: !4644, inlinedAt: !4649)
!4651 = !DILocalVariable(name: "p", arg: 1, scope: !4652, file: !952, line: 37, type: !168)
!4652 = distinct !DISubprogram(name: "check_nonnull", scope: !952, file: !952, line: 37, type: !4653, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !4655)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!168, !168}
!4655 = !{!4651}
!4656 = !DILocation(line: 0, scope: !4652, inlinedAt: !4657)
!4657 = distinct !DILocation(line: 85, column: 10, scope: !4644, inlinedAt: !4649)
!4658 = !DILocation(line: 39, column: 8, scope: !4659, inlinedAt: !4657)
!4659 = distinct !DILexicalBlock(scope: !4652, file: !952, line: 39, column: 7)
!4660 = !DILocation(line: 39, column: 7, scope: !4652, inlinedAt: !4657)
!4661 = !DILocation(line: 40, column: 5, scope: !4659, inlinedAt: !4657)
!4662 = !DILocation(line: 149, column: 3, scope: !4634)
!4663 = !DILocation(line: 0, scope: !4644)
!4664 = !DILocation(line: 85, column: 25, scope: !4644)
!4665 = !DILocation(line: 0, scope: !4652, inlinedAt: !4666)
!4666 = distinct !DILocation(line: 85, column: 10, scope: !4644)
!4667 = !DILocation(line: 39, column: 8, scope: !4659, inlinedAt: !4666)
!4668 = !DILocation(line: 39, column: 7, scope: !4652, inlinedAt: !4666)
!4669 = !DILocation(line: 40, column: 5, scope: !4659, inlinedAt: !4666)
!4670 = !DILocation(line: 85, column: 3, scope: !4644)
!4671 = distinct !DISubprogram(name: "xmalloc", scope: !952, file: !952, line: 47, type: !3018, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !4672)
!4672 = !{!4673}
!4673 = !DILocalVariable(name: "s", arg: 1, scope: !4671, file: !952, line: 47, type: !170)
!4674 = !DILocation(line: 0, scope: !4671)
!4675 = !DILocation(line: 49, column: 25, scope: !4671)
!4676 = !DILocation(line: 0, scope: !4652, inlinedAt: !4677)
!4677 = distinct !DILocation(line: 49, column: 10, scope: !4671)
!4678 = !DILocation(line: 39, column: 8, scope: !4659, inlinedAt: !4677)
!4679 = !DILocation(line: 39, column: 7, scope: !4652, inlinedAt: !4677)
!4680 = !DILocation(line: 40, column: 5, scope: !4659, inlinedAt: !4677)
!4681 = !DILocation(line: 49, column: 3, scope: !4671)
!4682 = distinct !DISubprogram(name: "ximalloc", scope: !952, file: !952, line: 53, type: !4683, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !4685)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!168, !563}
!4685 = !{!4686}
!4686 = !DILocalVariable(name: "s", arg: 1, scope: !4682, file: !952, line: 53, type: !563)
!4687 = !DILocation(line: 0, scope: !4682)
!4688 = !DILocalVariable(name: "s", arg: 1, scope: !4689, file: !4690, line: 55, type: !563)
!4689 = distinct !DISubprogram(name: "imalloc", scope: !4690, file: !4690, line: 55, type: !4683, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !4691)
!4690 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4691 = !{!4688}
!4692 = !DILocation(line: 0, scope: !4689, inlinedAt: !4693)
!4693 = distinct !DILocation(line: 55, column: 25, scope: !4682)
!4694 = !DILocation(line: 57, column: 26, scope: !4689, inlinedAt: !4693)
!4695 = !DILocation(line: 0, scope: !4652, inlinedAt: !4696)
!4696 = distinct !DILocation(line: 55, column: 10, scope: !4682)
!4697 = !DILocation(line: 39, column: 8, scope: !4659, inlinedAt: !4696)
!4698 = !DILocation(line: 39, column: 7, scope: !4652, inlinedAt: !4696)
!4699 = !DILocation(line: 40, column: 5, scope: !4659, inlinedAt: !4696)
!4700 = !DILocation(line: 55, column: 3, scope: !4682)
!4701 = distinct !DISubprogram(name: "xcharalloc", scope: !952, file: !952, line: 59, type: !4702, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !4704)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!167, !170}
!4704 = !{!4705}
!4705 = !DILocalVariable(name: "n", arg: 1, scope: !4701, file: !952, line: 59, type: !170)
!4706 = !DILocation(line: 0, scope: !4701)
!4707 = !DILocation(line: 0, scope: !4671, inlinedAt: !4708)
!4708 = distinct !DILocation(line: 61, column: 10, scope: !4701)
!4709 = !DILocation(line: 49, column: 25, scope: !4671, inlinedAt: !4708)
!4710 = !DILocation(line: 0, scope: !4652, inlinedAt: !4711)
!4711 = distinct !DILocation(line: 49, column: 10, scope: !4671, inlinedAt: !4708)
!4712 = !DILocation(line: 39, column: 8, scope: !4659, inlinedAt: !4711)
!4713 = !DILocation(line: 39, column: 7, scope: !4652, inlinedAt: !4711)
!4714 = !DILocation(line: 40, column: 5, scope: !4659, inlinedAt: !4711)
!4715 = !DILocation(line: 61, column: 3, scope: !4701)
!4716 = distinct !DISubprogram(name: "xrealloc", scope: !952, file: !952, line: 68, type: !2962, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !4717)
!4717 = !{!4718, !4719}
!4718 = !DILocalVariable(name: "p", arg: 1, scope: !4716, file: !952, line: 68, type: !168)
!4719 = !DILocalVariable(name: "s", arg: 2, scope: !4716, file: !952, line: 68, type: !170)
!4720 = !DILocation(line: 0, scope: !4716)
!4721 = !DILocalVariable(name: "ptr", arg: 1, scope: !4722, file: !2961, line: 2057, type: !168)
!4722 = distinct !DISubprogram(name: "rpl_realloc", scope: !2961, file: !2961, line: 2057, type: !2962, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !4723)
!4723 = !{!4721, !4724}
!4724 = !DILocalVariable(name: "size", arg: 2, scope: !4722, file: !2961, line: 2057, type: !170)
!4725 = !DILocation(line: 0, scope: !4722, inlinedAt: !4726)
!4726 = distinct !DILocation(line: 70, column: 25, scope: !4716)
!4727 = !DILocation(line: 2059, column: 24, scope: !4722, inlinedAt: !4726)
!4728 = !DILocation(line: 2059, column: 10, scope: !4722, inlinedAt: !4726)
!4729 = !DILocation(line: 0, scope: !4652, inlinedAt: !4730)
!4730 = distinct !DILocation(line: 70, column: 10, scope: !4716)
!4731 = !DILocation(line: 39, column: 8, scope: !4659, inlinedAt: !4730)
!4732 = !DILocation(line: 39, column: 7, scope: !4652, inlinedAt: !4730)
!4733 = !DILocation(line: 40, column: 5, scope: !4659, inlinedAt: !4730)
!4734 = !DILocation(line: 70, column: 3, scope: !4716)
!4735 = distinct !DISubprogram(name: "xirealloc", scope: !952, file: !952, line: 74, type: !4736, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !4738)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!168, !168, !563}
!4738 = !{!4739, !4740}
!4739 = !DILocalVariable(name: "p", arg: 1, scope: !4735, file: !952, line: 74, type: !168)
!4740 = !DILocalVariable(name: "s", arg: 2, scope: !4735, file: !952, line: 74, type: !563)
!4741 = !DILocation(line: 0, scope: !4735)
!4742 = !DILocalVariable(name: "p", arg: 1, scope: !4743, file: !4690, line: 66, type: !168)
!4743 = distinct !DISubprogram(name: "irealloc", scope: !4690, file: !4690, line: 66, type: !4736, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !4744)
!4744 = !{!4742, !4745}
!4745 = !DILocalVariable(name: "s", arg: 2, scope: !4743, file: !4690, line: 66, type: !563)
!4746 = !DILocation(line: 0, scope: !4743, inlinedAt: !4747)
!4747 = distinct !DILocation(line: 76, column: 25, scope: !4735)
!4748 = !DILocation(line: 0, scope: !4722, inlinedAt: !4749)
!4749 = distinct !DILocation(line: 68, column: 26, scope: !4743, inlinedAt: !4747)
!4750 = !DILocation(line: 2059, column: 24, scope: !4722, inlinedAt: !4749)
!4751 = !DILocation(line: 2059, column: 10, scope: !4722, inlinedAt: !4749)
!4752 = !DILocation(line: 0, scope: !4652, inlinedAt: !4753)
!4753 = distinct !DILocation(line: 76, column: 10, scope: !4735)
!4754 = !DILocation(line: 39, column: 8, scope: !4659, inlinedAt: !4753)
!4755 = !DILocation(line: 39, column: 7, scope: !4652, inlinedAt: !4753)
!4756 = !DILocation(line: 40, column: 5, scope: !4659, inlinedAt: !4753)
!4757 = !DILocation(line: 76, column: 3, scope: !4735)
!4758 = distinct !DISubprogram(name: "xireallocarray", scope: !952, file: !952, line: 89, type: !4759, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !4761)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!168, !168, !563, !563}
!4761 = !{!4762, !4763, !4764}
!4762 = !DILocalVariable(name: "p", arg: 1, scope: !4758, file: !952, line: 89, type: !168)
!4763 = !DILocalVariable(name: "n", arg: 2, scope: !4758, file: !952, line: 89, type: !563)
!4764 = !DILocalVariable(name: "s", arg: 3, scope: !4758, file: !952, line: 89, type: !563)
!4765 = !DILocation(line: 0, scope: !4758)
!4766 = !DILocalVariable(name: "p", arg: 1, scope: !4767, file: !4690, line: 98, type: !168)
!4767 = distinct !DISubprogram(name: "ireallocarray", scope: !4690, file: !4690, line: 98, type: !4759, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !4768)
!4768 = !{!4766, !4769, !4770}
!4769 = !DILocalVariable(name: "n", arg: 2, scope: !4767, file: !4690, line: 98, type: !563)
!4770 = !DILocalVariable(name: "s", arg: 3, scope: !4767, file: !4690, line: 98, type: !563)
!4771 = !DILocation(line: 0, scope: !4767, inlinedAt: !4772)
!4772 = distinct !DILocation(line: 91, column: 25, scope: !4758)
!4773 = !DILocation(line: 101, column: 13, scope: !4767, inlinedAt: !4772)
!4774 = !DILocation(line: 0, scope: !4652, inlinedAt: !4775)
!4775 = distinct !DILocation(line: 91, column: 10, scope: !4758)
!4776 = !DILocation(line: 39, column: 8, scope: !4659, inlinedAt: !4775)
!4777 = !DILocation(line: 39, column: 7, scope: !4652, inlinedAt: !4775)
!4778 = !DILocation(line: 40, column: 5, scope: !4659, inlinedAt: !4775)
!4779 = !DILocation(line: 91, column: 3, scope: !4758)
!4780 = distinct !DISubprogram(name: "xnmalloc", scope: !952, file: !952, line: 98, type: !4781, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !4783)
!4781 = !DISubroutineType(types: !4782)
!4782 = !{!168, !170, !170}
!4783 = !{!4784, !4785}
!4784 = !DILocalVariable(name: "n", arg: 1, scope: !4780, file: !952, line: 98, type: !170)
!4785 = !DILocalVariable(name: "s", arg: 2, scope: !4780, file: !952, line: 98, type: !170)
!4786 = !DILocation(line: 0, scope: !4780)
!4787 = !DILocation(line: 0, scope: !4644, inlinedAt: !4788)
!4788 = distinct !DILocation(line: 100, column: 10, scope: !4780)
!4789 = !DILocation(line: 85, column: 25, scope: !4644, inlinedAt: !4788)
!4790 = !DILocation(line: 0, scope: !4652, inlinedAt: !4791)
!4791 = distinct !DILocation(line: 85, column: 10, scope: !4644, inlinedAt: !4788)
!4792 = !DILocation(line: 39, column: 8, scope: !4659, inlinedAt: !4791)
!4793 = !DILocation(line: 39, column: 7, scope: !4652, inlinedAt: !4791)
!4794 = !DILocation(line: 40, column: 5, scope: !4659, inlinedAt: !4791)
!4795 = !DILocation(line: 100, column: 3, scope: !4780)
!4796 = distinct !DISubprogram(name: "xinmalloc", scope: !952, file: !952, line: 104, type: !4797, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !4799)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!168, !563, !563}
!4799 = !{!4800, !4801}
!4800 = !DILocalVariable(name: "n", arg: 1, scope: !4796, file: !952, line: 104, type: !563)
!4801 = !DILocalVariable(name: "s", arg: 2, scope: !4796, file: !952, line: 104, type: !563)
!4802 = !DILocation(line: 0, scope: !4796)
!4803 = !DILocation(line: 0, scope: !4758, inlinedAt: !4804)
!4804 = distinct !DILocation(line: 106, column: 10, scope: !4796)
!4805 = !DILocation(line: 0, scope: !4767, inlinedAt: !4806)
!4806 = distinct !DILocation(line: 91, column: 25, scope: !4758, inlinedAt: !4804)
!4807 = !DILocation(line: 101, column: 13, scope: !4767, inlinedAt: !4806)
!4808 = !DILocation(line: 0, scope: !4652, inlinedAt: !4809)
!4809 = distinct !DILocation(line: 91, column: 10, scope: !4758, inlinedAt: !4804)
!4810 = !DILocation(line: 39, column: 8, scope: !4659, inlinedAt: !4809)
!4811 = !DILocation(line: 39, column: 7, scope: !4652, inlinedAt: !4809)
!4812 = !DILocation(line: 40, column: 5, scope: !4659, inlinedAt: !4809)
!4813 = !DILocation(line: 106, column: 3, scope: !4796)
!4814 = distinct !DISubprogram(name: "x2realloc", scope: !952, file: !952, line: 116, type: !4815, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !4817)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{!168, !168, !958}
!4817 = !{!4818, !4819}
!4818 = !DILocalVariable(name: "p", arg: 1, scope: !4814, file: !952, line: 116, type: !168)
!4819 = !DILocalVariable(name: "ps", arg: 2, scope: !4814, file: !952, line: 116, type: !958)
!4820 = !DILocation(line: 0, scope: !4814)
!4821 = !DILocation(line: 0, scope: !955, inlinedAt: !4822)
!4822 = distinct !DILocation(line: 118, column: 10, scope: !4814)
!4823 = !DILocation(line: 178, column: 14, scope: !955, inlinedAt: !4822)
!4824 = !DILocation(line: 180, column: 9, scope: !4825, inlinedAt: !4822)
!4825 = distinct !DILexicalBlock(scope: !955, file: !952, line: 180, column: 7)
!4826 = !DILocation(line: 180, column: 7, scope: !955, inlinedAt: !4822)
!4827 = !DILocation(line: 182, column: 13, scope: !4828, inlinedAt: !4822)
!4828 = distinct !DILexicalBlock(scope: !4829, file: !952, line: 182, column: 11)
!4829 = distinct !DILexicalBlock(scope: !4825, file: !952, line: 181, column: 5)
!4830 = !DILocation(line: 182, column: 11, scope: !4829, inlinedAt: !4822)
!4831 = !DILocation(line: 197, column: 11, scope: !4832, inlinedAt: !4822)
!4832 = distinct !DILexicalBlock(scope: !4833, file: !952, line: 197, column: 11)
!4833 = distinct !DILexicalBlock(scope: !4825, file: !952, line: 195, column: 5)
!4834 = !DILocation(line: 197, column: 11, scope: !4833, inlinedAt: !4822)
!4835 = !DILocation(line: 198, column: 9, scope: !4832, inlinedAt: !4822)
!4836 = !DILocation(line: 0, scope: !4644, inlinedAt: !4837)
!4837 = distinct !DILocation(line: 201, column: 7, scope: !955, inlinedAt: !4822)
!4838 = !DILocation(line: 85, column: 25, scope: !4644, inlinedAt: !4837)
!4839 = !DILocation(line: 0, scope: !4652, inlinedAt: !4840)
!4840 = distinct !DILocation(line: 85, column: 10, scope: !4644, inlinedAt: !4837)
!4841 = !DILocation(line: 39, column: 8, scope: !4659, inlinedAt: !4840)
!4842 = !DILocation(line: 39, column: 7, scope: !4652, inlinedAt: !4840)
!4843 = !DILocation(line: 40, column: 5, scope: !4659, inlinedAt: !4840)
!4844 = !DILocation(line: 202, column: 7, scope: !955, inlinedAt: !4822)
!4845 = !DILocation(line: 118, column: 3, scope: !4814)
!4846 = !DILocation(line: 0, scope: !955)
!4847 = !DILocation(line: 178, column: 14, scope: !955)
!4848 = !DILocation(line: 180, column: 9, scope: !4825)
!4849 = !DILocation(line: 180, column: 7, scope: !955)
!4850 = !DILocation(line: 182, column: 13, scope: !4828)
!4851 = !DILocation(line: 182, column: 11, scope: !4829)
!4852 = !DILocation(line: 190, column: 30, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4828, file: !952, line: 183, column: 9)
!4854 = !DILocation(line: 191, column: 16, scope: !4853)
!4855 = !DILocation(line: 191, column: 13, scope: !4853)
!4856 = !DILocation(line: 192, column: 9, scope: !4853)
!4857 = !DILocation(line: 197, column: 11, scope: !4832)
!4858 = !DILocation(line: 197, column: 11, scope: !4833)
!4859 = !DILocation(line: 198, column: 9, scope: !4832)
!4860 = !DILocation(line: 0, scope: !4644, inlinedAt: !4861)
!4861 = distinct !DILocation(line: 201, column: 7, scope: !955)
!4862 = !DILocation(line: 85, column: 25, scope: !4644, inlinedAt: !4861)
!4863 = !DILocation(line: 0, scope: !4652, inlinedAt: !4864)
!4864 = distinct !DILocation(line: 85, column: 10, scope: !4644, inlinedAt: !4861)
!4865 = !DILocation(line: 39, column: 8, scope: !4659, inlinedAt: !4864)
!4866 = !DILocation(line: 39, column: 7, scope: !4652, inlinedAt: !4864)
!4867 = !DILocation(line: 40, column: 5, scope: !4659, inlinedAt: !4864)
!4868 = !DILocation(line: 202, column: 7, scope: !955)
!4869 = !DILocation(line: 203, column: 3, scope: !955)
!4870 = !DILocation(line: 0, scope: !967)
!4871 = !DILocation(line: 230, column: 14, scope: !967)
!4872 = !DILocation(line: 238, column: 7, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !967, file: !952, line: 238, column: 7)
!4874 = !DILocation(line: 238, column: 7, scope: !967)
!4875 = !DILocation(line: 240, column: 9, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !967, file: !952, line: 240, column: 7)
!4877 = !DILocation(line: 240, column: 18, scope: !4876)
!4878 = !DILocation(line: 253, column: 8, scope: !967)
!4879 = !DILocation(line: 258, column: 27, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4881, file: !952, line: 257, column: 5)
!4881 = distinct !DILexicalBlock(scope: !967, file: !952, line: 256, column: 7)
!4882 = !DILocation(line: 259, column: 32, scope: !4880)
!4883 = !DILocation(line: 260, column: 5, scope: !4880)
!4884 = !DILocation(line: 262, column: 9, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !967, file: !952, line: 262, column: 7)
!4886 = !DILocation(line: 262, column: 7, scope: !967)
!4887 = !DILocation(line: 263, column: 9, scope: !4885)
!4888 = !DILocation(line: 263, column: 5, scope: !4885)
!4889 = !DILocation(line: 264, column: 9, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !967, file: !952, line: 264, column: 7)
!4891 = !DILocation(line: 264, column: 14, scope: !4890)
!4892 = !DILocation(line: 265, column: 7, scope: !4890)
!4893 = !DILocation(line: 265, column: 11, scope: !4890)
!4894 = !DILocation(line: 266, column: 11, scope: !4890)
!4895 = !DILocation(line: 267, column: 14, scope: !4890)
!4896 = !DILocation(line: 264, column: 7, scope: !967)
!4897 = !DILocation(line: 268, column: 5, scope: !4890)
!4898 = !DILocation(line: 0, scope: !4716, inlinedAt: !4899)
!4899 = distinct !DILocation(line: 269, column: 8, scope: !967)
!4900 = !DILocation(line: 0, scope: !4722, inlinedAt: !4901)
!4901 = distinct !DILocation(line: 70, column: 25, scope: !4716, inlinedAt: !4899)
!4902 = !DILocation(line: 2059, column: 24, scope: !4722, inlinedAt: !4901)
!4903 = !DILocation(line: 2059, column: 10, scope: !4722, inlinedAt: !4901)
!4904 = !DILocation(line: 0, scope: !4652, inlinedAt: !4905)
!4905 = distinct !DILocation(line: 70, column: 10, scope: !4716, inlinedAt: !4899)
!4906 = !DILocation(line: 39, column: 8, scope: !4659, inlinedAt: !4905)
!4907 = !DILocation(line: 39, column: 7, scope: !4652, inlinedAt: !4905)
!4908 = !DILocation(line: 40, column: 5, scope: !4659, inlinedAt: !4905)
!4909 = !DILocation(line: 270, column: 7, scope: !967)
!4910 = !DILocation(line: 271, column: 3, scope: !967)
!4911 = distinct !DISubprogram(name: "xzalloc", scope: !952, file: !952, line: 279, type: !3018, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !4912)
!4912 = !{!4913}
!4913 = !DILocalVariable(name: "s", arg: 1, scope: !4911, file: !952, line: 279, type: !170)
!4914 = !DILocation(line: 0, scope: !4911)
!4915 = !DILocalVariable(name: "n", arg: 1, scope: !4916, file: !952, line: 294, type: !170)
!4916 = distinct !DISubprogram(name: "xcalloc", scope: !952, file: !952, line: 294, type: !4781, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !4917)
!4917 = !{!4915, !4918}
!4918 = !DILocalVariable(name: "s", arg: 2, scope: !4916, file: !952, line: 294, type: !170)
!4919 = !DILocation(line: 0, scope: !4916, inlinedAt: !4920)
!4920 = distinct !DILocation(line: 281, column: 10, scope: !4911)
!4921 = !DILocation(line: 296, column: 25, scope: !4916, inlinedAt: !4920)
!4922 = !DILocation(line: 0, scope: !4652, inlinedAt: !4923)
!4923 = distinct !DILocation(line: 296, column: 10, scope: !4916, inlinedAt: !4920)
!4924 = !DILocation(line: 39, column: 8, scope: !4659, inlinedAt: !4923)
!4925 = !DILocation(line: 39, column: 7, scope: !4652, inlinedAt: !4923)
!4926 = !DILocation(line: 40, column: 5, scope: !4659, inlinedAt: !4923)
!4927 = !DILocation(line: 281, column: 3, scope: !4911)
!4928 = !DISubprogram(name: "calloc", scope: !1222, file: !1222, line: 543, type: !4781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!4929 = !DILocation(line: 0, scope: !4916)
!4930 = !DILocation(line: 296, column: 25, scope: !4916)
!4931 = !DILocation(line: 0, scope: !4652, inlinedAt: !4932)
!4932 = distinct !DILocation(line: 296, column: 10, scope: !4916)
!4933 = !DILocation(line: 39, column: 8, scope: !4659, inlinedAt: !4932)
!4934 = !DILocation(line: 39, column: 7, scope: !4652, inlinedAt: !4932)
!4935 = !DILocation(line: 40, column: 5, scope: !4659, inlinedAt: !4932)
!4936 = !DILocation(line: 296, column: 3, scope: !4916)
!4937 = distinct !DISubprogram(name: "xizalloc", scope: !952, file: !952, line: 285, type: !4683, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !4938)
!4938 = !{!4939}
!4939 = !DILocalVariable(name: "s", arg: 1, scope: !4937, file: !952, line: 285, type: !563)
!4940 = !DILocation(line: 0, scope: !4937)
!4941 = !DILocalVariable(name: "n", arg: 1, scope: !4942, file: !952, line: 300, type: !563)
!4942 = distinct !DISubprogram(name: "xicalloc", scope: !952, file: !952, line: 300, type: !4797, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !4943)
!4943 = !{!4941, !4944}
!4944 = !DILocalVariable(name: "s", arg: 2, scope: !4942, file: !952, line: 300, type: !563)
!4945 = !DILocation(line: 0, scope: !4942, inlinedAt: !4946)
!4946 = distinct !DILocation(line: 287, column: 10, scope: !4937)
!4947 = !DILocalVariable(name: "n", arg: 1, scope: !4948, file: !4690, line: 77, type: !563)
!4948 = distinct !DISubprogram(name: "icalloc", scope: !4690, file: !4690, line: 77, type: !4797, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !4949)
!4949 = !{!4947, !4950}
!4950 = !DILocalVariable(name: "s", arg: 2, scope: !4948, file: !4690, line: 77, type: !563)
!4951 = !DILocation(line: 0, scope: !4948, inlinedAt: !4952)
!4952 = distinct !DILocation(line: 302, column: 25, scope: !4942, inlinedAt: !4946)
!4953 = !DILocation(line: 91, column: 10, scope: !4948, inlinedAt: !4952)
!4954 = !DILocation(line: 0, scope: !4652, inlinedAt: !4955)
!4955 = distinct !DILocation(line: 302, column: 10, scope: !4942, inlinedAt: !4946)
!4956 = !DILocation(line: 39, column: 8, scope: !4659, inlinedAt: !4955)
!4957 = !DILocation(line: 39, column: 7, scope: !4652, inlinedAt: !4955)
!4958 = !DILocation(line: 40, column: 5, scope: !4659, inlinedAt: !4955)
!4959 = !DILocation(line: 287, column: 3, scope: !4937)
!4960 = !DILocation(line: 0, scope: !4942)
!4961 = !DILocation(line: 0, scope: !4948, inlinedAt: !4962)
!4962 = distinct !DILocation(line: 302, column: 25, scope: !4942)
!4963 = !DILocation(line: 91, column: 10, scope: !4948, inlinedAt: !4962)
!4964 = !DILocation(line: 0, scope: !4652, inlinedAt: !4965)
!4965 = distinct !DILocation(line: 302, column: 10, scope: !4942)
!4966 = !DILocation(line: 39, column: 8, scope: !4659, inlinedAt: !4965)
!4967 = !DILocation(line: 39, column: 7, scope: !4652, inlinedAt: !4965)
!4968 = !DILocation(line: 40, column: 5, scope: !4659, inlinedAt: !4965)
!4969 = !DILocation(line: 302, column: 3, scope: !4942)
!4970 = distinct !DISubprogram(name: "xmemdup", scope: !952, file: !952, line: 310, type: !4971, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !4973)
!4971 = !DISubroutineType(types: !4972)
!4972 = !{!168, !1246, !170}
!4973 = !{!4974, !4975}
!4974 = !DILocalVariable(name: "p", arg: 1, scope: !4970, file: !952, line: 310, type: !1246)
!4975 = !DILocalVariable(name: "s", arg: 2, scope: !4970, file: !952, line: 310, type: !170)
!4976 = !DILocation(line: 0, scope: !4970)
!4977 = !DILocation(line: 0, scope: !4671, inlinedAt: !4978)
!4978 = distinct !DILocation(line: 312, column: 18, scope: !4970)
!4979 = !DILocation(line: 49, column: 25, scope: !4671, inlinedAt: !4978)
!4980 = !DILocation(line: 0, scope: !4652, inlinedAt: !4981)
!4981 = distinct !DILocation(line: 49, column: 10, scope: !4671, inlinedAt: !4978)
!4982 = !DILocation(line: 39, column: 8, scope: !4659, inlinedAt: !4981)
!4983 = !DILocation(line: 39, column: 7, scope: !4652, inlinedAt: !4981)
!4984 = !DILocation(line: 40, column: 5, scope: !4659, inlinedAt: !4981)
!4985 = !DILocalVariable(name: "__dest", arg: 1, scope: !4986, file: !2089, line: 26, type: !2987)
!4986 = distinct !DISubprogram(name: "memcpy", scope: !2089, file: !2089, line: 26, type: !2985, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !4987)
!4987 = !{!4985, !4988, !4989}
!4988 = !DILocalVariable(name: "__src", arg: 2, scope: !4986, file: !2089, line: 26, type: !1245)
!4989 = !DILocalVariable(name: "__len", arg: 3, scope: !4986, file: !2089, line: 26, type: !170)
!4990 = !DILocation(line: 0, scope: !4986, inlinedAt: !4991)
!4991 = distinct !DILocation(line: 312, column: 10, scope: !4970)
!4992 = !DILocation(line: 29, column: 10, scope: !4986, inlinedAt: !4991)
!4993 = !DILocation(line: 312, column: 3, scope: !4970)
!4994 = distinct !DISubprogram(name: "ximemdup", scope: !952, file: !952, line: 316, type: !4995, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !4997)
!4995 = !DISubroutineType(types: !4996)
!4996 = !{!168, !1246, !563}
!4997 = !{!4998, !4999}
!4998 = !DILocalVariable(name: "p", arg: 1, scope: !4994, file: !952, line: 316, type: !1246)
!4999 = !DILocalVariable(name: "s", arg: 2, scope: !4994, file: !952, line: 316, type: !563)
!5000 = !DILocation(line: 0, scope: !4994)
!5001 = !DILocation(line: 0, scope: !4682, inlinedAt: !5002)
!5002 = distinct !DILocation(line: 318, column: 18, scope: !4994)
!5003 = !DILocation(line: 0, scope: !4689, inlinedAt: !5004)
!5004 = distinct !DILocation(line: 55, column: 25, scope: !4682, inlinedAt: !5002)
!5005 = !DILocation(line: 57, column: 26, scope: !4689, inlinedAt: !5004)
!5006 = !DILocation(line: 0, scope: !4652, inlinedAt: !5007)
!5007 = distinct !DILocation(line: 55, column: 10, scope: !4682, inlinedAt: !5002)
!5008 = !DILocation(line: 39, column: 8, scope: !4659, inlinedAt: !5007)
!5009 = !DILocation(line: 39, column: 7, scope: !4652, inlinedAt: !5007)
!5010 = !DILocation(line: 40, column: 5, scope: !4659, inlinedAt: !5007)
!5011 = !DILocation(line: 0, scope: !4986, inlinedAt: !5012)
!5012 = distinct !DILocation(line: 318, column: 10, scope: !4994)
!5013 = !DILocation(line: 29, column: 10, scope: !4986, inlinedAt: !5012)
!5014 = !DILocation(line: 318, column: 3, scope: !4994)
!5015 = distinct !DISubprogram(name: "ximemdup0", scope: !952, file: !952, line: 325, type: !5016, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !5018)
!5016 = !DISubroutineType(types: !5017)
!5017 = !{!167, !1246, !563}
!5018 = !{!5019, !5020, !5021}
!5019 = !DILocalVariable(name: "p", arg: 1, scope: !5015, file: !952, line: 325, type: !1246)
!5020 = !DILocalVariable(name: "s", arg: 2, scope: !5015, file: !952, line: 325, type: !563)
!5021 = !DILocalVariable(name: "result", scope: !5015, file: !952, line: 327, type: !167)
!5022 = !DILocation(line: 0, scope: !5015)
!5023 = !DILocation(line: 327, column: 30, scope: !5015)
!5024 = !DILocation(line: 0, scope: !4682, inlinedAt: !5025)
!5025 = distinct !DILocation(line: 327, column: 18, scope: !5015)
!5026 = !DILocation(line: 0, scope: !4689, inlinedAt: !5027)
!5027 = distinct !DILocation(line: 55, column: 25, scope: !4682, inlinedAt: !5025)
!5028 = !DILocation(line: 57, column: 26, scope: !4689, inlinedAt: !5027)
!5029 = !DILocation(line: 0, scope: !4652, inlinedAt: !5030)
!5030 = distinct !DILocation(line: 55, column: 10, scope: !4682, inlinedAt: !5025)
!5031 = !DILocation(line: 39, column: 8, scope: !4659, inlinedAt: !5030)
!5032 = !DILocation(line: 39, column: 7, scope: !4652, inlinedAt: !5030)
!5033 = !DILocation(line: 40, column: 5, scope: !4659, inlinedAt: !5030)
!5034 = !DILocation(line: 328, column: 3, scope: !5015)
!5035 = !DILocation(line: 328, column: 13, scope: !5015)
!5036 = !DILocation(line: 0, scope: !4986, inlinedAt: !5037)
!5037 = distinct !DILocation(line: 329, column: 10, scope: !5015)
!5038 = !DILocation(line: 29, column: 10, scope: !4986, inlinedAt: !5037)
!5039 = !DILocation(line: 329, column: 3, scope: !5015)
!5040 = distinct !DISubprogram(name: "xstrdup", scope: !952, file: !952, line: 335, type: !1224, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !5041)
!5041 = !{!5042}
!5042 = !DILocalVariable(name: "string", arg: 1, scope: !5040, file: !952, line: 335, type: !173)
!5043 = !DILocation(line: 0, scope: !5040)
!5044 = !DILocation(line: 337, column: 27, scope: !5040)
!5045 = !DILocation(line: 337, column: 43, scope: !5040)
!5046 = !DILocation(line: 0, scope: !4970, inlinedAt: !5047)
!5047 = distinct !DILocation(line: 337, column: 10, scope: !5040)
!5048 = !DILocation(line: 0, scope: !4671, inlinedAt: !5049)
!5049 = distinct !DILocation(line: 312, column: 18, scope: !4970, inlinedAt: !5047)
!5050 = !DILocation(line: 49, column: 25, scope: !4671, inlinedAt: !5049)
!5051 = !DILocation(line: 0, scope: !4652, inlinedAt: !5052)
!5052 = distinct !DILocation(line: 49, column: 10, scope: !4671, inlinedAt: !5049)
!5053 = !DILocation(line: 39, column: 8, scope: !4659, inlinedAt: !5052)
!5054 = !DILocation(line: 39, column: 7, scope: !4652, inlinedAt: !5052)
!5055 = !DILocation(line: 40, column: 5, scope: !4659, inlinedAt: !5052)
!5056 = !DILocation(line: 0, scope: !4986, inlinedAt: !5057)
!5057 = distinct !DILocation(line: 312, column: 10, scope: !4970, inlinedAt: !5047)
!5058 = !DILocation(line: 29, column: 10, scope: !4986, inlinedAt: !5057)
!5059 = !DILocation(line: 337, column: 3, scope: !5040)
!5060 = distinct !DISubprogram(name: "xalloc_die", scope: !894, file: !894, line: 32, type: !668, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !982, retainedNodes: !5061)
!5061 = !{!5062}
!5062 = !DILocalVariable(name: "__errstatus", scope: !5063, file: !894, line: 34, type: !5064)
!5063 = distinct !DILexicalBlock(scope: !5060, file: !894, line: 34, column: 3)
!5064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!5065 = !DILocation(line: 34, column: 3, scope: !5063)
!5066 = !DILocation(line: 0, scope: !5063)
!5067 = !DILocation(line: 40, column: 3, scope: !5060)
!5068 = distinct !DISubprogram(name: "rpl_fopen", scope: !985, file: !985, line: 46, type: !5069, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !984, retainedNodes: !5105)
!5069 = !DISubroutineType(types: !5070)
!5070 = !{!5071, !173, !173}
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !5073)
!5073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !5074)
!5074 = !{!5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104}
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5073, file: !269, line: 51, baseType: !118, size: 32)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5073, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5073, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5073, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5073, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5073, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5073, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5073, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5073, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5073, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5073, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5073, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5073, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5073, file: !269, line: 70, baseType: !5089, size: 64, offset: 832)
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5073, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5073, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5073, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5073, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5073, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5073, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5073, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5073, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5073, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5073, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5073, file: !269, line: 93, baseType: !5089, size: 64, offset: 1344)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5073, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5073, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5073, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5073, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!5105 = !{!5106, !5107, !5108, !5109, !5110, !5111, !5115, !5117, !5118, !5123, !5126, !5127}
!5106 = !DILocalVariable(name: "filename", arg: 1, scope: !5068, file: !985, line: 46, type: !173)
!5107 = !DILocalVariable(name: "mode", arg: 2, scope: !5068, file: !985, line: 46, type: !173)
!5108 = !DILocalVariable(name: "open_direction", scope: !5068, file: !985, line: 54, type: !118)
!5109 = !DILocalVariable(name: "open_flags", scope: !5068, file: !985, line: 55, type: !118)
!5110 = !DILocalVariable(name: "open_flags_gnu", scope: !5068, file: !985, line: 57, type: !224)
!5111 = !DILocalVariable(name: "fdopen_mode_buf", scope: !5068, file: !985, line: 59, type: !5112)
!5112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !5113)
!5113 = !{!5114}
!5114 = !DISubrange(count: 81)
!5115 = !DILocalVariable(name: "p", scope: !5116, file: !985, line: 62, type: !173)
!5116 = distinct !DILexicalBlock(scope: !5068, file: !985, line: 61, column: 3)
!5117 = !DILocalVariable(name: "q", scope: !5116, file: !985, line: 64, type: !167)
!5118 = !DILocalVariable(name: "len", scope: !5119, file: !985, line: 128, type: !170)
!5119 = distinct !DILexicalBlock(scope: !5120, file: !985, line: 127, column: 9)
!5120 = distinct !DILexicalBlock(scope: !5121, file: !985, line: 68, column: 7)
!5121 = distinct !DILexicalBlock(scope: !5122, file: !985, line: 67, column: 5)
!5122 = distinct !DILexicalBlock(scope: !5116, file: !985, line: 67, column: 5)
!5123 = !DILocalVariable(name: "fd", scope: !5124, file: !985, line: 199, type: !118)
!5124 = distinct !DILexicalBlock(scope: !5125, file: !985, line: 198, column: 5)
!5125 = distinct !DILexicalBlock(scope: !5068, file: !985, line: 197, column: 7)
!5126 = !DILocalVariable(name: "fp", scope: !5124, file: !985, line: 204, type: !5071)
!5127 = !DILocalVariable(name: "saved_errno", scope: !5128, file: !985, line: 207, type: !118)
!5128 = distinct !DILexicalBlock(scope: !5129, file: !985, line: 206, column: 9)
!5129 = distinct !DILexicalBlock(scope: !5124, file: !985, line: 205, column: 11)
!5130 = !DILocation(line: 0, scope: !5068)
!5131 = !DILocation(line: 59, column: 3, scope: !5068)
!5132 = !DILocation(line: 59, column: 8, scope: !5068)
!5133 = !DILocation(line: 0, scope: !5116)
!5134 = !DILocation(line: 67, column: 5, scope: !5116)
!5135 = !DILocation(line: 54, column: 7, scope: !5068)
!5136 = !DILocation(line: 67, column: 12, scope: !5121)
!5137 = !DILocation(line: 67, column: 5, scope: !5122)
!5138 = !DILocation(line: 74, column: 19, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5140, file: !985, line: 74, column: 17)
!5140 = distinct !DILexicalBlock(scope: !5120, file: !985, line: 70, column: 11)
!5141 = !DILocation(line: 74, column: 17, scope: !5140)
!5142 = !DILocation(line: 75, column: 17, scope: !5139)
!5143 = !DILocation(line: 75, column: 20, scope: !5139)
!5144 = !DILocation(line: 75, column: 15, scope: !5139)
!5145 = !DILocation(line: 80, column: 24, scope: !5140)
!5146 = !DILocation(line: 82, column: 19, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5140, file: !985, line: 82, column: 17)
!5148 = !DILocation(line: 82, column: 17, scope: !5140)
!5149 = !DILocation(line: 83, column: 17, scope: !5147)
!5150 = !DILocation(line: 83, column: 20, scope: !5147)
!5151 = !DILocation(line: 83, column: 15, scope: !5147)
!5152 = !DILocation(line: 88, column: 24, scope: !5140)
!5153 = !DILocation(line: 90, column: 19, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5140, file: !985, line: 90, column: 17)
!5155 = !DILocation(line: 90, column: 17, scope: !5140)
!5156 = !DILocation(line: 91, column: 17, scope: !5154)
!5157 = !DILocation(line: 91, column: 20, scope: !5154)
!5158 = !DILocation(line: 91, column: 15, scope: !5154)
!5159 = !DILocation(line: 100, column: 19, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5140, file: !985, line: 100, column: 17)
!5161 = !DILocation(line: 100, column: 17, scope: !5140)
!5162 = !DILocation(line: 101, column: 17, scope: !5160)
!5163 = !DILocation(line: 101, column: 20, scope: !5160)
!5164 = !DILocation(line: 101, column: 15, scope: !5160)
!5165 = !DILocation(line: 107, column: 19, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5140, file: !985, line: 107, column: 17)
!5167 = !DILocation(line: 107, column: 17, scope: !5140)
!5168 = !DILocation(line: 108, column: 17, scope: !5166)
!5169 = !DILocation(line: 108, column: 20, scope: !5166)
!5170 = !DILocation(line: 108, column: 15, scope: !5166)
!5171 = !DILocation(line: 113, column: 24, scope: !5140)
!5172 = !DILocation(line: 115, column: 13, scope: !5140)
!5173 = !DILocation(line: 117, column: 24, scope: !5140)
!5174 = !DILocation(line: 119, column: 13, scope: !5140)
!5175 = !DILocation(line: 128, column: 24, scope: !5119)
!5176 = !DILocation(line: 0, scope: !5119)
!5177 = !DILocation(line: 129, column: 48, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5119, file: !985, line: 129, column: 15)
!5179 = !DILocation(line: 129, column: 15, scope: !5119)
!5180 = !DILocalVariable(name: "__dest", arg: 1, scope: !5181, file: !2089, line: 26, type: !2987)
!5181 = distinct !DISubprogram(name: "memcpy", scope: !2089, file: !2089, line: 26, type: !2985, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !984, retainedNodes: !5182)
!5182 = !{!5180, !5183, !5184}
!5183 = !DILocalVariable(name: "__src", arg: 2, scope: !5181, file: !2089, line: 26, type: !1245)
!5184 = !DILocalVariable(name: "__len", arg: 3, scope: !5181, file: !2089, line: 26, type: !170)
!5185 = !DILocation(line: 0, scope: !5181, inlinedAt: !5186)
!5186 = distinct !DILocation(line: 131, column: 11, scope: !5119)
!5187 = !DILocation(line: 29, column: 10, scope: !5181, inlinedAt: !5186)
!5188 = !DILocation(line: 132, column: 13, scope: !5119)
!5189 = !DILocation(line: 135, column: 9, scope: !5120)
!5190 = !DILocation(line: 67, column: 25, scope: !5121)
!5191 = !DILocation(line: 67, column: 5, scope: !5121)
!5192 = distinct !{!5192, !5137, !5193, !1148}
!5193 = !DILocation(line: 136, column: 7, scope: !5122)
!5194 = !DILocation(line: 138, column: 8, scope: !5116)
!5195 = !DILocation(line: 197, column: 7, scope: !5068)
!5196 = !DILocation(line: 199, column: 47, scope: !5124)
!5197 = !DILocation(line: 199, column: 16, scope: !5124)
!5198 = !DILocation(line: 0, scope: !5124)
!5199 = !DILocation(line: 201, column: 14, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5124, file: !985, line: 201, column: 11)
!5201 = !DILocation(line: 201, column: 11, scope: !5124)
!5202 = !DILocation(line: 204, column: 18, scope: !5124)
!5203 = !DILocation(line: 205, column: 14, scope: !5129)
!5204 = !DILocation(line: 205, column: 11, scope: !5124)
!5205 = !DILocation(line: 207, column: 29, scope: !5128)
!5206 = !DILocation(line: 0, scope: !5128)
!5207 = !DILocation(line: 208, column: 11, scope: !5128)
!5208 = !DILocation(line: 209, column: 17, scope: !5128)
!5209 = !DILocation(line: 210, column: 9, scope: !5128)
!5210 = !DILocalVariable(name: "filename", arg: 1, scope: !5211, file: !985, line: 30, type: !173)
!5211 = distinct !DISubprogram(name: "orig_fopen", scope: !985, file: !985, line: 30, type: !5069, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !984, retainedNodes: !5212)
!5212 = !{!5210, !5213}
!5213 = !DILocalVariable(name: "mode", arg: 2, scope: !5211, file: !985, line: 30, type: !173)
!5214 = !DILocation(line: 0, scope: !5211, inlinedAt: !5215)
!5215 = distinct !DILocation(line: 219, column: 10, scope: !5068)
!5216 = !DILocation(line: 32, column: 10, scope: !5211, inlinedAt: !5215)
!5217 = !DILocation(line: 219, column: 3, scope: !5068)
!5218 = !DILocation(line: 220, column: 1, scope: !5068)
!5219 = !DISubprogram(name: "open", scope: !2413, file: !2413, line: 181, type: !5220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!5220 = !DISubroutineType(types: !5221)
!5221 = !{!118, !173, !118, null}
!5222 = !DISubprogram(name: "fdopen", scope: !627, file: !627, line: 293, type: !5223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!5223 = !DISubroutineType(types: !5224)
!5224 = !{!5071, !118, !173}
!5225 = !DISubprogram(name: "close", scope: !2269, file: !2269, line: 358, type: !1436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!5226 = !DISubprogram(name: "fopen", scope: !627, file: !627, line: 258, type: !5227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!5227 = !DISubroutineType(types: !5228)
!5228 = !{!5071, !1092, !1092}
!5229 = distinct !DISubprogram(name: "close_stream", scope: !987, file: !987, line: 55, type: !5230, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !5266)
!5230 = !DISubroutineType(types: !5231)
!5231 = !{!118, !5232}
!5232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5233, size: 64)
!5233 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !5234)
!5234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !5235)
!5235 = !{!5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5251, !5252, !5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265}
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5234, file: !269, line: 51, baseType: !118, size: 32)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5234, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5234, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5234, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5234, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5234, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5234, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5234, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5234, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5234, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5234, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5234, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5234, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5234, file: !269, line: 70, baseType: !5250, size: 64, offset: 832)
!5250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5234, size: 64)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5234, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5234, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5234, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5234, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5234, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5234, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5234, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5234, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5234, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5234, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5234, file: !269, line: 93, baseType: !5250, size: 64, offset: 1344)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5234, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5234, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5234, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5234, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!5266 = !{!5267, !5268, !5270, !5271}
!5267 = !DILocalVariable(name: "stream", arg: 1, scope: !5229, file: !987, line: 55, type: !5232)
!5268 = !DILocalVariable(name: "some_pending", scope: !5229, file: !987, line: 57, type: !5269)
!5269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!5270 = !DILocalVariable(name: "prev_fail", scope: !5229, file: !987, line: 58, type: !5269)
!5271 = !DILocalVariable(name: "fclose_fail", scope: !5229, file: !987, line: 59, type: !5269)
!5272 = !DILocation(line: 0, scope: !5229)
!5273 = !DILocation(line: 57, column: 30, scope: !5229)
!5274 = !DILocalVariable(name: "__stream", arg: 1, scope: !5275, file: !1419, line: 135, type: !5232)
!5275 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1419, file: !1419, line: 135, type: !5230, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !5276)
!5276 = !{!5274}
!5277 = !DILocation(line: 0, scope: !5275, inlinedAt: !5278)
!5278 = distinct !DILocation(line: 58, column: 27, scope: !5229)
!5279 = !DILocation(line: 137, column: 10, scope: !5275, inlinedAt: !5278)
!5280 = !DILocation(line: 58, column: 43, scope: !5229)
!5281 = !DILocation(line: 59, column: 29, scope: !5229)
!5282 = !DILocation(line: 59, column: 45, scope: !5229)
!5283 = !DILocation(line: 69, column: 17, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5229, file: !987, line: 69, column: 7)
!5285 = !DILocation(line: 57, column: 50, scope: !5229)
!5286 = !DILocation(line: 69, column: 33, scope: !5284)
!5287 = !DILocation(line: 69, column: 53, scope: !5284)
!5288 = !DILocation(line: 69, column: 59, scope: !5284)
!5289 = !DILocation(line: 69, column: 7, scope: !5229)
!5290 = !DILocation(line: 71, column: 11, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !5284, file: !987, line: 70, column: 5)
!5292 = !DILocation(line: 72, column: 9, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5291, file: !987, line: 71, column: 11)
!5294 = !DILocation(line: 72, column: 15, scope: !5293)
!5295 = !DILocation(line: 77, column: 1, scope: !5229)
!5296 = !DISubprogram(name: "__fpending", scope: !2617, file: !2617, line: 75, type: !5297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!5297 = !DISubroutineType(types: !5298)
!5298 = !{!170, !5232}
!5299 = distinct !DISubprogram(name: "freadptr", scope: !989, file: !989, line: 30, type: !5300, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !988, retainedNodes: !5336)
!5300 = !DISubroutineType(types: !5301)
!5301 = !{!173, !5302, !958}
!5302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5303, size: 64)
!5303 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !5304)
!5304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !5305)
!5305 = !{!5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5321, !5322, !5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335}
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5304, file: !269, line: 51, baseType: !118, size: 32)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5304, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5304, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5304, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5304, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5304, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5304, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5304, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5304, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5304, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5304, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5304, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5304, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5304, file: !269, line: 70, baseType: !5320, size: 64, offset: 832)
!5320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5304, size: 64)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5304, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5304, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5304, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5304, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5304, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5304, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5304, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5304, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5304, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5304, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5304, file: !269, line: 93, baseType: !5320, size: 64, offset: 1344)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5304, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5304, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5304, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5304, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!5336 = !{!5337, !5338, !5339}
!5337 = !DILocalVariable(name: "fp", arg: 1, scope: !5299, file: !989, line: 30, type: !5302)
!5338 = !DILocalVariable(name: "sizep", arg: 2, scope: !5299, file: !989, line: 30, type: !958)
!5339 = !DILocalVariable(name: "size", scope: !5299, file: !989, line: 32, type: !170)
!5340 = !DILocation(line: 0, scope: !5299)
!5341 = !DILocation(line: 37, column: 11, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5299, file: !989, line: 37, column: 7)
!5343 = !DILocation(line: 37, column: 31, scope: !5342)
!5344 = !DILocation(line: 37, column: 25, scope: !5342)
!5345 = !DILocation(line: 37, column: 7, scope: !5299)
!5346 = !DILocation(line: 39, column: 14, scope: !5299)
!5347 = !DILocation(line: 39, column: 33, scope: !5299)
!5348 = !DILocation(line: 40, column: 12, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5299, file: !989, line: 40, column: 7)
!5350 = !DILocation(line: 40, column: 7, scope: !5299)
!5351 = !DILocation(line: 39, column: 27, scope: !5299)
!5352 = !DILocation(line: 42, column: 10, scope: !5299)
!5353 = !DILocation(line: 43, column: 3, scope: !5299)
!5354 = !DILocation(line: 125, column: 1, scope: !5299)
!5355 = distinct !DISubprogram(name: "freadseek", scope: !992, file: !992, line: 74, type: !5356, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !5392)
!5356 = !DISubroutineType(types: !5357)
!5357 = !{!118, !5358, !170}
!5358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5359, size: 64)
!5359 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !5360)
!5360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !5361)
!5361 = !{!5362, !5363, !5364, !5365, !5366, !5367, !5368, !5369, !5370, !5371, !5372, !5373, !5374, !5375, !5377, !5378, !5379, !5380, !5381, !5382, !5383, !5384, !5385, !5386, !5387, !5388, !5389, !5390, !5391}
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5360, file: !269, line: 51, baseType: !118, size: 32)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5360, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5360, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5360, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5360, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5360, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5360, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5360, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5360, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5360, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5360, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5360, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5360, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5360, file: !269, line: 70, baseType: !5376, size: 64, offset: 832)
!5376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5360, size: 64)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5360, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5360, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5360, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5360, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5360, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5360, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5360, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5360, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5360, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5360, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5360, file: !269, line: 93, baseType: !5376, size: 64, offset: 1344)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5360, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5360, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5360, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5360, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!5392 = !{!5393, !5394, !5395, !5396, !5398, !5401, !5402, !5409, !5410}
!5393 = !DILocalVariable(name: "fp", arg: 1, scope: !5355, file: !992, line: 74, type: !5358)
!5394 = !DILocalVariable(name: "offset", arg: 2, scope: !5355, file: !992, line: 74, type: !170)
!5395 = !DILocalVariable(name: "total_buffered", scope: !5355, file: !992, line: 81, type: !170)
!5396 = !DILocalVariable(name: "buffered", scope: !5397, file: !992, line: 86, type: !170)
!5397 = distinct !DILexicalBlock(scope: !5355, file: !992, line: 85, column: 5)
!5398 = !DILocalVariable(name: "increment", scope: !5399, file: !992, line: 90, type: !170)
!5399 = distinct !DILexicalBlock(scope: !5400, file: !992, line: 89, column: 9)
!5400 = distinct !DILexicalBlock(scope: !5397, file: !992, line: 88, column: 11)
!5401 = !DILocalVariable(name: "fd", scope: !5355, file: !992, line: 111, type: !118)
!5402 = !DILocalVariable(name: "buf", scope: !5403, file: !992, line: 123, type: !5406)
!5403 = distinct !DILexicalBlock(scope: !5404, file: !992, line: 122, column: 9)
!5404 = distinct !DILexicalBlock(scope: !5405, file: !992, line: 118, column: 5)
!5405 = distinct !DILexicalBlock(scope: !5355, file: !992, line: 112, column: 7)
!5406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !5407)
!5407 = !{!5408}
!5408 = !DISubrange(count: 4096)
!5409 = !DILocalVariable(name: "count", scope: !5403, file: !992, line: 124, type: !170)
!5410 = !DILabel(scope: !5355, name: "eof", file: !992, line: 134)
!5411 = !DILocation(line: 0, scope: !5355)
!5412 = !DILocation(line: 76, column: 14, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5355, file: !992, line: 76, column: 7)
!5414 = !DILocation(line: 76, column: 7, scope: !5355)
!5415 = !DILocation(line: 81, column: 27, scope: !5355)
!5416 = !DILocation(line: 84, column: 3, scope: !5355)
!5417 = !DILocation(line: 81, column: 10, scope: !5355)
!5418 = !DILocation(line: 84, column: 25, scope: !5355)
!5419 = !DILocation(line: 86, column: 7, scope: !5397)
!5420 = !DILocation(line: 0, scope: !5397)
!5421 = !DILocation(line: 88, column: 11, scope: !5400)
!5422 = !DILocation(line: 88, column: 36, scope: !5400)
!5423 = !DILocation(line: 88, column: 44, scope: !5400)
!5424 = !DILocation(line: 90, column: 31, scope: !5399)
!5425 = !DILocation(line: 0, scope: !5399)
!5426 = !DILocalVariable(name: "fp", arg: 1, scope: !5427, file: !992, line: 34, type: !5358)
!5427 = distinct !DISubprogram(name: "freadptrinc", scope: !992, file: !992, line: 34, type: !5428, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !5430)
!5428 = !DISubroutineType(types: !5429)
!5429 = !{null, !5358, !170}
!5430 = !{!5426, !5431}
!5431 = !DILocalVariable(name: "increment", arg: 2, scope: !5427, file: !992, line: 34, type: !170)
!5432 = !DILocation(line: 0, scope: !5427, inlinedAt: !5433)
!5433 = distinct !DILocation(line: 92, column: 11, scope: !5399)
!5434 = !DILocation(line: 41, column: 20, scope: !5427, inlinedAt: !5433)
!5435 = !DILocation(line: 93, column: 18, scope: !5399)
!5436 = !DILocation(line: 94, column: 22, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5399, file: !992, line: 94, column: 15)
!5438 = !DILocation(line: 94, column: 15, scope: !5399)
!5439 = !DILocation(line: 96, column: 26, scope: !5399)
!5440 = !DILocation(line: 97, column: 30, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5399, file: !992, line: 97, column: 15)
!5442 = !DILocation(line: 102, column: 11, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5397, file: !992, line: 102, column: 11)
!5444 = !DILocation(line: 102, column: 22, scope: !5443)
!5445 = !DILocation(line: 102, column: 11, scope: !5397)
!5446 = !DILocation(line: 108, column: 5, scope: !5355)
!5447 = !DILocation(line: 104, column: 13, scope: !5397)
!5448 = !DILocation(line: 105, column: 18, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5397, file: !992, line: 105, column: 11)
!5450 = !DILocation(line: 105, column: 11, scope: !5397)
!5451 = !DILocation(line: 107, column: 21, scope: !5397)
!5452 = distinct !{!5452, !5416, !5446, !1148}
!5453 = !DILocation(line: 111, column: 12, scope: !5355)
!5454 = !DILocation(line: 112, column: 10, scope: !5405)
!5455 = !DILocation(line: 112, column: 15, scope: !5405)
!5456 = !DILocation(line: 121, column: 7, scope: !5404)
!5457 = !DILocation(line: 112, column: 18, scope: !5405)
!5458 = !DILocation(line: 112, column: 42, scope: !5405)
!5459 = !DILocation(line: 112, column: 7, scope: !5355)
!5460 = !DILocation(line: 115, column: 14, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5405, file: !992, line: 113, column: 5)
!5462 = !DILocation(line: 115, column: 7, scope: !5461)
!5463 = !DILocation(line: 123, column: 11, scope: !5403)
!5464 = !DILocation(line: 123, column: 16, scope: !5403)
!5465 = !DILocation(line: 124, column: 27, scope: !5403)
!5466 = !DILocation(line: 0, scope: !5403)
!5467 = !DILocalVariable(name: "__ptr", arg: 1, scope: !5468, file: !1088, line: 288, type: !2987)
!5468 = distinct !DISubprogram(name: "fread", scope: !1088, file: !1088, line: 288, type: !5469, scopeLine: 290, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !5472)
!5469 = !DISubroutineType(types: !5470)
!5470 = !{!172, !2987, !170, !170, !5471}
!5471 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5358)
!5472 = !{!5467, !5473, !5474, !5475, !5476}
!5473 = !DILocalVariable(name: "__size", arg: 2, scope: !5468, file: !1088, line: 288, type: !170)
!5474 = !DILocalVariable(name: "__n", arg: 3, scope: !5468, file: !1088, line: 288, type: !170)
!5475 = !DILocalVariable(name: "__stream", arg: 4, scope: !5468, file: !1088, line: 289, type: !5471)
!5476 = !DILocalVariable(name: "sz", scope: !5468, file: !1088, line: 291, type: !170)
!5477 = !DILocation(line: 0, scope: !5468, inlinedAt: !5478)
!5478 = distinct !DILocation(line: 125, column: 15, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5403, file: !992, line: 125, column: 15)
!5480 = !DILocation(line: 293, column: 12, scope: !5481, inlinedAt: !5478)
!5481 = distinct !DILexicalBlock(scope: !5468, file: !1088, line: 292, column: 7)
!5482 = !DILocation(line: 125, column: 41, scope: !5479)
!5483 = !DILocation(line: 128, column: 9, scope: !5404)
!5484 = !DILocation(line: 125, column: 15, scope: !5403)
!5485 = !DILocation(line: 129, column: 21, scope: !5404)
!5486 = !DILocation(line: 128, column: 9, scope: !5403)
!5487 = distinct !{!5487, !5456, !5488, !1148}
!5488 = !DILocation(line: 129, column: 24, scope: !5404)
!5489 = !DILocation(line: 134, column: 2, scope: !5355)
!5490 = !DILocation(line: 136, column: 7, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5355, file: !992, line: 136, column: 7)
!5492 = !DILocation(line: 0, scope: !5491)
!5493 = !DILocation(line: 141, column: 1, scope: !5355)
!5494 = !DISubprogram(name: "fgetc", scope: !627, file: !627, line: 513, type: !5495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!5495 = !DISubroutineType(types: !5496)
!5496 = !{!118, !5358}
!5497 = !DISubprogram(name: "__fread_alias", linkageName: "fread", scope: !1088, file: !1088, line: 275, type: !5498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!5498 = !DISubroutineType(types: !5499)
!5499 = !{!170, !2987, !170, !170, !5471}
!5500 = !DISubprogram(name: "ferror", scope: !627, file: !627, line: 790, type: !5495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!5501 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !901, file: !901, line: 100, type: !5502, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !904, retainedNodes: !5505)
!5502 = !DISubroutineType(types: !5503)
!5503 = !{!170, !3187, !173, !170, !5504}
!5504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!5505 = !{!5506, !5507, !5508, !5509, !5510}
!5506 = !DILocalVariable(name: "pwc", arg: 1, scope: !5501, file: !901, line: 100, type: !3187)
!5507 = !DILocalVariable(name: "s", arg: 2, scope: !5501, file: !901, line: 100, type: !173)
!5508 = !DILocalVariable(name: "n", arg: 3, scope: !5501, file: !901, line: 100, type: !170)
!5509 = !DILocalVariable(name: "ps", arg: 4, scope: !5501, file: !901, line: 100, type: !5504)
!5510 = !DILocalVariable(name: "ret", scope: !5501, file: !901, line: 130, type: !170)
!5511 = !DILocation(line: 0, scope: !5501)
!5512 = !DILocation(line: 105, column: 9, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5501, file: !901, line: 105, column: 7)
!5514 = !DILocation(line: 105, column: 7, scope: !5501)
!5515 = !DILocation(line: 117, column: 10, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5501, file: !901, line: 117, column: 7)
!5517 = !DILocation(line: 117, column: 7, scope: !5501)
!5518 = !DILocation(line: 130, column: 16, scope: !5501)
!5519 = !DILocation(line: 135, column: 11, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5501, file: !901, line: 135, column: 7)
!5521 = !DILocation(line: 135, column: 25, scope: !5520)
!5522 = !DILocation(line: 135, column: 30, scope: !5520)
!5523 = !DILocation(line: 135, column: 7, scope: !5501)
!5524 = !DILocalVariable(name: "ps", arg: 1, scope: !5525, file: !3161, line: 1135, type: !5504)
!5525 = distinct !DISubprogram(name: "mbszero", scope: !3161, file: !3161, line: 1135, type: !5526, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !904, retainedNodes: !5528)
!5526 = !DISubroutineType(types: !5527)
!5527 = !{null, !5504}
!5528 = !{!5524}
!5529 = !DILocation(line: 0, scope: !5525, inlinedAt: !5530)
!5530 = distinct !DILocation(line: 137, column: 5, scope: !5520)
!5531 = !DILocalVariable(name: "__dest", arg: 1, scope: !5532, file: !2089, line: 57, type: !168)
!5532 = distinct !DISubprogram(name: "memset", scope: !2089, file: !2089, line: 57, type: !3170, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !904, retainedNodes: !5533)
!5533 = !{!5531, !5534, !5535}
!5534 = !DILocalVariable(name: "__ch", arg: 2, scope: !5532, file: !2089, line: 57, type: !118)
!5535 = !DILocalVariable(name: "__len", arg: 3, scope: !5532, file: !2089, line: 57, type: !170)
!5536 = !DILocation(line: 0, scope: !5532, inlinedAt: !5537)
!5537 = distinct !DILocation(line: 1137, column: 3, scope: !5525, inlinedAt: !5530)
!5538 = !DILocation(line: 59, column: 10, scope: !5532, inlinedAt: !5537)
!5539 = !DILocation(line: 137, column: 5, scope: !5520)
!5540 = !DILocation(line: 138, column: 11, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5501, file: !901, line: 138, column: 7)
!5542 = !DILocation(line: 138, column: 7, scope: !5501)
!5543 = !DILocation(line: 139, column: 5, scope: !5541)
!5544 = !DILocation(line: 143, column: 26, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5501, file: !901, line: 143, column: 7)
!5546 = !DILocation(line: 143, column: 41, scope: !5545)
!5547 = !DILocation(line: 143, column: 7, scope: !5501)
!5548 = !DILocation(line: 145, column: 15, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5550, file: !901, line: 145, column: 11)
!5550 = distinct !DILexicalBlock(scope: !5545, file: !901, line: 144, column: 5)
!5551 = !DILocation(line: 145, column: 11, scope: !5550)
!5552 = !DILocation(line: 146, column: 32, scope: !5549)
!5553 = !DILocation(line: 146, column: 16, scope: !5549)
!5554 = !DILocation(line: 146, column: 14, scope: !5549)
!5555 = !DILocation(line: 146, column: 9, scope: !5549)
!5556 = !DILocation(line: 286, column: 1, scope: !5501)
!5557 = !DISubprogram(name: "mbsinit", scope: !5558, file: !5558, line: 293, type: !5559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1033)
!5558 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5559 = !DISubroutineType(types: !5560)
!5560 = !{!118, !5561}
!5561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5562, size: 64)
!5562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !907)
!5563 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !995, file: !995, line: 27, type: !4636, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !994, retainedNodes: !5564)
!5564 = !{!5565, !5566, !5567, !5568}
!5565 = !DILocalVariable(name: "ptr", arg: 1, scope: !5563, file: !995, line: 27, type: !168)
!5566 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5563, file: !995, line: 27, type: !170)
!5567 = !DILocalVariable(name: "size", arg: 3, scope: !5563, file: !995, line: 27, type: !170)
!5568 = !DILocalVariable(name: "nbytes", scope: !5563, file: !995, line: 29, type: !170)
!5569 = !DILocation(line: 0, scope: !5563)
!5570 = !DILocation(line: 30, column: 7, scope: !5571)
!5571 = distinct !DILexicalBlock(scope: !5563, file: !995, line: 30, column: 7)
!5572 = !DILocalVariable(name: "ptr", arg: 1, scope: !5573, file: !2961, line: 2057, type: !168)
!5573 = distinct !DISubprogram(name: "rpl_realloc", scope: !2961, file: !2961, line: 2057, type: !2962, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !994, retainedNodes: !5574)
!5574 = !{!5572, !5575}
!5575 = !DILocalVariable(name: "size", arg: 2, scope: !5573, file: !2961, line: 2057, type: !170)
!5576 = !DILocation(line: 0, scope: !5573, inlinedAt: !5577)
!5577 = distinct !DILocation(line: 37, column: 10, scope: !5563)
!5578 = !DILocation(line: 2059, column: 24, scope: !5573, inlinedAt: !5577)
!5579 = !DILocation(line: 2059, column: 10, scope: !5573, inlinedAt: !5577)
!5580 = !DILocation(line: 37, column: 3, scope: !5563)
!5581 = !DILocation(line: 32, column: 7, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5571, file: !995, line: 31, column: 5)
!5583 = !DILocation(line: 32, column: 13, scope: !5582)
!5584 = !DILocation(line: 33, column: 7, scope: !5582)
!5585 = !DILocation(line: 38, column: 1, scope: !5563)
!5586 = distinct !DISubprogram(name: "freadahead", scope: !998, file: !998, line: 34, type: !5587, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !5623)
!5587 = !DISubroutineType(types: !5588)
!5588 = !{!170, !5589}
!5589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5590, size: 64)
!5590 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !5591)
!5591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !5592)
!5592 = !{!5593, !5594, !5595, !5596, !5597, !5598, !5599, !5600, !5601, !5602, !5603, !5604, !5605, !5606, !5608, !5609, !5610, !5611, !5612, !5613, !5614, !5615, !5616, !5617, !5618, !5619, !5620, !5621, !5622}
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5591, file: !269, line: 51, baseType: !118, size: 32)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5591, file: !269, line: 54, baseType: !167, size: 64, offset: 64)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5591, file: !269, line: 55, baseType: !167, size: 64, offset: 128)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5591, file: !269, line: 56, baseType: !167, size: 64, offset: 192)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5591, file: !269, line: 57, baseType: !167, size: 64, offset: 256)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5591, file: !269, line: 58, baseType: !167, size: 64, offset: 320)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5591, file: !269, line: 59, baseType: !167, size: 64, offset: 384)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5591, file: !269, line: 60, baseType: !167, size: 64, offset: 448)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5591, file: !269, line: 61, baseType: !167, size: 64, offset: 512)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5591, file: !269, line: 64, baseType: !167, size: 64, offset: 576)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5591, file: !269, line: 65, baseType: !167, size: 64, offset: 640)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5591, file: !269, line: 66, baseType: !167, size: 64, offset: 704)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5591, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5591, file: !269, line: 70, baseType: !5607, size: 64, offset: 832)
!5607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5591, size: 64)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5591, file: !269, line: 72, baseType: !118, size: 32, offset: 896)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5591, file: !269, line: 73, baseType: !118, size: 32, offset: 928)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5591, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5591, file: !269, line: 77, baseType: !169, size: 16, offset: 1024)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5591, file: !269, line: 78, baseType: !296, size: 8, offset: 1040)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5591, file: !269, line: 79, baseType: !89, size: 8, offset: 1048)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5591, file: !269, line: 81, baseType: !299, size: 64, offset: 1088)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5591, file: !269, line: 89, baseType: !302, size: 64, offset: 1152)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5591, file: !269, line: 91, baseType: !304, size: 64, offset: 1216)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5591, file: !269, line: 92, baseType: !307, size: 64, offset: 1280)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5591, file: !269, line: 93, baseType: !5607, size: 64, offset: 1344)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5591, file: !269, line: 94, baseType: !168, size: 64, offset: 1408)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5591, file: !269, line: 95, baseType: !170, size: 64, offset: 1472)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5591, file: !269, line: 96, baseType: !118, size: 32, offset: 1536)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5591, file: !269, line: 98, baseType: !314, size: 160, offset: 1568)
!5623 = !{!5624}
!5624 = !DILocalVariable(name: "fp", arg: 1, scope: !5586, file: !998, line: 34, type: !5589)
!5625 = !DILocation(line: 0, scope: !5586)
!5626 = !DILocation(line: 38, column: 11, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5586, file: !998, line: 38, column: 7)
!5628 = !DILocation(line: 38, column: 31, scope: !5627)
!5629 = !DILocation(line: 38, column: 25, scope: !5627)
!5630 = !DILocation(line: 38, column: 7, scope: !5586)
!5631 = !DILocation(line: 40, column: 15, scope: !5586)
!5632 = !DILocation(line: 40, column: 34, scope: !5586)
!5633 = !DILocation(line: 40, column: 28, scope: !5586)
!5634 = !DILocation(line: 41, column: 17, scope: !5586)
!5635 = !DILocation(line: 41, column: 24, scope: !5586)
!5636 = !DILocation(line: 41, column: 13, scope: !5586)
!5637 = !DILocation(line: 41, column: 46, scope: !5586)
!5638 = !{!1427, !1025, i64 88}
!5639 = !DILocation(line: 41, column: 65, scope: !5586)
!5640 = !DILocation(line: 41, column: 59, scope: !5586)
!5641 = !DILocation(line: 41, column: 10, scope: !5586)
!5642 = !DILocation(line: 40, column: 3, scope: !5586)
!5643 = !DILocation(line: 103, column: 1, scope: !5586)
!5644 = distinct !DISubprogram(name: "hard_locale", scope: !919, file: !919, line: 28, type: !2028, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !5645)
!5645 = !{!5646, !5647}
!5646 = !DILocalVariable(name: "category", arg: 1, scope: !5644, file: !919, line: 28, type: !118)
!5647 = !DILocalVariable(name: "locale", scope: !5644, file: !919, line: 30, type: !5648)
!5648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5649)
!5649 = !{!5650}
!5650 = !DISubrange(count: 257)
!5651 = !DILocation(line: 0, scope: !5644)
!5652 = !DILocation(line: 30, column: 3, scope: !5644)
!5653 = !DILocation(line: 30, column: 8, scope: !5644)
!5654 = !DILocation(line: 32, column: 7, scope: !5655)
!5655 = distinct !DILexicalBlock(scope: !5644, file: !919, line: 32, column: 7)
!5656 = !DILocation(line: 32, column: 7, scope: !5644)
!5657 = !DILocalVariable(name: "__s1", arg: 1, scope: !5658, file: !1114, line: 1359, type: !173)
!5658 = distinct !DISubprogram(name: "streq", scope: !1114, file: !1114, line: 1359, type: !1115, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !5659)
!5659 = !{!5657, !5660}
!5660 = !DILocalVariable(name: "__s2", arg: 2, scope: !5658, file: !1114, line: 1359, type: !173)
!5661 = !DILocation(line: 0, scope: !5658, inlinedAt: !5662)
!5662 = distinct !DILocation(line: 35, column: 9, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !5644, file: !919, line: 35, column: 7)
!5664 = !DILocation(line: 1361, column: 11, scope: !5658, inlinedAt: !5662)
!5665 = !DILocation(line: 1361, column: 10, scope: !5658, inlinedAt: !5662)
!5666 = !DILocation(line: 35, column: 29, scope: !5663)
!5667 = !DILocation(line: 0, scope: !5658, inlinedAt: !5668)
!5668 = distinct !DILocation(line: 35, column: 32, scope: !5663)
!5669 = !DILocation(line: 1361, column: 11, scope: !5658, inlinedAt: !5668)
!5670 = !DILocation(line: 1361, column: 10, scope: !5658, inlinedAt: !5668)
!5671 = !DILocation(line: 35, column: 7, scope: !5644)
!5672 = !DILocation(line: 46, column: 3, scope: !5644)
!5673 = !DILocation(line: 47, column: 1, scope: !5644)
!5674 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1002, file: !1002, line: 154, type: !5675, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1001, retainedNodes: !5677)
!5675 = !DISubroutineType(types: !5676)
!5676 = !{!118, !118, !167, !170}
!5677 = !{!5678, !5679, !5680}
!5678 = !DILocalVariable(name: "category", arg: 1, scope: !5674, file: !1002, line: 154, type: !118)
!5679 = !DILocalVariable(name: "buf", arg: 2, scope: !5674, file: !1002, line: 154, type: !167)
!5680 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5674, file: !1002, line: 154, type: !170)
!5681 = !DILocation(line: 0, scope: !5674)
!5682 = !DILocation(line: 159, column: 10, scope: !5674)
!5683 = !DILocation(line: 159, column: 3, scope: !5674)
!5684 = distinct !DISubprogram(name: "setlocale_null", scope: !1002, file: !1002, line: 186, type: !5685, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1001, retainedNodes: !5687)
!5685 = !DISubroutineType(types: !5686)
!5686 = !{!173, !118}
!5687 = !{!5688}
!5688 = !DILocalVariable(name: "category", arg: 1, scope: !5684, file: !1002, line: 186, type: !118)
!5689 = !DILocation(line: 0, scope: !5684)
!5690 = !DILocation(line: 189, column: 10, scope: !5684)
!5691 = !DILocation(line: 189, column: 3, scope: !5684)
!5692 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1004, file: !1004, line: 35, type: !5685, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1003, retainedNodes: !5693)
!5693 = !{!5694, !5695}
!5694 = !DILocalVariable(name: "category", arg: 1, scope: !5692, file: !1004, line: 35, type: !118)
!5695 = !DILocalVariable(name: "result", scope: !5692, file: !1004, line: 37, type: !173)
!5696 = !DILocation(line: 0, scope: !5692)
!5697 = !DILocation(line: 37, column: 24, scope: !5692)
!5698 = !DILocation(line: 62, column: 3, scope: !5692)
!5699 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1004, file: !1004, line: 66, type: !5675, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1003, retainedNodes: !5700)
!5700 = !{!5701, !5702, !5703, !5704, !5705}
!5701 = !DILocalVariable(name: "category", arg: 1, scope: !5699, file: !1004, line: 66, type: !118)
!5702 = !DILocalVariable(name: "buf", arg: 2, scope: !5699, file: !1004, line: 66, type: !167)
!5703 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5699, file: !1004, line: 66, type: !170)
!5704 = !DILocalVariable(name: "result", scope: !5699, file: !1004, line: 111, type: !173)
!5705 = !DILocalVariable(name: "length", scope: !5706, file: !1004, line: 125, type: !170)
!5706 = distinct !DILexicalBlock(scope: !5707, file: !1004, line: 124, column: 5)
!5707 = distinct !DILexicalBlock(scope: !5699, file: !1004, line: 113, column: 7)
!5708 = !DILocation(line: 0, scope: !5699)
!5709 = !DILocation(line: 0, scope: !5692, inlinedAt: !5710)
!5710 = distinct !DILocation(line: 111, column: 24, scope: !5699)
!5711 = !DILocation(line: 37, column: 24, scope: !5692, inlinedAt: !5710)
!5712 = !DILocation(line: 113, column: 14, scope: !5707)
!5713 = !DILocation(line: 113, column: 7, scope: !5699)
!5714 = !DILocation(line: 116, column: 19, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5716, file: !1004, line: 116, column: 11)
!5716 = distinct !DILexicalBlock(scope: !5707, file: !1004, line: 114, column: 5)
!5717 = !DILocation(line: 116, column: 11, scope: !5716)
!5718 = !DILocation(line: 120, column: 16, scope: !5715)
!5719 = !DILocation(line: 120, column: 9, scope: !5715)
!5720 = !DILocation(line: 125, column: 23, scope: !5706)
!5721 = !DILocation(line: 0, scope: !5706)
!5722 = !DILocation(line: 126, column: 18, scope: !5723)
!5723 = distinct !DILexicalBlock(scope: !5706, file: !1004, line: 126, column: 11)
!5724 = !DILocation(line: 126, column: 11, scope: !5706)
!5725 = !DILocation(line: 128, column: 39, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5723, file: !1004, line: 127, column: 9)
!5727 = !DILocalVariable(name: "__dest", arg: 1, scope: !5728, file: !2089, line: 26, type: !2987)
!5728 = distinct !DISubprogram(name: "memcpy", scope: !2089, file: !2089, line: 26, type: !2985, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1003, retainedNodes: !5729)
!5729 = !{!5727, !5730, !5731}
!5730 = !DILocalVariable(name: "__src", arg: 2, scope: !5728, file: !2089, line: 26, type: !1245)
!5731 = !DILocalVariable(name: "__len", arg: 3, scope: !5728, file: !2089, line: 26, type: !170)
!5732 = !DILocation(line: 0, scope: !5728, inlinedAt: !5733)
!5733 = distinct !DILocation(line: 128, column: 11, scope: !5726)
!5734 = !DILocation(line: 29, column: 10, scope: !5728, inlinedAt: !5733)
!5735 = !DILocation(line: 129, column: 11, scope: !5726)
!5736 = !DILocation(line: 133, column: 23, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5738, file: !1004, line: 133, column: 15)
!5738 = distinct !DILexicalBlock(scope: !5723, file: !1004, line: 132, column: 9)
!5739 = !DILocation(line: 133, column: 15, scope: !5738)
!5740 = !DILocation(line: 138, column: 44, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5737, file: !1004, line: 134, column: 13)
!5742 = !DILocation(line: 0, scope: !5728, inlinedAt: !5743)
!5743 = distinct !DILocation(line: 138, column: 15, scope: !5741)
!5744 = !DILocation(line: 29, column: 10, scope: !5728, inlinedAt: !5743)
!5745 = !DILocation(line: 139, column: 15, scope: !5741)
!5746 = !DILocation(line: 139, column: 32, scope: !5741)
!5747 = !DILocation(line: 140, column: 13, scope: !5741)
!5748 = !DILocation(line: 0, scope: !5707)
!5749 = !DILocation(line: 145, column: 1, scope: !5699)
