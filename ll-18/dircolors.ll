; ModuleID = 'src/dircolors.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, %union.anon, i64, %union.anon.0, %union.anon.0, ptr, i8 }
%union.anon = type { i64 }
%union.anon.0 = type { ptr }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct._obstack_chunk = type { ptr, ptr, [0 x i8] }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION]... [FILE]\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [89 x i8] c"Output commands to set the LS_COLORS environment variable.\0A\0ADetermine format of output:\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [10 x i8] c"dircolors\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [79 x i8] c"  -b, --sh, --bourne-shell\0A         output Bourne shell code to set LS_COLORS\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [70 x i8] c"  -c, --csh, --c-shell\0A         output C shell code to set LS_COLORS\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [49 x i8] c"  -p, --print-database\0A         output defaults\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [74 x i8] c"      --print-ls-colors\0A         output fully escaped colors for display\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [222 x i8] c"\0AIf FILE is specified, read it to determine which colors to use for which\0Afile types and extensions.  Otherwise, a precompiled database is used.\0AFor details on the format of these files, run 'dircolors --print-database'.\0A\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !57
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !64
@.str.14 = private unnamed_addr constant [4 x i8] c"bcp\00", align 1, !dbg !69
@long_options = internal constant [9 x %struct.option] [%struct.option { ptr @.str.62, i32 0, ptr null, i32 98 }, %struct.option { ptr @.str.63, i32 0, ptr null, i32 98 }, %struct.option { ptr @.str.64, i32 0, ptr null, i32 99 }, %struct.option { ptr @.str.65, i32 0, ptr null, i32 99 }, %struct.option { ptr @.str.66, i32 0, ptr null, i32 112 }, %struct.option { ptr @.str.67, i32 0, ptr null, i32 256 }, %struct.option { ptr @.str.68, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.69, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !74
@print_ls_colors = internal unnamed_addr global i1 false, align 1, !dbg !672
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !225
@.str.16 = private unnamed_addr constant [15 x i8] c"H. Peter Anvin\00", align 1, !dbg !230
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [92 x i8] c"the options to output non shell syntax,\0Aand to select a shell syntax are mutually exclusive\00", align 1, !dbg !235
@.str.18 = private unnamed_addr constant [70 x i8] c"options --print-database and --print-ls-colors are mutually exclusive\00", align 1, !dbg !240
@.str.19 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !242
@.str.20 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !247
@.str.21 = private unnamed_addr constant [60 x i8] c"file operands cannot be combined with --print-database (-p)\00", align 1, !dbg !249
@G_line = internal constant [5616 x i8] c"# Configuration file for dircolors, a utility to help you set the\00# LS_COLORS environment variable used by GNU ls with the --color option.\00# Copyright (C) 1996-2026 Free Software Foundation, Inc.\00# Copying and distribution of this file, with or without modification,\00# are permitted provided the copyright notice and this notice are preserved.\00#\00# The keywords COLOR, OPTIONS, and EIGHTBIT (honored by the\00# slackware version of dircolors) are recognized but ignored.\00# Global config options can be specified before TERM or COLORTERM entries\00# ===================================================================\00# Terminal filters\00# ===================================================================\00# Below are TERM or COLORTERM entries, which can be glob patterns, which\00# restrict following config to systems with matching environment variables.\00COLORTERM ?*\00TERM Eterm\00TERM ansi\00TERM *color*\00TERM con[0-9]*x[0-9]*\00TERM cons25\00TERM console\00TERM cygwin\00TERM *direct*\00TERM dtterm\00TERM gnome\00TERM hurd\00TERM jfbterm\00TERM konsole\00TERM kterm\00TERM linux\00TERM linux-c\00TERM mlterm\00TERM putty\00TERM rxvt*\00TERM screen*\00TERM st\00TERM terminator\00TERM tmux*\00TERM vt100\00TERM vt220\00TERM xterm*\00# ===================================================================\00# Basic file attributes\00# ===================================================================\00# Below are the color init strings for the basic file types.\00# One can use codes for 256 or more colors supported by modern terminals.\00# The default color codes use the capabilities of an 8 color terminal\00# with some additional attributes as per the following codes:\00# Attribute codes:\00# 00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed\00# Text color codes:\00# 30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white\00# Background color codes:\00# 40=black 41=red 42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white\00#NORMAL 00 # no color code at all\00#FILE 00 # regular file: use no color at all\00RESET 0 # reset to \22normal\22 color\00DIR 01;34 # directory\00LINK 01;36 # symbolic link. (If you set this to 'target' instead of a\00 # numerical value, the color is as for the file pointed to.)\00MULTIHARDLINK 00 # regular file with more than one link\00FIFO 40;33 # pipe\00SOCK 01;35 # socket\00DOOR 01;35 # door\00BLK 40;33;01 # block device driver\00CHR 40;33;01 # character device driver\00ORPHAN 40;31;01 # symlink to nonexistent file, or non-stat'able file ...\00MISSING 00 # ... and the files they point to\00SETUID 37;41 # regular file that is setuid (u+s)\00SETGID 30;43 # regular file that is setgid (g+s)\00CAPABILITY 00 # regular file with capability (very expensive to lookup)\00STICKY_OTHER_WRITABLE 30;42 # dir that is sticky and other-writable (+t,o+w)\00OTHER_WRITABLE 34;42 # dir that is other-writable (o+w) and not sticky\00STICKY 37;44 # dir with the sticky bit set (+t) and not other-writable\00# This is for regular files with execute permission:\00EXEC 01;32\00# ===================================================================\00# File extension attributes\00# ===================================================================\00# List any file extensions like '.gz' or '.tar' that you would like ls\00# to color below. Put the suffix, a space, and the color init string.\00# (and any comments you want to add after a '#').\00# Suffixes are matched case insensitively, but if you define different\00# init strings for separate cases, those will be honored.\00#\00# If you use DOS-style suffixes, you may want to uncomment the following:\00#.cmd 01;32 # executables (bright green)\00#.exe 01;32\00#.com 01;32\00#.btm 01;32\00#.bat 01;32\00# Or if you want to color scripts even if they do not have the\00# executable bit actually set.\00#.sh 01;32\00#.csh 01;32\00# archives or compressed (bright red)\00.7z 01;31\00.ace 01;31\00.alz 01;31\00.apk 01;31\00.arc 01;31\00.arj 01;31\00.bz 01;31\00.bz2 01;31\00.cab 01;31\00.cpio 01;31\00.crate 01;31\00.deb 01;31\00.drpm 01;31\00.dwm 01;31\00.dz 01;31\00.ear 01;31\00.egg 01;31\00.esd 01;31\00.gz 01;31\00.jar 01;31\00.lha 01;31\00.lrz 01;31\00.lz 01;31\00.lz4 01;31\00.lzh 01;31\00.lzma 01;31\00.lzo 01;31\00.pyz 01;31\00.rar 01;31\00.rpm 01;31\00.rz 01;31\00.sar 01;31\00.swm 01;31\00.t7z 01;31\00.tar 01;31\00.taz 01;31\00.tbz 01;31\00.tbz2 01;31\00.tgz 01;31\00.tlz 01;31\00.txz 01;31\00.tz 01;31\00.tzo 01;31\00.tzst 01;31\00.udeb 01;31\00.war 01;31\00.whl 01;31\00.wim 01;31\00.xz 01;31\00.z 01;31\00.zip 01;31\00.zoo 01;31\00.zst 01;31\00# image formats\00.avif 01;35\00.jpg 01;35\00.jpeg 01;35\00.jxl 01;35\00.mjpg 01;35\00.mjpeg 01;35\00.gif 01;35\00.bmp 01;35\00.pbm 01;35\00.pgm 01;35\00.ppm 01;35\00.tga 01;35\00.xbm 01;35\00.xpm 01;35\00.tif 01;35\00.tiff 01;35\00.png 01;35\00.svg 01;35\00.svgz 01;35\00.mng 01;35\00.pcx 01;35\00.mov 01;35\00.mpg 01;35\00.mpeg 01;35\00.m2v 01;35\00.mkv 01;35\00.webm 01;35\00.webp 01;35\00.ogm 01;35\00.mp4 01;35\00.m4v 01;35\00.mp4v 01;35\00.vob 01;35\00.qt 01;35\00.nuv 01;35\00.wmv 01;35\00.asf 01;35\00.rm 01;35\00.rmvb 01;35\00.flc 01;35\00.avi 01;35\00.fli 01;35\00.flv 01;35\00.gl 01;35\00.dl 01;35\00.xcf 01;35\00.xwd 01;35\00.yuv 01;35\00.cgm 01;35\00.emf 01;35\00# https://wiki.xiph.org/MIME_Types_and_File_Extensions\00.ogv 01;35\00.ogx 01;35\00# audio formats\00.aac 00;36\00.au 00;36\00.flac 00;36\00.m4a 00;36\00.mid 00;36\00.midi 00;36\00.mka 00;36\00.mp3 00;36\00.mpc 00;36\00.ogg 00;36\00.ra 00;36\00.wav 00;36\00# https://wiki.xiph.org/MIME_Types_and_File_Extensions\00.oga 00;36\00.opus 00;36\00.spx 00;36\00.xspf 00;36\00# backup files\00*~ 00;90\00*# 00;90\00.bak 00;90\00.crdownload 00;90\00.dpkg-dist 00;90\00.dpkg-new 00;90\00.dpkg-old 00;90\00.dpkg-tmp 00;90\00.old 00;90\00.orig 00;90\00.part 00;90\00.rej 00;90\00.rpmnew 00;90\00.rpmorig 00;90\00.rpmsave 00;90\00.swp 00;90\00.tmp 00;90\00.ucf-dist 00;90\00.ucf-new 00;90\00.ucf-old 00;90\00#\00# Subsequent TERM or COLORTERM entries, can be used to add / override\00# config specific to those matching environment variables.\00", align 1, !dbg !484
@.str.22 = private unnamed_addr constant [62 x i8] c"no SHELL environment variable, and no shell type option given\00", align 1, !dbg !254
@lsc_obstack = internal global %struct.obstack zeroinitializer, align 8, !dbg !276
@.str.23 = private unnamed_addr constant [12 x i8] c"LS_COLORS='\00", align 1, !dbg !256
@.str.24 = private unnamed_addr constant [21 x i8] c"';\0Aexport LS_COLORS\0A\00", align 1, !dbg !261
@.str.25 = private unnamed_addr constant [19 x i8] c"setenv LS_COLORS '\00", align 1, !dbg !266
@.str.26 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1, !dbg !271
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !329
@.str.27 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !359
@.str.28 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !364
@.str.29 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !366
@.str.30 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !368
@.str.44 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !408
@.str.45 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !410
@.str.46 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !412
@.str.47 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !414
@.str.48 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !419
@.str.49 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !421
@.str.50 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !426
@.str.51 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !428
@.str.52 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !430
@.str.53 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !432
@.str.57 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !446
@.str.58 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !448
@.str.59 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !453
@.str.60 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !458
@.str.61 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !463
@.str.62 = private unnamed_addr constant [13 x i8] c"bourne-shell\00", align 1, !dbg !465
@.str.63 = private unnamed_addr constant [3 x i8] c"sh\00", align 1, !dbg !470
@.str.64 = private unnamed_addr constant [4 x i8] c"csh\00", align 1, !dbg !472
@.str.65 = private unnamed_addr constant [8 x i8] c"c-shell\00", align 1, !dbg !474
@.str.66 = private unnamed_addr constant [15 x i8] c"print-database\00", align 1, !dbg !476
@.str.67 = private unnamed_addr constant [16 x i8] c"print-ls-colors\00", align 1, !dbg !478
@.str.68 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !480
@.str.69 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !482
@.str.70 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1, !dbg !490
@.str.71 = private unnamed_addr constant [5 x i8] c"tcsh\00", align 1, !dbg !492
@.str.72 = private unnamed_addr constant [5 x i8] c"none\00", align 1, !dbg !494
@.str.73 = private unnamed_addr constant [10 x i8] c"COLORTERM\00", align 1, !dbg !496
@.str.74 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1, !dbg !498
@.str.75 = private unnamed_addr constant [44 x i8] c"%s:%td: invalid line;  missing second token\00", align 1, !dbg !500
@.str.76 = private unnamed_addr constant [8 x i8] c"OPTIONS\00", align 1, !dbg !505
@.str.77 = private unnamed_addr constant [6 x i8] c"COLOR\00", align 1, !dbg !507
@.str.78 = private unnamed_addr constant [9 x i8] c"EIGHTBIT\00", align 1, !dbg !509
@slack_codes = internal unnamed_addr constant [38 x ptr] [ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr null], align 8, !dbg !600
@ls_codes = internal unnamed_addr constant [38 x ptr] [ptr @.str.119, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.123, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.128, ptr @.str.129, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.132, ptr @.str.133, ptr @.str.133, ptr @.str.134, ptr @.str.134, ptr @.str.135, ptr @.str.135, ptr @.str.136, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.138, ptr @.str.139, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr null], align 8, !dbg !654
@.str.79 = private unnamed_addr constant [32 x i8] c"%s:%td: unrecognized keyword %s\00", align 1, !dbg !514
@.str.80 = private unnamed_addr constant [11 x i8] c"<internal>\00", align 1, !dbg !519
@.str.81 = private unnamed_addr constant [3 x i8] c"\1B[\00", align 1, !dbg !524
@.str.82 = private unnamed_addr constant [7 x i8] c"NORMAL\00", align 1, !dbg !526
@.str.83 = private unnamed_addr constant [5 x i8] c"NORM\00", align 1, !dbg !528
@.str.84 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1, !dbg !530
@.str.85 = private unnamed_addr constant [6 x i8] c"RESET\00", align 1, !dbg !532
@.str.86 = private unnamed_addr constant [4 x i8] c"DIR\00", align 1, !dbg !534
@.str.87 = private unnamed_addr constant [4 x i8] c"LNK\00", align 1, !dbg !536
@.str.88 = private unnamed_addr constant [5 x i8] c"LINK\00", align 1, !dbg !538
@.str.89 = private unnamed_addr constant [8 x i8] c"SYMLINK\00", align 1, !dbg !540
@.str.90 = private unnamed_addr constant [7 x i8] c"ORPHAN\00", align 1, !dbg !542
@.str.91 = private unnamed_addr constant [8 x i8] c"MISSING\00", align 1, !dbg !544
@.str.92 = private unnamed_addr constant [5 x i8] c"FIFO\00", align 1, !dbg !546
@.str.93 = private unnamed_addr constant [5 x i8] c"PIPE\00", align 1, !dbg !548
@.str.94 = private unnamed_addr constant [5 x i8] c"SOCK\00", align 1, !dbg !550
@.str.95 = private unnamed_addr constant [4 x i8] c"BLK\00", align 1, !dbg !552
@.str.96 = private unnamed_addr constant [6 x i8] c"BLOCK\00", align 1, !dbg !554
@.str.97 = private unnamed_addr constant [4 x i8] c"CHR\00", align 1, !dbg !556
@.str.98 = private unnamed_addr constant [5 x i8] c"CHAR\00", align 1, !dbg !558
@.str.99 = private unnamed_addr constant [5 x i8] c"DOOR\00", align 1, !dbg !560
@.str.100 = private unnamed_addr constant [5 x i8] c"EXEC\00", align 1, !dbg !562
@.str.101 = private unnamed_addr constant [5 x i8] c"LEFT\00", align 1, !dbg !564
@.str.102 = private unnamed_addr constant [9 x i8] c"LEFTCODE\00", align 1, !dbg !566
@.str.103 = private unnamed_addr constant [6 x i8] c"RIGHT\00", align 1, !dbg !568
@.str.104 = private unnamed_addr constant [10 x i8] c"RIGHTCODE\00", align 1, !dbg !570
@.str.105 = private unnamed_addr constant [4 x i8] c"END\00", align 1, !dbg !572
@.str.106 = private unnamed_addr constant [8 x i8] c"ENDCODE\00", align 1, !dbg !574
@.str.107 = private unnamed_addr constant [5 x i8] c"SUID\00", align 1, !dbg !576
@.str.108 = private unnamed_addr constant [7 x i8] c"SETUID\00", align 1, !dbg !578
@.str.109 = private unnamed_addr constant [5 x i8] c"SGID\00", align 1, !dbg !580
@.str.110 = private unnamed_addr constant [7 x i8] c"SETGID\00", align 1, !dbg !582
@.str.111 = private unnamed_addr constant [7 x i8] c"STICKY\00", align 1, !dbg !584
@.str.112 = private unnamed_addr constant [15 x i8] c"OTHER_WRITABLE\00", align 1, !dbg !586
@.str.113 = private unnamed_addr constant [4 x i8] c"OWR\00", align 1, !dbg !588
@.str.114 = private unnamed_addr constant [22 x i8] c"STICKY_OTHER_WRITABLE\00", align 1, !dbg !590
@.str.115 = private unnamed_addr constant [4 x i8] c"OWT\00", align 1, !dbg !592
@.str.116 = private unnamed_addr constant [11 x i8] c"CAPABILITY\00", align 1, !dbg !594
@.str.117 = private unnamed_addr constant [14 x i8] c"MULTIHARDLINK\00", align 1, !dbg !596
@.str.118 = private unnamed_addr constant [9 x i8] c"CLRTOEOL\00", align 1, !dbg !598
@.str.119 = private unnamed_addr constant [3 x i8] c"no\00", align 1, !dbg !606
@.str.120 = private unnamed_addr constant [3 x i8] c"fi\00", align 1, !dbg !608
@.str.121 = private unnamed_addr constant [3 x i8] c"rs\00", align 1, !dbg !610
@.str.122 = private unnamed_addr constant [3 x i8] c"di\00", align 1, !dbg !612
@.str.123 = private unnamed_addr constant [3 x i8] c"ln\00", align 1, !dbg !614
@.str.124 = private unnamed_addr constant [3 x i8] c"or\00", align 1, !dbg !616
@.str.125 = private unnamed_addr constant [3 x i8] c"mi\00", align 1, !dbg !618
@.str.126 = private unnamed_addr constant [3 x i8] c"pi\00", align 1, !dbg !620
@.str.127 = private unnamed_addr constant [3 x i8] c"so\00", align 1, !dbg !622
@.str.128 = private unnamed_addr constant [3 x i8] c"bd\00", align 1, !dbg !624
@.str.129 = private unnamed_addr constant [3 x i8] c"cd\00", align 1, !dbg !626
@.str.130 = private unnamed_addr constant [3 x i8] c"do\00", align 1, !dbg !628
@.str.131 = private unnamed_addr constant [3 x i8] c"ex\00", align 1, !dbg !630
@.str.132 = private unnamed_addr constant [3 x i8] c"lc\00", align 1, !dbg !632
@.str.133 = private unnamed_addr constant [3 x i8] c"rc\00", align 1, !dbg !634
@.str.134 = private unnamed_addr constant [3 x i8] c"ec\00", align 1, !dbg !636
@.str.135 = private unnamed_addr constant [3 x i8] c"su\00", align 1, !dbg !638
@.str.136 = private unnamed_addr constant [3 x i8] c"sg\00", align 1, !dbg !640
@.str.137 = private unnamed_addr constant [3 x i8] c"st\00", align 1, !dbg !642
@.str.138 = private unnamed_addr constant [3 x i8] c"ow\00", align 1, !dbg !644
@.str.139 = private unnamed_addr constant [3 x i8] c"tw\00", align 1, !dbg !646
@.str.140 = private unnamed_addr constant [3 x i8] c"ca\00", align 1, !dbg !648
@.str.141 = private unnamed_addr constant [3 x i8] c"mh\00", align 1, !dbg !650
@.str.142 = private unnamed_addr constant [3 x i8] c"cl\00", align 1, !dbg !652
@.str.143 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !656
@.str.144 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !658
@stdin = external local_unnamed_addr global ptr, align 8
@.str.145 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !660
@.str.31 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !673
@Version = dso_local local_unnamed_addr global ptr @.str.31, align 8, !dbg !676
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !680
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !693
@.str.38 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !685
@.str.1.39 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !687
@.str.2.40 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !689
@.str.3.41 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !691
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !695
@.str.42 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !701
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !737
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !703
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !727
@.str.1.48 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !729
@.str.2.50 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !731
@.str.3.49 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !733
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !735
@.str.4.43 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !739
@.str.5.44 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !741
@.str.6.45 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !743
@.str.146 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1, !dbg !748
@obstack_alloc_failed_handler = dso_local local_unnamed_addr global ptr @print_and_abort, align 8, !dbg !751
@stderr = external local_unnamed_addr global ptr, align 8
@.str.153 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !757
@.str.1.151 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !759
@.str.2.152 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !761
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !763
@.str.162 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !769
@.str.1.163 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !771
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !773
@.str.166 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !804
@.str.1.167 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !807
@.str.2.168 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !809
@.str.3.169 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !811
@.str.4.170 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !813
@.str.5.171 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !815
@.str.6.172 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !817
@.str.7.173 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !819
@.str.8.174 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !821
@.str.9.175 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !823
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.166, ptr @.str.1.167, ptr @.str.2.168, ptr @.str.3.169, ptr @.str.4.170, ptr @.str.5.171, ptr @.str.6.172, ptr @.str.7.173, ptr @.str.8.174, ptr @.str.9.175, ptr null], align 8, !dbg !825
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !838
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !852
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !890
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !897
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !854
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !899
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !842
@.str.10.178 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !859
@.str.11.176 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !861
@.str.12.179 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !863
@.str.13.177 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !865
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !867
@.str.186 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !902
@.str.1.187 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !905
@.str.2.188 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !907
@.str.3.189 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !909
@.str.4.190 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !911
@.str.5.191 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !913
@.str.6.192 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !918
@.str.7.193 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !923
@.str.8.194 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !925
@.str.9.195 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !930
@.str.10.196 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !935
@.str.11.197 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !937
@.str.12.198 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !942
@.str.13.199 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !944
@.str.14.200 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !946
@.str.15.201 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !951
@.str.16.202 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !956
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.207 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !958
@.str.18.208 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !960
@.str.19.209 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !962
@.str.20.210 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !964
@.str.21.211 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !966
@.str.22.212 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !968
@.str.23.213 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !970
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !975
@exit_failure = dso_local global i32 1, align 4, !dbg !983
@.str.228 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !989
@.str.1.226 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !992
@.str.2.227 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !994
@.str.233 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !996
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !999
@.str.238 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !1014
@.str.1.239 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !1017

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1098 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1102, metadata !DIExpression()), !dbg !1103
  %2 = icmp eq i32 %0, 0, !dbg !1104
  br i1 %2, label %8, label %3, !dbg !1106

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1107, !tbaa !1109
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !1107
  %6 = load ptr, ptr @program_name, align 8, !dbg !1107, !tbaa !1109
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !1107
  br label %38, !dbg !1107

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !1113
  %10 = load ptr, ptr @program_name, align 8, !dbg !1113, !tbaa !1109
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #39, !dbg !1113
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !1115
  %13 = load ptr, ptr @stdout, align 8, !dbg !1115, !tbaa !1109
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1115
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !1116
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !1116
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !1117
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !1117
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !1118
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !1118
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !1119
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !1119
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !1120
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !1120
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #39, !dbg !1121
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !1121
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #39, !dbg !1122
  %22 = load ptr, ptr @stdout, align 8, !dbg !1122, !tbaa !1109
  %23 = tail call i32 @fputs_unlocked(ptr noundef %21, ptr noundef %22), !dbg !1122
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1123, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata !1142, metadata !1136, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata ptr poison, metadata !1135, metadata !DIExpression()), !dbg !1140
  tail call void @emit_bug_reporting_address() #39, !dbg !1143
  %24 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !1144
  call void @llvm.dbg.value(metadata ptr %24, metadata !1138, metadata !DIExpression()), !dbg !1140
  %25 = icmp eq ptr %24, null, !dbg !1145
  br i1 %25, label %33, label %26, !dbg !1147

26:                                               ; preds = %8
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(4) @.str.57, i64 noundef 3) #40, !dbg !1148
  %28 = icmp eq i32 %27, 0, !dbg !1148
  br i1 %28, label %33, label %29, !dbg !1149

29:                                               ; preds = %26
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.58, i32 noundef 5) #39, !dbg !1150
  %31 = load ptr, ptr @stdout, align 8, !dbg !1150, !tbaa !1109
  %32 = tail call i32 @fputs_unlocked(ptr noundef %30, ptr noundef %31), !dbg !1150
  br label %33, !dbg !1152

33:                                               ; preds = %8, %26, %29
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1135, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1139, metadata !DIExpression()), !dbg !1140
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #39, !dbg !1153
  %35 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %34, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.3) #39, !dbg !1153
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #39, !dbg !1154
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.61) #39, !dbg !1154
  br label %38

38:                                               ; preds = %33, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !1155
  unreachable, !dbg !1155
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1156 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1160 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1166 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1169 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !331 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !335, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !336, metadata !DIExpression()), !dbg !1172
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1173, !tbaa !1174
  %3 = icmp eq i32 %2, -1, !dbg !1176
  br i1 %3, label %4, label %16, !dbg !1177

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.27) #39, !dbg !1178
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !337, metadata !DIExpression()), !dbg !1179
  %6 = icmp eq ptr %5, null, !dbg !1180
  br i1 %6, label %14, label %7, !dbg !1181

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1182, !tbaa !1183
  %9 = icmp eq i8 %8, 0, !dbg !1182
  br i1 %9, label %14, label %10, !dbg !1184

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1185, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata ptr @.str.28, metadata !1191, metadata !DIExpression()), !dbg !1192
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.28) #40, !dbg !1194
  %12 = icmp eq i32 %11, 0, !dbg !1195
  %13 = zext i1 %12 to i32, !dbg !1184
  br label %14, !dbg !1184

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1196, !tbaa !1174
  br label %16, !dbg !1197

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1198
  %18 = icmp eq i32 %17, 0, !dbg !1198
  br i1 %18, label %22, label %19, !dbg !1200

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1201, !tbaa !1109
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1201
  br label %121, !dbg !1203

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !340, metadata !DIExpression()), !dbg !1172
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.29) #40, !dbg !1204
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1205
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !341, metadata !DIExpression()), !dbg !1172
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !1206
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !342, metadata !DIExpression()), !dbg !1172
  %26 = icmp eq ptr %25, null, !dbg !1207
  br i1 %26, label %53, label %27, !dbg !1208

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1209
  br i1 %28, label %53, label %29, !dbg !1210

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !343, metadata !DIExpression()), !dbg !1211
  tail call void @llvm.dbg.value(metadata i64 0, metadata !347, metadata !DIExpression()), !dbg !1211
  %30 = icmp ult ptr %24, %25, !dbg !1212
  br i1 %30, label %31, label %53, !dbg !1213

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !1172
  %33 = load ptr, ptr %32, align 8, !tbaa !1109
  br label %34, !dbg !1213

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !343, metadata !DIExpression()), !dbg !1211
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !347, metadata !DIExpression()), !dbg !1211
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1214
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !343, metadata !DIExpression()), !dbg !1211
  %38 = load i8, ptr %35, align 1, !dbg !1214, !tbaa !1183
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1214
  %41 = load i16, ptr %40, align 2, !dbg !1214, !tbaa !1215
  %42 = freeze i16 %41, !dbg !1217
  %43 = lshr i16 %42, 13, !dbg !1217
  %44 = and i16 %43, 1, !dbg !1217
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1218
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !347, metadata !DIExpression()), !dbg !1211
  %47 = icmp ult ptr %37, %25, !dbg !1212
  %48 = icmp ult i64 %46, 2, !dbg !1219
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1219
  br i1 %49, label %34, label %50, !dbg !1213, !llvm.loop !1220

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !1218
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !1222
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1224
  br label %53, !dbg !1224

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1172
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !340, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !342, metadata !DIExpression()), !dbg !1172
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.30) #40, !dbg !1225
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !348, metadata !DIExpression()), !dbg !1172
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !1226
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !349, metadata !DIExpression()), !dbg !1172
  br label %58, !dbg !1227

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !1172
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !340, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !349, metadata !DIExpression()), !dbg !1172
  %61 = load i8, ptr %59, align 1, !dbg !1228, !tbaa !1183
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !1229

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1230
  %64 = load i8, ptr %63, align 1, !dbg !1233, !tbaa !1183
  %65 = icmp ne i8 %64, 45, !dbg !1234
  %66 = select i1 %65, i1 %60, i1 false, !dbg !1235
  br label %67, !dbg !1235

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !340, metadata !DIExpression()), !dbg !1172
  %69 = tail call ptr @__ctype_b_loc() #42, !dbg !1236
  %70 = load ptr, ptr %69, align 8, !dbg !1236, !tbaa !1109
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !1236
  %73 = load i16, ptr %72, align 2, !dbg !1236, !tbaa !1215
  %74 = and i16 %73, 8192, !dbg !1236
  %75 = icmp eq i16 %74, 0, !dbg !1236
  br i1 %75, label %89, label %76, !dbg !1238

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !1239
  br i1 %77, label %91, label %78, !dbg !1242

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1243
  %80 = load i8, ptr %79, align 1, !dbg !1243, !tbaa !1183
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !1243
  %83 = load i16, ptr %82, align 2, !dbg !1243, !tbaa !1215
  %84 = and i16 %83, 8192, !dbg !1243
  %85 = icmp eq i16 %84, 0, !dbg !1243
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !1244
  br i1 %88, label %89, label %91, !dbg !1244

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1245
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !349, metadata !DIExpression()), !dbg !1172
  br label %58, !dbg !1227, !llvm.loop !1246

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !1172
  %92 = ptrtoint ptr %24 to i64, !dbg !1248
  %93 = load ptr, ptr @stdout, align 8, !dbg !1248, !tbaa !1109
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !1248
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata !1142, metadata !1191, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1185, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata !1142, metadata !1191, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1185, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata !1142, metadata !1191, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1185, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata !1142, metadata !1191, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1185, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata !1142, metadata !1191, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1185, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata !1142, metadata !1191, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1185, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata !1142, metadata !1191, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1185, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata !1142, metadata !1191, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1185, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata !1142, metadata !1191, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1185, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata !1142, metadata !1191, metadata !DIExpression()), !dbg !1267
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !354, metadata !DIExpression()), !dbg !1172
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.44, i64 noundef 6) #40, !dbg !1269
  %96 = icmp eq i32 %95, 0, !dbg !1269
  br i1 %96, label %100, label %97, !dbg !1271

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.45, i64 noundef 9) #40, !dbg !1272
  %99 = icmp eq i32 %98, 0, !dbg !1272
  br i1 %99, label %100, label %103, !dbg !1273

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !1274
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #39, !dbg !1274
  br label %106, !dbg !1276

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !1277
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #39, !dbg !1277
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !1279, !tbaa !1109
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.50, ptr noundef %107), !dbg !1279
  %109 = load ptr, ptr @stdout, align 8, !dbg !1280, !tbaa !1109
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.51, ptr noundef %109), !dbg !1280
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !1281
  %112 = sub i64 %111, %92, !dbg !1281
  %113 = load ptr, ptr @stdout, align 8, !dbg !1281, !tbaa !1109
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !1281
  %115 = load ptr, ptr @stdout, align 8, !dbg !1282, !tbaa !1109
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.52, ptr noundef %115), !dbg !1282
  %117 = load ptr, ptr @stdout, align 8, !dbg !1283, !tbaa !1109
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.53, ptr noundef %117), !dbg !1283
  %119 = load ptr, ptr @stdout, align 8, !dbg !1284, !tbaa !1109
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !1284
  br label %121, !dbg !1285

121:                                              ; preds = %106, %19
  ret void, !dbg !1285
}

; Function Attrs: nounwind
declare !dbg !1286 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1290 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1294 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1296 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1299 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1302 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1305 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1308 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1314 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1315 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1321 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1326, metadata !DIExpression()), !dbg !1354
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1327, metadata !DIExpression()), !dbg !1354
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1328, metadata !DIExpression()), !dbg !1354
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1330, metadata !DIExpression()), !dbg !1354
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1331, metadata !DIExpression()), !dbg !1354
  %3 = load ptr, ptr %1, align 8, !dbg !1355, !tbaa !1109
  tail call void @set_program_name(ptr noundef %3) #39, !dbg !1356
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #39, !dbg !1357
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #39, !dbg !1358
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #39, !dbg !1359
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1360
  br label %8, !dbg !1361

8:                                                ; preds = %18, %2
  %9 = phi i1 [ true, %18 ], [ false, %2 ]
  %10 = phi i32 [ %.lcssa3, %18 ], [ 2, %2 ]
  br label %11, !dbg !1361

11:                                               ; preds = %16, %8
  %12 = phi i32 [ %10, %8 ], [ %17, %16 ]
  br label %13, !dbg !1361

13:                                               ; preds = %11, %19
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1330, metadata !DIExpression()), !dbg !1354
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1331, metadata !DIExpression()), !dbg !1354
  %14 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @long_options, ptr noundef null) #39, !dbg !1362
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1329, metadata !DIExpression()), !dbg !1354
  switch i32 %14, label %25 [
    i32 -1, label %26
    i32 98, label %.loopexit1
    i32 99, label %15
    i32 112, label %18
    i32 256, label %19
    i32 -2, label %20
    i32 -3, label %21
  ], !dbg !1361, !llvm.loop !1363

15:                                               ; preds = %13
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1330, metadata !DIExpression()), !dbg !1354
  br label %16, !dbg !1365

.loopexit1:                                       ; preds = %13
  br label %16, !dbg !1361

16:                                               ; preds = %.loopexit1, %15
  %17 = phi i32 [ 1, %15 ], [ 0, %.loopexit1 ]
  br label %11, !dbg !1361, !llvm.loop !1363

18:                                               ; preds = %13
  %.lcssa3 = phi i32 [ %12, %13 ]
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1331, metadata !DIExpression()), !dbg !1354
  br label %8, !dbg !1367, !llvm.loop !1363

19:                                               ; preds = %13
  store i1 true, ptr @print_ls_colors, align 1, !dbg !1368
  br label %13, !dbg !1369, !llvm.loop !1363

20:                                               ; preds = %13
  tail call void @usage(i32 noundef 0) #43, !dbg !1370
  unreachable, !dbg !1370

21:                                               ; preds = %13
  %22 = load ptr, ptr @stdout, align 8, !dbg !1371, !tbaa !1109
  %23 = load ptr, ptr @Version, align 8, !dbg !1371, !tbaa !1109
  %24 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.16) #39, !dbg !1371
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %22, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15, ptr noundef %23, ptr noundef %24, ptr noundef null) #39, !dbg !1371
  tail call void @exit(i32 noundef 0) #41, !dbg !1371
  unreachable, !dbg !1371

25:                                               ; preds = %13
  tail call void @usage(i32 noundef 1) #43, !dbg !1372
  unreachable, !dbg !1372

26:                                               ; preds = %13
  %.lcssa6 = phi i1 [ %9, %13 ]
  %.lcssa2 = phi i32 [ %12, %13 ]
  %27 = load i32, ptr @optind, align 4, !dbg !1373, !tbaa !1174
  %28 = sub nsw i32 %0, %27, !dbg !1374
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1326, metadata !DIExpression()), !dbg !1354
  %29 = sext i32 %27 to i64, !dbg !1375
  %30 = getelementptr inbounds ptr, ptr %1, i64 %29, !dbg !1375
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1327, metadata !DIExpression()), !dbg !1354
  %31 = load i1, ptr @print_ls_colors, align 1, !dbg !1376
  %32 = or i1 %.lcssa6, %31, !dbg !1378
  %33 = icmp ne i32 %.lcssa2, 2
  %34 = select i1 %32, i1 %33, i1 false, !dbg !1379
  br i1 %34, label %35, label %37, !dbg !1379

35:                                               ; preds = %26
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #39, !dbg !1380
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %36) #39, !dbg !1380
  tail call void @usage(i32 noundef 1) #43, !dbg !1382
  unreachable, !dbg !1382

37:                                               ; preds = %26
  %38 = xor i1 %.lcssa6, true, !dbg !1383
  %39 = and i1 %.lcssa6, %31, !dbg !1383
  br i1 %39, label %40, label %42, !dbg !1383

40:                                               ; preds = %37
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #39, !dbg !1385
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %41) #39, !dbg !1385
  tail call void @usage(i32 noundef 1) #43, !dbg !1387
  unreachable, !dbg !1387

42:                                               ; preds = %37
  %43 = zext i1 %38 to i32, !dbg !1388
  %44 = icmp sgt i32 %28, %43, !dbg !1390
  br i1 %44, label %45, label %56, !dbg !1391

45:                                               ; preds = %42
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #39, !dbg !1392
  %47 = zext i1 %38 to i64
  %48 = getelementptr inbounds ptr, ptr %30, i64 %47, !dbg !1392
  %49 = load ptr, ptr %48, align 8, !dbg !1392, !tbaa !1109
  %50 = tail call ptr @quote(ptr noundef %49) #39, !dbg !1392
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %46, ptr noundef %50) #39, !dbg !1392
  br i1 %.lcssa6, label %51, label %55, !dbg !1394

51:                                               ; preds = %45
  %52 = load ptr, ptr @stderr, align 8, !dbg !1395, !tbaa !1109
  %53 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #39, !dbg !1395
  %54 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %52, i32 noundef 1, ptr noundef nonnull @.str.20, ptr noundef %53) #39, !dbg !1395
  br label %55, !dbg !1395

55:                                               ; preds = %51, %45
  tail call void @usage(i32 noundef 1) #43, !dbg !1397
  unreachable, !dbg !1397

56:                                               ; preds = %42
  br i1 %.lcssa6, label %.preheader, label %66, !dbg !1398

.preheader:                                       ; preds = %56
  br label %57, !dbg !1399

57:                                               ; preds = %.preheader, %57
  %58 = phi ptr [ %62, %57 ], [ @G_line, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !1332, metadata !DIExpression()), !dbg !1400
  %59 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %58), !dbg !1401
  %60 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %58) #40, !dbg !1403
  %61 = add i64 %60, 1, !dbg !1404
  %62 = getelementptr inbounds i8, ptr %58, i64 %61, !dbg !1405
  tail call void @llvm.dbg.value(metadata ptr %62, metadata !1332, metadata !DIExpression()), !dbg !1400
  %63 = ptrtoint ptr %62 to i64, !dbg !1406
  %64 = sub i64 %63, ptrtoint (ptr @G_line to i64), !dbg !1406
  %65 = icmp ult i64 %64, 5616, !dbg !1407
  br i1 %65, label %57, label %.loopexit, !dbg !1399, !llvm.loop !1408

66:                                               ; preds = %56
  %67 = or i1 %33, %31, !dbg !1410
  br i1 %67, label %84, label %68, !dbg !1410

68:                                               ; preds = %66
  %69 = tail call ptr @getenv(ptr noundef nonnull @.str.70) #39, !dbg !1412
  call void @llvm.dbg.value(metadata ptr %69, metadata !1417, metadata !DIExpression()), !dbg !1420
  %70 = icmp eq ptr %69, null, !dbg !1421
  br i1 %70, label %82, label %71, !dbg !1423

71:                                               ; preds = %68
  %72 = load i8, ptr %69, align 1, !dbg !1424, !tbaa !1183
  %73 = icmp eq i8 %72, 0, !dbg !1425
  br i1 %73, label %82, label %74, !dbg !1426

74:                                               ; preds = %71
  %75 = tail call ptr @last_component(ptr noundef nonnull %69) #40, !dbg !1427
  call void @llvm.dbg.value(metadata ptr %75, metadata !1417, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata ptr %75, metadata !1185, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata ptr @.str.64, metadata !1191, metadata !DIExpression()), !dbg !1428
  %76 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(4) @.str.64) #40, !dbg !1431
  %77 = icmp eq i32 %76, 0, !dbg !1432
  br i1 %77, label %84, label %78, !dbg !1433

78:                                               ; preds = %74
  call void @llvm.dbg.value(metadata ptr %75, metadata !1185, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata ptr @.str.71, metadata !1191, metadata !DIExpression()), !dbg !1434
  %79 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(5) @.str.71) #40, !dbg !1436
  %80 = icmp eq i32 %79, 0, !dbg !1437
  %81 = zext i1 %80 to i32, !dbg !1438
  br label %84, !dbg !1438

82:                                               ; preds = %71, %68
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1330, metadata !DIExpression()), !dbg !1354
  %83 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #39, !dbg !1439
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %83) #39, !dbg !1439
  unreachable, !dbg !1439

84:                                               ; preds = %66, %78, %74
  %85 = phi i32 [ %.lcssa2, %66 ], [ 1, %74 ], [ %81, %78 ], !dbg !1354
  tail call void @llvm.dbg.value(metadata i32 %85, metadata !1330, metadata !DIExpression()), !dbg !1354
  %86 = tail call i32 @rpl_obstack_begin(ptr noundef nonnull @lsc_obstack, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @malloc, ptr noundef nonnull @free) #39, !dbg !1441
  %87 = icmp eq i32 %27, %0, !dbg !1442
  br i1 %87, label %88, label %90, !dbg !1444

88:                                               ; preds = %84
  %89 = tail call fastcc i1 @dc_parse_stream(ptr noundef null, ptr noundef null), !dbg !1445
  tail call void @llvm.dbg.value(metadata i1 %89, metadata !1328, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1354
  tail call void @llvm.dbg.value(metadata i1 %89, metadata !1328, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1354
  br i1 %89, label %109, label %138, !dbg !1446

90:                                               ; preds = %84
  %91 = load ptr, ptr %30, align 8, !dbg !1447, !tbaa !1109
  call void @llvm.dbg.value(metadata ptr %91, metadata !1448, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata ptr %91, metadata !1185, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata ptr @.str.143, metadata !1191, metadata !DIExpression()), !dbg !1456
  %92 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %91, ptr noundef nonnull dereferenceable(2) @.str.143) #40, !dbg !1459
  %93 = icmp eq i32 %92, 0, !dbg !1460
  br i1 %93, label %98, label %94, !dbg !1461

94:                                               ; preds = %90
  %95 = load ptr, ptr @stdin, align 8, !dbg !1462, !tbaa !1109
  %96 = tail call ptr @freopen_safer(ptr noundef %91, ptr noundef nonnull @.str.144, ptr noundef %95) #39, !dbg !1463
  %97 = icmp eq ptr %96, null, !dbg !1464
  br i1 %97, label %104, label %98, !dbg !1465

98:                                               ; preds = %94, %90
  %99 = load ptr, ptr @stdin, align 8, !dbg !1466, !tbaa !1109
  %100 = tail call fastcc i1 @dc_parse_stream(ptr noundef %99, ptr noundef %91), !dbg !1467
  call void @llvm.dbg.value(metadata i1 %100, metadata !1453, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1454
  %101 = load ptr, ptr @stdin, align 8, !dbg !1468, !tbaa !1109
  %102 = tail call i32 @rpl_fclose(ptr noundef %101) #39, !dbg !1470
  %103 = icmp eq i32 %102, 0, !dbg !1471
  br i1 %103, label %108, label %104, !dbg !1472

104:                                              ; preds = %94, %98
  %105 = tail call ptr @__errno_location() #42, !dbg !1454
  %106 = load i32, ptr %105, align 4, !dbg !1454, !tbaa !1174
  %107 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %91) #39, !dbg !1454
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %106, ptr noundef nonnull @.str.145, ptr noundef %107) #39, !dbg !1454
  tail call void @llvm.dbg.value(metadata i1 false, metadata !1328, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1354
  br label %138, !dbg !1446

108:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i1 %100, metadata !1328, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1354
  br i1 %100, label %109, label %138, !dbg !1446

109:                                              ; preds = %88, %108
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1339, metadata !DIExpression()), !dbg !1473
  %110 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1474, !tbaa !1475
  %111 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 2), align 8, !dbg !1474, !tbaa !1478
  %112 = ptrtoint ptr %110 to i64, !dbg !1474
  %113 = ptrtoint ptr %111 to i64, !dbg !1474
  %114 = sub i64 %112, %113, !dbg !1474
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !1335, metadata !DIExpression()), !dbg !1479
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1344, metadata !DIExpression()), !dbg !1480
  tail call void @llvm.dbg.value(metadata ptr %111, metadata !1347, metadata !DIExpression()), !dbg !1480
  %115 = icmp eq ptr %110, %111, !dbg !1481
  br i1 %115, label %116, label %119, !dbg !1483

116:                                              ; preds = %109
  %117 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 10), align 8, !dbg !1481
  %118 = or i8 %117, 2, !dbg !1481
  store i8 %118, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 10), align 8, !dbg !1481
  br label %119, !dbg !1481

119:                                              ; preds = %116, %109
  %120 = sub i64 0, %112, !dbg !1483
  %121 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 6), align 8, !dbg !1483, !tbaa !1484
  %122 = and i64 %121, %120, !dbg !1483
  %123 = getelementptr inbounds i8, ptr %110, i64 %122, !dbg !1483
  store ptr %123, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1483, !tbaa !1475
  store ptr %123, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 2), align 8, !dbg !1483, !tbaa !1478
  tail call void @llvm.dbg.value(metadata ptr %111, metadata !1343, metadata !DIExpression()), !dbg !1479
  %124 = icmp eq i32 %85, 0, !dbg !1485
  %125 = select i1 %124, ptr @.str.24, ptr @.str.26
  tail call void @llvm.dbg.value(metadata ptr %125, metadata !1349, metadata !DIExpression()), !dbg !1479
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !1348, metadata !DIExpression()), !dbg !1479
  %126 = load i1, ptr @print_ls_colors, align 1, !dbg !1487
  br i1 %126, label %131, label %127, !dbg !1489

127:                                              ; preds = %119
  %128 = select i1 %124, ptr @.str.23, ptr @.str.25
  tail call void @llvm.dbg.value(metadata ptr %128, metadata !1348, metadata !DIExpression()), !dbg !1479
  %129 = load ptr, ptr @stdout, align 8, !dbg !1490, !tbaa !1109
  %130 = tail call i32 @fputs_unlocked(ptr noundef nonnull %128, ptr noundef %129), !dbg !1490
  br label %131, !dbg !1490

131:                                              ; preds = %127, %119
  %132 = load ptr, ptr @stdout, align 8, !dbg !1491, !tbaa !1109
  %133 = tail call i64 @fwrite_unlocked(ptr noundef %111, i64 noundef 1, i64 noundef %114, ptr noundef %132), !dbg !1491
  %134 = load i1, ptr @print_ls_colors, align 1, !dbg !1492
  br i1 %134, label %138, label %135, !dbg !1494

135:                                              ; preds = %131
  %136 = load ptr, ptr @stdout, align 8, !dbg !1495, !tbaa !1109
  %137 = tail call i32 @fputs_unlocked(ptr noundef nonnull %125, ptr noundef %136), !dbg !1495
  br label %138, !dbg !1495

.loopexit:                                        ; preds = %57
  br label %138, !dbg !1496

138:                                              ; preds = %.loopexit, %88, %104, %131, %135, %108
  %139 = phi i32 [ 1, %108 ], [ 0, %135 ], [ 0, %131 ], [ 1, %104 ], [ 1, %88 ], [ 0, %.loopexit ]
  tail call void @llvm.dbg.value(metadata i32 %139, metadata !1328, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1354
  ret i32 %139, !dbg !1496
}

; Function Attrs: nounwind
declare !dbg !1497 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1500 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1501 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1504 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1510 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1513 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1516 void @free(ptr allocptr nocapture noundef) #12

; Function Attrs: nounwind uwtable
define internal fastcc i1 @dc_parse_stream(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !dbg !109 {
  %3 = alloca ptr, align 8, !DIAssignID !1517
  call void @llvm.dbg.assign(metadata i1 undef, metadata !182, metadata !DIExpression(), metadata !1517, metadata ptr %3, metadata !DIExpression()), !dbg !1518
  %4 = alloca i64, align 8, !DIAssignID !1519
  call void @llvm.dbg.assign(metadata i1 undef, metadata !183, metadata !DIExpression(), metadata !1519, metadata ptr %4, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !174, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !175, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata i64 0, metadata !176, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata ptr @G_line, metadata !181, metadata !DIExpression()), !dbg !1518
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #39, !dbg !1520
  store ptr null, ptr %3, align 8, !dbg !1521, !tbaa !1109, !DIAssignID !1522
  call void @llvm.dbg.assign(metadata ptr null, metadata !182, metadata !DIExpression(), metadata !1522, metadata ptr %3, metadata !DIExpression()), !dbg !1518
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1523
  store i64 0, ptr %4, align 8, !dbg !1524, !tbaa !1525, !DIAssignID !1526
  call void @llvm.dbg.assign(metadata i64 0, metadata !183, metadata !DIExpression(), metadata !1526, metadata ptr %4, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata i8 1, metadata !187, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata i32 3, metadata !188, metadata !DIExpression()), !dbg !1518
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.27) #39, !dbg !1527
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !185, metadata !DIExpression()), !dbg !1518
  %6 = icmp eq ptr %5, null, !dbg !1528
  br i1 %6, label %10, label %7, !dbg !1530

7:                                                ; preds = %2
  %8 = load i8, ptr %5, align 1, !dbg !1531, !tbaa !1183
  %9 = icmp eq i8 %8, 0, !dbg !1532
  br i1 %9, label %10, label %11, !dbg !1533

10:                                               ; preds = %7, %2
  tail call void @llvm.dbg.value(metadata ptr @.str.72, metadata !185, metadata !DIExpression()), !dbg !1518
  br label %11, !dbg !1534

11:                                               ; preds = %10, %7
  %12 = phi ptr [ @.str.72, %10 ], [ %5, %7 ], !dbg !1518
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !185, metadata !DIExpression()), !dbg !1518
  %13 = tail call ptr @getenv(ptr noundef nonnull @.str.73) #39, !dbg !1535
  tail call void @llvm.dbg.value(metadata ptr %13, metadata !186, metadata !DIExpression()), !dbg !1518
  %14 = icmp eq ptr %13, null, !dbg !1536
  %15 = select i1 %14, ptr @.str.11, ptr %13, !dbg !1538
  tail call void @llvm.dbg.value(metadata ptr %15, metadata !186, metadata !DIExpression()), !dbg !1518
  %16 = icmp eq ptr %0, null
  %17 = icmp eq ptr %1, null
  br label %18, !dbg !1539

18:                                               ; preds = %156, %11
  %19 = phi i64 [ %.lcssa10, %156 ], [ 0, %11 ]
  %20 = phi i64 [ %.lcssa11, %156 ], [ 0, %11 ]
  %21 = phi i1 [ %158, %156 ], [ true, %11 ]
  %22 = phi i32 [ %159, %156 ], [ 3, %11 ]
  br label %24, !dbg !1540

23:                                               ; preds = %55, %55
  br label %24, !dbg !1540

24:                                               ; preds = %18, %23
  %25 = phi i64 [ %28, %23 ], [ %19, %18 ], !dbg !1518
  %26 = phi i64 [ %53, %23 ], [ %20, %18 ]
  %27 = getelementptr inbounds i8, ptr @G_line, i64 %26, !dbg !1541
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !188, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !187, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata ptr %27, metadata !181, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !176, metadata !DIExpression()), !dbg !1518
  %28 = add nuw nsw i64 %25, 1, !dbg !1541
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !176, metadata !DIExpression()), !dbg !1518
  br i1 %16, label %46, label %29, !dbg !1540

29:                                               ; preds = %24
  call void @llvm.dbg.value(metadata ptr %3, metadata !1542, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata ptr %4, metadata !1549, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata ptr %0, metadata !1550, metadata !DIExpression()), !dbg !1551
  %30 = call i64 @__getdelim(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 10, ptr noundef nonnull %0) #39, !dbg !1556
  %31 = icmp slt i64 %30, 1, !dbg !1557
  br i1 %31, label %32, label %44, !dbg !1558

32:                                               ; preds = %29
  %.lcssa21 = phi i1 [ %21, %29 ]
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1559, metadata !DIExpression()), !dbg !1564
  %33 = load i32, ptr %0, align 8, !dbg !1568, !tbaa !1569
  %34 = and i32 %33, 32, !dbg !1571
  %35 = icmp eq i32 %34, 0, !dbg !1571
  br i1 %35, label %41, label %36, !dbg !1572

36:                                               ; preds = %32
  %37 = tail call ptr @__errno_location() #42, !dbg !1573
  %38 = load i32, ptr %37, align 4, !dbg !1573, !tbaa !1174
  %39 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.74, i32 noundef 5) #39, !dbg !1573
  %40 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #39, !dbg !1573
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %38, ptr noundef %39, ptr noundef %40) #39, !dbg !1573
  tail call void @llvm.dbg.value(metadata i8 0, metadata !187, metadata !DIExpression()), !dbg !1518
  br label %41, !dbg !1575

41:                                               ; preds = %36, %32
  %42 = phi i1 [ false, %36 ], [ %.lcssa21, %32 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !187, metadata !DIExpression()), !dbg !1518
  %43 = load ptr, ptr %3, align 8, !dbg !1576, !tbaa !1109
  call void @free(ptr noundef %43) #39, !dbg !1577
  br label %160, !dbg !1578

44:                                               ; preds = %29
  %45 = load ptr, ptr %3, align 8, !dbg !1579, !tbaa !1109
  tail call void @llvm.dbg.value(metadata ptr %45, metadata !184, metadata !DIExpression()), !dbg !1518
  br label %52, !dbg !1580

46:                                               ; preds = %24
  %47 = icmp eq i64 %26, 5616, !dbg !1581
  br i1 %47, label %.loopexit4, label %48, !dbg !1584

48:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %27, metadata !184, metadata !DIExpression()), !dbg !1518
  %49 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27) #40, !dbg !1585
  %50 = add i64 %26, 1, !dbg !1586
  %51 = add i64 %50, %49, !dbg !1587
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr @G_line, i64 %51), metadata !181, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1518
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i64 [ %26, %44 ], [ %51, %48 ]
  %54 = phi ptr [ %45, %44 ], [ %27, %48 ], !dbg !1588
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !184, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr @G_line, i64 %53), metadata !181, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1518
  call void @llvm.dbg.value(metadata ptr %54, metadata !1589, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata ptr undef, metadata !1594, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata ptr undef, metadata !1595, metadata !DIExpression()), !dbg !1599
  tail call void @llvm.dbg.value(metadata ptr null, metadata !189, metadata !DIExpression()), !dbg !1601
  tail call void @llvm.dbg.value(metadata ptr null, metadata !191, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata ptr %54, metadata !1596, metadata !DIExpression()), !dbg !1599
  br label %55, !dbg !1602

55:                                               ; preds = %58, %52
  %56 = phi ptr [ %54, %52 ], [ %59, %58 ], !dbg !1604
  call void @llvm.dbg.value(metadata ptr %56, metadata !1596, metadata !DIExpression()), !dbg !1599
  %57 = load i8, ptr %56, align 1, !dbg !1605, !tbaa !1183
  call void @llvm.dbg.value(metadata i8 %57, metadata !1607, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1613
  switch i8 %57, label %.loopexit [
    i8 32, label %58
    i8 9, label %58
    i8 10, label %58
    i8 11, label %58
    i8 12, label %58
    i8 13, label %58
    i8 0, label %23
    i8 35, label %23
  ], !dbg !1615, !llvm.loop !1616

58:                                               ; preds = %55, %55, %55, %55, %55, %55
  %59 = getelementptr inbounds i8, ptr %56, i64 1, !dbg !1618
  call void @llvm.dbg.value(metadata ptr %59, metadata !1596, metadata !DIExpression()), !dbg !1599
  br label %55, !dbg !1619, !llvm.loop !1620

.loopexit:                                        ; preds = %55
  %.lcssa11 = phi i64 [ %53, %55 ]
  %.lcssa10 = phi i64 [ %28, %55 ], !dbg !1541
  %.lcssa6 = phi ptr [ %56, %55 ], !dbg !1604
  %.lcssa = phi i8 [ %57, %55 ], !dbg !1605
  br label %60, !dbg !1623

60:                                               ; preds = %.loopexit, %63
  %61 = phi i8 [ %65, %63 ], [ %.lcssa, %.loopexit ], !dbg !1624
  %62 = phi ptr [ %64, %63 ], [ %.lcssa6, %.loopexit ], !dbg !1599
  call void @llvm.dbg.value(metadata ptr %62, metadata !1596, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i8 %61, metadata !1607, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1625
  switch i8 %61, label %63 [
    i8 32, label %66
    i8 9, label %66
    i8 10, label %66
    i8 11, label %66
    i8 12, label %66
    i8 13, label %66
    i8 0, label %66
  ], !dbg !1627

63:                                               ; preds = %60
  %64 = getelementptr inbounds i8, ptr %62, i64 1, !dbg !1628
  call void @llvm.dbg.value(metadata ptr %64, metadata !1596, metadata !DIExpression()), !dbg !1599
  %65 = load i8, ptr %64, align 1, !dbg !1624, !tbaa !1183
  br label %60, !dbg !1623, !llvm.loop !1630

66:                                               ; preds = %60, %60, %60, %60, %60, %60, %60
  %.lcssa12 = phi ptr [ %62, %60 ], [ %62, %60 ], [ %62, %60 ], [ %62, %60 ], [ %62, %60 ], [ %62, %60 ], [ %62, %60 ], !dbg !1599
  %67 = ptrtoint ptr %.lcssa12 to i64, !dbg !1632
  %68 = ptrtoint ptr %.lcssa6 to i64, !dbg !1632
  %69 = sub i64 %67, %68, !dbg !1632
  %70 = call noalias nonnull ptr @ximemdup0(ptr noundef nonnull %.lcssa6, i64 noundef %69) #39, !dbg !1633
  tail call void @llvm.dbg.value(metadata ptr %70, metadata !189, metadata !DIExpression()), !dbg !1601
  %71 = load i8, ptr %.lcssa12, align 1, !dbg !1634, !tbaa !1183
  %72 = icmp eq i8 %71, 0, !dbg !1636
  br i1 %72, label %90, label %.preheader2, !dbg !1637

.preheader2:                                      ; preds = %66
  br label %73, !dbg !1638

73:                                               ; preds = %.preheader2, %77
  %74 = phi ptr [ %75, %77 ], [ %.lcssa12, %.preheader2 ], !dbg !1599
  call void @llvm.dbg.value(metadata ptr %74, metadata !1596, metadata !DIExpression()), !dbg !1599
  %75 = getelementptr inbounds i8, ptr %74, i64 1, !dbg !1639
  call void @llvm.dbg.value(metadata ptr %75, metadata !1596, metadata !DIExpression()), !dbg !1599
  %76 = load i8, ptr %75, align 1, !dbg !1641, !tbaa !1183
  call void @llvm.dbg.value(metadata i8 %76, metadata !1607, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1642
  switch i8 %76, label %.preheader1 [
    i8 32, label %77
    i8 9, label %77
    i8 10, label %77
    i8 11, label %77
    i8 12, label %77
    i8 13, label %77
    i8 0, label %.loopexit3
    i8 35, label %.loopexit3
  ], !dbg !1644

.preheader1:                                      ; preds = %73
  %.lcssa15 = phi ptr [ %75, %73 ], !dbg !1639
  %.lcssa13 = phi i8 [ %76, %73 ], !dbg !1641
  br label %78, !dbg !1645

77:                                               ; preds = %73, %73, %73, %73, %73, %73
  br label %73, !dbg !1599, !llvm.loop !1646

78:                                               ; preds = %.preheader1, %82
  %79 = phi i8 [ %84, %82 ], [ %.lcssa13, %.preheader1 ], !dbg !1648
  %80 = phi ptr [ %83, %82 ], [ %.lcssa15, %.preheader1 ], !dbg !1599
  call void @llvm.dbg.value(metadata ptr %80, metadata !1596, metadata !DIExpression()), !dbg !1599
  switch i8 %79, label %82 [
    i8 0, label %81
    i8 35, label %81
  ], !dbg !1649

81:                                               ; preds = %78, %78
  %.lcssa17 = phi ptr [ %80, %78 ], [ %80, %78 ], !dbg !1599
  br label %85, !dbg !1650

82:                                               ; preds = %78
  %83 = getelementptr inbounds i8, ptr %80, i64 1, !dbg !1652
  call void @llvm.dbg.value(metadata ptr %83, metadata !1596, metadata !DIExpression()), !dbg !1599
  %84 = load i8, ptr %83, align 1, !dbg !1648, !tbaa !1183
  br label %78, !dbg !1645, !llvm.loop !1653

85:                                               ; preds = %89, %81
  %86 = phi ptr [ %.lcssa17, %81 ], [ %87, %89 ]
  %87 = getelementptr inbounds i8, ptr %86, i64 -1, !dbg !1655
  call void @llvm.dbg.value(metadata ptr %87, metadata !1596, metadata !DIExpression()), !dbg !1599
  %88 = load i8, ptr %87, align 1, !dbg !1656, !tbaa !1183
  call void @llvm.dbg.value(metadata i8 %88, metadata !1607, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1658
  switch i8 %88, label %93 [
    i8 32, label %89
    i8 9, label %89
    i8 10, label %89
    i8 11, label %89
    i8 12, label %89
    i8 13, label %89
  ], !dbg !1660

89:                                               ; preds = %85, %85, %85, %85, %85, %85
  br label %85, !dbg !1655, !llvm.loop !1661

.loopexit3:                                       ; preds = %73, %73
  br label %90, !dbg !1663

90:                                               ; preds = %.loopexit3, %66
  tail call void @llvm.dbg.value(metadata ptr null, metadata !191, metadata !DIExpression()), !dbg !1601
  tail call void @llvm.dbg.value(metadata ptr %70, metadata !189, metadata !DIExpression()), !dbg !1601
  %91 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.75, i32 noundef 5) #39, !dbg !1663
  %92 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #39, !dbg !1663
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %91, ptr noundef %92, i64 noundef %.lcssa10) #39, !dbg !1663
  tail call void @llvm.dbg.value(metadata i8 0, metadata !187, metadata !DIExpression()), !dbg !1518
  br label %156, !dbg !1666, !llvm.loop !1616

93:                                               ; preds = %85
  %.lcssa18 = phi ptr [ %86, %85 ]
  call void @llvm.dbg.value(metadata ptr %.lcssa18, metadata !1596, metadata !DIExpression()), !dbg !1599
  %94 = ptrtoint ptr %.lcssa18 to i64, !dbg !1667
  %95 = ptrtoint ptr %.lcssa15 to i64, !dbg !1667
  %96 = sub i64 %94, %95, !dbg !1667
  %97 = call noalias nonnull ptr @ximemdup0(ptr noundef nonnull %.lcssa15, i64 noundef %96) #39, !dbg !1668
  tail call void @llvm.dbg.value(metadata ptr %97, metadata !191, metadata !DIExpression()), !dbg !1601
  tail call void @llvm.dbg.value(metadata ptr %70, metadata !189, metadata !DIExpression()), !dbg !1601
  tail call void @llvm.dbg.value(metadata i8 0, metadata !192, metadata !DIExpression()), !dbg !1601
  %98 = call i32 @c_strcasecmp(ptr noundef nonnull %70, ptr noundef nonnull @.str.27) #40, !dbg !1669
  %99 = icmp eq i32 %98, 0, !dbg !1670
  br i1 %99, label %100, label %106, !dbg !1671

100:                                              ; preds = %93
  %101 = icmp eq i32 %22, 2, !dbg !1672
  br i1 %101, label %153, label %102, !dbg !1675

102:                                              ; preds = %100
  %103 = call i32 @fnmatch(ptr noundef nonnull %97, ptr noundef nonnull %12, i32 noundef 0) #39, !dbg !1676
  %104 = icmp eq i32 %103, 0, !dbg !1677
  %105 = select i1 %104, i32 2, i32 0, !dbg !1676
  tail call void @llvm.dbg.value(metadata i32 %105, metadata !188, metadata !DIExpression()), !dbg !1518
  br label %153, !dbg !1678

106:                                              ; preds = %93
  %107 = call i32 @c_strcasecmp(ptr noundef nonnull %70, ptr noundef nonnull @.str.73) #40, !dbg !1679
  %108 = icmp eq i32 %107, 0, !dbg !1680
  %109 = icmp eq i32 %22, 2, !dbg !1681
  br i1 %108, label %110, label %115, !dbg !1682

110:                                              ; preds = %106
  br i1 %109, label %153, label %111, !dbg !1683

111:                                              ; preds = %110
  %112 = call i32 @fnmatch(ptr noundef nonnull %97, ptr noundef nonnull %15, i32 noundef 0) #39, !dbg !1685
  %113 = icmp eq i32 %112, 0, !dbg !1687
  %114 = select i1 %113, i32 2, i32 0, !dbg !1685
  tail call void @llvm.dbg.value(metadata i32 %114, metadata !188, metadata !DIExpression()), !dbg !1518
  br label %153, !dbg !1688

115:                                              ; preds = %106
  %116 = select i1 %109, i32 1, i32 %22, !dbg !1689
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !188, metadata !DIExpression()), !dbg !1518
  %117 = icmp eq i32 %116, 0, !dbg !1690
  br i1 %117, label %153, label %118, !dbg !1691

118:                                              ; preds = %115
  %119 = load i8, ptr %70, align 1, !dbg !1692, !tbaa !1183
  switch i8 %119, label %122 [
    i8 46, label %120
    i8 42, label %121
  ], !dbg !1693

120:                                              ; preds = %118
  call fastcc void @append_entry(i8 noundef 42, ptr noundef nonnull %70, ptr noundef nonnull %97), !dbg !1694
  br label %153, !dbg !1694

121:                                              ; preds = %118
  call fastcc void @append_entry(i8 noundef 0, ptr noundef nonnull %70, ptr noundef nonnull %97), !dbg !1695
  br label %153, !dbg !1695

122:                                              ; preds = %118
  %123 = call i32 @c_strcasecmp(ptr noundef nonnull %70, ptr noundef nonnull @.str.76) #40, !dbg !1696
  %124 = icmp eq i32 %123, 0, !dbg !1697
  br i1 %124, label %153, label %125, !dbg !1698

125:                                              ; preds = %122
  %126 = call i32 @c_strcasecmp(ptr noundef nonnull %70, ptr noundef nonnull @.str.77) #40, !dbg !1699
  %127 = icmp eq i32 %126, 0, !dbg !1700
  br i1 %127, label %153, label %128, !dbg !1701

128:                                              ; preds = %125
  %129 = call i32 @c_strcasecmp(ptr noundef nonnull %70, ptr noundef nonnull @.str.78) #40, !dbg !1702
  %130 = icmp eq i32 %129, 0, !dbg !1703
  br i1 %130, label %153, label %.preheader, !dbg !1704

.preheader:                                       ; preds = %128
  br label %134, !dbg !1705

131:                                              ; preds = %134
  %132 = add nuw nsw i64 %135, 1, !dbg !1707
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !193, metadata !DIExpression()), !dbg !1709
  %133 = icmp eq i64 %132, 37, !dbg !1705
  br i1 %133, label %143, label %134, !dbg !1705, !llvm.loop !1710

134:                                              ; preds = %.preheader, %131
  %135 = phi i64 [ %132, %131 ], [ 0, %.preheader ]
  tail call void @llvm.dbg.value(metadata i64 %135, metadata !193, metadata !DIExpression()), !dbg !1709
  %136 = getelementptr inbounds [38 x ptr], ptr @slack_codes, i64 0, i64 %135, !dbg !1712
  %137 = load ptr, ptr %136, align 8, !dbg !1712, !tbaa !1109
  %138 = call i32 @c_strcasecmp(ptr noundef nonnull %70, ptr noundef %137) #40, !dbg !1713
  %139 = icmp eq i32 %138, 0, !dbg !1715
  tail call void @llvm.dbg.value(metadata i64 %135, metadata !193, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1709
  br i1 %139, label %140, label %131, !dbg !1716

140:                                              ; preds = %134
  %.lcssa19 = phi i64 [ %135, %134 ]
  %141 = getelementptr inbounds [38 x ptr], ptr @ls_codes, i64 0, i64 %.lcssa19, !dbg !1717
  %142 = load ptr, ptr %141, align 8, !dbg !1717, !tbaa !1109
  call fastcc void @append_entry(i8 noundef 0, ptr noundef %142, ptr noundef nonnull %97), !dbg !1719
  br label %153, !dbg !1719

143:                                              ; preds = %131
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !192, metadata !DIExpression()), !dbg !1601
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !188, metadata !DIExpression()), !dbg !1518
  %144 = icmp ult i32 %116, 3
  br i1 %144, label %145, label %153, !dbg !1720

145:                                              ; preds = %143
  %146 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.79, i32 noundef 5) #39, !dbg !1722
  br i1 %17, label %149, label %147, !dbg !1722

147:                                              ; preds = %145
  %148 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef nonnull %1) #39, !dbg !1722
  br label %151, !dbg !1722

149:                                              ; preds = %145
  %150 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.80, i32 noundef 5) #39, !dbg !1722
  br label %151, !dbg !1722

151:                                              ; preds = %149, %147
  %152 = phi ptr [ %148, %147 ], [ %150, %149 ], !dbg !1722
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %146, ptr noundef %152, i64 noundef %.lcssa10, ptr noundef nonnull %70) #39, !dbg !1722
  tail call void @llvm.dbg.value(metadata i8 0, metadata !187, metadata !DIExpression()), !dbg !1518
  br label %153, !dbg !1724

153:                                              ; preds = %115, %140, %128, %125, %122, %121, %120, %110, %111, %100, %102, %151, %143
  %154 = phi i32 [ %116, %151 ], [ %22, %143 ], [ 0, %115 ], [ %116, %140 ], [ %116, %128 ], [ %116, %125 ], [ %116, %122 ], [ %116, %121 ], [ %116, %120 ], [ 2, %110 ], [ %114, %111 ], [ 2, %100 ], [ %105, %102 ]
  %155 = phi i1 [ false, %151 ], [ %21, %143 ], [ %21, %115 ], [ %21, %140 ], [ %21, %128 ], [ %21, %125 ], [ %21, %122 ], [ %21, %121 ], [ %21, %120 ], [ %21, %110 ], [ %21, %111 ], [ %21, %100 ], [ %21, %102 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !187, metadata !DIExpression()), !dbg !1518
  call void @free(ptr noundef nonnull %70) #39, !dbg !1725
  br label %156, !dbg !1617

156:                                              ; preds = %90, %153
  %157 = phi ptr [ %97, %153 ], [ %70, %90 ]
  %158 = phi i1 [ %155, %153 ], [ false, %90 ]
  %159 = phi i32 [ %154, %153 ], [ %22, %90 ]
  call void @free(ptr noundef nonnull %157) #39, !dbg !1601
  br label %18

.loopexit4:                                       ; preds = %46
  %.lcssa22 = phi i1 [ %21, %46 ]
  br label %160, !dbg !1726

160:                                              ; preds = %.loopexit4, %41
  %161 = phi i1 [ %42, %41 ], [ %.lcssa22, %.loopexit4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !1726
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #39, !dbg !1726
  ret i1 %161, !dbg !1727
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1728 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #13

declare !dbg !1732 i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1737 i32 @fnmatch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @append_entry(i8 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !dbg !1741 {
  tail call void @llvm.dbg.value(metadata i8 %0, metadata !1745, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1746, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1747, metadata !DIExpression()), !dbg !1771
  %4 = load i1, ptr @print_ls_colors, align 1, !dbg !1772
  br i1 %4, label %5, label %14, !dbg !1773

5:                                                ; preds = %3
  tail call fastcc void @append_quoted(ptr noundef nonnull @.str.81), !dbg !1774
  tail call fastcc void @append_quoted(ptr noundef %2), !dbg !1775
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1748, metadata !DIExpression()), !dbg !1776
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1752, metadata !DIExpression()), !dbg !1777
  %6 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1778, !tbaa !1779
  %7 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1778, !tbaa !1475
  %8 = icmp eq ptr %6, %7, !dbg !1780
  br i1 %8, label %9, label %11, !dbg !1781

9:                                                ; preds = %5
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #39, !dbg !1780
  %10 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1781, !tbaa !1475
  br label %11, !dbg !1780

11:                                               ; preds = %9, %5
  %12 = phi ptr [ %10, %9 ], [ %7, %5 ], !dbg !1781
  %13 = getelementptr inbounds i8, ptr %12, i64 1, !dbg !1781
  store ptr %13, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1781, !tbaa !1475
  store i8 109, ptr %12, align 1, !dbg !1781, !tbaa !1183
  br label %14, !dbg !1782

14:                                               ; preds = %11, %3
  %15 = icmp eq i8 %0, 0, !dbg !1783
  br i1 %15, label %25, label %16, !dbg !1784

16:                                               ; preds = %14
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1755, metadata !DIExpression()), !dbg !1785
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1758, metadata !DIExpression()), !dbg !1786
  %17 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1787, !tbaa !1779
  %18 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1787, !tbaa !1475
  %19 = icmp eq ptr %17, %18, !dbg !1788
  br i1 %19, label %20, label %22, !dbg !1789

20:                                               ; preds = %16
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #39, !dbg !1788
  %21 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1789, !tbaa !1475
  br label %22, !dbg !1788

22:                                               ; preds = %20, %16
  %23 = phi ptr [ %21, %20 ], [ %18, %16 ], !dbg !1789
  %24 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1789
  store ptr %24, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1789, !tbaa !1475
  store i8 %0, ptr %23, align 1, !dbg !1789, !tbaa !1183
  br label %25, !dbg !1790

25:                                               ; preds = %22, %14
  tail call fastcc void @append_quoted(ptr noundef %1), !dbg !1791
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1761, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1763, metadata !DIExpression()), !dbg !1793
  %26 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1794, !tbaa !1779
  %27 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1794, !tbaa !1475
  %28 = icmp eq ptr %26, %27, !dbg !1795
  br i1 %28, label %29, label %31, !dbg !1796

29:                                               ; preds = %25
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #39, !dbg !1795
  %30 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1796, !tbaa !1475
  br label %31, !dbg !1795

31:                                               ; preds = %29, %25
  %32 = phi ptr [ %30, %29 ], [ %27, %25 ], !dbg !1796
  %33 = load i1, ptr @print_ls_colors, align 1, !dbg !1796
  %34 = select i1 %33, i8 9, i8 61, !dbg !1796
  %35 = getelementptr inbounds i8, ptr %32, i64 1, !dbg !1796
  store ptr %35, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1796, !tbaa !1475
  store i8 %34, ptr %32, align 1, !dbg !1796, !tbaa !1183
  tail call fastcc void @append_quoted(ptr noundef %2), !dbg !1797
  %36 = load i1, ptr @print_ls_colors, align 1, !dbg !1798
  br i1 %36, label %37, label %38, !dbg !1800

37:                                               ; preds = %31
  tail call fastcc void @append_quoted(ptr noundef nonnull @.str.52), !dbg !1801
  br label %38, !dbg !1801

38:                                               ; preds = %37, %31
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1766, metadata !DIExpression()), !dbg !1802
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1768, metadata !DIExpression()), !dbg !1803
  %39 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1804, !tbaa !1779
  %40 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1804, !tbaa !1475
  %41 = icmp eq ptr %39, %40, !dbg !1805
  br i1 %41, label %42, label %44, !dbg !1806

42:                                               ; preds = %38
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #39, !dbg !1805
  %43 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1806, !tbaa !1475
  br label %44, !dbg !1805

44:                                               ; preds = %42, %38
  %45 = phi ptr [ %43, %42 ], [ %40, %38 ], !dbg !1806
  %46 = load i1, ptr @print_ls_colors, align 1, !dbg !1806
  %47 = select i1 %46, i8 10, i8 58, !dbg !1806
  %48 = getelementptr inbounds i8, ptr %45, i64 1, !dbg !1806
  store ptr %48, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1806, !tbaa !1475
  store i8 %47, ptr %45, align 1, !dbg !1806, !tbaa !1183
  ret void, !dbg !1807
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #13

; Function Attrs: nounwind uwtable
define internal fastcc void @append_quoted(ptr nocapture noundef readonly %0) unnamed_addr #10 !dbg !1808 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1810, metadata !DIExpression()), !dbg !1841
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1811, metadata !DIExpression()), !dbg !1841
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1811, metadata !DIExpression()), !dbg !1841
  %2 = load i8, ptr %0, align 1, !dbg !1842, !tbaa !1183
  %3 = icmp eq i8 %2, 0, !dbg !1843
  br i1 %3, label %61, label %.preheader, !dbg !1844

.preheader:                                       ; preds = %1
  br label %4, !dbg !1844

4:                                                ; preds = %.preheader, %54
  %5 = phi i8 [ %59, %54 ], [ %2, %.preheader ]
  %6 = phi ptr [ %58, %54 ], [ %0, %.preheader ]
  %7 = phi i1 [ %48, %54 ], [ true, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1810, metadata !DIExpression()), !dbg !1841
  %8 = load i1, ptr @print_ls_colors, align 1, !dbg !1845
  br i1 %8, label %47, label %9, !dbg !1846

9:                                                ; preds = %4
  switch i8 %5, label %47 [
    i8 39, label %10
    i8 92, label %35
    i8 94, label %35
    i8 58, label %37
    i8 61, label %37
  ], !dbg !1847

10:                                               ; preds = %9
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1812, metadata !DIExpression()), !dbg !1848
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1817, metadata !DIExpression()), !dbg !1849
  %11 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1850, !tbaa !1779
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1850, !tbaa !1475
  %13 = icmp eq ptr %11, %12, !dbg !1851
  br i1 %13, label %14, label %16, !dbg !1852

14:                                               ; preds = %10
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #39, !dbg !1851
  %15 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1852, !tbaa !1475
  br label %16, !dbg !1851

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %15, %14 ], [ %12, %10 ], !dbg !1852
  %18 = getelementptr inbounds i8, ptr %17, i64 1, !dbg !1852
  store ptr %18, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1852, !tbaa !1475
  store i8 39, ptr %17, align 1, !dbg !1852, !tbaa !1183
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1820, metadata !DIExpression()), !dbg !1853
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1822, metadata !DIExpression()), !dbg !1854
  %19 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1855, !tbaa !1779
  %20 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1855, !tbaa !1475
  %21 = icmp eq ptr %19, %20, !dbg !1856
  br i1 %21, label %22, label %24, !dbg !1857

22:                                               ; preds = %16
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #39, !dbg !1856
  %23 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1857, !tbaa !1475
  br label %24, !dbg !1856

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %23, %22 ], [ %20, %16 ], !dbg !1857
  %26 = getelementptr inbounds i8, ptr %25, i64 1, !dbg !1857
  store ptr %26, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1857, !tbaa !1475
  store i8 92, ptr %25, align 1, !dbg !1857, !tbaa !1183
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1825, metadata !DIExpression()), !dbg !1858
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1827, metadata !DIExpression()), !dbg !1859
  %27 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1860, !tbaa !1779
  %28 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1860, !tbaa !1475
  %29 = icmp eq ptr %27, %28, !dbg !1861
  br i1 %29, label %30, label %32, !dbg !1862

30:                                               ; preds = %24
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #39, !dbg !1861
  %31 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1862, !tbaa !1475
  br label %32, !dbg !1861

32:                                               ; preds = %30, %24
  %33 = phi ptr [ %31, %30 ], [ %28, %24 ], !dbg !1862
  %34 = getelementptr inbounds i8, ptr %33, i64 1, !dbg !1862
  store ptr %34, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1862, !tbaa !1475
  store i8 39, ptr %33, align 1, !dbg !1862, !tbaa !1183
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1811, metadata !DIExpression()), !dbg !1841
  br label %47, !dbg !1863

35:                                               ; preds = %9, %9
  %36 = xor i1 %7, true, !dbg !1864
  tail call void @llvm.dbg.value(metadata i1 %36, metadata !1811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1841
  br label %47, !dbg !1865

37:                                               ; preds = %9, %9
  br i1 %7, label %38, label %47, !dbg !1866

38:                                               ; preds = %37
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1830, metadata !DIExpression()), !dbg !1867
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1833, metadata !DIExpression()), !dbg !1868
  %39 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1869, !tbaa !1779
  %40 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1869, !tbaa !1475
  %41 = icmp eq ptr %39, %40, !dbg !1870
  br i1 %41, label %42, label %44, !dbg !1871

42:                                               ; preds = %38
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #39, !dbg !1870
  %43 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1871, !tbaa !1475
  br label %44, !dbg !1870

44:                                               ; preds = %42, %38
  %45 = phi ptr [ %43, %42 ], [ %40, %38 ], !dbg !1871
  %46 = getelementptr inbounds i8, ptr %45, i64 1, !dbg !1871
  store ptr %46, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1871, !tbaa !1475
  store i8 92, ptr %45, align 1, !dbg !1871, !tbaa !1183
  br label %47, !dbg !1872

47:                                               ; preds = %9, %44, %37, %32, %35, %4
  %48 = phi i1 [ %7, %4 ], [ %36, %35 ], [ true, %32 ], [ true, %37 ], [ true, %44 ], [ true, %9 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1811, metadata !DIExpression()), !dbg !1841
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1836, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1838, metadata !DIExpression()), !dbg !1874
  %49 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1875, !tbaa !1779
  %50 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1875, !tbaa !1475
  %51 = icmp eq ptr %49, %50, !dbg !1876
  br i1 %51, label %52, label %54, !dbg !1877

52:                                               ; preds = %47
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #39, !dbg !1876
  %53 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1877, !tbaa !1475
  br label %54, !dbg !1876

54:                                               ; preds = %52, %47
  %55 = phi ptr [ %53, %52 ], [ %50, %47 ], !dbg !1877
  %56 = load i8, ptr %6, align 1, !dbg !1877, !tbaa !1183
  %57 = getelementptr inbounds i8, ptr %55, i64 1, !dbg !1877
  store ptr %57, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1877, !tbaa !1475
  store i8 %56, ptr %55, align 1, !dbg !1877, !tbaa !1183
  %58 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !1878
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !1810, metadata !DIExpression()), !dbg !1841
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1811, metadata !DIExpression()), !dbg !1841
  %59 = load i8, ptr %58, align 1, !dbg !1842, !tbaa !1183
  %60 = icmp eq i8 %59, 0, !dbg !1843
  br i1 %60, label %.loopexit, label %4, !dbg !1844, !llvm.loop !1879

.loopexit:                                        ; preds = %54
  br label %61, !dbg !1881

61:                                               ; preds = %.loopexit, %1
  ret void, !dbg !1881
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @last_component(ptr noundef readonly %0) local_unnamed_addr #14 !dbg !1882 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1884, metadata !DIExpression()), !dbg !1889
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1885, metadata !DIExpression()), !dbg !1889
  br label %2, !dbg !1890

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ], !dbg !1889
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1885, metadata !DIExpression()), !dbg !1889
  %4 = load i8, ptr %3, align 1, !dbg !1891, !tbaa !1183
  %5 = icmp eq i8 %4, 47, !dbg !1891
  %6 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !1892
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1885, metadata !DIExpression()), !dbg !1889
  br i1 %5, label %2, label %.preheader, !dbg !1890, !llvm.loop !1893

.preheader:                                       ; preds = %2
  %.lcssa2 = phi ptr [ %3, %2 ], !dbg !1889
  %.lcssa1 = phi i8 [ %4, %2 ], !dbg !1891
  br label %7, !dbg !1894

7:                                                ; preds = %.preheader, %15
  %8 = phi i8 [ %19, %15 ], [ %.lcssa1, %.preheader ], !dbg !1895
  %9 = phi ptr [ %16, %15 ], [ %.lcssa2, %.preheader ], !dbg !1897
  %10 = phi i1 [ %17, %15 ], [ false, %.preheader ]
  %11 = phi ptr [ %18, %15 ], [ %.lcssa2, %.preheader ], !dbg !1898
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !1887, metadata !DIExpression()), !dbg !1899
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1886, metadata !DIExpression()), !dbg !1889
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1885, metadata !DIExpression()), !dbg !1889
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %15
  ], !dbg !1894

12:                                               ; preds = %7
  %.lcssa = phi ptr [ %9, %7 ], !dbg !1897
  ret ptr %.lcssa, !dbg !1900

13:                                               ; preds = %7
  %14 = select i1 %10, ptr %11, ptr %9, !dbg !1901
  br label %15, !dbg !1901

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %9, %7 ], [ %14, %13 ], !dbg !1889
  %17 = phi i1 [ true, %7 ], [ false, %13 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1886, metadata !DIExpression()), !dbg !1889
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !1885, metadata !DIExpression()), !dbg !1889
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !1904
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !1887, metadata !DIExpression()), !dbg !1899
  %19 = load i8, ptr %18, align 1, !dbg !1895, !tbaa !1183
  br label %7, !dbg !1905, !llvm.loop !1906
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @base_len(ptr nocapture noundef readonly %0) local_unnamed_addr #15 !dbg !1908 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1912, metadata !DIExpression()), !dbg !1915
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !1916
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1913, metadata !DIExpression()), !dbg !1915
  %3 = getelementptr i8, ptr %0, i64 -1, !dbg !1918
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1913, metadata !DIExpression()), !dbg !1915
  %4 = icmp ugt i64 %2, 1, !dbg !1919
  br i1 %4, label %.preheader, label %13, !dbg !1921

.preheader:                                       ; preds = %1
  br label %5, !dbg !1922

5:                                                ; preds = %.preheader, %10
  %6 = phi i64 [ %11, %10 ], [ %2, %.preheader ]
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !1913, metadata !DIExpression()), !dbg !1915
  %7 = getelementptr i8, ptr %3, i64 %6, !dbg !1923
  %8 = load i8, ptr %7, align 1, !dbg !1923, !tbaa !1183
  %9 = icmp eq i8 %8, 47, !dbg !1923
  br i1 %9, label %10, label %.loopexit, !dbg !1922

10:                                               ; preds = %5
  %11 = add i64 %6, -1, !dbg !1924
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1913, metadata !DIExpression()), !dbg !1915
  %12 = icmp ugt i64 %11, 1, !dbg !1919
  br i1 %12, label %5, label %.loopexit, !dbg !1921, !llvm.loop !1925

.loopexit:                                        ; preds = %10, %5
  %.ph = phi i64 [ %6, %5 ], [ 1, %10 ]
  br label %13, !dbg !1927

13:                                               ; preds = %.loopexit, %1
  %14 = phi i64 [ %2, %1 ], [ %.ph, %.loopexit ], !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1914, metadata !DIExpression()), !dbg !1915
  ret i64 %14, !dbg !1927
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @c_strcasecmp(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #14 !dbg !1929 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1931, metadata !DIExpression()), !dbg !1940
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1932, metadata !DIExpression()), !dbg !1940
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1933, metadata !DIExpression()), !dbg !1940
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1934, metadata !DIExpression()), !dbg !1940
  %3 = icmp eq ptr %0, %1, !dbg !1941
  br i1 %3, label %48, label %4, !dbg !1943

4:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1933, metadata !DIExpression()), !dbg !1940
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1934, metadata !DIExpression()), !dbg !1940
  %5 = load i8, ptr %0, align 1, !dbg !1944, !tbaa !1183
  %6 = zext i8 %5 to i32, !dbg !1944
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1945, metadata !DIExpression()), !dbg !1951
  %7 = add nsw i32 %6, -65, !dbg !1953
  %8 = icmp ult i32 %7, 26, !dbg !1953
  %9 = add nuw nsw i32 %6, 32, !dbg !1953
  %10 = select i1 %8, i32 %9, i32 %6, !dbg !1953
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1935, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1954
  %11 = load i8, ptr %1, align 1, !dbg !1955, !tbaa !1183
  %12 = zext i8 %11 to i32, !dbg !1955
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1945, metadata !DIExpression()), !dbg !1956
  %13 = add nsw i32 %12, -65, !dbg !1958
  %14 = icmp ult i32 %13, 26, !dbg !1958
  %15 = add nuw nsw i32 %12, 32, !dbg !1958
  %16 = select i1 %14, i32 %15, i32 %12, !dbg !1958
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !1939, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1954
  %17 = and i32 %10, 255, !dbg !1959
  %18 = icmp ne i32 %17, 0, !dbg !1961
  %19 = and i32 %16, 255
  %20 = icmp eq i32 %17, %19
  %21 = select i1 %18, i1 %20, i1 false, !dbg !1962
  br i1 %21, label %.preheader, label %22, !dbg !1962

.preheader:                                       ; preds = %4
  br label %26, !dbg !1963

.loopexit:                                        ; preds = %26
  %.lcssa1 = phi i32 [ %43, %26 ], !dbg !1959
  %.lcssa = phi i32 [ %45, %26 ]
  br label %22, !dbg !1964

22:                                               ; preds = %.loopexit, %4
  %23 = phi i32 [ %17, %4 ], [ %.lcssa1, %.loopexit ], !dbg !1959
  %24 = phi i32 [ %19, %4 ], [ %.lcssa, %.loopexit ]
  %25 = sub nsw i32 %23, %24, !dbg !1964
  br label %48

26:                                               ; preds = %.preheader, %26
  %27 = phi ptr [ %29, %26 ], [ %0, %.preheader ]
  %28 = phi ptr [ %30, %26 ], [ %1, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %27, metadata !1933, metadata !DIExpression()), !dbg !1940
  tail call void @llvm.dbg.value(metadata ptr %28, metadata !1934, metadata !DIExpression()), !dbg !1940
  %29 = getelementptr inbounds i8, ptr %27, i64 1, !dbg !1967
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !1933, metadata !DIExpression()), !dbg !1940
  %30 = getelementptr inbounds i8, ptr %28, i64 1, !dbg !1968
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1934, metadata !DIExpression()), !dbg !1940
  %31 = load i8, ptr %29, align 1, !dbg !1944, !tbaa !1183
  %32 = zext i8 %31 to i32, !dbg !1944
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !1945, metadata !DIExpression()), !dbg !1951
  %33 = add nsw i32 %32, -65, !dbg !1953
  %34 = icmp ult i32 %33, 26, !dbg !1953
  %35 = add nuw nsw i32 %32, 32, !dbg !1953
  %36 = select i1 %34, i32 %35, i32 %32, !dbg !1953
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !1935, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1954
  %37 = load i8, ptr %30, align 1, !dbg !1955, !tbaa !1183
  %38 = zext i8 %37 to i32, !dbg !1955
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !1945, metadata !DIExpression()), !dbg !1956
  %39 = add nsw i32 %38, -65, !dbg !1958
  %40 = icmp ult i32 %39, 26, !dbg !1958
  %41 = add nuw nsw i32 %38, 32, !dbg !1958
  %42 = select i1 %40, i32 %41, i32 %38, !dbg !1958
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !1939, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1954
  %43 = and i32 %36, 255, !dbg !1959
  %44 = icmp ne i32 %43, 0, !dbg !1961
  %45 = and i32 %42, 255
  %46 = icmp eq i32 %43, %45
  %47 = select i1 %44, i1 %46, i1 false, !dbg !1962
  br i1 %47, label %26, label %.loopexit, !dbg !1962, !llvm.loop !1969

48:                                               ; preds = %22, %2
  %49 = phi i32 [ %25, %22 ], [ 0, %2 ], !dbg !1940
  ret i32 %49, !dbg !1971
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #16 !dbg !1972 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1974, metadata !DIExpression()), !dbg !1975
  store ptr %0, ptr @file_name, align 8, !dbg !1976, !tbaa !1109
  ret void, !dbg !1977
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #16 !dbg !1978 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1982, metadata !DIExpression()), !dbg !1983
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1984, !tbaa !1985
  ret void, !dbg !1987
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1988 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1993, !tbaa !1109
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1994
  %3 = icmp eq i32 %2, 0, !dbg !1995
  br i1 %3, label %22, label %4, !dbg !1996

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1997, !tbaa !1985, !range !1998, !noundef !1142
  %6 = icmp eq i8 %5, 0, !dbg !1997
  br i1 %6, label %11, label %7, !dbg !1999

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !2000
  %9 = load i32, ptr %8, align 4, !dbg !2000, !tbaa !1174
  %10 = icmp eq i32 %9, 32, !dbg !2001
  br i1 %10, label %22, label %11, !dbg !2002

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1.39, i32 noundef 5) #39, !dbg !2003
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1990, metadata !DIExpression()), !dbg !2004
  %13 = load ptr, ptr @file_name, align 8, !dbg !2005, !tbaa !1109
  %14 = icmp eq ptr %13, null, !dbg !2005
  %15 = tail call ptr @__errno_location() #42, !dbg !2007
  %16 = load i32, ptr %15, align 4, !dbg !2007, !tbaa !1174
  br i1 %14, label %19, label %17, !dbg !2008

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !2009
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.40, ptr noundef %18, ptr noundef %12) #39, !dbg !2009
  br label %20, !dbg !2009

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.41, ptr noundef %12) #39, !dbg !2010
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2011, !tbaa !1174
  tail call void @_exit(i32 noundef %21) #41, !dbg !2012
  unreachable, !dbg !2012

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2013, !tbaa !1109
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !2015
  %25 = icmp eq i32 %24, 0, !dbg !2016
  br i1 %25, label %28, label %26, !dbg !2017

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2018, !tbaa !1174
  tail call void @_exit(i32 noundef %27) #41, !dbg !2019
  unreachable, !dbg !2019

28:                                               ; preds = %22
  ret void, !dbg !2020
}

; Function Attrs: noreturn
declare !dbg !2021 void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #18 !dbg !2023 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2027, metadata !DIExpression()), !dbg !2031
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2028, metadata !DIExpression()), !dbg !2031
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2029, metadata !DIExpression()), !dbg !2031
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2030, metadata !DIExpression(DW_OP_deref)), !dbg !2031
  tail call fastcc void @flush_stdout(), !dbg !2032
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !2033, !tbaa !1109
  %7 = icmp eq ptr %6, null, !dbg !2033
  br i1 %7, label %9, label %8, !dbg !2035

8:                                                ; preds = %4
  tail call void %6() #39, !dbg !2036
  br label %13, !dbg !2036

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !2037, !tbaa !1109
  %11 = tail call ptr @getprogname() #40, !dbg !2037
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.42, ptr noundef %11) #39, !dbg !2037
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !2039
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2039, !tbaa.struct !2040
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !2039
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !2039
  ret void, !dbg !2041
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2042 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2044, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i32 1, metadata !2046, metadata !DIExpression()), !dbg !2049
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !2052
  %2 = icmp slt i32 %1, 0, !dbg !2053
  br i1 %2, label %6, label %3, !dbg !2054

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2055, !tbaa !1109
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !2055
  br label %6, !dbg !2055

6:                                                ; preds = %3, %0
  ret void, !dbg !2056
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #19

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !2057 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !2063
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2059, metadata !DIExpression()), !dbg !2064
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2060, metadata !DIExpression()), !dbg !2064
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2061, metadata !DIExpression()), !dbg !2064
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2062, metadata !DIExpression(DW_OP_deref)), !dbg !2064
  %7 = load ptr, ptr @stderr, align 8, !dbg !2065, !tbaa !1109
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !2066, !noalias !2110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2114
  call void @llvm.dbg.value(metadata ptr %7, metadata !2106, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata ptr %2, metadata !2107, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata ptr poison, metadata !2108, metadata !DIExpression(DW_OP_deref)), !dbg !2115
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #39, !dbg !2066
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !2066, !noalias !2110
  %9 = load i32, ptr @error_message_count, align 4, !dbg !2116, !tbaa !1174
  %10 = add i32 %9, 1, !dbg !2116
  store i32 %10, ptr @error_message_count, align 4, !dbg !2116, !tbaa !1174
  %11 = icmp eq i32 %1, 0, !dbg !2117
  br i1 %11, label %21, label %12, !dbg !2119

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2120, metadata !DIExpression(), metadata !2063, metadata ptr %5, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i32 %1, metadata !2123, metadata !DIExpression()), !dbg !2128
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !2130
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !2131
  call void @llvm.dbg.value(metadata ptr %13, metadata !2124, metadata !DIExpression()), !dbg !2128
  %14 = icmp eq ptr %13, null, !dbg !2132
  br i1 %14, label %15, label %17, !dbg !2134

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.43, ptr noundef nonnull @.str.5.44, i32 noundef 5) #39, !dbg !2135
  call void @llvm.dbg.value(metadata ptr %16, metadata !2124, metadata !DIExpression()), !dbg !2128
  br label %17, !dbg !2136

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2128
  call void @llvm.dbg.value(metadata ptr %18, metadata !2124, metadata !DIExpression()), !dbg !2128
  %19 = load ptr, ptr @stderr, align 8, !dbg !2137, !tbaa !1109
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.45, ptr noundef %18) #39, !dbg !2137
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !2138
  br label %21, !dbg !2139

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2140, !tbaa !1109
  call void @llvm.dbg.value(metadata i32 10, metadata !2141, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata ptr %22, metadata !2146, metadata !DIExpression()), !dbg !2147
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2149
  %24 = load ptr, ptr %23, align 8, !dbg !2149, !tbaa !2150
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2149
  %26 = load ptr, ptr %25, align 8, !dbg !2149, !tbaa !2151
  %27 = icmp ult ptr %24, %26, !dbg !2149
  br i1 %27, label %30, label %28, !dbg !2149, !prof !2152

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #39, !dbg !2149
  br label %32, !dbg !2149

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2149
  store ptr %31, ptr %23, align 8, !dbg !2149, !tbaa !2150
  store i8 10, ptr %24, align 1, !dbg !2149, !tbaa !1183
  br label %32, !dbg !2149

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2153, !tbaa !1109
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #39, !dbg !2153
  %35 = icmp eq i32 %0, 0, !dbg !2154
  br i1 %35, label %37, label %36, !dbg !2156

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #41, !dbg !2157
  unreachable, !dbg !2157

37:                                               ; preds = %32
  ret void, !dbg !2158
}

declare !dbg !2159 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2162 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2165 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2168 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !2171 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2175 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !2183
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2182, metadata !DIExpression(), metadata !2183, metadata ptr %4, metadata !DIExpression()), !dbg !2184
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2179, metadata !DIExpression()), !dbg !2184
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2180, metadata !DIExpression()), !dbg !2184
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2181, metadata !DIExpression()), !dbg !2184
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #39, !dbg !2185
  call void @llvm.va_start(ptr nonnull %4), !dbg !2186
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !2187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2187, !tbaa.struct !2040
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #44, !dbg !2187
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !2187
  call void @llvm.va_end(ptr nonnull %4), !dbg !2188
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39, !dbg !2189
  ret void, !dbg !2189
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #20

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #18 !dbg !705 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !721, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !722, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !723, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !724, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !725, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !726, metadata !DIExpression(DW_OP_deref)), !dbg !2190
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2191, !tbaa !1174
  %9 = icmp eq i32 %8, 0, !dbg !2191
  br i1 %9, label %24, label %10, !dbg !2193

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2194, !tbaa !1174
  %12 = icmp eq i32 %11, %3, !dbg !2197
  br i1 %12, label %13, label %23, !dbg !2198

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2199, !tbaa !1109
  %15 = icmp eq ptr %14, %2, !dbg !2200
  br i1 %15, label %37, label %16, !dbg !2201

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2202
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2203
  br i1 %19, label %20, label %23, !dbg !2203

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2204
  %22 = icmp eq i32 %21, 0, !dbg !2205
  br i1 %22, label %37, label %23, !dbg !2206

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2207, !tbaa !1109
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2208, !tbaa !1174
  br label %24, !dbg !2209

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2210
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2211, !tbaa !1109
  %26 = icmp eq ptr %25, null, !dbg !2211
  br i1 %26, label %28, label %27, !dbg !2213

27:                                               ; preds = %24
  tail call void %25() #39, !dbg !2214
  br label %32, !dbg !2214

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2215, !tbaa !1109
  %30 = tail call ptr @getprogname() #40, !dbg !2215
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.48, ptr noundef %30) #39, !dbg !2215
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2217, !tbaa !1109
  %34 = icmp eq ptr %2, null, !dbg !2217
  %35 = select i1 %34, ptr @.str.3.49, ptr @.str.2.50, !dbg !2217
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #39, !dbg !2217
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !2218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2218, !tbaa.struct !2040
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2218
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !2218
  br label %37, !dbg !2219

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2219
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2220 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !2230
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2229, metadata !DIExpression(), metadata !2230, metadata ptr %6, metadata !DIExpression()), !dbg !2231
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2224, metadata !DIExpression()), !dbg !2231
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2225, metadata !DIExpression()), !dbg !2231
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2226, metadata !DIExpression()), !dbg !2231
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2227, metadata !DIExpression()), !dbg !2231
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2228, metadata !DIExpression()), !dbg !2231
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !2232
  call void @llvm.va_start(ptr nonnull %6), !dbg !2233
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !2234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2234, !tbaa.struct !2040
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #44, !dbg !2234
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !2234
  call void @llvm.va_end(ptr nonnull %6), !dbg !2235
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !2236
  ret void, !dbg !2236
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2237 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2275, metadata !DIExpression()), !dbg !2279
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2276, metadata !DIExpression()), !dbg !2279
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !2280
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2277, metadata !DIExpression()), !dbg !2279
  %3 = icmp slt i32 %2, 0, !dbg !2281
  br i1 %3, label %4, label %6, !dbg !2283

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2284
  br label %24, !dbg !2285

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !2286
  %8 = icmp eq i32 %7, 0, !dbg !2286
  br i1 %8, label %13, label %9, !dbg !2288

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !2289
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !2290
  %12 = icmp eq i64 %11, -1, !dbg !2291
  br i1 %12, label %16, label %13, !dbg !2292

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !2293
  %15 = icmp eq i32 %14, 0, !dbg !2293
  br i1 %15, label %16, label %18, !dbg !2294

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2276, metadata !DIExpression()), !dbg !2279
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2278, metadata !DIExpression()), !dbg !2279
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2295
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !2278, metadata !DIExpression()), !dbg !2279
  br label %24, !dbg !2296

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !2297
  %20 = load i32, ptr %19, align 4, !dbg !2297, !tbaa !1174
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !2276, metadata !DIExpression()), !dbg !2279
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2278, metadata !DIExpression()), !dbg !2279
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2295
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !2278, metadata !DIExpression()), !dbg !2279
  %22 = icmp eq i32 %20, 0, !dbg !2298
  br i1 %22, label %24, label %23, !dbg !2296

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2300, !tbaa !1174
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !2278, metadata !DIExpression()), !dbg !2279
  br label %24, !dbg !2302

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2279
  ret i32 %25, !dbg !2303
}

; Function Attrs: nofree nounwind
declare !dbg !2304 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !2305 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2306 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2308 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2311 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2349, metadata !DIExpression()), !dbg !2350
  %2 = icmp eq ptr %0, null, !dbg !2351
  br i1 %2, label %6, label %3, !dbg !2353

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !2354
  %5 = icmp eq i32 %4, 0, !dbg !2354
  br i1 %5, label %6, label %8, !dbg !2355

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2356
  br label %16, !dbg !2357

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2358, metadata !DIExpression()), !dbg !2363
  %9 = load i32, ptr %0, align 8, !dbg !2365, !tbaa !1569
  %10 = and i32 %9, 256, !dbg !2367
  %11 = icmp eq i32 %10, 0, !dbg !2367
  br i1 %11, label %14, label %12, !dbg !2368

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !2369
  br label %14, !dbg !2369

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2370
  br label %16, !dbg !2371

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2350
  ret i32 %17, !dbg !2372
}

; Function Attrs: nofree nounwind
declare !dbg !2373 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @freopen_safer(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) local_unnamed_addr #10 !dbg !2374 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2412, metadata !DIExpression()), !dbg !2419
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2413, metadata !DIExpression()), !dbg !2419
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2414, metadata !DIExpression()), !dbg !2419
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2415, metadata !DIExpression()), !dbg !2419
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2416, metadata !DIExpression()), !dbg !2419
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2417, metadata !DIExpression()), !dbg !2419
  %4 = tail call i32 @fileno(ptr noundef nonnull %2) #39, !dbg !2420
  switch i32 %4, label %5 [
    i32 2, label %8
    i32 1, label %12
    i32 0, label %49
  ], !dbg !2421

5:                                                ; preds = %3
  %6 = tail call i32 @dup2(i32 noundef 2, i32 noundef 2) #39, !dbg !2422
  %7 = icmp ne i32 %6, 2, !dbg !2425
  br label %8, !dbg !2426

8:                                                ; preds = %5, %3
  %9 = phi i1 [ false, %3 ], [ %7, %5 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2417, metadata !DIExpression()), !dbg !2419
  %10 = tail call i32 @dup2(i32 noundef 1, i32 noundef 1) #39, !dbg !2427
  %11 = icmp ne i32 %10, 1, !dbg !2429
  br label %12, !dbg !2430

12:                                               ; preds = %3, %8
  %13 = phi i1 [ false, %3 ], [ %11, %8 ]
  %14 = phi i1 [ false, %3 ], [ %9, %8 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2417, metadata !DIExpression()), !dbg !2419
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2416, metadata !DIExpression()), !dbg !2419
  %15 = tail call i32 @dup2(i32 noundef 0, i32 noundef 0) #39, !dbg !2431
  %16 = icmp ne i32 %15, 0, !dbg !2433
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2415, metadata !DIExpression()), !dbg !2419
  br i1 %16, label %17, label %25, !dbg !2434

17:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 0, metadata !2436, metadata !DIExpression()), !dbg !2440
  %18 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.146, i32 noundef 0) #39, !dbg !2442
  call void @llvm.dbg.value(metadata i32 %18, metadata !2439, metadata !DIExpression()), !dbg !2440
  %19 = icmp slt i32 %18, 1, !dbg !2443
  br i1 %19, label %23, label %20, !dbg !2443

20:                                               ; preds = %17
  %21 = tail call i32 @close(i32 noundef %18) #39, !dbg !2444
  %22 = tail call ptr @__errno_location() #42, !dbg !2449
  store i32 9, ptr %22, align 4, !dbg !2450, !tbaa !1174
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2414, metadata !DIExpression()), !dbg !2419
  tail call void @llvm.dbg.value(metadata i32 9, metadata !2418, metadata !DIExpression()), !dbg !2419
  br i1 %14, label %60, label %67, !dbg !2451

23:                                               ; preds = %17
  %24 = icmp eq i32 %18, 0, !dbg !2452
  br i1 %24, label %25, label %56, !dbg !2453

25:                                               ; preds = %23, %12
  br i1 %13, label %26, label %35, !dbg !2454

26:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 1, metadata !2436, metadata !DIExpression()), !dbg !2456
  %27 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.146, i32 noundef 0) #39, !dbg !2458
  call void @llvm.dbg.value(metadata i32 %27, metadata !2439, metadata !DIExpression()), !dbg !2456
  %28 = icmp eq i32 %27, 1, !dbg !2459
  %29 = icmp slt i32 %27, 0
  %30 = or i1 %29, %28, !dbg !2460
  br i1 %30, label %34, label %31, !dbg !2460

31:                                               ; preds = %26
  %32 = tail call i32 @close(i32 noundef %27) #39, !dbg !2461
  %33 = tail call ptr @__errno_location() #42, !dbg !2462
  store i32 9, ptr %33, align 4, !dbg !2463, !tbaa !1174
  br label %34, !dbg !2464

34:                                               ; preds = %26, %31
  br i1 %28, label %35, label %56, !dbg !2465

35:                                               ; preds = %34, %25
  br i1 %14, label %36, label %49, !dbg !2466

36:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 2, metadata !2436, metadata !DIExpression()), !dbg !2468
  %37 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.146, i32 noundef 0) #39, !dbg !2470
  call void @llvm.dbg.value(metadata i32 %37, metadata !2439, metadata !DIExpression()), !dbg !2468
  %38 = icmp eq i32 %37, 2, !dbg !2471
  %39 = icmp slt i32 %37, 0
  %40 = or i1 %39, %38, !dbg !2472
  br i1 %40, label %44, label %41, !dbg !2472

41:                                               ; preds = %36
  %42 = tail call i32 @close(i32 noundef %37) #39, !dbg !2473
  %43 = tail call ptr @__errno_location() #42, !dbg !2474
  store i32 9, ptr %43, align 4, !dbg !2475, !tbaa !1174
  br label %44, !dbg !2476

44:                                               ; preds = %36, %41
  br i1 %38, label %49, label %45, !dbg !2477

45:                                               ; preds = %44
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2414, metadata !DIExpression()), !dbg !2419
  %46 = tail call ptr @__errno_location() #42, !dbg !2478
  %47 = load i32, ptr %46, align 4, !dbg !2478, !tbaa !1174
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !2418, metadata !DIExpression()), !dbg !2419
  %48 = tail call i32 @close(i32 noundef 2) #39, !dbg !2479
  br i1 %13, label %73, label %79, !dbg !2481

49:                                               ; preds = %3, %44, %35
  %50 = phi i1 [ true, %44 ], [ false, %35 ], [ false, %3 ]
  %51 = phi i1 [ %13, %44 ], [ %13, %35 ], [ false, %3 ]
  %52 = phi i1 [ %16, %44 ], [ %16, %35 ], [ false, %3 ]
  %53 = tail call ptr @freopen(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #39, !dbg !2482
  tail call void @llvm.dbg.value(metadata ptr %53, metadata !2414, metadata !DIExpression()), !dbg !2419
  %54 = tail call ptr @__errno_location() #42, !dbg !2478
  %55 = load i32, ptr %54, align 4, !dbg !2478, !tbaa !1174
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !2418, metadata !DIExpression()), !dbg !2419
  br i1 %50, label %60, label %67, !dbg !2451

56:                                               ; preds = %34, %23
  %57 = phi i1 [ %13, %23 ], [ true, %34 ]
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2414, metadata !DIExpression()), !dbg !2419
  %58 = tail call ptr @__errno_location() #42, !dbg !2478
  %59 = load i32, ptr %58, align 4, !dbg !2478, !tbaa !1174
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !2418, metadata !DIExpression()), !dbg !2419
  br i1 %14, label %60, label %67, !dbg !2451

60:                                               ; preds = %20, %49, %56
  %61 = phi i32 [ %59, %56 ], [ %55, %49 ], [ 9, %20 ]
  %62 = phi ptr [ %58, %56 ], [ %54, %49 ], [ %22, %20 ]
  %63 = phi ptr [ null, %56 ], [ %53, %49 ], [ null, %20 ]
  %64 = phi i1 [ %16, %56 ], [ %52, %49 ], [ true, %20 ]
  %65 = phi i1 [ %57, %56 ], [ %51, %49 ], [ %13, %20 ]
  %66 = tail call i32 @close(i32 noundef 2) #39, !dbg !2479
  br i1 %65, label %73, label %79, !dbg !2481

67:                                               ; preds = %20, %49, %56
  %68 = phi i32 [ %59, %56 ], [ %55, %49 ], [ 9, %20 ]
  %69 = phi ptr [ %58, %56 ], [ %54, %49 ], [ %22, %20 ]
  %70 = phi ptr [ null, %56 ], [ %53, %49 ], [ null, %20 ]
  %71 = phi i1 [ %16, %56 ], [ %52, %49 ], [ true, %20 ]
  %72 = phi i1 [ %57, %56 ], [ %51, %49 ], [ %13, %20 ]
  br i1 %72, label %73, label %79, !dbg !2481

73:                                               ; preds = %45, %60, %67
  %74 = phi i1 [ %64, %60 ], [ %71, %67 ], [ %16, %45 ]
  %75 = phi ptr [ %63, %60 ], [ %70, %67 ], [ null, %45 ]
  %76 = phi ptr [ %62, %60 ], [ %69, %67 ], [ %46, %45 ]
  %77 = phi i32 [ %61, %60 ], [ %68, %67 ], [ %47, %45 ]
  %78 = tail call i32 @close(i32 noundef 1) #39, !dbg !2483
  br i1 %74, label %84, label %89, !dbg !2485

79:                                               ; preds = %45, %60, %67
  %80 = phi i1 [ %64, %60 ], [ %71, %67 ], [ %16, %45 ]
  %81 = phi ptr [ %63, %60 ], [ %70, %67 ], [ null, %45 ]
  %82 = phi ptr [ %62, %60 ], [ %69, %67 ], [ %46, %45 ]
  %83 = phi i32 [ %61, %60 ], [ %68, %67 ], [ %47, %45 ]
  br i1 %80, label %84, label %89, !dbg !2485

84:                                               ; preds = %73, %79
  %85 = phi i32 [ %77, %73 ], [ %83, %79 ]
  %86 = phi ptr [ %76, %73 ], [ %82, %79 ]
  %87 = phi ptr [ %75, %73 ], [ %81, %79 ]
  %88 = tail call i32 @close(i32 noundef 0) #39, !dbg !2486
  br label %89, !dbg !2486

89:                                               ; preds = %73, %84, %79
  %90 = phi i32 [ %77, %73 ], [ %85, %84 ], [ %83, %79 ]
  %91 = phi ptr [ %76, %73 ], [ %86, %84 ], [ %82, %79 ]
  %92 = phi ptr [ %75, %73 ], [ %87, %84 ], [ %81, %79 ]
  %93 = icmp eq ptr %92, null, !dbg !2488
  br i1 %93, label %94, label %95, !dbg !2490

94:                                               ; preds = %89
  store i32 %90, ptr %91, align 4, !dbg !2491, !tbaa !1174
  br label %95, !dbg !2492

95:                                               ; preds = %94, %89
  ret ptr %92, !dbg !2493
}

; Function Attrs: nounwind
declare !dbg !2494 i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !2497 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #21

declare !dbg !2500 i32 @close(i32 noundef) local_unnamed_addr #3

declare !dbg !2501 ptr @freopen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2505 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2544, metadata !DIExpression()), !dbg !2550
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2545, metadata !DIExpression()), !dbg !2550
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2546, metadata !DIExpression()), !dbg !2550
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2551
  %5 = load ptr, ptr %4, align 8, !dbg !2551, !tbaa !2552
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2553
  %7 = load ptr, ptr %6, align 8, !dbg !2553, !tbaa !2554
  %8 = icmp eq ptr %5, %7, !dbg !2555
  br i1 %8, label %9, label %27, !dbg !2556

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2557
  %11 = load ptr, ptr %10, align 8, !dbg !2557, !tbaa !2150
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2558
  %13 = load ptr, ptr %12, align 8, !dbg !2558, !tbaa !2559
  %14 = icmp eq ptr %11, %13, !dbg !2560
  br i1 %14, label %15, label %27, !dbg !2561

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2562
  %17 = load ptr, ptr %16, align 8, !dbg !2562, !tbaa !2563
  %18 = icmp eq ptr %17, null, !dbg !2564
  br i1 %18, label %19, label %27, !dbg !2565

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !2566
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !2567
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2547, metadata !DIExpression()), !dbg !2568
  %22 = icmp eq i64 %21, -1, !dbg !2569
  br i1 %22, label %29, label %23, !dbg !2571

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2572, !tbaa !1569
  %25 = and i32 %24, -17, !dbg !2572
  store i32 %25, ptr %0, align 8, !dbg !2572, !tbaa !1569
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2573
  store i64 %21, ptr %26, align 8, !dbg !2574, !tbaa !2575
  br label %29, !dbg !2576

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2577
  br label %29, !dbg !2578

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2550
  ret i32 %30, !dbg !2579
}

; Function Attrs: nofree nounwind
declare !dbg !2580 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #22 !dbg !2583 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2586, !tbaa !1109
  ret ptr %1, !dbg !2587
}

; Function Attrs: noreturn nounwind uwtable
define internal void @print_and_abort() #0 !dbg !2588 {
  %1 = load ptr, ptr @stderr, align 8, !dbg !2589, !tbaa !1109
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.151, ptr noundef nonnull @.str.2.152, i32 noundef 5) #39, !dbg !2589
  %3 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.153, ptr noundef %2) #39, !dbg !2589
  %4 = load volatile i32, ptr @exit_failure, align 4, !dbg !2590, !tbaa !1174
  tail call void @exit(i32 noundef %4) #41, !dbg !2591
  unreachable, !dbg !2591
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_obstack_begin(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2592 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2631, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2632, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2633, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2634, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2635, metadata !DIExpression()), !dbg !2636
  %6 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 7, !dbg !2637
  store ptr %3, ptr %6, align 8, !dbg !2638, !tbaa !1183
  %7 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 8, !dbg !2639
  store ptr %4, ptr %7, align 8, !dbg !2640, !tbaa !1183
  %8 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 10, !dbg !2641
  %9 = load i8, ptr %8, align 8, !dbg !2642
  %10 = and i8 %9, -2, !dbg !2642
  store i8 %10, ptr %8, align 8, !dbg !2642
  call void @llvm.dbg.value(metadata ptr %0, metadata !2643, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i64 %1, metadata !2648, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i64 %2, metadata !2649, metadata !DIExpression()), !dbg !2657
  %11 = icmp eq i64 %2, 0, !dbg !2659
  %12 = add i64 %2, -1, !dbg !2661
  call void @llvm.dbg.value(metadata i64 poison, metadata !2649, metadata !DIExpression()), !dbg !2657
  %13 = select i1 %11, i64 15, i64 %12, !dbg !2661
  call void @llvm.dbg.value(metadata ptr undef, metadata !2662, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i64 %13, metadata !2667, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i64 16, metadata !2668, metadata !DIExpression()), !dbg !2669
  %14 = and i64 %13, -16, !dbg !2671
  %15 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 16), !dbg !2671
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !2671
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !2671
  call void @llvm.dbg.value(metadata i64 %17, metadata !2651, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i1 %16, metadata !2652, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2657
  call void @llvm.dbg.value(metadata i64 %1, metadata !2653, metadata !DIExpression()), !dbg !2657
  %18 = icmp ugt i64 %17, %1, !dbg !2672
  %19 = tail call i64 @llvm.umax.i64(i64 %17, i64 4000), !dbg !2673
  %20 = select i1 %18, i64 %19, i64 %1, !dbg !2673
  call void @llvm.dbg.value(metadata i64 %20, metadata !2653, metadata !DIExpression()), !dbg !2657
  store i64 %20, ptr %0, align 8, !dbg !2674, !tbaa !2675
  %21 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 6, !dbg !2676
  store i64 %13, ptr %21, align 8, !dbg !2677, !tbaa !1484
  br i1 %16, label %22, label %24, !dbg !2678

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2679
  store ptr null, ptr %23, align 8, !dbg !2680, !tbaa !2681
  call void @llvm.dbg.value(metadata ptr null, metadata !2650, metadata !DIExpression()), !dbg !2657
  br label %28, !dbg !2682

24:                                               ; preds = %5
  call void @llvm.dbg.value(metadata ptr %0, metadata !2683, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %20, metadata !2688, metadata !DIExpression()), !dbg !2689
  %25 = tail call ptr %3(i64 noundef %20) #39, !dbg !2691
  %26 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2679
  store ptr %25, ptr %26, align 8, !dbg !2680, !tbaa !2681
  call void @llvm.dbg.value(metadata ptr %25, metadata !2650, metadata !DIExpression()), !dbg !2657
  %27 = icmp eq ptr %25, null, !dbg !2693
  br i1 %27, label %28, label %30, !dbg !2682

28:                                               ; preds = %24, %22
  %29 = load ptr, ptr @obstack_alloc_failed_handler, align 8, !dbg !2695, !tbaa !1109
  tail call void %29() #41, !dbg !2696
  unreachable, !dbg !2696

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct._obstack_chunk, ptr %25, i64 0, i32 2, !dbg !2697
  %32 = ptrtoint ptr %31 to i64, !dbg !2697
  %33 = sub i64 0, %32, !dbg !2697
  %34 = and i64 %13, %33, !dbg !2697
  %35 = getelementptr inbounds i8, ptr %31, i64 %34, !dbg !2697
  %36 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 2, !dbg !2698
  store ptr %35, ptr %36, align 8, !dbg !2699, !tbaa !1478
  %37 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 3, !dbg !2700
  store ptr %35, ptr %37, align 8, !dbg !2701, !tbaa !1475
  %38 = getelementptr inbounds i8, ptr %25, i64 %20, !dbg !2702
  %39 = sub i64 0, %13, !dbg !2702
  %40 = getelementptr inbounds i8, ptr %38, i64 %39, !dbg !2702
  %41 = ptrtoint ptr %40 to i64, !dbg !2702
  %42 = sub i64 0, %41, !dbg !2702
  %43 = and i64 %13, %42, !dbg !2702
  %44 = getelementptr inbounds i8, ptr %40, i64 %43, !dbg !2702
  store ptr %44, ptr %25, align 8, !dbg !2703, !tbaa !1109
  %45 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 4, !dbg !2704
  store ptr %44, ptr %45, align 8, !dbg !2705, !tbaa !1779
  %46 = getelementptr inbounds %struct._obstack_chunk, ptr %25, i64 0, i32 1, !dbg !2706
  store ptr null, ptr %46, align 8, !dbg !2707, !tbaa !1109
  %47 = load i8, ptr %8, align 8, !dbg !2708
  %48 = and i8 %47, -7, !dbg !2709
  store i8 %48, ptr %8, align 8, !dbg !2709
  ret i32 1, !dbg !2710
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_obstack_begin_1(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #10 !dbg !2711 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2715, metadata !DIExpression()), !dbg !2721
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2716, metadata !DIExpression()), !dbg !2721
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2717, metadata !DIExpression()), !dbg !2721
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2718, metadata !DIExpression()), !dbg !2721
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2719, metadata !DIExpression()), !dbg !2721
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2720, metadata !DIExpression()), !dbg !2721
  %7 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 7, !dbg !2722
  store ptr %3, ptr %7, align 8, !dbg !2723, !tbaa !1183
  %8 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 8, !dbg !2724
  store ptr %4, ptr %8, align 8, !dbg !2725, !tbaa !1183
  %9 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 9, !dbg !2726
  store ptr %5, ptr %9, align 8, !dbg !2727, !tbaa !2728
  %10 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 10, !dbg !2729
  %11 = load i8, ptr %10, align 8, !dbg !2730
  %12 = or i8 %11, 1, !dbg !2730
  store i8 %12, ptr %10, align 8, !dbg !2730
  call void @llvm.dbg.value(metadata ptr %0, metadata !2643, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i64 %1, metadata !2648, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i64 %2, metadata !2649, metadata !DIExpression()), !dbg !2731
  %13 = icmp eq i64 %2, 0, !dbg !2733
  %14 = add i64 %2, -1, !dbg !2734
  call void @llvm.dbg.value(metadata i64 poison, metadata !2649, metadata !DIExpression()), !dbg !2731
  %15 = select i1 %13, i64 15, i64 %14, !dbg !2734
  call void @llvm.dbg.value(metadata ptr undef, metadata !2662, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i64 %15, metadata !2667, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i64 16, metadata !2668, metadata !DIExpression()), !dbg !2735
  %16 = and i64 %15, -16, !dbg !2737
  %17 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %16, i64 16), !dbg !2737
  %18 = extractvalue { i64, i1 } %17, 1, !dbg !2737
  %19 = extractvalue { i64, i1 } %17, 0, !dbg !2737
  call void @llvm.dbg.value(metadata i64 %19, metadata !2651, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i1 %18, metadata !2652, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2731
  call void @llvm.dbg.value(metadata i64 %1, metadata !2653, metadata !DIExpression()), !dbg !2731
  %20 = icmp ugt i64 %19, %1, !dbg !2738
  %21 = tail call i64 @llvm.umax.i64(i64 %19, i64 4000), !dbg !2739
  %22 = select i1 %20, i64 %21, i64 %1, !dbg !2739
  call void @llvm.dbg.value(metadata i64 %22, metadata !2653, metadata !DIExpression()), !dbg !2731
  store i64 %22, ptr %0, align 8, !dbg !2740, !tbaa !2675
  %23 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 6, !dbg !2741
  store i64 %15, ptr %23, align 8, !dbg !2742, !tbaa !1484
  br i1 %18, label %24, label %26, !dbg !2743

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2744
  store ptr null, ptr %25, align 8, !dbg !2745, !tbaa !2681
  call void @llvm.dbg.value(metadata ptr null, metadata !2650, metadata !DIExpression()), !dbg !2731
  br label %30, !dbg !2746

26:                                               ; preds = %6
  call void @llvm.dbg.value(metadata ptr %0, metadata !2683, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i64 %22, metadata !2688, metadata !DIExpression()), !dbg !2747
  %27 = tail call ptr %3(ptr noundef %5, i64 noundef %22) #39, !dbg !2749
  %28 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2744
  store ptr %27, ptr %28, align 8, !dbg !2745, !tbaa !2681
  call void @llvm.dbg.value(metadata ptr %27, metadata !2650, metadata !DIExpression()), !dbg !2731
  %29 = icmp eq ptr %27, null, !dbg !2750
  br i1 %29, label %30, label %32, !dbg !2746

30:                                               ; preds = %26, %24
  %31 = load ptr, ptr @obstack_alloc_failed_handler, align 8, !dbg !2751, !tbaa !1109
  tail call void %31() #41, !dbg !2752
  unreachable, !dbg !2752

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct._obstack_chunk, ptr %27, i64 0, i32 2, !dbg !2753
  %34 = ptrtoint ptr %33 to i64, !dbg !2753
  %35 = sub i64 0, %34, !dbg !2753
  %36 = and i64 %15, %35, !dbg !2753
  %37 = getelementptr inbounds i8, ptr %33, i64 %36, !dbg !2753
  %38 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 2, !dbg !2754
  store ptr %37, ptr %38, align 8, !dbg !2755, !tbaa !1478
  %39 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 3, !dbg !2756
  store ptr %37, ptr %39, align 8, !dbg !2757, !tbaa !1475
  %40 = getelementptr inbounds i8, ptr %27, i64 %22, !dbg !2758
  %41 = sub i64 0, %15, !dbg !2758
  %42 = getelementptr inbounds i8, ptr %40, i64 %41, !dbg !2758
  %43 = ptrtoint ptr %42 to i64, !dbg !2758
  %44 = sub i64 0, %43, !dbg !2758
  %45 = and i64 %15, %44, !dbg !2758
  %46 = getelementptr inbounds i8, ptr %42, i64 %45, !dbg !2758
  store ptr %46, ptr %27, align 8, !dbg !2759, !tbaa !1109
  %47 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 4, !dbg !2760
  store ptr %46, ptr %47, align 8, !dbg !2761, !tbaa !1779
  %48 = getelementptr inbounds %struct._obstack_chunk, ptr %27, i64 0, i32 1, !dbg !2762
  store ptr null, ptr %48, align 8, !dbg !2763, !tbaa !1109
  %49 = load i8, ptr %10, align 8, !dbg !2764
  %50 = and i8 %49, -7, !dbg !2765
  store i8 %50, ptr %10, align 8, !dbg !2765
  ret i32 1, !dbg !2766
}

; Function Attrs: nounwind uwtable
define dso_local void @rpl_obstack_newchunk(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2767 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2771, metadata !DIExpression()), !dbg !2780
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2772, metadata !DIExpression()), !dbg !2780
  %3 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2781
  %4 = load ptr, ptr %3, align 8, !dbg !2781, !tbaa !2681
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2773, metadata !DIExpression()), !dbg !2780
  %5 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 3, !dbg !2782
  %6 = load ptr, ptr %5, align 8, !dbg !2782, !tbaa !1475
  %7 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 2, !dbg !2783
  %8 = load ptr, ptr %7, align 8, !dbg !2783, !tbaa !1478
  %9 = ptrtoint ptr %6 to i64, !dbg !2784
  %10 = ptrtoint ptr %8 to i64, !dbg !2784
  %11 = sub i64 %9, %10, !dbg !2784
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2774, metadata !DIExpression()), !dbg !2780
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2777, metadata !DIExpression()), !dbg !2780
  %12 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %11, i64 %1), !dbg !2785
  %13 = extractvalue { i64, i1 } %12, 1, !dbg !2785
  %14 = extractvalue { i64, i1 } %12, 0, !dbg !2785
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2775, metadata !DIExpression()), !dbg !2780
  tail call void @llvm.dbg.value(metadata i1 %13, metadata !2777, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2780
  %15 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 6, !dbg !2786
  %16 = load i64, ptr %15, align 8, !dbg !2786, !tbaa !1484
  call void @llvm.dbg.value(metadata ptr undef, metadata !2662, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i64 %16, metadata !2667, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i64 %14, metadata !2668, metadata !DIExpression()), !dbg !2787
  %17 = sub i64 0, %14, !dbg !2789
  %18 = and i64 %16, %17, !dbg !2789
  %19 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %18, i64 %14), !dbg !2789
  %20 = extractvalue { i64, i1 } %19, 1, !dbg !2789
  %21 = extractvalue { i64, i1 } %19, 0, !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2775, metadata !DIExpression()), !dbg !2780
  %22 = or i1 %13, %20, !dbg !2790
  tail call void @llvm.dbg.value(metadata i1 %22, metadata !2777, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2780
  %23 = add i64 %16, 16, !dbg !2791
  %24 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %21, i64 %23), !dbg !2791
  %25 = extractvalue { i64, i1 } %24, 1, !dbg !2791
  %26 = extractvalue { i64, i1 } %24, 0, !dbg !2791
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !2775, metadata !DIExpression()), !dbg !2780
  %27 = or i1 %22, %25, !dbg !2792
  tail call void @llvm.dbg.value(metadata i1 %27, metadata !2777, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2780
  %28 = lshr i64 %11, 3, !dbg !2793
  %29 = add nuw nsw i64 %28, 100, !dbg !2793
  %30 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %26, i64 %29), !dbg !2793
  %31 = extractvalue { i64, i1 } %30, 1, !dbg !2793
  %32 = extractvalue { i64, i1 } %30, 0, !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2776, metadata !DIExpression()), !dbg !2780
  %33 = select i1 %31, i64 %26, i64 %32, !dbg !2795
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !2776, metadata !DIExpression()), !dbg !2780
  %34 = load i64, ptr %0, align 8, !dbg !2796, !tbaa !2675
  %35 = tail call i64 @llvm.umax.i64(i64 %33, i64 %34), !dbg !2798
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !2776, metadata !DIExpression()), !dbg !2780
  br i1 %27, label %52, label %36, !dbg !2799

36:                                               ; preds = %2
  call void @llvm.dbg.value(metadata ptr %0, metadata !2683, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i64 %35, metadata !2688, metadata !DIExpression()), !dbg !2800
  %37 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 10, !dbg !2802
  %38 = load i8, ptr %37, align 8, !dbg !2802
  %39 = and i8 %38, 1, !dbg !2802
  %40 = icmp eq i8 %39, 0, !dbg !2803
  %41 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 7, !dbg !2804
  %42 = load ptr, ptr %41, align 8, !dbg !2804, !tbaa !1183
  br i1 %40, label %47, label %43, !dbg !2805

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 9, !dbg !2806
  %45 = load ptr, ptr %44, align 8, !dbg !2806, !tbaa !2728
  %46 = tail call ptr %42(ptr noundef %45, i64 noundef %35) #39, !dbg !2807
  br label %49, !dbg !2808

47:                                               ; preds = %36
  %48 = tail call ptr %42(i64 noundef %35) #39, !dbg !2809
  br label %49, !dbg !2810

49:                                               ; preds = %47, %43
  %50 = phi ptr [ %46, %43 ], [ %48, %47 ], !dbg !2799
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !2778, metadata !DIExpression()), !dbg !2780
  %51 = icmp eq ptr %50, null, !dbg !2811
  br i1 %51, label %52, label %54, !dbg !2813

52:                                               ; preds = %2, %49
  %53 = load ptr, ptr @obstack_alloc_failed_handler, align 8, !dbg !2814, !tbaa !1109
  tail call void %53() #41, !dbg !2815
  unreachable, !dbg !2815

54:                                               ; preds = %49
  store ptr %50, ptr %3, align 8, !dbg !2816, !tbaa !2681
  %55 = getelementptr inbounds %struct._obstack_chunk, ptr %50, i64 0, i32 1, !dbg !2817
  store ptr %4, ptr %55, align 8, !dbg !2818, !tbaa !1109
  %56 = getelementptr inbounds i8, ptr %50, i64 %35, !dbg !2819
  %57 = load i64, ptr %15, align 8, !dbg !2819, !tbaa !1484
  %58 = sub i64 0, %57, !dbg !2819
  %59 = getelementptr inbounds i8, ptr %56, i64 %58, !dbg !2819
  %60 = ptrtoint ptr %59 to i64, !dbg !2819
  %61 = sub i64 0, %60, !dbg !2819
  %62 = and i64 %57, %61, !dbg !2819
  %63 = getelementptr inbounds i8, ptr %59, i64 %62, !dbg !2819
  %64 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 4, !dbg !2820
  store ptr %63, ptr %64, align 8, !dbg !2821, !tbaa !1779
  store ptr %63, ptr %50, align 8, !dbg !2822, !tbaa !1109
  %65 = getelementptr inbounds %struct._obstack_chunk, ptr %50, i64 0, i32 2, !dbg !2823
  %66 = ptrtoint ptr %65 to i64, !dbg !2823
  %67 = sub i64 0, %66, !dbg !2823
  %68 = and i64 %57, %67, !dbg !2823
  %69 = getelementptr inbounds i8, ptr %65, i64 %68, !dbg !2823
  tail call void @llvm.dbg.value(metadata ptr %69, metadata !2779, metadata !DIExpression()), !dbg !2780
  %70 = load ptr, ptr %7, align 8, !dbg !2824, !tbaa !1478
  call void @llvm.dbg.value(metadata ptr %69, metadata !2825, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata ptr %70, metadata !2832, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i64 %11, metadata !2833, metadata !DIExpression()), !dbg !2834
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %69, ptr noundef nonnull align 1 %70, i64 noundef %11, i1 noundef false) #39, !dbg !2836
  %71 = load i8, ptr %37, align 8, !dbg !2837
  %72 = and i8 %71, 2, !dbg !2839
  %73 = icmp eq i8 %72, 0, !dbg !2839
  br i1 %73, label %74, label %95, !dbg !2840

74:                                               ; preds = %54
  %75 = load ptr, ptr %7, align 8, !dbg !2841, !tbaa !1478
  %76 = getelementptr inbounds %struct._obstack_chunk, ptr %4, i64 0, i32 2, !dbg !2842
  %77 = ptrtoint ptr %76 to i64, !dbg !2842
  %78 = sub i64 0, %77, !dbg !2842
  %79 = load i64, ptr %15, align 8, !dbg !2842, !tbaa !1484
  %80 = and i64 %79, %78, !dbg !2842
  %81 = getelementptr inbounds i8, ptr %76, i64 %80, !dbg !2842
  %82 = icmp eq ptr %75, %81, !dbg !2843
  br i1 %82, label %83, label %95, !dbg !2844

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct._obstack_chunk, ptr %4, i64 0, i32 1, !dbg !2845
  %85 = load ptr, ptr %84, align 8, !dbg !2845, !tbaa !1109
  store ptr %85, ptr %55, align 8, !dbg !2847, !tbaa !1109
  call void @llvm.dbg.value(metadata ptr %0, metadata !2848, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata ptr %4, metadata !2853, metadata !DIExpression()), !dbg !2854
  %86 = load i8, ptr %37, align 8, !dbg !2856
  %87 = and i8 %86, 1, !dbg !2856
  %88 = icmp eq i8 %87, 0, !dbg !2858
  %89 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 8, !dbg !2859
  %90 = load ptr, ptr %89, align 8, !dbg !2859, !tbaa !1183
  br i1 %88, label %94, label %91, !dbg !2860

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 9, !dbg !2861
  %93 = load ptr, ptr %92, align 8, !dbg !2861, !tbaa !2728
  tail call void %90(ptr noundef %93, ptr noundef nonnull %4) #39, !dbg !2862
  br label %95, !dbg !2862

94:                                               ; preds = %83
  tail call void %90(ptr noundef nonnull %4) #39, !dbg !2863
  br label %95

95:                                               ; preds = %94, %91, %74, %54
  store ptr %69, ptr %7, align 8, !dbg !2864, !tbaa !1478
  %96 = getelementptr inbounds i8, ptr %69, i64 %11, !dbg !2865
  store ptr %96, ptr %5, align 8, !dbg !2866, !tbaa !1475
  %97 = load i8, ptr %37, align 8, !dbg !2867
  %98 = and i8 %97, -3, !dbg !2867
  store i8 %98, ptr %37, align 8, !dbg !2867
  ret void, !dbg !2868
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @rpl_obstack_allocated_p(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #14 !dbg !2869 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2873, metadata !DIExpression()), !dbg !2878
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2874, metadata !DIExpression()), !dbg !2878
  %3 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2879
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !2875, metadata !DIExpression()), !dbg !2878
  %4 = load ptr, ptr %3, align 8, !dbg !2878, !tbaa !1109
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2875, metadata !DIExpression()), !dbg !2878
  %5 = icmp eq ptr %4, null, !dbg !2880
  br i1 %5, label %16, label %.preheader, !dbg !2881

.preheader:                                       ; preds = %2
  br label %6, !dbg !2882

6:                                                ; preds = %.preheader, %12
  %7 = phi ptr [ %14, %12 ], [ %4, %.preheader ]
  %8 = icmp ult ptr %7, %1, !dbg !2883
  br i1 %8, label %9, label %12, !dbg !2884

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 8, !dbg !2885, !tbaa !1109
  %11 = icmp ult ptr %10, %1, !dbg !2886
  br i1 %11, label %12, label %.loopexit, !dbg !2882

12:                                               ; preds = %6, %9
  %13 = getelementptr inbounds %struct._obstack_chunk, ptr %7, i64 0, i32 1, !dbg !2887
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !2876, metadata !DIExpression()), !dbg !2888
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !2875, metadata !DIExpression()), !dbg !2878
  %14 = load ptr, ptr %13, align 8, !dbg !2878, !tbaa !1109
  tail call void @llvm.dbg.value(metadata ptr %14, metadata !2875, metadata !DIExpression()), !dbg !2878
  %15 = icmp eq ptr %14, null, !dbg !2880
  br i1 %15, label %.loopexit, label %6, !dbg !2881, !llvm.loop !2889

.loopexit:                                        ; preds = %12, %9
  %.ph = phi i32 [ 1, %9 ], [ 0, %12 ]
  br label %16, !dbg !2891

16:                                               ; preds = %.loopexit, %2
  %17 = phi i32 [ 0, %2 ], [ %.ph, %.loopexit ], !dbg !2880
  ret i32 %17, !dbg !2891
}

; Function Attrs: nounwind uwtable
define dso_local void @rpl_obstack_free(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2892 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2894, metadata !DIExpression()), !dbg !2899
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2895, metadata !DIExpression()), !dbg !2899
  %3 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2900
  %4 = load ptr, ptr %3, align 8, !dbg !2900, !tbaa !2681
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2896, metadata !DIExpression()), !dbg !2899
  %5 = icmp eq ptr %4, null, !dbg !2901
  br i1 %5, label %35, label %6, !dbg !2902

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 10
  %8 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 8
  %9 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 9
  br label %10, !dbg !2902

10:                                               ; preds = %6, %26
  %11 = phi ptr [ %4, %6 ], [ %18, %26 ]
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !2896, metadata !DIExpression()), !dbg !2899
  %12 = icmp ult ptr %11, %1, !dbg !2903
  br i1 %12, label %13, label %16, !dbg !2904

13:                                               ; preds = %10
  %14 = load ptr, ptr %11, align 8, !dbg !2905, !tbaa !1109
  %15 = icmp ult ptr %14, %1, !dbg !2906
  br i1 %15, label %16, label %30, !dbg !2907

16:                                               ; preds = %10, %13
  %17 = getelementptr inbounds %struct._obstack_chunk, ptr %11, i64 0, i32 1, !dbg !2908
  %18 = load ptr, ptr %17, align 8, !dbg !2908, !tbaa !1109
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !2897, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata ptr %0, metadata !2848, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata ptr %11, metadata !2853, metadata !DIExpression()), !dbg !2910
  %19 = load i8, ptr %7, align 8, !dbg !2912
  %20 = and i8 %19, 1, !dbg !2912
  %21 = icmp eq i8 %20, 0, !dbg !2913
  %22 = load ptr, ptr %8, align 8, !dbg !2914, !tbaa !1183
  br i1 %21, label %25, label %23, !dbg !2915

23:                                               ; preds = %16
  %24 = load ptr, ptr %9, align 8, !dbg !2916, !tbaa !2728
  tail call void %22(ptr noundef %24, ptr noundef nonnull %11) #39, !dbg !2917
  br label %26, !dbg !2917

25:                                               ; preds = %16
  tail call void %22(ptr noundef nonnull %11) #39, !dbg !2918
  br label %26

26:                                               ; preds = %23, %25
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !2896, metadata !DIExpression()), !dbg !2899
  %27 = load i8, ptr %7, align 8, !dbg !2919
  %28 = or i8 %27, 2, !dbg !2919
  store i8 %28, ptr %7, align 8, !dbg !2919
  %29 = icmp eq ptr %18, null, !dbg !2901
  br i1 %29, label %.loopexit, label %10, !dbg !2902, !llvm.loop !2920

30:                                               ; preds = %13
  %.lcssa = phi ptr [ %11, %13 ]
  %31 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 3, !dbg !2922
  store ptr %1, ptr %31, align 8, !dbg !2925, !tbaa !1475
  %32 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 2, !dbg !2926
  store ptr %1, ptr %32, align 8, !dbg !2927, !tbaa !1478
  %33 = load ptr, ptr %.lcssa, align 8, !dbg !2928, !tbaa !1109
  %34 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 4, !dbg !2929
  store ptr %33, ptr %34, align 8, !dbg !2930, !tbaa !1779
  store ptr %.lcssa, ptr %3, align 8, !dbg !2931, !tbaa !2681
  br label %38, !dbg !2932

.loopexit:                                        ; preds = %26
  br label %35, !dbg !2933

35:                                               ; preds = %.loopexit, %2
  %36 = icmp eq ptr %1, null, !dbg !2933
  br i1 %36, label %38, label %37, !dbg !2935

37:                                               ; preds = %35
  tail call void @abort() #41, !dbg !2936
  unreachable, !dbg !2936

38:                                               ; preds = %35, %30
  ret void, !dbg !2937
}

; Function Attrs: noreturn nounwind
declare !dbg !2938 void @abort() local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @rpl_obstack_memory_used(ptr nocapture noundef readonly %0) local_unnamed_addr #14 !dbg !2939 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2943, metadata !DIExpression()), !dbg !2947
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2944, metadata !DIExpression()), !dbg !2947
  %2 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2948
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !2945, metadata !DIExpression()), !dbg !2949
  %3 = load ptr, ptr %2, align 8, !dbg !2950, !tbaa !1109
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2945, metadata !DIExpression()), !dbg !2949
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2944, metadata !DIExpression()), !dbg !2947
  %4 = icmp eq ptr %3, null, !dbg !2951
  br i1 %4, label %5, label %.preheader, !dbg !2953

.preheader:                                       ; preds = %1
  br label %7, !dbg !2953

.loopexit:                                        ; preds = %7
  %.lcssa = phi i64 [ %14, %7 ], !dbg !2954
  br label %5, !dbg !2956

5:                                                ; preds = %.loopexit, %1
  %6 = phi i64 [ 0, %1 ], [ %.lcssa, %.loopexit ], !dbg !2947
  ret i64 %6, !dbg !2956

7:                                                ; preds = %.preheader, %7
  %8 = phi ptr [ %16, %7 ], [ %3, %.preheader ]
  %9 = phi i64 [ %14, %7 ], [ 0, %.preheader ]
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !2944, metadata !DIExpression()), !dbg !2947
  %10 = load ptr, ptr %8, align 8, !dbg !2957, !tbaa !1109
  %11 = ptrtoint ptr %10 to i64, !dbg !2958
  %12 = ptrtoint ptr %8 to i64, !dbg !2958
  %13 = sub i64 %9, %12, !dbg !2958
  %14 = add i64 %13, %11, !dbg !2954
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2944, metadata !DIExpression()), !dbg !2947
  %15 = getelementptr inbounds %struct._obstack_chunk, ptr %8, i64 0, i32 1, !dbg !2959
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !2945, metadata !DIExpression()), !dbg !2949
  %16 = load ptr, ptr %15, align 8, !dbg !2950, !tbaa !1109
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !2945, metadata !DIExpression()), !dbg !2949
  %17 = icmp eq ptr %16, null, !dbg !2951
  br i1 %17, label %.loopexit, label %7, !dbg !2953, !llvm.loop !2960
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #23 !dbg !2962 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2964, metadata !DIExpression()), !dbg !2967
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !2968
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2965, metadata !DIExpression()), !dbg !2967
  %3 = icmp eq ptr %2, null, !dbg !2969
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2969
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2969
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2966, metadata !DIExpression()), !dbg !2967
  %6 = ptrtoint ptr %5 to i64, !dbg !2970
  %7 = ptrtoint ptr %0 to i64, !dbg !2970
  %8 = sub i64 %6, %7, !dbg !2970
  %9 = icmp sgt i64 %8, 6, !dbg !2972
  br i1 %9, label %10, label %19, !dbg !2973

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2974
  call void @llvm.dbg.value(metadata ptr %11, metadata !2975, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata ptr @.str.162, metadata !2980, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i64 7, metadata !2981, metadata !DIExpression()), !dbg !2982
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.162, i64 7), !dbg !2984
  %13 = icmp eq i32 %12, 0, !dbg !2985
  br i1 %13, label %14, label %19, !dbg !2986

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2964, metadata !DIExpression()), !dbg !2967
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.163, i64 noundef 3) #40, !dbg !2987
  %16 = icmp eq i32 %15, 0, !dbg !2990
  %17 = select i1 %16, i64 3, i64 0, !dbg !2991
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2991
  br label %19, !dbg !2991

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2967
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2966, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2964, metadata !DIExpression()), !dbg !2967
  store ptr %20, ptr @program_name, align 8, !dbg !2992, !tbaa !1109
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2993, !tbaa !1109
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2994, !tbaa !1109
  ret void, !dbg !2995
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2996 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !775 {
  %3 = alloca i32, align 4, !DIAssignID !2997
  call void @llvm.dbg.assign(metadata i1 undef, metadata !785, metadata !DIExpression(), metadata !2997, metadata ptr %3, metadata !DIExpression()), !dbg !2998
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2999
  call void @llvm.dbg.assign(metadata i1 undef, metadata !790, metadata !DIExpression(), metadata !2999, metadata ptr %4, metadata !DIExpression()), !dbg !2998
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !782, metadata !DIExpression()), !dbg !2998
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !783, metadata !DIExpression()), !dbg !2998
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !3000
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !784, metadata !DIExpression()), !dbg !2998
  %6 = icmp eq ptr %5, %0, !dbg !3001
  br i1 %6, label %7, label %14, !dbg !3003

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !3004
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !3005
  call void @llvm.dbg.value(metadata ptr %4, metadata !3006, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata ptr %4, metadata !3015, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i32 0, metadata !3020, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i64 8, metadata !3021, metadata !DIExpression()), !dbg !3022
  store i64 0, ptr %4, align 8, !dbg !3024
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !3025
  %9 = icmp eq i64 %8, 2, !dbg !3027
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !3028
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2998
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !3029
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !3029
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2998
  ret ptr %15, !dbg !3029
}

; Function Attrs: nounwind
declare !dbg !3030 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !3036 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3041, metadata !DIExpression()), !dbg !3044
  %2 = tail call ptr @__errno_location() #42, !dbg !3045
  %3 = load i32, ptr %2, align 4, !dbg !3045, !tbaa !1174
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !3042, metadata !DIExpression()), !dbg !3044
  %4 = icmp eq ptr %0, null, !dbg !3046
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3046
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #45, !dbg !3047
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3043, metadata !DIExpression()), !dbg !3044
  store i32 %3, ptr %2, align 4, !dbg !3048, !tbaa !1174
  ret ptr %6, !dbg !3049
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #14 !dbg !3050 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3056, metadata !DIExpression()), !dbg !3057
  %2 = icmp eq ptr %0, null, !dbg !3058
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !3058
  %4 = load i32, ptr %3, align 8, !dbg !3059, !tbaa !3060
  ret i32 %4, !dbg !3062
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #25 !dbg !3063 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3067, metadata !DIExpression()), !dbg !3069
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3068, metadata !DIExpression()), !dbg !3069
  %3 = icmp eq ptr %0, null, !dbg !3070
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3070
  store i32 %1, ptr %4, align 8, !dbg !3071, !tbaa !3060
  ret void, !dbg !3072
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #26 !dbg !3073 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3077, metadata !DIExpression()), !dbg !3085
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3078, metadata !DIExpression()), !dbg !3085
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3079, metadata !DIExpression()), !dbg !3085
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3080, metadata !DIExpression()), !dbg !3085
  %4 = icmp eq ptr %0, null, !dbg !3086
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3086
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3087
  %7 = lshr i8 %1, 5, !dbg !3088
  %8 = zext nneg i8 %7 to i64, !dbg !3088
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !3089
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !3081, metadata !DIExpression()), !dbg !3085
  %10 = and i8 %1, 31, !dbg !3090
  %11 = zext nneg i8 %10 to i32, !dbg !3090
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !3083, metadata !DIExpression()), !dbg !3085
  %12 = load i32, ptr %9, align 4, !dbg !3091, !tbaa !1174
  %13 = lshr i32 %12, %11, !dbg !3092
  %14 = and i32 %13, 1, !dbg !3093
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !3084, metadata !DIExpression()), !dbg !3085
  %15 = xor i32 %13, %2, !dbg !3094
  %16 = and i32 %15, 1, !dbg !3094
  %17 = shl nuw i32 %16, %11, !dbg !3095
  %18 = xor i32 %17, %12, !dbg !3096
  store i32 %18, ptr %9, align 4, !dbg !3096, !tbaa !1174
  ret i32 %14, !dbg !3097
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #26 !dbg !3098 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3102, metadata !DIExpression()), !dbg !3105
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3103, metadata !DIExpression()), !dbg !3105
  %3 = icmp eq ptr %0, null, !dbg !3106
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3108
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3102, metadata !DIExpression()), !dbg !3105
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !3109
  %6 = load i32, ptr %5, align 4, !dbg !3109, !tbaa !3110
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !3104, metadata !DIExpression()), !dbg !3105
  store i32 %1, ptr %5, align 4, !dbg !3111, !tbaa !3110
  ret i32 %6, !dbg !3112
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3113 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3117, metadata !DIExpression()), !dbg !3120
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3118, metadata !DIExpression()), !dbg !3120
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3119, metadata !DIExpression()), !dbg !3120
  %4 = icmp eq ptr %0, null, !dbg !3121
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3123
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3117, metadata !DIExpression()), !dbg !3120
  store i32 10, ptr %5, align 8, !dbg !3124, !tbaa !3060
  %6 = icmp ne ptr %1, null, !dbg !3125
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3127
  br i1 %8, label %10, label %9, !dbg !3127

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3128
  unreachable, !dbg !3128

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3129
  store ptr %1, ptr %11, align 8, !dbg !3130, !tbaa !3131
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3132
  store ptr %2, ptr %12, align 8, !dbg !3133, !tbaa !3134
  ret void, !dbg !3135
}

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !3136 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3140, metadata !DIExpression()), !dbg !3148
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3141, metadata !DIExpression()), !dbg !3148
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3142, metadata !DIExpression()), !dbg !3148
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3143, metadata !DIExpression()), !dbg !3148
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3144, metadata !DIExpression()), !dbg !3148
  %6 = icmp eq ptr %4, null, !dbg !3149
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !3149
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3145, metadata !DIExpression()), !dbg !3148
  %8 = tail call ptr @__errno_location() #42, !dbg !3150
  %9 = load i32, ptr %8, align 4, !dbg !3150, !tbaa !1174
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !3146, metadata !DIExpression()), !dbg !3148
  %10 = load i32, ptr %7, align 8, !dbg !3151, !tbaa !3060
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !3152
  %12 = load i32, ptr %11, align 4, !dbg !3152, !tbaa !3110
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !3153
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !3154
  %15 = load ptr, ptr %14, align 8, !dbg !3154, !tbaa !3131
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !3155
  %17 = load ptr, ptr %16, align 8, !dbg !3155, !tbaa !3134
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !3156
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !3147, metadata !DIExpression()), !dbg !3148
  store i32 %9, ptr %8, align 4, !dbg !3157, !tbaa !1174
  ret i64 %18, !dbg !3158
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !3159 {
  %10 = alloca i32, align 4, !DIAssignID !3227
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3228
  %12 = alloca i32, align 4, !DIAssignID !3229
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3230
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3231
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3205, metadata !DIExpression(), metadata !3231, metadata ptr %14, metadata !DIExpression()), !dbg !3232
  %15 = alloca i32, align 4, !DIAssignID !3233
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3208, metadata !DIExpression(), metadata !3233, metadata ptr %15, metadata !DIExpression()), !dbg !3234
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3165, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3166, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3167, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3168, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !3169, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !3170, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3171, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3172, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3173, metadata !DIExpression()), !dbg !3235
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !3236
  %17 = icmp eq i64 %16, 1, !dbg !3237
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !3174, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3175, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3176, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata ptr null, metadata !3177, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3178, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3179, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !3180, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3181, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3182, metadata !DIExpression()), !dbg !3235
  %18 = and i32 %5, 2, !dbg !3238
  %19 = icmp ne i32 %18, 0, !dbg !3238
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !3238

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !3239
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !3240
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !3241
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !3166, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3182, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3181, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3180, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3179, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !3178, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3177, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !3176, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3175, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !3168, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !3173, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !3172, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !3169, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.label(metadata !3183), !dbg !3242
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3184, metadata !DIExpression()), !dbg !3235
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
  ], !dbg !3243

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3180, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i32 5, metadata !3169, metadata !DIExpression()), !dbg !3235
  br label %101, !dbg !3244

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3180, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i32 5, metadata !3169, metadata !DIExpression()), !dbg !3235
  br i1 %36, label %101, label %42, !dbg !3244

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !3245
  br i1 %43, label %101, label %44, !dbg !3249

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !3245, !tbaa !1183
  br label %101, !dbg !3245

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !876, metadata !DIExpression(), metadata !3229, metadata ptr %12, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.assign(metadata i1 undef, metadata !877, metadata !DIExpression(), metadata !3230, metadata ptr %13, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata ptr @.str.11.176, metadata !873, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i32 %28, metadata !874, metadata !DIExpression()), !dbg !3250
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.177, ptr noundef nonnull @.str.11.176, i32 noundef 5) #39, !dbg !3254
  call void @llvm.dbg.value(metadata ptr %46, metadata !875, metadata !DIExpression()), !dbg !3250
  %47 = icmp eq ptr %46, @.str.11.176, !dbg !3255
  br i1 %47, label %48, label %57, !dbg !3257

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !3258
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !3259
  call void @llvm.dbg.value(metadata ptr %13, metadata !3260, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata ptr %13, metadata !3268, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i32 0, metadata !3271, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i64 8, metadata !3272, metadata !DIExpression()), !dbg !3273
  store i64 0, ptr %13, align 8, !dbg !3275
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !3276
  %50 = icmp eq i64 %49, 3, !dbg !3278
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !3279
  %54 = icmp eq i32 %28, 9, !dbg !3279
  %55 = select i1 %54, ptr @.str.10.178, ptr @.str.12.179, !dbg !3279
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !3279
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !3280
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !3280
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !3250
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !3172, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.assign(metadata i1 undef, metadata !876, metadata !DIExpression(), metadata !3227, metadata ptr %10, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.assign(metadata i1 undef, metadata !877, metadata !DIExpression(), metadata !3228, metadata ptr %11, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata ptr @.str.12.179, metadata !873, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i32 %28, metadata !874, metadata !DIExpression()), !dbg !3281
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.177, ptr noundef nonnull @.str.12.179, i32 noundef 5) #39, !dbg !3283
  call void @llvm.dbg.value(metadata ptr %59, metadata !875, metadata !DIExpression()), !dbg !3281
  %60 = icmp eq ptr %59, @.str.12.179, !dbg !3284
  br i1 %60, label %61, label %70, !dbg !3285

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !3286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !3287
  call void @llvm.dbg.value(metadata ptr %11, metadata !3260, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata ptr %11, metadata !3268, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i32 0, metadata !3271, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 8, metadata !3272, metadata !DIExpression()), !dbg !3290
  store i64 0, ptr %11, align 8, !dbg !3292
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !3293
  %63 = icmp eq i64 %62, 3, !dbg !3294
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !3295
  %67 = icmp eq i32 %28, 9, !dbg !3295
  %68 = select i1 %67, ptr @.str.10.178, ptr @.str.12.179, !dbg !3295
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !3295
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !3296
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !3296
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !3173, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !3172, metadata !DIExpression()), !dbg !3235
  br i1 %36, label %88, label %73, !dbg !3297

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !3185, metadata !DIExpression()), !dbg !3298
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3175, metadata !DIExpression()), !dbg !3235
  %74 = load i8, ptr %71, align 1, !dbg !3299, !tbaa !1183
  %75 = icmp eq i8 %74, 0, !dbg !3301
  br i1 %75, label %88, label %.preheader11, !dbg !3301

.preheader11:                                     ; preds = %73
  br label %76, !dbg !3301

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !3185, metadata !DIExpression()), !dbg !3298
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !3175, metadata !DIExpression()), !dbg !3235
  %80 = icmp ult i64 %79, %39, !dbg !3302
  br i1 %80, label %81, label %83, !dbg !3305

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !3302
  store i8 %77, ptr %82, align 1, !dbg !3302, !tbaa !1183
  br label %83, !dbg !3302

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !3305
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !3175, metadata !DIExpression()), !dbg !3235
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !3306
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !3185, metadata !DIExpression()), !dbg !3298
  %86 = load i8, ptr %85, align 1, !dbg !3299, !tbaa !1183
  %87 = icmp eq i8 %86, 0, !dbg !3301
  br i1 %87, label %.loopexit12, label %76, !dbg !3301, !llvm.loop !3307

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !3305
  br label %88, !dbg !3309

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !3310
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !3175, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3179, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !3177, metadata !DIExpression()), !dbg !3235
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #40, !dbg !3309
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !3178, metadata !DIExpression()), !dbg !3235
  br label %101, !dbg !3311

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3179, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3180, metadata !DIExpression()), !dbg !3235
  br label %101, !dbg !3312

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3180, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3179, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i32 2, metadata !3169, metadata !DIExpression()), !dbg !3235
  br label %101, !dbg !3313

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3180, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3179, metadata !DIExpression()), !dbg !3235
  br i1 %36, label %101, label %95, !dbg !3314

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3180, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3179, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i32 2, metadata !3169, metadata !DIExpression()), !dbg !3235
  br i1 %36, label %101, label %95, !dbg !3313

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !3315
  br i1 %97, label %101, label %98, !dbg !3319

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !3315, !tbaa !1183
  br label %101, !dbg !3315

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3180, metadata !DIExpression()), !dbg !3235
  br label %101, !dbg !3320

100:                                              ; preds = %27
  call void @abort() #41, !dbg !3321
  unreachable, !dbg !3321

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !3310
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.178, %42 ], [ @.str.10.178, %44 ], [ @.str.10.178, %41 ], [ %33, %27 ], [ @.str.12.179, %95 ], [ @.str.12.179, %98 ], [ @.str.12.179, %94 ], [ @.str.10.178, %40 ], [ @.str.12.179, %91 ], [ @.str.12.179, %92 ], [ @.str.12.179, %93 ], !dbg !3235
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !3235
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3180, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3179, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !3178, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !3177, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !3175, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !3173, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !3172, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !3169, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3190, metadata !DIExpression()), !dbg !3322
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
  br label %121, !dbg !3323

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !3310
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !3239
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !3324
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !3166, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !3190, metadata !DIExpression()), !dbg !3322
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3184, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3182, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3181, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !3176, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !3175, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !3168, metadata !DIExpression()), !dbg !3235
  %130 = icmp eq i64 %122, -1, !dbg !3325
  br i1 %130, label %131, label %135, !dbg !3326

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !3327
  %133 = load i8, ptr %132, align 1, !dbg !3327, !tbaa !1183
  %134 = icmp eq i8 %133, 0, !dbg !3328
  br i1 %134, label %573, label %137, !dbg !3329

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !3330
  br i1 %136, label %573, label %137, !dbg !3329

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3192, metadata !DIExpression()), !dbg !3331
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3195, metadata !DIExpression()), !dbg !3331
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3196, metadata !DIExpression()), !dbg !3331
  br i1 %113, label %138, label %151, !dbg !3332

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !3334
  %140 = select i1 %130, i1 %114, i1 false, !dbg !3335
  br i1 %140, label %141, label %143, !dbg !3335

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !3336
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !3168, metadata !DIExpression()), !dbg !3235
  br label %143, !dbg !3337

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !3337
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !3168, metadata !DIExpression()), !dbg !3235
  %145 = icmp ugt i64 %139, %144, !dbg !3338
  br i1 %145, label %151, label %146, !dbg !3339

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !3340
  call void @llvm.dbg.value(metadata ptr %147, metadata !3341, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata ptr %106, metadata !3344, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i64 %107, metadata !3345, metadata !DIExpression()), !dbg !3346
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !3348
  %149 = icmp eq i32 %148, 0, !dbg !3349
  %150 = and i1 %149, %109, !dbg !3350
  br i1 %150, label %.loopexit7, label %151, !dbg !3350

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3192, metadata !DIExpression()), !dbg !3331
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !3168, metadata !DIExpression()), !dbg !3235
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !3351
  %155 = load i8, ptr %154, align 1, !dbg !3351, !tbaa !1183
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !3197, metadata !DIExpression()), !dbg !3331
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
  ], !dbg !3352

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !3353

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !3354

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3195, metadata !DIExpression()), !dbg !3331
  %159 = select i1 %110, i1 true, i1 %127, !dbg !3358
  br i1 %159, label %176, label %160, !dbg !3358

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !3360
  br i1 %161, label %162, label %164, !dbg !3364

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !3360
  store i8 39, ptr %163, align 1, !dbg !3360, !tbaa !1183
  br label %164, !dbg !3360

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !3364
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !3175, metadata !DIExpression()), !dbg !3235
  %166 = icmp ult i64 %165, %129, !dbg !3365
  br i1 %166, label %167, label %169, !dbg !3368

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !3365
  store i8 36, ptr %168, align 1, !dbg !3365, !tbaa !1183
  br label %169, !dbg !3365

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !3368
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !3175, metadata !DIExpression()), !dbg !3235
  %171 = icmp ult i64 %170, %129, !dbg !3369
  br i1 %171, label %172, label %174, !dbg !3372

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !3369
  store i8 39, ptr %173, align 1, !dbg !3369, !tbaa !1183
  br label %174, !dbg !3369

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !3372
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !3175, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3184, metadata !DIExpression()), !dbg !3235
  br label %176, !dbg !3373

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !3235
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3184, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !3175, metadata !DIExpression()), !dbg !3235
  %179 = icmp ult i64 %177, %129, !dbg !3374
  br i1 %179, label %180, label %182, !dbg !3377

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !3374
  store i8 92, ptr %181, align 1, !dbg !3374, !tbaa !1183
  br label %182, !dbg !3374

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !3377
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !3175, metadata !DIExpression()), !dbg !3235
  br i1 %110, label %184, label %476, !dbg !3378

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !3380
  %186 = icmp ult i64 %185, %152, !dbg !3381
  br i1 %186, label %187, label %433, !dbg !3382

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !3383
  %189 = load i8, ptr %188, align 1, !dbg !3383, !tbaa !1183
  %190 = add i8 %189, -48, !dbg !3384
  %191 = icmp ult i8 %190, 10, !dbg !3384
  br i1 %191, label %192, label %433, !dbg !3384

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !3385
  br i1 %193, label %194, label %196, !dbg !3389

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !3385
  store i8 48, ptr %195, align 1, !dbg !3385, !tbaa !1183
  br label %196, !dbg !3385

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !3389
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !3175, metadata !DIExpression()), !dbg !3235
  %198 = icmp ult i64 %197, %129, !dbg !3390
  br i1 %198, label %199, label %201, !dbg !3393

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !3390
  store i8 48, ptr %200, align 1, !dbg !3390, !tbaa !1183
  br label %201, !dbg !3390

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !3393
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !3175, metadata !DIExpression()), !dbg !3235
  br label %433, !dbg !3394

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !3395

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !3396

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !3397

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !3399

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !3401
  %209 = icmp ult i64 %208, %152, !dbg !3402
  br i1 %209, label %210, label %433, !dbg !3403

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !3404
  %212 = load i8, ptr %211, align 1, !dbg !3404, !tbaa !1183
  %213 = icmp eq i8 %212, 63, !dbg !3405
  br i1 %213, label %214, label %433, !dbg !3406

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !3407
  %216 = load i8, ptr %215, align 1, !dbg !3407, !tbaa !1183
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
  ], !dbg !3408

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !3409

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !3197, metadata !DIExpression()), !dbg !3331
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !3190, metadata !DIExpression()), !dbg !3322
  %219 = icmp ult i64 %123, %129, !dbg !3411
  br i1 %219, label %220, label %222, !dbg !3414

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !3411
  store i8 63, ptr %221, align 1, !dbg !3411, !tbaa !1183
  br label %222, !dbg !3411

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !3414
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !3175, metadata !DIExpression()), !dbg !3235
  %224 = icmp ult i64 %223, %129, !dbg !3415
  br i1 %224, label %225, label %227, !dbg !3418

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !3415
  store i8 34, ptr %226, align 1, !dbg !3415, !tbaa !1183
  br label %227, !dbg !3415

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !3418
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !3175, metadata !DIExpression()), !dbg !3235
  %229 = icmp ult i64 %228, %129, !dbg !3419
  br i1 %229, label %230, label %232, !dbg !3422

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !3419
  store i8 34, ptr %231, align 1, !dbg !3419, !tbaa !1183
  br label %232, !dbg !3419

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !3422
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !3175, metadata !DIExpression()), !dbg !3235
  %234 = icmp ult i64 %233, %129, !dbg !3423
  br i1 %234, label %235, label %237, !dbg !3426

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !3423
  store i8 63, ptr %236, align 1, !dbg !3423, !tbaa !1183
  br label %237, !dbg !3423

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !3426
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !3175, metadata !DIExpression()), !dbg !3235
  br label %433, !dbg !3427

239:                                              ; preds = %151
  br label %249, !dbg !3428

240:                                              ; preds = %151
  br label %249, !dbg !3429

241:                                              ; preds = %151
  br label %247, !dbg !3430

242:                                              ; preds = %151
  br label %247, !dbg !3431

243:                                              ; preds = %151
  br label %249, !dbg !3432

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !3433

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !3434

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !3437

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !3439
  call void @llvm.dbg.label(metadata !3198), !dbg !3440
  br i1 %118, label %.loopexit8, label %249, !dbg !3441

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !3439
  call void @llvm.dbg.label(metadata !3201), !dbg !3443
  br i1 %108, label %487, label %444, !dbg !3444

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !3445

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !3446, !tbaa !1183
  %254 = icmp eq i8 %253, 0, !dbg !3448
  br i1 %254, label %255, label %433, !dbg !3449

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !3450
  br i1 %256, label %257, label %433, !dbg !3452

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3196, metadata !DIExpression()), !dbg !3331
  br label %258, !dbg !3453

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3196, metadata !DIExpression()), !dbg !3331
  br i1 %115, label %260, label %433, !dbg !3454

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !3456

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3181, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3196, metadata !DIExpression()), !dbg !3331
  br i1 %115, label %262, label %433, !dbg !3457

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !3458

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !3461
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !3463
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !3463
  %268 = select i1 %266, i64 %129, i64 0, !dbg !3463
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !3166, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !3176, metadata !DIExpression()), !dbg !3235
  %269 = icmp ult i64 %123, %268, !dbg !3464
  br i1 %269, label %270, label %272, !dbg !3467

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !3464
  store i8 39, ptr %271, align 1, !dbg !3464, !tbaa !1183
  br label %272, !dbg !3464

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !3467
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !3175, metadata !DIExpression()), !dbg !3235
  %274 = icmp ult i64 %273, %268, !dbg !3468
  br i1 %274, label %275, label %277, !dbg !3471

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !3468
  store i8 92, ptr %276, align 1, !dbg !3468, !tbaa !1183
  br label %277, !dbg !3468

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !3471
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !3175, metadata !DIExpression()), !dbg !3235
  %279 = icmp ult i64 %278, %268, !dbg !3472
  br i1 %279, label %280, label %282, !dbg !3475

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !3472
  store i8 39, ptr %281, align 1, !dbg !3472, !tbaa !1183
  br label %282, !dbg !3472

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !3475
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !3175, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3184, metadata !DIExpression()), !dbg !3235
  br label %433, !dbg !3476

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !3477

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3202, metadata !DIExpression()), !dbg !3478
  %286 = tail call ptr @__ctype_b_loc() #42, !dbg !3479
  %287 = load ptr, ptr %286, align 8, !dbg !3479, !tbaa !1109
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !3479
  %290 = load i16, ptr %289, align 2, !dbg !3479, !tbaa !1215
  %291 = and i16 %290, 16384, !dbg !3479
  %292 = icmp ne i16 %291, 0, !dbg !3481
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !3204, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3478
  br label %334, !dbg !3482

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !3483
  call void @llvm.dbg.value(metadata ptr %14, metadata !3260, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata ptr %14, metadata !3268, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i32 0, metadata !3271, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i64 8, metadata !3272, metadata !DIExpression()), !dbg !3486
  store i64 0, ptr %14, align 8, !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3202, metadata !DIExpression()), !dbg !3478
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3204, metadata !DIExpression()), !dbg !3478
  %294 = icmp eq i64 %152, -1, !dbg !3489
  br i1 %294, label %295, label %297, !dbg !3491

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !3492
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !3168, metadata !DIExpression()), !dbg !3235
  br label %297, !dbg !3493

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !3331
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !3168, metadata !DIExpression()), !dbg !3235
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !3494
  %299 = sub i64 %298, %128, !dbg !3495
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #39, !dbg !3496
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !3212, metadata !DIExpression()), !dbg !3234
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !3497

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3202, metadata !DIExpression()), !dbg !3478
  %302 = icmp ult i64 %128, %298, !dbg !3498
  br i1 %302, label %.preheader5, label %329, !dbg !3500

.preheader5:                                      ; preds = %301
  br label %304, !dbg !3501

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3204, metadata !DIExpression()), !dbg !3478
  br label %329, !dbg !3502

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !3202, metadata !DIExpression()), !dbg !3478
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !3504
  %308 = load i8, ptr %307, align 1, !dbg !3504, !tbaa !1183
  %309 = icmp eq i8 %308, 0, !dbg !3500
  br i1 %309, label %.loopexit6, label %310, !dbg !3501

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !3505
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !3202, metadata !DIExpression()), !dbg !3478
  %312 = add i64 %311, %128, !dbg !3506
  %313 = icmp eq i64 %311, %299, !dbg !3498
  br i1 %313, label %.loopexit6, label %304, !dbg !3500, !llvm.loop !3507

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3213, metadata !DIExpression()), !dbg !3508
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !3509
  %317 = and i1 %316, %109, !dbg !3509
  br i1 %317, label %.preheader3, label %325, !dbg !3509

.preheader3:                                      ; preds = %314
  br label %318, !dbg !3510

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !3213, metadata !DIExpression()), !dbg !3508
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !3511
  %321 = load i8, ptr %320, align 1, !dbg !3511, !tbaa !1183
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !3513

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !3514
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !3213, metadata !DIExpression()), !dbg !3508
  %324 = icmp eq i64 %323, %300, !dbg !3515
  br i1 %324, label %.loopexit4, label %318, !dbg !3510, !llvm.loop !3516

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !3518

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !3518, !tbaa !1174
  call void @llvm.dbg.value(metadata i32 %326, metadata !3520, metadata !DIExpression()), !dbg !3528
  %327 = call i32 @iswprint(i32 noundef %326) #39, !dbg !3530
  %328 = icmp ne i32 %327, 0, !dbg !3531
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3204, metadata !DIExpression()), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !3202, metadata !DIExpression()), !dbg !3478
  br label %329, !dbg !3532

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !3533

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3204, metadata !DIExpression()), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !3202, metadata !DIExpression()), !dbg !3478
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !3533
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !3534
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !3331
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3204, metadata !DIExpression()), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3202, metadata !DIExpression()), !dbg !3478
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !3533
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !3534
  call void @llvm.dbg.label(metadata !3226), !dbg !3535
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !3536
  br label %624, !dbg !3536

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !3331
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !3538
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3204, metadata !DIExpression()), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !3202, metadata !DIExpression()), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !3168, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !3196, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3331
  %338 = icmp ult i64 %336, 2, !dbg !3539
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !3540
  br i1 %340, label %433, label %341, !dbg !3540

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !3541
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !3221, metadata !DIExpression()), !dbg !3542
  br label %343, !dbg !3543

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !3235
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !3322
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !3331
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !3197, metadata !DIExpression()), !dbg !3331
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3195, metadata !DIExpression()), !dbg !3331
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3192, metadata !DIExpression()), !dbg !3331
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !3190, metadata !DIExpression()), !dbg !3322
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3184, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !3175, metadata !DIExpression()), !dbg !3235
  br i1 %339, label %394, label %350, !dbg !3544

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !3549

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3195, metadata !DIExpression()), !dbg !3331
  %352 = select i1 %110, i1 true, i1 %345, !dbg !3552
  br i1 %352, label %369, label %353, !dbg !3552

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !3554
  br i1 %354, label %355, label %357, !dbg !3558

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !3554
  store i8 39, ptr %356, align 1, !dbg !3554, !tbaa !1183
  br label %357, !dbg !3554

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !3558
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !3175, metadata !DIExpression()), !dbg !3235
  %359 = icmp ult i64 %358, %129, !dbg !3559
  br i1 %359, label %360, label %362, !dbg !3562

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !3559
  store i8 36, ptr %361, align 1, !dbg !3559, !tbaa !1183
  br label %362, !dbg !3559

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !3562
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !3175, metadata !DIExpression()), !dbg !3235
  %364 = icmp ult i64 %363, %129, !dbg !3563
  br i1 %364, label %365, label %367, !dbg !3566

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !3563
  store i8 39, ptr %366, align 1, !dbg !3563, !tbaa !1183
  br label %367, !dbg !3563

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !3566
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !3175, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3184, metadata !DIExpression()), !dbg !3235
  br label %369, !dbg !3567

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !3235
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3184, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !3175, metadata !DIExpression()), !dbg !3235
  %372 = icmp ult i64 %370, %129, !dbg !3568
  br i1 %372, label %373, label %375, !dbg !3571

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !3568
  store i8 92, ptr %374, align 1, !dbg !3568, !tbaa !1183
  br label %375, !dbg !3568

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !3571
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !3175, metadata !DIExpression()), !dbg !3235
  %377 = icmp ult i64 %376, %129, !dbg !3572
  br i1 %377, label %378, label %382, !dbg !3575

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !3572
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !3572
  store i8 %380, ptr %381, align 1, !dbg !3572, !tbaa !1183
  br label %382, !dbg !3572

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !3575
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !3175, metadata !DIExpression()), !dbg !3235
  %384 = icmp ult i64 %383, %129, !dbg !3576
  br i1 %384, label %385, label %390, !dbg !3579

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !3576
  %388 = or disjoint i8 %387, 48, !dbg !3576
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !3576
  store i8 %388, ptr %389, align 1, !dbg !3576, !tbaa !1183
  br label %390, !dbg !3576

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !3579
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !3175, metadata !DIExpression()), !dbg !3235
  %392 = and i8 %349, 7, !dbg !3580
  %393 = or disjoint i8 %392, 48, !dbg !3581
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !3197, metadata !DIExpression()), !dbg !3331
  br label %401, !dbg !3582

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !3583

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !3584
  br i1 %396, label %397, label %399, !dbg !3589

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !3584
  store i8 92, ptr %398, align 1, !dbg !3584, !tbaa !1183
  br label %399, !dbg !3584

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !3589
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !3175, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3192, metadata !DIExpression()), !dbg !3331
  br label %401, !dbg !3590

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !3235
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !3331
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !3197, metadata !DIExpression()), !dbg !3331
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3195, metadata !DIExpression()), !dbg !3331
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3192, metadata !DIExpression()), !dbg !3331
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3184, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !3175, metadata !DIExpression()), !dbg !3235
  %407 = add i64 %346, 1, !dbg !3591
  %408 = icmp ugt i64 %342, %407, !dbg !3593
  br i1 %408, label %409, label %.loopexit2, !dbg !3594

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !3595
  %411 = select i1 %410, i1 true, i1 %405, !dbg !3595
  br i1 %411, label %423, label %412, !dbg !3595

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !3598
  br i1 %413, label %414, label %416, !dbg !3602

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !3598
  store i8 39, ptr %415, align 1, !dbg !3598, !tbaa !1183
  br label %416, !dbg !3598

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !3602
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !3175, metadata !DIExpression()), !dbg !3235
  %418 = icmp ult i64 %417, %129, !dbg !3603
  br i1 %418, label %419, label %421, !dbg !3606

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !3603
  store i8 39, ptr %420, align 1, !dbg !3603, !tbaa !1183
  br label %421, !dbg !3603

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !3606
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !3175, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3184, metadata !DIExpression()), !dbg !3235
  br label %423, !dbg !3607

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !3608
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3184, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !3175, metadata !DIExpression()), !dbg !3235
  %426 = icmp ult i64 %424, %129, !dbg !3609
  br i1 %426, label %427, label %429, !dbg !3612

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !3609
  store i8 %406, ptr %428, align 1, !dbg !3609, !tbaa !1183
  br label %429, !dbg !3609

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !3612
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !3175, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !3190, metadata !DIExpression()), !dbg !3322
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !3613
  %432 = load i8, ptr %431, align 1, !dbg !3613, !tbaa !1183
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !3197, metadata !DIExpression()), !dbg !3331
  br label %343, !dbg !3614, !llvm.loop !3615

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !3618
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !3235
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !3239
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !3322
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !3331
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !3166, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !3197, metadata !DIExpression()), !dbg !3331
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3196, metadata !DIExpression()), !dbg !3331
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3195, metadata !DIExpression()), !dbg !3331
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3192, metadata !DIExpression()), !dbg !3331
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !3190, metadata !DIExpression()), !dbg !3322
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3184, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3181, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !3176, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !3175, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !3168, metadata !DIExpression()), !dbg !3235
  br i1 %111, label %455, label %444, !dbg !3619

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
  br i1 %120, label %456, label %476, !dbg !3621

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !3622

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
  %467 = lshr i8 %458, 5, !dbg !3623
  %468 = zext nneg i8 %467 to i64, !dbg !3623
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !3624
  %470 = load i32, ptr %469, align 4, !dbg !3624, !tbaa !1174
  %471 = and i8 %458, 31, !dbg !3625
  %472 = zext nneg i8 %471 to i32, !dbg !3625
  %473 = shl nuw i32 1, %472, !dbg !3626
  %474 = and i32 %470, %473, !dbg !3626
  %475 = icmp eq i32 %474, 0, !dbg !3626
  br i1 %475, label %476, label %487, !dbg !3627

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
  br i1 %153, label %487, label %523, !dbg !3628

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !3618
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !3235
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !3239
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !3629
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !3331
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !3166, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !3197, metadata !DIExpression()), !dbg !3331
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3196, metadata !DIExpression()), !dbg !3331
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !3190, metadata !DIExpression()), !dbg !3322
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3184, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3181, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !3176, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !3175, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !3168, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.label(metadata !3224), !dbg !3630
  br i1 %109, label %.loopexit8, label %497, !dbg !3631

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3195, metadata !DIExpression()), !dbg !3331
  %498 = select i1 %110, i1 true, i1 %492, !dbg !3633
  br i1 %498, label %515, label %499, !dbg !3633

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !3635
  br i1 %500, label %501, label %503, !dbg !3639

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !3635
  store i8 39, ptr %502, align 1, !dbg !3635, !tbaa !1183
  br label %503, !dbg !3635

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !3639
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !3175, metadata !DIExpression()), !dbg !3235
  %505 = icmp ult i64 %504, %496, !dbg !3640
  br i1 %505, label %506, label %508, !dbg !3643

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !3640
  store i8 36, ptr %507, align 1, !dbg !3640, !tbaa !1183
  br label %508, !dbg !3640

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !3643
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !3175, metadata !DIExpression()), !dbg !3235
  %510 = icmp ult i64 %509, %496, !dbg !3644
  br i1 %510, label %511, label %513, !dbg !3647

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !3644
  store i8 39, ptr %512, align 1, !dbg !3644, !tbaa !1183
  br label %513, !dbg !3644

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !3647
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !3175, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3184, metadata !DIExpression()), !dbg !3235
  br label %515, !dbg !3648

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !3331
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3184, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !3175, metadata !DIExpression()), !dbg !3235
  %518 = icmp ult i64 %516, %496, !dbg !3649
  br i1 %518, label %519, label %521, !dbg !3652

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !3649
  store i8 92, ptr %520, align 1, !dbg !3649, !tbaa !1183
  br label %521, !dbg !3649

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !3652
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !3166, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !3197, metadata !DIExpression()), !dbg !3331
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3196, metadata !DIExpression()), !dbg !3331
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3195, metadata !DIExpression()), !dbg !3331
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !3190, metadata !DIExpression()), !dbg !3322
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3184, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3181, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !3176, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !3175, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !3168, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.label(metadata !3225), !dbg !3653
  br label %547, !dbg !3654

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !3235
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !3331
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !3322
  br label %523, !dbg !3654

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !3618
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !3235
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !3239
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !3629
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !3657
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !3166, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !3197, metadata !DIExpression()), !dbg !3331
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3196, metadata !DIExpression()), !dbg !3331
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3195, metadata !DIExpression()), !dbg !3331
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !3190, metadata !DIExpression()), !dbg !3322
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3184, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3181, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !3176, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !3175, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !3168, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.label(metadata !3225), !dbg !3653
  %534 = xor i1 %528, true, !dbg !3654
  %535 = select i1 %534, i1 true, i1 %530, !dbg !3654
  br i1 %535, label %547, label %536, !dbg !3654

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !3658
  br i1 %537, label %538, label %540, !dbg !3662

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !3658
  store i8 39, ptr %539, align 1, !dbg !3658, !tbaa !1183
  br label %540, !dbg !3658

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !3662
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !3175, metadata !DIExpression()), !dbg !3235
  %542 = icmp ult i64 %541, %533, !dbg !3663
  br i1 %542, label %543, label %545, !dbg !3666

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !3663
  store i8 39, ptr %544, align 1, !dbg !3663, !tbaa !1183
  br label %545, !dbg !3663

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !3666
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !3175, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3184, metadata !DIExpression()), !dbg !3235
  br label %547, !dbg !3667

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !3331
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3184, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !3175, metadata !DIExpression()), !dbg !3235
  %557 = icmp ult i64 %555, %548, !dbg !3668
  br i1 %557, label %558, label %560, !dbg !3671

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !3668
  store i8 %549, ptr %559, align 1, !dbg !3668, !tbaa !1183
  br label %560, !dbg !3668

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !3671
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !3175, metadata !DIExpression()), !dbg !3235
  %562 = select i1 %550, i1 %126, i1 false, !dbg !3672
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3182, metadata !DIExpression()), !dbg !3235
  br label %563, !dbg !3673

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !3618
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !3235
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !3239
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !3629
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !3166, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !3190, metadata !DIExpression()), !dbg !3322
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3184, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3182, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3181, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !3176, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !3175, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !3168, metadata !DIExpression()), !dbg !3235
  %572 = add i64 %570, 1, !dbg !3674
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !3190, metadata !DIExpression()), !dbg !3322
  br label %121, !dbg !3675, !llvm.loop !3676

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !3310
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !3239
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !3166, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3182, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3181, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !3176, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !3175, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !3168, metadata !DIExpression()), !dbg !3235
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !3678
  %575 = xor i1 %109, true, !dbg !3680
  %576 = or i1 %574, %575, !dbg !3680
  %577 = or i1 %576, %110, !dbg !3680
  br i1 %577, label %578, label %.loopexit13, !dbg !3680

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !3681
  %580 = xor i1 %.lcssa38, true, !dbg !3681
  %581 = select i1 %579, i1 true, i1 %580, !dbg !3681
  br i1 %581, label %589, label %582, !dbg !3681

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !3683

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !3239
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !3685
  br label %638, !dbg !3687

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !3688
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !3690
  br i1 %588, label %27, label %589, !dbg !3690

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !3235
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !3310
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !3691
  %592 = or i1 %591, %590, !dbg !3693
  br i1 %592, label %608, label %593, !dbg !3693

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !3177, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !3175, metadata !DIExpression()), !dbg !3235
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !3694, !tbaa !1183
  %595 = icmp eq i8 %594, 0, !dbg !3697
  br i1 %595, label %608, label %.preheader, !dbg !3697

.preheader:                                       ; preds = %593
  br label %596, !dbg !3697

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !3177, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !3175, metadata !DIExpression()), !dbg !3235
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !3698
  br i1 %600, label %601, label %603, !dbg !3701

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !3698
  store i8 %597, ptr %602, align 1, !dbg !3698, !tbaa !1183
  br label %603, !dbg !3698

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !3701
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !3175, metadata !DIExpression()), !dbg !3235
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !3702
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !3177, metadata !DIExpression()), !dbg !3235
  %606 = load i8, ptr %605, align 1, !dbg !3694, !tbaa !1183
  %607 = icmp eq i8 %606, 0, !dbg !3697
  br i1 %607, label %.loopexit, label %596, !dbg !3697, !llvm.loop !3703

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !3701
  br label %608, !dbg !3705

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !3310
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !3175, metadata !DIExpression()), !dbg !3235
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !3705
  br i1 %610, label %611, label %638, !dbg !3707

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !3708
  store i8 0, ptr %612, align 1, !dbg !3709, !tbaa !1183
  br label %638, !dbg !3708

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !3226), !dbg !3535
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !3710
  br i1 %614, label %624, label %630, !dbg !3536

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !3331
  br label %615, !dbg !3710

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !3710

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !3710

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !3226), !dbg !3535
  %622 = icmp eq i32 %616, 2, !dbg !3710
  %623 = select i1 %619, i32 4, i32 2, !dbg !3536
  br i1 %622, label %624, label %630, !dbg !3536

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !3536

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !3337
  br label %630, !dbg !3711

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !3169, metadata !DIExpression()), !dbg !3235
  %636 = and i32 %5, -3, !dbg !3711
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !3712
  br label %638, !dbg !3713

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !3714
}

; Function Attrs: nounwind
declare !dbg !3715 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3718 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3720 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3724, metadata !DIExpression()), !dbg !3727
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3725, metadata !DIExpression()), !dbg !3727
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3726, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata ptr %0, metadata !3728, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 %1, metadata !3733, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata ptr null, metadata !3734, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata ptr %2, metadata !3735, metadata !DIExpression()), !dbg !3741
  %4 = icmp eq ptr %2, null, !dbg !3743
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3743
  call void @llvm.dbg.value(metadata ptr %5, metadata !3736, metadata !DIExpression()), !dbg !3741
  %6 = tail call ptr @__errno_location() #42, !dbg !3744
  %7 = load i32, ptr %6, align 4, !dbg !3744, !tbaa !1174
  call void @llvm.dbg.value(metadata i32 %7, metadata !3737, metadata !DIExpression()), !dbg !3741
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3745
  %9 = load i32, ptr %8, align 4, !dbg !3745, !tbaa !3110
  %10 = or i32 %9, 1, !dbg !3746
  call void @llvm.dbg.value(metadata i32 %10, metadata !3738, metadata !DIExpression()), !dbg !3741
  %11 = load i32, ptr %5, align 8, !dbg !3747, !tbaa !3060
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3748
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3749
  %14 = load ptr, ptr %13, align 8, !dbg !3749, !tbaa !3131
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3750
  %16 = load ptr, ptr %15, align 8, !dbg !3750, !tbaa !3134
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3751
  %18 = add i64 %17, 1, !dbg !3752
  call void @llvm.dbg.value(metadata i64 %18, metadata !3739, metadata !DIExpression()), !dbg !3741
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #46, !dbg !3753
  call void @llvm.dbg.value(metadata ptr %19, metadata !3740, metadata !DIExpression()), !dbg !3741
  %20 = load i32, ptr %5, align 8, !dbg !3754, !tbaa !3060
  %21 = load ptr, ptr %13, align 8, !dbg !3755, !tbaa !3131
  %22 = load ptr, ptr %15, align 8, !dbg !3756, !tbaa !3134
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3757
  store i32 %7, ptr %6, align 4, !dbg !3758, !tbaa !1174
  ret ptr %19, !dbg !3759
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3729 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3728, metadata !DIExpression()), !dbg !3760
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3733, metadata !DIExpression()), !dbg !3760
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3734, metadata !DIExpression()), !dbg !3760
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3735, metadata !DIExpression()), !dbg !3760
  %5 = icmp eq ptr %3, null, !dbg !3761
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3761
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3736, metadata !DIExpression()), !dbg !3760
  %7 = tail call ptr @__errno_location() #42, !dbg !3762
  %8 = load i32, ptr %7, align 4, !dbg !3762, !tbaa !1174
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3737, metadata !DIExpression()), !dbg !3760
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3763
  %10 = load i32, ptr %9, align 4, !dbg !3763, !tbaa !3110
  %11 = icmp eq ptr %2, null, !dbg !3764
  %12 = zext i1 %11 to i32, !dbg !3764
  %13 = or i32 %10, %12, !dbg !3765
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3738, metadata !DIExpression()), !dbg !3760
  %14 = load i32, ptr %6, align 8, !dbg !3766, !tbaa !3060
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3767
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3768
  %17 = load ptr, ptr %16, align 8, !dbg !3768, !tbaa !3131
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3769
  %19 = load ptr, ptr %18, align 8, !dbg !3769, !tbaa !3134
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3770
  %21 = add i64 %20, 1, !dbg !3771
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3739, metadata !DIExpression()), !dbg !3760
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #46, !dbg !3772
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3740, metadata !DIExpression()), !dbg !3760
  %23 = load i32, ptr %6, align 8, !dbg !3773, !tbaa !3060
  %24 = load ptr, ptr %16, align 8, !dbg !3774, !tbaa !3131
  %25 = load ptr, ptr %18, align 8, !dbg !3775, !tbaa !3134
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3776
  store i32 %8, ptr %7, align 4, !dbg !3777, !tbaa !1174
  br i1 %11, label %28, label %27, !dbg !3778

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3779, !tbaa !1525
  br label %28, !dbg !3781

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3782
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3783 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3788, !tbaa !1109
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3785, metadata !DIExpression()), !dbg !3789
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3786, metadata !DIExpression()), !dbg !3790
  %2 = load i32, ptr @nslots, align 4, !tbaa !1174
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3786, metadata !DIExpression()), !dbg !3790
  %3 = icmp sgt i32 %2, 1, !dbg !3791
  br i1 %3, label %4, label %6, !dbg !3793

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3791
  br label %10, !dbg !3793

.loopexit:                                        ; preds = %10
  br label %6, !dbg !3794

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3794
  %8 = load ptr, ptr %7, align 8, !dbg !3794, !tbaa !3796
  %9 = icmp eq ptr %8, @slot0, !dbg !3798
  br i1 %9, label %17, label %16, !dbg !3799

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3786, metadata !DIExpression()), !dbg !3790
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3800
  %13 = load ptr, ptr %12, align 8, !dbg !3800, !tbaa !3796
  tail call void @free(ptr noundef %13) #39, !dbg !3801
  %14 = add nuw nsw i64 %11, 1, !dbg !3802
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3786, metadata !DIExpression()), !dbg !3790
  %15 = icmp eq i64 %14, %5, !dbg !3791
  br i1 %15, label %.loopexit, label %10, !dbg !3793, !llvm.loop !3803

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !3805
  store i64 256, ptr @slotvec0, align 8, !dbg !3807, !tbaa !3808
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3809, !tbaa !3796
  br label %17, !dbg !3810

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3811
  br i1 %18, label %20, label %19, !dbg !3813

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !3814
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3816, !tbaa !1109
  br label %20, !dbg !3817

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3818, !tbaa !1174
  ret void, !dbg !3819
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3820 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3822, metadata !DIExpression()), !dbg !3824
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3823, metadata !DIExpression()), !dbg !3824
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3825
  ret ptr %3, !dbg !3826
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3827 {
  %5 = alloca i64, align 8, !DIAssignID !3847
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3841, metadata !DIExpression(), metadata !3847, metadata ptr %5, metadata !DIExpression()), !dbg !3848
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3831, metadata !DIExpression()), !dbg !3849
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3832, metadata !DIExpression()), !dbg !3849
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3833, metadata !DIExpression()), !dbg !3849
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3834, metadata !DIExpression()), !dbg !3849
  %6 = tail call ptr @__errno_location() #42, !dbg !3850
  %7 = load i32, ptr %6, align 4, !dbg !3850, !tbaa !1174
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3835, metadata !DIExpression()), !dbg !3849
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3851, !tbaa !1109
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3836, metadata !DIExpression()), !dbg !3849
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3837, metadata !DIExpression()), !dbg !3849
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3852
  br i1 %9, label %10, label %11, !dbg !3852

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !3854
  unreachable, !dbg !3854

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3855, !tbaa !1174
  %13 = icmp sgt i32 %12, %0, !dbg !3856
  br i1 %13, label %32, label %14, !dbg !3857

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3858
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3848
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !3859
  %16 = sext i32 %12 to i64, !dbg !3860
  store i64 %16, ptr %5, align 8, !dbg !3861, !tbaa !1525, !DIAssignID !3862
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3841, metadata !DIExpression(), metadata !3862, metadata ptr %5, metadata !DIExpression()), !dbg !3848
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3863
  %18 = add nuw nsw i32 %0, 1, !dbg !3864
  %19 = sub i32 %18, %12, !dbg !3865
  %20 = sext i32 %19 to i64, !dbg !3866
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !3867
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3836, metadata !DIExpression()), !dbg !3849
  store ptr %21, ptr @slotvec, align 8, !dbg !3868, !tbaa !1109
  br i1 %15, label %22, label %23, !dbg !3869

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3870, !tbaa.struct !3872
  br label %23, !dbg !3873

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3874, !tbaa !1174
  %25 = sext i32 %24 to i64, !dbg !3875
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3875
  %27 = load i64, ptr %5, align 8, !dbg !3876, !tbaa !1525
  %28 = sub nsw i64 %27, %25, !dbg !3877
  %29 = shl i64 %28, 4, !dbg !3878
  call void @llvm.dbg.value(metadata ptr %26, metadata !3268, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata i32 0, metadata !3271, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata i64 %29, metadata !3272, metadata !DIExpression()), !dbg !3879
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !3881
  %30 = load i64, ptr %5, align 8, !dbg !3882, !tbaa !1525
  %31 = trunc i64 %30 to i32, !dbg !3882
  store i32 %31, ptr @nslots, align 4, !dbg !3883, !tbaa !1174
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !3884
  br label %32, !dbg !3885

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3849
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3836, metadata !DIExpression()), !dbg !3849
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3886
  %36 = load i64, ptr %35, align 8, !dbg !3887, !tbaa !3808
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3842, metadata !DIExpression()), !dbg !3888
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3889
  %38 = load ptr, ptr %37, align 8, !dbg !3889, !tbaa !3796
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3844, metadata !DIExpression()), !dbg !3888
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3890
  %40 = load i32, ptr %39, align 4, !dbg !3890, !tbaa !3110
  %41 = or i32 %40, 1, !dbg !3891
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3845, metadata !DIExpression()), !dbg !3888
  %42 = load i32, ptr %3, align 8, !dbg !3892, !tbaa !3060
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3893
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3894
  %45 = load ptr, ptr %44, align 8, !dbg !3894, !tbaa !3131
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3895
  %47 = load ptr, ptr %46, align 8, !dbg !3895, !tbaa !3134
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3896
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3846, metadata !DIExpression()), !dbg !3888
  %49 = icmp ugt i64 %36, %48, !dbg !3897
  br i1 %49, label %60, label %50, !dbg !3899

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3900
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3842, metadata !DIExpression()), !dbg !3888
  store i64 %51, ptr %35, align 8, !dbg !3902, !tbaa !3808
  %52 = icmp eq ptr %38, @slot0, !dbg !3903
  br i1 %52, label %54, label %53, !dbg !3905

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !3906
  br label %54, !dbg !3906

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #46, !dbg !3907
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3844, metadata !DIExpression()), !dbg !3888
  store ptr %55, ptr %37, align 8, !dbg !3908, !tbaa !3796
  %56 = load i32, ptr %3, align 8, !dbg !3909, !tbaa !3060
  %57 = load ptr, ptr %44, align 8, !dbg !3910, !tbaa !3131
  %58 = load ptr, ptr %46, align 8, !dbg !3911, !tbaa !3134
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3912
  br label %60, !dbg !3913

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3888
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3844, metadata !DIExpression()), !dbg !3888
  store i32 %7, ptr %6, align 4, !dbg !3914, !tbaa !1174
  ret ptr %61, !dbg !3915
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3916 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3920, metadata !DIExpression()), !dbg !3923
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3921, metadata !DIExpression()), !dbg !3923
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3922, metadata !DIExpression()), !dbg !3923
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3924
  ret ptr %4, !dbg !3925
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3926 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3928, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata i32 0, metadata !3822, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata ptr %0, metadata !3823, metadata !DIExpression()), !dbg !3930
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3932
  ret ptr %2, !dbg !3933
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3934 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3938, metadata !DIExpression()), !dbg !3940
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3939, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 0, metadata !3920, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata ptr %0, metadata !3921, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i64 %1, metadata !3922, metadata !DIExpression()), !dbg !3941
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3943
  ret ptr %3, !dbg !3944
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3945 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3953
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3952, metadata !DIExpression(), metadata !3953, metadata ptr %4, metadata !DIExpression()), !dbg !3954
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3949, metadata !DIExpression()), !dbg !3954
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3950, metadata !DIExpression()), !dbg !3954
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3951, metadata !DIExpression()), !dbg !3954
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3955
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3956), !dbg !3959
  call void @llvm.dbg.value(metadata i32 %1, metadata !3960, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3965, metadata !DIExpression()), !dbg !3968
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3968, !alias.scope !3956, !DIAssignID !3969
  call void @llvm.dbg.assign(metadata i8 0, metadata !3952, metadata !DIExpression(), metadata !3969, metadata ptr %4, metadata !DIExpression()), !dbg !3954
  %5 = icmp eq i32 %1, 10, !dbg !3970
  br i1 %5, label %6, label %7, !dbg !3972

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3973, !noalias !3956
  unreachable, !dbg !3973

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3974, !tbaa !3060, !alias.scope !3956, !DIAssignID !3975
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3952, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3975, metadata ptr %4, metadata !DIExpression()), !dbg !3954
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3976
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3977
  ret ptr %8, !dbg !3978
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3979 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3988
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3987, metadata !DIExpression(), metadata !3988, metadata ptr %5, metadata !DIExpression()), !dbg !3989
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3983, metadata !DIExpression()), !dbg !3989
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3984, metadata !DIExpression()), !dbg !3989
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3985, metadata !DIExpression()), !dbg !3989
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3986, metadata !DIExpression()), !dbg !3989
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3990
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3991), !dbg !3994
  call void @llvm.dbg.value(metadata i32 %1, metadata !3960, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3965, metadata !DIExpression()), !dbg !3997
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3997, !alias.scope !3991, !DIAssignID !3998
  call void @llvm.dbg.assign(metadata i8 0, metadata !3987, metadata !DIExpression(), metadata !3998, metadata ptr %5, metadata !DIExpression()), !dbg !3989
  %6 = icmp eq i32 %1, 10, !dbg !3999
  br i1 %6, label %7, label %8, !dbg !4000

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !4001, !noalias !3991
  unreachable, !dbg !4001

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !4002, !tbaa !3060, !alias.scope !3991, !DIAssignID !4003
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3987, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4003, metadata ptr %5, metadata !DIExpression()), !dbg !3989
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4004
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !4005
  ret ptr %9, !dbg !4006
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4007 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !4013
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4011, metadata !DIExpression()), !dbg !4014
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4012, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3952, metadata !DIExpression(), metadata !4013, metadata ptr %3, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i32 0, metadata !3949, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i32 %0, metadata !3950, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata ptr %1, metadata !3951, metadata !DIExpression()), !dbg !4015
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !4017
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4018), !dbg !4021
  call void @llvm.dbg.value(metadata i32 %0, metadata !3960, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3965, metadata !DIExpression()), !dbg !4024
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !4024, !alias.scope !4018, !DIAssignID !4025
  call void @llvm.dbg.assign(metadata i8 0, metadata !3952, metadata !DIExpression(), metadata !4025, metadata ptr %3, metadata !DIExpression()), !dbg !4015
  %4 = icmp eq i32 %0, 10, !dbg !4026
  br i1 %4, label %5, label %6, !dbg !4027

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !4028, !noalias !4018
  unreachable, !dbg !4028

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !4029, !tbaa !3060, !alias.scope !4018, !DIAssignID !4030
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3952, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4030, metadata ptr %3, metadata !DIExpression()), !dbg !4015
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !4031
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !4032
  ret ptr %7, !dbg !4033
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4034 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4041
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4038, metadata !DIExpression()), !dbg !4042
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4039, metadata !DIExpression()), !dbg !4042
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4040, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3987, metadata !DIExpression(), metadata !4041, metadata ptr %4, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i32 0, metadata !3983, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i32 %0, metadata !3984, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata ptr %1, metadata !3985, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i64 %2, metadata !3986, metadata !DIExpression()), !dbg !4043
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !4045
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4046), !dbg !4049
  call void @llvm.dbg.value(metadata i32 %0, metadata !3960, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3965, metadata !DIExpression()), !dbg !4052
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !4052, !alias.scope !4046, !DIAssignID !4053
  call void @llvm.dbg.assign(metadata i8 0, metadata !3987, metadata !DIExpression(), metadata !4053, metadata ptr %4, metadata !DIExpression()), !dbg !4043
  %5 = icmp eq i32 %0, 10, !dbg !4054
  br i1 %5, label %6, label %7, !dbg !4055

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !4056, !noalias !4046
  unreachable, !dbg !4056

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !4057, !tbaa !3060, !alias.scope !4046, !DIAssignID !4058
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3987, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4058, metadata ptr %4, metadata !DIExpression()), !dbg !4043
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !4059
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !4060
  ret ptr %8, !dbg !4061
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !4062 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4070
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4069, metadata !DIExpression(), metadata !4070, metadata ptr %4, metadata !DIExpression()), !dbg !4071
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4066, metadata !DIExpression()), !dbg !4071
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4067, metadata !DIExpression()), !dbg !4071
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !4068, metadata !DIExpression()), !dbg !4071
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !4072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4073, !tbaa.struct !4074, !DIAssignID !4075
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4069, metadata !DIExpression(), metadata !4075, metadata ptr %4, metadata !DIExpression()), !dbg !4071
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3077, metadata !DIExpression()), !dbg !4076
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3078, metadata !DIExpression()), !dbg !4076
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3079, metadata !DIExpression()), !dbg !4076
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3080, metadata !DIExpression()), !dbg !4076
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !4078
  %6 = lshr i8 %2, 5, !dbg !4079
  %7 = zext nneg i8 %6 to i64, !dbg !4079
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !4080
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3081, metadata !DIExpression()), !dbg !4076
  %9 = and i8 %2, 31, !dbg !4081
  %10 = zext nneg i8 %9 to i32, !dbg !4081
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !3083, metadata !DIExpression()), !dbg !4076
  %11 = load i32, ptr %8, align 4, !dbg !4082, !tbaa !1174
  %12 = lshr i32 %11, %10, !dbg !4083
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !3084, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4076
  %13 = and i32 %12, 1, !dbg !4084
  %14 = xor i32 %13, 1, !dbg !4084
  %15 = shl nuw i32 %14, %10, !dbg !4085
  %16 = xor i32 %15, %11, !dbg !4086
  store i32 %16, ptr %8, align 4, !dbg !4086, !tbaa !1174
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !4087
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !4088
  ret ptr %17, !dbg !4089
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !4090 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !4096
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4094, metadata !DIExpression()), !dbg !4097
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !4095, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4069, metadata !DIExpression(), metadata !4096, metadata ptr %3, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata ptr %0, metadata !4066, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i64 -1, metadata !4067, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i8 %1, metadata !4068, metadata !DIExpression()), !dbg !4098
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !4100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4101, !tbaa.struct !4074, !DIAssignID !4102
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4069, metadata !DIExpression(), metadata !4102, metadata ptr %3, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata ptr %3, metadata !3077, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i8 %1, metadata !3078, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i32 1, metadata !3079, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i8 %1, metadata !3080, metadata !DIExpression()), !dbg !4103
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !4105
  %5 = lshr i8 %1, 5, !dbg !4106
  %6 = zext nneg i8 %5 to i64, !dbg !4106
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !4107
  call void @llvm.dbg.value(metadata ptr %7, metadata !3081, metadata !DIExpression()), !dbg !4103
  %8 = and i8 %1, 31, !dbg !4108
  %9 = zext nneg i8 %8 to i32, !dbg !4108
  call void @llvm.dbg.value(metadata i32 %9, metadata !3083, metadata !DIExpression()), !dbg !4103
  %10 = load i32, ptr %7, align 4, !dbg !4109, !tbaa !1174
  %11 = lshr i32 %10, %9, !dbg !4110
  call void @llvm.dbg.value(metadata i32 %11, metadata !3084, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4103
  %12 = and i32 %11, 1, !dbg !4111
  %13 = xor i32 %12, 1, !dbg !4111
  %14 = shl nuw i32 %13, %9, !dbg !4112
  %15 = xor i32 %14, %10, !dbg !4113
  store i32 %15, ptr %7, align 4, !dbg !4113, !tbaa !1174
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !4114
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !4115
  ret ptr %16, !dbg !4116
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !4117 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !4120
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4119, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata ptr %0, metadata !4094, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i8 58, metadata !4095, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4069, metadata !DIExpression(), metadata !4120, metadata ptr %2, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata ptr %0, metadata !4066, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i64 -1, metadata !4067, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i8 58, metadata !4068, metadata !DIExpression()), !dbg !4124
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !4126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4127, !tbaa.struct !4074, !DIAssignID !4128
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4069, metadata !DIExpression(), metadata !4128, metadata ptr %2, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata ptr %2, metadata !3077, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i8 58, metadata !3078, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i32 1, metadata !3079, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i8 58, metadata !3080, metadata !DIExpression()), !dbg !4129
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !4131
  call void @llvm.dbg.value(metadata ptr %3, metadata !3081, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i32 26, metadata !3083, metadata !DIExpression()), !dbg !4129
  %4 = load i32, ptr %3, align 4, !dbg !4132, !tbaa !1174
  call void @llvm.dbg.value(metadata i32 %4, metadata !3084, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4129
  %5 = or i32 %4, 67108864, !dbg !4133
  store i32 %5, ptr %3, align 4, !dbg !4133, !tbaa !1174
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !4134
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !4135
  ret ptr %6, !dbg !4136
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4137 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !4141
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4139, metadata !DIExpression()), !dbg !4142
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4140, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4069, metadata !DIExpression(), metadata !4141, metadata ptr %3, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata ptr %0, metadata !4066, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata i64 %1, metadata !4067, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata i8 58, metadata !4068, metadata !DIExpression()), !dbg !4143
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !4145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4146, !tbaa.struct !4074, !DIAssignID !4147
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4069, metadata !DIExpression(), metadata !4147, metadata ptr %3, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata ptr %3, metadata !3077, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i8 58, metadata !3078, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i32 1, metadata !3079, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i8 58, metadata !3080, metadata !DIExpression()), !dbg !4148
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !4150
  call void @llvm.dbg.value(metadata ptr %4, metadata !3081, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i32 26, metadata !3083, metadata !DIExpression()), !dbg !4148
  %5 = load i32, ptr %4, align 4, !dbg !4151, !tbaa !1174
  call void @llvm.dbg.value(metadata i32 %5, metadata !3084, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4148
  %6 = or i32 %5, 67108864, !dbg !4152
  store i32 %6, ptr %4, align 4, !dbg !4152, !tbaa !1174
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !4153
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !4154
  ret ptr %7, !dbg !4155
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4156 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4162
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4161, metadata !DIExpression(), metadata !4162, metadata ptr %4, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3965, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4164
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4158, metadata !DIExpression()), !dbg !4163
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4159, metadata !DIExpression()), !dbg !4163
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4160, metadata !DIExpression()), !dbg !4163
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !4166
  call void @llvm.dbg.value(metadata i32 %1, metadata !3960, metadata !DIExpression()), !dbg !4167
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3965, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4167
  %5 = icmp eq i32 %1, 10, !dbg !4168
  br i1 %5, label %6, label %7, !dbg !4169

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !4170, !noalias !4171
  unreachable, !dbg !4170

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3965, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4167
  store i32 %1, ptr %4, align 8, !dbg !4174, !tbaa.struct !4074, !DIAssignID !4175
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !4174
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !4174
  call void @llvm.dbg.assign(metadata i32 %1, metadata !4161, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4175, metadata ptr %4, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4161, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !4176, metadata ptr %8, metadata !DIExpression()), !dbg !4163
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3077, metadata !DIExpression()), !dbg !4177
  tail call void @llvm.dbg.value(metadata i8 58, metadata !3078, metadata !DIExpression()), !dbg !4177
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3079, metadata !DIExpression()), !dbg !4177
  tail call void @llvm.dbg.value(metadata i8 58, metadata !3080, metadata !DIExpression()), !dbg !4177
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !4179
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !3081, metadata !DIExpression()), !dbg !4177
  tail call void @llvm.dbg.value(metadata i32 26, metadata !3083, metadata !DIExpression()), !dbg !4177
  %10 = load i32, ptr %9, align 4, !dbg !4180, !tbaa !1174
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !3084, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4177
  %11 = or i32 %10, 67108864, !dbg !4181
  store i32 %11, ptr %9, align 4, !dbg !4181, !tbaa !1174, !DIAssignID !4182
  call void @llvm.dbg.assign(metadata i32 %11, metadata !4161, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !4182, metadata ptr %9, metadata !DIExpression()), !dbg !4163
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4183
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !4184
  ret ptr %12, !dbg !4185
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4186 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4194
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4190, metadata !DIExpression()), !dbg !4195
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4191, metadata !DIExpression()), !dbg !4195
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4192, metadata !DIExpression()), !dbg !4195
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4193, metadata !DIExpression()), !dbg !4195
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4196, metadata !DIExpression(), metadata !4194, metadata ptr %5, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i32 %0, metadata !4201, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata ptr %1, metadata !4202, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata ptr %2, metadata !4203, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata ptr %3, metadata !4204, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i64 -1, metadata !4205, metadata !DIExpression()), !dbg !4206
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !4208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4209, !tbaa.struct !4074, !DIAssignID !4210
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4196, metadata !DIExpression(), metadata !4210, metadata ptr %5, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4196, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4211, metadata ptr undef, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata ptr %5, metadata !3117, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata ptr %1, metadata !3118, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata ptr %2, metadata !3119, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata ptr %5, metadata !3117, metadata !DIExpression()), !dbg !4212
  store i32 10, ptr %5, align 8, !dbg !4214, !tbaa !3060, !DIAssignID !4215
  call void @llvm.dbg.assign(metadata i32 10, metadata !4196, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4215, metadata ptr %5, metadata !DIExpression()), !dbg !4206
  %6 = icmp ne ptr %1, null, !dbg !4216
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4217
  br i1 %8, label %10, label %9, !dbg !4217

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !4218
  unreachable, !dbg !4218

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4219
  store ptr %1, ptr %11, align 8, !dbg !4220, !tbaa !3131, !DIAssignID !4221
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4196, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4221, metadata ptr %11, metadata !DIExpression()), !dbg !4206
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4222
  store ptr %2, ptr %12, align 8, !dbg !4223, !tbaa !3134, !DIAssignID !4224
  call void @llvm.dbg.assign(metadata ptr %2, metadata !4196, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4224, metadata ptr %12, metadata !DIExpression()), !dbg !4206
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4225
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !4226
  ret ptr %13, !dbg !4227
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !4197 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !4228
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4196, metadata !DIExpression(), metadata !4228, metadata ptr %6, metadata !DIExpression()), !dbg !4229
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4201, metadata !DIExpression()), !dbg !4229
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4202, metadata !DIExpression()), !dbg !4229
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4203, metadata !DIExpression()), !dbg !4229
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4204, metadata !DIExpression()), !dbg !4229
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !4205, metadata !DIExpression()), !dbg !4229
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !4230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4231, !tbaa.struct !4074, !DIAssignID !4232
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4196, metadata !DIExpression(), metadata !4232, metadata ptr %6, metadata !DIExpression()), !dbg !4229
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4196, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4233, metadata ptr undef, metadata !DIExpression()), !dbg !4229
  call void @llvm.dbg.value(metadata ptr %6, metadata !3117, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata ptr %1, metadata !3118, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata ptr %2, metadata !3119, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata ptr %6, metadata !3117, metadata !DIExpression()), !dbg !4234
  store i32 10, ptr %6, align 8, !dbg !4236, !tbaa !3060, !DIAssignID !4237
  call void @llvm.dbg.assign(metadata i32 10, metadata !4196, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4237, metadata ptr %6, metadata !DIExpression()), !dbg !4229
  %7 = icmp ne ptr %1, null, !dbg !4238
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4239
  br i1 %9, label %11, label %10, !dbg !4239

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !4240
  unreachable, !dbg !4240

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4241
  store ptr %1, ptr %12, align 8, !dbg !4242, !tbaa !3131, !DIAssignID !4243
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4196, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4243, metadata ptr %12, metadata !DIExpression()), !dbg !4229
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4244
  store ptr %2, ptr %13, align 8, !dbg !4245, !tbaa !3134, !DIAssignID !4246
  call void @llvm.dbg.assign(metadata ptr %2, metadata !4196, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4246, metadata ptr %13, metadata !DIExpression()), !dbg !4229
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4247
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !4248
  ret ptr %14, !dbg !4249
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4250 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4257
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4254, metadata !DIExpression()), !dbg !4258
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4255, metadata !DIExpression()), !dbg !4258
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4256, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i32 0, metadata !4190, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.value(metadata ptr %0, metadata !4191, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.value(metadata ptr %1, metadata !4192, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.value(metadata ptr %2, metadata !4193, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4196, metadata !DIExpression(), metadata !4257, metadata ptr %4, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.value(metadata i32 0, metadata !4201, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.value(metadata ptr %0, metadata !4202, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.value(metadata ptr %1, metadata !4203, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.value(metadata ptr %2, metadata !4204, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.value(metadata i64 -1, metadata !4205, metadata !DIExpression()), !dbg !4261
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !4263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4264, !tbaa.struct !4074, !DIAssignID !4265
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4196, metadata !DIExpression(), metadata !4265, metadata ptr %4, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4196, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4266, metadata ptr undef, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.value(metadata ptr %4, metadata !3117, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata ptr %0, metadata !3118, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata ptr %1, metadata !3119, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata ptr %4, metadata !3117, metadata !DIExpression()), !dbg !4267
  store i32 10, ptr %4, align 8, !dbg !4269, !tbaa !3060, !DIAssignID !4270
  call void @llvm.dbg.assign(metadata i32 10, metadata !4196, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4270, metadata ptr %4, metadata !DIExpression()), !dbg !4261
  %5 = icmp ne ptr %0, null, !dbg !4271
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4272
  br i1 %7, label %9, label %8, !dbg !4272

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !4273
  unreachable, !dbg !4273

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4274
  store ptr %0, ptr %10, align 8, !dbg !4275, !tbaa !3131, !DIAssignID !4276
  call void @llvm.dbg.assign(metadata ptr %0, metadata !4196, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4276, metadata ptr %10, metadata !DIExpression()), !dbg !4261
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4277
  store ptr %1, ptr %11, align 8, !dbg !4278, !tbaa !3134, !DIAssignID !4279
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4196, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4279, metadata ptr %11, metadata !DIExpression()), !dbg !4261
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4280
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !4281
  ret ptr %12, !dbg !4282
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4283 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4291
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4287, metadata !DIExpression()), !dbg !4292
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4288, metadata !DIExpression()), !dbg !4292
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4289, metadata !DIExpression()), !dbg !4292
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4290, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4196, metadata !DIExpression(), metadata !4291, metadata ptr %5, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i32 0, metadata !4201, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata ptr %0, metadata !4202, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata ptr %1, metadata !4203, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata ptr %2, metadata !4204, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i64 %3, metadata !4205, metadata !DIExpression()), !dbg !4293
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !4295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4296, !tbaa.struct !4074, !DIAssignID !4297
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4196, metadata !DIExpression(), metadata !4297, metadata ptr %5, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4196, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4298, metadata ptr undef, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata ptr %5, metadata !3117, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata ptr %0, metadata !3118, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata ptr %1, metadata !3119, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata ptr %5, metadata !3117, metadata !DIExpression()), !dbg !4299
  store i32 10, ptr %5, align 8, !dbg !4301, !tbaa !3060, !DIAssignID !4302
  call void @llvm.dbg.assign(metadata i32 10, metadata !4196, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4302, metadata ptr %5, metadata !DIExpression()), !dbg !4293
  %6 = icmp ne ptr %0, null, !dbg !4303
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4304
  br i1 %8, label %10, label %9, !dbg !4304

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !4305
  unreachable, !dbg !4305

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4306
  store ptr %0, ptr %11, align 8, !dbg !4307, !tbaa !3131, !DIAssignID !4308
  call void @llvm.dbg.assign(metadata ptr %0, metadata !4196, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4308, metadata ptr %11, metadata !DIExpression()), !dbg !4293
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4309
  store ptr %1, ptr %12, align 8, !dbg !4310, !tbaa !3134, !DIAssignID !4311
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4196, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4311, metadata ptr %12, metadata !DIExpression()), !dbg !4293
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4312
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !4313
  ret ptr %13, !dbg !4314
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4315 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4319, metadata !DIExpression()), !dbg !4322
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4320, metadata !DIExpression()), !dbg !4322
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4321, metadata !DIExpression()), !dbg !4322
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4323
  ret ptr %4, !dbg !4324
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4325 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4329, metadata !DIExpression()), !dbg !4331
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4330, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i32 0, metadata !4319, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata ptr %0, metadata !4320, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i64 %1, metadata !4321, metadata !DIExpression()), !dbg !4332
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4334
  ret ptr %3, !dbg !4335
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4336 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4340, metadata !DIExpression()), !dbg !4342
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4341, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata i32 %0, metadata !4319, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata ptr %1, metadata !4320, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata i64 -1, metadata !4321, metadata !DIExpression()), !dbg !4343
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4345
  ret ptr %3, !dbg !4346
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4347 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4351, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata i32 0, metadata !4340, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata ptr %0, metadata !4341, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i32 0, metadata !4319, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata ptr %0, metadata !4320, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i64 -1, metadata !4321, metadata !DIExpression()), !dbg !4355
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4357
  ret ptr %2, !dbg !4358
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4359 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4398, metadata !DIExpression()), !dbg !4404
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4399, metadata !DIExpression()), !dbg !4404
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4400, metadata !DIExpression()), !dbg !4404
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4401, metadata !DIExpression()), !dbg !4404
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4402, metadata !DIExpression()), !dbg !4404
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4403, metadata !DIExpression()), !dbg !4404
  %7 = icmp eq ptr %1, null, !dbg !4405
  br i1 %7, label %10, label %8, !dbg !4407

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.186, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !4408
  br label %12, !dbg !4408

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.187, ptr noundef %2, ptr noundef %3) #39, !dbg !4409
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.3.189, i32 noundef 5) #39, !dbg !4410
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !4410
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.190, ptr noundef %0), !dbg !4411
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.5.191, i32 noundef 5) #39, !dbg !4412
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.192) #39, !dbg !4412
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.190, ptr noundef %0), !dbg !4413
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
  ], !dbg !4414

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.7.193, i32 noundef 5) #39, !dbg !4415
  %21 = load ptr, ptr %4, align 8, !dbg !4415, !tbaa !1109
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !4415
  br label %147, !dbg !4417

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.8.194, i32 noundef 5) #39, !dbg !4418
  %25 = load ptr, ptr %4, align 8, !dbg !4418, !tbaa !1109
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4418
  %27 = load ptr, ptr %26, align 8, !dbg !4418, !tbaa !1109
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !4418
  br label %147, !dbg !4419

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.9.195, i32 noundef 5) #39, !dbg !4420
  %31 = load ptr, ptr %4, align 8, !dbg !4420, !tbaa !1109
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4420
  %33 = load ptr, ptr %32, align 8, !dbg !4420, !tbaa !1109
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4420
  %35 = load ptr, ptr %34, align 8, !dbg !4420, !tbaa !1109
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !4420
  br label %147, !dbg !4421

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.10.196, i32 noundef 5) #39, !dbg !4422
  %39 = load ptr, ptr %4, align 8, !dbg !4422, !tbaa !1109
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4422
  %41 = load ptr, ptr %40, align 8, !dbg !4422, !tbaa !1109
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4422
  %43 = load ptr, ptr %42, align 8, !dbg !4422, !tbaa !1109
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4422
  %45 = load ptr, ptr %44, align 8, !dbg !4422, !tbaa !1109
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !4422
  br label %147, !dbg !4423

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.11.197, i32 noundef 5) #39, !dbg !4424
  %49 = load ptr, ptr %4, align 8, !dbg !4424, !tbaa !1109
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4424
  %51 = load ptr, ptr %50, align 8, !dbg !4424, !tbaa !1109
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4424
  %53 = load ptr, ptr %52, align 8, !dbg !4424, !tbaa !1109
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4424
  %55 = load ptr, ptr %54, align 8, !dbg !4424, !tbaa !1109
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4424
  %57 = load ptr, ptr %56, align 8, !dbg !4424, !tbaa !1109
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !4424
  br label %147, !dbg !4425

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.12.198, i32 noundef 5) #39, !dbg !4426
  %61 = load ptr, ptr %4, align 8, !dbg !4426, !tbaa !1109
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4426
  %63 = load ptr, ptr %62, align 8, !dbg !4426, !tbaa !1109
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4426
  %65 = load ptr, ptr %64, align 8, !dbg !4426, !tbaa !1109
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4426
  %67 = load ptr, ptr %66, align 8, !dbg !4426, !tbaa !1109
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4426
  %69 = load ptr, ptr %68, align 8, !dbg !4426, !tbaa !1109
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4426
  %71 = load ptr, ptr %70, align 8, !dbg !4426, !tbaa !1109
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !4426
  br label %147, !dbg !4427

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.13.199, i32 noundef 5) #39, !dbg !4428
  %75 = load ptr, ptr %4, align 8, !dbg !4428, !tbaa !1109
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4428
  %77 = load ptr, ptr %76, align 8, !dbg !4428, !tbaa !1109
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4428
  %79 = load ptr, ptr %78, align 8, !dbg !4428, !tbaa !1109
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4428
  %81 = load ptr, ptr %80, align 8, !dbg !4428, !tbaa !1109
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4428
  %83 = load ptr, ptr %82, align 8, !dbg !4428, !tbaa !1109
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4428
  %85 = load ptr, ptr %84, align 8, !dbg !4428, !tbaa !1109
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4428
  %87 = load ptr, ptr %86, align 8, !dbg !4428, !tbaa !1109
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !4428
  br label %147, !dbg !4429

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.14.200, i32 noundef 5) #39, !dbg !4430
  %91 = load ptr, ptr %4, align 8, !dbg !4430, !tbaa !1109
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4430
  %93 = load ptr, ptr %92, align 8, !dbg !4430, !tbaa !1109
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4430
  %95 = load ptr, ptr %94, align 8, !dbg !4430, !tbaa !1109
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4430
  %97 = load ptr, ptr %96, align 8, !dbg !4430, !tbaa !1109
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4430
  %99 = load ptr, ptr %98, align 8, !dbg !4430, !tbaa !1109
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4430
  %101 = load ptr, ptr %100, align 8, !dbg !4430, !tbaa !1109
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4430
  %103 = load ptr, ptr %102, align 8, !dbg !4430, !tbaa !1109
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4430
  %105 = load ptr, ptr %104, align 8, !dbg !4430, !tbaa !1109
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !4430
  br label %147, !dbg !4431

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.15.201, i32 noundef 5) #39, !dbg !4432
  %109 = load ptr, ptr %4, align 8, !dbg !4432, !tbaa !1109
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4432
  %111 = load ptr, ptr %110, align 8, !dbg !4432, !tbaa !1109
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4432
  %113 = load ptr, ptr %112, align 8, !dbg !4432, !tbaa !1109
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4432
  %115 = load ptr, ptr %114, align 8, !dbg !4432, !tbaa !1109
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4432
  %117 = load ptr, ptr %116, align 8, !dbg !4432, !tbaa !1109
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4432
  %119 = load ptr, ptr %118, align 8, !dbg !4432, !tbaa !1109
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4432
  %121 = load ptr, ptr %120, align 8, !dbg !4432, !tbaa !1109
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4432
  %123 = load ptr, ptr %122, align 8, !dbg !4432, !tbaa !1109
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4432
  %125 = load ptr, ptr %124, align 8, !dbg !4432, !tbaa !1109
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !4432
  br label %147, !dbg !4433

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.16.202, i32 noundef 5) #39, !dbg !4434
  %129 = load ptr, ptr %4, align 8, !dbg !4434, !tbaa !1109
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4434
  %131 = load ptr, ptr %130, align 8, !dbg !4434, !tbaa !1109
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4434
  %133 = load ptr, ptr %132, align 8, !dbg !4434, !tbaa !1109
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4434
  %135 = load ptr, ptr %134, align 8, !dbg !4434, !tbaa !1109
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4434
  %137 = load ptr, ptr %136, align 8, !dbg !4434, !tbaa !1109
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4434
  %139 = load ptr, ptr %138, align 8, !dbg !4434, !tbaa !1109
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4434
  %141 = load ptr, ptr %140, align 8, !dbg !4434, !tbaa !1109
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4434
  %143 = load ptr, ptr %142, align 8, !dbg !4434, !tbaa !1109
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4434
  %145 = load ptr, ptr %144, align 8, !dbg !4434, !tbaa !1109
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !4434
  br label %147, !dbg !4435

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4436
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4437 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4441, metadata !DIExpression()), !dbg !4447
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4442, metadata !DIExpression()), !dbg !4447
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4443, metadata !DIExpression()), !dbg !4447
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4444, metadata !DIExpression()), !dbg !4447
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4445, metadata !DIExpression()), !dbg !4447
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4446, metadata !DIExpression()), !dbg !4447
  br label %6, !dbg !4448

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4450
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4446, metadata !DIExpression()), !dbg !4447
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4451
  %9 = load ptr, ptr %8, align 8, !dbg !4451, !tbaa !1109
  %10 = icmp eq ptr %9, null, !dbg !4453
  %11 = add i64 %7, 1, !dbg !4454
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4446, metadata !DIExpression()), !dbg !4447
  br i1 %10, label %12, label %6, !dbg !4453, !llvm.loop !4455

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !4450
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !4457
  ret void, !dbg !4458
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4459 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !4481
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4479, metadata !DIExpression(), metadata !4481, metadata ptr %6, metadata !DIExpression()), !dbg !4482
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4473, metadata !DIExpression()), !dbg !4482
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4474, metadata !DIExpression()), !dbg !4482
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4475, metadata !DIExpression()), !dbg !4482
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4476, metadata !DIExpression()), !dbg !4482
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4477, metadata !DIExpression(DW_OP_deref)), !dbg !4482
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !4483
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4478, metadata !DIExpression()), !dbg !4482
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4478, metadata !DIExpression()), !dbg !4482
  %10 = icmp sgt i32 %9, -1, !dbg !4484
  br i1 %10, label %18, label %11, !dbg !4484

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4484
  store i32 %12, ptr %7, align 8, !dbg !4484
  %13 = icmp ult i32 %9, -7, !dbg !4484
  br i1 %13, label %14, label %18, !dbg !4484

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4484
  %16 = sext i32 %9 to i64, !dbg !4484
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4484
  br label %22, !dbg !4484

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4484
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4484
  store ptr %21, ptr %4, align 8, !dbg !4484
  br label %22, !dbg !4484

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4484
  %25 = load ptr, ptr %24, align 8, !dbg !4484
  store ptr %25, ptr %6, align 8, !dbg !4487, !tbaa !1109
  %26 = icmp eq ptr %25, null, !dbg !4488
  br i1 %26, label %197, label %27, !dbg !4489

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4478, metadata !DIExpression()), !dbg !4482
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4478, metadata !DIExpression()), !dbg !4482
  %28 = icmp sgt i32 %23, -1, !dbg !4484
  br i1 %28, label %36, label %29, !dbg !4484

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4484
  store i32 %30, ptr %7, align 8, !dbg !4484
  %31 = icmp ult i32 %23, -7, !dbg !4484
  br i1 %31, label %32, label %36, !dbg !4484

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4484
  %34 = sext i32 %23 to i64, !dbg !4484
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4484
  br label %40, !dbg !4484

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4484
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4484
  store ptr %39, ptr %4, align 8, !dbg !4484
  br label %40, !dbg !4484

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4484
  %43 = load ptr, ptr %42, align 8, !dbg !4484
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4490
  store ptr %43, ptr %44, align 8, !dbg !4487, !tbaa !1109
  %45 = icmp eq ptr %43, null, !dbg !4488
  br i1 %45, label %197, label %46, !dbg !4489

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4478, metadata !DIExpression()), !dbg !4482
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4478, metadata !DIExpression()), !dbg !4482
  %47 = icmp sgt i32 %41, -1, !dbg !4484
  br i1 %47, label %55, label %48, !dbg !4484

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4484
  store i32 %49, ptr %7, align 8, !dbg !4484
  %50 = icmp ult i32 %41, -7, !dbg !4484
  br i1 %50, label %51, label %55, !dbg !4484

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4484
  %53 = sext i32 %41 to i64, !dbg !4484
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4484
  br label %59, !dbg !4484

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4484
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4484
  store ptr %58, ptr %4, align 8, !dbg !4484
  br label %59, !dbg !4484

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4484
  %62 = load ptr, ptr %61, align 8, !dbg !4484
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4490
  store ptr %62, ptr %63, align 8, !dbg !4487, !tbaa !1109
  %64 = icmp eq ptr %62, null, !dbg !4488
  br i1 %64, label %197, label %65, !dbg !4489

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4478, metadata !DIExpression()), !dbg !4482
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4478, metadata !DIExpression()), !dbg !4482
  %66 = icmp sgt i32 %60, -1, !dbg !4484
  br i1 %66, label %74, label %67, !dbg !4484

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4484
  store i32 %68, ptr %7, align 8, !dbg !4484
  %69 = icmp ult i32 %60, -7, !dbg !4484
  br i1 %69, label %70, label %74, !dbg !4484

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4484
  %72 = sext i32 %60 to i64, !dbg !4484
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4484
  br label %78, !dbg !4484

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4484
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4484
  store ptr %77, ptr %4, align 8, !dbg !4484
  br label %78, !dbg !4484

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4484
  %81 = load ptr, ptr %80, align 8, !dbg !4484
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4490
  store ptr %81, ptr %82, align 8, !dbg !4487, !tbaa !1109
  %83 = icmp eq ptr %81, null, !dbg !4488
  br i1 %83, label %197, label %84, !dbg !4489

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4478, metadata !DIExpression()), !dbg !4482
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4478, metadata !DIExpression()), !dbg !4482
  %85 = icmp sgt i32 %79, -1, !dbg !4484
  br i1 %85, label %93, label %86, !dbg !4484

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4484
  store i32 %87, ptr %7, align 8, !dbg !4484
  %88 = icmp ult i32 %79, -7, !dbg !4484
  br i1 %88, label %89, label %93, !dbg !4484

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4484
  %91 = sext i32 %79 to i64, !dbg !4484
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4484
  br label %97, !dbg !4484

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4484
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4484
  store ptr %96, ptr %4, align 8, !dbg !4484
  br label %97, !dbg !4484

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4484
  %100 = load ptr, ptr %99, align 8, !dbg !4484
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4490
  store ptr %100, ptr %101, align 8, !dbg !4487, !tbaa !1109
  %102 = icmp eq ptr %100, null, !dbg !4488
  br i1 %102, label %197, label %103, !dbg !4489

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4478, metadata !DIExpression()), !dbg !4482
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4478, metadata !DIExpression()), !dbg !4482
  %104 = icmp sgt i32 %98, -1, !dbg !4484
  br i1 %104, label %112, label %105, !dbg !4484

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4484
  store i32 %106, ptr %7, align 8, !dbg !4484
  %107 = icmp ult i32 %98, -7, !dbg !4484
  br i1 %107, label %108, label %112, !dbg !4484

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4484
  %110 = sext i32 %98 to i64, !dbg !4484
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4484
  br label %116, !dbg !4484

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4484
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4484
  store ptr %115, ptr %4, align 8, !dbg !4484
  br label %116, !dbg !4484

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4484
  %119 = load ptr, ptr %118, align 8, !dbg !4484
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4490
  store ptr %119, ptr %120, align 8, !dbg !4487, !tbaa !1109
  %121 = icmp eq ptr %119, null, !dbg !4488
  br i1 %121, label %197, label %122, !dbg !4489

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4478, metadata !DIExpression()), !dbg !4482
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4478, metadata !DIExpression()), !dbg !4482
  %123 = icmp sgt i32 %117, -1, !dbg !4484
  br i1 %123, label %131, label %124, !dbg !4484

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4484
  store i32 %125, ptr %7, align 8, !dbg !4484
  %126 = icmp ult i32 %117, -7, !dbg !4484
  br i1 %126, label %127, label %131, !dbg !4484

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4484
  %129 = sext i32 %117 to i64, !dbg !4484
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4484
  br label %135, !dbg !4484

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4484
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4484
  store ptr %134, ptr %4, align 8, !dbg !4484
  br label %135, !dbg !4484

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4484
  %138 = load ptr, ptr %137, align 8, !dbg !4484
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4490
  store ptr %138, ptr %139, align 8, !dbg !4487, !tbaa !1109
  %140 = icmp eq ptr %138, null, !dbg !4488
  br i1 %140, label %197, label %141, !dbg !4489

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4478, metadata !DIExpression()), !dbg !4482
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4478, metadata !DIExpression()), !dbg !4482
  %142 = icmp sgt i32 %136, -1, !dbg !4484
  br i1 %142, label %150, label %143, !dbg !4484

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4484
  store i32 %144, ptr %7, align 8, !dbg !4484
  %145 = icmp ult i32 %136, -7, !dbg !4484
  br i1 %145, label %146, label %150, !dbg !4484

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4484
  %148 = sext i32 %136 to i64, !dbg !4484
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4484
  br label %154, !dbg !4484

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4484
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4484
  store ptr %153, ptr %4, align 8, !dbg !4484
  br label %154, !dbg !4484

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4484
  %157 = load ptr, ptr %156, align 8, !dbg !4484
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4490
  store ptr %157, ptr %158, align 8, !dbg !4487, !tbaa !1109
  %159 = icmp eq ptr %157, null, !dbg !4488
  br i1 %159, label %197, label %160, !dbg !4489

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4478, metadata !DIExpression()), !dbg !4482
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4478, metadata !DIExpression()), !dbg !4482
  %161 = icmp sgt i32 %155, -1, !dbg !4484
  br i1 %161, label %169, label %162, !dbg !4484

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4484
  store i32 %163, ptr %7, align 8, !dbg !4484
  %164 = icmp ult i32 %155, -7, !dbg !4484
  br i1 %164, label %165, label %169, !dbg !4484

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4484
  %167 = sext i32 %155 to i64, !dbg !4484
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4484
  br label %173, !dbg !4484

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4484
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4484
  store ptr %172, ptr %4, align 8, !dbg !4484
  br label %173, !dbg !4484

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4484
  %176 = load ptr, ptr %175, align 8, !dbg !4484
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4490
  store ptr %176, ptr %177, align 8, !dbg !4487, !tbaa !1109
  %178 = icmp eq ptr %176, null, !dbg !4488
  br i1 %178, label %197, label %179, !dbg !4489

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4478, metadata !DIExpression()), !dbg !4482
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4478, metadata !DIExpression()), !dbg !4482
  %180 = icmp sgt i32 %174, -1, !dbg !4484
  br i1 %180, label %188, label %181, !dbg !4484

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4484
  store i32 %182, ptr %7, align 8, !dbg !4484
  %183 = icmp ult i32 %174, -7, !dbg !4484
  br i1 %183, label %184, label %188, !dbg !4484

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4484
  %186 = sext i32 %174 to i64, !dbg !4484
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4484
  br label %191, !dbg !4484

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4484
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4484
  store ptr %190, ptr %4, align 8, !dbg !4484
  br label %191, !dbg !4484

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4484
  %193 = load ptr, ptr %192, align 8, !dbg !4484
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4490
  store ptr %193, ptr %194, align 8, !dbg !4487, !tbaa !1109
  %195 = icmp eq ptr %193, null, !dbg !4488
  %196 = select i1 %195, i64 9, i64 10, !dbg !4489
  br label %197, !dbg !4489

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4491
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4492
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !4493
  ret void, !dbg !4493
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4494 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !4503
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4502, metadata !DIExpression(), metadata !4503, metadata ptr %5, metadata !DIExpression()), !dbg !4504
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4498, metadata !DIExpression()), !dbg !4504
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4499, metadata !DIExpression()), !dbg !4504
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4500, metadata !DIExpression()), !dbg !4504
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4501, metadata !DIExpression()), !dbg !4504
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !4505
  call void @llvm.va_start(ptr nonnull %5), !dbg !4506
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !4507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4507, !tbaa.struct !2040
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4507
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !4507
  call void @llvm.va_end(ptr nonnull %5), !dbg !4508
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !4509
  ret void, !dbg !4509
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4510 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4511, !tbaa !1109
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.190, ptr noundef %1), !dbg !4511
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.17.207, i32 noundef 5) #39, !dbg !4512
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.208) #39, !dbg !4512
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.19.209, i32 noundef 5) #39, !dbg !4513
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.210, ptr noundef nonnull @.str.21.211) #39, !dbg !4513
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.22.212, i32 noundef 5) #39, !dbg !4514
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.213) #39, !dbg !4514
  ret void, !dbg !4515
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4516 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4521, metadata !DIExpression()), !dbg !4524
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4522, metadata !DIExpression()), !dbg !4524
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4523, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata ptr %0, metadata !4525, metadata !DIExpression()), !dbg !4530
  call void @llvm.dbg.value(metadata i64 %1, metadata !4528, metadata !DIExpression()), !dbg !4530
  call void @llvm.dbg.value(metadata i64 %2, metadata !4529, metadata !DIExpression()), !dbg !4530
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4532
  call void @llvm.dbg.value(metadata ptr %4, metadata !4533, metadata !DIExpression()), !dbg !4538
  %5 = icmp eq ptr %4, null, !dbg !4540
  br i1 %5, label %6, label %7, !dbg !4542

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4543
  unreachable, !dbg !4543

7:                                                ; preds = %3
  ret ptr %4, !dbg !4544
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4526 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4525, metadata !DIExpression()), !dbg !4545
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4528, metadata !DIExpression()), !dbg !4545
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4529, metadata !DIExpression()), !dbg !4545
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4546
  call void @llvm.dbg.value(metadata ptr %4, metadata !4533, metadata !DIExpression()), !dbg !4547
  %5 = icmp eq ptr %4, null, !dbg !4549
  br i1 %5, label %6, label %7, !dbg !4550

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4551
  unreachable, !dbg !4551

7:                                                ; preds = %3
  ret ptr %4, !dbg !4552
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4553 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4555, metadata !DIExpression()), !dbg !4556
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !4557
  call void @llvm.dbg.value(metadata ptr %2, metadata !4533, metadata !DIExpression()), !dbg !4558
  %3 = icmp eq ptr %2, null, !dbg !4560
  br i1 %3, label %4, label %5, !dbg !4561

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4562
  unreachable, !dbg !4562

5:                                                ; preds = %1
  ret ptr %2, !dbg !4563
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4564 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4568, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.value(metadata i64 %0, metadata !4570, metadata !DIExpression()), !dbg !4574
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !4576
  call void @llvm.dbg.value(metadata ptr %2, metadata !4533, metadata !DIExpression()), !dbg !4577
  %3 = icmp eq ptr %2, null, !dbg !4579
  br i1 %3, label %4, label %5, !dbg !4580

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4581
  unreachable, !dbg !4581

5:                                                ; preds = %1
  ret ptr %2, !dbg !4582
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4583 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4587, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.value(metadata i64 %0, metadata !4555, metadata !DIExpression()), !dbg !4589
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !4591
  call void @llvm.dbg.value(metadata ptr %2, metadata !4533, metadata !DIExpression()), !dbg !4592
  %3 = icmp eq ptr %2, null, !dbg !4594
  br i1 %3, label %4, label %5, !dbg !4595

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4596
  unreachable, !dbg !4596

5:                                                ; preds = %1
  ret ptr %2, !dbg !4597
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4598 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4600, metadata !DIExpression()), !dbg !4602
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4601, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.value(metadata ptr %0, metadata !4603, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata i64 %1, metadata !4607, metadata !DIExpression()), !dbg !4608
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4610
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !4611
  call void @llvm.dbg.value(metadata ptr %4, metadata !4533, metadata !DIExpression()), !dbg !4612
  %5 = icmp eq ptr %4, null, !dbg !4614
  br i1 %5, label %6, label %7, !dbg !4615

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4616
  unreachable, !dbg !4616

7:                                                ; preds = %2
  ret ptr %4, !dbg !4617
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4618 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4619 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4623, metadata !DIExpression()), !dbg !4625
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4624, metadata !DIExpression()), !dbg !4625
  call void @llvm.dbg.value(metadata ptr %0, metadata !4626, metadata !DIExpression()), !dbg !4630
  call void @llvm.dbg.value(metadata i64 %1, metadata !4629, metadata !DIExpression()), !dbg !4630
  call void @llvm.dbg.value(metadata ptr %0, metadata !4603, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.value(metadata i64 %1, metadata !4607, metadata !DIExpression()), !dbg !4632
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4634
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !4635
  call void @llvm.dbg.value(metadata ptr %4, metadata !4533, metadata !DIExpression()), !dbg !4636
  %5 = icmp eq ptr %4, null, !dbg !4638
  br i1 %5, label %6, label %7, !dbg !4639

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4640
  unreachable, !dbg !4640

7:                                                ; preds = %2
  ret ptr %4, !dbg !4641
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4642 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4646, metadata !DIExpression()), !dbg !4649
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4647, metadata !DIExpression()), !dbg !4649
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4648, metadata !DIExpression()), !dbg !4649
  call void @llvm.dbg.value(metadata ptr %0, metadata !4650, metadata !DIExpression()), !dbg !4655
  call void @llvm.dbg.value(metadata i64 %1, metadata !4653, metadata !DIExpression()), !dbg !4655
  call void @llvm.dbg.value(metadata i64 %2, metadata !4654, metadata !DIExpression()), !dbg !4655
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4657
  call void @llvm.dbg.value(metadata ptr %4, metadata !4533, metadata !DIExpression()), !dbg !4658
  %5 = icmp eq ptr %4, null, !dbg !4660
  br i1 %5, label %6, label %7, !dbg !4661

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4662
  unreachable, !dbg !4662

7:                                                ; preds = %3
  ret ptr %4, !dbg !4663
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4664 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4668, metadata !DIExpression()), !dbg !4670
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4669, metadata !DIExpression()), !dbg !4670
  call void @llvm.dbg.value(metadata ptr null, metadata !4525, metadata !DIExpression()), !dbg !4671
  call void @llvm.dbg.value(metadata i64 %0, metadata !4528, metadata !DIExpression()), !dbg !4671
  call void @llvm.dbg.value(metadata i64 %1, metadata !4529, metadata !DIExpression()), !dbg !4671
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4673
  call void @llvm.dbg.value(metadata ptr %3, metadata !4533, metadata !DIExpression()), !dbg !4674
  %4 = icmp eq ptr %3, null, !dbg !4676
  br i1 %4, label %5, label %6, !dbg !4677

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4678
  unreachable, !dbg !4678

6:                                                ; preds = %2
  ret ptr %3, !dbg !4679
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4680 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4684, metadata !DIExpression()), !dbg !4686
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4685, metadata !DIExpression()), !dbg !4686
  call void @llvm.dbg.value(metadata ptr null, metadata !4646, metadata !DIExpression()), !dbg !4687
  call void @llvm.dbg.value(metadata i64 %0, metadata !4647, metadata !DIExpression()), !dbg !4687
  call void @llvm.dbg.value(metadata i64 %1, metadata !4648, metadata !DIExpression()), !dbg !4687
  call void @llvm.dbg.value(metadata ptr null, metadata !4650, metadata !DIExpression()), !dbg !4689
  call void @llvm.dbg.value(metadata i64 %0, metadata !4653, metadata !DIExpression()), !dbg !4689
  call void @llvm.dbg.value(metadata i64 %1, metadata !4654, metadata !DIExpression()), !dbg !4689
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4691
  call void @llvm.dbg.value(metadata ptr %3, metadata !4533, metadata !DIExpression()), !dbg !4692
  %4 = icmp eq ptr %3, null, !dbg !4694
  br i1 %4, label %5, label %6, !dbg !4695

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4696
  unreachable, !dbg !4696

6:                                                ; preds = %2
  ret ptr %3, !dbg !4697
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4698 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4702, metadata !DIExpression()), !dbg !4704
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4703, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.value(metadata ptr %0, metadata !1053, metadata !DIExpression()), !dbg !4705
  call void @llvm.dbg.value(metadata ptr %1, metadata !1054, metadata !DIExpression()), !dbg !4705
  call void @llvm.dbg.value(metadata i64 1, metadata !1055, metadata !DIExpression()), !dbg !4705
  %3 = load i64, ptr %1, align 8, !dbg !4707, !tbaa !1525
  call void @llvm.dbg.value(metadata i64 %3, metadata !1056, metadata !DIExpression()), !dbg !4705
  %4 = icmp eq ptr %0, null, !dbg !4708
  br i1 %4, label %5, label %8, !dbg !4710

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4711
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4714
  br label %15, !dbg !4714

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4715
  %10 = add nuw i64 %9, 1, !dbg !4715
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4715
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4715
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4715
  call void @llvm.dbg.value(metadata i64 %13, metadata !1056, metadata !DIExpression()), !dbg !4705
  br i1 %12, label %14, label %15, !dbg !4718

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !4719
  unreachable, !dbg !4719

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4705
  call void @llvm.dbg.value(metadata i64 %16, metadata !1056, metadata !DIExpression()), !dbg !4705
  call void @llvm.dbg.value(metadata ptr %0, metadata !4525, metadata !DIExpression()), !dbg !4720
  call void @llvm.dbg.value(metadata i64 %16, metadata !4528, metadata !DIExpression()), !dbg !4720
  call void @llvm.dbg.value(metadata i64 1, metadata !4529, metadata !DIExpression()), !dbg !4720
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !4722
  call void @llvm.dbg.value(metadata ptr %17, metadata !4533, metadata !DIExpression()), !dbg !4723
  %18 = icmp eq ptr %17, null, !dbg !4725
  br i1 %18, label %19, label %20, !dbg !4726

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !4727
  unreachable, !dbg !4727

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !1053, metadata !DIExpression()), !dbg !4705
  store i64 %16, ptr %1, align 8, !dbg !4728, !tbaa !1525
  ret ptr %17, !dbg !4729
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1048 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1053, metadata !DIExpression()), !dbg !4730
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1054, metadata !DIExpression()), !dbg !4730
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1055, metadata !DIExpression()), !dbg !4730
  %4 = load i64, ptr %1, align 8, !dbg !4731, !tbaa !1525
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !1056, metadata !DIExpression()), !dbg !4730
  %5 = icmp eq ptr %0, null, !dbg !4732
  br i1 %5, label %6, label %13, !dbg !4733

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4734
  br i1 %7, label %8, label %20, !dbg !4735

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4736
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1056, metadata !DIExpression()), !dbg !4730
  %10 = icmp ugt i64 %2, 128, !dbg !4738
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4739
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1056, metadata !DIExpression()), !dbg !4730
  br label %20, !dbg !4740

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4741
  %15 = add nuw i64 %14, 1, !dbg !4741
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4741
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4741
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4741
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1056, metadata !DIExpression()), !dbg !4730
  br i1 %17, label %19, label %20, !dbg !4742

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !4743
  unreachable, !dbg !4743

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4730
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !1056, metadata !DIExpression()), !dbg !4730
  call void @llvm.dbg.value(metadata ptr %0, metadata !4525, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata i64 %21, metadata !4528, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata i64 %2, metadata !4529, metadata !DIExpression()), !dbg !4744
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !4746
  call void @llvm.dbg.value(metadata ptr %22, metadata !4533, metadata !DIExpression()), !dbg !4747
  %23 = icmp eq ptr %22, null, !dbg !4749
  br i1 %23, label %24, label %25, !dbg !4750

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !4751
  unreachable, !dbg !4751

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !1053, metadata !DIExpression()), !dbg !4730
  store i64 %21, ptr %1, align 8, !dbg !4752, !tbaa !1525
  ret ptr %22, !dbg !4753
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !1060 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1067, metadata !DIExpression()), !dbg !4754
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1068, metadata !DIExpression()), !dbg !4754
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1069, metadata !DIExpression()), !dbg !4754
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1070, metadata !DIExpression()), !dbg !4754
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !1071, metadata !DIExpression()), !dbg !4754
  %6 = load i64, ptr %1, align 8, !dbg !4755, !tbaa !1525
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !1072, metadata !DIExpression()), !dbg !4754
  %7 = ashr i64 %6, 1, !dbg !4756
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4756
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4756
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4756
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !1073, metadata !DIExpression()), !dbg !4754
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4758
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1073, metadata !DIExpression()), !dbg !4754
  %12 = icmp sgt i64 %3, -1, !dbg !4759
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4761
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4761
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !1073, metadata !DIExpression()), !dbg !4754
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4762
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4762
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4762
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !1074, metadata !DIExpression()), !dbg !4754
  %18 = icmp slt i64 %17, 128, !dbg !4762
  %19 = select i1 %18, i64 128, i64 0, !dbg !4762
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4762
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !1075, metadata !DIExpression()), !dbg !4754
  %21 = icmp eq i64 %20, 0, !dbg !4763
  br i1 %21, label %28, label %22, !dbg !4765

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !4766
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !1073, metadata !DIExpression()), !dbg !4754
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !4768
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !1074, metadata !DIExpression()), !dbg !4754
  br label %28, !dbg !4769

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !4754
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !4754
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !1074, metadata !DIExpression()), !dbg !4754
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !1073, metadata !DIExpression()), !dbg !4754
  %31 = icmp eq ptr %0, null, !dbg !4770
  br i1 %31, label %32, label %33, !dbg !4772

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !4773, !tbaa !1525
  br label %33, !dbg !4774

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !4775
  %35 = icmp slt i64 %34, %2, !dbg !4777
  br i1 %35, label %36, label %48, !dbg !4778

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4779
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !4779
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !4779
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1073, metadata !DIExpression()), !dbg !4754
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !4780
  br i1 %42, label %47, label %43, !dbg !4780

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !4781
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !4781
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !4781
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !1074, metadata !DIExpression()), !dbg !4754
  br i1 %45, label %47, label %48, !dbg !4782

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #41, !dbg !4783
  unreachable, !dbg !4783

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !4754
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !4754
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !1074, metadata !DIExpression()), !dbg !4754
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !1073, metadata !DIExpression()), !dbg !4754
  call void @llvm.dbg.value(metadata ptr %0, metadata !4600, metadata !DIExpression()), !dbg !4784
  call void @llvm.dbg.value(metadata i64 %50, metadata !4601, metadata !DIExpression()), !dbg !4784
  call void @llvm.dbg.value(metadata ptr %0, metadata !4603, metadata !DIExpression()), !dbg !4786
  call void @llvm.dbg.value(metadata i64 %50, metadata !4607, metadata !DIExpression()), !dbg !4786
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !4788
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #45, !dbg !4789
  call void @llvm.dbg.value(metadata ptr %52, metadata !4533, metadata !DIExpression()), !dbg !4790
  %53 = icmp eq ptr %52, null, !dbg !4792
  br i1 %53, label %54, label %55, !dbg !4793

54:                                               ; preds = %48
  tail call void @xalloc_die() #41, !dbg !4794
  unreachable, !dbg !4794

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !1067, metadata !DIExpression()), !dbg !4754
  store i64 %49, ptr %1, align 8, !dbg !4795, !tbaa !1525
  ret ptr %52, !dbg !4796
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4797 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4799, metadata !DIExpression()), !dbg !4800
  call void @llvm.dbg.value(metadata i64 %0, metadata !4801, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.value(metadata i64 1, metadata !4804, metadata !DIExpression()), !dbg !4805
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4807
  call void @llvm.dbg.value(metadata ptr %2, metadata !4533, metadata !DIExpression()), !dbg !4808
  %3 = icmp eq ptr %2, null, !dbg !4810
  br i1 %3, label %4, label %5, !dbg !4811

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4812
  unreachable, !dbg !4812

5:                                                ; preds = %1
  ret ptr %2, !dbg !4813
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4814 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4802 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4801, metadata !DIExpression()), !dbg !4815
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4804, metadata !DIExpression()), !dbg !4815
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4816
  call void @llvm.dbg.value(metadata ptr %3, metadata !4533, metadata !DIExpression()), !dbg !4817
  %4 = icmp eq ptr %3, null, !dbg !4819
  br i1 %4, label %5, label %6, !dbg !4820

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4821
  unreachable, !dbg !4821

6:                                                ; preds = %2
  ret ptr %3, !dbg !4822
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4823 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4825, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata i64 %0, metadata !4827, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata i64 1, metadata !4830, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata i64 %0, metadata !4833, metadata !DIExpression()), !dbg !4837
  call void @llvm.dbg.value(metadata i64 1, metadata !4836, metadata !DIExpression()), !dbg !4837
  call void @llvm.dbg.value(metadata i64 %0, metadata !4833, metadata !DIExpression()), !dbg !4837
  call void @llvm.dbg.value(metadata i64 1, metadata !4836, metadata !DIExpression()), !dbg !4837
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4839
  call void @llvm.dbg.value(metadata ptr %2, metadata !4533, metadata !DIExpression()), !dbg !4840
  %3 = icmp eq ptr %2, null, !dbg !4842
  br i1 %3, label %4, label %5, !dbg !4843

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4844
  unreachable, !dbg !4844

5:                                                ; preds = %1
  ret ptr %2, !dbg !4845
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4828 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4827, metadata !DIExpression()), !dbg !4846
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4830, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata i64 %0, metadata !4833, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.value(metadata i64 %1, metadata !4836, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.value(metadata i64 %0, metadata !4833, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.value(metadata i64 %1, metadata !4836, metadata !DIExpression()), !dbg !4847
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4849
  call void @llvm.dbg.value(metadata ptr %3, metadata !4533, metadata !DIExpression()), !dbg !4850
  %4 = icmp eq ptr %3, null, !dbg !4852
  br i1 %4, label %5, label %6, !dbg !4853

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4854
  unreachable, !dbg !4854

6:                                                ; preds = %2
  ret ptr %3, !dbg !4855
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4856 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4860, metadata !DIExpression()), !dbg !4862
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4861, metadata !DIExpression()), !dbg !4862
  call void @llvm.dbg.value(metadata i64 %1, metadata !4555, metadata !DIExpression()), !dbg !4863
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !4865
  call void @llvm.dbg.value(metadata ptr %3, metadata !4533, metadata !DIExpression()), !dbg !4866
  %4 = icmp eq ptr %3, null, !dbg !4868
  br i1 %4, label %5, label %6, !dbg !4869

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4870
  unreachable, !dbg !4870

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4871, metadata !DIExpression()), !dbg !4876
  call void @llvm.dbg.value(metadata ptr %0, metadata !4874, metadata !DIExpression()), !dbg !4876
  call void @llvm.dbg.value(metadata i64 %1, metadata !4875, metadata !DIExpression()), !dbg !4876
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4878
  ret ptr %3, !dbg !4879
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4880 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4884, metadata !DIExpression()), !dbg !4886
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4885, metadata !DIExpression()), !dbg !4886
  call void @llvm.dbg.value(metadata i64 %1, metadata !4568, metadata !DIExpression()), !dbg !4887
  call void @llvm.dbg.value(metadata i64 %1, metadata !4570, metadata !DIExpression()), !dbg !4889
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !4891
  call void @llvm.dbg.value(metadata ptr %3, metadata !4533, metadata !DIExpression()), !dbg !4892
  %4 = icmp eq ptr %3, null, !dbg !4894
  br i1 %4, label %5, label %6, !dbg !4895

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4896
  unreachable, !dbg !4896

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4871, metadata !DIExpression()), !dbg !4897
  call void @llvm.dbg.value(metadata ptr %0, metadata !4874, metadata !DIExpression()), !dbg !4897
  call void @llvm.dbg.value(metadata i64 %1, metadata !4875, metadata !DIExpression()), !dbg !4897
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4899
  ret ptr %3, !dbg !4900
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4901 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4905, metadata !DIExpression()), !dbg !4908
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4906, metadata !DIExpression()), !dbg !4908
  %3 = add nsw i64 %1, 1, !dbg !4909
  call void @llvm.dbg.value(metadata i64 %3, metadata !4568, metadata !DIExpression()), !dbg !4910
  call void @llvm.dbg.value(metadata i64 %3, metadata !4570, metadata !DIExpression()), !dbg !4912
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !4914
  call void @llvm.dbg.value(metadata ptr %4, metadata !4533, metadata !DIExpression()), !dbg !4915
  %5 = icmp eq ptr %4, null, !dbg !4917
  br i1 %5, label %6, label %7, !dbg !4918

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4919
  unreachable, !dbg !4919

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4907, metadata !DIExpression()), !dbg !4908
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4920
  store i8 0, ptr %8, align 1, !dbg !4921, !tbaa !1183
  call void @llvm.dbg.value(metadata ptr %4, metadata !4871, metadata !DIExpression()), !dbg !4922
  call void @llvm.dbg.value(metadata ptr %0, metadata !4874, metadata !DIExpression()), !dbg !4922
  call void @llvm.dbg.value(metadata i64 %1, metadata !4875, metadata !DIExpression()), !dbg !4922
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4924
  ret ptr %4, !dbg !4925
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4926 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4928, metadata !DIExpression()), !dbg !4929
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !4930
  %3 = add i64 %2, 1, !dbg !4931
  call void @llvm.dbg.value(metadata ptr %0, metadata !4860, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i64 %3, metadata !4861, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i64 %3, metadata !4555, metadata !DIExpression()), !dbg !4934
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !4936
  call void @llvm.dbg.value(metadata ptr %4, metadata !4533, metadata !DIExpression()), !dbg !4937
  %5 = icmp eq ptr %4, null, !dbg !4939
  br i1 %5, label %6, label %7, !dbg !4940

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4941
  unreachable, !dbg !4941

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4871, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.value(metadata ptr %0, metadata !4874, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.value(metadata i64 %3, metadata !4875, metadata !DIExpression()), !dbg !4942
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !4944
  ret ptr %4, !dbg !4945
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4946 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4951, !tbaa !1174
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4948, metadata !DIExpression()), !dbg !4952
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.226, ptr noundef nonnull @.str.2.227, i32 noundef 5) #39, !dbg !4951
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.228, ptr noundef %2) #39, !dbg !4951
  %3 = icmp eq i32 %1, 0, !dbg !4951
  tail call void @llvm.assume(i1 %3), !dbg !4951
  tail call void @abort() #41, !dbg !4953
  unreachable, !dbg !4953
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #36

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4954 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4992, metadata !DIExpression()), !dbg !4997
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !4998
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4993, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4997
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4999, metadata !DIExpression()), !dbg !5002
  %3 = load i32, ptr %0, align 8, !dbg !5004, !tbaa !1569
  %4 = and i32 %3, 32, !dbg !5005
  %5 = icmp eq i32 %4, 0, !dbg !5005
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4995, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4997
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !5006
  %7 = icmp eq i32 %6, 0, !dbg !5007
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4996, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4997
  br i1 %5, label %8, label %18, !dbg !5008

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5010
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4993, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4997
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5011
  %11 = xor i1 %7, true, !dbg !5011
  %12 = sext i1 %11 to i32, !dbg !5011
  br i1 %10, label %21, label %13, !dbg !5011

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !5012
  %15 = load i32, ptr %14, align 4, !dbg !5012, !tbaa !1174
  %16 = icmp ne i32 %15, 9, !dbg !5013
  %17 = sext i1 %16 to i32, !dbg !5014
  br label %21, !dbg !5014

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5015

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !5017
  store i32 0, ptr %20, align 4, !dbg !5019, !tbaa !1174
  br label %21, !dbg !5017

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4997
  ret i32 %22, !dbg !5020
}

; Function Attrs: nounwind
declare !dbg !5021 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5024 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5029, metadata !DIExpression()), !dbg !5034
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5030, metadata !DIExpression()), !dbg !5034
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5031, metadata !DIExpression()), !dbg !5034
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5032, metadata !DIExpression()), !dbg !5034
  %5 = icmp eq ptr %1, null, !dbg !5035
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5037
  %7 = select i1 %5, ptr @.str.233, ptr %1, !dbg !5037
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5037
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !5031, metadata !DIExpression()), !dbg !5034
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !5030, metadata !DIExpression()), !dbg !5034
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !5029, metadata !DIExpression()), !dbg !5034
  %9 = icmp eq ptr %3, null, !dbg !5038
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5040
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !5032, metadata !DIExpression()), !dbg !5034
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #39, !dbg !5041
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !5033, metadata !DIExpression()), !dbg !5034
  %12 = icmp ult i64 %11, -3, !dbg !5042
  br i1 %12, label %13, label %17, !dbg !5044

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #40, !dbg !5045
  %15 = icmp eq i32 %14, 0, !dbg !5045
  br i1 %15, label %16, label %29, !dbg !5046

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5047, metadata !DIExpression()), !dbg !5052
  call void @llvm.dbg.value(metadata ptr %10, metadata !5054, metadata !DIExpression()), !dbg !5059
  call void @llvm.dbg.value(metadata i32 0, metadata !5057, metadata !DIExpression()), !dbg !5059
  call void @llvm.dbg.value(metadata i64 8, metadata !5058, metadata !DIExpression()), !dbg !5059
  store i64 0, ptr %10, align 1, !dbg !5061
  br label %29, !dbg !5062

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5063
  br i1 %18, label %19, label %20, !dbg !5065

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !5066
  unreachable, !dbg !5066

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5067

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #39, !dbg !5069
  br i1 %23, label %29, label %24, !dbg !5070

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5071
  br i1 %25, label %29, label %26, !dbg !5074

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5075, !tbaa !1183
  %28 = zext i8 %27 to i32, !dbg !5076
  store i32 %28, ptr %6, align 4, !dbg !5077, !tbaa !1174
  br label %29, !dbg !5078

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5034
  ret i64 %30, !dbg !5079
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5080 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !5086 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5088, metadata !DIExpression()), !dbg !5092
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5089, metadata !DIExpression()), !dbg !5092
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5090, metadata !DIExpression()), !dbg !5092
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !5093
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !5093
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5091, metadata !DIExpression()), !dbg !5092
  br i1 %5, label %6, label %8, !dbg !5095

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #42, !dbg !5096
  store i32 12, ptr %7, align 4, !dbg !5098, !tbaa !1174
  br label %12, !dbg !5099

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !5093
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !5091, metadata !DIExpression()), !dbg !5092
  call void @llvm.dbg.value(metadata ptr %0, metadata !5100, metadata !DIExpression()), !dbg !5104
  call void @llvm.dbg.value(metadata i64 %9, metadata !5103, metadata !DIExpression()), !dbg !5104
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !5106
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #45, !dbg !5107
  br label %12, !dbg !5108

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !5092
  ret ptr %13, !dbg !5109
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5110 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !5117
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5113, metadata !DIExpression(), metadata !5117, metadata ptr %2, metadata !DIExpression()), !dbg !5118
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5112, metadata !DIExpression()), !dbg !5118
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !5119
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !5120
  %4 = icmp eq i32 %3, 0, !dbg !5120
  br i1 %4, label %5, label %12, !dbg !5122

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5123, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata ptr @.str.238, metadata !5126, metadata !DIExpression()), !dbg !5127
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.238, i64 2), !dbg !5130
  %7 = icmp eq i32 %6, 0, !dbg !5131
  br i1 %7, label %11, label %8, !dbg !5132

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5123, metadata !DIExpression()), !dbg !5133
  call void @llvm.dbg.value(metadata ptr @.str.1.239, metadata !5126, metadata !DIExpression()), !dbg !5133
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.239, i64 6), !dbg !5135
  %10 = icmp eq i32 %9, 0, !dbg !5136
  br i1 %10, label %11, label %12, !dbg !5137

11:                                               ; preds = %8, %5
  br label %12, !dbg !5138

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5118
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !5139
  ret i1 %13, !dbg !5139
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5140 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5144, metadata !DIExpression()), !dbg !5147
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5145, metadata !DIExpression()), !dbg !5147
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5146, metadata !DIExpression()), !dbg !5147
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !5148
  ret i32 %4, !dbg !5149
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5150 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5154, metadata !DIExpression()), !dbg !5155
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !5156
  ret ptr %2, !dbg !5157
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5158 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5160, metadata !DIExpression()), !dbg !5162
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5163
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5161, metadata !DIExpression()), !dbg !5162
  ret ptr %2, !dbg !5164
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5165 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5167, metadata !DIExpression()), !dbg !5174
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5168, metadata !DIExpression()), !dbg !5174
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5169, metadata !DIExpression()), !dbg !5174
  call void @llvm.dbg.value(metadata i32 %0, metadata !5160, metadata !DIExpression()), !dbg !5175
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5177
  call void @llvm.dbg.value(metadata ptr %4, metadata !5161, metadata !DIExpression()), !dbg !5175
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5170, metadata !DIExpression()), !dbg !5174
  %5 = icmp eq ptr %4, null, !dbg !5178
  br i1 %5, label %6, label %9, !dbg !5179

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5180
  br i1 %7, label %19, label %8, !dbg !5183

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5184, !tbaa !1183
  br label %19, !dbg !5185

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !5186
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5171, metadata !DIExpression()), !dbg !5187
  %11 = icmp ult i64 %10, %2, !dbg !5188
  br i1 %11, label %12, label %14, !dbg !5190

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5191
  call void @llvm.dbg.value(metadata ptr %1, metadata !5193, metadata !DIExpression()), !dbg !5198
  call void @llvm.dbg.value(metadata ptr %4, metadata !5196, metadata !DIExpression()), !dbg !5198
  call void @llvm.dbg.value(metadata i64 %13, metadata !5197, metadata !DIExpression()), !dbg !5198
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #39, !dbg !5200
  br label %19, !dbg !5201

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5202
  br i1 %15, label %19, label %16, !dbg !5205

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5206
  call void @llvm.dbg.value(metadata ptr %1, metadata !5193, metadata !DIExpression()), !dbg !5208
  call void @llvm.dbg.value(metadata ptr %4, metadata !5196, metadata !DIExpression()), !dbg !5208
  call void @llvm.dbg.value(metadata i64 %17, metadata !5197, metadata !DIExpression()), !dbg !5208
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !5210
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5211
  store i8 0, ptr %18, align 1, !dbg !5212, !tbaa !1183
  br label %19, !dbg !5213

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5214
  ret i32 %20, !dbg !5215
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
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #17 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #18 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn }
attributes #21 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { nofree nounwind willreturn memory(argmem: read) }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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

!llvm.dbg.cu = !{!76, !678, !1019, !1022, !682, !697, !985, !1027, !1029, !1032, !1034, !1036, !753, !765, !779, !827, !1038, !977, !1044, !1077, !1079, !1001, !1081, !1083, !1085, !1087}
!llvm.ident = !{!1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089}
!llvm.module.flags = !{!1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/dircolors.c", directory: "/src", checksumkind: CSK_MD5, checksum: "670b95ccf0215cde2984ed04e905f87d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 30)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 712, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 89)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 10)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 632, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 79)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 560, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 70)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 49)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 592, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 74)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 124, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 50)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 62)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 126, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1776, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 222)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 438, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 1)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 439, type: !19, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 439, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 24)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 444, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 4)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "long_options", scope: !76, file: !2, line: 82, type: !662, isLocal: true, isDefinition: true)
!76 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/dircolors.o -MD -MP -MF src/.deps/dircolors.Tpo -c src/dircolors.c -o src/.dircolors.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !222, globals: !224, splitDebugInlining: false, nameTableKind: None)
!77 = !{!78, !84, !87, !93, !108, !208}
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Shell_syntax", file: !2, line: 40, baseType: !79, size: 32, elements: !80)
!79 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "SHELL_SYNTAX_BOURNE", value: 0)
!82 = !DIEnumerator(name: "SHELL_SYNTAX_C", value: 1)
!83 = !DIEnumerator(name: "SHELL_SYNTAX_UNKNOWN", value: 2)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 77, baseType: !79, size: 32, elements: !85)
!85 = !{!86}
!86 = !DIEnumerator(name: "PRINT_LS_COLORS_OPTION", value: 256)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 337, baseType: !89, size: 32, elements: !90)
!88 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!89 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!90 = !{!91, !92}
!91 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!92 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !94, line: 46, baseType: !79, size: 32, elements: !95)
!94 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!95 = !{!96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107}
!96 = !DIEnumerator(name: "_ISupper", value: 256)
!97 = !DIEnumerator(name: "_ISlower", value: 512)
!98 = !DIEnumerator(name: "_ISalpha", value: 1024)
!99 = !DIEnumerator(name: "_ISdigit", value: 2048)
!100 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!101 = !DIEnumerator(name: "_ISspace", value: 8192)
!102 = !DIEnumerator(name: "_ISprint", value: 16384)
!103 = !DIEnumerator(name: "_ISgraph", value: 32768)
!104 = !DIEnumerator(name: "_ISblank", value: 1)
!105 = !DIEnumerator(name: "_IScntrl", value: 2)
!106 = !DIEnumerator(name: "_ISpunct", value: 4)
!107 = !DIEnumerator(name: "_ISalnum", value: 8)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !109, file: !2, line: 290, baseType: !79, size: 32, elements: !203)
!109 = distinct !DISubprogram(name: "dc_parse_stream", scope: !2, file: !2, line: 278, type: !110, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !173)
!110 = !DISubroutineType(types: !111)
!111 = !{!112, !113, !171}
!112 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !116)
!115 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !118)
!117 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!118 = !{!119, !120, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !135, !137, !138, !139, !143, !145, !147, !148, !151, !153, !156, !159, !160, !162, !166, !167}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !116, file: !117, line: 51, baseType: !89, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !116, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !116, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !116, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !116, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !116, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !116, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !116, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !116, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !116, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !116, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !116, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !116, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !117, line: 36, flags: DIFlagFwdDecl)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !116, file: !117, line: 70, baseType: !136, size: 64, offset: 832)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !116, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !116, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !116, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !141, line: 152, baseType: !142)
!141 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!142 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !116, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!144 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !116, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!146 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !116, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !116, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !117, line: 43, baseType: null)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !116, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !141, line: 153, baseType: !142)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !116, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !117, line: 37, flags: DIFlagFwdDecl)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !116, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !117, line: 38, flags: DIFlagFwdDecl)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !116, file: !117, line: 93, baseType: !136, size: 64, offset: 1344)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !116, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !116, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !164, line: 18, baseType: !165)
!164 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!165 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !116, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !116, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 20)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!173 = !{!174, !175, !176, !181, !182, !183, !184, !185, !186, !187, !188, !189, !191, !192, !193}
!174 = !DILocalVariable(name: "fp", arg: 1, scope: !109, file: !2, line: 278, type: !113)
!175 = !DILocalVariable(name: "filename", arg: 2, scope: !109, file: !2, line: 278, type: !171)
!176 = !DILocalVariable(name: "line_number", scope: !109, file: !2, line: 280, type: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !178, line: 130, baseType: !179)
!178 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !180, line: 18, baseType: !142)
!180 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!181 = !DILocalVariable(name: "next_G_line", scope: !109, file: !2, line: 281, type: !171)
!182 = !DILocalVariable(name: "input_line", scope: !109, file: !2, line: 282, type: !121)
!183 = !DILocalVariable(name: "input_line_size", scope: !109, file: !2, line: 283, type: !163)
!184 = !DILocalVariable(name: "line", scope: !109, file: !2, line: 284, type: !171)
!185 = !DILocalVariable(name: "term", scope: !109, file: !2, line: 285, type: !171)
!186 = !DILocalVariable(name: "colorterm", scope: !109, file: !2, line: 286, type: !171)
!187 = !DILocalVariable(name: "ok", scope: !109, file: !2, line: 287, type: !112)
!188 = !DILocalVariable(name: "state", scope: !109, file: !2, line: 290, type: !108)
!189 = !DILocalVariable(name: "keywd", scope: !190, file: !2, line: 304, type: !121)
!190 = distinct !DILexicalBlock(scope: !109, file: !2, line: 303, column: 5)
!191 = !DILocalVariable(name: "arg", scope: !190, file: !2, line: 304, type: !121)
!192 = !DILocalVariable(name: "unrecognized", scope: !190, file: !2, line: 305, type: !112)
!193 = !DILocalVariable(name: "i", scope: !194, file: !2, line: 375, type: !89)
!194 = distinct !DILexicalBlock(scope: !195, file: !2, line: 374, column: 17)
!195 = distinct !DILexicalBlock(scope: !196, file: !2, line: 367, column: 24)
!196 = distinct !DILexicalBlock(scope: !197, file: !2, line: 365, column: 24)
!197 = distinct !DILexicalBlock(scope: !198, file: !2, line: 363, column: 19)
!198 = distinct !DILexicalBlock(scope: !199, file: !2, line: 362, column: 13)
!199 = distinct !DILexicalBlock(scope: !200, file: !2, line: 361, column: 15)
!200 = distinct !DILexicalBlock(scope: !201, file: !2, line: 357, column: 9)
!201 = distinct !DILexicalBlock(scope: !202, file: !2, line: 351, column: 16)
!202 = distinct !DILexicalBlock(scope: !190, file: !2, line: 346, column: 11)
!203 = !{!204, !205, !206, !207}
!204 = !DIEnumerator(name: "ST_TERMNO", value: 0)
!205 = !DIEnumerator(name: "ST_TERMYES", value: 1)
!206 = !DIEnumerator(name: "ST_TERMSURE", value: 2)
!207 = !DIEnumerator(name: "ST_GLOBAL", value: 3)
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !209, line: 42, baseType: !79, size: 32, elements: !210)
!209 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221}
!211 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!212 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!213 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!214 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!215 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!216 = !DIEnumerator(name: "c_quoting_style", value: 5)
!217 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!218 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!219 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!220 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!221 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!222 = !{!121, !161, !163, !165, !171, !89, !144, !223}
!223 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!224 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !64, !69, !225, !230, !235, !240, !242, !247, !249, !254, !256, !261, !266, !271, !276, !327, !329, !359, !364, !366, !368, !373, !378, !380, !382, !384, !386, !388, !390, !395, !400, !402, !404, !406, !408, !410, !412, !414, !419, !421, !426, !428, !430, !432, !434, !439, !444, !446, !448, !453, !458, !463, !465, !470, !472, !474, !476, !478, !480, !482, !74, !484, !490, !492, !494, !496, !498, !500, !505, !507, !509, !514, !519, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660}
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !2, line: 465, type: !227, isLocal: true, isDefinition: true)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 14)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !2, line: 465, type: !232, isLocal: true, isDefinition: true)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 15)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !2, line: 478, type: !237, isLocal: true, isDefinition: true)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 736, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 92)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !2, line: 486, type: !29, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !2, line: 494, type: !244, isLocal: true, isDefinition: true)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 17)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !2, line: 497, type: !71, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !2, line: 497, type: !251, isLocal: true, isDefinition: true)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 60)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !2, line: 519, type: !49, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !2, line: 539, type: !258, isLocal: true, isDefinition: true)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 12)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !2, line: 540, type: !263, isLocal: true, isDefinition: true)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 21)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !2, line: 544, type: !268, isLocal: true, isDefinition: true)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 19)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !2, line: 545, type: !273, isLocal: true, isDefinition: true)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 3)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(name: "lsc_obstack", scope: !76, file: !2, line: 51, type: !278, isLocal: true, isDefinition: true)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !279, line: 210, size: 704, elements: !280)
!279 = !DIFile(filename: "./lib/obstack.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8dc5712d9cd0944565da172aee39448c")
!280 = !{!281, !282, !292, !293, !294, !295, !300, !301, !312, !323, !324, !325, !326}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !278, file: !279, line: 212, baseType: !163, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !278, file: !279, line: 213, baseType: !283, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !279, line: 203, size: 128, elements: !285)
!285 = !{!286, !287, !288}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !284, file: !279, line: 205, baseType: !121, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !284, file: !279, line: 206, baseType: !283, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !284, file: !279, line: 207, baseType: !289, offset: 128)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: -1)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !278, file: !279, line: 214, baseType: !121, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !278, file: !279, line: 215, baseType: !121, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !278, file: !279, line: 216, baseType: !121, size: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !278, file: !279, line: 221, baseType: !296, size: 64, offset: 320)
!296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !278, file: !279, line: 217, size: 64, elements: !297)
!297 = !{!298, !299}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tempint", scope: !296, file: !279, line: 219, baseType: !163, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tempptr", scope: !296, file: !279, line: 220, baseType: !161, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !278, file: !279, line: 222, baseType: !163, size: 64, offset: 384)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !278, file: !279, line: 229, baseType: !302, size: 64, offset: 448)
!302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !278, file: !279, line: 225, size: 64, elements: !303)
!303 = !{!304, !308}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !302, file: !279, line: 227, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!161, !163}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !302, file: !279, line: 228, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!161, !161, !163}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !278, file: !279, line: 234, baseType: !313, size: 64, offset: 512)
!313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !278, file: !279, line: 230, size: 64, elements: !314)
!314 = !{!315, !319}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !313, file: !279, line: 232, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !161}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !313, file: !279, line: 233, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !161, !161}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !278, file: !279, line: 236, baseType: !161, size: 64, offset: 576)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !278, file: !279, line: 237, baseType: !79, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !278, file: !279, line: 238, baseType: !79, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !278, file: !279, line: 242, baseType: !79, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(name: "print_ls_colors", scope: !76, file: !2, line: 73, type: !112, isLocal: true, isDefinition: true)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !331, file: !88, line: 575, type: !89, isLocal: true, isDefinition: true)
!331 = distinct !DISubprogram(name: "oputs_", scope: !88, file: !88, line: 573, type: !332, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !334)
!332 = !DISubroutineType(cc: DW_CC_nocall, types: !333)
!333 = !{null, !171, !171}
!334 = !{!335, !336, !337, !340, !341, !342, !343, !347, !348, !349, !350, !352, !353, !354, !355, !357, !358}
!335 = !DILocalVariable(name: "program", arg: 1, scope: !331, file: !88, line: 573, type: !171)
!336 = !DILocalVariable(name: "option", arg: 2, scope: !331, file: !88, line: 573, type: !171)
!337 = !DILocalVariable(name: "term", scope: !338, file: !88, line: 585, type: !171)
!338 = distinct !DILexicalBlock(scope: !339, file: !88, line: 582, column: 5)
!339 = distinct !DILexicalBlock(scope: !331, file: !88, line: 581, column: 7)
!340 = !DILocalVariable(name: "double_space", scope: !331, file: !88, line: 594, type: !112)
!341 = !DILocalVariable(name: "first_word", scope: !331, file: !88, line: 595, type: !171)
!342 = !DILocalVariable(name: "option_text", scope: !331, file: !88, line: 596, type: !171)
!343 = !DILocalVariable(name: "s", scope: !344, file: !88, line: 608, type: !171)
!344 = distinct !DILexicalBlock(scope: !345, file: !88, line: 605, column: 5)
!345 = distinct !DILexicalBlock(scope: !346, file: !88, line: 604, column: 12)
!346 = distinct !DILexicalBlock(scope: !331, file: !88, line: 597, column: 7)
!347 = !DILocalVariable(name: "spaces", scope: !344, file: !88, line: 609, type: !163)
!348 = !DILocalVariable(name: "anchor_len", scope: !331, file: !88, line: 620, type: !163)
!349 = !DILocalVariable(name: "desc_text", scope: !331, file: !88, line: 625, type: !171)
!350 = !DILocalVariable(name: "__ptr", scope: !351, file: !88, line: 644, type: !171)
!351 = distinct !DILexicalBlock(scope: !331, file: !88, line: 644, column: 3)
!352 = !DILocalVariable(name: "__stream", scope: !351, file: !88, line: 644, type: !113)
!353 = !DILocalVariable(name: "__cnt", scope: !351, file: !88, line: 644, type: !163)
!354 = !DILocalVariable(name: "url_program", scope: !331, file: !88, line: 648, type: !171)
!355 = !DILocalVariable(name: "__ptr", scope: !356, file: !88, line: 686, type: !171)
!356 = distinct !DILexicalBlock(scope: !331, file: !88, line: 686, column: 3)
!357 = !DILocalVariable(name: "__stream", scope: !356, file: !88, line: 686, type: !113)
!358 = !DILocalVariable(name: "__cnt", scope: !356, file: !88, line: 686, type: !163)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !88, line: 585, type: !361, isLocal: true, isDefinition: true)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 5)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !88, line: 586, type: !361, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !88, line: 595, type: !71, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !88, line: 620, type: !370, isLocal: true, isDefinition: true)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 6)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !88, line: 648, type: !375, isLocal: true, isDefinition: true)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 2)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !88, line: 648, type: !361, isLocal: true, isDefinition: true)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !88, line: 649, type: !71, isLocal: true, isDefinition: true)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !88, line: 649, type: !273, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !88, line: 650, type: !361, isLocal: true, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !88, line: 651, type: !370, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !88, line: 651, type: !370, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !88, line: 652, type: !392, isLocal: true, isDefinition: true)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 7)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !88, line: 653, type: !397, isLocal: true, isDefinition: true)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 8)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !88, line: 654, type: !19, isLocal: true, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !88, line: 655, type: !19, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !88, line: 656, type: !19, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !88, line: 657, type: !19, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !88, line: 663, type: !392, isLocal: true, isDefinition: true)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !88, line: 664, type: !19, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !88, line: 669, type: !244, isLocal: true, isDefinition: true)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !88, line: 669, type: !416, isLocal: true, isDefinition: true)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !417)
!417 = !{!418}
!418 = !DISubrange(count: 40)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !88, line: 676, type: !232, isLocal: true, isDefinition: true)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(scope: null, file: !88, line: 676, type: !423, isLocal: true, isDefinition: true)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 61)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !88, line: 679, type: !273, isLocal: true, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !88, line: 683, type: !361, isLocal: true, isDefinition: true)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(scope: null, file: !88, line: 688, type: !361, isLocal: true, isDefinition: true)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !88, line: 691, type: !397, isLocal: true, isDefinition: true)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !88, line: 839, type: !436, isLocal: true, isDefinition: true)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !437)
!437 = !{!438}
!438 = !DISubrange(count: 16)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !88, line: 840, type: !441, isLocal: true, isDefinition: true)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 22)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !88, line: 841, type: !232, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !88, line: 862, type: !71, isLocal: true, isDefinition: true)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !88, line: 868, type: !450, isLocal: true, isDefinition: true)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !451)
!451 = !{!452}
!452 = !DISubrange(count: 71)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !88, line: 875, type: !455, isLocal: true, isDefinition: true)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !456)
!456 = !{!457}
!457 = !DISubrange(count: 27)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !88, line: 877, type: !460, isLocal: true, isDefinition: true)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !461)
!461 = !{!462}
!462 = !DISubrange(count: 51)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !88, line: 877, type: !258, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !467, isLocal: true, isDefinition: true)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 13)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !273, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !71, isLocal: true, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !397, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !232, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !436, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !361, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !397, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(name: "G_line", scope: !76, file: !486, line: 1, type: !487, isLocal: true, isDefinition: true)
!486 = !DIFile(filename: "src/dircolors.h", directory: "/src", checksumkind: CSK_MD5, checksum: "78932583f5d466470594a9a0cc5465b7")
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 44928, elements: !488)
!488 = !{!489}
!489 = !DISubrange(count: 5616)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(scope: null, file: !2, line: 146, type: !370, isLocal: true, isDefinition: true)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(scope: null, file: !2, line: 152, type: !361, isLocal: true, isDefinition: true)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !2, line: 295, type: !361, isLocal: true, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(scope: null, file: !2, line: 298, type: !19, isLocal: true, isDefinition: true)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(scope: null, file: !2, line: 315, type: !232, isLocal: true, isDefinition: true)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !2, line: 338, type: !502, isLocal: true, isDefinition: true)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !503)
!503 = !{!504}
!504 = !DISubrange(count: 44)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(scope: null, file: !2, line: 367, type: !397, isLocal: true, isDefinition: true)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !2, line: 368, type: !370, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !2, line: 369, type: !511, isLocal: true, isDefinition: true)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 9)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !2, line: 393, type: !516, isLocal: true, isDefinition: true)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !517)
!517 = !{!518}
!518 = !DISubrange(count: 32)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !2, line: 393, type: !521, isLocal: true, isDefinition: true)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !522)
!522 = !{!523}
!523 = !DISubrange(count: 11)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !2, line: 256, type: !273, isLocal: true, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !392, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !361, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !361, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !370, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !71, isLocal: true, isDefinition: true)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !71, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !361, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !397, isLocal: true, isDefinition: true)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !392, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !397, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !361, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !361, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !361, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !71, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !370, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !71, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !361, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !361, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !361, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !361, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !511, isLocal: true, isDefinition: true)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !370, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !19, isLocal: true, isDefinition: true)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !71, isLocal: true, isDefinition: true)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !397, isLocal: true, isDefinition: true)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !361, isLocal: true, isDefinition: true)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !392, isLocal: true, isDefinition: true)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !361, isLocal: true, isDefinition: true)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !392, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !392, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !232, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !71, isLocal: true, isDefinition: true)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !441, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !71, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !521, isLocal: true, isDefinition: true)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !227, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !511, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(name: "slack_codes", scope: !76, file: !2, line: 53, type: !602, isLocal: true, isDefinition: true)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 2432, elements: !604)
!603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!604 = !{!605}
!605 = !DISubrange(count: 38)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !273, isLocal: true, isDefinition: true)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !273, isLocal: true, isDefinition: true)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !273, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !273, isLocal: true, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !273, isLocal: true, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !273, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !273, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !273, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !273, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !273, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !273, isLocal: true, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !273, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !273, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !273, isLocal: true, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !273, isLocal: true, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !273, isLocal: true, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !273, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !273, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !273, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !273, isLocal: true, isDefinition: true)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !273, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !273, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !273, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !273, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(name: "ls_codes", scope: !76, file: !2, line: 63, type: !602, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !2, line: 411, type: !375, isLocal: true, isDefinition: true)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !2, line: 411, type: !375, isLocal: true, isDefinition: true)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !2, line: 413, type: !273, isLocal: true, isDefinition: true)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, size: 2304, elements: !512)
!663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !665, line: 50, size: 256, elements: !666)
!665 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!666 = !{!667, !668, !669, !671}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !664, file: !665, line: 52, baseType: !171, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !664, file: !665, line: 55, baseType: !89, size: 32, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !664, file: !665, line: 56, baseType: !670, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !664, file: !665, line: 57, baseType: !89, size: 32, offset: 192)
!672 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !675, line: 3, type: !232, isLocal: true, isDefinition: true)
!675 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(name: "Version", scope: !678, file: !675, line: 3, type: !171, isLocal: false, isDefinition: true)
!678 = distinct !DICompileUnit(language: DW_LANG_C11, file: !675, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !679, splitDebugInlining: false, nameTableKind: None)
!679 = !{!673, !676}
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(name: "file_name", scope: !682, file: !683, line: 45, type: !171, isLocal: true, isDefinition: true)
!682 = distinct !DICompileUnit(language: DW_LANG_C11, file: !683, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !684, splitDebugInlining: false, nameTableKind: None)
!683 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!684 = !{!685, !687, !689, !691, !680, !693}
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !683, line: 121, type: !392, isLocal: true, isDefinition: true)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !683, line: 121, type: !258, isLocal: true, isDefinition: true)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !683, line: 123, type: !392, isLocal: true, isDefinition: true)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !683, line: 126, type: !273, isLocal: true, isDefinition: true)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !682, file: !683, line: 55, type: !112, isLocal: true, isDefinition: true)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !697, file: !698, line: 66, type: !745, isLocal: false, isDefinition: true)
!697 = distinct !DICompileUnit(language: DW_LANG_C11, file: !698, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !699, globals: !700, splitDebugInlining: false, nameTableKind: None)
!698 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!699 = !{!161, !223}
!700 = !{!701, !703, !727, !729, !731, !733, !695, !735, !737, !739, !741, !743}
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !698, line: 272, type: !361, isLocal: true, isDefinition: true)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(name: "old_file_name", scope: !705, file: !698, line: 304, type: !171, isLocal: true, isDefinition: true)
!705 = distinct !DISubprogram(name: "verror_at_line", scope: !698, file: !698, line: 298, type: !706, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !720)
!706 = !DISubroutineType(types: !707)
!707 = !{null, !89, !89, !171, !79, !171, !708}
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !709, line: 52, baseType: !710)
!709 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !711, line: 12, baseType: !712)
!711 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !698, baseType: !713)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !714)
!714 = !{!715, !716, !717, !718, !719}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !713, file: !698, baseType: !161, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !713, file: !698, baseType: !161, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !713, file: !698, baseType: !161, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !713, file: !698, baseType: !89, size: 32, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !713, file: !698, baseType: !89, size: 32, offset: 224)
!720 = !{!721, !722, !723, !724, !725, !726}
!721 = !DILocalVariable(name: "status", arg: 1, scope: !705, file: !698, line: 298, type: !89)
!722 = !DILocalVariable(name: "errnum", arg: 2, scope: !705, file: !698, line: 298, type: !89)
!723 = !DILocalVariable(name: "file_name", arg: 3, scope: !705, file: !698, line: 298, type: !171)
!724 = !DILocalVariable(name: "line_number", arg: 4, scope: !705, file: !698, line: 298, type: !79)
!725 = !DILocalVariable(name: "message", arg: 5, scope: !705, file: !698, line: 298, type: !171)
!726 = !DILocalVariable(name: "args", arg: 6, scope: !705, file: !698, line: 298, type: !708)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(name: "old_line_number", scope: !705, file: !698, line: 305, type: !79, isLocal: true, isDefinition: true)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !698, line: 338, type: !71, isLocal: true, isDefinition: true)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !698, line: 346, type: !397, isLocal: true, isDefinition: true)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !698, line: 346, type: !375, isLocal: true, isDefinition: true)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(name: "error_message_count", scope: !697, file: !698, line: 69, type: !79, isLocal: false, isDefinition: true)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !697, file: !698, line: 295, type: !89, isLocal: false, isDefinition: true)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !698, line: 208, type: !392, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !698, line: 208, type: !263, isLocal: true, isDefinition: true)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !698, line: 214, type: !361, isLocal: true, isDefinition: true)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{null}
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !750, line: 40, type: !19, isLocal: true, isDefinition: true)
!750 = !DIFile(filename: "lib/freopen-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "380f3eea209580e07073525fbfd0dac5")
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(name: "obstack_alloc_failed_handler", scope: !753, file: !754, line: 53, type: !745, isLocal: false, isDefinition: true)
!753 = distinct !DICompileUnit(language: DW_LANG_C11, file: !754, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-obstack.o -MD -MP -MF lib/.deps/libcoreutils_a-obstack.Tpo -c lib/obstack.c -o lib/.libcoreutils_a-obstack.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !755, globals: !756, splitDebugInlining: false, nameTableKind: None)
!754 = !DIFile(filename: "lib/obstack.c", directory: "/src", checksumkind: CSK_MD5, checksum: "47f5bbc27e7c2d5a5cc3aab9403d8d27")
!755 = !{!161, !121, !165}
!756 = !{!751, !757, !759, !761}
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(scope: null, file: !754, line: 353, type: !71, isLocal: true, isDefinition: true)
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !754, line: 353, type: !392, isLocal: true, isDefinition: true)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !754, line: 353, type: !244, isLocal: true, isDefinition: true)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(name: "program_name", scope: !765, file: !766, line: 31, type: !171, isLocal: false, isDefinition: true)
!765 = distinct !DICompileUnit(language: DW_LANG_C11, file: !766, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !767, globals: !768, splitDebugInlining: false, nameTableKind: None)
!766 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!767 = !{!161, !121}
!768 = !{!763, !769, !771}
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(scope: null, file: !766, line: 46, type: !397, isLocal: true, isDefinition: true)
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(scope: null, file: !766, line: 49, type: !71, isLocal: true, isDefinition: true)
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(name: "utf07FF", scope: !775, file: !776, line: 46, type: !803, isLocal: true, isDefinition: true)
!775 = distinct !DISubprogram(name: "proper_name_lite", scope: !776, file: !776, line: 38, type: !777, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !781)
!776 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!777 = !DISubroutineType(types: !778)
!778 = !{!171, !171, !171}
!779 = distinct !DICompileUnit(language: DW_LANG_C11, file: !776, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !780, splitDebugInlining: false, nameTableKind: None)
!780 = !{!773}
!781 = !{!782, !783, !784, !785, !790}
!782 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !775, file: !776, line: 38, type: !171)
!783 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !775, file: !776, line: 38, type: !171)
!784 = !DILocalVariable(name: "translation", scope: !775, file: !776, line: 40, type: !171)
!785 = !DILocalVariable(name: "w", scope: !775, file: !776, line: 47, type: !786)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !787, line: 37, baseType: !788)
!787 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !141, line: 57, baseType: !789)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !141, line: 42, baseType: !79)
!790 = !DILocalVariable(name: "mbs", scope: !775, file: !776, line: 48, type: !791)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !792, line: 6, baseType: !793)
!792 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !794, line: 21, baseType: !795)
!794 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !794, line: 13, size: 64, elements: !796)
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !795, file: !794, line: 15, baseType: !89, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !795, file: !794, line: 20, baseType: !799, size: 32, offset: 32)
!799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !795, file: !794, line: 16, size: 32, elements: !800)
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !799, file: !794, line: 18, baseType: !79, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !799, file: !794, line: 19, baseType: !71, size: 32)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 16, elements: !376)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(scope: null, file: !806, line: 78, type: !397, isLocal: true, isDefinition: true)
!806 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression())
!808 = distinct !DIGlobalVariable(scope: null, file: !806, line: 79, type: !370, isLocal: true, isDefinition: true)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(scope: null, file: !806, line: 80, type: !467, isLocal: true, isDefinition: true)
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(scope: null, file: !806, line: 81, type: !467, isLocal: true, isDefinition: true)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(scope: null, file: !806, line: 82, type: !168, isLocal: true, isDefinition: true)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !806, line: 83, type: !375, isLocal: true, isDefinition: true)
!817 = !DIGlobalVariableExpression(var: !818, expr: !DIExpression())
!818 = distinct !DIGlobalVariable(scope: null, file: !806, line: 84, type: !397, isLocal: true, isDefinition: true)
!819 = !DIGlobalVariableExpression(var: !820, expr: !DIExpression())
!820 = distinct !DIGlobalVariable(scope: null, file: !806, line: 85, type: !392, isLocal: true, isDefinition: true)
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(scope: null, file: !806, line: 86, type: !392, isLocal: true, isDefinition: true)
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(scope: null, file: !806, line: 87, type: !397, isLocal: true, isDefinition: true)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !827, file: !806, line: 76, type: !901, isLocal: false, isDefinition: true)
!827 = distinct !DICompileUnit(language: DW_LANG_C11, file: !806, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !828, retainedTypes: !836, globals: !837, splitDebugInlining: false, nameTableKind: None)
!828 = !{!829, !831, !93}
!829 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !830, line: 42, baseType: !79, size: 32, elements: !210)
!830 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!831 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !830, line: 254, baseType: !79, size: 32, elements: !832)
!832 = !{!833, !834, !835}
!833 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!834 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!835 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!836 = !{!161, !89, !144, !163}
!837 = !{!804, !807, !809, !811, !813, !815, !817, !819, !821, !823, !825, !838, !842, !852, !854, !859, !861, !863, !865, !867, !890, !897, !899}
!838 = !DIGlobalVariableExpression(var: !839, expr: !DIExpression())
!839 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !827, file: !806, line: 92, type: !840, isLocal: false, isDefinition: true)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !841, size: 320, elements: !20)
!841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !829)
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !827, file: !806, line: 1040, type: !844, isLocal: false, isDefinition: true)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !806, line: 56, size: 448, elements: !845)
!845 = !{!846, !847, !848, !850, !851}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !844, file: !806, line: 59, baseType: !829, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !844, file: !806, line: 62, baseType: !89, size: 32, offset: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !844, file: !806, line: 66, baseType: !849, size: 256, offset: 64)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 256, elements: !398)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !844, file: !806, line: 69, baseType: !171, size: 64, offset: 320)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !844, file: !806, line: 72, baseType: !171, size: 64, offset: 384)
!852 = !DIGlobalVariableExpression(var: !853, expr: !DIExpression())
!853 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !827, file: !806, line: 107, type: !844, isLocal: true, isDefinition: true)
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(name: "slot0", scope: !827, file: !806, line: 831, type: !856, isLocal: true, isDefinition: true)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !857)
!857 = !{!858}
!858 = !DISubrange(count: 256)
!859 = !DIGlobalVariableExpression(var: !860, expr: !DIExpression())
!860 = distinct !DIGlobalVariable(scope: null, file: !806, line: 321, type: !375, isLocal: true, isDefinition: true)
!861 = !DIGlobalVariableExpression(var: !862, expr: !DIExpression())
!862 = distinct !DIGlobalVariable(scope: null, file: !806, line: 357, type: !375, isLocal: true, isDefinition: true)
!863 = !DIGlobalVariableExpression(var: !864, expr: !DIExpression())
!864 = distinct !DIGlobalVariable(scope: null, file: !806, line: 358, type: !375, isLocal: true, isDefinition: true)
!865 = !DIGlobalVariableExpression(var: !866, expr: !DIExpression())
!866 = distinct !DIGlobalVariable(scope: null, file: !806, line: 199, type: !392, isLocal: true, isDefinition: true)
!867 = !DIGlobalVariableExpression(var: !868, expr: !DIExpression())
!868 = distinct !DIGlobalVariable(name: "quote", scope: !869, file: !806, line: 228, type: !888, isLocal: true, isDefinition: true)
!869 = distinct !DISubprogram(name: "gettext_quote", scope: !806, file: !806, line: 197, type: !870, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !872)
!870 = !DISubroutineType(types: !871)
!871 = !{!171, !171, !829}
!872 = !{!873, !874, !875, !876, !877}
!873 = !DILocalVariable(name: "msgid", arg: 1, scope: !869, file: !806, line: 197, type: !171)
!874 = !DILocalVariable(name: "s", arg: 2, scope: !869, file: !806, line: 197, type: !829)
!875 = !DILocalVariable(name: "translation", scope: !869, file: !806, line: 199, type: !171)
!876 = !DILocalVariable(name: "w", scope: !869, file: !806, line: 229, type: !786)
!877 = !DILocalVariable(name: "mbs", scope: !869, file: !806, line: 230, type: !878)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !792, line: 6, baseType: !879)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !794, line: 21, baseType: !880)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !794, line: 13, size: 64, elements: !881)
!881 = !{!882, !883}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !880, file: !794, line: 15, baseType: !89, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !880, file: !794, line: 20, baseType: !884, size: 32, offset: 32)
!884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !880, file: !794, line: 16, size: 32, elements: !885)
!885 = !{!886, !887}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !884, file: !794, line: 18, baseType: !79, size: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !884, file: !794, line: 19, baseType: !71, size: 32)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 64, elements: !889)
!889 = !{!377, !73}
!890 = !DIGlobalVariableExpression(var: !891, expr: !DIExpression())
!891 = distinct !DIGlobalVariable(name: "slotvec", scope: !827, file: !806, line: 834, type: !892, isLocal: true, isDefinition: true)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !806, line: 823, size: 128, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !893, file: !806, line: 825, baseType: !163, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !893, file: !806, line: 826, baseType: !121, size: 64, offset: 64)
!897 = !DIGlobalVariableExpression(var: !898, expr: !DIExpression())
!898 = distinct !DIGlobalVariable(name: "nslots", scope: !827, file: !806, line: 832, type: !89, isLocal: true, isDefinition: true)
!899 = !DIGlobalVariableExpression(var: !900, expr: !DIExpression())
!900 = distinct !DIGlobalVariable(name: "slotvec0", scope: !827, file: !806, line: 833, type: !893, isLocal: true, isDefinition: true)
!901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 704, elements: !522)
!902 = !DIGlobalVariableExpression(var: !903, expr: !DIExpression())
!903 = distinct !DIGlobalVariable(scope: null, file: !904, line: 67, type: !258, isLocal: true, isDefinition: true)
!904 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!905 = !DIGlobalVariableExpression(var: !906, expr: !DIExpression())
!906 = distinct !DIGlobalVariable(scope: null, file: !904, line: 69, type: !392, isLocal: true, isDefinition: true)
!907 = !DIGlobalVariableExpression(var: !908, expr: !DIExpression())
!908 = distinct !DIGlobalVariable(scope: null, file: !904, line: 83, type: !392, isLocal: true, isDefinition: true)
!909 = !DIGlobalVariableExpression(var: !910, expr: !DIExpression())
!910 = distinct !DIGlobalVariable(scope: null, file: !904, line: 83, type: !71, isLocal: true, isDefinition: true)
!911 = !DIGlobalVariableExpression(var: !912, expr: !DIExpression())
!912 = distinct !DIGlobalVariable(scope: null, file: !904, line: 85, type: !375, isLocal: true, isDefinition: true)
!913 = !DIGlobalVariableExpression(var: !914, expr: !DIExpression())
!914 = distinct !DIGlobalVariable(scope: null, file: !904, line: 88, type: !915, isLocal: true, isDefinition: true)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !916)
!916 = !{!917}
!917 = !DISubrange(count: 171)
!918 = !DIGlobalVariableExpression(var: !919, expr: !DIExpression())
!919 = distinct !DIGlobalVariable(scope: null, file: !904, line: 88, type: !920, isLocal: true, isDefinition: true)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !921)
!921 = !{!922}
!922 = !DISubrange(count: 34)
!923 = !DIGlobalVariableExpression(var: !924, expr: !DIExpression())
!924 = distinct !DIGlobalVariable(scope: null, file: !904, line: 105, type: !436, isLocal: true, isDefinition: true)
!925 = !DIGlobalVariableExpression(var: !926, expr: !DIExpression())
!926 = distinct !DIGlobalVariable(scope: null, file: !904, line: 109, type: !927, isLocal: true, isDefinition: true)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !928)
!928 = !{!929}
!929 = !DISubrange(count: 23)
!930 = !DIGlobalVariableExpression(var: !931, expr: !DIExpression())
!931 = distinct !DIGlobalVariable(scope: null, file: !904, line: 113, type: !932, isLocal: true, isDefinition: true)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !933)
!933 = !{!934}
!934 = !DISubrange(count: 28)
!935 = !DIGlobalVariableExpression(var: !936, expr: !DIExpression())
!936 = distinct !DIGlobalVariable(scope: null, file: !904, line: 120, type: !516, isLocal: true, isDefinition: true)
!937 = !DIGlobalVariableExpression(var: !938, expr: !DIExpression())
!938 = distinct !DIGlobalVariable(scope: null, file: !904, line: 127, type: !939, isLocal: true, isDefinition: true)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !940)
!940 = !{!941}
!941 = !DISubrange(count: 36)
!942 = !DIGlobalVariableExpression(var: !943, expr: !DIExpression())
!943 = distinct !DIGlobalVariable(scope: null, file: !904, line: 134, type: !416, isLocal: true, isDefinition: true)
!944 = !DIGlobalVariableExpression(var: !945, expr: !DIExpression())
!945 = distinct !DIGlobalVariable(scope: null, file: !904, line: 142, type: !502, isLocal: true, isDefinition: true)
!946 = !DIGlobalVariableExpression(var: !947, expr: !DIExpression())
!947 = distinct !DIGlobalVariable(scope: null, file: !904, line: 150, type: !948, isLocal: true, isDefinition: true)
!948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !949)
!949 = !{!950}
!950 = !DISubrange(count: 48)
!951 = !DIGlobalVariableExpression(var: !952, expr: !DIExpression())
!952 = distinct !DIGlobalVariable(scope: null, file: !904, line: 159, type: !953, isLocal: true, isDefinition: true)
!953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !954)
!954 = !{!955}
!955 = !DISubrange(count: 52)
!956 = !DIGlobalVariableExpression(var: !957, expr: !DIExpression())
!957 = distinct !DIGlobalVariable(scope: null, file: !904, line: 170, type: !251, isLocal: true, isDefinition: true)
!958 = !DIGlobalVariableExpression(var: !959, expr: !DIExpression())
!959 = distinct !DIGlobalVariable(scope: null, file: !904, line: 248, type: !168, isLocal: true, isDefinition: true)
!960 = !DIGlobalVariableExpression(var: !961, expr: !DIExpression())
!961 = distinct !DIGlobalVariable(scope: null, file: !904, line: 248, type: !441, isLocal: true, isDefinition: true)
!962 = !DIGlobalVariableExpression(var: !963, expr: !DIExpression())
!963 = distinct !DIGlobalVariable(scope: null, file: !904, line: 254, type: !168, isLocal: true, isDefinition: true)
!964 = !DIGlobalVariableExpression(var: !965, expr: !DIExpression())
!965 = distinct !DIGlobalVariable(scope: null, file: !904, line: 254, type: !227, isLocal: true, isDefinition: true)
!966 = !DIGlobalVariableExpression(var: !967, expr: !DIExpression())
!967 = distinct !DIGlobalVariable(scope: null, file: !904, line: 254, type: !416, isLocal: true, isDefinition: true)
!968 = !DIGlobalVariableExpression(var: !969, expr: !DIExpression())
!969 = distinct !DIGlobalVariable(scope: null, file: !904, line: 259, type: !3, isLocal: true, isDefinition: true)
!970 = !DIGlobalVariableExpression(var: !971, expr: !DIExpression())
!971 = distinct !DIGlobalVariable(scope: null, file: !904, line: 259, type: !972, isLocal: true, isDefinition: true)
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !973)
!973 = !{!974}
!974 = !DISubrange(count: 29)
!975 = !DIGlobalVariableExpression(var: !976, expr: !DIExpression())
!976 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !977, file: !978, line: 26, type: !980, isLocal: false, isDefinition: true)
!977 = distinct !DICompileUnit(language: DW_LANG_C11, file: !978, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !979, splitDebugInlining: false, nameTableKind: None)
!978 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!979 = !{!975}
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 376, elements: !981)
!981 = !{!982}
!982 = !DISubrange(count: 47)
!983 = !DIGlobalVariableExpression(var: !984, expr: !DIExpression())
!984 = distinct !DIGlobalVariable(name: "exit_failure", scope: !985, file: !986, line: 24, type: !988, isLocal: false, isDefinition: true)
!985 = distinct !DICompileUnit(language: DW_LANG_C11, file: !986, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !987, splitDebugInlining: false, nameTableKind: None)
!986 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!987 = !{!983}
!988 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !89)
!989 = !DIGlobalVariableExpression(var: !990, expr: !DIExpression())
!990 = distinct !DIGlobalVariable(scope: null, file: !991, line: 34, type: !273, isLocal: true, isDefinition: true)
!991 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!992 = !DIGlobalVariableExpression(var: !993, expr: !DIExpression())
!993 = distinct !DIGlobalVariable(scope: null, file: !991, line: 34, type: !392, isLocal: true, isDefinition: true)
!994 = !DIGlobalVariableExpression(var: !995, expr: !DIExpression())
!995 = distinct !DIGlobalVariable(scope: null, file: !991, line: 34, type: !244, isLocal: true, isDefinition: true)
!996 = !DIGlobalVariableExpression(var: !997, expr: !DIExpression())
!997 = distinct !DIGlobalVariable(scope: null, file: !998, line: 108, type: !59, isLocal: true, isDefinition: true)
!998 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!999 = !DIGlobalVariableExpression(var: !1000, expr: !DIExpression())
!1000 = distinct !DIGlobalVariable(name: "internal_state", scope: !1001, file: !998, line: 97, type: !1004, isLocal: true, isDefinition: true)
!1001 = distinct !DICompileUnit(language: DW_LANG_C11, file: !998, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1002, globals: !1003, splitDebugInlining: false, nameTableKind: None)
!1002 = !{!161, !163, !223}
!1003 = !{!996, !999}
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !792, line: 6, baseType: !1005)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !794, line: 21, baseType: !1006)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !794, line: 13, size: 64, elements: !1007)
!1007 = !{!1008, !1009}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1006, file: !794, line: 15, baseType: !89, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1006, file: !794, line: 20, baseType: !1010, size: 32, offset: 32)
!1010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1006, file: !794, line: 16, size: 32, elements: !1011)
!1011 = !{!1012, !1013}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1010, file: !794, line: 18, baseType: !79, size: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1010, file: !794, line: 19, baseType: !71, size: 32)
!1014 = !DIGlobalVariableExpression(var: !1015, expr: !DIExpression())
!1015 = distinct !DIGlobalVariable(scope: null, file: !1016, line: 35, type: !375, isLocal: true, isDefinition: true)
!1016 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!1017 = !DIGlobalVariableExpression(var: !1018, expr: !DIExpression())
!1018 = distinct !DIGlobalVariable(scope: null, file: !1016, line: 35, type: !370, isLocal: true, isDefinition: true)
!1019 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1020, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-basename-lgpl.o -MD -MP -MF lib/.deps/libcoreutils_a-basename-lgpl.Tpo -c lib/basename-lgpl.c -o lib/.libcoreutils_a-basename-lgpl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1021, splitDebugInlining: false, nameTableKind: None)
!1020 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!1021 = !{!121}
!1022 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1023, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-c-strcasecmp.o -MD -MP -MF lib/.deps/libcoreutils_a-c-strcasecmp.Tpo -c lib/c-strcasecmp.c -o lib/.libcoreutils_a-c-strcasecmp.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1024, splitDebugInlining: false, nameTableKind: None)
!1023 = !DIFile(filename: "lib/c-strcasecmp.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7d8203371740f321f2a78256f94ab3b7")
!1024 = !{!1025}
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!1027 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1028, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1028 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!1029 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1030, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1031, splitDebugInlining: false, nameTableKind: None)
!1030 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!1031 = !{!161}
!1032 = distinct !DICompileUnit(language: DW_LANG_C11, file: !750, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-freopen-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-freopen-safer.Tpo -c lib/freopen-safer.c -o lib/.libcoreutils_a-freopen-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !1033, splitDebugInlining: false, nameTableKind: None)
!1033 = !{!748}
!1034 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1035, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1031, splitDebugInlining: false, nameTableKind: None)
!1035 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!1036 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1037, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1037 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!1038 = distinct !DICompileUnit(language: DW_LANG_C11, file: !904, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !1039, retainedTypes: !1031, globals: !1043, splitDebugInlining: false, nameTableKind: None)
!1039 = !{!1040}
!1040 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !904, line: 40, baseType: !79, size: 32, elements: !1041)
!1041 = !{!1042}
!1042 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!1043 = !{!902, !905, !907, !909, !911, !913, !918, !923, !925, !930, !935, !937, !942, !944, !946, !951, !956, !958, !960, !962, !964, !966, !968, !970}
!1044 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1045, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !1046, retainedTypes: !1076, splitDebugInlining: false, nameTableKind: None)
!1045 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!1046 = !{!1047, !1059}
!1047 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1048, file: !1045, line: 188, baseType: !79, size: 32, elements: !1057)
!1048 = distinct !DISubprogram(name: "x2nrealloc", scope: !1045, file: !1045, line: 176, type: !1049, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !1052)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!161, !161, !1051, !163}
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!1052 = !{!1053, !1054, !1055, !1056}
!1053 = !DILocalVariable(name: "p", arg: 1, scope: !1048, file: !1045, line: 176, type: !161)
!1054 = !DILocalVariable(name: "pn", arg: 2, scope: !1048, file: !1045, line: 176, type: !1051)
!1055 = !DILocalVariable(name: "s", arg: 3, scope: !1048, file: !1045, line: 176, type: !163)
!1056 = !DILocalVariable(name: "n", scope: !1048, file: !1045, line: 178, type: !163)
!1057 = !{!1058}
!1058 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!1059 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1060, file: !1045, line: 228, baseType: !79, size: 32, elements: !1057)
!1060 = distinct !DISubprogram(name: "xpalloc", scope: !1045, file: !1045, line: 223, type: !1061, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !1066)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!161, !161, !1063, !1064, !179, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !1065, line: 130, baseType: !179)
!1065 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!1066 = !{!1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075}
!1067 = !DILocalVariable(name: "pa", arg: 1, scope: !1060, file: !1045, line: 223, type: !161)
!1068 = !DILocalVariable(name: "pn", arg: 2, scope: !1060, file: !1045, line: 223, type: !1063)
!1069 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !1060, file: !1045, line: 223, type: !1064)
!1070 = !DILocalVariable(name: "n_max", arg: 4, scope: !1060, file: !1045, line: 223, type: !179)
!1071 = !DILocalVariable(name: "s", arg: 5, scope: !1060, file: !1045, line: 223, type: !1064)
!1072 = !DILocalVariable(name: "n0", scope: !1060, file: !1045, line: 230, type: !1064)
!1073 = !DILocalVariable(name: "n", scope: !1060, file: !1045, line: 237, type: !1064)
!1074 = !DILocalVariable(name: "nbytes", scope: !1060, file: !1045, line: 248, type: !1064)
!1075 = !DILocalVariable(name: "adjusted_nbytes", scope: !1060, file: !1045, line: 252, type: !1064)
!1076 = !{!121, !161}
!1077 = distinct !DICompileUnit(language: DW_LANG_C11, file: !991, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !1078, splitDebugInlining: false, nameTableKind: None)
!1078 = !{!989, !992, !994}
!1079 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1080, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1080 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!1081 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1082, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1031, splitDebugInlining: false, nameTableKind: None)
!1082 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1083 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1016, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !1084, splitDebugInlining: false, nameTableKind: None)
!1084 = !{!1014, !1017}
!1085 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1086, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1086 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1087 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1088, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1031, splitDebugInlining: false, nameTableKind: None)
!1088 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1089 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1090 = !{i32 7, !"Dwarf Version", i32 5}
!1091 = !{i32 2, !"Debug Info Version", i32 3}
!1092 = !{i32 1, !"wchar_size", i32 4}
!1093 = !{i32 8, !"PIC Level", i32 2}
!1094 = !{i32 7, !"PIE Level", i32 2}
!1095 = !{i32 7, !"uwtable", i32 2}
!1096 = !{i32 7, !"frame-pointer", i32 1}
!1097 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!1098 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 96, type: !1099, scopeLine: 97, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1101)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{null, !89}
!1101 = !{!1102}
!1102 = !DILocalVariable(name: "status", arg: 1, scope: !1098, file: !2, line: 96, type: !89)
!1103 = !DILocation(line: 0, scope: !1098)
!1104 = !DILocation(line: 98, column: 14, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1098, file: !2, line: 98, column: 7)
!1106 = !DILocation(line: 98, column: 7, scope: !1098)
!1107 = !DILocation(line: 99, column: 5, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 99, column: 5)
!1109 = !{!1110, !1110, i64 0}
!1110 = !{!"any pointer", !1111, i64 0}
!1111 = !{!"omnipotent char", !1112, i64 0}
!1112 = !{!"Simple C/C++ TBAA"}
!1113 = !DILocation(line: 102, column: 7, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 101, column: 5)
!1115 = !DILocation(line: 103, column: 7, scope: !1114)
!1116 = !DILocation(line: 108, column: 7, scope: !1114)
!1117 = !DILocation(line: 112, column: 7, scope: !1114)
!1118 = !DILocation(line: 116, column: 7, scope: !1114)
!1119 = !DILocation(line: 120, column: 7, scope: !1114)
!1120 = !DILocation(line: 124, column: 7, scope: !1114)
!1121 = !DILocation(line: 125, column: 7, scope: !1114)
!1122 = !DILocation(line: 126, column: 7, scope: !1114)
!1123 = !DILocalVariable(name: "program", arg: 1, scope: !1124, file: !88, line: 836, type: !171)
!1124 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !88, file: !88, line: 836, type: !1125, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1127)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{null, !171}
!1127 = !{!1123, !1128, !1135, !1136, !1138, !1139}
!1128 = !DILocalVariable(name: "infomap", scope: !1124, file: !88, line: 838, type: !1129)
!1129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1130, size: 896, elements: !393)
!1130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1131)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1124, file: !88, line: 838, size: 128, elements: !1132)
!1132 = !{!1133, !1134}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1131, file: !88, line: 838, baseType: !171, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1131, file: !88, line: 838, baseType: !171, size: 64, offset: 64)
!1135 = !DILocalVariable(name: "node", scope: !1124, file: !88, line: 848, type: !171)
!1136 = !DILocalVariable(name: "map_prog", scope: !1124, file: !88, line: 849, type: !1137)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1138 = !DILocalVariable(name: "lc_messages", scope: !1124, file: !88, line: 861, type: !171)
!1139 = !DILocalVariable(name: "url_program", scope: !1124, file: !88, line: 874, type: !171)
!1140 = !DILocation(line: 0, scope: !1124, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 132, column: 7, scope: !1114)
!1142 = !{}
!1143 = !DILocation(line: 857, column: 3, scope: !1124, inlinedAt: !1141)
!1144 = !DILocation(line: 861, column: 29, scope: !1124, inlinedAt: !1141)
!1145 = !DILocation(line: 862, column: 7, scope: !1146, inlinedAt: !1141)
!1146 = distinct !DILexicalBlock(scope: !1124, file: !88, line: 862, column: 7)
!1147 = !DILocation(line: 862, column: 19, scope: !1146, inlinedAt: !1141)
!1148 = !DILocation(line: 862, column: 22, scope: !1146, inlinedAt: !1141)
!1149 = !DILocation(line: 862, column: 7, scope: !1124, inlinedAt: !1141)
!1150 = !DILocation(line: 868, column: 7, scope: !1151, inlinedAt: !1141)
!1151 = distinct !DILexicalBlock(scope: !1146, file: !88, line: 863, column: 5)
!1152 = !DILocation(line: 870, column: 5, scope: !1151, inlinedAt: !1141)
!1153 = !DILocation(line: 875, column: 3, scope: !1124, inlinedAt: !1141)
!1154 = !DILocation(line: 877, column: 3, scope: !1124, inlinedAt: !1141)
!1155 = !DILocation(line: 135, column: 3, scope: !1098)
!1156 = !DISubprogram(name: "dcgettext", scope: !1157, file: !1157, line: 51, type: !1158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1157 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!121, !171, !171, !89}
!1160 = !DISubprogram(name: "__fprintf_chk", scope: !1161, file: !1161, line: 93, type: !1162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1161 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!89, !1164, !89, !1165, null}
!1164 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !113)
!1165 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !171)
!1166 = !DISubprogram(name: "__printf_chk", scope: !1161, file: !1161, line: 95, type: !1167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!89, !89, !1165, null}
!1169 = !DISubprogram(name: "fputs_unlocked", scope: !709, file: !709, line: 691, type: !1170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!89, !1165, !1164}
!1172 = !DILocation(line: 0, scope: !331)
!1173 = !DILocation(line: 581, column: 7, scope: !339)
!1174 = !{!1175, !1175, i64 0}
!1175 = !{!"int", !1111, i64 0}
!1176 = !DILocation(line: 581, column: 19, scope: !339)
!1177 = !DILocation(line: 581, column: 7, scope: !331)
!1178 = !DILocation(line: 585, column: 26, scope: !338)
!1179 = !DILocation(line: 0, scope: !338)
!1180 = !DILocation(line: 586, column: 23, scope: !338)
!1181 = !DILocation(line: 586, column: 28, scope: !338)
!1182 = !DILocation(line: 586, column: 32, scope: !338)
!1183 = !{!1111, !1111, i64 0}
!1184 = !DILocation(line: 586, column: 38, scope: !338)
!1185 = !DILocalVariable(name: "__s1", arg: 1, scope: !1186, file: !1187, line: 1359, type: !171)
!1186 = distinct !DISubprogram(name: "streq", scope: !1187, file: !1187, line: 1359, type: !1188, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1190)
!1187 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!112, !171, !171}
!1190 = !{!1185, !1191}
!1191 = !DILocalVariable(name: "__s2", arg: 2, scope: !1186, file: !1187, line: 1359, type: !171)
!1192 = !DILocation(line: 0, scope: !1186, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 586, column: 41, scope: !338)
!1194 = !DILocation(line: 1361, column: 11, scope: !1186, inlinedAt: !1193)
!1195 = !DILocation(line: 1361, column: 10, scope: !1186, inlinedAt: !1193)
!1196 = !DILocation(line: 586, column: 19, scope: !338)
!1197 = !DILocation(line: 587, column: 5, scope: !338)
!1198 = !DILocation(line: 588, column: 7, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !331, file: !88, line: 588, column: 7)
!1200 = !DILocation(line: 588, column: 7, scope: !331)
!1201 = !DILocation(line: 590, column: 7, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1199, file: !88, line: 589, column: 5)
!1203 = !DILocation(line: 591, column: 7, scope: !1202)
!1204 = !DILocation(line: 595, column: 37, scope: !331)
!1205 = !DILocation(line: 595, column: 35, scope: !331)
!1206 = !DILocation(line: 596, column: 29, scope: !331)
!1207 = !DILocation(line: 597, column: 8, scope: !346)
!1208 = !DILocation(line: 597, column: 7, scope: !331)
!1209 = !DILocation(line: 604, column: 24, scope: !345)
!1210 = !DILocation(line: 604, column: 12, scope: !346)
!1211 = !DILocation(line: 0, scope: !344)
!1212 = !DILocation(line: 610, column: 16, scope: !344)
!1213 = !DILocation(line: 610, column: 7, scope: !344)
!1214 = !DILocation(line: 611, column: 21, scope: !344)
!1215 = !{!1216, !1216, i64 0}
!1216 = !{!"short", !1111, i64 0}
!1217 = !DILocation(line: 611, column: 19, scope: !344)
!1218 = !DILocation(line: 611, column: 16, scope: !344)
!1219 = !DILocation(line: 610, column: 30, scope: !344)
!1220 = distinct !{!1220, !1213, !1214, !1221}
!1221 = !{!"llvm.loop.mustprogress"}
!1222 = !DILocation(line: 612, column: 18, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !344, file: !88, line: 612, column: 11)
!1224 = !DILocation(line: 612, column: 11, scope: !344)
!1225 = !DILocation(line: 620, column: 23, scope: !331)
!1226 = !DILocation(line: 625, column: 39, scope: !331)
!1227 = !DILocation(line: 626, column: 3, scope: !331)
!1228 = !DILocation(line: 626, column: 10, scope: !331)
!1229 = !DILocation(line: 626, column: 21, scope: !331)
!1230 = !DILocation(line: 628, column: 44, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !88, line: 628, column: 11)
!1232 = distinct !DILexicalBlock(scope: !331, file: !88, line: 627, column: 5)
!1233 = !DILocation(line: 628, column: 32, scope: !1231)
!1234 = !DILocation(line: 628, column: 49, scope: !1231)
!1235 = !DILocation(line: 628, column: 11, scope: !1232)
!1236 = !DILocation(line: 630, column: 11, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1232, file: !88, line: 630, column: 11)
!1238 = !DILocation(line: 630, column: 11, scope: !1232)
!1239 = !DILocation(line: 632, column: 26, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !88, line: 632, column: 15)
!1241 = distinct !DILexicalBlock(scope: !1237, file: !88, line: 631, column: 9)
!1242 = !DILocation(line: 632, column: 34, scope: !1240)
!1243 = !DILocation(line: 632, column: 37, scope: !1240)
!1244 = !DILocation(line: 632, column: 15, scope: !1241)
!1245 = !DILocation(line: 640, column: 16, scope: !1232)
!1246 = distinct !{!1246, !1227, !1247, !1221}
!1247 = !DILocation(line: 641, column: 5, scope: !331)
!1248 = !DILocation(line: 644, column: 3, scope: !331)
!1249 = !DILocation(line: 0, scope: !1186, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 648, column: 31, scope: !331)
!1251 = !DILocation(line: 0, scope: !1186, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 649, column: 31, scope: !331)
!1253 = !DILocation(line: 0, scope: !1186, inlinedAt: !1254)
!1254 = distinct !DILocation(line: 650, column: 31, scope: !331)
!1255 = !DILocation(line: 0, scope: !1186, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 651, column: 31, scope: !331)
!1257 = !DILocation(line: 0, scope: !1186, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 652, column: 31, scope: !331)
!1259 = !DILocation(line: 0, scope: !1186, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 653, column: 31, scope: !331)
!1261 = !DILocation(line: 0, scope: !1186, inlinedAt: !1262)
!1262 = distinct !DILocation(line: 654, column: 31, scope: !331)
!1263 = !DILocation(line: 0, scope: !1186, inlinedAt: !1264)
!1264 = distinct !DILocation(line: 655, column: 31, scope: !331)
!1265 = !DILocation(line: 0, scope: !1186, inlinedAt: !1266)
!1266 = distinct !DILocation(line: 656, column: 31, scope: !331)
!1267 = !DILocation(line: 0, scope: !1186, inlinedAt: !1268)
!1268 = distinct !DILocation(line: 657, column: 31, scope: !331)
!1269 = !DILocation(line: 663, column: 7, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !331, file: !88, line: 663, column: 7)
!1271 = !DILocation(line: 664, column: 7, scope: !1270)
!1272 = !DILocation(line: 664, column: 10, scope: !1270)
!1273 = !DILocation(line: 663, column: 7, scope: !331)
!1274 = !DILocation(line: 669, column: 7, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1270, file: !88, line: 665, column: 5)
!1276 = !DILocation(line: 671, column: 5, scope: !1275)
!1277 = !DILocation(line: 676, column: 7, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1270, file: !88, line: 673, column: 5)
!1279 = !DILocation(line: 679, column: 3, scope: !331)
!1280 = !DILocation(line: 683, column: 3, scope: !331)
!1281 = !DILocation(line: 686, column: 3, scope: !331)
!1282 = !DILocation(line: 688, column: 3, scope: !331)
!1283 = !DILocation(line: 691, column: 3, scope: !331)
!1284 = !DILocation(line: 695, column: 3, scope: !331)
!1285 = !DILocation(line: 696, column: 1, scope: !331)
!1286 = !DISubprogram(name: "setlocale", scope: !1287, file: !1287, line: 122, type: !1288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1287 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!121, !89, !171}
!1290 = !DISubprogram(name: "strncmp", scope: !1291, file: !1291, line: 159, type: !1292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1291 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!89, !171, !171, !163}
!1294 = !DISubprogram(name: "exit", scope: !1295, file: !1295, line: 624, type: !1099, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1295 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1296 = !DISubprogram(name: "getenv", scope: !1295, file: !1295, line: 641, type: !1297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!121, !171}
!1299 = !DISubprogram(name: "strcmp", scope: !1291, file: !1291, line: 156, type: !1300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!89, !171, !171}
!1302 = !DISubprogram(name: "strspn", scope: !1291, file: !1291, line: 297, type: !1303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!165, !171, !171}
!1305 = !DISubprogram(name: "strchr", scope: !1291, file: !1291, line: 246, type: !1306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!121, !171, !89}
!1308 = !DISubprogram(name: "__ctype_b_loc", scope: !94, file: !94, line: 79, type: !1309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!1311}
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!1314 = !DISubprogram(name: "strcspn", scope: !1291, file: !1291, line: 293, type: !1303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1315 = !DISubprogram(name: "fwrite_unlocked", scope: !709, file: !709, line: 704, type: !1316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!163, !1318, !163, !163, !1164}
!1318 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1319)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1321 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 429, type: !1322, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1325)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!89, !89, !1324}
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!1325 = !{!1326, !1327, !1328, !1329, !1330, !1331, !1332, !1335, !1339, !1343, !1344, !1347, !1348, !1349, !1350, !1352, !1353}
!1326 = !DILocalVariable(name: "argc", arg: 1, scope: !1321, file: !2, line: 429, type: !89)
!1327 = !DILocalVariable(name: "argv", arg: 2, scope: !1321, file: !2, line: 429, type: !1324)
!1328 = !DILocalVariable(name: "ok", scope: !1321, file: !2, line: 431, type: !112)
!1329 = !DILocalVariable(name: "optc", scope: !1321, file: !2, line: 432, type: !89)
!1330 = !DILocalVariable(name: "syntax", scope: !1321, file: !2, line: 433, type: !78)
!1331 = !DILocalVariable(name: "print_database", scope: !1321, file: !2, line: 434, type: !112)
!1332 = !DILocalVariable(name: "p", scope: !1333, file: !2, line: 505, type: !171)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !2, line: 504, column: 5)
!1334 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 503, column: 7)
!1335 = !DILocalVariable(name: "len", scope: !1336, file: !2, line: 532, type: !163)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !2, line: 531, column: 9)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !2, line: 530, column: 11)
!1338 = distinct !DILexicalBlock(scope: !1334, file: !2, line: 513, column: 5)
!1339 = !DILocalVariable(name: "__o", scope: !1340, file: !2, line: 532, type: !1341)
!1340 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 532, column: 24)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!1343 = !DILocalVariable(name: "s", scope: !1336, file: !2, line: 533, type: !121)
!1344 = !DILocalVariable(name: "__o1", scope: !1345, file: !2, line: 533, type: !1346)
!1345 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 533, column: 21)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!1347 = !DILocalVariable(name: "__value", scope: !1345, file: !2, line: 533, type: !161)
!1348 = !DILocalVariable(name: "prefix", scope: !1336, file: !2, line: 534, type: !171)
!1349 = !DILocalVariable(name: "suffix", scope: !1336, file: !2, line: 535, type: !171)
!1350 = !DILocalVariable(name: "__ptr", scope: !1351, file: !2, line: 549, type: !171)
!1351 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 549, column: 11)
!1352 = !DILocalVariable(name: "__stream", scope: !1351, file: !2, line: 549, type: !113)
!1353 = !DILocalVariable(name: "__cnt", scope: !1351, file: !2, line: 549, type: !163)
!1354 = !DILocation(line: 0, scope: !1321)
!1355 = !DILocation(line: 437, column: 21, scope: !1321)
!1356 = !DILocation(line: 437, column: 3, scope: !1321)
!1357 = !DILocation(line: 438, column: 3, scope: !1321)
!1358 = !DILocation(line: 439, column: 3, scope: !1321)
!1359 = !DILocation(line: 440, column: 3, scope: !1321)
!1360 = !DILocation(line: 442, column: 3, scope: !1321)
!1361 = !DILocation(line: 444, column: 3, scope: !1321)
!1362 = !DILocation(line: 444, column: 18, scope: !1321)
!1363 = distinct !{!1363, !1361, !1364, !1221}
!1364 = !DILocation(line: 469, column: 7, scope: !1321)
!1365 = !DILocation(line: 453, column: 9, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 446, column: 7)
!1367 = !DILocation(line: 457, column: 9, scope: !1366)
!1368 = !DILocation(line: 460, column: 25, scope: !1366)
!1369 = !DILocation(line: 461, column: 9, scope: !1366)
!1370 = !DILocation(line: 463, column: 7, scope: !1366)
!1371 = !DILocation(line: 465, column: 7, scope: !1366)
!1372 = !DILocation(line: 468, column: 9, scope: !1366)
!1373 = !DILocation(line: 471, column: 11, scope: !1321)
!1374 = !DILocation(line: 471, column: 8, scope: !1321)
!1375 = !DILocation(line: 472, column: 8, scope: !1321)
!1376 = !DILocation(line: 476, column: 25, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 476, column: 7)
!1378 = !DILocation(line: 476, column: 23, scope: !1377)
!1379 = !DILocation(line: 476, column: 42, scope: !1377)
!1380 = !DILocation(line: 478, column: 7, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 477, column: 5)
!1382 = !DILocation(line: 481, column: 7, scope: !1381)
!1383 = !DILocation(line: 484, column: 22, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 484, column: 7)
!1385 = !DILocation(line: 486, column: 7, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1384, file: !2, line: 485, column: 5)
!1387 = !DILocation(line: 489, column: 7, scope: !1386)
!1388 = !DILocation(line: 492, column: 8, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 492, column: 7)
!1390 = !DILocation(line: 492, column: 25, scope: !1389)
!1391 = !DILocation(line: 492, column: 7, scope: !1321)
!1392 = !DILocation(line: 494, column: 7, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1389, file: !2, line: 493, column: 5)
!1394 = !DILocation(line: 496, column: 11, scope: !1393)
!1395 = !DILocation(line: 497, column: 9, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1393, file: !2, line: 496, column: 11)
!1397 = !DILocation(line: 500, column: 7, scope: !1393)
!1398 = !DILocation(line: 503, column: 7, scope: !1321)
!1399 = !DILocation(line: 506, column: 7, scope: !1333)
!1400 = !DILocation(line: 0, scope: !1333)
!1401 = !DILocation(line: 508, column: 11, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 507, column: 9)
!1403 = !DILocation(line: 509, column: 16, scope: !1402)
!1404 = !DILocation(line: 509, column: 27, scope: !1402)
!1405 = !DILocation(line: 509, column: 13, scope: !1402)
!1406 = !DILocation(line: 506, column: 16, scope: !1333)
!1407 = !DILocation(line: 506, column: 25, scope: !1333)
!1408 = distinct !{!1408, !1399, !1409, !1221}
!1409 = !DILocation(line: 510, column: 9, scope: !1333)
!1410 = !DILocation(line: 515, column: 42, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1338, file: !2, line: 515, column: 11)
!1412 = !DILocation(line: 146, column: 11, scope: !1413, inlinedAt: !1418)
!1413 = distinct !DISubprogram(name: "guess_shell_syntax", scope: !2, file: !2, line: 142, type: !1414, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1416)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!78}
!1416 = !{!1417}
!1417 = !DILocalVariable(name: "shell", scope: !1413, file: !2, line: 144, type: !121)
!1418 = distinct !DILocation(line: 517, column: 20, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1411, file: !2, line: 516, column: 9)
!1420 = !DILocation(line: 0, scope: !1413, inlinedAt: !1418)
!1421 = !DILocation(line: 147, column: 13, scope: !1422, inlinedAt: !1418)
!1422 = distinct !DILexicalBlock(scope: !1413, file: !2, line: 147, column: 7)
!1423 = !DILocation(line: 147, column: 21, scope: !1422, inlinedAt: !1418)
!1424 = !DILocation(line: 147, column: 24, scope: !1422, inlinedAt: !1418)
!1425 = !DILocation(line: 147, column: 31, scope: !1422, inlinedAt: !1418)
!1426 = !DILocation(line: 147, column: 7, scope: !1413, inlinedAt: !1418)
!1427 = !DILocation(line: 150, column: 11, scope: !1413, inlinedAt: !1418)
!1428 = !DILocation(line: 0, scope: !1186, inlinedAt: !1429)
!1429 = distinct !DILocation(line: 152, column: 7, scope: !1430, inlinedAt: !1418)
!1430 = distinct !DILexicalBlock(scope: !1413, file: !2, line: 152, column: 7)
!1431 = !DILocation(line: 1361, column: 11, scope: !1186, inlinedAt: !1429)
!1432 = !DILocation(line: 1361, column: 10, scope: !1186, inlinedAt: !1429)
!1433 = !DILocation(line: 152, column: 28, scope: !1430, inlinedAt: !1418)
!1434 = !DILocation(line: 0, scope: !1186, inlinedAt: !1435)
!1435 = distinct !DILocation(line: 152, column: 31, scope: !1430, inlinedAt: !1418)
!1436 = !DILocation(line: 1361, column: 11, scope: !1186, inlinedAt: !1435)
!1437 = !DILocation(line: 1361, column: 10, scope: !1186, inlinedAt: !1435)
!1438 = !DILocation(line: 152, column: 7, scope: !1413, inlinedAt: !1418)
!1439 = !DILocation(line: 519, column: 13, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 518, column: 15)
!1441 = !DILocation(line: 524, column: 7, scope: !1338)
!1442 = !DILocation(line: 525, column: 16, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1338, file: !2, line: 525, column: 11)
!1444 = !DILocation(line: 525, column: 11, scope: !1338)
!1445 = !DILocation(line: 526, column: 14, scope: !1443)
!1446 = !DILocation(line: 530, column: 11, scope: !1338)
!1447 = !DILocation(line: 528, column: 29, scope: !1443)
!1448 = !DILocalVariable(name: "filename", arg: 1, scope: !1449, file: !2, line: 407, type: !171)
!1449 = distinct !DISubprogram(name: "dc_parse_file", scope: !2, file: !2, line: 407, type: !1450, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1452)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!112, !171}
!1452 = !{!1448, !1453}
!1453 = !DILocalVariable(name: "ok", scope: !1449, file: !2, line: 409, type: !112)
!1454 = !DILocation(line: 0, scope: !1449, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 528, column: 14, scope: !1443)
!1456 = !DILocation(line: 0, scope: !1186, inlinedAt: !1457)
!1457 = distinct !DILocation(line: 411, column: 9, scope: !1458, inlinedAt: !1455)
!1458 = distinct !DILexicalBlock(scope: !1449, file: !2, line: 411, column: 7)
!1459 = !DILocation(line: 1361, column: 11, scope: !1186, inlinedAt: !1457)
!1460 = !DILocation(line: 1361, column: 10, scope: !1186, inlinedAt: !1457)
!1461 = !DILocation(line: 411, column: 31, scope: !1458, inlinedAt: !1455)
!1462 = !DILocation(line: 411, column: 58, scope: !1458, inlinedAt: !1455)
!1463 = !DILocation(line: 411, column: 34, scope: !1458, inlinedAt: !1455)
!1464 = !DILocation(line: 411, column: 65, scope: !1458, inlinedAt: !1455)
!1465 = !DILocation(line: 411, column: 7, scope: !1449, inlinedAt: !1455)
!1466 = !DILocation(line: 417, column: 25, scope: !1449, inlinedAt: !1455)
!1467 = !DILocation(line: 417, column: 8, scope: !1449, inlinedAt: !1455)
!1468 = !DILocation(line: 419, column: 15, scope: !1469, inlinedAt: !1455)
!1469 = distinct !DILexicalBlock(scope: !1449, file: !2, line: 419, column: 7)
!1470 = !DILocation(line: 419, column: 7, scope: !1469, inlinedAt: !1455)
!1471 = !DILocation(line: 419, column: 22, scope: !1469, inlinedAt: !1455)
!1472 = !DILocation(line: 419, column: 7, scope: !1449, inlinedAt: !1455)
!1473 = !DILocation(line: 0, scope: !1340)
!1474 = !DILocation(line: 532, column: 24, scope: !1340)
!1475 = !{!1476, !1110, i64 24}
!1476 = !{!"obstack", !1477, i64 0, !1110, i64 8, !1110, i64 16, !1110, i64 24, !1110, i64 32, !1111, i64 40, !1477, i64 48, !1111, i64 56, !1111, i64 64, !1110, i64 72, !1175, i64 80, !1175, i64 80, !1175, i64 80}
!1477 = !{!"long", !1111, i64 0}
!1478 = !{!1476, !1110, i64 16}
!1479 = !DILocation(line: 0, scope: !1336)
!1480 = !DILocation(line: 0, scope: !1345)
!1481 = !DILocation(line: 533, column: 21, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1345, file: !2, line: 533, column: 21)
!1483 = !DILocation(line: 533, column: 21, scope: !1345)
!1484 = !{!1476, !1477, i64 48}
!1485 = !DILocation(line: 537, column: 22, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 537, column: 15)
!1487 = !DILocation(line: 547, column: 17, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 547, column: 15)
!1489 = !DILocation(line: 547, column: 15, scope: !1336)
!1490 = !DILocation(line: 548, column: 13, scope: !1488)
!1491 = !DILocation(line: 549, column: 11, scope: !1336)
!1492 = !DILocation(line: 550, column: 17, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 550, column: 15)
!1494 = !DILocation(line: 550, column: 15, scope: !1336)
!1495 = !DILocation(line: 551, column: 13, scope: !1493)
!1496 = !DILocation(line: 555, column: 3, scope: !1321)
!1497 = !DISubprogram(name: "bindtextdomain", scope: !1157, file: !1157, line: 86, type: !1498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!121, !171, !171}
!1500 = !DISubprogram(name: "textdomain", scope: !1157, file: !1157, line: 82, type: !1297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1501 = !DISubprogram(name: "atexit", scope: !1295, file: !1295, line: 602, type: !1502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!89, !745}
!1504 = !DISubprogram(name: "getopt_long", scope: !665, file: !665, line: 66, type: !1505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!89, !89, !1507, !171, !1509, !670}
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!1510 = !DISubprogram(name: "puts", scope: !709, file: !709, line: 661, type: !1511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!89, !171}
!1513 = !DISubprogram(name: "strlen", scope: !1291, file: !1291, line: 407, type: !1514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!165, !171}
!1516 = !DISubprogram(name: "free", scope: !1295, file: !1295, line: 555, type: !317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1517 = distinct !DIAssignID()
!1518 = !DILocation(line: 0, scope: !109)
!1519 = distinct !DIAssignID()
!1520 = !DILocation(line: 282, column: 3, scope: !109)
!1521 = !DILocation(line: 282, column: 9, scope: !109)
!1522 = distinct !DIAssignID()
!1523 = !DILocation(line: 283, column: 3, scope: !109)
!1524 = !DILocation(line: 283, column: 10, scope: !109)
!1525 = !{!1477, !1477, i64 0}
!1526 = distinct !DIAssignID()
!1527 = !DILocation(line: 293, column: 10, scope: !109)
!1528 = !DILocation(line: 294, column: 12, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !109, file: !2, line: 294, column: 7)
!1530 = !DILocation(line: 294, column: 20, scope: !1529)
!1531 = !DILocation(line: 294, column: 23, scope: !1529)
!1532 = !DILocation(line: 294, column: 29, scope: !1529)
!1533 = !DILocation(line: 294, column: 7, scope: !109)
!1534 = !DILocation(line: 295, column: 5, scope: !1529)
!1535 = !DILocation(line: 298, column: 15, scope: !109)
!1536 = !DILocation(line: 299, column: 17, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !109, file: !2, line: 299, column: 7)
!1538 = !DILocation(line: 299, column: 7, scope: !109)
!1539 = !DILocation(line: 302, column: 3, scope: !109)
!1540 = !DILocation(line: 309, column: 11, scope: !190)
!1541 = !DILocation(line: 307, column: 7, scope: !190)
!1542 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1543, file: !1544, line: 118, type: !1324)
!1543 = distinct !DISubprogram(name: "getline", scope: !1544, file: !1544, line: 118, type: !1545, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1548)
!1544 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!1547, !1324, !1051, !113}
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !141, line: 194, baseType: !142)
!1548 = !{!1542, !1549, !1550}
!1549 = !DILocalVariable(name: "__n", arg: 2, scope: !1543, file: !1544, line: 118, type: !1051)
!1550 = !DILocalVariable(name: "__stream", arg: 3, scope: !1543, file: !1544, line: 118, type: !113)
!1551 = !DILocation(line: 0, scope: !1543, inlinedAt: !1552)
!1552 = distinct !DILocation(line: 311, column: 15, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !2, line: 311, column: 15)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !2, line: 310, column: 9)
!1555 = distinct !DILexicalBlock(scope: !190, file: !2, line: 309, column: 11)
!1556 = !DILocation(line: 120, column: 10, scope: !1543, inlinedAt: !1552)
!1557 = !DILocation(line: 311, column: 59, scope: !1553)
!1558 = !DILocation(line: 311, column: 15, scope: !1554)
!1559 = !DILocalVariable(name: "__stream", arg: 1, scope: !1560, file: !1544, line: 135, type: !113)
!1560 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1544, file: !1544, line: 135, type: !1561, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1563)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!89, !113}
!1563 = !{!1559}
!1564 = !DILocation(line: 0, scope: !1560, inlinedAt: !1565)
!1565 = distinct !DILocation(line: 313, column: 19, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !2, line: 313, column: 19)
!1567 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 312, column: 13)
!1568 = !DILocation(line: 137, column: 10, scope: !1560, inlinedAt: !1565)
!1569 = !{!1570, !1175, i64 0}
!1570 = !{!"_IO_FILE", !1175, i64 0, !1110, i64 8, !1110, i64 16, !1110, i64 24, !1110, i64 32, !1110, i64 40, !1110, i64 48, !1110, i64 56, !1110, i64 64, !1110, i64 72, !1110, i64 80, !1110, i64 88, !1110, i64 96, !1110, i64 104, !1175, i64 112, !1175, i64 116, !1477, i64 120, !1216, i64 128, !1111, i64 130, !1111, i64 131, !1110, i64 136, !1477, i64 144, !1110, i64 152, !1110, i64 160, !1110, i64 168, !1110, i64 176, !1477, i64 184, !1175, i64 192, !1111, i64 196}
!1571 = !DILocation(line: 313, column: 19, scope: !1566)
!1572 = !DILocation(line: 313, column: 19, scope: !1567)
!1573 = !DILocation(line: 315, column: 19, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1566, file: !2, line: 314, column: 17)
!1575 = !DILocation(line: 317, column: 17, scope: !1574)
!1576 = !DILocation(line: 318, column: 21, scope: !1567)
!1577 = !DILocation(line: 318, column: 15, scope: !1567)
!1578 = !DILocation(line: 319, column: 15, scope: !1567)
!1579 = !DILocation(line: 321, column: 18, scope: !1554)
!1580 = !DILocation(line: 322, column: 9, scope: !1554)
!1581 = !DILocation(line: 325, column: 27, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 325, column: 15)
!1583 = distinct !DILexicalBlock(scope: !1555, file: !2, line: 324, column: 9)
!1584 = !DILocation(line: 325, column: 15, scope: !1583)
!1585 = !DILocation(line: 328, column: 26, scope: !1583)
!1586 = !DILocation(line: 328, column: 47, scope: !1583)
!1587 = !DILocation(line: 328, column: 23, scope: !1583)
!1588 = !DILocation(line: 0, scope: !1555)
!1589 = !DILocalVariable(name: "line", arg: 1, scope: !1590, file: !2, line: 159, type: !171)
!1590 = distinct !DISubprogram(name: "parse_line", scope: !2, file: !2, line: 159, type: !1591, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1593)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !171, !1324, !1324}
!1593 = !{!1589, !1594, !1595, !1596, !1597, !1598}
!1594 = !DILocalVariable(name: "keyword", arg: 2, scope: !1590, file: !2, line: 159, type: !1324)
!1595 = !DILocalVariable(name: "arg", arg: 3, scope: !1590, file: !2, line: 159, type: !1324)
!1596 = !DILocalVariable(name: "p", scope: !1590, file: !2, line: 161, type: !171)
!1597 = !DILocalVariable(name: "keyword_start", scope: !1590, file: !2, line: 162, type: !171)
!1598 = !DILocalVariable(name: "arg_start", scope: !1590, file: !2, line: 163, type: !171)
!1599 = !DILocation(line: 0, scope: !1590, inlinedAt: !1600)
!1600 = distinct !DILocation(line: 331, column: 7, scope: !190)
!1601 = !DILocation(line: 0, scope: !190)
!1602 = !DILocation(line: 168, column: 8, scope: !1603, inlinedAt: !1600)
!1603 = distinct !DILexicalBlock(scope: !1590, file: !2, line: 168, column: 3)
!1604 = !DILocation(line: 168, scope: !1603, inlinedAt: !1600)
!1605 = !DILocation(line: 168, column: 29, scope: !1606, inlinedAt: !1600)
!1606 = distinct !DILexicalBlock(scope: !1603, file: !2, line: 168, column: 3)
!1607 = !DILocalVariable(name: "c", arg: 1, scope: !1608, file: !1609, line: 300, type: !89)
!1608 = distinct !DISubprogram(name: "c_isspace", scope: !1609, file: !1609, line: 300, type: !1610, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1612)
!1609 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!112, !89}
!1612 = !{!1607}
!1613 = !DILocation(line: 0, scope: !1608, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 168, column: 18, scope: !1606, inlinedAt: !1600)
!1615 = !DILocation(line: 302, column: 3, scope: !1608, inlinedAt: !1614)
!1616 = distinct !{!1616, !1539, !1617}
!1617 = !DILocation(line: 401, column: 5, scope: !109)
!1618 = !DILocation(line: 168, column: 34, scope: !1606, inlinedAt: !1600)
!1619 = !DILocation(line: 168, column: 3, scope: !1606, inlinedAt: !1600)
!1620 = distinct !{!1620, !1621, !1622, !1221}
!1621 = !DILocation(line: 168, column: 3, scope: !1603, inlinedAt: !1600)
!1622 = !DILocation(line: 169, column: 5, scope: !1603, inlinedAt: !1600)
!1623 = !DILocation(line: 177, column: 3, scope: !1590, inlinedAt: !1600)
!1624 = !DILocation(line: 177, column: 22, scope: !1590, inlinedAt: !1600)
!1625 = !DILocation(line: 0, scope: !1608, inlinedAt: !1626)
!1626 = distinct !DILocation(line: 177, column: 11, scope: !1590, inlinedAt: !1600)
!1627 = !DILocation(line: 302, column: 3, scope: !1608, inlinedAt: !1626)
!1628 = !DILocation(line: 179, column: 7, scope: !1629, inlinedAt: !1600)
!1629 = distinct !DILexicalBlock(scope: !1590, file: !2, line: 178, column: 5)
!1630 = distinct !{!1630, !1623, !1631, !1221}
!1631 = !DILocation(line: 180, column: 5, scope: !1590, inlinedAt: !1600)
!1632 = !DILocation(line: 182, column: 42, scope: !1590, inlinedAt: !1600)
!1633 = !DILocation(line: 182, column: 14, scope: !1590, inlinedAt: !1600)
!1634 = !DILocation(line: 183, column: 7, scope: !1635, inlinedAt: !1600)
!1635 = distinct !DILexicalBlock(scope: !1590, file: !2, line: 183, column: 7)
!1636 = !DILocation(line: 183, column: 11, scope: !1635, inlinedAt: !1600)
!1637 = !DILocation(line: 183, column: 7, scope: !1590, inlinedAt: !1600)
!1638 = !DILocation(line: 186, column: 3, scope: !1590, inlinedAt: !1600)
!1639 = !DILocation(line: 188, column: 7, scope: !1640, inlinedAt: !1600)
!1640 = distinct !DILexicalBlock(scope: !1590, file: !2, line: 187, column: 5)
!1641 = !DILocation(line: 190, column: 21, scope: !1590, inlinedAt: !1600)
!1642 = !DILocation(line: 0, scope: !1608, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 190, column: 10, scope: !1590, inlinedAt: !1600)
!1644 = !DILocation(line: 302, column: 3, scope: !1608, inlinedAt: !1643)
!1645 = !DILocation(line: 197, column: 3, scope: !1590, inlinedAt: !1600)
!1646 = distinct !{!1646, !1638, !1647, !1221}
!1647 = !DILocation(line: 190, column: 24, scope: !1590, inlinedAt: !1600)
!1648 = !DILocation(line: 197, column: 10, scope: !1590, inlinedAt: !1600)
!1649 = !DILocation(line: 197, column: 21, scope: !1590, inlinedAt: !1600)
!1650 = !DILocation(line: 200, column: 3, scope: !1651, inlinedAt: !1600)
!1651 = distinct !DILexicalBlock(scope: !1590, file: !2, line: 200, column: 3)
!1652 = !DILocation(line: 198, column: 5, scope: !1590, inlinedAt: !1600)
!1653 = distinct !{!1653, !1645, !1654, !1221}
!1654 = !DILocation(line: 198, column: 7, scope: !1590, inlinedAt: !1600)
!1655 = !DILocation(line: 200, scope: !1651, inlinedAt: !1600)
!1656 = !DILocation(line: 200, column: 24, scope: !1657, inlinedAt: !1600)
!1657 = distinct !DILexicalBlock(scope: !1651, file: !2, line: 200, column: 3)
!1658 = !DILocation(line: 0, scope: !1608, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 200, column: 13, scope: !1657, inlinedAt: !1600)
!1660 = !DILocation(line: 302, column: 3, scope: !1608, inlinedAt: !1659)
!1661 = distinct !{!1661, !1650, !1662, !1221}
!1662 = !DILocation(line: 201, column: 5, scope: !1651, inlinedAt: !1600)
!1663 = !DILocation(line: 338, column: 11, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !2, line: 337, column: 9)
!1665 = distinct !DILexicalBlock(scope: !190, file: !2, line: 336, column: 11)
!1666 = !DILocation(line: 342, column: 11, scope: !1664)
!1667 = !DILocation(line: 204, column: 34, scope: !1590, inlinedAt: !1600)
!1668 = !DILocation(line: 204, column: 10, scope: !1590, inlinedAt: !1600)
!1669 = !DILocation(line: 346, column: 11, scope: !202)
!1670 = !DILocation(line: 346, column: 40, scope: !202)
!1671 = !DILocation(line: 346, column: 11, scope: !190)
!1672 = !DILocation(line: 348, column: 21, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !2, line: 348, column: 15)
!1674 = distinct !DILexicalBlock(scope: !202, file: !2, line: 347, column: 9)
!1675 = !DILocation(line: 348, column: 15, scope: !1674)
!1676 = !DILocation(line: 349, column: 21, scope: !1673)
!1677 = !DILocation(line: 349, column: 44, scope: !1673)
!1678 = !DILocation(line: 349, column: 13, scope: !1673)
!1679 = !DILocation(line: 351, column: 16, scope: !201)
!1680 = !DILocation(line: 351, column: 50, scope: !201)
!1681 = !DILocation(line: 0, scope: !201)
!1682 = !DILocation(line: 351, column: 16, scope: !202)
!1683 = !DILocation(line: 353, column: 15, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !201, file: !2, line: 352, column: 9)
!1685 = !DILocation(line: 354, column: 21, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1684, file: !2, line: 353, column: 15)
!1687 = !DILocation(line: 354, column: 49, scope: !1686)
!1688 = !DILocation(line: 354, column: 13, scope: !1686)
!1689 = !DILocation(line: 358, column: 15, scope: !200)
!1690 = !DILocation(line: 361, column: 21, scope: !199)
!1691 = !DILocation(line: 361, column: 15, scope: !200)
!1692 = !DILocation(line: 363, column: 19, scope: !197)
!1693 = !DILocation(line: 363, column: 19, scope: !198)
!1694 = !DILocation(line: 364, column: 17, scope: !197)
!1695 = !DILocation(line: 366, column: 17, scope: !196)
!1696 = !DILocation(line: 367, column: 24, scope: !195)
!1697 = !DILocation(line: 367, column: 56, scope: !195)
!1698 = !DILocation(line: 368, column: 24, scope: !195)
!1699 = !DILocation(line: 368, column: 27, scope: !195)
!1700 = !DILocation(line: 368, column: 57, scope: !195)
!1701 = !DILocation(line: 369, column: 24, scope: !195)
!1702 = !DILocation(line: 369, column: 27, scope: !195)
!1703 = !DILocation(line: 369, column: 60, scope: !195)
!1704 = !DILocation(line: 367, column: 24, scope: !196)
!1705 = !DILocation(line: 377, column: 19, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !194, file: !2, line: 377, column: 19)
!1707 = !DILocation(line: 377, column: 55, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1706, file: !2, line: 377, column: 19)
!1709 = !DILocation(line: 0, scope: !194)
!1710 = distinct !{!1710, !1705, !1711, !1221}
!1711 = !DILocation(line: 379, column: 23, scope: !1706)
!1712 = !DILocation(line: 377, column: 31, scope: !1708)
!1713 = !DILocation(line: 378, column: 25, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1708, file: !2, line: 378, column: 25)
!1715 = !DILocation(line: 378, column: 62, scope: !1714)
!1716 = !DILocation(line: 378, column: 25, scope: !1708)
!1717 = !DILocation(line: 382, column: 38, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !194, file: !2, line: 381, column: 23)
!1719 = !DILocation(line: 382, column: 21, scope: !1718)
!1720 = !DILocation(line: 391, column: 24, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !190, file: !2, line: 391, column: 11)
!1722 = !DILocation(line: 393, column: 11, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1721, file: !2, line: 392, column: 9)
!1724 = !DILocation(line: 397, column: 9, scope: !1723)
!1725 = !DILocation(line: 399, column: 7, scope: !190)
!1726 = !DILocation(line: 404, column: 1, scope: !109)
!1727 = !DILocation(line: 403, column: 3, scope: !109)
!1728 = !DISubprogram(name: "__errno_location", scope: !1729, file: !1729, line: 37, type: !1730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1729 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!670}
!1732 = !DISubprogram(name: "__getdelim", scope: !709, file: !709, line: 632, type: !1733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!1547, !1735, !1736, !89, !1164}
!1735 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1324)
!1736 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1051)
!1737 = !DISubprogram(name: "fnmatch", scope: !1738, file: !1738, line: 56, type: !1739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1738 = !DIFile(filename: "/usr/include/fnmatch.h", directory: "", checksumkind: CSK_MD5, checksum: "78cf7a81a1368221bdf9e99a720bc0a5")
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!89, !171, !171, !89}
!1741 = distinct !DISubprogram(name: "append_entry", scope: !2, file: !2, line: 252, type: !1742, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1744)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null, !4, !171, !171}
!1744 = !{!1745, !1746, !1747, !1748, !1752, !1755, !1758, !1761, !1763, !1766, !1768}
!1745 = !DILocalVariable(name: "prefix", arg: 1, scope: !1741, file: !2, line: 252, type: !4)
!1746 = !DILocalVariable(name: "item", arg: 2, scope: !1741, file: !2, line: 252, type: !171)
!1747 = !DILocalVariable(name: "arg", arg: 3, scope: !1741, file: !2, line: 252, type: !171)
!1748 = !DILocalVariable(name: "__o", scope: !1749, file: !2, line: 258, type: !1346)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 258, column: 7)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !2, line: 255, column: 5)
!1751 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 254, column: 7)
!1752 = !DILocalVariable(name: "__o1", scope: !1753, file: !2, line: 258, type: !1341)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !2, line: 258, column: 7)
!1754 = distinct !DILexicalBlock(scope: !1749, file: !2, line: 258, column: 7)
!1755 = !DILocalVariable(name: "__o", scope: !1756, file: !2, line: 261, type: !1346)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !2, line: 261, column: 5)
!1757 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 260, column: 7)
!1758 = !DILocalVariable(name: "__o1", scope: !1759, file: !2, line: 261, type: !1341)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !2, line: 261, column: 5)
!1760 = distinct !DILexicalBlock(scope: !1756, file: !2, line: 261, column: 5)
!1761 = !DILocalVariable(name: "__o", scope: !1762, file: !2, line: 263, type: !1346)
!1762 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 263, column: 3)
!1763 = !DILocalVariable(name: "__o1", scope: !1764, file: !2, line: 263, type: !1341)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !2, line: 263, column: 3)
!1765 = distinct !DILexicalBlock(scope: !1762, file: !2, line: 263, column: 3)
!1766 = !DILocalVariable(name: "__o", scope: !1767, file: !2, line: 267, type: !1346)
!1767 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 267, column: 3)
!1768 = !DILocalVariable(name: "__o1", scope: !1769, file: !2, line: 267, type: !1341)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !2, line: 267, column: 3)
!1770 = distinct !DILexicalBlock(scope: !1767, file: !2, line: 267, column: 3)
!1771 = !DILocation(line: 0, scope: !1741)
!1772 = !DILocation(line: 254, column: 7, scope: !1751)
!1773 = !DILocation(line: 254, column: 7, scope: !1741)
!1774 = !DILocation(line: 256, column: 7, scope: !1750)
!1775 = !DILocation(line: 257, column: 7, scope: !1750)
!1776 = !DILocation(line: 0, scope: !1749)
!1777 = !DILocation(line: 0, scope: !1753)
!1778 = !DILocation(line: 258, column: 7, scope: !1753)
!1779 = !{!1476, !1110, i64 32}
!1780 = !DILocation(line: 258, column: 7, scope: !1754)
!1781 = !DILocation(line: 258, column: 7, scope: !1749)
!1782 = !DILocation(line: 259, column: 5, scope: !1750)
!1783 = !DILocation(line: 260, column: 7, scope: !1757)
!1784 = !DILocation(line: 260, column: 7, scope: !1741)
!1785 = !DILocation(line: 0, scope: !1756)
!1786 = !DILocation(line: 0, scope: !1759)
!1787 = !DILocation(line: 261, column: 5, scope: !1759)
!1788 = !DILocation(line: 261, column: 5, scope: !1760)
!1789 = !DILocation(line: 261, column: 5, scope: !1756)
!1790 = !DILocation(line: 261, column: 5, scope: !1757)
!1791 = !DILocation(line: 262, column: 3, scope: !1741)
!1792 = !DILocation(line: 0, scope: !1762)
!1793 = !DILocation(line: 0, scope: !1764)
!1794 = !DILocation(line: 263, column: 3, scope: !1764)
!1795 = !DILocation(line: 263, column: 3, scope: !1765)
!1796 = !DILocation(line: 263, column: 3, scope: !1762)
!1797 = !DILocation(line: 264, column: 3, scope: !1741)
!1798 = !DILocation(line: 265, column: 7, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 265, column: 7)
!1800 = !DILocation(line: 265, column: 7, scope: !1741)
!1801 = !DILocation(line: 266, column: 5, scope: !1799)
!1802 = !DILocation(line: 0, scope: !1767)
!1803 = !DILocation(line: 0, scope: !1769)
!1804 = !DILocation(line: 267, column: 3, scope: !1769)
!1805 = !DILocation(line: 267, column: 3, scope: !1770)
!1806 = !DILocation(line: 267, column: 3, scope: !1767)
!1807 = !DILocation(line: 268, column: 1, scope: !1741)
!1808 = distinct !DISubprogram(name: "append_quoted", scope: !2, file: !2, line: 211, type: !1125, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1809)
!1809 = !{!1810, !1811, !1812, !1817, !1820, !1822, !1825, !1827, !1830, !1833, !1836, !1838}
!1810 = !DILocalVariable(name: "str", arg: 1, scope: !1808, file: !2, line: 211, type: !171)
!1811 = !DILocalVariable(name: "need_backslash", scope: !1808, file: !2, line: 213, type: !112)
!1812 = !DILocalVariable(name: "__o", scope: !1813, file: !2, line: 221, type: !1346)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 221, column: 13)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !2, line: 219, column: 11)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !2, line: 217, column: 11)
!1816 = distinct !DILexicalBlock(scope: !1808, file: !2, line: 216, column: 5)
!1817 = !DILocalVariable(name: "__o1", scope: !1818, file: !2, line: 221, type: !1341)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !2, line: 221, column: 13)
!1819 = distinct !DILexicalBlock(scope: !1813, file: !2, line: 221, column: 13)
!1820 = !DILocalVariable(name: "__o", scope: !1821, file: !2, line: 222, type: !1346)
!1821 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 222, column: 13)
!1822 = !DILocalVariable(name: "__o1", scope: !1823, file: !2, line: 222, type: !1341)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !2, line: 222, column: 13)
!1824 = distinct !DILexicalBlock(scope: !1821, file: !2, line: 222, column: 13)
!1825 = !DILocalVariable(name: "__o", scope: !1826, file: !2, line: 223, type: !1346)
!1826 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 223, column: 13)
!1827 = !DILocalVariable(name: "__o1", scope: !1828, file: !2, line: 223, type: !1341)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !2, line: 223, column: 13)
!1829 = distinct !DILexicalBlock(scope: !1826, file: !2, line: 223, column: 13)
!1830 = !DILocalVariable(name: "__o", scope: !1831, file: !2, line: 235, type: !1346)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !2, line: 235, column: 15)
!1832 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 234, column: 17)
!1833 = !DILocalVariable(name: "__o1", scope: !1834, file: !2, line: 235, type: !1341)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !2, line: 235, column: 15)
!1835 = distinct !DILexicalBlock(scope: !1831, file: !2, line: 235, column: 15)
!1836 = !DILocalVariable(name: "__o", scope: !1837, file: !2, line: 243, type: !1346)
!1837 = distinct !DILexicalBlock(scope: !1816, file: !2, line: 243, column: 7)
!1838 = !DILocalVariable(name: "__o1", scope: !1839, file: !2, line: 243, type: !1341)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !2, line: 243, column: 7)
!1840 = distinct !DILexicalBlock(scope: !1837, file: !2, line: 243, column: 7)
!1841 = !DILocation(line: 0, scope: !1808)
!1842 = !DILocation(line: 215, column: 10, scope: !1808)
!1843 = !DILocation(line: 215, column: 15, scope: !1808)
!1844 = !DILocation(line: 215, column: 3, scope: !1808)
!1845 = !DILocation(line: 217, column: 13, scope: !1815)
!1846 = !DILocation(line: 217, column: 11, scope: !1816)
!1847 = !DILocation(line: 218, column: 9, scope: !1815)
!1848 = !DILocation(line: 0, scope: !1813)
!1849 = !DILocation(line: 0, scope: !1818)
!1850 = !DILocation(line: 221, column: 13, scope: !1818)
!1851 = !DILocation(line: 221, column: 13, scope: !1819)
!1852 = !DILocation(line: 221, column: 13, scope: !1813)
!1853 = !DILocation(line: 0, scope: !1821)
!1854 = !DILocation(line: 0, scope: !1823)
!1855 = !DILocation(line: 222, column: 13, scope: !1823)
!1856 = !DILocation(line: 222, column: 13, scope: !1824)
!1857 = !DILocation(line: 222, column: 13, scope: !1821)
!1858 = !DILocation(line: 0, scope: !1826)
!1859 = !DILocation(line: 0, scope: !1828)
!1860 = !DILocation(line: 223, column: 13, scope: !1828)
!1861 = !DILocation(line: 223, column: 13, scope: !1829)
!1862 = !DILocation(line: 223, column: 13, scope: !1826)
!1863 = !DILocation(line: 225, column: 13, scope: !1814)
!1864 = !DILocation(line: 229, column: 30, scope: !1814)
!1865 = !DILocation(line: 230, column: 13, scope: !1814)
!1866 = !DILocation(line: 234, column: 17, scope: !1814)
!1867 = !DILocation(line: 0, scope: !1831)
!1868 = !DILocation(line: 0, scope: !1834)
!1869 = !DILocation(line: 235, column: 15, scope: !1834)
!1870 = !DILocation(line: 235, column: 15, scope: !1835)
!1871 = !DILocation(line: 235, column: 15, scope: !1831)
!1872 = !DILocation(line: 235, column: 15, scope: !1832)
!1873 = !DILocation(line: 0, scope: !1837)
!1874 = !DILocation(line: 0, scope: !1839)
!1875 = !DILocation(line: 243, column: 7, scope: !1839)
!1876 = !DILocation(line: 243, column: 7, scope: !1840)
!1877 = !DILocation(line: 243, column: 7, scope: !1837)
!1878 = !DILocation(line: 244, column: 7, scope: !1816)
!1879 = distinct !{!1879, !1844, !1880, !1221}
!1880 = !DILocation(line: 245, column: 5, scope: !1808)
!1881 = !DILocation(line: 246, column: 1, scope: !1808)
!1882 = distinct !DISubprogram(name: "last_component", scope: !1020, file: !1020, line: 29, type: !1297, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1019, retainedNodes: !1883)
!1883 = !{!1884, !1885, !1886, !1887}
!1884 = !DILocalVariable(name: "name", arg: 1, scope: !1882, file: !1020, line: 29, type: !171)
!1885 = !DILocalVariable(name: "base", scope: !1882, file: !1020, line: 31, type: !171)
!1886 = !DILocalVariable(name: "last_was_slash", scope: !1882, file: !1020, line: 35, type: !112)
!1887 = !DILocalVariable(name: "p", scope: !1888, file: !1020, line: 36, type: !171)
!1888 = distinct !DILexicalBlock(scope: !1882, file: !1020, line: 36, column: 3)
!1889 = !DILocation(line: 0, scope: !1882)
!1890 = !DILocation(line: 32, column: 3, scope: !1882)
!1891 = !DILocation(line: 32, column: 10, scope: !1882)
!1892 = !DILocation(line: 33, column: 9, scope: !1882)
!1893 = distinct !{!1893, !1890, !1892, !1221}
!1894 = !DILocation(line: 36, column: 3, scope: !1888)
!1895 = !DILocation(line: 36, column: 30, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1888, file: !1020, line: 36, column: 3)
!1897 = !DILocation(line: 31, column: 15, scope: !1882)
!1898 = !DILocation(line: 36, scope: !1888)
!1899 = !DILocation(line: 0, scope: !1888)
!1900 = !DILocation(line: 47, column: 3, scope: !1882)
!1901 = !DILocation(line: 40, column: 16, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !1020, line: 38, column: 11)
!1903 = distinct !DILexicalBlock(scope: !1896, file: !1020, line: 37, column: 5)
!1904 = !DILocation(line: 36, column: 35, scope: !1896)
!1905 = !DILocation(line: 36, column: 3, scope: !1896)
!1906 = distinct !{!1906, !1894, !1907, !1221}
!1907 = !DILocation(line: 45, column: 5, scope: !1888)
!1908 = distinct !DISubprogram(name: "base_len", scope: !1020, file: !1020, line: 51, type: !1909, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1019, retainedNodes: !1911)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!163, !171}
!1911 = !{!1912, !1913, !1914}
!1912 = !DILocalVariable(name: "name", arg: 1, scope: !1908, file: !1020, line: 51, type: !171)
!1913 = !DILocalVariable(name: "len", scope: !1908, file: !1020, line: 53, type: !163)
!1914 = !DILocalVariable(name: "prefix_len", scope: !1908, file: !1020, line: 61, type: !163)
!1915 = !DILocation(line: 0, scope: !1908)
!1916 = !DILocation(line: 54, column: 14, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1908, file: !1020, line: 54, column: 3)
!1918 = !DILocation(line: 54, column: 8, scope: !1917)
!1919 = !DILocation(line: 54, column: 32, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1917, file: !1020, line: 54, column: 3)
!1921 = !DILocation(line: 54, column: 38, scope: !1920)
!1922 = !DILocation(line: 54, column: 3, scope: !1917)
!1923 = !DILocation(line: 54, column: 41, scope: !1920)
!1924 = !DILocation(line: 54, column: 70, scope: !1920)
!1925 = distinct !{!1925, !1922, !1926, !1221}
!1926 = !DILocation(line: 55, column: 5, scope: !1917)
!1927 = !DILocation(line: 66, column: 3, scope: !1908)
!1928 = !DILocation(line: 54, scope: !1917)
!1929 = distinct !DISubprogram(name: "c_strcasecmp", scope: !1023, file: !1023, line: 27, type: !1300, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !1930)
!1930 = !{!1931, !1932, !1933, !1934, !1935, !1939}
!1931 = !DILocalVariable(name: "s1", arg: 1, scope: !1929, file: !1023, line: 27, type: !171)
!1932 = !DILocalVariable(name: "s2", arg: 2, scope: !1929, file: !1023, line: 27, type: !171)
!1933 = !DILocalVariable(name: "p1", scope: !1929, file: !1023, line: 29, type: !1025)
!1934 = !DILocalVariable(name: "p2", scope: !1929, file: !1023, line: 30, type: !1025)
!1935 = !DILocalVariable(name: "c1", scope: !1936, file: !1023, line: 37, type: !223)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !1023, line: 36, column: 5)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !1023, line: 35, column: 3)
!1938 = distinct !DILexicalBlock(scope: !1929, file: !1023, line: 35, column: 3)
!1939 = !DILocalVariable(name: "c2", scope: !1936, file: !1023, line: 38, type: !223)
!1940 = !DILocation(line: 0, scope: !1929)
!1941 = !DILocation(line: 32, column: 10, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1929, file: !1023, line: 32, column: 7)
!1943 = !DILocation(line: 32, column: 7, scope: !1929)
!1944 = !DILocation(line: 37, column: 37, scope: !1936)
!1945 = !DILocalVariable(name: "c", arg: 1, scope: !1946, file: !1947, line: 337, type: !89)
!1946 = distinct !DISubprogram(name: "c_tolower", scope: !1947, file: !1947, line: 337, type: !1948, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !1950)
!1947 = !DIFile(filename: "lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!89, !89}
!1950 = !{!1945}
!1951 = !DILocation(line: 0, scope: !1946, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 37, column: 26, scope: !1936)
!1953 = !DILocation(line: 339, column: 3, scope: !1946, inlinedAt: !1952)
!1954 = !DILocation(line: 0, scope: !1936)
!1955 = !DILocation(line: 38, column: 37, scope: !1936)
!1956 = !DILocation(line: 0, scope: !1946, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 38, column: 26, scope: !1936)
!1958 = !DILocation(line: 339, column: 3, scope: !1946, inlinedAt: !1957)
!1959 = !DILocation(line: 40, column: 11, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1936, file: !1023, line: 40, column: 11)
!1961 = !DILocation(line: 40, column: 14, scope: !1960)
!1962 = !DILocation(line: 40, column: 22, scope: !1960)
!1963 = !DILocation(line: 35, column: 3, scope: !1938)
!1964 = !DILocation(line: 43, column: 23, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !1023, line: 42, column: 15)
!1966 = distinct !DILexicalBlock(scope: !1960, file: !1023, line: 41, column: 9)
!1967 = !DILocation(line: 35, column: 13, scope: !1937)
!1968 = !DILocation(line: 35, column: 19, scope: !1937)
!1969 = distinct !{!1969, !1963, !1970}
!1970 = !DILocation(line: 50, column: 5, scope: !1938)
!1971 = !DILocation(line: 51, column: 1, scope: !1929)
!1972 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !683, file: !683, line: 50, type: !1125, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !1973)
!1973 = !{!1974}
!1974 = !DILocalVariable(name: "file", arg: 1, scope: !1972, file: !683, line: 50, type: !171)
!1975 = !DILocation(line: 0, scope: !1972)
!1976 = !DILocation(line: 52, column: 13, scope: !1972)
!1977 = !DILocation(line: 53, column: 1, scope: !1972)
!1978 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !683, file: !683, line: 87, type: !1979, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !1981)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{null, !112}
!1981 = !{!1982}
!1982 = !DILocalVariable(name: "ignore", arg: 1, scope: !1978, file: !683, line: 87, type: !112)
!1983 = !DILocation(line: 0, scope: !1978)
!1984 = !DILocation(line: 89, column: 16, scope: !1978)
!1985 = !{!1986, !1986, i64 0}
!1986 = !{!"_Bool", !1111, i64 0}
!1987 = !DILocation(line: 90, column: 1, scope: !1978)
!1988 = distinct !DISubprogram(name: "close_stdout", scope: !683, file: !683, line: 116, type: !746, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !1989)
!1989 = !{!1990}
!1990 = !DILocalVariable(name: "write_error", scope: !1991, file: !683, line: 121, type: !171)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !683, line: 120, column: 5)
!1992 = distinct !DILexicalBlock(scope: !1988, file: !683, line: 118, column: 7)
!1993 = !DILocation(line: 118, column: 21, scope: !1992)
!1994 = !DILocation(line: 118, column: 7, scope: !1992)
!1995 = !DILocation(line: 118, column: 29, scope: !1992)
!1996 = !DILocation(line: 119, column: 7, scope: !1992)
!1997 = !DILocation(line: 119, column: 12, scope: !1992)
!1998 = !{i8 0, i8 2}
!1999 = !DILocation(line: 119, column: 25, scope: !1992)
!2000 = !DILocation(line: 119, column: 28, scope: !1992)
!2001 = !DILocation(line: 119, column: 34, scope: !1992)
!2002 = !DILocation(line: 118, column: 7, scope: !1988)
!2003 = !DILocation(line: 121, column: 33, scope: !1991)
!2004 = !DILocation(line: 0, scope: !1991)
!2005 = !DILocation(line: 122, column: 11, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1991, file: !683, line: 122, column: 11)
!2007 = !DILocation(line: 0, scope: !2006)
!2008 = !DILocation(line: 122, column: 11, scope: !1991)
!2009 = !DILocation(line: 123, column: 9, scope: !2006)
!2010 = !DILocation(line: 126, column: 9, scope: !2006)
!2011 = !DILocation(line: 128, column: 14, scope: !1991)
!2012 = !DILocation(line: 128, column: 7, scope: !1991)
!2013 = !DILocation(line: 133, column: 42, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1988, file: !683, line: 133, column: 7)
!2015 = !DILocation(line: 133, column: 28, scope: !2014)
!2016 = !DILocation(line: 133, column: 50, scope: !2014)
!2017 = !DILocation(line: 133, column: 7, scope: !1988)
!2018 = !DILocation(line: 134, column: 12, scope: !2014)
!2019 = !DILocation(line: 134, column: 5, scope: !2014)
!2020 = !DILocation(line: 135, column: 1, scope: !1988)
!2021 = !DISubprogram(name: "_exit", scope: !2022, file: !2022, line: 624, type: !1099, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2022 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2023 = distinct !DISubprogram(name: "verror", scope: !698, file: !698, line: 251, type: !2024, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !2026)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{null, !89, !89, !171, !708}
!2026 = !{!2027, !2028, !2029, !2030}
!2027 = !DILocalVariable(name: "status", arg: 1, scope: !2023, file: !698, line: 251, type: !89)
!2028 = !DILocalVariable(name: "errnum", arg: 2, scope: !2023, file: !698, line: 251, type: !89)
!2029 = !DILocalVariable(name: "message", arg: 3, scope: !2023, file: !698, line: 251, type: !171)
!2030 = !DILocalVariable(name: "args", arg: 4, scope: !2023, file: !698, line: 251, type: !708)
!2031 = !DILocation(line: 0, scope: !2023)
!2032 = !DILocation(line: 261, column: 3, scope: !2023)
!2033 = !DILocation(line: 265, column: 7, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2023, file: !698, line: 265, column: 7)
!2035 = !DILocation(line: 265, column: 7, scope: !2023)
!2036 = !DILocation(line: 266, column: 5, scope: !2034)
!2037 = !DILocation(line: 272, column: 7, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2034, file: !698, line: 268, column: 5)
!2039 = !DILocation(line: 276, column: 3, scope: !2023)
!2040 = !{i64 0, i64 8, !1109, i64 8, i64 8, !1109, i64 16, i64 8, !1109, i64 24, i64 4, !1174, i64 28, i64 4, !1174}
!2041 = !DILocation(line: 282, column: 1, scope: !2023)
!2042 = distinct !DISubprogram(name: "flush_stdout", scope: !698, file: !698, line: 163, type: !746, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !2043)
!2043 = !{!2044}
!2044 = !DILocalVariable(name: "stdout_fd", scope: !2042, file: !698, line: 166, type: !89)
!2045 = !DILocation(line: 0, scope: !2042)
!2046 = !DILocalVariable(name: "fd", arg: 1, scope: !2047, file: !698, line: 145, type: !89)
!2047 = distinct !DISubprogram(name: "is_open", scope: !698, file: !698, line: 145, type: !1948, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !2048)
!2048 = !{!2046}
!2049 = !DILocation(line: 0, scope: !2047, inlinedAt: !2050)
!2050 = distinct !DILocation(line: 182, column: 25, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2042, file: !698, line: 182, column: 7)
!2052 = !DILocation(line: 157, column: 15, scope: !2047, inlinedAt: !2050)
!2053 = !DILocation(line: 157, column: 12, scope: !2047, inlinedAt: !2050)
!2054 = !DILocation(line: 182, column: 7, scope: !2042)
!2055 = !DILocation(line: 184, column: 5, scope: !2051)
!2056 = !DILocation(line: 185, column: 1, scope: !2042)
!2057 = distinct !DISubprogram(name: "error_tail", scope: !698, file: !698, line: 219, type: !2024, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !2058)
!2058 = !{!2059, !2060, !2061, !2062}
!2059 = !DILocalVariable(name: "status", arg: 1, scope: !2057, file: !698, line: 219, type: !89)
!2060 = !DILocalVariable(name: "errnum", arg: 2, scope: !2057, file: !698, line: 219, type: !89)
!2061 = !DILocalVariable(name: "message", arg: 3, scope: !2057, file: !698, line: 219, type: !171)
!2062 = !DILocalVariable(name: "args", arg: 4, scope: !2057, file: !698, line: 219, type: !708)
!2063 = distinct !DIAssignID()
!2064 = !DILocation(line: 0, scope: !2057)
!2065 = !DILocation(line: 229, column: 13, scope: !2057)
!2066 = !DILocation(line: 135, column: 10, scope: !2067, inlinedAt: !2109)
!2067 = distinct !DISubprogram(name: "vfprintf", scope: !1161, file: !1161, line: 132, type: !2068, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !2105)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!89, !2070, !1165, !710}
!2070 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2071)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !2073)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !2074)
!2074 = !{!2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2073, file: !117, line: 51, baseType: !89, size: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2073, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2073, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2073, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2073, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2073, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2073, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2073, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2073, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2073, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2073, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2073, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2073, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2073, file: !117, line: 70, baseType: !2089, size: 64, offset: 832)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2073, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2073, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2073, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2073, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2073, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2073, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2073, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2073, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2073, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2073, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2073, file: !117, line: 93, baseType: !2089, size: 64, offset: 1344)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2073, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2073, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2073, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2073, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!2105 = !{!2106, !2107, !2108}
!2106 = !DILocalVariable(name: "__stream", arg: 1, scope: !2067, file: !1161, line: 132, type: !2070)
!2107 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2067, file: !1161, line: 133, type: !1165)
!2108 = !DILocalVariable(name: "__ap", arg: 3, scope: !2067, file: !1161, line: 133, type: !710)
!2109 = distinct !DILocation(line: 229, column: 3, scope: !2057)
!2110 = !{!2111, !2113}
!2111 = distinct !{!2111, !2112, !"vfprintf.inline: argument 0"}
!2112 = distinct !{!2112, !"vfprintf.inline"}
!2113 = distinct !{!2113, !2112, !"vfprintf.inline: argument 1"}
!2114 = !DILocation(line: 229, column: 3, scope: !2057)
!2115 = !DILocation(line: 0, scope: !2067, inlinedAt: !2109)
!2116 = !DILocation(line: 232, column: 3, scope: !2057)
!2117 = !DILocation(line: 233, column: 7, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2057, file: !698, line: 233, column: 7)
!2119 = !DILocation(line: 233, column: 7, scope: !2057)
!2120 = !DILocalVariable(name: "errbuf", scope: !2121, file: !698, line: 193, type: !2125)
!2121 = distinct !DISubprogram(name: "print_errno_message", scope: !698, file: !698, line: 188, type: !1099, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !2122)
!2122 = !{!2123, !2124, !2120}
!2123 = !DILocalVariable(name: "errnum", arg: 1, scope: !2121, file: !698, line: 188, type: !89)
!2124 = !DILocalVariable(name: "s", scope: !2121, file: !698, line: 190, type: !171)
!2125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2126)
!2126 = !{!2127}
!2127 = !DISubrange(count: 1024)
!2128 = !DILocation(line: 0, scope: !2121, inlinedAt: !2129)
!2129 = distinct !DILocation(line: 234, column: 5, scope: !2118)
!2130 = !DILocation(line: 193, column: 3, scope: !2121, inlinedAt: !2129)
!2131 = !DILocation(line: 195, column: 7, scope: !2121, inlinedAt: !2129)
!2132 = !DILocation(line: 207, column: 9, scope: !2133, inlinedAt: !2129)
!2133 = distinct !DILexicalBlock(scope: !2121, file: !698, line: 207, column: 7)
!2134 = !DILocation(line: 207, column: 7, scope: !2121, inlinedAt: !2129)
!2135 = !DILocation(line: 208, column: 9, scope: !2133, inlinedAt: !2129)
!2136 = !DILocation(line: 208, column: 5, scope: !2133, inlinedAt: !2129)
!2137 = !DILocation(line: 214, column: 3, scope: !2121, inlinedAt: !2129)
!2138 = !DILocation(line: 216, column: 1, scope: !2121, inlinedAt: !2129)
!2139 = !DILocation(line: 234, column: 5, scope: !2118)
!2140 = !DILocation(line: 238, column: 3, scope: !2057)
!2141 = !DILocalVariable(name: "__c", arg: 1, scope: !2142, file: !1544, line: 101, type: !89)
!2142 = distinct !DISubprogram(name: "putc_unlocked", scope: !1544, file: !1544, line: 101, type: !2143, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !2145)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!89, !89, !2071}
!2145 = !{!2141, !2146}
!2146 = !DILocalVariable(name: "__stream", arg: 2, scope: !2142, file: !1544, line: 101, type: !2071)
!2147 = !DILocation(line: 0, scope: !2142, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 238, column: 3, scope: !2057)
!2149 = !DILocation(line: 103, column: 10, scope: !2142, inlinedAt: !2148)
!2150 = !{!1570, !1110, i64 40}
!2151 = !{!1570, !1110, i64 48}
!2152 = !{!"branch_weights", i32 2000, i32 1}
!2153 = !DILocation(line: 240, column: 3, scope: !2057)
!2154 = !DILocation(line: 241, column: 7, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2057, file: !698, line: 241, column: 7)
!2156 = !DILocation(line: 241, column: 7, scope: !2057)
!2157 = !DILocation(line: 242, column: 5, scope: !2155)
!2158 = !DILocation(line: 243, column: 1, scope: !2057)
!2159 = !DISubprogram(name: "__vfprintf_chk", scope: !1161, file: !1161, line: 96, type: !2160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!89, !2070, !89, !1165, !710}
!2162 = !DISubprogram(name: "strerror_r", scope: !1291, file: !1291, line: 444, type: !2163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!121, !89, !121, !163}
!2165 = !DISubprogram(name: "__overflow", scope: !709, file: !709, line: 886, type: !2166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!89, !2071, !89}
!2168 = !DISubprogram(name: "fflush_unlocked", scope: !709, file: !709, line: 239, type: !2169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!89, !2071}
!2171 = !DISubprogram(name: "fcntl", scope: !2172, file: !2172, line: 149, type: !2173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2172 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!89, !89, !89, null}
!2175 = distinct !DISubprogram(name: "error", scope: !698, file: !698, line: 285, type: !2176, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !2178)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{null, !89, !89, !171, null}
!2178 = !{!2179, !2180, !2181, !2182}
!2179 = !DILocalVariable(name: "status", arg: 1, scope: !2175, file: !698, line: 285, type: !89)
!2180 = !DILocalVariable(name: "errnum", arg: 2, scope: !2175, file: !698, line: 285, type: !89)
!2181 = !DILocalVariable(name: "message", arg: 3, scope: !2175, file: !698, line: 285, type: !171)
!2182 = !DILocalVariable(name: "ap", scope: !2175, file: !698, line: 287, type: !708)
!2183 = distinct !DIAssignID()
!2184 = !DILocation(line: 0, scope: !2175)
!2185 = !DILocation(line: 287, column: 3, scope: !2175)
!2186 = !DILocation(line: 288, column: 3, scope: !2175)
!2187 = !DILocation(line: 289, column: 3, scope: !2175)
!2188 = !DILocation(line: 290, column: 3, scope: !2175)
!2189 = !DILocation(line: 291, column: 1, scope: !2175)
!2190 = !DILocation(line: 0, scope: !705)
!2191 = !DILocation(line: 302, column: 7, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !705, file: !698, line: 302, column: 7)
!2193 = !DILocation(line: 302, column: 7, scope: !705)
!2194 = !DILocation(line: 307, column: 11, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !698, line: 307, column: 11)
!2196 = distinct !DILexicalBlock(scope: !2192, file: !698, line: 303, column: 5)
!2197 = !DILocation(line: 307, column: 27, scope: !2195)
!2198 = !DILocation(line: 308, column: 11, scope: !2195)
!2199 = !DILocation(line: 308, column: 28, scope: !2195)
!2200 = !DILocation(line: 308, column: 25, scope: !2195)
!2201 = !DILocation(line: 309, column: 15, scope: !2195)
!2202 = !DILocation(line: 309, column: 33, scope: !2195)
!2203 = !DILocation(line: 310, column: 19, scope: !2195)
!2204 = !DILocation(line: 311, column: 22, scope: !2195)
!2205 = !DILocation(line: 311, column: 56, scope: !2195)
!2206 = !DILocation(line: 307, column: 11, scope: !2196)
!2207 = !DILocation(line: 316, column: 21, scope: !2196)
!2208 = !DILocation(line: 317, column: 23, scope: !2196)
!2209 = !DILocation(line: 318, column: 5, scope: !2196)
!2210 = !DILocation(line: 327, column: 3, scope: !705)
!2211 = !DILocation(line: 331, column: 7, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !705, file: !698, line: 331, column: 7)
!2213 = !DILocation(line: 331, column: 7, scope: !705)
!2214 = !DILocation(line: 332, column: 5, scope: !2212)
!2215 = !DILocation(line: 338, column: 7, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2212, file: !698, line: 334, column: 5)
!2217 = !DILocation(line: 346, column: 3, scope: !705)
!2218 = !DILocation(line: 350, column: 3, scope: !705)
!2219 = !DILocation(line: 356, column: 1, scope: !705)
!2220 = distinct !DISubprogram(name: "error_at_line", scope: !698, file: !698, line: 359, type: !2221, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !2223)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{null, !89, !89, !171, !79, !171, null}
!2223 = !{!2224, !2225, !2226, !2227, !2228, !2229}
!2224 = !DILocalVariable(name: "status", arg: 1, scope: !2220, file: !698, line: 359, type: !89)
!2225 = !DILocalVariable(name: "errnum", arg: 2, scope: !2220, file: !698, line: 359, type: !89)
!2226 = !DILocalVariable(name: "file_name", arg: 3, scope: !2220, file: !698, line: 359, type: !171)
!2227 = !DILocalVariable(name: "line_number", arg: 4, scope: !2220, file: !698, line: 360, type: !79)
!2228 = !DILocalVariable(name: "message", arg: 5, scope: !2220, file: !698, line: 360, type: !171)
!2229 = !DILocalVariable(name: "ap", scope: !2220, file: !698, line: 362, type: !708)
!2230 = distinct !DIAssignID()
!2231 = !DILocation(line: 0, scope: !2220)
!2232 = !DILocation(line: 362, column: 3, scope: !2220)
!2233 = !DILocation(line: 363, column: 3, scope: !2220)
!2234 = !DILocation(line: 364, column: 3, scope: !2220)
!2235 = !DILocation(line: 366, column: 3, scope: !2220)
!2236 = !DILocation(line: 367, column: 1, scope: !2220)
!2237 = distinct !DISubprogram(name: "rpl_fclose", scope: !1028, file: !1028, line: 58, type: !2238, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !2274)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!89, !2240}
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !2242)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !2243)
!2243 = !{!2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2242, file: !117, line: 51, baseType: !89, size: 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2242, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2242, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2242, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2242, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2242, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2242, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2242, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2242, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2242, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2242, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2242, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2242, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2242, file: !117, line: 70, baseType: !2258, size: 64, offset: 832)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2242, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2242, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2242, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2242, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2242, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2242, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2242, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2242, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2242, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2242, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2242, file: !117, line: 93, baseType: !2258, size: 64, offset: 1344)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2242, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2242, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2242, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2242, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!2274 = !{!2275, !2276, !2277, !2278}
!2275 = !DILocalVariable(name: "fp", arg: 1, scope: !2237, file: !1028, line: 58, type: !2240)
!2276 = !DILocalVariable(name: "saved_errno", scope: !2237, file: !1028, line: 60, type: !89)
!2277 = !DILocalVariable(name: "fd", scope: !2237, file: !1028, line: 63, type: !89)
!2278 = !DILocalVariable(name: "result", scope: !2237, file: !1028, line: 74, type: !89)
!2279 = !DILocation(line: 0, scope: !2237)
!2280 = !DILocation(line: 63, column: 12, scope: !2237)
!2281 = !DILocation(line: 64, column: 10, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2237, file: !1028, line: 64, column: 7)
!2283 = !DILocation(line: 64, column: 7, scope: !2237)
!2284 = !DILocation(line: 65, column: 12, scope: !2282)
!2285 = !DILocation(line: 65, column: 5, scope: !2282)
!2286 = !DILocation(line: 70, column: 9, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2237, file: !1028, line: 70, column: 7)
!2288 = !DILocation(line: 70, column: 23, scope: !2287)
!2289 = !DILocation(line: 70, column: 33, scope: !2287)
!2290 = !DILocation(line: 70, column: 26, scope: !2287)
!2291 = !DILocation(line: 70, column: 59, scope: !2287)
!2292 = !DILocation(line: 71, column: 7, scope: !2287)
!2293 = !DILocation(line: 71, column: 10, scope: !2287)
!2294 = !DILocation(line: 70, column: 7, scope: !2237)
!2295 = !DILocation(line: 100, column: 12, scope: !2237)
!2296 = !DILocation(line: 105, column: 7, scope: !2237)
!2297 = !DILocation(line: 72, column: 19, scope: !2287)
!2298 = !DILocation(line: 105, column: 19, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2237, file: !1028, line: 105, column: 7)
!2300 = !DILocation(line: 107, column: 13, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2299, file: !1028, line: 106, column: 5)
!2302 = !DILocation(line: 109, column: 5, scope: !2301)
!2303 = !DILocation(line: 112, column: 1, scope: !2237)
!2304 = !DISubprogram(name: "fileno", scope: !709, file: !709, line: 809, type: !2238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2305 = !DISubprogram(name: "fclose", scope: !709, file: !709, line: 178, type: !2238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2306 = !DISubprogram(name: "__freading", scope: !2307, file: !2307, line: 51, type: !2238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2307 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2308 = !DISubprogram(name: "lseek", scope: !2022, file: !2022, line: 339, type: !2309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!140, !89, !140, !89}
!2311 = distinct !DISubprogram(name: "rpl_fflush", scope: !1030, file: !1030, line: 130, type: !2312, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1029, retainedNodes: !2348)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!89, !2314}
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !2316)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !2317)
!2317 = !{!2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2316, file: !117, line: 51, baseType: !89, size: 32)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2316, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2316, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2316, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2316, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2316, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2316, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2316, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2316, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2316, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2316, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2316, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2316, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2316, file: !117, line: 70, baseType: !2332, size: 64, offset: 832)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2316, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2316, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2316, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2316, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2316, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2316, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2316, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2316, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2316, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2316, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2316, file: !117, line: 93, baseType: !2332, size: 64, offset: 1344)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2316, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2316, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2316, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2316, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!2348 = !{!2349}
!2349 = !DILocalVariable(name: "stream", arg: 1, scope: !2311, file: !1030, line: 130, type: !2314)
!2350 = !DILocation(line: 0, scope: !2311)
!2351 = !DILocation(line: 151, column: 14, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2311, file: !1030, line: 151, column: 7)
!2353 = !DILocation(line: 151, column: 22, scope: !2352)
!2354 = !DILocation(line: 151, column: 27, scope: !2352)
!2355 = !DILocation(line: 151, column: 7, scope: !2311)
!2356 = !DILocation(line: 152, column: 12, scope: !2352)
!2357 = !DILocation(line: 152, column: 5, scope: !2352)
!2358 = !DILocalVariable(name: "fp", arg: 1, scope: !2359, file: !1030, line: 42, type: !2314)
!2359 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1030, file: !1030, line: 42, type: !2360, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1029, retainedNodes: !2362)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{null, !2314}
!2362 = !{!2358}
!2363 = !DILocation(line: 0, scope: !2359, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 157, column: 3, scope: !2311)
!2365 = !DILocation(line: 44, column: 12, scope: !2366, inlinedAt: !2364)
!2366 = distinct !DILexicalBlock(scope: !2359, file: !1030, line: 44, column: 7)
!2367 = !DILocation(line: 44, column: 19, scope: !2366, inlinedAt: !2364)
!2368 = !DILocation(line: 44, column: 7, scope: !2359, inlinedAt: !2364)
!2369 = !DILocation(line: 46, column: 5, scope: !2366, inlinedAt: !2364)
!2370 = !DILocation(line: 159, column: 10, scope: !2311)
!2371 = !DILocation(line: 159, column: 3, scope: !2311)
!2372 = !DILocation(line: 236, column: 1, scope: !2311)
!2373 = !DISubprogram(name: "fflush", scope: !709, file: !709, line: 230, type: !2312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2374 = distinct !DISubprogram(name: "freopen_safer", scope: !750, file: !750, line: 60, type: !2375, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2411)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!2377, !171, !171, !2377}
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !2379)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !2380)
!2380 = !{!2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2379, file: !117, line: 51, baseType: !89, size: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2379, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2379, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2379, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2379, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2379, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2379, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2379, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2379, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2379, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2379, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2379, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2379, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2379, file: !117, line: 70, baseType: !2395, size: 64, offset: 832)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2379, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2379, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2379, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2379, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2379, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2379, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2379, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2379, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2379, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2379, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2379, file: !117, line: 93, baseType: !2395, size: 64, offset: 1344)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2379, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2379, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2379, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2379, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!2411 = !{!2412, !2413, !2414, !2415, !2416, !2417, !2418}
!2412 = !DILocalVariable(name: "name", arg: 1, scope: !2374, file: !750, line: 60, type: !171)
!2413 = !DILocalVariable(name: "mode", arg: 2, scope: !2374, file: !750, line: 60, type: !171)
!2414 = !DILocalVariable(name: "f", arg: 3, scope: !2374, file: !750, line: 60, type: !2377)
!2415 = !DILocalVariable(name: "protect_in", scope: !2374, file: !750, line: 68, type: !112)
!2416 = !DILocalVariable(name: "protect_out", scope: !2374, file: !750, line: 69, type: !112)
!2417 = !DILocalVariable(name: "protect_err", scope: !2374, file: !750, line: 70, type: !112)
!2418 = !DILocalVariable(name: "saved_errno", scope: !2374, file: !750, line: 98, type: !89)
!2419 = !DILocation(line: 0, scope: !2374)
!2420 = !DILocation(line: 72, column: 11, scope: !2374)
!2421 = !DILocation(line: 72, column: 3, scope: !2374)
!2422 = !DILocation(line: 75, column: 11, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !750, line: 75, column: 11)
!2424 = distinct !DILexicalBlock(scope: !2374, file: !750, line: 73, column: 5)
!2425 = !DILocation(line: 75, column: 47, scope: !2423)
!2426 = !DILocation(line: 75, column: 11, scope: !2424)
!2427 = !DILocation(line: 79, column: 11, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2424, file: !750, line: 79, column: 11)
!2429 = !DILocation(line: 79, column: 47, scope: !2428)
!2430 = !DILocation(line: 79, column: 11, scope: !2424)
!2431 = !DILocation(line: 83, column: 11, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2424, file: !750, line: 83, column: 11)
!2433 = !DILocation(line: 83, column: 45, scope: !2432)
!2434 = !DILocation(line: 90, column: 18, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2374, file: !750, line: 90, column: 7)
!2436 = !DILocalVariable(name: "fd", arg: 1, scope: !2437, file: !750, line: 38, type: !89)
!2437 = distinct !DISubprogram(name: "protect_fd", scope: !750, file: !750, line: 38, type: !1610, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2438)
!2438 = !{!2436, !2439}
!2439 = !DILocalVariable(name: "value", scope: !2437, file: !750, line: 40, type: !89)
!2440 = !DILocation(line: 0, scope: !2437, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 90, column: 22, scope: !2435)
!2442 = !DILocation(line: 40, column: 15, scope: !2437, inlinedAt: !2441)
!2443 = !DILocation(line: 41, column: 7, scope: !2437, inlinedAt: !2441)
!2444 = !DILocation(line: 45, column: 11, scope: !2445, inlinedAt: !2441)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !750, line: 44, column: 9)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !750, line: 43, column: 11)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !750, line: 42, column: 5)
!2448 = distinct !DILexicalBlock(scope: !2437, file: !750, line: 41, column: 7)
!2449 = !DILocation(line: 46, column: 11, scope: !2445, inlinedAt: !2441)
!2450 = !DILocation(line: 46, column: 17, scope: !2445, inlinedAt: !2441)
!2451 = !DILocation(line: 99, column: 7, scope: !2374)
!2452 = !DILocation(line: 41, column: 13, scope: !2448, inlinedAt: !2441)
!2453 = !DILocation(line: 90, column: 7, scope: !2374)
!2454 = !DILocation(line: 92, column: 24, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2435, file: !750, line: 92, column: 12)
!2456 = !DILocation(line: 0, scope: !2437, inlinedAt: !2457)
!2457 = distinct !DILocation(line: 92, column: 28, scope: !2455)
!2458 = !DILocation(line: 40, column: 15, scope: !2437, inlinedAt: !2457)
!2459 = !DILocation(line: 41, column: 13, scope: !2448, inlinedAt: !2457)
!2460 = !DILocation(line: 41, column: 7, scope: !2437, inlinedAt: !2457)
!2461 = !DILocation(line: 45, column: 11, scope: !2445, inlinedAt: !2457)
!2462 = !DILocation(line: 46, column: 11, scope: !2445, inlinedAt: !2457)
!2463 = !DILocation(line: 46, column: 17, scope: !2445, inlinedAt: !2457)
!2464 = !DILocation(line: 47, column: 9, scope: !2445, inlinedAt: !2457)
!2465 = !DILocation(line: 92, column: 12, scope: !2435)
!2466 = !DILocation(line: 94, column: 24, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2455, file: !750, line: 94, column: 12)
!2468 = !DILocation(line: 0, scope: !2437, inlinedAt: !2469)
!2469 = distinct !DILocation(line: 94, column: 28, scope: !2467)
!2470 = !DILocation(line: 40, column: 15, scope: !2437, inlinedAt: !2469)
!2471 = !DILocation(line: 41, column: 13, scope: !2448, inlinedAt: !2469)
!2472 = !DILocation(line: 41, column: 7, scope: !2437, inlinedAt: !2469)
!2473 = !DILocation(line: 45, column: 11, scope: !2445, inlinedAt: !2469)
!2474 = !DILocation(line: 46, column: 11, scope: !2445, inlinedAt: !2469)
!2475 = !DILocation(line: 46, column: 17, scope: !2445, inlinedAt: !2469)
!2476 = !DILocation(line: 47, column: 9, scope: !2445, inlinedAt: !2469)
!2477 = !DILocation(line: 94, column: 12, scope: !2455)
!2478 = !DILocation(line: 98, column: 21, scope: !2374)
!2479 = !DILocation(line: 100, column: 5, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2374, file: !750, line: 99, column: 7)
!2481 = !DILocation(line: 101, column: 7, scope: !2374)
!2482 = !DILocation(line: 97, column: 9, scope: !2467)
!2483 = !DILocation(line: 102, column: 5, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2374, file: !750, line: 101, column: 7)
!2485 = !DILocation(line: 103, column: 7, scope: !2374)
!2486 = !DILocation(line: 104, column: 5, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2374, file: !750, line: 103, column: 7)
!2488 = !DILocation(line: 105, column: 8, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2374, file: !750, line: 105, column: 7)
!2490 = !DILocation(line: 105, column: 7, scope: !2374)
!2491 = !DILocation(line: 106, column: 11, scope: !2489)
!2492 = !DILocation(line: 106, column: 5, scope: !2489)
!2493 = !DILocation(line: 107, column: 3, scope: !2374)
!2494 = !DISubprogram(name: "dup2", scope: !2022, file: !2022, line: 555, type: !2495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!89, !89, !89}
!2497 = !DISubprogram(name: "open", scope: !2172, file: !2172, line: 181, type: !2498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!89, !171, !89, null}
!2500 = !DISubprogram(name: "close", scope: !2022, file: !2022, line: 358, type: !1948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2501 = !DISubprogram(name: "freopen", scope: !709, file: !709, line: 265, type: !2502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!2377, !1165, !1165, !2504}
!2504 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2377)
!2505 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1035, file: !1035, line: 28, type: !2506, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !2543)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!89, !2508, !2542, !89}
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !2510)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !2511)
!2511 = !{!2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2510, file: !117, line: 51, baseType: !89, size: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2510, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2510, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2510, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2510, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2510, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2510, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2510, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2510, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2510, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2510, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2510, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2510, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2510, file: !117, line: 70, baseType: !2526, size: 64, offset: 832)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2510, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2510, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2510, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2510, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2510, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2510, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2510, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2510, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2510, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2510, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2510, file: !117, line: 93, baseType: !2526, size: 64, offset: 1344)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2510, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2510, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2510, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2510, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!2542 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !709, line: 63, baseType: !140)
!2543 = !{!2544, !2545, !2546, !2547}
!2544 = !DILocalVariable(name: "fp", arg: 1, scope: !2505, file: !1035, line: 28, type: !2508)
!2545 = !DILocalVariable(name: "offset", arg: 2, scope: !2505, file: !1035, line: 28, type: !2542)
!2546 = !DILocalVariable(name: "whence", arg: 3, scope: !2505, file: !1035, line: 28, type: !89)
!2547 = !DILocalVariable(name: "pos", scope: !2548, file: !1035, line: 123, type: !2542)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !1035, line: 119, column: 5)
!2549 = distinct !DILexicalBlock(scope: !2505, file: !1035, line: 55, column: 7)
!2550 = !DILocation(line: 0, scope: !2505)
!2551 = !DILocation(line: 55, column: 12, scope: !2549)
!2552 = !{!1570, !1110, i64 16}
!2553 = !DILocation(line: 55, column: 33, scope: !2549)
!2554 = !{!1570, !1110, i64 8}
!2555 = !DILocation(line: 55, column: 25, scope: !2549)
!2556 = !DILocation(line: 56, column: 7, scope: !2549)
!2557 = !DILocation(line: 56, column: 15, scope: !2549)
!2558 = !DILocation(line: 56, column: 37, scope: !2549)
!2559 = !{!1570, !1110, i64 32}
!2560 = !DILocation(line: 56, column: 29, scope: !2549)
!2561 = !DILocation(line: 57, column: 7, scope: !2549)
!2562 = !DILocation(line: 57, column: 15, scope: !2549)
!2563 = !{!1570, !1110, i64 72}
!2564 = !DILocation(line: 57, column: 29, scope: !2549)
!2565 = !DILocation(line: 55, column: 7, scope: !2505)
!2566 = !DILocation(line: 123, column: 26, scope: !2548)
!2567 = !DILocation(line: 123, column: 19, scope: !2548)
!2568 = !DILocation(line: 0, scope: !2548)
!2569 = !DILocation(line: 124, column: 15, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2548, file: !1035, line: 124, column: 11)
!2571 = !DILocation(line: 124, column: 11, scope: !2548)
!2572 = !DILocation(line: 135, column: 19, scope: !2548)
!2573 = !DILocation(line: 136, column: 12, scope: !2548)
!2574 = !DILocation(line: 136, column: 20, scope: !2548)
!2575 = !{!1570, !1477, i64 144}
!2576 = !DILocation(line: 167, column: 7, scope: !2548)
!2577 = !DILocation(line: 169, column: 10, scope: !2505)
!2578 = !DILocation(line: 169, column: 3, scope: !2505)
!2579 = !DILocation(line: 170, column: 1, scope: !2505)
!2580 = !DISubprogram(name: "fseeko", scope: !709, file: !709, line: 736, type: !2581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!89, !2508, !140, !89}
!2583 = distinct !DISubprogram(name: "getprogname", scope: !1037, file: !1037, line: 54, type: !2584, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1036)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!171}
!2586 = !DILocation(line: 58, column: 10, scope: !2583)
!2587 = !DILocation(line: 58, column: 3, scope: !2583)
!2588 = distinct !DISubprogram(name: "print_and_abort", scope: !754, file: !754, line: 343, type: !746, scopeLine: 344, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !753)
!2589 = !DILocation(line: 353, column: 3, scope: !2588)
!2590 = !DILocation(line: 355, column: 9, scope: !2588)
!2591 = !DILocation(line: 355, column: 3, scope: !2588)
!2592 = distinct !DISubprogram(name: "rpl_obstack_begin", scope: !754, file: !754, line: 161, type: !2593, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !2630)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!89, !2595, !163, !163, !305, !316}
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !2597, line: 210, size: 704, elements: !2598)
!2597 = !DIFile(filename: "lib/obstack.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8dc5712d9cd0944565da172aee39448c")
!2598 = !{!2599, !2600, !2607, !2608, !2609, !2610, !2615, !2616, !2621, !2626, !2627, !2628, !2629}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !2596, file: !2597, line: 212, baseType: !163, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !2596, file: !2597, line: 213, baseType: !2601, size: 64, offset: 64)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !2597, line: 203, size: 128, elements: !2603)
!2603 = !{!2604, !2605, !2606}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !2602, file: !2597, line: 205, baseType: !121, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2602, file: !2597, line: 206, baseType: !2601, size: 64, offset: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !2602, file: !2597, line: 207, baseType: !289, offset: 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !2596, file: !2597, line: 214, baseType: !121, size: 64, offset: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !2596, file: !2597, line: 215, baseType: !121, size: 64, offset: 192)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !2596, file: !2597, line: 216, baseType: !121, size: 64, offset: 256)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2596, file: !2597, line: 221, baseType: !2611, size: 64, offset: 320)
!2611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2596, file: !2597, line: 217, size: 64, elements: !2612)
!2612 = !{!2613, !2614}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "tempint", scope: !2611, file: !2597, line: 219, baseType: !163, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "tempptr", scope: !2611, file: !2597, line: 220, baseType: !161, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !2596, file: !2597, line: 222, baseType: !163, size: 64, offset: 384)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !2596, file: !2597, line: 229, baseType: !2617, size: 64, offset: 448)
!2617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2596, file: !2597, line: 225, size: 64, elements: !2618)
!2618 = !{!2619, !2620}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !2617, file: !2597, line: 227, baseType: !305, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !2617, file: !2597, line: 228, baseType: !309, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !2596, file: !2597, line: 234, baseType: !2622, size: 64, offset: 512)
!2622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2596, file: !2597, line: 230, size: 64, elements: !2623)
!2623 = !{!2624, !2625}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !2622, file: !2597, line: 232, baseType: !316, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !2622, file: !2597, line: 233, baseType: !320, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !2596, file: !2597, line: 236, baseType: !161, size: 64, offset: 576)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !2596, file: !2597, line: 237, baseType: !79, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !2596, file: !2597, line: 238, baseType: !79, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !2596, file: !2597, line: 242, baseType: !79, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!2630 = !{!2631, !2632, !2633, !2634, !2635}
!2631 = !DILocalVariable(name: "h", arg: 1, scope: !2592, file: !754, line: 161, type: !2595)
!2632 = !DILocalVariable(name: "size", arg: 2, scope: !2592, file: !754, line: 162, type: !163)
!2633 = !DILocalVariable(name: "alignment", arg: 3, scope: !2592, file: !754, line: 162, type: !163)
!2634 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !2592, file: !754, line: 163, type: !305)
!2635 = !DILocalVariable(name: "freefun", arg: 5, scope: !2592, file: !754, line: 164, type: !316)
!2636 = !DILocation(line: 0, scope: !2592)
!2637 = !DILocation(line: 166, column: 6, scope: !2592)
!2638 = !DILocation(line: 166, column: 21, scope: !2592)
!2639 = !DILocation(line: 167, column: 6, scope: !2592)
!2640 = !DILocation(line: 167, column: 20, scope: !2592)
!2641 = !DILocation(line: 168, column: 6, scope: !2592)
!2642 = !DILocation(line: 168, column: 20, scope: !2592)
!2643 = !DILocalVariable(name: "h", arg: 1, scope: !2644, file: !754, line: 114, type: !2595)
!2644 = distinct !DISubprogram(name: "_obstack_begin_worker", scope: !754, file: !754, line: 114, type: !2645, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !2647)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!89, !2595, !163, !163}
!2647 = !{!2643, !2648, !2649, !2650, !2651, !2652, !2653, !2654}
!2648 = !DILocalVariable(name: "chunk_size", arg: 2, scope: !2644, file: !754, line: 115, type: !163)
!2649 = !DILocalVariable(name: "alignment", arg: 3, scope: !2644, file: !754, line: 115, type: !163)
!2650 = !DILocalVariable(name: "chunk", scope: !2644, file: !754, line: 117, type: !2601)
!2651 = !DILocalVariable(name: "aligned_prefix_size", scope: !2644, file: !754, line: 127, type: !163)
!2652 = !DILocalVariable(name: "v", scope: !2644, file: !754, line: 128, type: !112)
!2653 = !DILocalVariable(name: "size", scope: !2644, file: !754, line: 131, type: !163)
!2654 = !DILocalVariable(name: "good_size", scope: !2655, file: !754, line: 137, type: !89)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !754, line: 133, column: 5)
!2656 = distinct !DILexicalBlock(scope: !2644, file: !754, line: 132, column: 7)
!2657 = !DILocation(line: 0, scope: !2644, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 169, column: 10, scope: !2592)
!2659 = !DILocation(line: 119, column: 17, scope: !2660, inlinedAt: !2658)
!2660 = distinct !DILexicalBlock(scope: !2644, file: !754, line: 119, column: 7)
!2661 = !DILocation(line: 128, column: 65, scope: !2644, inlinedAt: !2658)
!2662 = !DILocalVariable(name: "r", arg: 1, scope: !2663, file: !754, line: 78, type: !1051)
!2663 = distinct !DISubprogram(name: "align_chunk_size_up", scope: !754, file: !754, line: 78, type: !2664, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !2666)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!112, !1051, !163, !163}
!2666 = !{!2662, !2667, !2668}
!2667 = !DILocalVariable(name: "mask", arg: 2, scope: !2663, file: !754, line: 78, type: !163)
!2668 = !DILocalVariable(name: "size", arg: 3, scope: !2663, file: !754, line: 79, type: !163)
!2669 = !DILocation(line: 0, scope: !2663, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 128, column: 12, scope: !2644, inlinedAt: !2658)
!2671 = !DILocation(line: 81, column: 10, scope: !2663, inlinedAt: !2670)
!2672 = !DILocation(line: 132, column: 12, scope: !2656, inlinedAt: !2658)
!2673 = !DILocation(line: 132, column: 7, scope: !2644, inlinedAt: !2658)
!2674 = !DILocation(line: 142, column: 17, scope: !2644, inlinedAt: !2658)
!2675 = !{!1476, !1477, i64 0}
!2676 = !DILocation(line: 143, column: 6, scope: !2644, inlinedAt: !2658)
!2677 = !DILocation(line: 143, column: 21, scope: !2644, inlinedAt: !2658)
!2678 = !DILocation(line: 145, column: 22, scope: !2644, inlinedAt: !2658)
!2679 = !DILocation(line: 145, column: 14, scope: !2644, inlinedAt: !2658)
!2680 = !DILocation(line: 145, column: 20, scope: !2644, inlinedAt: !2658)
!2681 = !{!1476, !1110, i64 8}
!2682 = !DILocation(line: 146, column: 7, scope: !2644, inlinedAt: !2658)
!2683 = !DILocalVariable(name: "h", arg: 1, scope: !2684, file: !754, line: 89, type: !2595)
!2684 = distinct !DISubprogram(name: "call_chunkfun", scope: !754, file: !754, line: 89, type: !2685, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !2687)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!161, !2595, !163}
!2687 = !{!2683, !2688}
!2688 = !DILocalVariable(name: "size", arg: 2, scope: !2684, file: !754, line: 89, type: !163)
!2689 = !DILocation(line: 0, scope: !2684, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 145, column: 33, scope: !2644, inlinedAt: !2658)
!2691 = !DILocation(line: 94, column: 12, scope: !2692, inlinedAt: !2690)
!2692 = distinct !DILexicalBlock(scope: !2684, file: !754, line: 91, column: 7)
!2693 = !DILocation(line: 146, column: 8, scope: !2694, inlinedAt: !2658)
!2694 = distinct !DILexicalBlock(scope: !2644, file: !754, line: 146, column: 7)
!2695 = !DILocation(line: 147, column: 7, scope: !2694, inlinedAt: !2658)
!2696 = !DILocation(line: 147, column: 5, scope: !2694, inlinedAt: !2658)
!2697 = !DILocation(line: 148, column: 35, scope: !2644, inlinedAt: !2658)
!2698 = !DILocation(line: 148, column: 21, scope: !2644, inlinedAt: !2658)
!2699 = !DILocation(line: 148, column: 33, scope: !2644, inlinedAt: !2658)
!2700 = !DILocation(line: 148, column: 6, scope: !2644, inlinedAt: !2658)
!2701 = !DILocation(line: 148, column: 16, scope: !2644, inlinedAt: !2658)
!2702 = !DILocation(line: 151, column: 5, scope: !2644, inlinedAt: !2658)
!2703 = !DILocation(line: 150, column: 33, scope: !2644, inlinedAt: !2658)
!2704 = !DILocation(line: 150, column: 6, scope: !2644, inlinedAt: !2658)
!2705 = !DILocation(line: 150, column: 18, scope: !2644, inlinedAt: !2658)
!2706 = !DILocation(line: 153, column: 10, scope: !2644, inlinedAt: !2658)
!2707 = !DILocation(line: 153, column: 15, scope: !2644, inlinedAt: !2658)
!2708 = !DILocation(line: 155, column: 25, scope: !2644, inlinedAt: !2658)
!2709 = !DILocation(line: 156, column: 19, scope: !2644, inlinedAt: !2658)
!2710 = !DILocation(line: 169, column: 3, scope: !2592)
!2711 = distinct !DISubprogram(name: "rpl_obstack_begin_1", scope: !754, file: !754, line: 173, type: !2712, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !2714)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!89, !2595, !163, !163, !309, !320, !161}
!2714 = !{!2715, !2716, !2717, !2718, !2719, !2720}
!2715 = !DILocalVariable(name: "h", arg: 1, scope: !2711, file: !754, line: 173, type: !2595)
!2716 = !DILocalVariable(name: "size", arg: 2, scope: !2711, file: !754, line: 174, type: !163)
!2717 = !DILocalVariable(name: "alignment", arg: 3, scope: !2711, file: !754, line: 174, type: !163)
!2718 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !2711, file: !754, line: 175, type: !309)
!2719 = !DILocalVariable(name: "freefun", arg: 5, scope: !2711, file: !754, line: 176, type: !320)
!2720 = !DILocalVariable(name: "arg", arg: 6, scope: !2711, file: !754, line: 177, type: !161)
!2721 = !DILocation(line: 0, scope: !2711)
!2722 = !DILocation(line: 179, column: 6, scope: !2711)
!2723 = !DILocation(line: 179, column: 21, scope: !2711)
!2724 = !DILocation(line: 180, column: 6, scope: !2711)
!2725 = !DILocation(line: 180, column: 20, scope: !2711)
!2726 = !DILocation(line: 181, column: 6, scope: !2711)
!2727 = !DILocation(line: 181, column: 16, scope: !2711)
!2728 = !{!1476, !1110, i64 72}
!2729 = !DILocation(line: 182, column: 6, scope: !2711)
!2730 = !DILocation(line: 182, column: 20, scope: !2711)
!2731 = !DILocation(line: 0, scope: !2644, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 183, column: 10, scope: !2711)
!2733 = !DILocation(line: 119, column: 17, scope: !2660, inlinedAt: !2732)
!2734 = !DILocation(line: 128, column: 65, scope: !2644, inlinedAt: !2732)
!2735 = !DILocation(line: 0, scope: !2663, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 128, column: 12, scope: !2644, inlinedAt: !2732)
!2737 = !DILocation(line: 81, column: 10, scope: !2663, inlinedAt: !2736)
!2738 = !DILocation(line: 132, column: 12, scope: !2656, inlinedAt: !2732)
!2739 = !DILocation(line: 132, column: 7, scope: !2644, inlinedAt: !2732)
!2740 = !DILocation(line: 142, column: 17, scope: !2644, inlinedAt: !2732)
!2741 = !DILocation(line: 143, column: 6, scope: !2644, inlinedAt: !2732)
!2742 = !DILocation(line: 143, column: 21, scope: !2644, inlinedAt: !2732)
!2743 = !DILocation(line: 145, column: 22, scope: !2644, inlinedAt: !2732)
!2744 = !DILocation(line: 145, column: 14, scope: !2644, inlinedAt: !2732)
!2745 = !DILocation(line: 145, column: 20, scope: !2644, inlinedAt: !2732)
!2746 = !DILocation(line: 146, column: 7, scope: !2644, inlinedAt: !2732)
!2747 = !DILocation(line: 0, scope: !2684, inlinedAt: !2748)
!2748 = distinct !DILocation(line: 145, column: 33, scope: !2644, inlinedAt: !2732)
!2749 = !DILocation(line: 92, column: 12, scope: !2692, inlinedAt: !2748)
!2750 = !DILocation(line: 146, column: 8, scope: !2694, inlinedAt: !2732)
!2751 = !DILocation(line: 147, column: 7, scope: !2694, inlinedAt: !2732)
!2752 = !DILocation(line: 147, column: 5, scope: !2694, inlinedAt: !2732)
!2753 = !DILocation(line: 148, column: 35, scope: !2644, inlinedAt: !2732)
!2754 = !DILocation(line: 148, column: 21, scope: !2644, inlinedAt: !2732)
!2755 = !DILocation(line: 148, column: 33, scope: !2644, inlinedAt: !2732)
!2756 = !DILocation(line: 148, column: 6, scope: !2644, inlinedAt: !2732)
!2757 = !DILocation(line: 148, column: 16, scope: !2644, inlinedAt: !2732)
!2758 = !DILocation(line: 151, column: 5, scope: !2644, inlinedAt: !2732)
!2759 = !DILocation(line: 150, column: 33, scope: !2644, inlinedAt: !2732)
!2760 = !DILocation(line: 150, column: 6, scope: !2644, inlinedAt: !2732)
!2761 = !DILocation(line: 150, column: 18, scope: !2644, inlinedAt: !2732)
!2762 = !DILocation(line: 153, column: 10, scope: !2644, inlinedAt: !2732)
!2763 = !DILocation(line: 153, column: 15, scope: !2644, inlinedAt: !2732)
!2764 = !DILocation(line: 155, column: 25, scope: !2644, inlinedAt: !2732)
!2765 = !DILocation(line: 156, column: 19, scope: !2644, inlinedAt: !2732)
!2766 = !DILocation(line: 183, column: 3, scope: !2711)
!2767 = distinct !DISubprogram(name: "rpl_obstack_newchunk", scope: !754, file: !754, line: 194, type: !2768, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !2770)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{null, !2595, !163}
!2770 = !{!2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779}
!2771 = !DILocalVariable(name: "h", arg: 1, scope: !2767, file: !754, line: 194, type: !2595)
!2772 = !DILocalVariable(name: "length", arg: 2, scope: !2767, file: !754, line: 194, type: !163)
!2773 = !DILocalVariable(name: "old_chunk", scope: !2767, file: !754, line: 196, type: !2601)
!2774 = !DILocalVariable(name: "obj_size", scope: !2767, file: !754, line: 197, type: !163)
!2775 = !DILocalVariable(name: "s", scope: !2767, file: !754, line: 200, type: !163)
!2776 = !DILocalVariable(name: "new_size", scope: !2767, file: !754, line: 200, type: !163)
!2777 = !DILocalVariable(name: "v", scope: !2767, file: !754, line: 201, type: !112)
!2778 = !DILocalVariable(name: "new_chunk", scope: !2767, file: !754, line: 213, type: !2601)
!2779 = !DILocalVariable(name: "object_base", scope: !2767, file: !754, line: 225, type: !121)
!2780 = !DILocation(line: 0, scope: !2767)
!2781 = !DILocation(line: 196, column: 41, scope: !2767)
!2782 = !DILocation(line: 197, column: 24, scope: !2767)
!2783 = !DILocation(line: 197, column: 39, scope: !2767)
!2784 = !DILocation(line: 197, column: 34, scope: !2767)
!2785 = !DILocation(line: 202, column: 8, scope: !2767)
!2786 = !DILocation(line: 203, column: 36, scope: !2767)
!2787 = !DILocation(line: 0, scope: !2663, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 203, column: 8, scope: !2767)
!2789 = !DILocation(line: 81, column: 10, scope: !2663, inlinedAt: !2788)
!2790 = !DILocation(line: 203, column: 5, scope: !2767)
!2791 = !DILocation(line: 204, column: 8, scope: !2767)
!2792 = !DILocation(line: 204, column: 5, scope: !2767)
!2793 = !DILocation(line: 207, column: 7, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2767, file: !754, line: 207, column: 7)
!2795 = !DILocation(line: 207, column: 7, scope: !2767)
!2796 = !DILocation(line: 209, column: 21, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2767, file: !754, line: 209, column: 7)
!2798 = !DILocation(line: 209, column: 7, scope: !2767)
!2799 = !DILocation(line: 214, column: 5, scope: !2767)
!2800 = !DILocation(line: 0, scope: !2684, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 214, column: 16, scope: !2767)
!2802 = !DILocation(line: 91, column: 10, scope: !2692, inlinedAt: !2801)
!2803 = !DILocation(line: 91, column: 7, scope: !2692, inlinedAt: !2801)
!2804 = !DILocation(line: 0, scope: !2692, inlinedAt: !2801)
!2805 = !DILocation(line: 91, column: 7, scope: !2684, inlinedAt: !2801)
!2806 = !DILocation(line: 92, column: 34, scope: !2692, inlinedAt: !2801)
!2807 = !DILocation(line: 92, column: 12, scope: !2692, inlinedAt: !2801)
!2808 = !DILocation(line: 92, column: 5, scope: !2692, inlinedAt: !2801)
!2809 = !DILocation(line: 94, column: 12, scope: !2692, inlinedAt: !2801)
!2810 = !DILocation(line: 94, column: 5, scope: !2692, inlinedAt: !2801)
!2811 = !DILocation(line: 215, column: 8, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2767, file: !754, line: 215, column: 7)
!2813 = !DILocation(line: 215, column: 7, scope: !2767)
!2814 = !DILocation(line: 216, column: 7, scope: !2812)
!2815 = !DILocation(line: 216, column: 5, scope: !2812)
!2816 = !DILocation(line: 217, column: 12, scope: !2767)
!2817 = !DILocation(line: 218, column: 14, scope: !2767)
!2818 = !DILocation(line: 218, column: 19, scope: !2767)
!2819 = !DILocation(line: 220, column: 5, scope: !2767)
!2820 = !DILocation(line: 219, column: 25, scope: !2767)
!2821 = !DILocation(line: 219, column: 37, scope: !2767)
!2822 = !DILocation(line: 219, column: 20, scope: !2767)
!2823 = !DILocation(line: 226, column: 5, scope: !2767)
!2824 = !DILocation(line: 229, column: 27, scope: !2767)
!2825 = !DILocalVariable(name: "__dest", arg: 1, scope: !2826, file: !2827, line: 26, type: !2830)
!2826 = distinct !DISubprogram(name: "memcpy", scope: !2827, file: !2827, line: 26, type: !2828, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !2831)
!2827 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!161, !2830, !1318, !163}
!2830 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !161)
!2831 = !{!2825, !2832, !2833}
!2832 = !DILocalVariable(name: "__src", arg: 2, scope: !2826, file: !2827, line: 26, type: !1318)
!2833 = !DILocalVariable(name: "__len", arg: 3, scope: !2826, file: !2827, line: 26, type: !163)
!2834 = !DILocation(line: 0, scope: !2826, inlinedAt: !2835)
!2835 = distinct !DILocation(line: 229, column: 3, scope: !2767)
!2836 = !DILocation(line: 29, column: 10, scope: !2826, inlinedAt: !2835)
!2837 = !DILocation(line: 234, column: 11, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2767, file: !754, line: 234, column: 7)
!2839 = !DILocation(line: 234, column: 8, scope: !2838)
!2840 = !DILocation(line: 235, column: 7, scope: !2838)
!2841 = !DILocation(line: 235, column: 14, scope: !2838)
!2842 = !DILocation(line: 236, column: 14, scope: !2838)
!2843 = !DILocation(line: 236, column: 11, scope: !2838)
!2844 = !DILocation(line: 234, column: 7, scope: !2767)
!2845 = !DILocation(line: 239, column: 36, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2838, file: !754, line: 238, column: 5)
!2847 = !DILocation(line: 239, column: 23, scope: !2846)
!2848 = !DILocalVariable(name: "h", arg: 1, scope: !2849, file: !754, line: 98, type: !2595)
!2849 = distinct !DISubprogram(name: "call_freefun", scope: !754, file: !754, line: 98, type: !2850, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !2852)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{null, !2595, !161}
!2852 = !{!2848, !2853}
!2853 = !DILocalVariable(name: "old_chunk", arg: 2, scope: !2849, file: !754, line: 98, type: !161)
!2854 = !DILocation(line: 0, scope: !2849, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 240, column: 7, scope: !2846)
!2856 = !DILocation(line: 100, column: 10, scope: !2857, inlinedAt: !2855)
!2857 = distinct !DILexicalBlock(scope: !2849, file: !754, line: 100, column: 7)
!2858 = !DILocation(line: 100, column: 7, scope: !2857, inlinedAt: !2855)
!2859 = !DILocation(line: 0, scope: !2857, inlinedAt: !2855)
!2860 = !DILocation(line: 100, column: 7, scope: !2849, inlinedAt: !2855)
!2861 = !DILocation(line: 101, column: 26, scope: !2857, inlinedAt: !2855)
!2862 = !DILocation(line: 101, column: 5, scope: !2857, inlinedAt: !2855)
!2863 = !DILocation(line: 103, column: 5, scope: !2857, inlinedAt: !2855)
!2864 = !DILocation(line: 243, column: 18, scope: !2767)
!2865 = !DILocation(line: 244, column: 33, scope: !2767)
!2866 = !DILocation(line: 244, column: 16, scope: !2767)
!2867 = !DILocation(line: 246, column: 25, scope: !2767)
!2868 = !DILocation(line: 247, column: 1, scope: !2767)
!2869 = distinct !DISubprogram(name: "rpl_obstack_allocated_p", scope: !754, file: !754, line: 259, type: !2870, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !2872)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!89, !2595, !161}
!2872 = !{!2873, !2874, !2875, !2876}
!2873 = !DILocalVariable(name: "h", arg: 1, scope: !2869, file: !754, line: 259, type: !2595)
!2874 = !DILocalVariable(name: "obj", arg: 2, scope: !2869, file: !754, line: 259, type: !161)
!2875 = !DILocalVariable(name: "lp", scope: !2869, file: !754, line: 261, type: !2601)
!2876 = !DILocalVariable(name: "plp", scope: !2877, file: !754, line: 268, type: !2601)
!2877 = distinct !DILexicalBlock(scope: !2869, file: !754, line: 267, column: 5)
!2878 = !DILocation(line: 0, scope: !2869)
!2879 = !DILocation(line: 262, column: 8, scope: !2869)
!2880 = !DILocation(line: 266, column: 13, scope: !2869)
!2881 = !DILocation(line: 266, column: 21, scope: !2869)
!2882 = !DILocation(line: 266, column: 3, scope: !2869)
!2883 = !DILocation(line: 266, column: 37, scope: !2869)
!2884 = !DILocation(line: 266, column: 44, scope: !2869)
!2885 = !DILocation(line: 266, column: 62, scope: !2869)
!2886 = !DILocation(line: 266, column: 68, scope: !2869)
!2887 = !DILocation(line: 268, column: 40, scope: !2877)
!2888 = !DILocation(line: 0, scope: !2877)
!2889 = distinct !{!2889, !2882, !2890, !1221}
!2890 = !DILocation(line: 270, column: 5, scope: !2869)
!2891 = !DILocation(line: 271, column: 3, scope: !2869)
!2892 = distinct !DISubprogram(name: "rpl_obstack_free", scope: !754, file: !754, line: 278, type: !2850, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !2893)
!2893 = !{!2894, !2895, !2896, !2897}
!2894 = !DILocalVariable(name: "h", arg: 1, scope: !2892, file: !754, line: 278, type: !2595)
!2895 = !DILocalVariable(name: "obj", arg: 2, scope: !2892, file: !754, line: 278, type: !161)
!2896 = !DILocalVariable(name: "lp", scope: !2892, file: !754, line: 280, type: !2601)
!2897 = !DILocalVariable(name: "plp", scope: !2898, file: !754, line: 287, type: !2601)
!2898 = distinct !DILexicalBlock(scope: !2892, file: !754, line: 286, column: 5)
!2899 = !DILocation(line: 0, scope: !2892)
!2900 = !DILocation(line: 281, column: 8, scope: !2892)
!2901 = !DILocation(line: 285, column: 13, scope: !2892)
!2902 = !DILocation(line: 285, column: 21, scope: !2892)
!2903 = !DILocation(line: 285, column: 37, scope: !2892)
!2904 = !DILocation(line: 285, column: 44, scope: !2892)
!2905 = !DILocation(line: 285, column: 62, scope: !2892)
!2906 = !DILocation(line: 285, column: 68, scope: !2892)
!2907 = !DILocation(line: 285, column: 3, scope: !2892)
!2908 = !DILocation(line: 287, column: 40, scope: !2898)
!2909 = !DILocation(line: 0, scope: !2898)
!2910 = !DILocation(line: 0, scope: !2849, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 288, column: 7, scope: !2898)
!2912 = !DILocation(line: 100, column: 10, scope: !2857, inlinedAt: !2911)
!2913 = !DILocation(line: 100, column: 7, scope: !2857, inlinedAt: !2911)
!2914 = !DILocation(line: 0, scope: !2857, inlinedAt: !2911)
!2915 = !DILocation(line: 100, column: 7, scope: !2849, inlinedAt: !2911)
!2916 = !DILocation(line: 101, column: 26, scope: !2857, inlinedAt: !2911)
!2917 = !DILocation(line: 101, column: 5, scope: !2857, inlinedAt: !2911)
!2918 = !DILocation(line: 103, column: 5, scope: !2857, inlinedAt: !2911)
!2919 = !DILocation(line: 292, column: 29, scope: !2898)
!2920 = distinct !{!2920, !2907, !2921, !1221}
!2921 = !DILocation(line: 293, column: 5, scope: !2892)
!2922 = !DILocation(line: 296, column: 27, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !754, line: 295, column: 5)
!2924 = distinct !DILexicalBlock(scope: !2892, file: !754, line: 294, column: 7)
!2925 = !DILocation(line: 296, column: 37, scope: !2923)
!2926 = !DILocation(line: 296, column: 10, scope: !2923)
!2927 = !DILocation(line: 296, column: 22, scope: !2923)
!2928 = !DILocation(line: 297, column: 28, scope: !2923)
!2929 = !DILocation(line: 297, column: 10, scope: !2923)
!2930 = !DILocation(line: 297, column: 22, scope: !2923)
!2931 = !DILocation(line: 298, column: 16, scope: !2923)
!2932 = !DILocation(line: 299, column: 5, scope: !2923)
!2933 = !DILocation(line: 300, column: 16, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2924, file: !754, line: 300, column: 12)
!2935 = !DILocation(line: 300, column: 12, scope: !2924)
!2936 = !DILocation(line: 302, column: 5, scope: !2934)
!2937 = !DILocation(line: 303, column: 1, scope: !2892)
!2938 = !DISubprogram(name: "abort", scope: !1295, file: !1295, line: 598, type: !746, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2939 = distinct !DISubprogram(name: "rpl_obstack_memory_used", scope: !754, file: !754, line: 311, type: !2940, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !2942)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!163, !2595}
!2942 = !{!2943, !2944, !2945}
!2943 = !DILocalVariable(name: "h", arg: 1, scope: !2939, file: !754, line: 311, type: !2595)
!2944 = !DILocalVariable(name: "nbytes", scope: !2939, file: !754, line: 313, type: !163)
!2945 = !DILocalVariable(name: "lp", scope: !2946, file: !754, line: 315, type: !2601)
!2946 = distinct !DILexicalBlock(scope: !2939, file: !754, line: 315, column: 3)
!2947 = !DILocation(line: 0, scope: !2939)
!2948 = !DILocation(line: 315, column: 39, scope: !2946)
!2949 = !DILocation(line: 0, scope: !2946)
!2950 = !DILocation(line: 315, scope: !2946)
!2951 = !DILocation(line: 315, column: 49, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2946, file: !754, line: 315, column: 3)
!2953 = !DILocation(line: 315, column: 3, scope: !2946)
!2954 = !DILocation(line: 317, column: 14, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2952, file: !754, line: 316, column: 5)
!2956 = !DILocation(line: 319, column: 3, scope: !2939)
!2957 = !DILocation(line: 317, column: 21, scope: !2955)
!2958 = !DILocation(line: 317, column: 27, scope: !2955)
!2959 = !DILocation(line: 315, column: 67, scope: !2952)
!2960 = distinct !{!2960, !2953, !2961, !1221}
!2961 = !DILocation(line: 318, column: 5, scope: !2946)
!2962 = distinct !DISubprogram(name: "set_program_name", scope: !766, file: !766, line: 37, type: !1125, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !2963)
!2963 = !{!2964, !2965, !2966}
!2964 = !DILocalVariable(name: "argv0", arg: 1, scope: !2962, file: !766, line: 37, type: !171)
!2965 = !DILocalVariable(name: "slash", scope: !2962, file: !766, line: 44, type: !171)
!2966 = !DILocalVariable(name: "base", scope: !2962, file: !766, line: 45, type: !171)
!2967 = !DILocation(line: 0, scope: !2962)
!2968 = !DILocation(line: 44, column: 23, scope: !2962)
!2969 = !DILocation(line: 45, column: 22, scope: !2962)
!2970 = !DILocation(line: 46, column: 17, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2962, file: !766, line: 46, column: 7)
!2972 = !DILocation(line: 46, column: 9, scope: !2971)
!2973 = !DILocation(line: 46, column: 25, scope: !2971)
!2974 = !DILocation(line: 46, column: 40, scope: !2971)
!2975 = !DILocalVariable(name: "__s1", arg: 1, scope: !2976, file: !1187, line: 974, type: !1319)
!2976 = distinct !DISubprogram(name: "memeq", scope: !1187, file: !1187, line: 974, type: !2977, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !2979)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!112, !1319, !1319, !163}
!2979 = !{!2975, !2980, !2981}
!2980 = !DILocalVariable(name: "__s2", arg: 2, scope: !2976, file: !1187, line: 974, type: !1319)
!2981 = !DILocalVariable(name: "__n", arg: 3, scope: !2976, file: !1187, line: 974, type: !163)
!2982 = !DILocation(line: 0, scope: !2976, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 46, column: 28, scope: !2971)
!2984 = !DILocation(line: 976, column: 11, scope: !2976, inlinedAt: !2983)
!2985 = !DILocation(line: 976, column: 10, scope: !2976, inlinedAt: !2983)
!2986 = !DILocation(line: 46, column: 7, scope: !2962)
!2987 = !DILocation(line: 49, column: 11, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !766, line: 49, column: 11)
!2989 = distinct !DILexicalBlock(scope: !2971, file: !766, line: 47, column: 5)
!2990 = !DILocation(line: 49, column: 36, scope: !2988)
!2991 = !DILocation(line: 49, column: 11, scope: !2989)
!2992 = !DILocation(line: 65, column: 16, scope: !2962)
!2993 = !DILocation(line: 71, column: 27, scope: !2962)
!2994 = !DILocation(line: 74, column: 33, scope: !2962)
!2995 = !DILocation(line: 76, column: 1, scope: !2962)
!2996 = !DISubprogram(name: "strrchr", scope: !1291, file: !1291, line: 273, type: !1306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2997 = distinct !DIAssignID()
!2998 = !DILocation(line: 0, scope: !775)
!2999 = distinct !DIAssignID()
!3000 = !DILocation(line: 40, column: 29, scope: !775)
!3001 = !DILocation(line: 41, column: 19, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !775, file: !776, line: 41, column: 7)
!3003 = !DILocation(line: 41, column: 7, scope: !775)
!3004 = !DILocation(line: 47, column: 3, scope: !775)
!3005 = !DILocation(line: 48, column: 3, scope: !775)
!3006 = !DILocalVariable(name: "ps", arg: 1, scope: !3007, file: !3008, line: 1135, type: !3011)
!3007 = distinct !DISubprogram(name: "mbszero", scope: !3008, file: !3008, line: 1135, type: !3009, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3012)
!3008 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!3009 = !DISubroutineType(types: !3010)
!3010 = !{null, !3011}
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!3012 = !{!3006}
!3013 = !DILocation(line: 0, scope: !3007, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 48, column: 18, scope: !775)
!3015 = !DILocalVariable(name: "__dest", arg: 1, scope: !3016, file: !2827, line: 57, type: !161)
!3016 = distinct !DISubprogram(name: "memset", scope: !2827, file: !2827, line: 57, type: !3017, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3019)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!161, !161, !89, !163}
!3019 = !{!3015, !3020, !3021}
!3020 = !DILocalVariable(name: "__ch", arg: 2, scope: !3016, file: !2827, line: 57, type: !89)
!3021 = !DILocalVariable(name: "__len", arg: 3, scope: !3016, file: !2827, line: 57, type: !163)
!3022 = !DILocation(line: 0, scope: !3016, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 1137, column: 3, scope: !3007, inlinedAt: !3014)
!3024 = !DILocation(line: 59, column: 10, scope: !3016, inlinedAt: !3023)
!3025 = !DILocation(line: 49, column: 7, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !775, file: !776, line: 49, column: 7)
!3027 = !DILocation(line: 49, column: 39, scope: !3026)
!3028 = !DILocation(line: 49, column: 44, scope: !3026)
!3029 = !DILocation(line: 54, column: 1, scope: !775)
!3030 = !DISubprogram(name: "mbrtoc32", scope: !787, file: !787, line: 57, type: !3031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!163, !3033, !1165, !163, !3035}
!3033 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3034)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3011)
!3036 = distinct !DISubprogram(name: "clone_quoting_options", scope: !806, file: !806, line: 113, type: !3037, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3040)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!3039, !3039}
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!3040 = !{!3041, !3042, !3043}
!3041 = !DILocalVariable(name: "o", arg: 1, scope: !3036, file: !806, line: 113, type: !3039)
!3042 = !DILocalVariable(name: "saved_errno", scope: !3036, file: !806, line: 115, type: !89)
!3043 = !DILocalVariable(name: "p", scope: !3036, file: !806, line: 116, type: !3039)
!3044 = !DILocation(line: 0, scope: !3036)
!3045 = !DILocation(line: 115, column: 21, scope: !3036)
!3046 = !DILocation(line: 116, column: 40, scope: !3036)
!3047 = !DILocation(line: 116, column: 31, scope: !3036)
!3048 = !DILocation(line: 118, column: 9, scope: !3036)
!3049 = !DILocation(line: 119, column: 3, scope: !3036)
!3050 = distinct !DISubprogram(name: "get_quoting_style", scope: !806, file: !806, line: 124, type: !3051, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3055)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!829, !3053}
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !844)
!3055 = !{!3056}
!3056 = !DILocalVariable(name: "o", arg: 1, scope: !3050, file: !806, line: 124, type: !3053)
!3057 = !DILocation(line: 0, scope: !3050)
!3058 = !DILocation(line: 126, column: 11, scope: !3050)
!3059 = !DILocation(line: 126, column: 46, scope: !3050)
!3060 = !{!3061, !1175, i64 0}
!3061 = !{!"quoting_options", !1175, i64 0, !1175, i64 4, !1111, i64 8, !1110, i64 40, !1110, i64 48}
!3062 = !DILocation(line: 126, column: 3, scope: !3050)
!3063 = distinct !DISubprogram(name: "set_quoting_style", scope: !806, file: !806, line: 132, type: !3064, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3066)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{null, !3039, !829}
!3066 = !{!3067, !3068}
!3067 = !DILocalVariable(name: "o", arg: 1, scope: !3063, file: !806, line: 132, type: !3039)
!3068 = !DILocalVariable(name: "s", arg: 2, scope: !3063, file: !806, line: 132, type: !829)
!3069 = !DILocation(line: 0, scope: !3063)
!3070 = !DILocation(line: 134, column: 4, scope: !3063)
!3071 = !DILocation(line: 134, column: 45, scope: !3063)
!3072 = !DILocation(line: 135, column: 1, scope: !3063)
!3073 = distinct !DISubprogram(name: "set_char_quoting", scope: !806, file: !806, line: 143, type: !3074, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3076)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!89, !3039, !4, !89}
!3076 = !{!3077, !3078, !3079, !3080, !3081, !3083, !3084}
!3077 = !DILocalVariable(name: "o", arg: 1, scope: !3073, file: !806, line: 143, type: !3039)
!3078 = !DILocalVariable(name: "c", arg: 2, scope: !3073, file: !806, line: 143, type: !4)
!3079 = !DILocalVariable(name: "i", arg: 3, scope: !3073, file: !806, line: 143, type: !89)
!3080 = !DILocalVariable(name: "uc", scope: !3073, file: !806, line: 145, type: !223)
!3081 = !DILocalVariable(name: "p", scope: !3073, file: !806, line: 146, type: !3082)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!3083 = !DILocalVariable(name: "shift", scope: !3073, file: !806, line: 148, type: !89)
!3084 = !DILocalVariable(name: "r", scope: !3073, file: !806, line: 149, type: !79)
!3085 = !DILocation(line: 0, scope: !3073)
!3086 = !DILocation(line: 147, column: 6, scope: !3073)
!3087 = !DILocation(line: 147, column: 41, scope: !3073)
!3088 = !DILocation(line: 147, column: 62, scope: !3073)
!3089 = !DILocation(line: 147, column: 57, scope: !3073)
!3090 = !DILocation(line: 148, column: 15, scope: !3073)
!3091 = !DILocation(line: 149, column: 21, scope: !3073)
!3092 = !DILocation(line: 149, column: 24, scope: !3073)
!3093 = !DILocation(line: 149, column: 34, scope: !3073)
!3094 = !DILocation(line: 150, column: 19, scope: !3073)
!3095 = !DILocation(line: 150, column: 24, scope: !3073)
!3096 = !DILocation(line: 150, column: 6, scope: !3073)
!3097 = !DILocation(line: 151, column: 3, scope: !3073)
!3098 = distinct !DISubprogram(name: "set_quoting_flags", scope: !806, file: !806, line: 159, type: !3099, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3101)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!89, !3039, !89}
!3101 = !{!3102, !3103, !3104}
!3102 = !DILocalVariable(name: "o", arg: 1, scope: !3098, file: !806, line: 159, type: !3039)
!3103 = !DILocalVariable(name: "i", arg: 2, scope: !3098, file: !806, line: 159, type: !89)
!3104 = !DILocalVariable(name: "r", scope: !3098, file: !806, line: 163, type: !89)
!3105 = !DILocation(line: 0, scope: !3098)
!3106 = !DILocation(line: 161, column: 8, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3098, file: !806, line: 161, column: 7)
!3108 = !DILocation(line: 161, column: 7, scope: !3098)
!3109 = !DILocation(line: 163, column: 14, scope: !3098)
!3110 = !{!3061, !1175, i64 4}
!3111 = !DILocation(line: 164, column: 12, scope: !3098)
!3112 = !DILocation(line: 165, column: 3, scope: !3098)
!3113 = distinct !DISubprogram(name: "set_custom_quoting", scope: !806, file: !806, line: 169, type: !3114, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3116)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{null, !3039, !171, !171}
!3116 = !{!3117, !3118, !3119}
!3117 = !DILocalVariable(name: "o", arg: 1, scope: !3113, file: !806, line: 169, type: !3039)
!3118 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3113, file: !806, line: 170, type: !171)
!3119 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3113, file: !806, line: 170, type: !171)
!3120 = !DILocation(line: 0, scope: !3113)
!3121 = !DILocation(line: 172, column: 8, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3113, file: !806, line: 172, column: 7)
!3123 = !DILocation(line: 172, column: 7, scope: !3113)
!3124 = !DILocation(line: 174, column: 12, scope: !3113)
!3125 = !DILocation(line: 175, column: 8, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3113, file: !806, line: 175, column: 7)
!3127 = !DILocation(line: 175, column: 19, scope: !3126)
!3128 = !DILocation(line: 176, column: 5, scope: !3126)
!3129 = !DILocation(line: 177, column: 6, scope: !3113)
!3130 = !DILocation(line: 177, column: 17, scope: !3113)
!3131 = !{!3061, !1110, i64 40}
!3132 = !DILocation(line: 178, column: 6, scope: !3113)
!3133 = !DILocation(line: 178, column: 18, scope: !3113)
!3134 = !{!3061, !1110, i64 48}
!3135 = !DILocation(line: 179, column: 1, scope: !3113)
!3136 = distinct !DISubprogram(name: "quotearg_buffer", scope: !806, file: !806, line: 774, type: !3137, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3139)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!163, !121, !163, !171, !163, !3053}
!3139 = !{!3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147}
!3140 = !DILocalVariable(name: "buffer", arg: 1, scope: !3136, file: !806, line: 774, type: !121)
!3141 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3136, file: !806, line: 774, type: !163)
!3142 = !DILocalVariable(name: "arg", arg: 3, scope: !3136, file: !806, line: 775, type: !171)
!3143 = !DILocalVariable(name: "argsize", arg: 4, scope: !3136, file: !806, line: 775, type: !163)
!3144 = !DILocalVariable(name: "o", arg: 5, scope: !3136, file: !806, line: 776, type: !3053)
!3145 = !DILocalVariable(name: "p", scope: !3136, file: !806, line: 778, type: !3053)
!3146 = !DILocalVariable(name: "saved_errno", scope: !3136, file: !806, line: 779, type: !89)
!3147 = !DILocalVariable(name: "r", scope: !3136, file: !806, line: 780, type: !163)
!3148 = !DILocation(line: 0, scope: !3136)
!3149 = !DILocation(line: 778, column: 37, scope: !3136)
!3150 = !DILocation(line: 779, column: 21, scope: !3136)
!3151 = !DILocation(line: 781, column: 43, scope: !3136)
!3152 = !DILocation(line: 781, column: 53, scope: !3136)
!3153 = !DILocation(line: 781, column: 63, scope: !3136)
!3154 = !DILocation(line: 782, column: 43, scope: !3136)
!3155 = !DILocation(line: 782, column: 58, scope: !3136)
!3156 = !DILocation(line: 780, column: 14, scope: !3136)
!3157 = !DILocation(line: 783, column: 9, scope: !3136)
!3158 = !DILocation(line: 784, column: 3, scope: !3136)
!3159 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !806, file: !806, line: 251, type: !3160, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3164)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!163, !121, !163, !171, !163, !829, !89, !3162, !171, !171}
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!3164 = !{!3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3190, !3192, !3195, !3196, !3197, !3198, !3201, !3202, !3204, !3205, !3208, !3212, !3213, !3221, !3224, !3225, !3226}
!3165 = !DILocalVariable(name: "buffer", arg: 1, scope: !3159, file: !806, line: 251, type: !121)
!3166 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3159, file: !806, line: 251, type: !163)
!3167 = !DILocalVariable(name: "arg", arg: 3, scope: !3159, file: !806, line: 252, type: !171)
!3168 = !DILocalVariable(name: "argsize", arg: 4, scope: !3159, file: !806, line: 252, type: !163)
!3169 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3159, file: !806, line: 253, type: !829)
!3170 = !DILocalVariable(name: "flags", arg: 6, scope: !3159, file: !806, line: 253, type: !89)
!3171 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3159, file: !806, line: 254, type: !3162)
!3172 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3159, file: !806, line: 255, type: !171)
!3173 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3159, file: !806, line: 256, type: !171)
!3174 = !DILocalVariable(name: "unibyte_locale", scope: !3159, file: !806, line: 258, type: !112)
!3175 = !DILocalVariable(name: "len", scope: !3159, file: !806, line: 260, type: !163)
!3176 = !DILocalVariable(name: "orig_buffersize", scope: !3159, file: !806, line: 261, type: !163)
!3177 = !DILocalVariable(name: "quote_string", scope: !3159, file: !806, line: 262, type: !171)
!3178 = !DILocalVariable(name: "quote_string_len", scope: !3159, file: !806, line: 263, type: !163)
!3179 = !DILocalVariable(name: "backslash_escapes", scope: !3159, file: !806, line: 264, type: !112)
!3180 = !DILocalVariable(name: "elide_outer_quotes", scope: !3159, file: !806, line: 265, type: !112)
!3181 = !DILocalVariable(name: "encountered_single_quote", scope: !3159, file: !806, line: 266, type: !112)
!3182 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3159, file: !806, line: 267, type: !112)
!3183 = !DILabel(scope: !3159, name: "process_input", file: !806, line: 308)
!3184 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3159, file: !806, line: 309, type: !112)
!3185 = !DILocalVariable(name: "lq", scope: !3186, file: !806, line: 361, type: !171)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !806, line: 361, column: 11)
!3187 = distinct !DILexicalBlock(scope: !3188, file: !806, line: 360, column: 13)
!3188 = distinct !DILexicalBlock(scope: !3189, file: !806, line: 333, column: 7)
!3189 = distinct !DILexicalBlock(scope: !3159, file: !806, line: 312, column: 5)
!3190 = !DILocalVariable(name: "i", scope: !3191, file: !806, line: 395, type: !163)
!3191 = distinct !DILexicalBlock(scope: !3159, file: !806, line: 395, column: 3)
!3192 = !DILocalVariable(name: "is_right_quote", scope: !3193, file: !806, line: 397, type: !112)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !806, line: 396, column: 5)
!3194 = distinct !DILexicalBlock(scope: !3191, file: !806, line: 395, column: 3)
!3195 = !DILocalVariable(name: "escaping", scope: !3193, file: !806, line: 398, type: !112)
!3196 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3193, file: !806, line: 399, type: !112)
!3197 = !DILocalVariable(name: "c", scope: !3193, file: !806, line: 417, type: !223)
!3198 = !DILabel(scope: !3199, name: "c_and_shell_escape", file: !806, line: 502)
!3199 = distinct !DILexicalBlock(scope: !3200, file: !806, line: 478, column: 9)
!3200 = distinct !DILexicalBlock(scope: !3193, file: !806, line: 419, column: 9)
!3201 = !DILabel(scope: !3199, name: "c_escape", file: !806, line: 507)
!3202 = !DILocalVariable(name: "m", scope: !3203, file: !806, line: 598, type: !163)
!3203 = distinct !DILexicalBlock(scope: !3200, file: !806, line: 596, column: 11)
!3204 = !DILocalVariable(name: "printable", scope: !3203, file: !806, line: 600, type: !112)
!3205 = !DILocalVariable(name: "mbs", scope: !3206, file: !806, line: 609, type: !878)
!3206 = distinct !DILexicalBlock(scope: !3207, file: !806, line: 608, column: 15)
!3207 = distinct !DILexicalBlock(scope: !3203, file: !806, line: 602, column: 17)
!3208 = !DILocalVariable(name: "w", scope: !3209, file: !806, line: 618, type: !786)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !806, line: 617, column: 19)
!3210 = distinct !DILexicalBlock(scope: !3211, file: !806, line: 616, column: 17)
!3211 = distinct !DILexicalBlock(scope: !3206, file: !806, line: 616, column: 17)
!3212 = !DILocalVariable(name: "bytes", scope: !3209, file: !806, line: 619, type: !163)
!3213 = !DILocalVariable(name: "j", scope: !3214, file: !806, line: 648, type: !163)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !806, line: 648, column: 29)
!3215 = distinct !DILexicalBlock(scope: !3216, file: !806, line: 647, column: 27)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !806, line: 645, column: 29)
!3217 = distinct !DILexicalBlock(scope: !3218, file: !806, line: 636, column: 23)
!3218 = distinct !DILexicalBlock(scope: !3219, file: !806, line: 628, column: 30)
!3219 = distinct !DILexicalBlock(scope: !3220, file: !806, line: 623, column: 30)
!3220 = distinct !DILexicalBlock(scope: !3209, file: !806, line: 621, column: 25)
!3221 = !DILocalVariable(name: "ilim", scope: !3222, file: !806, line: 674, type: !163)
!3222 = distinct !DILexicalBlock(scope: !3223, file: !806, line: 671, column: 15)
!3223 = distinct !DILexicalBlock(scope: !3203, file: !806, line: 670, column: 17)
!3224 = !DILabel(scope: !3193, name: "store_escape", file: !806, line: 709)
!3225 = !DILabel(scope: !3193, name: "store_c", file: !806, line: 712)
!3226 = !DILabel(scope: !3159, name: "force_outer_quoting_style", file: !806, line: 753)
!3227 = distinct !DIAssignID()
!3228 = distinct !DIAssignID()
!3229 = distinct !DIAssignID()
!3230 = distinct !DIAssignID()
!3231 = distinct !DIAssignID()
!3232 = !DILocation(line: 0, scope: !3206)
!3233 = distinct !DIAssignID()
!3234 = !DILocation(line: 0, scope: !3209)
!3235 = !DILocation(line: 0, scope: !3159)
!3236 = !DILocation(line: 258, column: 25, scope: !3159)
!3237 = !DILocation(line: 258, column: 36, scope: !3159)
!3238 = !DILocation(line: 267, column: 3, scope: !3159)
!3239 = !DILocation(line: 261, column: 10, scope: !3159)
!3240 = !DILocation(line: 262, column: 15, scope: !3159)
!3241 = !DILocation(line: 263, column: 10, scope: !3159)
!3242 = !DILocation(line: 308, column: 2, scope: !3159)
!3243 = !DILocation(line: 311, column: 3, scope: !3159)
!3244 = !DILocation(line: 318, column: 11, scope: !3189)
!3245 = !DILocation(line: 319, column: 9, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3247, file: !806, line: 319, column: 9)
!3247 = distinct !DILexicalBlock(scope: !3248, file: !806, line: 319, column: 9)
!3248 = distinct !DILexicalBlock(scope: !3189, file: !806, line: 318, column: 11)
!3249 = !DILocation(line: 319, column: 9, scope: !3247)
!3250 = !DILocation(line: 0, scope: !869, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 357, column: 26, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3253, file: !806, line: 335, column: 11)
!3253 = distinct !DILexicalBlock(scope: !3188, file: !806, line: 334, column: 13)
!3254 = !DILocation(line: 199, column: 29, scope: !869, inlinedAt: !3251)
!3255 = !DILocation(line: 201, column: 19, scope: !3256, inlinedAt: !3251)
!3256 = distinct !DILexicalBlock(scope: !869, file: !806, line: 201, column: 7)
!3257 = !DILocation(line: 201, column: 7, scope: !869, inlinedAt: !3251)
!3258 = !DILocation(line: 229, column: 3, scope: !869, inlinedAt: !3251)
!3259 = !DILocation(line: 230, column: 3, scope: !869, inlinedAt: !3251)
!3260 = !DILocalVariable(name: "ps", arg: 1, scope: !3261, file: !3008, line: 1135, type: !3264)
!3261 = distinct !DISubprogram(name: "mbszero", scope: !3008, file: !3008, line: 1135, type: !3262, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3265)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{null, !3264}
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!3265 = !{!3260}
!3266 = !DILocation(line: 0, scope: !3261, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 230, column: 18, scope: !869, inlinedAt: !3251)
!3268 = !DILocalVariable(name: "__dest", arg: 1, scope: !3269, file: !2827, line: 57, type: !161)
!3269 = distinct !DISubprogram(name: "memset", scope: !2827, file: !2827, line: 57, type: !3017, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3270)
!3270 = !{!3268, !3271, !3272}
!3271 = !DILocalVariable(name: "__ch", arg: 2, scope: !3269, file: !2827, line: 57, type: !89)
!3272 = !DILocalVariable(name: "__len", arg: 3, scope: !3269, file: !2827, line: 57, type: !163)
!3273 = !DILocation(line: 0, scope: !3269, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 1137, column: 3, scope: !3261, inlinedAt: !3267)
!3275 = !DILocation(line: 59, column: 10, scope: !3269, inlinedAt: !3274)
!3276 = !DILocation(line: 231, column: 7, scope: !3277, inlinedAt: !3251)
!3277 = distinct !DILexicalBlock(scope: !869, file: !806, line: 231, column: 7)
!3278 = !DILocation(line: 231, column: 40, scope: !3277, inlinedAt: !3251)
!3279 = !DILocation(line: 231, column: 45, scope: !3277, inlinedAt: !3251)
!3280 = !DILocation(line: 235, column: 1, scope: !869, inlinedAt: !3251)
!3281 = !DILocation(line: 0, scope: !869, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 358, column: 27, scope: !3252)
!3283 = !DILocation(line: 199, column: 29, scope: !869, inlinedAt: !3282)
!3284 = !DILocation(line: 201, column: 19, scope: !3256, inlinedAt: !3282)
!3285 = !DILocation(line: 201, column: 7, scope: !869, inlinedAt: !3282)
!3286 = !DILocation(line: 229, column: 3, scope: !869, inlinedAt: !3282)
!3287 = !DILocation(line: 230, column: 3, scope: !869, inlinedAt: !3282)
!3288 = !DILocation(line: 0, scope: !3261, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 230, column: 18, scope: !869, inlinedAt: !3282)
!3290 = !DILocation(line: 0, scope: !3269, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 1137, column: 3, scope: !3261, inlinedAt: !3289)
!3292 = !DILocation(line: 59, column: 10, scope: !3269, inlinedAt: !3291)
!3293 = !DILocation(line: 231, column: 7, scope: !3277, inlinedAt: !3282)
!3294 = !DILocation(line: 231, column: 40, scope: !3277, inlinedAt: !3282)
!3295 = !DILocation(line: 231, column: 45, scope: !3277, inlinedAt: !3282)
!3296 = !DILocation(line: 235, column: 1, scope: !869, inlinedAt: !3282)
!3297 = !DILocation(line: 360, column: 13, scope: !3188)
!3298 = !DILocation(line: 0, scope: !3186)
!3299 = !DILocation(line: 361, column: 45, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3186, file: !806, line: 361, column: 11)
!3301 = !DILocation(line: 361, column: 11, scope: !3186)
!3302 = !DILocation(line: 362, column: 13, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3304, file: !806, line: 362, column: 13)
!3304 = distinct !DILexicalBlock(scope: !3300, file: !806, line: 362, column: 13)
!3305 = !DILocation(line: 362, column: 13, scope: !3304)
!3306 = !DILocation(line: 361, column: 52, scope: !3300)
!3307 = distinct !{!3307, !3301, !3308, !1221}
!3308 = !DILocation(line: 362, column: 13, scope: !3186)
!3309 = !DILocation(line: 365, column: 28, scope: !3188)
!3310 = !DILocation(line: 260, column: 10, scope: !3159)
!3311 = !DILocation(line: 367, column: 7, scope: !3189)
!3312 = !DILocation(line: 373, column: 7, scope: !3189)
!3313 = !DILocation(line: 381, column: 11, scope: !3189)
!3314 = !DILocation(line: 376, column: 11, scope: !3189)
!3315 = !DILocation(line: 382, column: 9, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !806, line: 382, column: 9)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !806, line: 382, column: 9)
!3318 = distinct !DILexicalBlock(scope: !3189, file: !806, line: 381, column: 11)
!3319 = !DILocation(line: 382, column: 9, scope: !3317)
!3320 = !DILocation(line: 389, column: 7, scope: !3189)
!3321 = !DILocation(line: 392, column: 7, scope: !3189)
!3322 = !DILocation(line: 0, scope: !3191)
!3323 = !DILocation(line: 395, column: 8, scope: !3191)
!3324 = !DILocation(line: 395, scope: !3191)
!3325 = !DILocation(line: 395, column: 34, scope: !3194)
!3326 = !DILocation(line: 395, column: 26, scope: !3194)
!3327 = !DILocation(line: 395, column: 48, scope: !3194)
!3328 = !DILocation(line: 395, column: 55, scope: !3194)
!3329 = !DILocation(line: 395, column: 3, scope: !3191)
!3330 = !DILocation(line: 395, column: 67, scope: !3194)
!3331 = !DILocation(line: 0, scope: !3193)
!3332 = !DILocation(line: 402, column: 11, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3193, file: !806, line: 401, column: 11)
!3334 = !DILocation(line: 404, column: 17, scope: !3333)
!3335 = !DILocation(line: 405, column: 39, scope: !3333)
!3336 = !DILocation(line: 409, column: 32, scope: !3333)
!3337 = !DILocation(line: 405, column: 19, scope: !3333)
!3338 = !DILocation(line: 405, column: 15, scope: !3333)
!3339 = !DILocation(line: 410, column: 11, scope: !3333)
!3340 = !DILocation(line: 410, column: 25, scope: !3333)
!3341 = !DILocalVariable(name: "__s1", arg: 1, scope: !3342, file: !1187, line: 974, type: !1319)
!3342 = distinct !DISubprogram(name: "memeq", scope: !1187, file: !1187, line: 974, type: !2977, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3343)
!3343 = !{!3341, !3344, !3345}
!3344 = !DILocalVariable(name: "__s2", arg: 2, scope: !3342, file: !1187, line: 974, type: !1319)
!3345 = !DILocalVariable(name: "__n", arg: 3, scope: !3342, file: !1187, line: 974, type: !163)
!3346 = !DILocation(line: 0, scope: !3342, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 410, column: 14, scope: !3333)
!3348 = !DILocation(line: 976, column: 11, scope: !3342, inlinedAt: !3347)
!3349 = !DILocation(line: 976, column: 10, scope: !3342, inlinedAt: !3347)
!3350 = !DILocation(line: 401, column: 11, scope: !3193)
!3351 = !DILocation(line: 417, column: 25, scope: !3193)
!3352 = !DILocation(line: 418, column: 7, scope: !3193)
!3353 = !DILocation(line: 421, column: 15, scope: !3200)
!3354 = !DILocation(line: 423, column: 15, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3356, file: !806, line: 423, column: 15)
!3356 = distinct !DILexicalBlock(scope: !3357, file: !806, line: 422, column: 13)
!3357 = distinct !DILexicalBlock(scope: !3200, file: !806, line: 421, column: 15)
!3358 = !DILocation(line: 423, column: 15, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3355, file: !806, line: 423, column: 15)
!3360 = !DILocation(line: 423, column: 15, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !806, line: 423, column: 15)
!3362 = distinct !DILexicalBlock(scope: !3363, file: !806, line: 423, column: 15)
!3363 = distinct !DILexicalBlock(scope: !3359, file: !806, line: 423, column: 15)
!3364 = !DILocation(line: 423, column: 15, scope: !3362)
!3365 = !DILocation(line: 423, column: 15, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3367, file: !806, line: 423, column: 15)
!3367 = distinct !DILexicalBlock(scope: !3363, file: !806, line: 423, column: 15)
!3368 = !DILocation(line: 423, column: 15, scope: !3367)
!3369 = !DILocation(line: 423, column: 15, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !806, line: 423, column: 15)
!3371 = distinct !DILexicalBlock(scope: !3363, file: !806, line: 423, column: 15)
!3372 = !DILocation(line: 423, column: 15, scope: !3371)
!3373 = !DILocation(line: 423, column: 15, scope: !3363)
!3374 = !DILocation(line: 423, column: 15, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !806, line: 423, column: 15)
!3376 = distinct !DILexicalBlock(scope: !3355, file: !806, line: 423, column: 15)
!3377 = !DILocation(line: 423, column: 15, scope: !3376)
!3378 = !DILocation(line: 431, column: 19, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3356, file: !806, line: 430, column: 19)
!3380 = !DILocation(line: 431, column: 24, scope: !3379)
!3381 = !DILocation(line: 431, column: 28, scope: !3379)
!3382 = !DILocation(line: 431, column: 38, scope: !3379)
!3383 = !DILocation(line: 431, column: 48, scope: !3379)
!3384 = !DILocation(line: 431, column: 59, scope: !3379)
!3385 = !DILocation(line: 433, column: 19, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3387, file: !806, line: 433, column: 19)
!3387 = distinct !DILexicalBlock(scope: !3388, file: !806, line: 433, column: 19)
!3388 = distinct !DILexicalBlock(scope: !3379, file: !806, line: 432, column: 17)
!3389 = !DILocation(line: 433, column: 19, scope: !3387)
!3390 = !DILocation(line: 434, column: 19, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3392, file: !806, line: 434, column: 19)
!3392 = distinct !DILexicalBlock(scope: !3388, file: !806, line: 434, column: 19)
!3393 = !DILocation(line: 434, column: 19, scope: !3392)
!3394 = !DILocation(line: 435, column: 17, scope: !3388)
!3395 = !DILocation(line: 442, column: 20, scope: !3357)
!3396 = !DILocation(line: 447, column: 11, scope: !3200)
!3397 = !DILocation(line: 450, column: 19, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3200, file: !806, line: 448, column: 13)
!3399 = !DILocation(line: 456, column: 19, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3398, file: !806, line: 455, column: 19)
!3401 = !DILocation(line: 456, column: 24, scope: !3400)
!3402 = !DILocation(line: 456, column: 28, scope: !3400)
!3403 = !DILocation(line: 456, column: 38, scope: !3400)
!3404 = !DILocation(line: 456, column: 41, scope: !3400)
!3405 = !DILocation(line: 456, column: 52, scope: !3400)
!3406 = !DILocation(line: 455, column: 19, scope: !3398)
!3407 = !DILocation(line: 457, column: 25, scope: !3400)
!3408 = !DILocation(line: 457, column: 17, scope: !3400)
!3409 = !DILocation(line: 464, column: 25, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3400, file: !806, line: 458, column: 19)
!3411 = !DILocation(line: 468, column: 21, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3413, file: !806, line: 468, column: 21)
!3413 = distinct !DILexicalBlock(scope: !3410, file: !806, line: 468, column: 21)
!3414 = !DILocation(line: 468, column: 21, scope: !3413)
!3415 = !DILocation(line: 469, column: 21, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3417, file: !806, line: 469, column: 21)
!3417 = distinct !DILexicalBlock(scope: !3410, file: !806, line: 469, column: 21)
!3418 = !DILocation(line: 469, column: 21, scope: !3417)
!3419 = !DILocation(line: 470, column: 21, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3421, file: !806, line: 470, column: 21)
!3421 = distinct !DILexicalBlock(scope: !3410, file: !806, line: 470, column: 21)
!3422 = !DILocation(line: 470, column: 21, scope: !3421)
!3423 = !DILocation(line: 471, column: 21, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3425, file: !806, line: 471, column: 21)
!3425 = distinct !DILexicalBlock(scope: !3410, file: !806, line: 471, column: 21)
!3426 = !DILocation(line: 471, column: 21, scope: !3425)
!3427 = !DILocation(line: 472, column: 21, scope: !3410)
!3428 = !DILocation(line: 482, column: 33, scope: !3199)
!3429 = !DILocation(line: 483, column: 33, scope: !3199)
!3430 = !DILocation(line: 485, column: 33, scope: !3199)
!3431 = !DILocation(line: 486, column: 33, scope: !3199)
!3432 = !DILocation(line: 487, column: 33, scope: !3199)
!3433 = !DILocation(line: 490, column: 17, scope: !3199)
!3434 = !DILocation(line: 492, column: 21, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3436, file: !806, line: 491, column: 15)
!3436 = distinct !DILexicalBlock(scope: !3199, file: !806, line: 490, column: 17)
!3437 = !DILocation(line: 499, column: 35, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3199, file: !806, line: 499, column: 17)
!3439 = !DILocation(line: 0, scope: !3199)
!3440 = !DILocation(line: 502, column: 11, scope: !3199)
!3441 = !DILocation(line: 504, column: 17, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3199, file: !806, line: 503, column: 17)
!3443 = !DILocation(line: 507, column: 11, scope: !3199)
!3444 = !DILocation(line: 508, column: 17, scope: !3199)
!3445 = !DILocation(line: 517, column: 15, scope: !3200)
!3446 = !DILocation(line: 517, column: 40, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3200, file: !806, line: 517, column: 15)
!3448 = !DILocation(line: 517, column: 47, scope: !3447)
!3449 = !DILocation(line: 517, column: 18, scope: !3447)
!3450 = !DILocation(line: 521, column: 17, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3200, file: !806, line: 521, column: 15)
!3452 = !DILocation(line: 521, column: 15, scope: !3200)
!3453 = !DILocation(line: 525, column: 11, scope: !3200)
!3454 = !DILocation(line: 537, column: 15, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3200, file: !806, line: 536, column: 15)
!3456 = !DILocation(line: 536, column: 15, scope: !3200)
!3457 = !DILocation(line: 544, column: 15, scope: !3200)
!3458 = !DILocation(line: 546, column: 19, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3460, file: !806, line: 545, column: 13)
!3460 = distinct !DILexicalBlock(scope: !3200, file: !806, line: 544, column: 15)
!3461 = !DILocation(line: 549, column: 19, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3459, file: !806, line: 549, column: 19)
!3463 = !DILocation(line: 549, column: 30, scope: !3462)
!3464 = !DILocation(line: 558, column: 15, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3466, file: !806, line: 558, column: 15)
!3466 = distinct !DILexicalBlock(scope: !3459, file: !806, line: 558, column: 15)
!3467 = !DILocation(line: 558, column: 15, scope: !3466)
!3468 = !DILocation(line: 559, column: 15, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3470, file: !806, line: 559, column: 15)
!3470 = distinct !DILexicalBlock(scope: !3459, file: !806, line: 559, column: 15)
!3471 = !DILocation(line: 559, column: 15, scope: !3470)
!3472 = !DILocation(line: 560, column: 15, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3474, file: !806, line: 560, column: 15)
!3474 = distinct !DILexicalBlock(scope: !3459, file: !806, line: 560, column: 15)
!3475 = !DILocation(line: 560, column: 15, scope: !3474)
!3476 = !DILocation(line: 562, column: 13, scope: !3459)
!3477 = !DILocation(line: 602, column: 17, scope: !3203)
!3478 = !DILocation(line: 0, scope: !3203)
!3479 = !DILocation(line: 605, column: 29, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3207, file: !806, line: 603, column: 15)
!3481 = !DILocation(line: 605, column: 41, scope: !3480)
!3482 = !DILocation(line: 606, column: 15, scope: !3480)
!3483 = !DILocation(line: 609, column: 17, scope: !3206)
!3484 = !DILocation(line: 0, scope: !3261, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 609, column: 32, scope: !3206)
!3486 = !DILocation(line: 0, scope: !3269, inlinedAt: !3487)
!3487 = distinct !DILocation(line: 1137, column: 3, scope: !3261, inlinedAt: !3485)
!3488 = !DILocation(line: 59, column: 10, scope: !3269, inlinedAt: !3487)
!3489 = !DILocation(line: 613, column: 29, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3206, file: !806, line: 613, column: 21)
!3491 = !DILocation(line: 613, column: 21, scope: !3206)
!3492 = !DILocation(line: 614, column: 29, scope: !3490)
!3493 = !DILocation(line: 614, column: 19, scope: !3490)
!3494 = !DILocation(line: 618, column: 21, scope: !3209)
!3495 = !DILocation(line: 620, column: 54, scope: !3209)
!3496 = !DILocation(line: 619, column: 36, scope: !3209)
!3497 = !DILocation(line: 621, column: 25, scope: !3209)
!3498 = !DILocation(line: 631, column: 38, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3218, file: !806, line: 629, column: 23)
!3500 = !DILocation(line: 631, column: 48, scope: !3499)
!3501 = !DILocation(line: 631, column: 25, scope: !3499)
!3502 = !DILocation(line: 626, column: 25, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3219, file: !806, line: 624, column: 23)
!3504 = !DILocation(line: 631, column: 51, scope: !3499)
!3505 = !DILocation(line: 632, column: 28, scope: !3499)
!3506 = !DILocation(line: 631, column: 34, scope: !3499)
!3507 = distinct !{!3507, !3501, !3505, !1221}
!3508 = !DILocation(line: 0, scope: !3214)
!3509 = !DILocation(line: 646, column: 29, scope: !3216)
!3510 = !DILocation(line: 648, column: 29, scope: !3214)
!3511 = !DILocation(line: 649, column: 39, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3214, file: !806, line: 648, column: 29)
!3513 = !DILocation(line: 649, column: 31, scope: !3512)
!3514 = !DILocation(line: 648, column: 60, scope: !3512)
!3515 = !DILocation(line: 648, column: 50, scope: !3512)
!3516 = distinct !{!3516, !3510, !3517, !1221}
!3517 = !DILocation(line: 654, column: 33, scope: !3214)
!3518 = !DILocation(line: 657, column: 43, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3217, file: !806, line: 657, column: 29)
!3520 = !DILocalVariable(name: "wc", arg: 1, scope: !3521, file: !3522, line: 865, type: !3525)
!3521 = distinct !DISubprogram(name: "c32isprint", scope: !3522, file: !3522, line: 865, type: !3523, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3527)
!3522 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!89, !3525}
!3525 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3526, line: 20, baseType: !79)
!3526 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3527 = !{!3520}
!3528 = !DILocation(line: 0, scope: !3521, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 657, column: 31, scope: !3519)
!3530 = !DILocation(line: 871, column: 10, scope: !3521, inlinedAt: !3529)
!3531 = !DILocation(line: 657, column: 31, scope: !3519)
!3532 = !DILocation(line: 664, column: 23, scope: !3209)
!3533 = !DILocation(line: 665, column: 19, scope: !3210)
!3534 = !DILocation(line: 666, column: 15, scope: !3207)
!3535 = !DILocation(line: 753, column: 2, scope: !3159)
!3536 = !DILocation(line: 756, column: 51, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3159, file: !806, line: 756, column: 7)
!3538 = !DILocation(line: 0, scope: !3207)
!3539 = !DILocation(line: 670, column: 19, scope: !3223)
!3540 = !DILocation(line: 670, column: 23, scope: !3223)
!3541 = !DILocation(line: 674, column: 33, scope: !3222)
!3542 = !DILocation(line: 0, scope: !3222)
!3543 = !DILocation(line: 676, column: 17, scope: !3222)
!3544 = !DILocation(line: 678, column: 43, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3546, file: !806, line: 678, column: 25)
!3546 = distinct !DILexicalBlock(scope: !3547, file: !806, line: 677, column: 19)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !806, line: 676, column: 17)
!3548 = distinct !DILexicalBlock(scope: !3222, file: !806, line: 676, column: 17)
!3549 = !DILocation(line: 680, column: 25, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3551, file: !806, line: 680, column: 25)
!3551 = distinct !DILexicalBlock(scope: !3545, file: !806, line: 679, column: 23)
!3552 = !DILocation(line: 680, column: 25, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3550, file: !806, line: 680, column: 25)
!3554 = !DILocation(line: 680, column: 25, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3556, file: !806, line: 680, column: 25)
!3556 = distinct !DILexicalBlock(scope: !3557, file: !806, line: 680, column: 25)
!3557 = distinct !DILexicalBlock(scope: !3553, file: !806, line: 680, column: 25)
!3558 = !DILocation(line: 680, column: 25, scope: !3556)
!3559 = !DILocation(line: 680, column: 25, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !806, line: 680, column: 25)
!3561 = distinct !DILexicalBlock(scope: !3557, file: !806, line: 680, column: 25)
!3562 = !DILocation(line: 680, column: 25, scope: !3561)
!3563 = !DILocation(line: 680, column: 25, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !806, line: 680, column: 25)
!3565 = distinct !DILexicalBlock(scope: !3557, file: !806, line: 680, column: 25)
!3566 = !DILocation(line: 680, column: 25, scope: !3565)
!3567 = !DILocation(line: 680, column: 25, scope: !3557)
!3568 = !DILocation(line: 680, column: 25, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3570, file: !806, line: 680, column: 25)
!3570 = distinct !DILexicalBlock(scope: !3550, file: !806, line: 680, column: 25)
!3571 = !DILocation(line: 680, column: 25, scope: !3570)
!3572 = !DILocation(line: 681, column: 25, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3574, file: !806, line: 681, column: 25)
!3574 = distinct !DILexicalBlock(scope: !3551, file: !806, line: 681, column: 25)
!3575 = !DILocation(line: 681, column: 25, scope: !3574)
!3576 = !DILocation(line: 682, column: 25, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !806, line: 682, column: 25)
!3578 = distinct !DILexicalBlock(scope: !3551, file: !806, line: 682, column: 25)
!3579 = !DILocation(line: 682, column: 25, scope: !3578)
!3580 = !DILocation(line: 683, column: 38, scope: !3551)
!3581 = !DILocation(line: 683, column: 33, scope: !3551)
!3582 = !DILocation(line: 684, column: 23, scope: !3551)
!3583 = !DILocation(line: 685, column: 30, scope: !3545)
!3584 = !DILocation(line: 687, column: 25, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3586, file: !806, line: 687, column: 25)
!3586 = distinct !DILexicalBlock(scope: !3587, file: !806, line: 687, column: 25)
!3587 = distinct !DILexicalBlock(scope: !3588, file: !806, line: 686, column: 23)
!3588 = distinct !DILexicalBlock(scope: !3545, file: !806, line: 685, column: 30)
!3589 = !DILocation(line: 687, column: 25, scope: !3586)
!3590 = !DILocation(line: 689, column: 23, scope: !3587)
!3591 = !DILocation(line: 690, column: 35, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3546, file: !806, line: 690, column: 25)
!3593 = !DILocation(line: 690, column: 30, scope: !3592)
!3594 = !DILocation(line: 690, column: 25, scope: !3546)
!3595 = !DILocation(line: 692, column: 21, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3597, file: !806, line: 692, column: 21)
!3597 = distinct !DILexicalBlock(scope: !3546, file: !806, line: 692, column: 21)
!3598 = !DILocation(line: 692, column: 21, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3600, file: !806, line: 692, column: 21)
!3600 = distinct !DILexicalBlock(scope: !3601, file: !806, line: 692, column: 21)
!3601 = distinct !DILexicalBlock(scope: !3596, file: !806, line: 692, column: 21)
!3602 = !DILocation(line: 692, column: 21, scope: !3600)
!3603 = !DILocation(line: 692, column: 21, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3605, file: !806, line: 692, column: 21)
!3605 = distinct !DILexicalBlock(scope: !3601, file: !806, line: 692, column: 21)
!3606 = !DILocation(line: 692, column: 21, scope: !3605)
!3607 = !DILocation(line: 692, column: 21, scope: !3601)
!3608 = !DILocation(line: 0, scope: !3546)
!3609 = !DILocation(line: 693, column: 21, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3611, file: !806, line: 693, column: 21)
!3611 = distinct !DILexicalBlock(scope: !3546, file: !806, line: 693, column: 21)
!3612 = !DILocation(line: 693, column: 21, scope: !3611)
!3613 = !DILocation(line: 694, column: 25, scope: !3546)
!3614 = !DILocation(line: 676, column: 17, scope: !3547)
!3615 = distinct !{!3615, !3616, !3617}
!3616 = !DILocation(line: 676, column: 17, scope: !3548)
!3617 = !DILocation(line: 695, column: 19, scope: !3548)
!3618 = !DILocation(line: 409, column: 30, scope: !3333)
!3619 = !DILocation(line: 702, column: 34, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3193, file: !806, line: 702, column: 11)
!3621 = !DILocation(line: 704, column: 14, scope: !3620)
!3622 = !DILocation(line: 705, column: 14, scope: !3620)
!3623 = !DILocation(line: 705, column: 35, scope: !3620)
!3624 = !DILocation(line: 705, column: 17, scope: !3620)
!3625 = !DILocation(line: 705, column: 47, scope: !3620)
!3626 = !DILocation(line: 705, column: 65, scope: !3620)
!3627 = !DILocation(line: 706, column: 11, scope: !3620)
!3628 = !DILocation(line: 702, column: 11, scope: !3193)
!3629 = !DILocation(line: 395, column: 15, scope: !3191)
!3630 = !DILocation(line: 709, column: 5, scope: !3193)
!3631 = !DILocation(line: 710, column: 7, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3193, file: !806, line: 710, column: 7)
!3633 = !DILocation(line: 710, column: 7, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3632, file: !806, line: 710, column: 7)
!3635 = !DILocation(line: 710, column: 7, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3637, file: !806, line: 710, column: 7)
!3637 = distinct !DILexicalBlock(scope: !3638, file: !806, line: 710, column: 7)
!3638 = distinct !DILexicalBlock(scope: !3634, file: !806, line: 710, column: 7)
!3639 = !DILocation(line: 710, column: 7, scope: !3637)
!3640 = !DILocation(line: 710, column: 7, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3642, file: !806, line: 710, column: 7)
!3642 = distinct !DILexicalBlock(scope: !3638, file: !806, line: 710, column: 7)
!3643 = !DILocation(line: 710, column: 7, scope: !3642)
!3644 = !DILocation(line: 710, column: 7, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3646, file: !806, line: 710, column: 7)
!3646 = distinct !DILexicalBlock(scope: !3638, file: !806, line: 710, column: 7)
!3647 = !DILocation(line: 710, column: 7, scope: !3646)
!3648 = !DILocation(line: 710, column: 7, scope: !3638)
!3649 = !DILocation(line: 710, column: 7, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3651, file: !806, line: 710, column: 7)
!3651 = distinct !DILexicalBlock(scope: !3632, file: !806, line: 710, column: 7)
!3652 = !DILocation(line: 710, column: 7, scope: !3651)
!3653 = !DILocation(line: 712, column: 5, scope: !3193)
!3654 = !DILocation(line: 713, column: 7, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3656, file: !806, line: 713, column: 7)
!3656 = distinct !DILexicalBlock(scope: !3193, file: !806, line: 713, column: 7)
!3657 = !DILocation(line: 417, column: 21, scope: !3193)
!3658 = !DILocation(line: 713, column: 7, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3660, file: !806, line: 713, column: 7)
!3660 = distinct !DILexicalBlock(scope: !3661, file: !806, line: 713, column: 7)
!3661 = distinct !DILexicalBlock(scope: !3655, file: !806, line: 713, column: 7)
!3662 = !DILocation(line: 713, column: 7, scope: !3660)
!3663 = !DILocation(line: 713, column: 7, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3665, file: !806, line: 713, column: 7)
!3665 = distinct !DILexicalBlock(scope: !3661, file: !806, line: 713, column: 7)
!3666 = !DILocation(line: 713, column: 7, scope: !3665)
!3667 = !DILocation(line: 713, column: 7, scope: !3661)
!3668 = !DILocation(line: 714, column: 7, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3670, file: !806, line: 714, column: 7)
!3670 = distinct !DILexicalBlock(scope: !3193, file: !806, line: 714, column: 7)
!3671 = !DILocation(line: 714, column: 7, scope: !3670)
!3672 = !DILocation(line: 716, column: 11, scope: !3193)
!3673 = !DILocation(line: 718, column: 5, scope: !3194)
!3674 = !DILocation(line: 395, column: 82, scope: !3194)
!3675 = !DILocation(line: 395, column: 3, scope: !3194)
!3676 = distinct !{!3676, !3329, !3677, !1221}
!3677 = !DILocation(line: 718, column: 5, scope: !3191)
!3678 = !DILocation(line: 720, column: 11, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3159, file: !806, line: 720, column: 7)
!3680 = !DILocation(line: 720, column: 16, scope: !3679)
!3681 = !DILocation(line: 728, column: 51, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3159, file: !806, line: 728, column: 7)
!3683 = !DILocation(line: 731, column: 11, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3682, file: !806, line: 730, column: 5)
!3685 = !DILocation(line: 732, column: 16, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3684, file: !806, line: 731, column: 11)
!3687 = !DILocation(line: 732, column: 9, scope: !3686)
!3688 = !DILocation(line: 736, column: 18, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3686, file: !806, line: 736, column: 16)
!3690 = !DILocation(line: 736, column: 29, scope: !3689)
!3691 = !DILocation(line: 745, column: 7, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3159, file: !806, line: 745, column: 7)
!3693 = !DILocation(line: 745, column: 20, scope: !3692)
!3694 = !DILocation(line: 746, column: 12, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3696, file: !806, line: 746, column: 5)
!3696 = distinct !DILexicalBlock(scope: !3692, file: !806, line: 746, column: 5)
!3697 = !DILocation(line: 746, column: 5, scope: !3696)
!3698 = !DILocation(line: 747, column: 7, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3700, file: !806, line: 747, column: 7)
!3700 = distinct !DILexicalBlock(scope: !3695, file: !806, line: 747, column: 7)
!3701 = !DILocation(line: 747, column: 7, scope: !3700)
!3702 = !DILocation(line: 746, column: 39, scope: !3695)
!3703 = distinct !{!3703, !3697, !3704, !1221}
!3704 = !DILocation(line: 747, column: 7, scope: !3696)
!3705 = !DILocation(line: 749, column: 11, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3159, file: !806, line: 749, column: 7)
!3707 = !DILocation(line: 749, column: 7, scope: !3159)
!3708 = !DILocation(line: 750, column: 5, scope: !3706)
!3709 = !DILocation(line: 750, column: 17, scope: !3706)
!3710 = !DILocation(line: 756, column: 21, scope: !3537)
!3711 = !DILocation(line: 760, column: 42, scope: !3159)
!3712 = !DILocation(line: 758, column: 10, scope: !3159)
!3713 = !DILocation(line: 758, column: 3, scope: !3159)
!3714 = !DILocation(line: 762, column: 1, scope: !3159)
!3715 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1295, file: !1295, line: 98, type: !3716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!163}
!3718 = !DISubprogram(name: "iswprint", scope: !3719, file: !3719, line: 120, type: !3523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3719 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3720 = distinct !DISubprogram(name: "quotearg_alloc", scope: !806, file: !806, line: 788, type: !3721, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3723)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!121, !171, !163, !3053}
!3723 = !{!3724, !3725, !3726}
!3724 = !DILocalVariable(name: "arg", arg: 1, scope: !3720, file: !806, line: 788, type: !171)
!3725 = !DILocalVariable(name: "argsize", arg: 2, scope: !3720, file: !806, line: 788, type: !163)
!3726 = !DILocalVariable(name: "o", arg: 3, scope: !3720, file: !806, line: 789, type: !3053)
!3727 = !DILocation(line: 0, scope: !3720)
!3728 = !DILocalVariable(name: "arg", arg: 1, scope: !3729, file: !806, line: 801, type: !171)
!3729 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !806, file: !806, line: 801, type: !3730, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3732)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!121, !171, !163, !1051, !3053}
!3732 = !{!3728, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740}
!3733 = !DILocalVariable(name: "argsize", arg: 2, scope: !3729, file: !806, line: 801, type: !163)
!3734 = !DILocalVariable(name: "size", arg: 3, scope: !3729, file: !806, line: 801, type: !1051)
!3735 = !DILocalVariable(name: "o", arg: 4, scope: !3729, file: !806, line: 802, type: !3053)
!3736 = !DILocalVariable(name: "p", scope: !3729, file: !806, line: 804, type: !3053)
!3737 = !DILocalVariable(name: "saved_errno", scope: !3729, file: !806, line: 805, type: !89)
!3738 = !DILocalVariable(name: "flags", scope: !3729, file: !806, line: 807, type: !89)
!3739 = !DILocalVariable(name: "bufsize", scope: !3729, file: !806, line: 808, type: !163)
!3740 = !DILocalVariable(name: "buf", scope: !3729, file: !806, line: 812, type: !121)
!3741 = !DILocation(line: 0, scope: !3729, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 791, column: 10, scope: !3720)
!3743 = !DILocation(line: 804, column: 37, scope: !3729, inlinedAt: !3742)
!3744 = !DILocation(line: 805, column: 21, scope: !3729, inlinedAt: !3742)
!3745 = !DILocation(line: 807, column: 18, scope: !3729, inlinedAt: !3742)
!3746 = !DILocation(line: 807, column: 24, scope: !3729, inlinedAt: !3742)
!3747 = !DILocation(line: 808, column: 72, scope: !3729, inlinedAt: !3742)
!3748 = !DILocation(line: 809, column: 56, scope: !3729, inlinedAt: !3742)
!3749 = !DILocation(line: 810, column: 49, scope: !3729, inlinedAt: !3742)
!3750 = !DILocation(line: 811, column: 49, scope: !3729, inlinedAt: !3742)
!3751 = !DILocation(line: 808, column: 20, scope: !3729, inlinedAt: !3742)
!3752 = !DILocation(line: 811, column: 62, scope: !3729, inlinedAt: !3742)
!3753 = !DILocation(line: 812, column: 15, scope: !3729, inlinedAt: !3742)
!3754 = !DILocation(line: 813, column: 60, scope: !3729, inlinedAt: !3742)
!3755 = !DILocation(line: 815, column: 32, scope: !3729, inlinedAt: !3742)
!3756 = !DILocation(line: 815, column: 47, scope: !3729, inlinedAt: !3742)
!3757 = !DILocation(line: 813, column: 3, scope: !3729, inlinedAt: !3742)
!3758 = !DILocation(line: 816, column: 9, scope: !3729, inlinedAt: !3742)
!3759 = !DILocation(line: 791, column: 3, scope: !3720)
!3760 = !DILocation(line: 0, scope: !3729)
!3761 = !DILocation(line: 804, column: 37, scope: !3729)
!3762 = !DILocation(line: 805, column: 21, scope: !3729)
!3763 = !DILocation(line: 807, column: 18, scope: !3729)
!3764 = !DILocation(line: 807, column: 27, scope: !3729)
!3765 = !DILocation(line: 807, column: 24, scope: !3729)
!3766 = !DILocation(line: 808, column: 72, scope: !3729)
!3767 = !DILocation(line: 809, column: 56, scope: !3729)
!3768 = !DILocation(line: 810, column: 49, scope: !3729)
!3769 = !DILocation(line: 811, column: 49, scope: !3729)
!3770 = !DILocation(line: 808, column: 20, scope: !3729)
!3771 = !DILocation(line: 811, column: 62, scope: !3729)
!3772 = !DILocation(line: 812, column: 15, scope: !3729)
!3773 = !DILocation(line: 813, column: 60, scope: !3729)
!3774 = !DILocation(line: 815, column: 32, scope: !3729)
!3775 = !DILocation(line: 815, column: 47, scope: !3729)
!3776 = !DILocation(line: 813, column: 3, scope: !3729)
!3777 = !DILocation(line: 816, column: 9, scope: !3729)
!3778 = !DILocation(line: 817, column: 7, scope: !3729)
!3779 = !DILocation(line: 818, column: 11, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3729, file: !806, line: 817, column: 7)
!3781 = !DILocation(line: 818, column: 5, scope: !3780)
!3782 = !DILocation(line: 819, column: 3, scope: !3729)
!3783 = distinct !DISubprogram(name: "quotearg_free", scope: !806, file: !806, line: 837, type: !746, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3784)
!3784 = !{!3785, !3786}
!3785 = !DILocalVariable(name: "sv", scope: !3783, file: !806, line: 839, type: !892)
!3786 = !DILocalVariable(name: "i", scope: !3787, file: !806, line: 840, type: !89)
!3787 = distinct !DILexicalBlock(scope: !3783, file: !806, line: 840, column: 3)
!3788 = !DILocation(line: 839, column: 24, scope: !3783)
!3789 = !DILocation(line: 0, scope: !3783)
!3790 = !DILocation(line: 0, scope: !3787)
!3791 = !DILocation(line: 840, column: 21, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3787, file: !806, line: 840, column: 3)
!3793 = !DILocation(line: 840, column: 3, scope: !3787)
!3794 = !DILocation(line: 842, column: 13, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3783, file: !806, line: 842, column: 7)
!3796 = !{!3797, !1110, i64 8}
!3797 = !{!"slotvec", !1477, i64 0, !1110, i64 8}
!3798 = !DILocation(line: 842, column: 17, scope: !3795)
!3799 = !DILocation(line: 842, column: 7, scope: !3783)
!3800 = !DILocation(line: 841, column: 17, scope: !3792)
!3801 = !DILocation(line: 841, column: 5, scope: !3792)
!3802 = !DILocation(line: 840, column: 32, scope: !3792)
!3803 = distinct !{!3803, !3793, !3804, !1221}
!3804 = !DILocation(line: 841, column: 20, scope: !3787)
!3805 = !DILocation(line: 844, column: 7, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3795, file: !806, line: 843, column: 5)
!3807 = !DILocation(line: 845, column: 21, scope: !3806)
!3808 = !{!3797, !1477, i64 0}
!3809 = !DILocation(line: 846, column: 20, scope: !3806)
!3810 = !DILocation(line: 847, column: 5, scope: !3806)
!3811 = !DILocation(line: 848, column: 10, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3783, file: !806, line: 848, column: 7)
!3813 = !DILocation(line: 848, column: 7, scope: !3783)
!3814 = !DILocation(line: 850, column: 7, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3812, file: !806, line: 849, column: 5)
!3816 = !DILocation(line: 851, column: 15, scope: !3815)
!3817 = !DILocation(line: 852, column: 5, scope: !3815)
!3818 = !DILocation(line: 853, column: 10, scope: !3783)
!3819 = !DILocation(line: 854, column: 1, scope: !3783)
!3820 = distinct !DISubprogram(name: "quotearg_n", scope: !806, file: !806, line: 919, type: !1288, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3821)
!3821 = !{!3822, !3823}
!3822 = !DILocalVariable(name: "n", arg: 1, scope: !3820, file: !806, line: 919, type: !89)
!3823 = !DILocalVariable(name: "arg", arg: 2, scope: !3820, file: !806, line: 919, type: !171)
!3824 = !DILocation(line: 0, scope: !3820)
!3825 = !DILocation(line: 921, column: 10, scope: !3820)
!3826 = !DILocation(line: 921, column: 3, scope: !3820)
!3827 = distinct !DISubprogram(name: "quotearg_n_options", scope: !806, file: !806, line: 866, type: !3828, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3830)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!121, !89, !171, !163, !3053}
!3830 = !{!3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3841, !3842, !3844, !3845, !3846}
!3831 = !DILocalVariable(name: "n", arg: 1, scope: !3827, file: !806, line: 866, type: !89)
!3832 = !DILocalVariable(name: "arg", arg: 2, scope: !3827, file: !806, line: 866, type: !171)
!3833 = !DILocalVariable(name: "argsize", arg: 3, scope: !3827, file: !806, line: 866, type: !163)
!3834 = !DILocalVariable(name: "options", arg: 4, scope: !3827, file: !806, line: 867, type: !3053)
!3835 = !DILocalVariable(name: "saved_errno", scope: !3827, file: !806, line: 869, type: !89)
!3836 = !DILocalVariable(name: "sv", scope: !3827, file: !806, line: 871, type: !892)
!3837 = !DILocalVariable(name: "nslots_max", scope: !3827, file: !806, line: 873, type: !89)
!3838 = !DILocalVariable(name: "preallocated", scope: !3839, file: !806, line: 879, type: !112)
!3839 = distinct !DILexicalBlock(scope: !3840, file: !806, line: 878, column: 5)
!3840 = distinct !DILexicalBlock(scope: !3827, file: !806, line: 877, column: 7)
!3841 = !DILocalVariable(name: "new_nslots", scope: !3839, file: !806, line: 880, type: !1064)
!3842 = !DILocalVariable(name: "size", scope: !3843, file: !806, line: 891, type: !163)
!3843 = distinct !DILexicalBlock(scope: !3827, file: !806, line: 890, column: 3)
!3844 = !DILocalVariable(name: "val", scope: !3843, file: !806, line: 892, type: !121)
!3845 = !DILocalVariable(name: "flags", scope: !3843, file: !806, line: 894, type: !89)
!3846 = !DILocalVariable(name: "qsize", scope: !3843, file: !806, line: 895, type: !163)
!3847 = distinct !DIAssignID()
!3848 = !DILocation(line: 0, scope: !3839)
!3849 = !DILocation(line: 0, scope: !3827)
!3850 = !DILocation(line: 869, column: 21, scope: !3827)
!3851 = !DILocation(line: 871, column: 24, scope: !3827)
!3852 = !DILocation(line: 874, column: 17, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3827, file: !806, line: 874, column: 7)
!3854 = !DILocation(line: 875, column: 5, scope: !3853)
!3855 = !DILocation(line: 877, column: 7, scope: !3840)
!3856 = !DILocation(line: 877, column: 14, scope: !3840)
!3857 = !DILocation(line: 877, column: 7, scope: !3827)
!3858 = !DILocation(line: 879, column: 31, scope: !3839)
!3859 = !DILocation(line: 880, column: 7, scope: !3839)
!3860 = !DILocation(line: 880, column: 26, scope: !3839)
!3861 = !DILocation(line: 880, column: 13, scope: !3839)
!3862 = distinct !DIAssignID()
!3863 = !DILocation(line: 882, column: 31, scope: !3839)
!3864 = !DILocation(line: 883, column: 33, scope: !3839)
!3865 = !DILocation(line: 883, column: 42, scope: !3839)
!3866 = !DILocation(line: 883, column: 31, scope: !3839)
!3867 = !DILocation(line: 882, column: 22, scope: !3839)
!3868 = !DILocation(line: 882, column: 15, scope: !3839)
!3869 = !DILocation(line: 884, column: 11, scope: !3839)
!3870 = !DILocation(line: 885, column: 15, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3839, file: !806, line: 884, column: 11)
!3872 = !{i64 0, i64 8, !1525, i64 8, i64 8, !1109}
!3873 = !DILocation(line: 885, column: 9, scope: !3871)
!3874 = !DILocation(line: 886, column: 20, scope: !3839)
!3875 = !DILocation(line: 886, column: 18, scope: !3839)
!3876 = !DILocation(line: 886, column: 32, scope: !3839)
!3877 = !DILocation(line: 886, column: 43, scope: !3839)
!3878 = !DILocation(line: 886, column: 53, scope: !3839)
!3879 = !DILocation(line: 0, scope: !3269, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 886, column: 7, scope: !3839)
!3881 = !DILocation(line: 59, column: 10, scope: !3269, inlinedAt: !3880)
!3882 = !DILocation(line: 887, column: 16, scope: !3839)
!3883 = !DILocation(line: 887, column: 14, scope: !3839)
!3884 = !DILocation(line: 888, column: 5, scope: !3840)
!3885 = !DILocation(line: 888, column: 5, scope: !3839)
!3886 = !DILocation(line: 891, column: 19, scope: !3843)
!3887 = !DILocation(line: 891, column: 25, scope: !3843)
!3888 = !DILocation(line: 0, scope: !3843)
!3889 = !DILocation(line: 892, column: 23, scope: !3843)
!3890 = !DILocation(line: 894, column: 26, scope: !3843)
!3891 = !DILocation(line: 894, column: 32, scope: !3843)
!3892 = !DILocation(line: 896, column: 55, scope: !3843)
!3893 = !DILocation(line: 897, column: 55, scope: !3843)
!3894 = !DILocation(line: 898, column: 55, scope: !3843)
!3895 = !DILocation(line: 899, column: 55, scope: !3843)
!3896 = !DILocation(line: 895, column: 20, scope: !3843)
!3897 = !DILocation(line: 901, column: 14, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3843, file: !806, line: 901, column: 9)
!3899 = !DILocation(line: 901, column: 9, scope: !3843)
!3900 = !DILocation(line: 903, column: 35, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3898, file: !806, line: 902, column: 7)
!3902 = !DILocation(line: 903, column: 20, scope: !3901)
!3903 = !DILocation(line: 904, column: 17, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3901, file: !806, line: 904, column: 13)
!3905 = !DILocation(line: 904, column: 13, scope: !3901)
!3906 = !DILocation(line: 905, column: 11, scope: !3904)
!3907 = !DILocation(line: 906, column: 27, scope: !3901)
!3908 = !DILocation(line: 906, column: 19, scope: !3901)
!3909 = !DILocation(line: 907, column: 69, scope: !3901)
!3910 = !DILocation(line: 909, column: 44, scope: !3901)
!3911 = !DILocation(line: 910, column: 44, scope: !3901)
!3912 = !DILocation(line: 907, column: 9, scope: !3901)
!3913 = !DILocation(line: 911, column: 7, scope: !3901)
!3914 = !DILocation(line: 913, column: 11, scope: !3843)
!3915 = !DILocation(line: 914, column: 5, scope: !3843)
!3916 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !806, file: !806, line: 925, type: !3917, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3919)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!121, !89, !171, !163}
!3919 = !{!3920, !3921, !3922}
!3920 = !DILocalVariable(name: "n", arg: 1, scope: !3916, file: !806, line: 925, type: !89)
!3921 = !DILocalVariable(name: "arg", arg: 2, scope: !3916, file: !806, line: 925, type: !171)
!3922 = !DILocalVariable(name: "argsize", arg: 3, scope: !3916, file: !806, line: 925, type: !163)
!3923 = !DILocation(line: 0, scope: !3916)
!3924 = !DILocation(line: 927, column: 10, scope: !3916)
!3925 = !DILocation(line: 927, column: 3, scope: !3916)
!3926 = distinct !DISubprogram(name: "quotearg", scope: !806, file: !806, line: 931, type: !1297, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3927)
!3927 = !{!3928}
!3928 = !DILocalVariable(name: "arg", arg: 1, scope: !3926, file: !806, line: 931, type: !171)
!3929 = !DILocation(line: 0, scope: !3926)
!3930 = !DILocation(line: 0, scope: !3820, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 933, column: 10, scope: !3926)
!3932 = !DILocation(line: 921, column: 10, scope: !3820, inlinedAt: !3931)
!3933 = !DILocation(line: 933, column: 3, scope: !3926)
!3934 = distinct !DISubprogram(name: "quotearg_mem", scope: !806, file: !806, line: 937, type: !3935, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3937)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!121, !171, !163}
!3937 = !{!3938, !3939}
!3938 = !DILocalVariable(name: "arg", arg: 1, scope: !3934, file: !806, line: 937, type: !171)
!3939 = !DILocalVariable(name: "argsize", arg: 2, scope: !3934, file: !806, line: 937, type: !163)
!3940 = !DILocation(line: 0, scope: !3934)
!3941 = !DILocation(line: 0, scope: !3916, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 939, column: 10, scope: !3934)
!3943 = !DILocation(line: 927, column: 10, scope: !3916, inlinedAt: !3942)
!3944 = !DILocation(line: 939, column: 3, scope: !3934)
!3945 = distinct !DISubprogram(name: "quotearg_n_style", scope: !806, file: !806, line: 943, type: !3946, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3948)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!121, !89, !829, !171}
!3948 = !{!3949, !3950, !3951, !3952}
!3949 = !DILocalVariable(name: "n", arg: 1, scope: !3945, file: !806, line: 943, type: !89)
!3950 = !DILocalVariable(name: "s", arg: 2, scope: !3945, file: !806, line: 943, type: !829)
!3951 = !DILocalVariable(name: "arg", arg: 3, scope: !3945, file: !806, line: 943, type: !171)
!3952 = !DILocalVariable(name: "o", scope: !3945, file: !806, line: 945, type: !3054)
!3953 = distinct !DIAssignID()
!3954 = !DILocation(line: 0, scope: !3945)
!3955 = !DILocation(line: 945, column: 3, scope: !3945)
!3956 = !{!3957}
!3957 = distinct !{!3957, !3958, !"quoting_options_from_style: argument 0"}
!3958 = distinct !{!3958, !"quoting_options_from_style"}
!3959 = !DILocation(line: 945, column: 36, scope: !3945)
!3960 = !DILocalVariable(name: "style", arg: 1, scope: !3961, file: !806, line: 183, type: !829)
!3961 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !806, file: !806, line: 183, type: !3962, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3964)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!844, !829}
!3964 = !{!3960, !3965}
!3965 = !DILocalVariable(name: "o", scope: !3961, file: !806, line: 185, type: !844)
!3966 = !DILocation(line: 0, scope: !3961, inlinedAt: !3967)
!3967 = distinct !DILocation(line: 945, column: 36, scope: !3945)
!3968 = !DILocation(line: 185, column: 26, scope: !3961, inlinedAt: !3967)
!3969 = distinct !DIAssignID()
!3970 = !DILocation(line: 186, column: 13, scope: !3971, inlinedAt: !3967)
!3971 = distinct !DILexicalBlock(scope: !3961, file: !806, line: 186, column: 7)
!3972 = !DILocation(line: 186, column: 7, scope: !3961, inlinedAt: !3967)
!3973 = !DILocation(line: 187, column: 5, scope: !3971, inlinedAt: !3967)
!3974 = !DILocation(line: 188, column: 11, scope: !3961, inlinedAt: !3967)
!3975 = distinct !DIAssignID()
!3976 = !DILocation(line: 946, column: 10, scope: !3945)
!3977 = !DILocation(line: 947, column: 1, scope: !3945)
!3978 = !DILocation(line: 946, column: 3, scope: !3945)
!3979 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !806, file: !806, line: 950, type: !3980, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3982)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!121, !89, !829, !171, !163}
!3982 = !{!3983, !3984, !3985, !3986, !3987}
!3983 = !DILocalVariable(name: "n", arg: 1, scope: !3979, file: !806, line: 950, type: !89)
!3984 = !DILocalVariable(name: "s", arg: 2, scope: !3979, file: !806, line: 950, type: !829)
!3985 = !DILocalVariable(name: "arg", arg: 3, scope: !3979, file: !806, line: 951, type: !171)
!3986 = !DILocalVariable(name: "argsize", arg: 4, scope: !3979, file: !806, line: 951, type: !163)
!3987 = !DILocalVariable(name: "o", scope: !3979, file: !806, line: 953, type: !3054)
!3988 = distinct !DIAssignID()
!3989 = !DILocation(line: 0, scope: !3979)
!3990 = !DILocation(line: 953, column: 3, scope: !3979)
!3991 = !{!3992}
!3992 = distinct !{!3992, !3993, !"quoting_options_from_style: argument 0"}
!3993 = distinct !{!3993, !"quoting_options_from_style"}
!3994 = !DILocation(line: 953, column: 36, scope: !3979)
!3995 = !DILocation(line: 0, scope: !3961, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 953, column: 36, scope: !3979)
!3997 = !DILocation(line: 185, column: 26, scope: !3961, inlinedAt: !3996)
!3998 = distinct !DIAssignID()
!3999 = !DILocation(line: 186, column: 13, scope: !3971, inlinedAt: !3996)
!4000 = !DILocation(line: 186, column: 7, scope: !3961, inlinedAt: !3996)
!4001 = !DILocation(line: 187, column: 5, scope: !3971, inlinedAt: !3996)
!4002 = !DILocation(line: 188, column: 11, scope: !3961, inlinedAt: !3996)
!4003 = distinct !DIAssignID()
!4004 = !DILocation(line: 954, column: 10, scope: !3979)
!4005 = !DILocation(line: 955, column: 1, scope: !3979)
!4006 = !DILocation(line: 954, column: 3, scope: !3979)
!4007 = distinct !DISubprogram(name: "quotearg_style", scope: !806, file: !806, line: 958, type: !4008, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4010)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!121, !829, !171}
!4010 = !{!4011, !4012}
!4011 = !DILocalVariable(name: "s", arg: 1, scope: !4007, file: !806, line: 958, type: !829)
!4012 = !DILocalVariable(name: "arg", arg: 2, scope: !4007, file: !806, line: 958, type: !171)
!4013 = distinct !DIAssignID()
!4014 = !DILocation(line: 0, scope: !4007)
!4015 = !DILocation(line: 0, scope: !3945, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 960, column: 10, scope: !4007)
!4017 = !DILocation(line: 945, column: 3, scope: !3945, inlinedAt: !4016)
!4018 = !{!4019}
!4019 = distinct !{!4019, !4020, !"quoting_options_from_style: argument 0"}
!4020 = distinct !{!4020, !"quoting_options_from_style"}
!4021 = !DILocation(line: 945, column: 36, scope: !3945, inlinedAt: !4016)
!4022 = !DILocation(line: 0, scope: !3961, inlinedAt: !4023)
!4023 = distinct !DILocation(line: 945, column: 36, scope: !3945, inlinedAt: !4016)
!4024 = !DILocation(line: 185, column: 26, scope: !3961, inlinedAt: !4023)
!4025 = distinct !DIAssignID()
!4026 = !DILocation(line: 186, column: 13, scope: !3971, inlinedAt: !4023)
!4027 = !DILocation(line: 186, column: 7, scope: !3961, inlinedAt: !4023)
!4028 = !DILocation(line: 187, column: 5, scope: !3971, inlinedAt: !4023)
!4029 = !DILocation(line: 188, column: 11, scope: !3961, inlinedAt: !4023)
!4030 = distinct !DIAssignID()
!4031 = !DILocation(line: 946, column: 10, scope: !3945, inlinedAt: !4016)
!4032 = !DILocation(line: 947, column: 1, scope: !3945, inlinedAt: !4016)
!4033 = !DILocation(line: 960, column: 3, scope: !4007)
!4034 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !806, file: !806, line: 964, type: !4035, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4037)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!121, !829, !171, !163}
!4037 = !{!4038, !4039, !4040}
!4038 = !DILocalVariable(name: "s", arg: 1, scope: !4034, file: !806, line: 964, type: !829)
!4039 = !DILocalVariable(name: "arg", arg: 2, scope: !4034, file: !806, line: 964, type: !171)
!4040 = !DILocalVariable(name: "argsize", arg: 3, scope: !4034, file: !806, line: 964, type: !163)
!4041 = distinct !DIAssignID()
!4042 = !DILocation(line: 0, scope: !4034)
!4043 = !DILocation(line: 0, scope: !3979, inlinedAt: !4044)
!4044 = distinct !DILocation(line: 966, column: 10, scope: !4034)
!4045 = !DILocation(line: 953, column: 3, scope: !3979, inlinedAt: !4044)
!4046 = !{!4047}
!4047 = distinct !{!4047, !4048, !"quoting_options_from_style: argument 0"}
!4048 = distinct !{!4048, !"quoting_options_from_style"}
!4049 = !DILocation(line: 953, column: 36, scope: !3979, inlinedAt: !4044)
!4050 = !DILocation(line: 0, scope: !3961, inlinedAt: !4051)
!4051 = distinct !DILocation(line: 953, column: 36, scope: !3979, inlinedAt: !4044)
!4052 = !DILocation(line: 185, column: 26, scope: !3961, inlinedAt: !4051)
!4053 = distinct !DIAssignID()
!4054 = !DILocation(line: 186, column: 13, scope: !3971, inlinedAt: !4051)
!4055 = !DILocation(line: 186, column: 7, scope: !3961, inlinedAt: !4051)
!4056 = !DILocation(line: 187, column: 5, scope: !3971, inlinedAt: !4051)
!4057 = !DILocation(line: 188, column: 11, scope: !3961, inlinedAt: !4051)
!4058 = distinct !DIAssignID()
!4059 = !DILocation(line: 954, column: 10, scope: !3979, inlinedAt: !4044)
!4060 = !DILocation(line: 955, column: 1, scope: !3979, inlinedAt: !4044)
!4061 = !DILocation(line: 966, column: 3, scope: !4034)
!4062 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !806, file: !806, line: 970, type: !4063, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4065)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!121, !171, !163, !4}
!4065 = !{!4066, !4067, !4068, !4069}
!4066 = !DILocalVariable(name: "arg", arg: 1, scope: !4062, file: !806, line: 970, type: !171)
!4067 = !DILocalVariable(name: "argsize", arg: 2, scope: !4062, file: !806, line: 970, type: !163)
!4068 = !DILocalVariable(name: "ch", arg: 3, scope: !4062, file: !806, line: 970, type: !4)
!4069 = !DILocalVariable(name: "options", scope: !4062, file: !806, line: 972, type: !844)
!4070 = distinct !DIAssignID()
!4071 = !DILocation(line: 0, scope: !4062)
!4072 = !DILocation(line: 972, column: 3, scope: !4062)
!4073 = !DILocation(line: 973, column: 13, scope: !4062)
!4074 = !{i64 0, i64 4, !1174, i64 4, i64 4, !1174, i64 8, i64 32, !1183, i64 40, i64 8, !1109, i64 48, i64 8, !1109}
!4075 = distinct !DIAssignID()
!4076 = !DILocation(line: 0, scope: !3073, inlinedAt: !4077)
!4077 = distinct !DILocation(line: 974, column: 3, scope: !4062)
!4078 = !DILocation(line: 147, column: 41, scope: !3073, inlinedAt: !4077)
!4079 = !DILocation(line: 147, column: 62, scope: !3073, inlinedAt: !4077)
!4080 = !DILocation(line: 147, column: 57, scope: !3073, inlinedAt: !4077)
!4081 = !DILocation(line: 148, column: 15, scope: !3073, inlinedAt: !4077)
!4082 = !DILocation(line: 149, column: 21, scope: !3073, inlinedAt: !4077)
!4083 = !DILocation(line: 149, column: 24, scope: !3073, inlinedAt: !4077)
!4084 = !DILocation(line: 150, column: 19, scope: !3073, inlinedAt: !4077)
!4085 = !DILocation(line: 150, column: 24, scope: !3073, inlinedAt: !4077)
!4086 = !DILocation(line: 150, column: 6, scope: !3073, inlinedAt: !4077)
!4087 = !DILocation(line: 975, column: 10, scope: !4062)
!4088 = !DILocation(line: 976, column: 1, scope: !4062)
!4089 = !DILocation(line: 975, column: 3, scope: !4062)
!4090 = distinct !DISubprogram(name: "quotearg_char", scope: !806, file: !806, line: 979, type: !4091, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4093)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!121, !171, !4}
!4093 = !{!4094, !4095}
!4094 = !DILocalVariable(name: "arg", arg: 1, scope: !4090, file: !806, line: 979, type: !171)
!4095 = !DILocalVariable(name: "ch", arg: 2, scope: !4090, file: !806, line: 979, type: !4)
!4096 = distinct !DIAssignID()
!4097 = !DILocation(line: 0, scope: !4090)
!4098 = !DILocation(line: 0, scope: !4062, inlinedAt: !4099)
!4099 = distinct !DILocation(line: 981, column: 10, scope: !4090)
!4100 = !DILocation(line: 972, column: 3, scope: !4062, inlinedAt: !4099)
!4101 = !DILocation(line: 973, column: 13, scope: !4062, inlinedAt: !4099)
!4102 = distinct !DIAssignID()
!4103 = !DILocation(line: 0, scope: !3073, inlinedAt: !4104)
!4104 = distinct !DILocation(line: 974, column: 3, scope: !4062, inlinedAt: !4099)
!4105 = !DILocation(line: 147, column: 41, scope: !3073, inlinedAt: !4104)
!4106 = !DILocation(line: 147, column: 62, scope: !3073, inlinedAt: !4104)
!4107 = !DILocation(line: 147, column: 57, scope: !3073, inlinedAt: !4104)
!4108 = !DILocation(line: 148, column: 15, scope: !3073, inlinedAt: !4104)
!4109 = !DILocation(line: 149, column: 21, scope: !3073, inlinedAt: !4104)
!4110 = !DILocation(line: 149, column: 24, scope: !3073, inlinedAt: !4104)
!4111 = !DILocation(line: 150, column: 19, scope: !3073, inlinedAt: !4104)
!4112 = !DILocation(line: 150, column: 24, scope: !3073, inlinedAt: !4104)
!4113 = !DILocation(line: 150, column: 6, scope: !3073, inlinedAt: !4104)
!4114 = !DILocation(line: 975, column: 10, scope: !4062, inlinedAt: !4099)
!4115 = !DILocation(line: 976, column: 1, scope: !4062, inlinedAt: !4099)
!4116 = !DILocation(line: 981, column: 3, scope: !4090)
!4117 = distinct !DISubprogram(name: "quotearg_colon", scope: !806, file: !806, line: 985, type: !1297, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4118)
!4118 = !{!4119}
!4119 = !DILocalVariable(name: "arg", arg: 1, scope: !4117, file: !806, line: 985, type: !171)
!4120 = distinct !DIAssignID()
!4121 = !DILocation(line: 0, scope: !4117)
!4122 = !DILocation(line: 0, scope: !4090, inlinedAt: !4123)
!4123 = distinct !DILocation(line: 987, column: 10, scope: !4117)
!4124 = !DILocation(line: 0, scope: !4062, inlinedAt: !4125)
!4125 = distinct !DILocation(line: 981, column: 10, scope: !4090, inlinedAt: !4123)
!4126 = !DILocation(line: 972, column: 3, scope: !4062, inlinedAt: !4125)
!4127 = !DILocation(line: 973, column: 13, scope: !4062, inlinedAt: !4125)
!4128 = distinct !DIAssignID()
!4129 = !DILocation(line: 0, scope: !3073, inlinedAt: !4130)
!4130 = distinct !DILocation(line: 974, column: 3, scope: !4062, inlinedAt: !4125)
!4131 = !DILocation(line: 147, column: 57, scope: !3073, inlinedAt: !4130)
!4132 = !DILocation(line: 149, column: 21, scope: !3073, inlinedAt: !4130)
!4133 = !DILocation(line: 150, column: 6, scope: !3073, inlinedAt: !4130)
!4134 = !DILocation(line: 975, column: 10, scope: !4062, inlinedAt: !4125)
!4135 = !DILocation(line: 976, column: 1, scope: !4062, inlinedAt: !4125)
!4136 = !DILocation(line: 987, column: 3, scope: !4117)
!4137 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !806, file: !806, line: 991, type: !3935, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4138)
!4138 = !{!4139, !4140}
!4139 = !DILocalVariable(name: "arg", arg: 1, scope: !4137, file: !806, line: 991, type: !171)
!4140 = !DILocalVariable(name: "argsize", arg: 2, scope: !4137, file: !806, line: 991, type: !163)
!4141 = distinct !DIAssignID()
!4142 = !DILocation(line: 0, scope: !4137)
!4143 = !DILocation(line: 0, scope: !4062, inlinedAt: !4144)
!4144 = distinct !DILocation(line: 993, column: 10, scope: !4137)
!4145 = !DILocation(line: 972, column: 3, scope: !4062, inlinedAt: !4144)
!4146 = !DILocation(line: 973, column: 13, scope: !4062, inlinedAt: !4144)
!4147 = distinct !DIAssignID()
!4148 = !DILocation(line: 0, scope: !3073, inlinedAt: !4149)
!4149 = distinct !DILocation(line: 974, column: 3, scope: !4062, inlinedAt: !4144)
!4150 = !DILocation(line: 147, column: 57, scope: !3073, inlinedAt: !4149)
!4151 = !DILocation(line: 149, column: 21, scope: !3073, inlinedAt: !4149)
!4152 = !DILocation(line: 150, column: 6, scope: !3073, inlinedAt: !4149)
!4153 = !DILocation(line: 975, column: 10, scope: !4062, inlinedAt: !4144)
!4154 = !DILocation(line: 976, column: 1, scope: !4062, inlinedAt: !4144)
!4155 = !DILocation(line: 993, column: 3, scope: !4137)
!4156 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !806, file: !806, line: 997, type: !3946, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4157)
!4157 = !{!4158, !4159, !4160, !4161}
!4158 = !DILocalVariable(name: "n", arg: 1, scope: !4156, file: !806, line: 997, type: !89)
!4159 = !DILocalVariable(name: "s", arg: 2, scope: !4156, file: !806, line: 997, type: !829)
!4160 = !DILocalVariable(name: "arg", arg: 3, scope: !4156, file: !806, line: 997, type: !171)
!4161 = !DILocalVariable(name: "options", scope: !4156, file: !806, line: 999, type: !844)
!4162 = distinct !DIAssignID()
!4163 = !DILocation(line: 0, scope: !4156)
!4164 = !DILocation(line: 185, column: 26, scope: !3961, inlinedAt: !4165)
!4165 = distinct !DILocation(line: 1000, column: 13, scope: !4156)
!4166 = !DILocation(line: 999, column: 3, scope: !4156)
!4167 = !DILocation(line: 0, scope: !3961, inlinedAt: !4165)
!4168 = !DILocation(line: 186, column: 13, scope: !3971, inlinedAt: !4165)
!4169 = !DILocation(line: 186, column: 7, scope: !3961, inlinedAt: !4165)
!4170 = !DILocation(line: 187, column: 5, scope: !3971, inlinedAt: !4165)
!4171 = !{!4172}
!4172 = distinct !{!4172, !4173, !"quoting_options_from_style: argument 0"}
!4173 = distinct !{!4173, !"quoting_options_from_style"}
!4174 = !DILocation(line: 1000, column: 13, scope: !4156)
!4175 = distinct !DIAssignID()
!4176 = distinct !DIAssignID()
!4177 = !DILocation(line: 0, scope: !3073, inlinedAt: !4178)
!4178 = distinct !DILocation(line: 1001, column: 3, scope: !4156)
!4179 = !DILocation(line: 147, column: 57, scope: !3073, inlinedAt: !4178)
!4180 = !DILocation(line: 149, column: 21, scope: !3073, inlinedAt: !4178)
!4181 = !DILocation(line: 150, column: 6, scope: !3073, inlinedAt: !4178)
!4182 = distinct !DIAssignID()
!4183 = !DILocation(line: 1002, column: 10, scope: !4156)
!4184 = !DILocation(line: 1003, column: 1, scope: !4156)
!4185 = !DILocation(line: 1002, column: 3, scope: !4156)
!4186 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !806, file: !806, line: 1006, type: !4187, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4189)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!121, !89, !171, !171, !171}
!4189 = !{!4190, !4191, !4192, !4193}
!4190 = !DILocalVariable(name: "n", arg: 1, scope: !4186, file: !806, line: 1006, type: !89)
!4191 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4186, file: !806, line: 1006, type: !171)
!4192 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4186, file: !806, line: 1007, type: !171)
!4193 = !DILocalVariable(name: "arg", arg: 4, scope: !4186, file: !806, line: 1007, type: !171)
!4194 = distinct !DIAssignID()
!4195 = !DILocation(line: 0, scope: !4186)
!4196 = !DILocalVariable(name: "o", scope: !4197, file: !806, line: 1018, type: !844)
!4197 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !806, file: !806, line: 1014, type: !4198, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4200)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!121, !89, !171, !171, !171, !163}
!4200 = !{!4201, !4202, !4203, !4204, !4205, !4196}
!4201 = !DILocalVariable(name: "n", arg: 1, scope: !4197, file: !806, line: 1014, type: !89)
!4202 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4197, file: !806, line: 1014, type: !171)
!4203 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4197, file: !806, line: 1015, type: !171)
!4204 = !DILocalVariable(name: "arg", arg: 4, scope: !4197, file: !806, line: 1016, type: !171)
!4205 = !DILocalVariable(name: "argsize", arg: 5, scope: !4197, file: !806, line: 1016, type: !163)
!4206 = !DILocation(line: 0, scope: !4197, inlinedAt: !4207)
!4207 = distinct !DILocation(line: 1009, column: 10, scope: !4186)
!4208 = !DILocation(line: 1018, column: 3, scope: !4197, inlinedAt: !4207)
!4209 = !DILocation(line: 1018, column: 30, scope: !4197, inlinedAt: !4207)
!4210 = distinct !DIAssignID()
!4211 = distinct !DIAssignID()
!4212 = !DILocation(line: 0, scope: !3113, inlinedAt: !4213)
!4213 = distinct !DILocation(line: 1019, column: 3, scope: !4197, inlinedAt: !4207)
!4214 = !DILocation(line: 174, column: 12, scope: !3113, inlinedAt: !4213)
!4215 = distinct !DIAssignID()
!4216 = !DILocation(line: 175, column: 8, scope: !3126, inlinedAt: !4213)
!4217 = !DILocation(line: 175, column: 19, scope: !3126, inlinedAt: !4213)
!4218 = !DILocation(line: 176, column: 5, scope: !3126, inlinedAt: !4213)
!4219 = !DILocation(line: 177, column: 6, scope: !3113, inlinedAt: !4213)
!4220 = !DILocation(line: 177, column: 17, scope: !3113, inlinedAt: !4213)
!4221 = distinct !DIAssignID()
!4222 = !DILocation(line: 178, column: 6, scope: !3113, inlinedAt: !4213)
!4223 = !DILocation(line: 178, column: 18, scope: !3113, inlinedAt: !4213)
!4224 = distinct !DIAssignID()
!4225 = !DILocation(line: 1020, column: 10, scope: !4197, inlinedAt: !4207)
!4226 = !DILocation(line: 1021, column: 1, scope: !4197, inlinedAt: !4207)
!4227 = !DILocation(line: 1009, column: 3, scope: !4186)
!4228 = distinct !DIAssignID()
!4229 = !DILocation(line: 0, scope: !4197)
!4230 = !DILocation(line: 1018, column: 3, scope: !4197)
!4231 = !DILocation(line: 1018, column: 30, scope: !4197)
!4232 = distinct !DIAssignID()
!4233 = distinct !DIAssignID()
!4234 = !DILocation(line: 0, scope: !3113, inlinedAt: !4235)
!4235 = distinct !DILocation(line: 1019, column: 3, scope: !4197)
!4236 = !DILocation(line: 174, column: 12, scope: !3113, inlinedAt: !4235)
!4237 = distinct !DIAssignID()
!4238 = !DILocation(line: 175, column: 8, scope: !3126, inlinedAt: !4235)
!4239 = !DILocation(line: 175, column: 19, scope: !3126, inlinedAt: !4235)
!4240 = !DILocation(line: 176, column: 5, scope: !3126, inlinedAt: !4235)
!4241 = !DILocation(line: 177, column: 6, scope: !3113, inlinedAt: !4235)
!4242 = !DILocation(line: 177, column: 17, scope: !3113, inlinedAt: !4235)
!4243 = distinct !DIAssignID()
!4244 = !DILocation(line: 178, column: 6, scope: !3113, inlinedAt: !4235)
!4245 = !DILocation(line: 178, column: 18, scope: !3113, inlinedAt: !4235)
!4246 = distinct !DIAssignID()
!4247 = !DILocation(line: 1020, column: 10, scope: !4197)
!4248 = !DILocation(line: 1021, column: 1, scope: !4197)
!4249 = !DILocation(line: 1020, column: 3, scope: !4197)
!4250 = distinct !DISubprogram(name: "quotearg_custom", scope: !806, file: !806, line: 1024, type: !4251, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4253)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!121, !171, !171, !171}
!4253 = !{!4254, !4255, !4256}
!4254 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4250, file: !806, line: 1024, type: !171)
!4255 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4250, file: !806, line: 1024, type: !171)
!4256 = !DILocalVariable(name: "arg", arg: 3, scope: !4250, file: !806, line: 1025, type: !171)
!4257 = distinct !DIAssignID()
!4258 = !DILocation(line: 0, scope: !4250)
!4259 = !DILocation(line: 0, scope: !4186, inlinedAt: !4260)
!4260 = distinct !DILocation(line: 1027, column: 10, scope: !4250)
!4261 = !DILocation(line: 0, scope: !4197, inlinedAt: !4262)
!4262 = distinct !DILocation(line: 1009, column: 10, scope: !4186, inlinedAt: !4260)
!4263 = !DILocation(line: 1018, column: 3, scope: !4197, inlinedAt: !4262)
!4264 = !DILocation(line: 1018, column: 30, scope: !4197, inlinedAt: !4262)
!4265 = distinct !DIAssignID()
!4266 = distinct !DIAssignID()
!4267 = !DILocation(line: 0, scope: !3113, inlinedAt: !4268)
!4268 = distinct !DILocation(line: 1019, column: 3, scope: !4197, inlinedAt: !4262)
!4269 = !DILocation(line: 174, column: 12, scope: !3113, inlinedAt: !4268)
!4270 = distinct !DIAssignID()
!4271 = !DILocation(line: 175, column: 8, scope: !3126, inlinedAt: !4268)
!4272 = !DILocation(line: 175, column: 19, scope: !3126, inlinedAt: !4268)
!4273 = !DILocation(line: 176, column: 5, scope: !3126, inlinedAt: !4268)
!4274 = !DILocation(line: 177, column: 6, scope: !3113, inlinedAt: !4268)
!4275 = !DILocation(line: 177, column: 17, scope: !3113, inlinedAt: !4268)
!4276 = distinct !DIAssignID()
!4277 = !DILocation(line: 178, column: 6, scope: !3113, inlinedAt: !4268)
!4278 = !DILocation(line: 178, column: 18, scope: !3113, inlinedAt: !4268)
!4279 = distinct !DIAssignID()
!4280 = !DILocation(line: 1020, column: 10, scope: !4197, inlinedAt: !4262)
!4281 = !DILocation(line: 1021, column: 1, scope: !4197, inlinedAt: !4262)
!4282 = !DILocation(line: 1027, column: 3, scope: !4250)
!4283 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !806, file: !806, line: 1031, type: !4284, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4286)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!121, !171, !171, !171, !163}
!4286 = !{!4287, !4288, !4289, !4290}
!4287 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4283, file: !806, line: 1031, type: !171)
!4288 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4283, file: !806, line: 1031, type: !171)
!4289 = !DILocalVariable(name: "arg", arg: 3, scope: !4283, file: !806, line: 1032, type: !171)
!4290 = !DILocalVariable(name: "argsize", arg: 4, scope: !4283, file: !806, line: 1032, type: !163)
!4291 = distinct !DIAssignID()
!4292 = !DILocation(line: 0, scope: !4283)
!4293 = !DILocation(line: 0, scope: !4197, inlinedAt: !4294)
!4294 = distinct !DILocation(line: 1034, column: 10, scope: !4283)
!4295 = !DILocation(line: 1018, column: 3, scope: !4197, inlinedAt: !4294)
!4296 = !DILocation(line: 1018, column: 30, scope: !4197, inlinedAt: !4294)
!4297 = distinct !DIAssignID()
!4298 = distinct !DIAssignID()
!4299 = !DILocation(line: 0, scope: !3113, inlinedAt: !4300)
!4300 = distinct !DILocation(line: 1019, column: 3, scope: !4197, inlinedAt: !4294)
!4301 = !DILocation(line: 174, column: 12, scope: !3113, inlinedAt: !4300)
!4302 = distinct !DIAssignID()
!4303 = !DILocation(line: 175, column: 8, scope: !3126, inlinedAt: !4300)
!4304 = !DILocation(line: 175, column: 19, scope: !3126, inlinedAt: !4300)
!4305 = !DILocation(line: 176, column: 5, scope: !3126, inlinedAt: !4300)
!4306 = !DILocation(line: 177, column: 6, scope: !3113, inlinedAt: !4300)
!4307 = !DILocation(line: 177, column: 17, scope: !3113, inlinedAt: !4300)
!4308 = distinct !DIAssignID()
!4309 = !DILocation(line: 178, column: 6, scope: !3113, inlinedAt: !4300)
!4310 = !DILocation(line: 178, column: 18, scope: !3113, inlinedAt: !4300)
!4311 = distinct !DIAssignID()
!4312 = !DILocation(line: 1020, column: 10, scope: !4197, inlinedAt: !4294)
!4313 = !DILocation(line: 1021, column: 1, scope: !4197, inlinedAt: !4294)
!4314 = !DILocation(line: 1034, column: 3, scope: !4283)
!4315 = distinct !DISubprogram(name: "quote_n_mem", scope: !806, file: !806, line: 1049, type: !4316, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4318)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!171, !89, !171, !163}
!4318 = !{!4319, !4320, !4321}
!4319 = !DILocalVariable(name: "n", arg: 1, scope: !4315, file: !806, line: 1049, type: !89)
!4320 = !DILocalVariable(name: "arg", arg: 2, scope: !4315, file: !806, line: 1049, type: !171)
!4321 = !DILocalVariable(name: "argsize", arg: 3, scope: !4315, file: !806, line: 1049, type: !163)
!4322 = !DILocation(line: 0, scope: !4315)
!4323 = !DILocation(line: 1051, column: 10, scope: !4315)
!4324 = !DILocation(line: 1051, column: 3, scope: !4315)
!4325 = distinct !DISubprogram(name: "quote_mem", scope: !806, file: !806, line: 1055, type: !4326, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4328)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!171, !171, !163}
!4328 = !{!4329, !4330}
!4329 = !DILocalVariable(name: "arg", arg: 1, scope: !4325, file: !806, line: 1055, type: !171)
!4330 = !DILocalVariable(name: "argsize", arg: 2, scope: !4325, file: !806, line: 1055, type: !163)
!4331 = !DILocation(line: 0, scope: !4325)
!4332 = !DILocation(line: 0, scope: !4315, inlinedAt: !4333)
!4333 = distinct !DILocation(line: 1057, column: 10, scope: !4325)
!4334 = !DILocation(line: 1051, column: 10, scope: !4315, inlinedAt: !4333)
!4335 = !DILocation(line: 1057, column: 3, scope: !4325)
!4336 = distinct !DISubprogram(name: "quote_n", scope: !806, file: !806, line: 1061, type: !4337, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4339)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!171, !89, !171}
!4339 = !{!4340, !4341}
!4340 = !DILocalVariable(name: "n", arg: 1, scope: !4336, file: !806, line: 1061, type: !89)
!4341 = !DILocalVariable(name: "arg", arg: 2, scope: !4336, file: !806, line: 1061, type: !171)
!4342 = !DILocation(line: 0, scope: !4336)
!4343 = !DILocation(line: 0, scope: !4315, inlinedAt: !4344)
!4344 = distinct !DILocation(line: 1063, column: 10, scope: !4336)
!4345 = !DILocation(line: 1051, column: 10, scope: !4315, inlinedAt: !4344)
!4346 = !DILocation(line: 1063, column: 3, scope: !4336)
!4347 = distinct !DISubprogram(name: "quote", scope: !806, file: !806, line: 1067, type: !4348, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4350)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!171, !171}
!4350 = !{!4351}
!4351 = !DILocalVariable(name: "arg", arg: 1, scope: !4347, file: !806, line: 1067, type: !171)
!4352 = !DILocation(line: 0, scope: !4347)
!4353 = !DILocation(line: 0, scope: !4336, inlinedAt: !4354)
!4354 = distinct !DILocation(line: 1069, column: 10, scope: !4347)
!4355 = !DILocation(line: 0, scope: !4315, inlinedAt: !4356)
!4356 = distinct !DILocation(line: 1063, column: 10, scope: !4336, inlinedAt: !4354)
!4357 = !DILocation(line: 1051, column: 10, scope: !4315, inlinedAt: !4356)
!4358 = !DILocation(line: 1069, column: 3, scope: !4347)
!4359 = distinct !DISubprogram(name: "version_etc_arn", scope: !904, file: !904, line: 61, type: !4360, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1038, retainedNodes: !4397)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{null, !4362, !171, !171, !171, !4396, !163}
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !4364)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !4365)
!4365 = !{!4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4364, file: !117, line: 51, baseType: !89, size: 32)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4364, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4364, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4364, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4364, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4364, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4364, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4364, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4364, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4364, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4364, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4364, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4364, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4364, file: !117, line: 70, baseType: !4380, size: 64, offset: 832)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4364, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4364, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4364, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4364, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4364, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4364, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4364, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4364, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4364, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4364, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4364, file: !117, line: 93, baseType: !4380, size: 64, offset: 1344)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4364, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4364, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4364, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4364, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!4397 = !{!4398, !4399, !4400, !4401, !4402, !4403}
!4398 = !DILocalVariable(name: "stream", arg: 1, scope: !4359, file: !904, line: 61, type: !4362)
!4399 = !DILocalVariable(name: "command_name", arg: 2, scope: !4359, file: !904, line: 62, type: !171)
!4400 = !DILocalVariable(name: "package", arg: 3, scope: !4359, file: !904, line: 62, type: !171)
!4401 = !DILocalVariable(name: "version", arg: 4, scope: !4359, file: !904, line: 63, type: !171)
!4402 = !DILocalVariable(name: "authors", arg: 5, scope: !4359, file: !904, line: 64, type: !4396)
!4403 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4359, file: !904, line: 64, type: !163)
!4404 = !DILocation(line: 0, scope: !4359)
!4405 = !DILocation(line: 66, column: 7, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4359, file: !904, line: 66, column: 7)
!4407 = !DILocation(line: 66, column: 7, scope: !4359)
!4408 = !DILocation(line: 67, column: 5, scope: !4406)
!4409 = !DILocation(line: 69, column: 5, scope: !4406)
!4410 = !DILocation(line: 83, column: 3, scope: !4359)
!4411 = !DILocation(line: 85, column: 3, scope: !4359)
!4412 = !DILocation(line: 88, column: 3, scope: !4359)
!4413 = !DILocation(line: 95, column: 3, scope: !4359)
!4414 = !DILocation(line: 97, column: 3, scope: !4359)
!4415 = !DILocation(line: 105, column: 7, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4359, file: !904, line: 98, column: 5)
!4417 = !DILocation(line: 106, column: 7, scope: !4416)
!4418 = !DILocation(line: 109, column: 7, scope: !4416)
!4419 = !DILocation(line: 110, column: 7, scope: !4416)
!4420 = !DILocation(line: 113, column: 7, scope: !4416)
!4421 = !DILocation(line: 115, column: 7, scope: !4416)
!4422 = !DILocation(line: 120, column: 7, scope: !4416)
!4423 = !DILocation(line: 122, column: 7, scope: !4416)
!4424 = !DILocation(line: 127, column: 7, scope: !4416)
!4425 = !DILocation(line: 129, column: 7, scope: !4416)
!4426 = !DILocation(line: 134, column: 7, scope: !4416)
!4427 = !DILocation(line: 137, column: 7, scope: !4416)
!4428 = !DILocation(line: 142, column: 7, scope: !4416)
!4429 = !DILocation(line: 145, column: 7, scope: !4416)
!4430 = !DILocation(line: 150, column: 7, scope: !4416)
!4431 = !DILocation(line: 154, column: 7, scope: !4416)
!4432 = !DILocation(line: 159, column: 7, scope: !4416)
!4433 = !DILocation(line: 163, column: 7, scope: !4416)
!4434 = !DILocation(line: 170, column: 7, scope: !4416)
!4435 = !DILocation(line: 174, column: 7, scope: !4416)
!4436 = !DILocation(line: 176, column: 1, scope: !4359)
!4437 = distinct !DISubprogram(name: "version_etc_ar", scope: !904, file: !904, line: 183, type: !4438, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1038, retainedNodes: !4440)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{null, !4362, !171, !171, !171, !4396}
!4440 = !{!4441, !4442, !4443, !4444, !4445, !4446}
!4441 = !DILocalVariable(name: "stream", arg: 1, scope: !4437, file: !904, line: 183, type: !4362)
!4442 = !DILocalVariable(name: "command_name", arg: 2, scope: !4437, file: !904, line: 184, type: !171)
!4443 = !DILocalVariable(name: "package", arg: 3, scope: !4437, file: !904, line: 184, type: !171)
!4444 = !DILocalVariable(name: "version", arg: 4, scope: !4437, file: !904, line: 185, type: !171)
!4445 = !DILocalVariable(name: "authors", arg: 5, scope: !4437, file: !904, line: 185, type: !4396)
!4446 = !DILocalVariable(name: "n_authors", scope: !4437, file: !904, line: 187, type: !163)
!4447 = !DILocation(line: 0, scope: !4437)
!4448 = !DILocation(line: 189, column: 8, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4437, file: !904, line: 189, column: 3)
!4450 = !DILocation(line: 189, scope: !4449)
!4451 = !DILocation(line: 189, column: 23, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4449, file: !904, line: 189, column: 3)
!4453 = !DILocation(line: 189, column: 3, scope: !4449)
!4454 = !DILocation(line: 189, column: 52, scope: !4452)
!4455 = distinct !{!4455, !4453, !4456, !1221}
!4456 = !DILocation(line: 190, column: 5, scope: !4449)
!4457 = !DILocation(line: 191, column: 3, scope: !4437)
!4458 = !DILocation(line: 192, column: 1, scope: !4437)
!4459 = distinct !DISubprogram(name: "version_etc_va", scope: !904, file: !904, line: 199, type: !4460, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1038, retainedNodes: !4472)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{null, !4362, !171, !171, !171, !4462}
!4462 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !709, line: 52, baseType: !4463)
!4463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !711, line: 12, baseType: !4464)
!4464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !904, baseType: !4465)
!4465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4466)
!4466 = !{!4467, !4468, !4469, !4470, !4471}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4465, file: !904, line: 192, baseType: !161, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4465, file: !904, line: 192, baseType: !161, size: 64, offset: 64)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4465, file: !904, line: 192, baseType: !161, size: 64, offset: 128)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4465, file: !904, line: 192, baseType: !89, size: 32, offset: 192)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4465, file: !904, line: 192, baseType: !89, size: 32, offset: 224)
!4472 = !{!4473, !4474, !4475, !4476, !4477, !4478, !4479}
!4473 = !DILocalVariable(name: "stream", arg: 1, scope: !4459, file: !904, line: 199, type: !4362)
!4474 = !DILocalVariable(name: "command_name", arg: 2, scope: !4459, file: !904, line: 200, type: !171)
!4475 = !DILocalVariable(name: "package", arg: 3, scope: !4459, file: !904, line: 200, type: !171)
!4476 = !DILocalVariable(name: "version", arg: 4, scope: !4459, file: !904, line: 201, type: !171)
!4477 = !DILocalVariable(name: "authors", arg: 5, scope: !4459, file: !904, line: 201, type: !4462)
!4478 = !DILocalVariable(name: "n_authors", scope: !4459, file: !904, line: 203, type: !163)
!4479 = !DILocalVariable(name: "authtab", scope: !4459, file: !904, line: 204, type: !4480)
!4480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 640, elements: !20)
!4481 = distinct !DIAssignID()
!4482 = !DILocation(line: 0, scope: !4459)
!4483 = !DILocation(line: 204, column: 3, scope: !4459)
!4484 = !DILocation(line: 208, column: 35, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4486, file: !904, line: 206, column: 3)
!4486 = distinct !DILexicalBlock(scope: !4459, file: !904, line: 206, column: 3)
!4487 = !DILocation(line: 208, column: 33, scope: !4485)
!4488 = !DILocation(line: 208, column: 67, scope: !4485)
!4489 = !DILocation(line: 206, column: 3, scope: !4486)
!4490 = !DILocation(line: 208, column: 14, scope: !4485)
!4491 = !DILocation(line: 0, scope: !4486)
!4492 = !DILocation(line: 211, column: 3, scope: !4459)
!4493 = !DILocation(line: 213, column: 1, scope: !4459)
!4494 = distinct !DISubprogram(name: "version_etc", scope: !904, file: !904, line: 230, type: !4495, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1038, retainedNodes: !4497)
!4495 = !DISubroutineType(types: !4496)
!4496 = !{null, !4362, !171, !171, !171, null}
!4497 = !{!4498, !4499, !4500, !4501, !4502}
!4498 = !DILocalVariable(name: "stream", arg: 1, scope: !4494, file: !904, line: 230, type: !4362)
!4499 = !DILocalVariable(name: "command_name", arg: 2, scope: !4494, file: !904, line: 231, type: !171)
!4500 = !DILocalVariable(name: "package", arg: 3, scope: !4494, file: !904, line: 231, type: !171)
!4501 = !DILocalVariable(name: "version", arg: 4, scope: !4494, file: !904, line: 232, type: !171)
!4502 = !DILocalVariable(name: "authors", scope: !4494, file: !904, line: 234, type: !4462)
!4503 = distinct !DIAssignID()
!4504 = !DILocation(line: 0, scope: !4494)
!4505 = !DILocation(line: 234, column: 3, scope: !4494)
!4506 = !DILocation(line: 235, column: 3, scope: !4494)
!4507 = !DILocation(line: 236, column: 3, scope: !4494)
!4508 = !DILocation(line: 237, column: 3, scope: !4494)
!4509 = !DILocation(line: 238, column: 1, scope: !4494)
!4510 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !904, file: !904, line: 241, type: !746, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1038)
!4511 = !DILocation(line: 243, column: 3, scope: !4510)
!4512 = !DILocation(line: 248, column: 3, scope: !4510)
!4513 = !DILocation(line: 254, column: 3, scope: !4510)
!4514 = !DILocation(line: 259, column: 3, scope: !4510)
!4515 = !DILocation(line: 261, column: 1, scope: !4510)
!4516 = distinct !DISubprogram(name: "xnrealloc", scope: !4517, file: !4517, line: 147, type: !4518, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4520)
!4517 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4518 = !DISubroutineType(types: !4519)
!4519 = !{!161, !161, !163, !163}
!4520 = !{!4521, !4522, !4523}
!4521 = !DILocalVariable(name: "p", arg: 1, scope: !4516, file: !4517, line: 147, type: !161)
!4522 = !DILocalVariable(name: "n", arg: 2, scope: !4516, file: !4517, line: 147, type: !163)
!4523 = !DILocalVariable(name: "s", arg: 3, scope: !4516, file: !4517, line: 147, type: !163)
!4524 = !DILocation(line: 0, scope: !4516)
!4525 = !DILocalVariable(name: "p", arg: 1, scope: !4526, file: !1045, line: 83, type: !161)
!4526 = distinct !DISubprogram(name: "xreallocarray", scope: !1045, file: !1045, line: 83, type: !4518, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4527)
!4527 = !{!4525, !4528, !4529}
!4528 = !DILocalVariable(name: "n", arg: 2, scope: !4526, file: !1045, line: 83, type: !163)
!4529 = !DILocalVariable(name: "s", arg: 3, scope: !4526, file: !1045, line: 83, type: !163)
!4530 = !DILocation(line: 0, scope: !4526, inlinedAt: !4531)
!4531 = distinct !DILocation(line: 149, column: 10, scope: !4516)
!4532 = !DILocation(line: 85, column: 25, scope: !4526, inlinedAt: !4531)
!4533 = !DILocalVariable(name: "p", arg: 1, scope: !4534, file: !1045, line: 37, type: !161)
!4534 = distinct !DISubprogram(name: "check_nonnull", scope: !1045, file: !1045, line: 37, type: !4535, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4537)
!4535 = !DISubroutineType(types: !4536)
!4536 = !{!161, !161}
!4537 = !{!4533}
!4538 = !DILocation(line: 0, scope: !4534, inlinedAt: !4539)
!4539 = distinct !DILocation(line: 85, column: 10, scope: !4526, inlinedAt: !4531)
!4540 = !DILocation(line: 39, column: 8, scope: !4541, inlinedAt: !4539)
!4541 = distinct !DILexicalBlock(scope: !4534, file: !1045, line: 39, column: 7)
!4542 = !DILocation(line: 39, column: 7, scope: !4534, inlinedAt: !4539)
!4543 = !DILocation(line: 40, column: 5, scope: !4541, inlinedAt: !4539)
!4544 = !DILocation(line: 149, column: 3, scope: !4516)
!4545 = !DILocation(line: 0, scope: !4526)
!4546 = !DILocation(line: 85, column: 25, scope: !4526)
!4547 = !DILocation(line: 0, scope: !4534, inlinedAt: !4548)
!4548 = distinct !DILocation(line: 85, column: 10, scope: !4526)
!4549 = !DILocation(line: 39, column: 8, scope: !4541, inlinedAt: !4548)
!4550 = !DILocation(line: 39, column: 7, scope: !4534, inlinedAt: !4548)
!4551 = !DILocation(line: 40, column: 5, scope: !4541, inlinedAt: !4548)
!4552 = !DILocation(line: 85, column: 3, scope: !4526)
!4553 = distinct !DISubprogram(name: "xmalloc", scope: !1045, file: !1045, line: 47, type: !306, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4554)
!4554 = !{!4555}
!4555 = !DILocalVariable(name: "s", arg: 1, scope: !4553, file: !1045, line: 47, type: !163)
!4556 = !DILocation(line: 0, scope: !4553)
!4557 = !DILocation(line: 49, column: 25, scope: !4553)
!4558 = !DILocation(line: 0, scope: !4534, inlinedAt: !4559)
!4559 = distinct !DILocation(line: 49, column: 10, scope: !4553)
!4560 = !DILocation(line: 39, column: 8, scope: !4541, inlinedAt: !4559)
!4561 = !DILocation(line: 39, column: 7, scope: !4534, inlinedAt: !4559)
!4562 = !DILocation(line: 40, column: 5, scope: !4541, inlinedAt: !4559)
!4563 = !DILocation(line: 49, column: 3, scope: !4553)
!4564 = distinct !DISubprogram(name: "ximalloc", scope: !1045, file: !1045, line: 53, type: !4565, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4567)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!161, !1064}
!4567 = !{!4568}
!4568 = !DILocalVariable(name: "s", arg: 1, scope: !4564, file: !1045, line: 53, type: !1064)
!4569 = !DILocation(line: 0, scope: !4564)
!4570 = !DILocalVariable(name: "s", arg: 1, scope: !4571, file: !4572, line: 55, type: !1064)
!4571 = distinct !DISubprogram(name: "imalloc", scope: !4572, file: !4572, line: 55, type: !4565, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4573)
!4572 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4573 = !{!4570}
!4574 = !DILocation(line: 0, scope: !4571, inlinedAt: !4575)
!4575 = distinct !DILocation(line: 55, column: 25, scope: !4564)
!4576 = !DILocation(line: 57, column: 26, scope: !4571, inlinedAt: !4575)
!4577 = !DILocation(line: 0, scope: !4534, inlinedAt: !4578)
!4578 = distinct !DILocation(line: 55, column: 10, scope: !4564)
!4579 = !DILocation(line: 39, column: 8, scope: !4541, inlinedAt: !4578)
!4580 = !DILocation(line: 39, column: 7, scope: !4534, inlinedAt: !4578)
!4581 = !DILocation(line: 40, column: 5, scope: !4541, inlinedAt: !4578)
!4582 = !DILocation(line: 55, column: 3, scope: !4564)
!4583 = distinct !DISubprogram(name: "xcharalloc", scope: !1045, file: !1045, line: 59, type: !4584, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4586)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!121, !163}
!4586 = !{!4587}
!4587 = !DILocalVariable(name: "n", arg: 1, scope: !4583, file: !1045, line: 59, type: !163)
!4588 = !DILocation(line: 0, scope: !4583)
!4589 = !DILocation(line: 0, scope: !4553, inlinedAt: !4590)
!4590 = distinct !DILocation(line: 61, column: 10, scope: !4583)
!4591 = !DILocation(line: 49, column: 25, scope: !4553, inlinedAt: !4590)
!4592 = !DILocation(line: 0, scope: !4534, inlinedAt: !4593)
!4593 = distinct !DILocation(line: 49, column: 10, scope: !4553, inlinedAt: !4590)
!4594 = !DILocation(line: 39, column: 8, scope: !4541, inlinedAt: !4593)
!4595 = !DILocation(line: 39, column: 7, scope: !4534, inlinedAt: !4593)
!4596 = !DILocation(line: 40, column: 5, scope: !4541, inlinedAt: !4593)
!4597 = !DILocation(line: 61, column: 3, scope: !4583)
!4598 = distinct !DISubprogram(name: "xrealloc", scope: !1045, file: !1045, line: 68, type: !310, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4599)
!4599 = !{!4600, !4601}
!4600 = !DILocalVariable(name: "p", arg: 1, scope: !4598, file: !1045, line: 68, type: !161)
!4601 = !DILocalVariable(name: "s", arg: 2, scope: !4598, file: !1045, line: 68, type: !163)
!4602 = !DILocation(line: 0, scope: !4598)
!4603 = !DILocalVariable(name: "ptr", arg: 1, scope: !4604, file: !4605, line: 2057, type: !161)
!4604 = distinct !DISubprogram(name: "rpl_realloc", scope: !4605, file: !4605, line: 2057, type: !310, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4606)
!4605 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4606 = !{!4603, !4607}
!4607 = !DILocalVariable(name: "size", arg: 2, scope: !4604, file: !4605, line: 2057, type: !163)
!4608 = !DILocation(line: 0, scope: !4604, inlinedAt: !4609)
!4609 = distinct !DILocation(line: 70, column: 25, scope: !4598)
!4610 = !DILocation(line: 2059, column: 24, scope: !4604, inlinedAt: !4609)
!4611 = !DILocation(line: 2059, column: 10, scope: !4604, inlinedAt: !4609)
!4612 = !DILocation(line: 0, scope: !4534, inlinedAt: !4613)
!4613 = distinct !DILocation(line: 70, column: 10, scope: !4598)
!4614 = !DILocation(line: 39, column: 8, scope: !4541, inlinedAt: !4613)
!4615 = !DILocation(line: 39, column: 7, scope: !4534, inlinedAt: !4613)
!4616 = !DILocation(line: 40, column: 5, scope: !4541, inlinedAt: !4613)
!4617 = !DILocation(line: 70, column: 3, scope: !4598)
!4618 = !DISubprogram(name: "realloc", scope: !1295, file: !1295, line: 551, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4619 = distinct !DISubprogram(name: "xirealloc", scope: !1045, file: !1045, line: 74, type: !4620, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4622)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!161, !161, !1064}
!4622 = !{!4623, !4624}
!4623 = !DILocalVariable(name: "p", arg: 1, scope: !4619, file: !1045, line: 74, type: !161)
!4624 = !DILocalVariable(name: "s", arg: 2, scope: !4619, file: !1045, line: 74, type: !1064)
!4625 = !DILocation(line: 0, scope: !4619)
!4626 = !DILocalVariable(name: "p", arg: 1, scope: !4627, file: !4572, line: 66, type: !161)
!4627 = distinct !DISubprogram(name: "irealloc", scope: !4572, file: !4572, line: 66, type: !4620, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4628)
!4628 = !{!4626, !4629}
!4629 = !DILocalVariable(name: "s", arg: 2, scope: !4627, file: !4572, line: 66, type: !1064)
!4630 = !DILocation(line: 0, scope: !4627, inlinedAt: !4631)
!4631 = distinct !DILocation(line: 76, column: 25, scope: !4619)
!4632 = !DILocation(line: 0, scope: !4604, inlinedAt: !4633)
!4633 = distinct !DILocation(line: 68, column: 26, scope: !4627, inlinedAt: !4631)
!4634 = !DILocation(line: 2059, column: 24, scope: !4604, inlinedAt: !4633)
!4635 = !DILocation(line: 2059, column: 10, scope: !4604, inlinedAt: !4633)
!4636 = !DILocation(line: 0, scope: !4534, inlinedAt: !4637)
!4637 = distinct !DILocation(line: 76, column: 10, scope: !4619)
!4638 = !DILocation(line: 39, column: 8, scope: !4541, inlinedAt: !4637)
!4639 = !DILocation(line: 39, column: 7, scope: !4534, inlinedAt: !4637)
!4640 = !DILocation(line: 40, column: 5, scope: !4541, inlinedAt: !4637)
!4641 = !DILocation(line: 76, column: 3, scope: !4619)
!4642 = distinct !DISubprogram(name: "xireallocarray", scope: !1045, file: !1045, line: 89, type: !4643, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4645)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{!161, !161, !1064, !1064}
!4645 = !{!4646, !4647, !4648}
!4646 = !DILocalVariable(name: "p", arg: 1, scope: !4642, file: !1045, line: 89, type: !161)
!4647 = !DILocalVariable(name: "n", arg: 2, scope: !4642, file: !1045, line: 89, type: !1064)
!4648 = !DILocalVariable(name: "s", arg: 3, scope: !4642, file: !1045, line: 89, type: !1064)
!4649 = !DILocation(line: 0, scope: !4642)
!4650 = !DILocalVariable(name: "p", arg: 1, scope: !4651, file: !4572, line: 98, type: !161)
!4651 = distinct !DISubprogram(name: "ireallocarray", scope: !4572, file: !4572, line: 98, type: !4643, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4652)
!4652 = !{!4650, !4653, !4654}
!4653 = !DILocalVariable(name: "n", arg: 2, scope: !4651, file: !4572, line: 98, type: !1064)
!4654 = !DILocalVariable(name: "s", arg: 3, scope: !4651, file: !4572, line: 98, type: !1064)
!4655 = !DILocation(line: 0, scope: !4651, inlinedAt: !4656)
!4656 = distinct !DILocation(line: 91, column: 25, scope: !4642)
!4657 = !DILocation(line: 101, column: 13, scope: !4651, inlinedAt: !4656)
!4658 = !DILocation(line: 0, scope: !4534, inlinedAt: !4659)
!4659 = distinct !DILocation(line: 91, column: 10, scope: !4642)
!4660 = !DILocation(line: 39, column: 8, scope: !4541, inlinedAt: !4659)
!4661 = !DILocation(line: 39, column: 7, scope: !4534, inlinedAt: !4659)
!4662 = !DILocation(line: 40, column: 5, scope: !4541, inlinedAt: !4659)
!4663 = !DILocation(line: 91, column: 3, scope: !4642)
!4664 = distinct !DISubprogram(name: "xnmalloc", scope: !1045, file: !1045, line: 98, type: !4665, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4667)
!4665 = !DISubroutineType(types: !4666)
!4666 = !{!161, !163, !163}
!4667 = !{!4668, !4669}
!4668 = !DILocalVariable(name: "n", arg: 1, scope: !4664, file: !1045, line: 98, type: !163)
!4669 = !DILocalVariable(name: "s", arg: 2, scope: !4664, file: !1045, line: 98, type: !163)
!4670 = !DILocation(line: 0, scope: !4664)
!4671 = !DILocation(line: 0, scope: !4526, inlinedAt: !4672)
!4672 = distinct !DILocation(line: 100, column: 10, scope: !4664)
!4673 = !DILocation(line: 85, column: 25, scope: !4526, inlinedAt: !4672)
!4674 = !DILocation(line: 0, scope: !4534, inlinedAt: !4675)
!4675 = distinct !DILocation(line: 85, column: 10, scope: !4526, inlinedAt: !4672)
!4676 = !DILocation(line: 39, column: 8, scope: !4541, inlinedAt: !4675)
!4677 = !DILocation(line: 39, column: 7, scope: !4534, inlinedAt: !4675)
!4678 = !DILocation(line: 40, column: 5, scope: !4541, inlinedAt: !4675)
!4679 = !DILocation(line: 100, column: 3, scope: !4664)
!4680 = distinct !DISubprogram(name: "xinmalloc", scope: !1045, file: !1045, line: 104, type: !4681, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4683)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!161, !1064, !1064}
!4683 = !{!4684, !4685}
!4684 = !DILocalVariable(name: "n", arg: 1, scope: !4680, file: !1045, line: 104, type: !1064)
!4685 = !DILocalVariable(name: "s", arg: 2, scope: !4680, file: !1045, line: 104, type: !1064)
!4686 = !DILocation(line: 0, scope: !4680)
!4687 = !DILocation(line: 0, scope: !4642, inlinedAt: !4688)
!4688 = distinct !DILocation(line: 106, column: 10, scope: !4680)
!4689 = !DILocation(line: 0, scope: !4651, inlinedAt: !4690)
!4690 = distinct !DILocation(line: 91, column: 25, scope: !4642, inlinedAt: !4688)
!4691 = !DILocation(line: 101, column: 13, scope: !4651, inlinedAt: !4690)
!4692 = !DILocation(line: 0, scope: !4534, inlinedAt: !4693)
!4693 = distinct !DILocation(line: 91, column: 10, scope: !4642, inlinedAt: !4688)
!4694 = !DILocation(line: 39, column: 8, scope: !4541, inlinedAt: !4693)
!4695 = !DILocation(line: 39, column: 7, scope: !4534, inlinedAt: !4693)
!4696 = !DILocation(line: 40, column: 5, scope: !4541, inlinedAt: !4693)
!4697 = !DILocation(line: 106, column: 3, scope: !4680)
!4698 = distinct !DISubprogram(name: "x2realloc", scope: !1045, file: !1045, line: 116, type: !4699, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4701)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{!161, !161, !1051}
!4701 = !{!4702, !4703}
!4702 = !DILocalVariable(name: "p", arg: 1, scope: !4698, file: !1045, line: 116, type: !161)
!4703 = !DILocalVariable(name: "ps", arg: 2, scope: !4698, file: !1045, line: 116, type: !1051)
!4704 = !DILocation(line: 0, scope: !4698)
!4705 = !DILocation(line: 0, scope: !1048, inlinedAt: !4706)
!4706 = distinct !DILocation(line: 118, column: 10, scope: !4698)
!4707 = !DILocation(line: 178, column: 14, scope: !1048, inlinedAt: !4706)
!4708 = !DILocation(line: 180, column: 9, scope: !4709, inlinedAt: !4706)
!4709 = distinct !DILexicalBlock(scope: !1048, file: !1045, line: 180, column: 7)
!4710 = !DILocation(line: 180, column: 7, scope: !1048, inlinedAt: !4706)
!4711 = !DILocation(line: 182, column: 13, scope: !4712, inlinedAt: !4706)
!4712 = distinct !DILexicalBlock(scope: !4713, file: !1045, line: 182, column: 11)
!4713 = distinct !DILexicalBlock(scope: !4709, file: !1045, line: 181, column: 5)
!4714 = !DILocation(line: 182, column: 11, scope: !4713, inlinedAt: !4706)
!4715 = !DILocation(line: 197, column: 11, scope: !4716, inlinedAt: !4706)
!4716 = distinct !DILexicalBlock(scope: !4717, file: !1045, line: 197, column: 11)
!4717 = distinct !DILexicalBlock(scope: !4709, file: !1045, line: 195, column: 5)
!4718 = !DILocation(line: 197, column: 11, scope: !4717, inlinedAt: !4706)
!4719 = !DILocation(line: 198, column: 9, scope: !4716, inlinedAt: !4706)
!4720 = !DILocation(line: 0, scope: !4526, inlinedAt: !4721)
!4721 = distinct !DILocation(line: 201, column: 7, scope: !1048, inlinedAt: !4706)
!4722 = !DILocation(line: 85, column: 25, scope: !4526, inlinedAt: !4721)
!4723 = !DILocation(line: 0, scope: !4534, inlinedAt: !4724)
!4724 = distinct !DILocation(line: 85, column: 10, scope: !4526, inlinedAt: !4721)
!4725 = !DILocation(line: 39, column: 8, scope: !4541, inlinedAt: !4724)
!4726 = !DILocation(line: 39, column: 7, scope: !4534, inlinedAt: !4724)
!4727 = !DILocation(line: 40, column: 5, scope: !4541, inlinedAt: !4724)
!4728 = !DILocation(line: 202, column: 7, scope: !1048, inlinedAt: !4706)
!4729 = !DILocation(line: 118, column: 3, scope: !4698)
!4730 = !DILocation(line: 0, scope: !1048)
!4731 = !DILocation(line: 178, column: 14, scope: !1048)
!4732 = !DILocation(line: 180, column: 9, scope: !4709)
!4733 = !DILocation(line: 180, column: 7, scope: !1048)
!4734 = !DILocation(line: 182, column: 13, scope: !4712)
!4735 = !DILocation(line: 182, column: 11, scope: !4713)
!4736 = !DILocation(line: 190, column: 30, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4712, file: !1045, line: 183, column: 9)
!4738 = !DILocation(line: 191, column: 16, scope: !4737)
!4739 = !DILocation(line: 191, column: 13, scope: !4737)
!4740 = !DILocation(line: 192, column: 9, scope: !4737)
!4741 = !DILocation(line: 197, column: 11, scope: !4716)
!4742 = !DILocation(line: 197, column: 11, scope: !4717)
!4743 = !DILocation(line: 198, column: 9, scope: !4716)
!4744 = !DILocation(line: 0, scope: !4526, inlinedAt: !4745)
!4745 = distinct !DILocation(line: 201, column: 7, scope: !1048)
!4746 = !DILocation(line: 85, column: 25, scope: !4526, inlinedAt: !4745)
!4747 = !DILocation(line: 0, scope: !4534, inlinedAt: !4748)
!4748 = distinct !DILocation(line: 85, column: 10, scope: !4526, inlinedAt: !4745)
!4749 = !DILocation(line: 39, column: 8, scope: !4541, inlinedAt: !4748)
!4750 = !DILocation(line: 39, column: 7, scope: !4534, inlinedAt: !4748)
!4751 = !DILocation(line: 40, column: 5, scope: !4541, inlinedAt: !4748)
!4752 = !DILocation(line: 202, column: 7, scope: !1048)
!4753 = !DILocation(line: 203, column: 3, scope: !1048)
!4754 = !DILocation(line: 0, scope: !1060)
!4755 = !DILocation(line: 230, column: 14, scope: !1060)
!4756 = !DILocation(line: 238, column: 7, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !1060, file: !1045, line: 238, column: 7)
!4758 = !DILocation(line: 238, column: 7, scope: !1060)
!4759 = !DILocation(line: 240, column: 9, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !1060, file: !1045, line: 240, column: 7)
!4761 = !DILocation(line: 240, column: 18, scope: !4760)
!4762 = !DILocation(line: 253, column: 8, scope: !1060)
!4763 = !DILocation(line: 256, column: 7, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !1060, file: !1045, line: 256, column: 7)
!4765 = !DILocation(line: 256, column: 7, scope: !1060)
!4766 = !DILocation(line: 258, column: 27, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4764, file: !1045, line: 257, column: 5)
!4768 = !DILocation(line: 259, column: 32, scope: !4767)
!4769 = !DILocation(line: 260, column: 5, scope: !4767)
!4770 = !DILocation(line: 262, column: 9, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !1060, file: !1045, line: 262, column: 7)
!4772 = !DILocation(line: 262, column: 7, scope: !1060)
!4773 = !DILocation(line: 263, column: 9, scope: !4771)
!4774 = !DILocation(line: 263, column: 5, scope: !4771)
!4775 = !DILocation(line: 264, column: 9, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !1060, file: !1045, line: 264, column: 7)
!4777 = !DILocation(line: 264, column: 14, scope: !4776)
!4778 = !DILocation(line: 265, column: 7, scope: !4776)
!4779 = !DILocation(line: 265, column: 11, scope: !4776)
!4780 = !DILocation(line: 266, column: 11, scope: !4776)
!4781 = !DILocation(line: 267, column: 14, scope: !4776)
!4782 = !DILocation(line: 264, column: 7, scope: !1060)
!4783 = !DILocation(line: 268, column: 5, scope: !4776)
!4784 = !DILocation(line: 0, scope: !4598, inlinedAt: !4785)
!4785 = distinct !DILocation(line: 269, column: 8, scope: !1060)
!4786 = !DILocation(line: 0, scope: !4604, inlinedAt: !4787)
!4787 = distinct !DILocation(line: 70, column: 25, scope: !4598, inlinedAt: !4785)
!4788 = !DILocation(line: 2059, column: 24, scope: !4604, inlinedAt: !4787)
!4789 = !DILocation(line: 2059, column: 10, scope: !4604, inlinedAt: !4787)
!4790 = !DILocation(line: 0, scope: !4534, inlinedAt: !4791)
!4791 = distinct !DILocation(line: 70, column: 10, scope: !4598, inlinedAt: !4785)
!4792 = !DILocation(line: 39, column: 8, scope: !4541, inlinedAt: !4791)
!4793 = !DILocation(line: 39, column: 7, scope: !4534, inlinedAt: !4791)
!4794 = !DILocation(line: 40, column: 5, scope: !4541, inlinedAt: !4791)
!4795 = !DILocation(line: 270, column: 7, scope: !1060)
!4796 = !DILocation(line: 271, column: 3, scope: !1060)
!4797 = distinct !DISubprogram(name: "xzalloc", scope: !1045, file: !1045, line: 279, type: !306, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4798)
!4798 = !{!4799}
!4799 = !DILocalVariable(name: "s", arg: 1, scope: !4797, file: !1045, line: 279, type: !163)
!4800 = !DILocation(line: 0, scope: !4797)
!4801 = !DILocalVariable(name: "n", arg: 1, scope: !4802, file: !1045, line: 294, type: !163)
!4802 = distinct !DISubprogram(name: "xcalloc", scope: !1045, file: !1045, line: 294, type: !4665, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4803)
!4803 = !{!4801, !4804}
!4804 = !DILocalVariable(name: "s", arg: 2, scope: !4802, file: !1045, line: 294, type: !163)
!4805 = !DILocation(line: 0, scope: !4802, inlinedAt: !4806)
!4806 = distinct !DILocation(line: 281, column: 10, scope: !4797)
!4807 = !DILocation(line: 296, column: 25, scope: !4802, inlinedAt: !4806)
!4808 = !DILocation(line: 0, scope: !4534, inlinedAt: !4809)
!4809 = distinct !DILocation(line: 296, column: 10, scope: !4802, inlinedAt: !4806)
!4810 = !DILocation(line: 39, column: 8, scope: !4541, inlinedAt: !4809)
!4811 = !DILocation(line: 39, column: 7, scope: !4534, inlinedAt: !4809)
!4812 = !DILocation(line: 40, column: 5, scope: !4541, inlinedAt: !4809)
!4813 = !DILocation(line: 281, column: 3, scope: !4797)
!4814 = !DISubprogram(name: "calloc", scope: !1295, file: !1295, line: 543, type: !4665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4815 = !DILocation(line: 0, scope: !4802)
!4816 = !DILocation(line: 296, column: 25, scope: !4802)
!4817 = !DILocation(line: 0, scope: !4534, inlinedAt: !4818)
!4818 = distinct !DILocation(line: 296, column: 10, scope: !4802)
!4819 = !DILocation(line: 39, column: 8, scope: !4541, inlinedAt: !4818)
!4820 = !DILocation(line: 39, column: 7, scope: !4534, inlinedAt: !4818)
!4821 = !DILocation(line: 40, column: 5, scope: !4541, inlinedAt: !4818)
!4822 = !DILocation(line: 296, column: 3, scope: !4802)
!4823 = distinct !DISubprogram(name: "xizalloc", scope: !1045, file: !1045, line: 285, type: !4565, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4824)
!4824 = !{!4825}
!4825 = !DILocalVariable(name: "s", arg: 1, scope: !4823, file: !1045, line: 285, type: !1064)
!4826 = !DILocation(line: 0, scope: !4823)
!4827 = !DILocalVariable(name: "n", arg: 1, scope: !4828, file: !1045, line: 300, type: !1064)
!4828 = distinct !DISubprogram(name: "xicalloc", scope: !1045, file: !1045, line: 300, type: !4681, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4829)
!4829 = !{!4827, !4830}
!4830 = !DILocalVariable(name: "s", arg: 2, scope: !4828, file: !1045, line: 300, type: !1064)
!4831 = !DILocation(line: 0, scope: !4828, inlinedAt: !4832)
!4832 = distinct !DILocation(line: 287, column: 10, scope: !4823)
!4833 = !DILocalVariable(name: "n", arg: 1, scope: !4834, file: !4572, line: 77, type: !1064)
!4834 = distinct !DISubprogram(name: "icalloc", scope: !4572, file: !4572, line: 77, type: !4681, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4835)
!4835 = !{!4833, !4836}
!4836 = !DILocalVariable(name: "s", arg: 2, scope: !4834, file: !4572, line: 77, type: !1064)
!4837 = !DILocation(line: 0, scope: !4834, inlinedAt: !4838)
!4838 = distinct !DILocation(line: 302, column: 25, scope: !4828, inlinedAt: !4832)
!4839 = !DILocation(line: 91, column: 10, scope: !4834, inlinedAt: !4838)
!4840 = !DILocation(line: 0, scope: !4534, inlinedAt: !4841)
!4841 = distinct !DILocation(line: 302, column: 10, scope: !4828, inlinedAt: !4832)
!4842 = !DILocation(line: 39, column: 8, scope: !4541, inlinedAt: !4841)
!4843 = !DILocation(line: 39, column: 7, scope: !4534, inlinedAt: !4841)
!4844 = !DILocation(line: 40, column: 5, scope: !4541, inlinedAt: !4841)
!4845 = !DILocation(line: 287, column: 3, scope: !4823)
!4846 = !DILocation(line: 0, scope: !4828)
!4847 = !DILocation(line: 0, scope: !4834, inlinedAt: !4848)
!4848 = distinct !DILocation(line: 302, column: 25, scope: !4828)
!4849 = !DILocation(line: 91, column: 10, scope: !4834, inlinedAt: !4848)
!4850 = !DILocation(line: 0, scope: !4534, inlinedAt: !4851)
!4851 = distinct !DILocation(line: 302, column: 10, scope: !4828)
!4852 = !DILocation(line: 39, column: 8, scope: !4541, inlinedAt: !4851)
!4853 = !DILocation(line: 39, column: 7, scope: !4534, inlinedAt: !4851)
!4854 = !DILocation(line: 40, column: 5, scope: !4541, inlinedAt: !4851)
!4855 = !DILocation(line: 302, column: 3, scope: !4828)
!4856 = distinct !DISubprogram(name: "xmemdup", scope: !1045, file: !1045, line: 310, type: !4857, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4859)
!4857 = !DISubroutineType(types: !4858)
!4858 = !{!161, !1319, !163}
!4859 = !{!4860, !4861}
!4860 = !DILocalVariable(name: "p", arg: 1, scope: !4856, file: !1045, line: 310, type: !1319)
!4861 = !DILocalVariable(name: "s", arg: 2, scope: !4856, file: !1045, line: 310, type: !163)
!4862 = !DILocation(line: 0, scope: !4856)
!4863 = !DILocation(line: 0, scope: !4553, inlinedAt: !4864)
!4864 = distinct !DILocation(line: 312, column: 18, scope: !4856)
!4865 = !DILocation(line: 49, column: 25, scope: !4553, inlinedAt: !4864)
!4866 = !DILocation(line: 0, scope: !4534, inlinedAt: !4867)
!4867 = distinct !DILocation(line: 49, column: 10, scope: !4553, inlinedAt: !4864)
!4868 = !DILocation(line: 39, column: 8, scope: !4541, inlinedAt: !4867)
!4869 = !DILocation(line: 39, column: 7, scope: !4534, inlinedAt: !4867)
!4870 = !DILocation(line: 40, column: 5, scope: !4541, inlinedAt: !4867)
!4871 = !DILocalVariable(name: "__dest", arg: 1, scope: !4872, file: !2827, line: 26, type: !2830)
!4872 = distinct !DISubprogram(name: "memcpy", scope: !2827, file: !2827, line: 26, type: !2828, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4873)
!4873 = !{!4871, !4874, !4875}
!4874 = !DILocalVariable(name: "__src", arg: 2, scope: !4872, file: !2827, line: 26, type: !1318)
!4875 = !DILocalVariable(name: "__len", arg: 3, scope: !4872, file: !2827, line: 26, type: !163)
!4876 = !DILocation(line: 0, scope: !4872, inlinedAt: !4877)
!4877 = distinct !DILocation(line: 312, column: 10, scope: !4856)
!4878 = !DILocation(line: 29, column: 10, scope: !4872, inlinedAt: !4877)
!4879 = !DILocation(line: 312, column: 3, scope: !4856)
!4880 = distinct !DISubprogram(name: "ximemdup", scope: !1045, file: !1045, line: 316, type: !4881, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4883)
!4881 = !DISubroutineType(types: !4882)
!4882 = !{!161, !1319, !1064}
!4883 = !{!4884, !4885}
!4884 = !DILocalVariable(name: "p", arg: 1, scope: !4880, file: !1045, line: 316, type: !1319)
!4885 = !DILocalVariable(name: "s", arg: 2, scope: !4880, file: !1045, line: 316, type: !1064)
!4886 = !DILocation(line: 0, scope: !4880)
!4887 = !DILocation(line: 0, scope: !4564, inlinedAt: !4888)
!4888 = distinct !DILocation(line: 318, column: 18, scope: !4880)
!4889 = !DILocation(line: 0, scope: !4571, inlinedAt: !4890)
!4890 = distinct !DILocation(line: 55, column: 25, scope: !4564, inlinedAt: !4888)
!4891 = !DILocation(line: 57, column: 26, scope: !4571, inlinedAt: !4890)
!4892 = !DILocation(line: 0, scope: !4534, inlinedAt: !4893)
!4893 = distinct !DILocation(line: 55, column: 10, scope: !4564, inlinedAt: !4888)
!4894 = !DILocation(line: 39, column: 8, scope: !4541, inlinedAt: !4893)
!4895 = !DILocation(line: 39, column: 7, scope: !4534, inlinedAt: !4893)
!4896 = !DILocation(line: 40, column: 5, scope: !4541, inlinedAt: !4893)
!4897 = !DILocation(line: 0, scope: !4872, inlinedAt: !4898)
!4898 = distinct !DILocation(line: 318, column: 10, scope: !4880)
!4899 = !DILocation(line: 29, column: 10, scope: !4872, inlinedAt: !4898)
!4900 = !DILocation(line: 318, column: 3, scope: !4880)
!4901 = distinct !DISubprogram(name: "ximemdup0", scope: !1045, file: !1045, line: 325, type: !4902, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4904)
!4902 = !DISubroutineType(types: !4903)
!4903 = !{!121, !1319, !1064}
!4904 = !{!4905, !4906, !4907}
!4905 = !DILocalVariable(name: "p", arg: 1, scope: !4901, file: !1045, line: 325, type: !1319)
!4906 = !DILocalVariable(name: "s", arg: 2, scope: !4901, file: !1045, line: 325, type: !1064)
!4907 = !DILocalVariable(name: "result", scope: !4901, file: !1045, line: 327, type: !121)
!4908 = !DILocation(line: 0, scope: !4901)
!4909 = !DILocation(line: 327, column: 30, scope: !4901)
!4910 = !DILocation(line: 0, scope: !4564, inlinedAt: !4911)
!4911 = distinct !DILocation(line: 327, column: 18, scope: !4901)
!4912 = !DILocation(line: 0, scope: !4571, inlinedAt: !4913)
!4913 = distinct !DILocation(line: 55, column: 25, scope: !4564, inlinedAt: !4911)
!4914 = !DILocation(line: 57, column: 26, scope: !4571, inlinedAt: !4913)
!4915 = !DILocation(line: 0, scope: !4534, inlinedAt: !4916)
!4916 = distinct !DILocation(line: 55, column: 10, scope: !4564, inlinedAt: !4911)
!4917 = !DILocation(line: 39, column: 8, scope: !4541, inlinedAt: !4916)
!4918 = !DILocation(line: 39, column: 7, scope: !4534, inlinedAt: !4916)
!4919 = !DILocation(line: 40, column: 5, scope: !4541, inlinedAt: !4916)
!4920 = !DILocation(line: 328, column: 3, scope: !4901)
!4921 = !DILocation(line: 328, column: 13, scope: !4901)
!4922 = !DILocation(line: 0, scope: !4872, inlinedAt: !4923)
!4923 = distinct !DILocation(line: 329, column: 10, scope: !4901)
!4924 = !DILocation(line: 29, column: 10, scope: !4872, inlinedAt: !4923)
!4925 = !DILocation(line: 329, column: 3, scope: !4901)
!4926 = distinct !DISubprogram(name: "xstrdup", scope: !1045, file: !1045, line: 335, type: !1297, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4927)
!4927 = !{!4928}
!4928 = !DILocalVariable(name: "string", arg: 1, scope: !4926, file: !1045, line: 335, type: !171)
!4929 = !DILocation(line: 0, scope: !4926)
!4930 = !DILocation(line: 337, column: 27, scope: !4926)
!4931 = !DILocation(line: 337, column: 43, scope: !4926)
!4932 = !DILocation(line: 0, scope: !4856, inlinedAt: !4933)
!4933 = distinct !DILocation(line: 337, column: 10, scope: !4926)
!4934 = !DILocation(line: 0, scope: !4553, inlinedAt: !4935)
!4935 = distinct !DILocation(line: 312, column: 18, scope: !4856, inlinedAt: !4933)
!4936 = !DILocation(line: 49, column: 25, scope: !4553, inlinedAt: !4935)
!4937 = !DILocation(line: 0, scope: !4534, inlinedAt: !4938)
!4938 = distinct !DILocation(line: 49, column: 10, scope: !4553, inlinedAt: !4935)
!4939 = !DILocation(line: 39, column: 8, scope: !4541, inlinedAt: !4938)
!4940 = !DILocation(line: 39, column: 7, scope: !4534, inlinedAt: !4938)
!4941 = !DILocation(line: 40, column: 5, scope: !4541, inlinedAt: !4938)
!4942 = !DILocation(line: 0, scope: !4872, inlinedAt: !4943)
!4943 = distinct !DILocation(line: 312, column: 10, scope: !4856, inlinedAt: !4933)
!4944 = !DILocation(line: 29, column: 10, scope: !4872, inlinedAt: !4943)
!4945 = !DILocation(line: 337, column: 3, scope: !4926)
!4946 = distinct !DISubprogram(name: "xalloc_die", scope: !991, file: !991, line: 32, type: !746, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1077, retainedNodes: !4947)
!4947 = !{!4948}
!4948 = !DILocalVariable(name: "__errstatus", scope: !4949, file: !991, line: 34, type: !4950)
!4949 = distinct !DILexicalBlock(scope: !4946, file: !991, line: 34, column: 3)
!4950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!4951 = !DILocation(line: 34, column: 3, scope: !4949)
!4952 = !DILocation(line: 0, scope: !4949)
!4953 = !DILocation(line: 40, column: 3, scope: !4946)
!4954 = distinct !DISubprogram(name: "close_stream", scope: !1080, file: !1080, line: 55, type: !4955, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1079, retainedNodes: !4991)
!4955 = !DISubroutineType(types: !4956)
!4956 = !{!89, !4957}
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4958, size: 64)
!4958 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !4959)
!4959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !4960)
!4960 = !{!4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990}
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4959, file: !117, line: 51, baseType: !89, size: 32)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4959, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4959, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4959, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4959, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4959, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4959, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4959, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4959, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4959, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4959, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4959, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4959, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4959, file: !117, line: 70, baseType: !4975, size: 64, offset: 832)
!4975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4959, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4959, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4959, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4959, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4959, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4959, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4959, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4959, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4959, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4959, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4959, file: !117, line: 93, baseType: !4975, size: 64, offset: 1344)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4959, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4959, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4959, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4959, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!4991 = !{!4992, !4993, !4995, !4996}
!4992 = !DILocalVariable(name: "stream", arg: 1, scope: !4954, file: !1080, line: 55, type: !4957)
!4993 = !DILocalVariable(name: "some_pending", scope: !4954, file: !1080, line: 57, type: !4994)
!4994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!4995 = !DILocalVariable(name: "prev_fail", scope: !4954, file: !1080, line: 58, type: !4994)
!4996 = !DILocalVariable(name: "fclose_fail", scope: !4954, file: !1080, line: 59, type: !4994)
!4997 = !DILocation(line: 0, scope: !4954)
!4998 = !DILocation(line: 57, column: 30, scope: !4954)
!4999 = !DILocalVariable(name: "__stream", arg: 1, scope: !5000, file: !1544, line: 135, type: !4957)
!5000 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1544, file: !1544, line: 135, type: !4955, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1079, retainedNodes: !5001)
!5001 = !{!4999}
!5002 = !DILocation(line: 0, scope: !5000, inlinedAt: !5003)
!5003 = distinct !DILocation(line: 58, column: 27, scope: !4954)
!5004 = !DILocation(line: 137, column: 10, scope: !5000, inlinedAt: !5003)
!5005 = !DILocation(line: 58, column: 43, scope: !4954)
!5006 = !DILocation(line: 59, column: 29, scope: !4954)
!5007 = !DILocation(line: 59, column: 45, scope: !4954)
!5008 = !DILocation(line: 69, column: 17, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !4954, file: !1080, line: 69, column: 7)
!5010 = !DILocation(line: 57, column: 50, scope: !4954)
!5011 = !DILocation(line: 69, column: 33, scope: !5009)
!5012 = !DILocation(line: 69, column: 53, scope: !5009)
!5013 = !DILocation(line: 69, column: 59, scope: !5009)
!5014 = !DILocation(line: 69, column: 7, scope: !4954)
!5015 = !DILocation(line: 71, column: 11, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !5009, file: !1080, line: 70, column: 5)
!5017 = !DILocation(line: 72, column: 9, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !5016, file: !1080, line: 71, column: 11)
!5019 = !DILocation(line: 72, column: 15, scope: !5018)
!5020 = !DILocation(line: 77, column: 1, scope: !4954)
!5021 = !DISubprogram(name: "__fpending", scope: !2307, file: !2307, line: 75, type: !5022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5022 = !DISubroutineType(types: !5023)
!5023 = !{!163, !4957}
!5024 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !998, file: !998, line: 100, type: !5025, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1001, retainedNodes: !5028)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{!163, !3034, !171, !163, !5027}
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!5028 = !{!5029, !5030, !5031, !5032, !5033}
!5029 = !DILocalVariable(name: "pwc", arg: 1, scope: !5024, file: !998, line: 100, type: !3034)
!5030 = !DILocalVariable(name: "s", arg: 2, scope: !5024, file: !998, line: 100, type: !171)
!5031 = !DILocalVariable(name: "n", arg: 3, scope: !5024, file: !998, line: 100, type: !163)
!5032 = !DILocalVariable(name: "ps", arg: 4, scope: !5024, file: !998, line: 100, type: !5027)
!5033 = !DILocalVariable(name: "ret", scope: !5024, file: !998, line: 130, type: !163)
!5034 = !DILocation(line: 0, scope: !5024)
!5035 = !DILocation(line: 105, column: 9, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !5024, file: !998, line: 105, column: 7)
!5037 = !DILocation(line: 105, column: 7, scope: !5024)
!5038 = !DILocation(line: 117, column: 10, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5024, file: !998, line: 117, column: 7)
!5040 = !DILocation(line: 117, column: 7, scope: !5024)
!5041 = !DILocation(line: 130, column: 16, scope: !5024)
!5042 = !DILocation(line: 135, column: 11, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5024, file: !998, line: 135, column: 7)
!5044 = !DILocation(line: 135, column: 25, scope: !5043)
!5045 = !DILocation(line: 135, column: 30, scope: !5043)
!5046 = !DILocation(line: 135, column: 7, scope: !5024)
!5047 = !DILocalVariable(name: "ps", arg: 1, scope: !5048, file: !3008, line: 1135, type: !5027)
!5048 = distinct !DISubprogram(name: "mbszero", scope: !3008, file: !3008, line: 1135, type: !5049, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1001, retainedNodes: !5051)
!5049 = !DISubroutineType(types: !5050)
!5050 = !{null, !5027}
!5051 = !{!5047}
!5052 = !DILocation(line: 0, scope: !5048, inlinedAt: !5053)
!5053 = distinct !DILocation(line: 137, column: 5, scope: !5043)
!5054 = !DILocalVariable(name: "__dest", arg: 1, scope: !5055, file: !2827, line: 57, type: !161)
!5055 = distinct !DISubprogram(name: "memset", scope: !2827, file: !2827, line: 57, type: !3017, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1001, retainedNodes: !5056)
!5056 = !{!5054, !5057, !5058}
!5057 = !DILocalVariable(name: "__ch", arg: 2, scope: !5055, file: !2827, line: 57, type: !89)
!5058 = !DILocalVariable(name: "__len", arg: 3, scope: !5055, file: !2827, line: 57, type: !163)
!5059 = !DILocation(line: 0, scope: !5055, inlinedAt: !5060)
!5060 = distinct !DILocation(line: 1137, column: 3, scope: !5048, inlinedAt: !5053)
!5061 = !DILocation(line: 59, column: 10, scope: !5055, inlinedAt: !5060)
!5062 = !DILocation(line: 137, column: 5, scope: !5043)
!5063 = !DILocation(line: 138, column: 11, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5024, file: !998, line: 138, column: 7)
!5065 = !DILocation(line: 138, column: 7, scope: !5024)
!5066 = !DILocation(line: 139, column: 5, scope: !5064)
!5067 = !DILocation(line: 143, column: 26, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5024, file: !998, line: 143, column: 7)
!5069 = !DILocation(line: 143, column: 41, scope: !5068)
!5070 = !DILocation(line: 143, column: 7, scope: !5024)
!5071 = !DILocation(line: 145, column: 15, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5073, file: !998, line: 145, column: 11)
!5073 = distinct !DILexicalBlock(scope: !5068, file: !998, line: 144, column: 5)
!5074 = !DILocation(line: 145, column: 11, scope: !5073)
!5075 = !DILocation(line: 146, column: 32, scope: !5072)
!5076 = !DILocation(line: 146, column: 16, scope: !5072)
!5077 = !DILocation(line: 146, column: 14, scope: !5072)
!5078 = !DILocation(line: 146, column: 9, scope: !5072)
!5079 = !DILocation(line: 286, column: 1, scope: !5024)
!5080 = !DISubprogram(name: "mbsinit", scope: !5081, file: !5081, line: 293, type: !5082, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5081 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5082 = !DISubroutineType(types: !5083)
!5083 = !{!89, !5084}
!5084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5085, size: 64)
!5085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1004)
!5086 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1082, file: !1082, line: 27, type: !4518, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1081, retainedNodes: !5087)
!5087 = !{!5088, !5089, !5090, !5091}
!5088 = !DILocalVariable(name: "ptr", arg: 1, scope: !5086, file: !1082, line: 27, type: !161)
!5089 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5086, file: !1082, line: 27, type: !163)
!5090 = !DILocalVariable(name: "size", arg: 3, scope: !5086, file: !1082, line: 27, type: !163)
!5091 = !DILocalVariable(name: "nbytes", scope: !5086, file: !1082, line: 29, type: !163)
!5092 = !DILocation(line: 0, scope: !5086)
!5093 = !DILocation(line: 30, column: 7, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5086, file: !1082, line: 30, column: 7)
!5095 = !DILocation(line: 30, column: 7, scope: !5086)
!5096 = !DILocation(line: 32, column: 7, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5094, file: !1082, line: 31, column: 5)
!5098 = !DILocation(line: 32, column: 13, scope: !5097)
!5099 = !DILocation(line: 33, column: 7, scope: !5097)
!5100 = !DILocalVariable(name: "ptr", arg: 1, scope: !5101, file: !4605, line: 2057, type: !161)
!5101 = distinct !DISubprogram(name: "rpl_realloc", scope: !4605, file: !4605, line: 2057, type: !310, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1081, retainedNodes: !5102)
!5102 = !{!5100, !5103}
!5103 = !DILocalVariable(name: "size", arg: 2, scope: !5101, file: !4605, line: 2057, type: !163)
!5104 = !DILocation(line: 0, scope: !5101, inlinedAt: !5105)
!5105 = distinct !DILocation(line: 37, column: 10, scope: !5086)
!5106 = !DILocation(line: 2059, column: 24, scope: !5101, inlinedAt: !5105)
!5107 = !DILocation(line: 2059, column: 10, scope: !5101, inlinedAt: !5105)
!5108 = !DILocation(line: 37, column: 3, scope: !5086)
!5109 = !DILocation(line: 38, column: 1, scope: !5086)
!5110 = distinct !DISubprogram(name: "hard_locale", scope: !1016, file: !1016, line: 28, type: !1610, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1083, retainedNodes: !5111)
!5111 = !{!5112, !5113}
!5112 = !DILocalVariable(name: "category", arg: 1, scope: !5110, file: !1016, line: 28, type: !89)
!5113 = !DILocalVariable(name: "locale", scope: !5110, file: !1016, line: 30, type: !5114)
!5114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5115)
!5115 = !{!5116}
!5116 = !DISubrange(count: 257)
!5117 = distinct !DIAssignID()
!5118 = !DILocation(line: 0, scope: !5110)
!5119 = !DILocation(line: 30, column: 3, scope: !5110)
!5120 = !DILocation(line: 32, column: 7, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5110, file: !1016, line: 32, column: 7)
!5122 = !DILocation(line: 32, column: 7, scope: !5110)
!5123 = !DILocalVariable(name: "__s1", arg: 1, scope: !5124, file: !1187, line: 1359, type: !171)
!5124 = distinct !DISubprogram(name: "streq", scope: !1187, file: !1187, line: 1359, type: !1188, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1083, retainedNodes: !5125)
!5125 = !{!5123, !5126}
!5126 = !DILocalVariable(name: "__s2", arg: 2, scope: !5124, file: !1187, line: 1359, type: !171)
!5127 = !DILocation(line: 0, scope: !5124, inlinedAt: !5128)
!5128 = distinct !DILocation(line: 35, column: 9, scope: !5129)
!5129 = distinct !DILexicalBlock(scope: !5110, file: !1016, line: 35, column: 7)
!5130 = !DILocation(line: 1361, column: 11, scope: !5124, inlinedAt: !5128)
!5131 = !DILocation(line: 1361, column: 10, scope: !5124, inlinedAt: !5128)
!5132 = !DILocation(line: 35, column: 29, scope: !5129)
!5133 = !DILocation(line: 0, scope: !5124, inlinedAt: !5134)
!5134 = distinct !DILocation(line: 35, column: 32, scope: !5129)
!5135 = !DILocation(line: 1361, column: 11, scope: !5124, inlinedAt: !5134)
!5136 = !DILocation(line: 1361, column: 10, scope: !5124, inlinedAt: !5134)
!5137 = !DILocation(line: 35, column: 7, scope: !5110)
!5138 = !DILocation(line: 46, column: 3, scope: !5110)
!5139 = !DILocation(line: 47, column: 1, scope: !5110)
!5140 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1086, file: !1086, line: 154, type: !5141, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1085, retainedNodes: !5143)
!5141 = !DISubroutineType(types: !5142)
!5142 = !{!89, !89, !121, !163}
!5143 = !{!5144, !5145, !5146}
!5144 = !DILocalVariable(name: "category", arg: 1, scope: !5140, file: !1086, line: 154, type: !89)
!5145 = !DILocalVariable(name: "buf", arg: 2, scope: !5140, file: !1086, line: 154, type: !121)
!5146 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5140, file: !1086, line: 154, type: !163)
!5147 = !DILocation(line: 0, scope: !5140)
!5148 = !DILocation(line: 159, column: 10, scope: !5140)
!5149 = !DILocation(line: 159, column: 3, scope: !5140)
!5150 = distinct !DISubprogram(name: "setlocale_null", scope: !1086, file: !1086, line: 186, type: !5151, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1085, retainedNodes: !5153)
!5151 = !DISubroutineType(types: !5152)
!5152 = !{!171, !89}
!5153 = !{!5154}
!5154 = !DILocalVariable(name: "category", arg: 1, scope: !5150, file: !1086, line: 186, type: !89)
!5155 = !DILocation(line: 0, scope: !5150)
!5156 = !DILocation(line: 189, column: 10, scope: !5150)
!5157 = !DILocation(line: 189, column: 3, scope: !5150)
!5158 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1088, file: !1088, line: 35, type: !5151, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1087, retainedNodes: !5159)
!5159 = !{!5160, !5161}
!5160 = !DILocalVariable(name: "category", arg: 1, scope: !5158, file: !1088, line: 35, type: !89)
!5161 = !DILocalVariable(name: "result", scope: !5158, file: !1088, line: 37, type: !171)
!5162 = !DILocation(line: 0, scope: !5158)
!5163 = !DILocation(line: 37, column: 24, scope: !5158)
!5164 = !DILocation(line: 62, column: 3, scope: !5158)
!5165 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1088, file: !1088, line: 66, type: !5141, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1087, retainedNodes: !5166)
!5166 = !{!5167, !5168, !5169, !5170, !5171}
!5167 = !DILocalVariable(name: "category", arg: 1, scope: !5165, file: !1088, line: 66, type: !89)
!5168 = !DILocalVariable(name: "buf", arg: 2, scope: !5165, file: !1088, line: 66, type: !121)
!5169 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5165, file: !1088, line: 66, type: !163)
!5170 = !DILocalVariable(name: "result", scope: !5165, file: !1088, line: 111, type: !171)
!5171 = !DILocalVariable(name: "length", scope: !5172, file: !1088, line: 125, type: !163)
!5172 = distinct !DILexicalBlock(scope: !5173, file: !1088, line: 124, column: 5)
!5173 = distinct !DILexicalBlock(scope: !5165, file: !1088, line: 113, column: 7)
!5174 = !DILocation(line: 0, scope: !5165)
!5175 = !DILocation(line: 0, scope: !5158, inlinedAt: !5176)
!5176 = distinct !DILocation(line: 111, column: 24, scope: !5165)
!5177 = !DILocation(line: 37, column: 24, scope: !5158, inlinedAt: !5176)
!5178 = !DILocation(line: 113, column: 14, scope: !5173)
!5179 = !DILocation(line: 113, column: 7, scope: !5165)
!5180 = !DILocation(line: 116, column: 19, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5182, file: !1088, line: 116, column: 11)
!5182 = distinct !DILexicalBlock(scope: !5173, file: !1088, line: 114, column: 5)
!5183 = !DILocation(line: 116, column: 11, scope: !5182)
!5184 = !DILocation(line: 120, column: 16, scope: !5181)
!5185 = !DILocation(line: 120, column: 9, scope: !5181)
!5186 = !DILocation(line: 125, column: 23, scope: !5172)
!5187 = !DILocation(line: 0, scope: !5172)
!5188 = !DILocation(line: 126, column: 18, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5172, file: !1088, line: 126, column: 11)
!5190 = !DILocation(line: 126, column: 11, scope: !5172)
!5191 = !DILocation(line: 128, column: 39, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5189, file: !1088, line: 127, column: 9)
!5193 = !DILocalVariable(name: "__dest", arg: 1, scope: !5194, file: !2827, line: 26, type: !2830)
!5194 = distinct !DISubprogram(name: "memcpy", scope: !2827, file: !2827, line: 26, type: !2828, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1087, retainedNodes: !5195)
!5195 = !{!5193, !5196, !5197}
!5196 = !DILocalVariable(name: "__src", arg: 2, scope: !5194, file: !2827, line: 26, type: !1318)
!5197 = !DILocalVariable(name: "__len", arg: 3, scope: !5194, file: !2827, line: 26, type: !163)
!5198 = !DILocation(line: 0, scope: !5194, inlinedAt: !5199)
!5199 = distinct !DILocation(line: 128, column: 11, scope: !5192)
!5200 = !DILocation(line: 29, column: 10, scope: !5194, inlinedAt: !5199)
!5201 = !DILocation(line: 129, column: 11, scope: !5192)
!5202 = !DILocation(line: 133, column: 23, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5204, file: !1088, line: 133, column: 15)
!5204 = distinct !DILexicalBlock(scope: !5189, file: !1088, line: 132, column: 9)
!5205 = !DILocation(line: 133, column: 15, scope: !5204)
!5206 = !DILocation(line: 138, column: 44, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5203, file: !1088, line: 134, column: 13)
!5208 = !DILocation(line: 0, scope: !5194, inlinedAt: !5209)
!5209 = distinct !DILocation(line: 138, column: 15, scope: !5207)
!5210 = !DILocation(line: 29, column: 10, scope: !5194, inlinedAt: !5209)
!5211 = !DILocation(line: 139, column: 15, scope: !5207)
!5212 = !DILocation(line: 139, column: 32, scope: !5207)
!5213 = !DILocation(line: 140, column: 13, scope: !5207)
!5214 = !DILocation(line: 0, scope: !5173)
!5215 = !DILocation(line: 145, column: 1, scope: !5165)
