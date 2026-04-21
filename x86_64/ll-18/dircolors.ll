; ModuleID = 'src/dircolors.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, %union.anon, i64, %union.anon.0, %union.anon.0, ptr, i8 }
%union.anon = type { i64 }
%union.anon.0 = type { ptr }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon.5 }
%union.anon.5 = type { i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
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
@long_options = internal constant [9 x %struct.option] [%struct.option { ptr @.str.62, i32 0, ptr null, i32 98 }, %struct.option { ptr @.str.63, i32 0, ptr null, i32 98 }, %struct.option { ptr @.str.64, i32 0, ptr null, i32 99 }, %struct.option { ptr @.str.65, i32 0, ptr null, i32 99 }, %struct.option { ptr @.str.66, i32 0, ptr null, i32 112 }, %struct.option { ptr @.str.67, i32 0, ptr null, i32 128 }, %struct.option { ptr @.str.68, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.69, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !74
@print_ls_colors = internal unnamed_addr global i1 false, align 1, !dbg !672
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !225
@.str.16 = private unnamed_addr constant [15 x i8] c"H. Peter Anvin\00", align 1, !dbg !230
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [92 x i8] c"the options to output non shell syntax,\0Aand to select a shell syntax are mutually exclusive\00", align 1, !dbg !235
@.str.18 = private unnamed_addr constant [70 x i8] c"options --print-database and --print-ls-colors are mutually exclusive\00", align 1, !dbg !240
@.str.19 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !242
@.str.20 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !247
@.str.21 = private unnamed_addr constant [60 x i8] c"file operands cannot be combined with --print-database (-p)\00", align 1, !dbg !249
@G_line = internal constant [5616 x i8] c"# Configuration file for dircolors, a utility to help you set the\00# LS_COLORS environment variable used by GNU ls with the --color option.\00# Copyright (C) 1996-2026 Free Software Foundation, Inc.\00# Copying and distribution of this file, with or without modification,\00# are permitted provided the copyright notice and this notice are preserved.\00#\00# The keywords COLOR, OPTIONS, and EIGHTBIT (honored by the\00# slackware version of dircolors) are recognized but ignored.\00# Global config options can be specified before TERM or COLORTERM entries\00# ===================================================================\00# Terminal filters\00# ===================================================================\00# Below are TERM or COLORTERM entries, which can be glob patterns, which\00# restrict following config to systems with matching environment variables.\00COLORTERM ?*\00TERM Eterm\00TERM ansi\00TERM *color*\00TERM con[0-9]*x[0-9]*\00TERM cons25\00TERM console\00TERM cygwin\00TERM *direct*\00TERM dtterm\00TERM gnome\00TERM hurd\00TERM jfbterm\00TERM konsole\00TERM kterm\00TERM linux\00TERM linux-c\00TERM mlterm\00TERM putty\00TERM rxvt*\00TERM screen*\00TERM st\00TERM terminator\00TERM tmux*\00TERM vt100\00TERM vt220\00TERM xterm*\00# ===================================================================\00# Basic file attributes\00# ===================================================================\00# Below are the color init strings for the basic file types.\00# One can use codes for 256 or more colors supported by modern terminals.\00# The default color codes use the capabilities of an 8 color terminal\00# with some additional attributes as per the following codes:\00# Attribute codes:\00# 00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed\00# Text color codes:\00# 30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white\00# Background color codes:\00# 40=black 41=red 42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white\00#NORMAL 00 # no color code at all\00#FILE 00 # regular file: use no color at all\00RESET 0 # reset to \22normal\22 color\00DIR 01;34 # directory\00LINK 01;36 # symbolic link. (If you set this to 'target' instead of a\00 # numerical value, the color is as for the file pointed to.)\00MULTIHARDLINK 00 # regular file with more than one link\00FIFO 40;33 # pipe\00SOCK 01;35 # socket\00DOOR 01;35 # door\00BLK 40;33;01 # block device driver\00CHR 40;33;01 # character device driver\00ORPHAN 40;31;01 # symlink to nonexistent file, or non-stat'able file ...\00MISSING 00 # ... and the files they point to\00SETUID 37;41 # regular file that is setuid (u+s)\00SETGID 30;43 # regular file that is setgid (g+s)\00CAPABILITY 00 # regular file with capability (very expensive to lookup)\00STICKY_OTHER_WRITABLE 30;42 # dir that is sticky and other-writable (+t,o+w)\00OTHER_WRITABLE 34;42 # dir that is other-writable (o+w) and not sticky\00STICKY 37;44 # dir with the sticky bit set (+t) and not other-writable\00# This is for regular files with execute permission:\00EXEC 01;32\00# ===================================================================\00# File extension attributes\00# ===================================================================\00# List any file extensions like '.gz' or '.tar' that you would like ls\00# to color below. Put the suffix, a space, and the color init string.\00# (and any comments you want to add after a '#').\00# Suffixes are matched case insensitively, but if you define different\00# init strings for separate cases, those will be honored.\00#\00# If you use DOS-style suffixes, you may want to uncomment the following:\00#.cmd 01;32 # executables (bright green)\00#.exe 01;32\00#.com 01;32\00#.btm 01;32\00#.bat 01;32\00# Or if you want to color scripts even if they do not have the\00# executable bit actually set.\00#.sh 01;32\00#.csh 01;32\00# archives or compressed (bright red)\00.7z 01;31\00.ace 01;31\00.alz 01;31\00.apk 01;31\00.arc 01;31\00.arj 01;31\00.bz 01;31\00.bz2 01;31\00.cab 01;31\00.cpio 01;31\00.crate 01;31\00.deb 01;31\00.drpm 01;31\00.dwm 01;31\00.dz 01;31\00.ear 01;31\00.egg 01;31\00.esd 01;31\00.gz 01;31\00.jar 01;31\00.lha 01;31\00.lrz 01;31\00.lz 01;31\00.lz4 01;31\00.lzh 01;31\00.lzma 01;31\00.lzo 01;31\00.pyz 01;31\00.rar 01;31\00.rpm 01;31\00.rz 01;31\00.sar 01;31\00.swm 01;31\00.t7z 01;31\00.tar 01;31\00.taz 01;31\00.tbz 01;31\00.tbz2 01;31\00.tgz 01;31\00.tlz 01;31\00.txz 01;31\00.tz 01;31\00.tzo 01;31\00.tzst 01;31\00.udeb 01;31\00.war 01;31\00.whl 01;31\00.wim 01;31\00.xz 01;31\00.z 01;31\00.zip 01;31\00.zoo 01;31\00.zst 01;31\00# image formats\00.avif 01;35\00.jpg 01;35\00.jpeg 01;35\00.jxl 01;35\00.mjpg 01;35\00.mjpeg 01;35\00.gif 01;35\00.bmp 01;35\00.pbm 01;35\00.pgm 01;35\00.ppm 01;35\00.tga 01;35\00.xbm 01;35\00.xpm 01;35\00.tif 01;35\00.tiff 01;35\00.png 01;35\00.svg 01;35\00.svgz 01;35\00.mng 01;35\00.pcx 01;35\00.mov 01;35\00.mpg 01;35\00.mpeg 01;35\00.m2v 01;35\00.mkv 01;35\00.webm 01;35\00.webp 01;35\00.ogm 01;35\00.mp4 01;35\00.m4v 01;35\00.mp4v 01;35\00.vob 01;35\00.qt 01;35\00.nuv 01;35\00.wmv 01;35\00.asf 01;35\00.rm 01;35\00.rmvb 01;35\00.flc 01;35\00.avi 01;35\00.fli 01;35\00.flv 01;35\00.gl 01;35\00.dl 01;35\00.xcf 01;35\00.xwd 01;35\00.yuv 01;35\00.cgm 01;35\00.emf 01;35\00# https://wiki.xiph.org/MIME_Types_and_File_Extensions\00.ogv 01;35\00.ogx 01;35\00# audio formats\00.aac 00;36\00.au 00;36\00.flac 00;36\00.m4a 00;36\00.mid 00;36\00.midi 00;36\00.mka 00;36\00.mp3 00;36\00.mpc 00;36\00.ogg 00;36\00.ra 00;36\00.wav 00;36\00# https://wiki.xiph.org/MIME_Types_and_File_Extensions\00.oga 00;36\00.opus 00;36\00.spx 00;36\00.xspf 00;36\00# backup files\00*~ 00;90\00*# 00;90\00.bak 00;90\00.crdownload 00;90\00.dpkg-dist 00;90\00.dpkg-new 00;90\00.dpkg-old 00;90\00.dpkg-tmp 00;90\00.old 00;90\00.orig 00;90\00.part 00;90\00.rej 00;90\00.rpmnew 00;90\00.rpmorig 00;90\00.rpmsave 00;90\00.swp 00;90\00.tmp 00;90\00.ucf-dist 00;90\00.ucf-new 00;90\00.ucf-old 00;90\00#\00# Subsequent TERM or COLORTERM entries, can be used to add / override\00# config specific to those matching environment variables.\00", align 16, !dbg !484
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
@slack_codes = internal unnamed_addr constant [38 x ptr] [ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr null], align 16, !dbg !600
@ls_codes = internal unnamed_addr constant [38 x ptr] [ptr @.str.119, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.123, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.128, ptr @.str.129, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.132, ptr @.str.133, ptr @.str.133, ptr @.str.134, ptr @.str.134, ptr @.str.135, ptr @.str.135, ptr @.str.136, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.138, ptr @.str.139, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr null], align 16, !dbg !654
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !693
@.str.38 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !685
@.str.1.39 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !687
@.str.2.40 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !689
@.str.3.41 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !691
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !695
@.str.42 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !701
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !732
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !703
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !722
@.str.1.48 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !724
@.str.2.50 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !726
@.str.3.49 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !728
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !730
@.str.4.43 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !734
@.str.5.44 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !736
@.str.6.45 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !738
@.str.146 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1, !dbg !743
@obstack_alloc_failed_handler = dso_local local_unnamed_addr global ptr @print_and_abort, align 8, !dbg !746
@stderr = external local_unnamed_addr global ptr, align 8
@.str.153 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !752
@.str.1.151 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !754
@.str.2.152 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !756
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !758
@.str.162 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !764
@.str.1.163 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !766
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !768
@.str.166 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !799
@.str.1.167 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !802
@.str.2.168 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !804
@.str.3.169 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !806
@.str.4.170 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !808
@.str.5.171 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !810
@.str.6.172 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !812
@.str.7.173 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !814
@.str.8.174 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !816
@.str.9.175 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !818
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.166, ptr @.str.1.167, ptr @.str.2.168, ptr @.str.3.169, ptr @.str.4.170, ptr @.str.5.171, ptr @.str.6.172, ptr @.str.7.173, ptr @.str.8.174, ptr @.str.9.175, ptr null], align 16, !dbg !820
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !833
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !847
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !885
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !892
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !849
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !894
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !837
@.str.10.178 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !854
@.str.11.176 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !856
@.str.12.179 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !858
@.str.13.177 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !860
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !862
@.str.186 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !897
@.str.1.187 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !900
@.str.2.188 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !902
@.str.3.189 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !904
@.str.4.190 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !906
@.str.5.191 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !908
@.str.6.192 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !913
@.str.7.193 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !918
@.str.8.194 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !920
@.str.9.195 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !925
@.str.10.196 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !930
@.str.11.197 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !932
@.str.12.198 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !937
@.str.13.199 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !939
@.str.14.200 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !941
@.str.15.201 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !946
@.str.16.202 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !951
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.207 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !953
@.str.18.208 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !955
@.str.19.209 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !957
@.str.20.210 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !959
@.str.21.211 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !961
@.str.22.212 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !963
@.str.23.213 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !965
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !970
@exit_failure = dso_local global i32 1, align 4, !dbg !978
@.str.228 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !984
@.str.1.226 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !987
@.str.2.227 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !989
@.str.233 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !991
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !994
@.str.1.238 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !1009

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1092 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1096, metadata !DIExpression()), !dbg !1097
  %2 = icmp eq i32 %0, 0, !dbg !1098
  br i1 %2, label %8, label %3, !dbg !1100

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1101, !tbaa !1103
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !1101
  %6 = load ptr, ptr @program_name, align 8, !dbg !1101, !tbaa !1103
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !1101
  br label %38, !dbg !1101

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !1107
  %10 = load ptr, ptr @program_name, align 8, !dbg !1107, !tbaa !1103
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #39, !dbg !1107
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !1109
  %13 = load ptr, ptr @stdout, align 8, !dbg !1109, !tbaa !1103
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1109
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !1110
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !1110
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !1111
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !1111
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !1112
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !1112
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !1113
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !1113
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !1114
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !1114
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #39, !dbg !1115
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !1115
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #39, !dbg !1116
  %22 = load ptr, ptr @stdout, align 8, !dbg !1116, !tbaa !1103
  %23 = tail call i32 @fputs_unlocked(ptr noundef %21, ptr noundef %22), !dbg !1116
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1117, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata !1136, metadata !1130, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata ptr poison, metadata !1129, metadata !DIExpression()), !dbg !1134
  tail call void @emit_bug_reporting_address() #39, !dbg !1137
  %24 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !1138
  call void @llvm.dbg.value(metadata ptr %24, metadata !1132, metadata !DIExpression()), !dbg !1134
  %25 = icmp eq ptr %24, null, !dbg !1139
  br i1 %25, label %33, label %26, !dbg !1141

26:                                               ; preds = %8
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(4) @.str.57, i64 noundef 3) #40, !dbg !1142
  %28 = icmp eq i32 %27, 0, !dbg !1142
  br i1 %28, label %33, label %29, !dbg !1143

29:                                               ; preds = %26
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.58, i32 noundef 5) #39, !dbg !1144
  %31 = load ptr, ptr @stdout, align 8, !dbg !1144, !tbaa !1103
  %32 = tail call i32 @fputs_unlocked(ptr noundef %30, ptr noundef %31), !dbg !1144
  br label %33, !dbg !1146

33:                                               ; preds = %8, %26, %29
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1129, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1133, metadata !DIExpression()), !dbg !1134
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #39, !dbg !1147
  %35 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %34, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.3) #39, !dbg !1147
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #39, !dbg !1148
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.61) #39, !dbg !1148
  br label %38

38:                                               ; preds = %33, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !1149
  unreachable, !dbg !1149
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1150 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1154 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1160 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1163 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !331 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !335, metadata !DIExpression()), !dbg !1167
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !336, metadata !DIExpression()), !dbg !1167
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1168, !tbaa !1169
  %3 = icmp eq i32 %2, -1, !dbg !1171
  br i1 %3, label %4, label %16, !dbg !1172

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.27) #39, !dbg !1173
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !337, metadata !DIExpression()), !dbg !1174
  %6 = icmp eq ptr %5, null, !dbg !1175
  br i1 %6, label %14, label %7, !dbg !1176

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1177, !tbaa !1178
  %9 = icmp eq i8 %8, 0, !dbg !1177
  br i1 %9, label %14, label %10, !dbg !1179

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1180, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata ptr @.str.28, metadata !1186, metadata !DIExpression()), !dbg !1187
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.28) #40, !dbg !1189
  %12 = icmp eq i32 %11, 0, !dbg !1190
  %13 = zext i1 %12 to i32, !dbg !1179
  br label %14, !dbg !1179

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1191, !tbaa !1169
  br label %16, !dbg !1192

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1193
  %18 = icmp eq i32 %17, 0, !dbg !1193
  br i1 %18, label %22, label %19, !dbg !1195

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1196, !tbaa !1103
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1196
  br label %124, !dbg !1198

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !340, metadata !DIExpression()), !dbg !1167
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.29) #40, !dbg !1199
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1200
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !341, metadata !DIExpression()), !dbg !1167
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !1201
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !342, metadata !DIExpression()), !dbg !1167
  %26 = icmp eq ptr %25, null, !dbg !1202
  br i1 %26, label %54, label %27, !dbg !1203

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1204
  br i1 %28, label %54, label %29, !dbg !1205

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !343, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata i64 0, metadata !347, metadata !DIExpression()), !dbg !1206
  %30 = icmp ult ptr %24, %25, !dbg !1207
  br i1 %30, label %31, label %54, !dbg !1208

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !1167
  %33 = load ptr, ptr %32, align 8, !tbaa !1103
  br label %34, !dbg !1208

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !343, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !347, metadata !DIExpression()), !dbg !1206
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1209
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !343, metadata !DIExpression()), !dbg !1206
  %38 = load i8, ptr %35, align 1, !dbg !1209, !tbaa !1178
  %39 = sext i8 %38 to i64, !dbg !1209
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1209
  %41 = load i16, ptr %40, align 2, !dbg !1209, !tbaa !1210
  %42 = freeze i16 %41, !dbg !1212
  %43 = lshr i16 %42, 13, !dbg !1212
  %44 = and i16 %43, 1, !dbg !1212
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1213
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !347, metadata !DIExpression()), !dbg !1206
  %47 = icmp ult ptr %37, %25, !dbg !1207
  %48 = icmp ult i64 %46, 2, !dbg !1214
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1214
  br i1 %49, label %34, label %50, !dbg !1208, !llvm.loop !1215

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1217
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1219
  %53 = zext i1 %51 to i8, !dbg !1219
  br label %54, !dbg !1219

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1167
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !1167
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !340, metadata !DIExpression()), !dbg !1167
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !342, metadata !DIExpression()), !dbg !1167
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.30) #40, !dbg !1220
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !348, metadata !DIExpression()), !dbg !1167
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1221
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !349, metadata !DIExpression()), !dbg !1167
  br label %59, !dbg !1222

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !1167
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !1167
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !340, metadata !DIExpression()), !dbg !1167
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !349, metadata !DIExpression()), !dbg !1167
  %62 = load i8, ptr %60, align 1, !dbg !1223, !tbaa !1178
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !1224

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1225
  %65 = load i8, ptr %64, align 1, !dbg !1228, !tbaa !1178
  %66 = icmp eq i8 %65, 45, !dbg !1229
  %67 = select i1 %66, i8 0, i8 %61, !dbg !1230
  br label %68, !dbg !1230

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !1167
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !340, metadata !DIExpression()), !dbg !1167
  %70 = tail call ptr @__ctype_b_loc() #42, !dbg !1231
  %71 = load ptr, ptr %70, align 8, !dbg !1231, !tbaa !1103
  %72 = sext i8 %62 to i64, !dbg !1231
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1231
  %74 = load i16, ptr %73, align 2, !dbg !1231, !tbaa !1210
  %75 = and i16 %74, 8192, !dbg !1231
  %76 = icmp eq i16 %75, 0, !dbg !1231
  br i1 %76, label %92, label %77, !dbg !1233

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1234
  br i1 %78, label %94, label %79, !dbg !1237

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1238
  %81 = load i8, ptr %80, align 1, !dbg !1238, !tbaa !1178
  %82 = sext i8 %81 to i64, !dbg !1238
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1238
  %84 = load i16, ptr %83, align 2, !dbg !1238, !tbaa !1210
  %85 = and i16 %84, 8192, !dbg !1238
  %86 = icmp eq i16 %85, 0, !dbg !1238
  br i1 %86, label %87, label %94, !dbg !1239

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !1240
  %89 = icmp ne i8 %88, 0, !dbg !1240
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !1242
  br i1 %91, label %92, label %94, !dbg !1242

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1243
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !349, metadata !DIExpression()), !dbg !1167
  br label %59, !dbg !1222, !llvm.loop !1244

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !1246
  %96 = load ptr, ptr @stdout, align 8, !dbg !1246, !tbaa !1103
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !1246
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1180, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata !1136, metadata !1186, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1180, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata !1136, metadata !1186, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1180, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata !1136, metadata !1186, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1180, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata !1136, metadata !1186, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1180, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata !1136, metadata !1186, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1180, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata !1136, metadata !1186, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1180, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata !1136, metadata !1186, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1180, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata !1136, metadata !1186, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1180, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata !1136, metadata !1186, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1180, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata !1136, metadata !1186, metadata !DIExpression()), !dbg !1265
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !354, metadata !DIExpression()), !dbg !1167
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.44, i64 noundef 6) #40, !dbg !1267
  %99 = icmp eq i32 %98, 0, !dbg !1267
  br i1 %99, label %103, label %100, !dbg !1269

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.45, i64 noundef 9) #40, !dbg !1270
  %102 = icmp eq i32 %101, 0, !dbg !1270
  br i1 %102, label %103, label %106, !dbg !1271

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1272
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #39, !dbg !1272
  br label %109, !dbg !1274

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1275
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #39, !dbg !1275
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1277, !tbaa !1103
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.50, ptr noundef %110), !dbg !1277
  %112 = load ptr, ptr @stdout, align 8, !dbg !1278, !tbaa !1103
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.51, ptr noundef %112), !dbg !1278
  %114 = ptrtoint ptr %60 to i64, !dbg !1279
  %115 = sub i64 %114, %95, !dbg !1279
  %116 = load ptr, ptr @stdout, align 8, !dbg !1279, !tbaa !1103
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1279
  %118 = load ptr, ptr @stdout, align 8, !dbg !1280, !tbaa !1103
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.52, ptr noundef %118), !dbg !1280
  %120 = load ptr, ptr @stdout, align 8, !dbg !1281, !tbaa !1103
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.53, ptr noundef %120), !dbg !1281
  %122 = load ptr, ptr @stdout, align 8, !dbg !1282, !tbaa !1103
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1282
  br label %124, !dbg !1283

124:                                              ; preds = %109, %19
  ret void, !dbg !1283
}

; Function Attrs: nounwind
declare !dbg !1284 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1288 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1292 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1294 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1297 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1300 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1303 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1306 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1312 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1313 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1319 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1324, metadata !DIExpression()), !dbg !1352
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1325, metadata !DIExpression()), !dbg !1352
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1326, metadata !DIExpression()), !dbg !1352
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1328, metadata !DIExpression()), !dbg !1352
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1329, metadata !DIExpression()), !dbg !1352
  %3 = load ptr, ptr %1, align 8, !dbg !1353, !tbaa !1103
  tail call void @set_program_name(ptr noundef %3) #39, !dbg !1354
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #39, !dbg !1355
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #39, !dbg !1356
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #39, !dbg !1357
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1358
  br label %8, !dbg !1359

8:                                                ; preds = %19, %2
  %9 = phi i1 [ true, %19 ], [ false, %2 ]
  %10 = phi i8 [ 1, %19 ], [ 0, %2 ]
  %11 = phi i32 [ %13, %19 ], [ 2, %2 ]
  br label %12, !dbg !1359

12:                                               ; preds = %17, %8
  %13 = phi i32 [ %11, %8 ], [ %18, %17 ]
  br label %14, !dbg !1359

14:                                               ; preds = %12, %20
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !1328, metadata !DIExpression()), !dbg !1352
  tail call void @llvm.dbg.value(metadata i8 %10, metadata !1329, metadata !DIExpression()), !dbg !1352
  %15 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @long_options, ptr noundef null) #39, !dbg !1360
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1327, metadata !DIExpression()), !dbg !1352
  switch i32 %15, label %26 [
    i32 -1, label %27
    i32 98, label %17
    i32 99, label %16
    i32 112, label %19
    i32 128, label %20
    i32 -130, label %21
    i32 -131, label %22
  ], !dbg !1359, !llvm.loop !1361

16:                                               ; preds = %14
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1328, metadata !DIExpression()), !dbg !1352
  br label %17, !dbg !1363

17:                                               ; preds = %14, %16
  %18 = phi i32 [ 1, %16 ], [ 0, %14 ]
  br label %12, !dbg !1359, !llvm.loop !1361

19:                                               ; preds = %14
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1329, metadata !DIExpression()), !dbg !1352
  br label %8, !dbg !1365, !llvm.loop !1361

20:                                               ; preds = %14
  store i1 true, ptr @print_ls_colors, align 1, !dbg !1366
  br label %14, !dbg !1367, !llvm.loop !1361

21:                                               ; preds = %14
  tail call void @usage(i32 noundef 0) #43, !dbg !1368
  unreachable, !dbg !1368

22:                                               ; preds = %14
  %23 = load ptr, ptr @stdout, align 8, !dbg !1369, !tbaa !1103
  %24 = load ptr, ptr @Version, align 8, !dbg !1369, !tbaa !1103
  %25 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.16) #39, !dbg !1369
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %23, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15, ptr noundef %24, ptr noundef %25, ptr noundef null) #39, !dbg !1369
  tail call void @exit(i32 noundef 0) #41, !dbg !1369
  unreachable, !dbg !1369

26:                                               ; preds = %14
  tail call void @usage(i32 noundef 1) #43, !dbg !1370
  unreachable, !dbg !1370

27:                                               ; preds = %14
  %28 = load i32, ptr @optind, align 4, !dbg !1371, !tbaa !1169
  %29 = sub nsw i32 %0, %28, !dbg !1372
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1324, metadata !DIExpression()), !dbg !1352
  %30 = sext i32 %28 to i64, !dbg !1373
  %31 = getelementptr inbounds ptr, ptr %1, i64 %30, !dbg !1373
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1325, metadata !DIExpression()), !dbg !1352
  %32 = load i1, ptr @print_ls_colors, align 1, !dbg !1374
  %33 = zext i1 %32 to i8, !dbg !1376
  %34 = or i8 %10, %33, !dbg !1376
  %35 = icmp ne i8 %34, 0, !dbg !1376
  %36 = icmp ne i32 %13, 2
  %37 = select i1 %35, i1 %36, i1 false, !dbg !1377
  br i1 %37, label %38, label %40, !dbg !1377

38:                                               ; preds = %27
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #39, !dbg !1378
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %39) #39, !dbg !1378
  tail call void @usage(i32 noundef 1) #43, !dbg !1380
  unreachable, !dbg !1380

40:                                               ; preds = %27
  %41 = and i1 %9, %32, !dbg !1381
  br i1 %41, label %42, label %44, !dbg !1381

42:                                               ; preds = %40
  %43 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #39, !dbg !1383
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %43) #39, !dbg !1383
  tail call void @usage(i32 noundef 1) #43, !dbg !1385
  unreachable, !dbg !1385

44:                                               ; preds = %40
  %45 = xor i8 %10, 1, !dbg !1386
  %46 = zext nneg i8 %45 to i32, !dbg !1386
  %47 = icmp sgt i32 %29, %46, !dbg !1388
  br i1 %47, label %48, label %59, !dbg !1389

48:                                               ; preds = %44
  %49 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #39, !dbg !1390
  %50 = zext nneg i8 %45 to i64
  %51 = getelementptr inbounds ptr, ptr %31, i64 %50, !dbg !1390
  %52 = load ptr, ptr %51, align 8, !dbg !1390, !tbaa !1103
  %53 = tail call ptr @quote(ptr noundef %52) #39, !dbg !1390
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %49, ptr noundef %53) #39, !dbg !1390
  br i1 %9, label %54, label %58, !dbg !1392

54:                                               ; preds = %48
  %55 = load ptr, ptr @stderr, align 8, !dbg !1393, !tbaa !1103
  %56 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #39, !dbg !1393
  %57 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %55, i32 noundef 1, ptr noundef nonnull @.str.20, ptr noundef %56) #39, !dbg !1393
  br label %58, !dbg !1393

58:                                               ; preds = %54, %48
  tail call void @usage(i32 noundef 1) #43, !dbg !1395
  unreachable, !dbg !1395

59:                                               ; preds = %44
  br i1 %9, label %60, label %69, !dbg !1396

60:                                               ; preds = %59, %60
  %61 = phi ptr [ %65, %60 ], [ @G_line, %59 ]
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1330, metadata !DIExpression()), !dbg !1397
  %62 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %61), !dbg !1398
  %63 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %61) #40, !dbg !1400
  %64 = add i64 %63, 1, !dbg !1401
  %65 = getelementptr inbounds i8, ptr %61, i64 %64, !dbg !1402
  tail call void @llvm.dbg.value(metadata ptr %65, metadata !1330, metadata !DIExpression()), !dbg !1397
  %66 = ptrtoint ptr %65 to i64, !dbg !1403
  %67 = sub i64 %66, ptrtoint (ptr @G_line to i64), !dbg !1403
  %68 = icmp ult i64 %67, 5616, !dbg !1404
  br i1 %68, label %60, label %141, !dbg !1405, !llvm.loop !1406

69:                                               ; preds = %59
  %70 = or i1 %36, %32, !dbg !1408
  br i1 %70, label %87, label %71, !dbg !1408

71:                                               ; preds = %69
  %72 = tail call ptr @getenv(ptr noundef nonnull @.str.70) #39, !dbg !1410
  call void @llvm.dbg.value(metadata ptr %72, metadata !1415, metadata !DIExpression()), !dbg !1418
  %73 = icmp eq ptr %72, null, !dbg !1419
  br i1 %73, label %85, label %74, !dbg !1421

74:                                               ; preds = %71
  %75 = load i8, ptr %72, align 1, !dbg !1422, !tbaa !1178
  %76 = icmp eq i8 %75, 0, !dbg !1423
  br i1 %76, label %85, label %77, !dbg !1424

77:                                               ; preds = %74
  %78 = tail call ptr @last_component(ptr noundef nonnull %72) #40, !dbg !1425
  call void @llvm.dbg.value(metadata ptr %78, metadata !1415, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata ptr %78, metadata !1180, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata ptr @.str.64, metadata !1186, metadata !DIExpression()), !dbg !1426
  %79 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %78, ptr noundef nonnull dereferenceable(4) @.str.64) #40, !dbg !1429
  %80 = icmp eq i32 %79, 0, !dbg !1430
  br i1 %80, label %87, label %81, !dbg !1431

81:                                               ; preds = %77
  call void @llvm.dbg.value(metadata ptr %78, metadata !1180, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata ptr @.str.71, metadata !1186, metadata !DIExpression()), !dbg !1432
  %82 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %78, ptr noundef nonnull dereferenceable(5) @.str.71) #40, !dbg !1434
  %83 = icmp eq i32 %82, 0, !dbg !1435
  %84 = zext i1 %83 to i32, !dbg !1436
  br label %87, !dbg !1436

85:                                               ; preds = %74, %71
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1328, metadata !DIExpression()), !dbg !1352
  %86 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #39, !dbg !1437
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %86) #39, !dbg !1437
  unreachable, !dbg !1437

87:                                               ; preds = %69, %81, %77
  %88 = phi i32 [ %13, %69 ], [ 1, %77 ], [ %84, %81 ], !dbg !1352
  tail call void @llvm.dbg.value(metadata i32 %88, metadata !1328, metadata !DIExpression()), !dbg !1352
  %89 = tail call i32 @rpl_obstack_begin(ptr noundef nonnull @lsc_obstack, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @malloc, ptr noundef nonnull @free) #39, !dbg !1439
  %90 = icmp eq i32 %28, %0, !dbg !1440
  br i1 %90, label %91, label %93, !dbg !1442

91:                                               ; preds = %87
  %92 = tail call fastcc zeroext i1 @dc_parse_stream(ptr noundef null, ptr noundef null), !dbg !1443
  tail call void @llvm.dbg.value(metadata i1 %92, metadata !1326, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1352
  tail call void @llvm.dbg.value(metadata i1 %92, metadata !1326, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1352
  br i1 %92, label %112, label %141, !dbg !1444

93:                                               ; preds = %87
  %94 = load ptr, ptr %31, align 8, !dbg !1445, !tbaa !1103
  call void @llvm.dbg.value(metadata ptr %94, metadata !1446, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata ptr %94, metadata !1180, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata ptr @.str.143, metadata !1186, metadata !DIExpression()), !dbg !1454
  %95 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %94, ptr noundef nonnull dereferenceable(2) @.str.143) #40, !dbg !1457
  %96 = icmp eq i32 %95, 0, !dbg !1458
  br i1 %96, label %101, label %97, !dbg !1459

97:                                               ; preds = %93
  %98 = load ptr, ptr @stdin, align 8, !dbg !1460, !tbaa !1103
  %99 = tail call ptr @freopen_safer(ptr noundef %94, ptr noundef nonnull @.str.144, ptr noundef %98) #39, !dbg !1461
  %100 = icmp eq ptr %99, null, !dbg !1462
  br i1 %100, label %107, label %101, !dbg !1463

101:                                              ; preds = %97, %93
  %102 = load ptr, ptr @stdin, align 8, !dbg !1464, !tbaa !1103
  %103 = tail call fastcc zeroext i1 @dc_parse_stream(ptr noundef %102, ptr noundef %94), !dbg !1465
  call void @llvm.dbg.value(metadata i1 %103, metadata !1451, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1452
  %104 = load ptr, ptr @stdin, align 8, !dbg !1466, !tbaa !1103
  %105 = tail call i32 @rpl_fclose(ptr noundef %104) #39, !dbg !1468
  %106 = icmp eq i32 %105, 0, !dbg !1469
  br i1 %106, label %111, label %107, !dbg !1470

107:                                              ; preds = %97, %101
  %108 = tail call ptr @__errno_location() #42, !dbg !1452
  %109 = load i32, ptr %108, align 4, !dbg !1452, !tbaa !1169
  %110 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %94) #39, !dbg !1452
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %109, ptr noundef nonnull @.str.145, ptr noundef %110) #39, !dbg !1452
  tail call void @llvm.dbg.value(metadata i1 false, metadata !1326, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1352
  br label %141, !dbg !1444

111:                                              ; preds = %101
  tail call void @llvm.dbg.value(metadata i1 %103, metadata !1326, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1352
  br i1 %103, label %112, label %141, !dbg !1444

112:                                              ; preds = %91, %111
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1337, metadata !DIExpression()), !dbg !1471
  %113 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1472, !tbaa !1473
  %114 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 2), align 8, !dbg !1472, !tbaa !1476
  %115 = ptrtoint ptr %113 to i64, !dbg !1472
  %116 = ptrtoint ptr %114 to i64, !dbg !1472
  %117 = sub i64 %115, %116, !dbg !1472
  tail call void @llvm.dbg.value(metadata i64 %117, metadata !1333, metadata !DIExpression()), !dbg !1477
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1342, metadata !DIExpression()), !dbg !1478
  tail call void @llvm.dbg.value(metadata ptr %114, metadata !1345, metadata !DIExpression()), !dbg !1478
  %118 = icmp eq ptr %113, %114, !dbg !1479
  br i1 %118, label %119, label %122, !dbg !1481

119:                                              ; preds = %112
  %120 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 10), align 8, !dbg !1479
  %121 = or i8 %120, 2, !dbg !1479
  store i8 %121, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 10), align 8, !dbg !1479
  br label %122, !dbg !1479

122:                                              ; preds = %119, %112
  %123 = sub i64 0, %115, !dbg !1481
  %124 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 6), align 8, !dbg !1481, !tbaa !1482
  %125 = and i64 %124, %123, !dbg !1481
  %126 = getelementptr inbounds i8, ptr %113, i64 %125, !dbg !1481
  store ptr %126, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1481, !tbaa !1473
  store ptr %126, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 2), align 8, !dbg !1481, !tbaa !1476
  tail call void @llvm.dbg.value(metadata ptr %114, metadata !1341, metadata !DIExpression()), !dbg !1477
  %127 = icmp eq i32 %88, 0, !dbg !1483
  %128 = select i1 %127, ptr @.str.24, ptr @.str.26
  tail call void @llvm.dbg.value(metadata ptr %128, metadata !1347, metadata !DIExpression()), !dbg !1477
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !1346, metadata !DIExpression()), !dbg !1477
  %129 = load i1, ptr @print_ls_colors, align 1, !dbg !1485
  br i1 %129, label %134, label %130, !dbg !1487

130:                                              ; preds = %122
  %131 = select i1 %127, ptr @.str.23, ptr @.str.25
  tail call void @llvm.dbg.value(metadata ptr %131, metadata !1346, metadata !DIExpression()), !dbg !1477
  %132 = load ptr, ptr @stdout, align 8, !dbg !1488, !tbaa !1103
  %133 = tail call i32 @fputs_unlocked(ptr noundef nonnull %131, ptr noundef %132), !dbg !1488
  br label %134, !dbg !1488

134:                                              ; preds = %130, %122
  %135 = load ptr, ptr @stdout, align 8, !dbg !1489, !tbaa !1103
  %136 = tail call i64 @fwrite_unlocked(ptr noundef %114, i64 noundef 1, i64 noundef %117, ptr noundef %135), !dbg !1489
  %137 = load i1, ptr @print_ls_colors, align 1, !dbg !1490
  br i1 %137, label %141, label %138, !dbg !1492

138:                                              ; preds = %134
  %139 = load ptr, ptr @stdout, align 8, !dbg !1493, !tbaa !1103
  %140 = tail call i32 @fputs_unlocked(ptr noundef nonnull %128, ptr noundef %139), !dbg !1493
  br label %141, !dbg !1493

141:                                              ; preds = %60, %91, %107, %134, %138, %111
  %142 = phi i32 [ 1, %111 ], [ 0, %138 ], [ 0, %134 ], [ 1, %107 ], [ 1, %91 ], [ 0, %60 ]
  tail call void @llvm.dbg.value(metadata i32 %142, metadata !1326, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1352
  ret i32 %142, !dbg !1494
}

; Function Attrs: nounwind
declare !dbg !1495 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1498 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1499 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1502 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1508 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1511 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1514 void @free(ptr allocptr nocapture noundef) #12

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @dc_parse_stream(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !dbg !109 {
  %3 = alloca ptr, align 8, !DIAssignID !1515
  call void @llvm.dbg.assign(metadata i1 undef, metadata !182, metadata !DIExpression(), metadata !1515, metadata ptr %3, metadata !DIExpression()), !dbg !1516
  %4 = alloca i64, align 8, !DIAssignID !1517
  call void @llvm.dbg.assign(metadata i1 undef, metadata !183, metadata !DIExpression(), metadata !1517, metadata ptr %4, metadata !DIExpression()), !dbg !1516
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !174, metadata !DIExpression()), !dbg !1516
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !175, metadata !DIExpression()), !dbg !1516
  tail call void @llvm.dbg.value(metadata i64 0, metadata !176, metadata !DIExpression()), !dbg !1516
  tail call void @llvm.dbg.value(metadata ptr @G_line, metadata !181, metadata !DIExpression()), !dbg !1516
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #39, !dbg !1518
  store ptr null, ptr %3, align 8, !dbg !1519, !tbaa !1103, !DIAssignID !1520
  call void @llvm.dbg.assign(metadata ptr null, metadata !182, metadata !DIExpression(), metadata !1520, metadata ptr %3, metadata !DIExpression()), !dbg !1516
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1521
  store i64 0, ptr %4, align 8, !dbg !1522, !tbaa !1523, !DIAssignID !1524
  call void @llvm.dbg.assign(metadata i64 0, metadata !183, metadata !DIExpression(), metadata !1524, metadata ptr %4, metadata !DIExpression()), !dbg !1516
  tail call void @llvm.dbg.value(metadata i8 1, metadata !187, metadata !DIExpression()), !dbg !1516
  tail call void @llvm.dbg.value(metadata i32 3, metadata !188, metadata !DIExpression()), !dbg !1516
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.27) #39, !dbg !1525
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !185, metadata !DIExpression()), !dbg !1516
  %6 = icmp eq ptr %5, null, !dbg !1526
  br i1 %6, label %10, label %7, !dbg !1528

7:                                                ; preds = %2
  %8 = load i8, ptr %5, align 1, !dbg !1529, !tbaa !1178
  %9 = icmp eq i8 %8, 0, !dbg !1530
  br i1 %9, label %10, label %11, !dbg !1531

10:                                               ; preds = %7, %2
  tail call void @llvm.dbg.value(metadata ptr @.str.72, metadata !185, metadata !DIExpression()), !dbg !1516
  br label %11, !dbg !1532

11:                                               ; preds = %10, %7
  %12 = phi ptr [ @.str.72, %10 ], [ %5, %7 ], !dbg !1516
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !185, metadata !DIExpression()), !dbg !1516
  %13 = tail call ptr @getenv(ptr noundef nonnull @.str.73) #39, !dbg !1533
  tail call void @llvm.dbg.value(metadata ptr %13, metadata !186, metadata !DIExpression()), !dbg !1516
  %14 = icmp eq ptr %13, null, !dbg !1534
  %15 = select i1 %14, ptr @.str.11, ptr %13, !dbg !1536
  tail call void @llvm.dbg.value(metadata ptr %15, metadata !186, metadata !DIExpression()), !dbg !1516
  %16 = icmp eq ptr %0, null
  %17 = icmp eq ptr %1, null
  br label %18, !dbg !1537

18:                                               ; preds = %156, %11
  %19 = phi i64 [ %28, %156 ], [ 0, %11 ]
  %20 = phi i64 [ %53, %156 ], [ 0, %11 ]
  %21 = phi i8 [ %158, %156 ], [ 1, %11 ]
  %22 = phi i32 [ %159, %156 ], [ 3, %11 ]
  br label %24, !dbg !1538

23:                                               ; preds = %55, %55
  br label %24, !dbg !1538

24:                                               ; preds = %18, %23
  %25 = phi i64 [ %28, %23 ], [ %19, %18 ], !dbg !1516
  %26 = phi i64 [ %53, %23 ], [ %20, %18 ]
  %27 = getelementptr inbounds i8, ptr @G_line, i64 %26, !dbg !1539
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !188, metadata !DIExpression()), !dbg !1516
  tail call void @llvm.dbg.value(metadata i8 %21, metadata !187, metadata !DIExpression()), !dbg !1516
  tail call void @llvm.dbg.value(metadata ptr %27, metadata !181, metadata !DIExpression()), !dbg !1516
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !176, metadata !DIExpression()), !dbg !1516
  %28 = add nuw nsw i64 %25, 1, !dbg !1539
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !176, metadata !DIExpression()), !dbg !1516
  br i1 %16, label %46, label %29, !dbg !1538

29:                                               ; preds = %24
  call void @llvm.dbg.value(metadata ptr %3, metadata !1540, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata ptr %4, metadata !1547, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata ptr %0, metadata !1548, metadata !DIExpression()), !dbg !1549
  %30 = call i64 @__getdelim(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 10, ptr noundef nonnull %0) #39, !dbg !1554
  %31 = icmp slt i64 %30, 1, !dbg !1555
  br i1 %31, label %32, label %44, !dbg !1556

32:                                               ; preds = %29
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1557, metadata !DIExpression()), !dbg !1562
  %33 = load i32, ptr %0, align 8, !dbg !1566, !tbaa !1567
  %34 = and i32 %33, 32, !dbg !1569
  %35 = icmp eq i32 %34, 0, !dbg !1569
  br i1 %35, label %41, label %36, !dbg !1570

36:                                               ; preds = %32
  %37 = tail call ptr @__errno_location() #42, !dbg !1571
  %38 = load i32, ptr %37, align 4, !dbg !1571, !tbaa !1169
  %39 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.74, i32 noundef 5) #39, !dbg !1571
  %40 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #39, !dbg !1571
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %38, ptr noundef %39, ptr noundef %40) #39, !dbg !1571
  tail call void @llvm.dbg.value(metadata i8 0, metadata !187, metadata !DIExpression()), !dbg !1516
  br label %41, !dbg !1573

41:                                               ; preds = %36, %32
  %42 = phi i8 [ 0, %36 ], [ %21, %32 ], !dbg !1516
  tail call void @llvm.dbg.value(metadata i8 %42, metadata !187, metadata !DIExpression()), !dbg !1516
  %43 = load ptr, ptr %3, align 8, !dbg !1574, !tbaa !1103
  call void @free(ptr noundef %43) #39, !dbg !1575
  br label %160, !dbg !1576

44:                                               ; preds = %29
  %45 = load ptr, ptr %3, align 8, !dbg !1577, !tbaa !1103
  tail call void @llvm.dbg.value(metadata ptr %45, metadata !184, metadata !DIExpression()), !dbg !1516
  br label %52, !dbg !1578

46:                                               ; preds = %24
  %47 = icmp eq i64 %26, 5616, !dbg !1579
  br i1 %47, label %160, label %48, !dbg !1582

48:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %27, metadata !184, metadata !DIExpression()), !dbg !1516
  %49 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27) #40, !dbg !1583
  %50 = add i64 %26, 1, !dbg !1584
  %51 = add i64 %50, %49, !dbg !1585
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr @G_line, i64 %51), metadata !181, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1516
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i64 [ %26, %44 ], [ %51, %48 ]
  %54 = phi ptr [ %45, %44 ], [ %27, %48 ], !dbg !1586
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !184, metadata !DIExpression()), !dbg !1516
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr @G_line, i64 %53), metadata !181, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1516
  call void @llvm.dbg.value(metadata ptr %54, metadata !1587, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata ptr undef, metadata !1592, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata ptr undef, metadata !1593, metadata !DIExpression()), !dbg !1597
  tail call void @llvm.dbg.value(metadata ptr null, metadata !189, metadata !DIExpression()), !dbg !1599
  tail call void @llvm.dbg.value(metadata ptr null, metadata !191, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata ptr %54, metadata !1594, metadata !DIExpression()), !dbg !1597
  br label %55, !dbg !1600

55:                                               ; preds = %58, %52
  %56 = phi ptr [ %54, %52 ], [ %59, %58 ], !dbg !1602
  call void @llvm.dbg.value(metadata ptr %56, metadata !1594, metadata !DIExpression()), !dbg !1597
  %57 = load i8, ptr %56, align 1, !dbg !1603, !tbaa !1178
  call void @llvm.dbg.value(metadata i8 %57, metadata !1605, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1611
  switch i8 %57, label %60 [
    i8 32, label %58
    i8 9, label %58
    i8 10, label %58
    i8 11, label %58
    i8 12, label %58
    i8 13, label %58
    i8 0, label %23
    i8 35, label %23
  ], !dbg !1613, !llvm.loop !1614

58:                                               ; preds = %55, %55, %55, %55, %55, %55
  %59 = getelementptr inbounds i8, ptr %56, i64 1, !dbg !1616
  call void @llvm.dbg.value(metadata ptr %59, metadata !1594, metadata !DIExpression()), !dbg !1597
  br label %55, !dbg !1617, !llvm.loop !1618

60:                                               ; preds = %55, %63
  %61 = phi i8 [ %65, %63 ], [ %57, %55 ], !dbg !1621
  %62 = phi ptr [ %64, %63 ], [ %56, %55 ], !dbg !1597
  call void @llvm.dbg.value(metadata ptr %62, metadata !1594, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata i8 %61, metadata !1605, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1622
  switch i8 %61, label %63 [
    i8 32, label %66
    i8 9, label %66
    i8 10, label %66
    i8 11, label %66
    i8 12, label %66
    i8 13, label %66
    i8 0, label %66
  ], !dbg !1624

63:                                               ; preds = %60
  %64 = getelementptr inbounds i8, ptr %62, i64 1, !dbg !1625
  call void @llvm.dbg.value(metadata ptr %64, metadata !1594, metadata !DIExpression()), !dbg !1597
  %65 = load i8, ptr %64, align 1, !dbg !1621, !tbaa !1178
  br label %60, !dbg !1627, !llvm.loop !1628

66:                                               ; preds = %60, %60, %60, %60, %60, %60, %60
  %67 = ptrtoint ptr %62 to i64, !dbg !1630
  %68 = ptrtoint ptr %56 to i64, !dbg !1630
  %69 = sub i64 %67, %68, !dbg !1630
  %70 = call noalias nonnull ptr @ximemdup0(ptr noundef nonnull %56, i64 noundef %69) #39, !dbg !1631
  tail call void @llvm.dbg.value(metadata ptr %70, metadata !189, metadata !DIExpression()), !dbg !1599
  %71 = load i8, ptr %62, align 1, !dbg !1632, !tbaa !1178
  %72 = icmp eq i8 %71, 0, !dbg !1634
  br i1 %72, label %90, label %73, !dbg !1635

73:                                               ; preds = %66, %77
  %74 = phi ptr [ %75, %77 ], [ %62, %66 ], !dbg !1597
  call void @llvm.dbg.value(metadata ptr %74, metadata !1594, metadata !DIExpression()), !dbg !1597
  %75 = getelementptr inbounds i8, ptr %74, i64 1, !dbg !1636
  call void @llvm.dbg.value(metadata ptr %75, metadata !1594, metadata !DIExpression()), !dbg !1597
  %76 = load i8, ptr %75, align 1, !dbg !1638, !tbaa !1178
  call void @llvm.dbg.value(metadata i8 %76, metadata !1605, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1639
  switch i8 %76, label %78 [
    i8 32, label %77
    i8 9, label %77
    i8 10, label %77
    i8 11, label %77
    i8 12, label %77
    i8 13, label %77
    i8 0, label %90
    i8 35, label %90
  ], !dbg !1641

77:                                               ; preds = %73, %73, %73, %73, %73, %73
  br label %73, !dbg !1597, !llvm.loop !1642

78:                                               ; preds = %73, %82
  %79 = phi i8 [ %84, %82 ], [ %76, %73 ], !dbg !1645
  %80 = phi ptr [ %83, %82 ], [ %75, %73 ], !dbg !1597
  call void @llvm.dbg.value(metadata ptr %80, metadata !1594, metadata !DIExpression()), !dbg !1597
  switch i8 %79, label %82 [
    i8 0, label %81
    i8 35, label %81
  ], !dbg !1646

81:                                               ; preds = %78, %78
  br label %85, !dbg !1647

82:                                               ; preds = %78
  %83 = getelementptr inbounds i8, ptr %80, i64 1, !dbg !1649
  call void @llvm.dbg.value(metadata ptr %83, metadata !1594, metadata !DIExpression()), !dbg !1597
  %84 = load i8, ptr %83, align 1, !dbg !1645, !tbaa !1178
  br label %78, !dbg !1650, !llvm.loop !1651

85:                                               ; preds = %89, %81
  %86 = phi ptr [ %80, %81 ], [ %87, %89 ]
  %87 = getelementptr inbounds i8, ptr %86, i64 -1, !dbg !1653
  call void @llvm.dbg.value(metadata ptr %87, metadata !1594, metadata !DIExpression()), !dbg !1597
  %88 = load i8, ptr %87, align 1, !dbg !1654, !tbaa !1178
  call void @llvm.dbg.value(metadata i8 %88, metadata !1605, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1656
  switch i8 %88, label %93 [
    i8 32, label %89
    i8 9, label %89
    i8 10, label %89
    i8 11, label %89
    i8 12, label %89
    i8 13, label %89
  ], !dbg !1658

89:                                               ; preds = %85, %85, %85, %85, %85, %85
  br label %85, !dbg !1653, !llvm.loop !1659

90:                                               ; preds = %73, %73, %66
  tail call void @llvm.dbg.value(metadata ptr null, metadata !191, metadata !DIExpression()), !dbg !1599
  tail call void @llvm.dbg.value(metadata ptr %70, metadata !189, metadata !DIExpression()), !dbg !1599
  %91 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.75, i32 noundef 5) #39, !dbg !1661
  %92 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #39, !dbg !1661
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %91, ptr noundef %92, i64 noundef %28) #39, !dbg !1661
  tail call void @llvm.dbg.value(metadata i8 0, metadata !187, metadata !DIExpression()), !dbg !1516
  br label %156, !dbg !1664, !llvm.loop !1614

93:                                               ; preds = %85
  call void @llvm.dbg.value(metadata ptr %86, metadata !1594, metadata !DIExpression()), !dbg !1597
  %94 = ptrtoint ptr %86 to i64, !dbg !1665
  %95 = ptrtoint ptr %75 to i64, !dbg !1665
  %96 = sub i64 %94, %95, !dbg !1665
  %97 = call noalias nonnull ptr @ximemdup0(ptr noundef nonnull %75, i64 noundef %96) #39, !dbg !1666
  tail call void @llvm.dbg.value(metadata ptr %97, metadata !191, metadata !DIExpression()), !dbg !1599
  tail call void @llvm.dbg.value(metadata ptr %70, metadata !189, metadata !DIExpression()), !dbg !1599
  tail call void @llvm.dbg.value(metadata i8 0, metadata !192, metadata !DIExpression()), !dbg !1599
  %98 = call i32 @c_strcasecmp(ptr noundef nonnull %70, ptr noundef nonnull @.str.27) #40, !dbg !1667
  %99 = icmp eq i32 %98, 0, !dbg !1668
  br i1 %99, label %100, label %106, !dbg !1669

100:                                              ; preds = %93
  %101 = icmp eq i32 %22, 2, !dbg !1670
  br i1 %101, label %153, label %102, !dbg !1673

102:                                              ; preds = %100
  %103 = call i32 @fnmatch(ptr noundef nonnull %97, ptr noundef nonnull %12, i32 noundef 0) #39, !dbg !1674
  %104 = icmp eq i32 %103, 0, !dbg !1675
  %105 = select i1 %104, i32 2, i32 0, !dbg !1674
  tail call void @llvm.dbg.value(metadata i32 %105, metadata !188, metadata !DIExpression()), !dbg !1516
  br label %153, !dbg !1676

106:                                              ; preds = %93
  %107 = call i32 @c_strcasecmp(ptr noundef nonnull %70, ptr noundef nonnull @.str.73) #40, !dbg !1677
  %108 = icmp eq i32 %107, 0, !dbg !1678
  %109 = icmp eq i32 %22, 2, !dbg !1679
  br i1 %108, label %110, label %115, !dbg !1680

110:                                              ; preds = %106
  br i1 %109, label %153, label %111, !dbg !1681

111:                                              ; preds = %110
  %112 = call i32 @fnmatch(ptr noundef nonnull %97, ptr noundef nonnull %15, i32 noundef 0) #39, !dbg !1683
  %113 = icmp eq i32 %112, 0, !dbg !1685
  %114 = select i1 %113, i32 2, i32 0, !dbg !1683
  tail call void @llvm.dbg.value(metadata i32 %114, metadata !188, metadata !DIExpression()), !dbg !1516
  br label %153, !dbg !1686

115:                                              ; preds = %106
  %116 = select i1 %109, i32 1, i32 %22, !dbg !1687
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !188, metadata !DIExpression()), !dbg !1516
  %117 = icmp eq i32 %116, 0, !dbg !1688
  br i1 %117, label %153, label %118, !dbg !1689

118:                                              ; preds = %115
  %119 = load i8, ptr %70, align 1, !dbg !1690, !tbaa !1178
  switch i8 %119, label %122 [
    i8 46, label %120
    i8 42, label %121
  ], !dbg !1691

120:                                              ; preds = %118
  call fastcc void @append_entry(i8 noundef signext 42, ptr noundef nonnull %70, ptr noundef nonnull %97), !dbg !1692
  br label %153, !dbg !1692

121:                                              ; preds = %118
  call fastcc void @append_entry(i8 noundef signext 0, ptr noundef nonnull %70, ptr noundef nonnull %97), !dbg !1693
  br label %153, !dbg !1693

122:                                              ; preds = %118
  %123 = call i32 @c_strcasecmp(ptr noundef nonnull %70, ptr noundef nonnull @.str.76) #40, !dbg !1694
  %124 = icmp eq i32 %123, 0, !dbg !1695
  br i1 %124, label %153, label %125, !dbg !1696

125:                                              ; preds = %122
  %126 = call i32 @c_strcasecmp(ptr noundef nonnull %70, ptr noundef nonnull @.str.77) #40, !dbg !1697
  %127 = icmp eq i32 %126, 0, !dbg !1698
  br i1 %127, label %153, label %128, !dbg !1699

128:                                              ; preds = %125
  %129 = call i32 @c_strcasecmp(ptr noundef nonnull %70, ptr noundef nonnull @.str.78) #40, !dbg !1700
  %130 = icmp eq i32 %129, 0, !dbg !1701
  br i1 %130, label %153, label %134, !dbg !1702

131:                                              ; preds = %134
  %132 = add nuw nsw i64 %135, 1, !dbg !1703
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !193, metadata !DIExpression()), !dbg !1706
  %133 = icmp eq i64 %132, 37, !dbg !1707
  br i1 %133, label %143, label %134, !dbg !1708, !llvm.loop !1709

134:                                              ; preds = %128, %131
  %135 = phi i64 [ %132, %131 ], [ 0, %128 ]
  tail call void @llvm.dbg.value(metadata i64 %135, metadata !193, metadata !DIExpression()), !dbg !1706
  %136 = getelementptr inbounds [38 x ptr], ptr @slack_codes, i64 0, i64 %135, !dbg !1711
  %137 = load ptr, ptr %136, align 8, !dbg !1711, !tbaa !1103
  %138 = call i32 @c_strcasecmp(ptr noundef nonnull %70, ptr noundef %137) #40, !dbg !1712
  %139 = icmp eq i32 %138, 0, !dbg !1714
  tail call void @llvm.dbg.value(metadata i64 %135, metadata !193, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1706
  br i1 %139, label %140, label %131, !dbg !1715

140:                                              ; preds = %134
  %141 = getelementptr inbounds [38 x ptr], ptr @ls_codes, i64 0, i64 %135, !dbg !1716
  %142 = load ptr, ptr %141, align 8, !dbg !1716, !tbaa !1103
  call fastcc void @append_entry(i8 noundef signext 0, ptr noundef %142, ptr noundef nonnull %97), !dbg !1718
  br label %153, !dbg !1718

143:                                              ; preds = %131
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !192, metadata !DIExpression()), !dbg !1599
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !188, metadata !DIExpression()), !dbg !1516
  %144 = icmp ult i32 %116, 3
  br i1 %144, label %145, label %153, !dbg !1719

145:                                              ; preds = %143
  %146 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.79, i32 noundef 5) #39, !dbg !1721
  br i1 %17, label %149, label %147, !dbg !1721

147:                                              ; preds = %145
  %148 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef nonnull %1) #39, !dbg !1721
  br label %151, !dbg !1721

149:                                              ; preds = %145
  %150 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.80, i32 noundef 5) #39, !dbg !1721
  br label %151, !dbg !1721

151:                                              ; preds = %149, %147
  %152 = phi ptr [ %148, %147 ], [ %150, %149 ], !dbg !1721
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %146, ptr noundef %152, i64 noundef %28, ptr noundef nonnull %70) #39, !dbg !1721
  tail call void @llvm.dbg.value(metadata i8 0, metadata !187, metadata !DIExpression()), !dbg !1516
  br label %153, !dbg !1723

153:                                              ; preds = %115, %140, %128, %125, %122, %121, %120, %110, %111, %100, %102, %151, %143
  %154 = phi i32 [ %116, %151 ], [ %22, %143 ], [ 0, %115 ], [ %116, %140 ], [ %116, %128 ], [ %116, %125 ], [ %116, %122 ], [ %116, %121 ], [ %116, %120 ], [ 2, %110 ], [ %114, %111 ], [ 2, %100 ], [ %105, %102 ]
  %155 = phi i8 [ 0, %151 ], [ %21, %143 ], [ %21, %115 ], [ %21, %140 ], [ %21, %128 ], [ %21, %125 ], [ %21, %122 ], [ %21, %121 ], [ %21, %120 ], [ %21, %110 ], [ %21, %111 ], [ %21, %100 ], [ %21, %102 ], !dbg !1516
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !187, metadata !DIExpression()), !dbg !1516
  call void @free(ptr noundef nonnull %70) #39, !dbg !1724
  br label %156, !dbg !1615

156:                                              ; preds = %90, %153
  %157 = phi ptr [ %97, %153 ], [ %70, %90 ]
  %158 = phi i8 [ %155, %153 ], [ 0, %90 ]
  %159 = phi i32 [ %154, %153 ], [ %22, %90 ]
  call void @free(ptr noundef nonnull %157) #39, !dbg !1599
  br label %18

160:                                              ; preds = %46, %41
  %161 = phi i8 [ %42, %41 ], [ %21, %46 ]
  %162 = and i8 %161, 1, !dbg !1725
  %163 = icmp ne i8 %162, 0, !dbg !1725
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !1726
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #39, !dbg !1726
  ret i1 %163, !dbg !1727
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
define internal fastcc void @append_entry(i8 noundef signext %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !dbg !1741 {
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
  %7 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1778, !tbaa !1473
  %8 = icmp eq ptr %6, %7, !dbg !1780
  br i1 %8, label %9, label %11, !dbg !1781

9:                                                ; preds = %5
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #39, !dbg !1780
  %10 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1781, !tbaa !1473
  br label %11, !dbg !1780

11:                                               ; preds = %9, %5
  %12 = phi ptr [ %10, %9 ], [ %7, %5 ], !dbg !1781
  %13 = getelementptr inbounds i8, ptr %12, i64 1, !dbg !1781
  store ptr %13, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1781, !tbaa !1473
  store i8 109, ptr %12, align 1, !dbg !1781, !tbaa !1178
  br label %14, !dbg !1782

14:                                               ; preds = %11, %3
  %15 = icmp eq i8 %0, 0, !dbg !1783
  br i1 %15, label %25, label %16, !dbg !1784

16:                                               ; preds = %14
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1755, metadata !DIExpression()), !dbg !1785
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1758, metadata !DIExpression()), !dbg !1786
  %17 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1787, !tbaa !1779
  %18 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1787, !tbaa !1473
  %19 = icmp eq ptr %17, %18, !dbg !1788
  br i1 %19, label %20, label %22, !dbg !1789

20:                                               ; preds = %16
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #39, !dbg !1788
  %21 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1789, !tbaa !1473
  br label %22, !dbg !1788

22:                                               ; preds = %20, %16
  %23 = phi ptr [ %21, %20 ], [ %18, %16 ], !dbg !1789
  %24 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1789
  store ptr %24, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1789, !tbaa !1473
  store i8 %0, ptr %23, align 1, !dbg !1789, !tbaa !1178
  br label %25, !dbg !1790

25:                                               ; preds = %22, %14
  tail call fastcc void @append_quoted(ptr noundef %1), !dbg !1791
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1761, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1763, metadata !DIExpression()), !dbg !1793
  %26 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1794, !tbaa !1779
  %27 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1794, !tbaa !1473
  %28 = icmp eq ptr %26, %27, !dbg !1795
  br i1 %28, label %29, label %31, !dbg !1796

29:                                               ; preds = %25
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #39, !dbg !1795
  %30 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1796, !tbaa !1473
  br label %31, !dbg !1795

31:                                               ; preds = %29, %25
  %32 = phi ptr [ %30, %29 ], [ %27, %25 ], !dbg !1796
  %33 = load i1, ptr @print_ls_colors, align 1, !dbg !1796
  %34 = select i1 %33, i8 9, i8 61, !dbg !1796
  %35 = getelementptr inbounds i8, ptr %32, i64 1, !dbg !1796
  store ptr %35, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1796, !tbaa !1473
  store i8 %34, ptr %32, align 1, !dbg !1796, !tbaa !1178
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
  %40 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1804, !tbaa !1473
  %41 = icmp eq ptr %39, %40, !dbg !1805
  br i1 %41, label %42, label %44, !dbg !1806

42:                                               ; preds = %38
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #39, !dbg !1805
  %43 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1806, !tbaa !1473
  br label %44, !dbg !1805

44:                                               ; preds = %42, %38
  %45 = phi ptr [ %43, %42 ], [ %40, %38 ], !dbg !1806
  %46 = load i1, ptr @print_ls_colors, align 1, !dbg !1806
  %47 = select i1 %46, i8 10, i8 58, !dbg !1806
  %48 = getelementptr inbounds i8, ptr %45, i64 1, !dbg !1806
  store ptr %48, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1806, !tbaa !1473
  store i8 %47, ptr %45, align 1, !dbg !1806, !tbaa !1178
  ret void, !dbg !1807
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #13

; Function Attrs: nounwind uwtable
define internal fastcc void @append_quoted(ptr nocapture noundef readonly %0) unnamed_addr #10 !dbg !1808 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1810, metadata !DIExpression()), !dbg !1841
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1811, metadata !DIExpression()), !dbg !1841
  %2 = load i8, ptr %0, align 1, !dbg !1842, !tbaa !1178
  %3 = icmp eq i8 %2, 0, !dbg !1843
  br i1 %3, label %64, label %4, !dbg !1844

4:                                                ; preds = %1, %57
  %5 = phi i8 [ %62, %57 ], [ %2, %1 ]
  %6 = phi ptr [ %61, %57 ], [ %0, %1 ]
  %7 = phi i8 [ %51, %57 ], [ 1, %1 ]
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1810, metadata !DIExpression()), !dbg !1841
  tail call void @llvm.dbg.value(metadata i8 %7, metadata !1811, metadata !DIExpression()), !dbg !1841
  %8 = load i1, ptr @print_ls_colors, align 1, !dbg !1845
  br i1 %8, label %50, label %9, !dbg !1846

9:                                                ; preds = %4
  switch i8 %5, label %50 [
    i8 39, label %10
    i8 92, label %35
    i8 94, label %35
    i8 58, label %38
    i8 61, label %38
  ], !dbg !1847

10:                                               ; preds = %9
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1812, metadata !DIExpression()), !dbg !1848
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1817, metadata !DIExpression()), !dbg !1849
  %11 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1850, !tbaa !1779
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1850, !tbaa !1473
  %13 = icmp eq ptr %11, %12, !dbg !1851
  br i1 %13, label %14, label %16, !dbg !1852

14:                                               ; preds = %10
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #39, !dbg !1851
  %15 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1852, !tbaa !1473
  br label %16, !dbg !1851

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %15, %14 ], [ %12, %10 ], !dbg !1852
  %18 = getelementptr inbounds i8, ptr %17, i64 1, !dbg !1852
  store ptr %18, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1852, !tbaa !1473
  store i8 39, ptr %17, align 1, !dbg !1852, !tbaa !1178
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1820, metadata !DIExpression()), !dbg !1853
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1822, metadata !DIExpression()), !dbg !1854
  %19 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1855, !tbaa !1779
  %20 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1855, !tbaa !1473
  %21 = icmp eq ptr %19, %20, !dbg !1856
  br i1 %21, label %22, label %24, !dbg !1857

22:                                               ; preds = %16
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #39, !dbg !1856
  %23 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1857, !tbaa !1473
  br label %24, !dbg !1856

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %23, %22 ], [ %20, %16 ], !dbg !1857
  %26 = getelementptr inbounds i8, ptr %25, i64 1, !dbg !1857
  store ptr %26, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1857, !tbaa !1473
  store i8 92, ptr %25, align 1, !dbg !1857, !tbaa !1178
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1825, metadata !DIExpression()), !dbg !1858
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1827, metadata !DIExpression()), !dbg !1859
  %27 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1860, !tbaa !1779
  %28 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1860, !tbaa !1473
  %29 = icmp eq ptr %27, %28, !dbg !1861
  br i1 %29, label %30, label %32, !dbg !1862

30:                                               ; preds = %24
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #39, !dbg !1861
  %31 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1862, !tbaa !1473
  br label %32, !dbg !1861

32:                                               ; preds = %30, %24
  %33 = phi ptr [ %31, %30 ], [ %28, %24 ], !dbg !1862
  %34 = getelementptr inbounds i8, ptr %33, i64 1, !dbg !1862
  store ptr %34, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1862, !tbaa !1473
  store i8 39, ptr %33, align 1, !dbg !1862, !tbaa !1178
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1811, metadata !DIExpression()), !dbg !1841
  br label %50, !dbg !1863

35:                                               ; preds = %9, %9
  %36 = and i8 %7, 1, !dbg !1864
  %37 = xor i8 %36, 1, !dbg !1865
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1811, metadata !DIExpression()), !dbg !1841
  br label %50, !dbg !1866

38:                                               ; preds = %9, %9
  %39 = and i8 %7, 1, !dbg !1867
  %40 = icmp eq i8 %39, 0, !dbg !1867
  br i1 %40, label %50, label %41, !dbg !1868

41:                                               ; preds = %38
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1830, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1833, metadata !DIExpression()), !dbg !1870
  %42 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1871, !tbaa !1779
  %43 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1871, !tbaa !1473
  %44 = icmp eq ptr %42, %43, !dbg !1872
  br i1 %44, label %45, label %47, !dbg !1873

45:                                               ; preds = %41
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #39, !dbg !1872
  %46 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1873, !tbaa !1473
  br label %47, !dbg !1872

47:                                               ; preds = %45, %41
  %48 = phi ptr [ %46, %45 ], [ %43, %41 ], !dbg !1873
  %49 = getelementptr inbounds i8, ptr %48, i64 1, !dbg !1873
  store ptr %49, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1873, !tbaa !1473
  store i8 92, ptr %48, align 1, !dbg !1873, !tbaa !1178
  br label %50, !dbg !1874

50:                                               ; preds = %9, %47, %38, %32, %35, %4
  %51 = phi i8 [ %7, %4 ], [ %37, %35 ], [ 1, %32 ], [ 1, %38 ], [ 1, %47 ], [ 1, %9 ], !dbg !1841
  tail call void @llvm.dbg.value(metadata i8 %51, metadata !1811, metadata !DIExpression()), !dbg !1841
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1836, metadata !DIExpression()), !dbg !1875
  tail call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1838, metadata !DIExpression()), !dbg !1876
  %52 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1877, !tbaa !1779
  %53 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1877, !tbaa !1473
  %54 = icmp eq ptr %52, %53, !dbg !1878
  br i1 %54, label %55, label %57, !dbg !1879

55:                                               ; preds = %50
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #39, !dbg !1878
  %56 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1879, !tbaa !1473
  br label %57, !dbg !1878

57:                                               ; preds = %55, %50
  %58 = phi ptr [ %56, %55 ], [ %53, %50 ], !dbg !1879
  %59 = load i8, ptr %6, align 1, !dbg !1879, !tbaa !1178
  %60 = getelementptr inbounds i8, ptr %58, i64 1, !dbg !1879
  store ptr %60, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1879, !tbaa !1473
  store i8 %59, ptr %58, align 1, !dbg !1879, !tbaa !1178
  %61 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !1880
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1810, metadata !DIExpression()), !dbg !1841
  tail call void @llvm.dbg.value(metadata i8 %51, metadata !1811, metadata !DIExpression()), !dbg !1841
  %62 = load i8, ptr %61, align 1, !dbg !1842, !tbaa !1178
  %63 = icmp eq i8 %62, 0, !dbg !1843
  br i1 %63, label %64, label %4, !dbg !1844, !llvm.loop !1881

64:                                               ; preds = %57, %1
  ret void, !dbg !1883
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @last_component(ptr noundef readonly %0) local_unnamed_addr #14 !dbg !1884 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1886, metadata !DIExpression()), !dbg !1891
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1887, metadata !DIExpression()), !dbg !1891
  br label %2, !dbg !1892

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ], !dbg !1891
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1887, metadata !DIExpression()), !dbg !1891
  %4 = load i8, ptr %3, align 1, !dbg !1893, !tbaa !1178
  %5 = icmp eq i8 %4, 47, !dbg !1893
  %6 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !1894
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1887, metadata !DIExpression()), !dbg !1891
  br i1 %5, label %2, label %7, !dbg !1892, !llvm.loop !1895

7:                                                ; preds = %2, %18
  %8 = phi i8 [ %22, %18 ], [ %4, %2 ], !dbg !1896
  %9 = phi ptr [ %19, %18 ], [ %3, %2 ], !dbg !1898
  %10 = phi i8 [ %20, %18 ], [ 0, %2 ], !dbg !1891
  %11 = phi ptr [ %21, %18 ], [ %3, %2 ], !dbg !1899
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !1889, metadata !DIExpression()), !dbg !1900
  tail call void @llvm.dbg.value(metadata i8 %10, metadata !1888, metadata !DIExpression()), !dbg !1891
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1887, metadata !DIExpression()), !dbg !1891
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %18
  ], !dbg !1901

12:                                               ; preds = %7
  ret ptr %9, !dbg !1902

13:                                               ; preds = %7
  %14 = and i8 %10, 1, !dbg !1903
  %15 = icmp eq i8 %14, 0, !dbg !1903
  %16 = select i1 %15, ptr %9, ptr %11, !dbg !1907
  %17 = select i1 %15, i8 %10, i8 0, !dbg !1907
  br label %18, !dbg !1907

18:                                               ; preds = %13, %7
  %19 = phi ptr [ %9, %7 ], [ %16, %13 ], !dbg !1891
  %20 = phi i8 [ 1, %7 ], [ %17, %13 ], !dbg !1891
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !1888, metadata !DIExpression()), !dbg !1891
  tail call void @llvm.dbg.value(metadata ptr %19, metadata !1887, metadata !DIExpression()), !dbg !1891
  %21 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !1908
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1889, metadata !DIExpression()), !dbg !1900
  %22 = load i8, ptr %21, align 1, !dbg !1896, !tbaa !1178
  br label %7, !dbg !1909, !llvm.loop !1910
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @base_len(ptr nocapture noundef readonly %0) local_unnamed_addr #15 !dbg !1912 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1916, metadata !DIExpression()), !dbg !1919
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !1920
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1917, metadata !DIExpression()), !dbg !1919
  %3 = getelementptr i8, ptr %0, i64 -1, !dbg !1922
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1917, metadata !DIExpression()), !dbg !1919
  %4 = icmp ugt i64 %2, 1, !dbg !1923
  br i1 %4, label %5, label %13, !dbg !1925

5:                                                ; preds = %1, %10
  %6 = phi i64 [ %11, %10 ], [ %2, %1 ]
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !1917, metadata !DIExpression()), !dbg !1919
  %7 = getelementptr i8, ptr %3, i64 %6, !dbg !1926
  %8 = load i8, ptr %7, align 1, !dbg !1926, !tbaa !1178
  %9 = icmp eq i8 %8, 47, !dbg !1926
  br i1 %9, label %10, label %13, !dbg !1927

10:                                               ; preds = %5
  %11 = add i64 %6, -1, !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1917, metadata !DIExpression()), !dbg !1919
  %12 = icmp ugt i64 %11, 1, !dbg !1923
  br i1 %12, label %5, label %13, !dbg !1925, !llvm.loop !1929

13:                                               ; preds = %5, %10, %1
  %14 = phi i64 [ %2, %1 ], [ 1, %10 ], [ %6, %5 ], !dbg !1931
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1918, metadata !DIExpression()), !dbg !1919
  ret i64 %14, !dbg !1932
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @c_strcasecmp(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #14 !dbg !1933 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1935, metadata !DIExpression()), !dbg !1944
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1936, metadata !DIExpression()), !dbg !1944
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1937, metadata !DIExpression()), !dbg !1944
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1938, metadata !DIExpression()), !dbg !1944
  %3 = icmp eq ptr %0, %1, !dbg !1945
  br i1 %3, label %48, label %4, !dbg !1947

4:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1937, metadata !DIExpression()), !dbg !1944
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1938, metadata !DIExpression()), !dbg !1944
  %5 = load i8, ptr %0, align 1, !dbg !1948, !tbaa !1178
  %6 = zext i8 %5 to i32, !dbg !1948
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1949, metadata !DIExpression()), !dbg !1955
  %7 = add nsw i32 %6, -65, !dbg !1957
  %8 = icmp ult i32 %7, 26, !dbg !1957
  %9 = add nuw nsw i32 %6, 32, !dbg !1957
  %10 = select i1 %8, i32 %9, i32 %6, !dbg !1957
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1939, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1958
  %11 = load i8, ptr %1, align 1, !dbg !1959, !tbaa !1178
  %12 = zext i8 %11 to i32, !dbg !1959
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1949, metadata !DIExpression()), !dbg !1960
  %13 = add nsw i32 %12, -65, !dbg !1962
  %14 = icmp ult i32 %13, 26, !dbg !1962
  %15 = add nuw nsw i32 %12, 32, !dbg !1962
  %16 = select i1 %14, i32 %15, i32 %12, !dbg !1962
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !1943, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1958
  %17 = and i32 %10, 255, !dbg !1963
  %18 = icmp ne i32 %17, 0, !dbg !1965
  %19 = and i32 %16, 255
  %20 = icmp eq i32 %17, %19
  %21 = select i1 %18, i1 %20, i1 false, !dbg !1966
  br i1 %21, label %26, label %22, !dbg !1966

22:                                               ; preds = %26, %4
  %23 = phi i32 [ %17, %4 ], [ %43, %26 ], !dbg !1963
  %24 = phi i32 [ %19, %4 ], [ %45, %26 ]
  %25 = sub nsw i32 %23, %24, !dbg !1967
  br label %48

26:                                               ; preds = %4, %26
  %27 = phi ptr [ %29, %26 ], [ %0, %4 ]
  %28 = phi ptr [ %30, %26 ], [ %1, %4 ]
  tail call void @llvm.dbg.value(metadata ptr %27, metadata !1937, metadata !DIExpression()), !dbg !1944
  tail call void @llvm.dbg.value(metadata ptr %28, metadata !1938, metadata !DIExpression()), !dbg !1944
  %29 = getelementptr inbounds i8, ptr %27, i64 1, !dbg !1970
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !1937, metadata !DIExpression()), !dbg !1944
  %30 = getelementptr inbounds i8, ptr %28, i64 1, !dbg !1971
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1938, metadata !DIExpression()), !dbg !1944
  %31 = load i8, ptr %29, align 1, !dbg !1948, !tbaa !1178
  %32 = zext i8 %31 to i32, !dbg !1948
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !1949, metadata !DIExpression()), !dbg !1955
  %33 = add nsw i32 %32, -65, !dbg !1957
  %34 = icmp ult i32 %33, 26, !dbg !1957
  %35 = add nuw nsw i32 %32, 32, !dbg !1957
  %36 = select i1 %34, i32 %35, i32 %32, !dbg !1957
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !1939, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1958
  %37 = load i8, ptr %30, align 1, !dbg !1959, !tbaa !1178
  %38 = zext i8 %37 to i32, !dbg !1959
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !1949, metadata !DIExpression()), !dbg !1960
  %39 = add nsw i32 %38, -65, !dbg !1962
  %40 = icmp ult i32 %39, 26, !dbg !1962
  %41 = add nuw nsw i32 %38, 32, !dbg !1962
  %42 = select i1 %40, i32 %41, i32 %38, !dbg !1962
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !1943, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1958
  %43 = and i32 %36, 255, !dbg !1963
  %44 = icmp ne i32 %43, 0, !dbg !1965
  %45 = and i32 %42, 255
  %46 = icmp eq i32 %43, %45
  %47 = select i1 %44, i1 %46, i1 false, !dbg !1966
  br i1 %47, label %26, label %22, !dbg !1966, !llvm.loop !1972

48:                                               ; preds = %22, %2
  %49 = phi i32 [ %25, %22 ], [ 0, %2 ], !dbg !1944
  ret i32 %49, !dbg !1975
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #16 !dbg !1976 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1978, metadata !DIExpression()), !dbg !1979
  store ptr %0, ptr @file_name, align 8, !dbg !1980, !tbaa !1103
  ret void, !dbg !1981
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #16 !dbg !1982 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1986, metadata !DIExpression()), !dbg !1987
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1988, !tbaa !1989
  ret void, !dbg !1991
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1992 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1997, !tbaa !1103
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1998
  %3 = icmp eq i32 %2, 0, !dbg !1999
  br i1 %3, label %22, label %4, !dbg !2000

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !2001, !tbaa !1989, !range !2002, !noundef !1136
  %6 = icmp eq i8 %5, 0, !dbg !2001
  br i1 %6, label %11, label %7, !dbg !2003

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !2004
  %9 = load i32, ptr %8, align 4, !dbg !2004, !tbaa !1169
  %10 = icmp eq i32 %9, 32, !dbg !2005
  br i1 %10, label %22, label %11, !dbg !2006

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1.39, i32 noundef 5) #39, !dbg !2007
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1994, metadata !DIExpression()), !dbg !2008
  %13 = load ptr, ptr @file_name, align 8, !dbg !2009, !tbaa !1103
  %14 = icmp eq ptr %13, null, !dbg !2009
  %15 = tail call ptr @__errno_location() #42, !dbg !2011
  %16 = load i32, ptr %15, align 4, !dbg !2011, !tbaa !1169
  br i1 %14, label %19, label %17, !dbg !2012

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !2013
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.40, ptr noundef %18, ptr noundef %12) #39, !dbg !2013
  br label %20, !dbg !2013

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.41, ptr noundef %12) #39, !dbg !2014
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2015, !tbaa !1169
  tail call void @_exit(i32 noundef %21) #41, !dbg !2016
  unreachable, !dbg !2016

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2017, !tbaa !1103
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !2019
  %25 = icmp eq i32 %24, 0, !dbg !2020
  br i1 %25, label %28, label %26, !dbg !2021

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2022, !tbaa !1169
  tail call void @_exit(i32 noundef %27) #41, !dbg !2023
  unreachable, !dbg !2023

28:                                               ; preds = %22
  ret void, !dbg !2024
}

; Function Attrs: noreturn
declare !dbg !2025 void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #18 !dbg !2027 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2031, metadata !DIExpression()), !dbg !2035
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2032, metadata !DIExpression()), !dbg !2035
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2033, metadata !DIExpression()), !dbg !2035
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2034, metadata !DIExpression()), !dbg !2035
  tail call fastcc void @flush_stdout(), !dbg !2036
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2037, !tbaa !1103
  %6 = icmp eq ptr %5, null, !dbg !2037
  br i1 %6, label %8, label %7, !dbg !2039

7:                                                ; preds = %4
  tail call void %5() #39, !dbg !2040
  br label %12, !dbg !2040

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2041, !tbaa !1103
  %10 = tail call ptr @getprogname() #40, !dbg !2041
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.42, ptr noundef %10) #39, !dbg !2041
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2043
  ret void, !dbg !2044
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2045 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2047, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i32 1, metadata !2049, metadata !DIExpression()), !dbg !2052
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !2055
  %2 = icmp slt i32 %1, 0, !dbg !2056
  br i1 %2, label %6, label %3, !dbg !2057

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2058, !tbaa !1103
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !2058
  br label %6, !dbg !2058

6:                                                ; preds = %3, %0
  ret void, !dbg !2059
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !2060 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !2066
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2062, metadata !DIExpression()), !dbg !2067
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2063, metadata !DIExpression()), !dbg !2067
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2064, metadata !DIExpression()), !dbg !2067
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2065, metadata !DIExpression()), !dbg !2067
  %6 = load ptr, ptr @stderr, align 8, !dbg !2068, !tbaa !1103
  call void @llvm.dbg.value(metadata ptr %6, metadata !2069, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata ptr %2, metadata !2109, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata ptr %3, metadata !2110, metadata !DIExpression()), !dbg !2111
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #39, !dbg !2113
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2114, !tbaa !1169
  %9 = add i32 %8, 1, !dbg !2114
  store i32 %9, ptr @error_message_count, align 4, !dbg !2114, !tbaa !1169
  %10 = icmp eq i32 %1, 0, !dbg !2115
  br i1 %10, label %20, label %11, !dbg !2117

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2118, metadata !DIExpression(), metadata !2066, metadata ptr %5, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i32 %1, metadata !2121, metadata !DIExpression()), !dbg !2126
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !2128
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !2129
  call void @llvm.dbg.value(metadata ptr %12, metadata !2122, metadata !DIExpression()), !dbg !2126
  %13 = icmp eq ptr %12, null, !dbg !2130
  br i1 %13, label %14, label %16, !dbg !2132

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.43, ptr noundef nonnull @.str.5.44, i32 noundef 5) #39, !dbg !2133
  call void @llvm.dbg.value(metadata ptr %15, metadata !2122, metadata !DIExpression()), !dbg !2126
  br label %16, !dbg !2134

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2126
  call void @llvm.dbg.value(metadata ptr %17, metadata !2122, metadata !DIExpression()), !dbg !2126
  %18 = load ptr, ptr @stderr, align 8, !dbg !2135, !tbaa !1103
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.45, ptr noundef %17) #39, !dbg !2135
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !2136
  br label %20, !dbg !2137

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2138, !tbaa !1103
  call void @llvm.dbg.value(metadata i32 10, metadata !2139, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata ptr %21, metadata !2144, metadata !DIExpression()), !dbg !2145
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2147
  %23 = load ptr, ptr %22, align 8, !dbg !2147, !tbaa !2148
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2147
  %25 = load ptr, ptr %24, align 8, !dbg !2147, !tbaa !2149
  %26 = icmp ult ptr %23, %25, !dbg !2147
  br i1 %26, label %29, label %27, !dbg !2147, !prof !2150

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #39, !dbg !2147
  br label %31, !dbg !2147

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2147
  store ptr %30, ptr %22, align 8, !dbg !2147, !tbaa !2148
  store i8 10, ptr %23, align 1, !dbg !2147, !tbaa !1178
  br label %31, !dbg !2147

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2151, !tbaa !1103
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #39, !dbg !2151
  %34 = icmp eq i32 %0, 0, !dbg !2152
  br i1 %34, label %36, label %35, !dbg !2154

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #41, !dbg !2155
  unreachable, !dbg !2155

36:                                               ; preds = %31
  ret void, !dbg !2156
}

declare !dbg !2157 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2160 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2163 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2166 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !2169 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2173 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2186
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2180, metadata !DIExpression(), metadata !2186, metadata ptr %4, metadata !DIExpression()), !dbg !2187
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2177, metadata !DIExpression()), !dbg !2187
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2178, metadata !DIExpression()), !dbg !2187
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2179, metadata !DIExpression()), !dbg !2187
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #39, !dbg !2188
  call void @llvm.va_start(ptr nonnull %4), !dbg !2189
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #44, !dbg !2190
  call void @llvm.va_end(ptr nonnull %4), !dbg !2191
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39, !dbg !2192
  ret void, !dbg !2192
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #18 !dbg !705 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !716, metadata !DIExpression()), !dbg !2193
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !717, metadata !DIExpression()), !dbg !2193
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !718, metadata !DIExpression()), !dbg !2193
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !719, metadata !DIExpression()), !dbg !2193
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !720, metadata !DIExpression()), !dbg !2193
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !721, metadata !DIExpression()), !dbg !2193
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2194, !tbaa !1169
  %8 = icmp eq i32 %7, 0, !dbg !2194
  br i1 %8, label %23, label %9, !dbg !2196

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2197, !tbaa !1169
  %11 = icmp eq i32 %10, %3, !dbg !2200
  br i1 %11, label %12, label %22, !dbg !2201

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2202, !tbaa !1103
  %14 = icmp eq ptr %13, %2, !dbg !2203
  br i1 %14, label %36, label %15, !dbg !2204

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2205
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2206
  br i1 %18, label %19, label %22, !dbg !2206

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2207
  %21 = icmp eq i32 %20, 0, !dbg !2208
  br i1 %21, label %36, label %22, !dbg !2209

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2210, !tbaa !1103
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2211, !tbaa !1169
  br label %23, !dbg !2212

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2213
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2214, !tbaa !1103
  %25 = icmp eq ptr %24, null, !dbg !2214
  br i1 %25, label %27, label %26, !dbg !2216

26:                                               ; preds = %23
  tail call void %24() #39, !dbg !2217
  br label %31, !dbg !2217

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2218, !tbaa !1103
  %29 = tail call ptr @getprogname() #40, !dbg !2218
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.48, ptr noundef %29) #39, !dbg !2218
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2220, !tbaa !1103
  %33 = icmp eq ptr %2, null, !dbg !2220
  %34 = select i1 %33, ptr @.str.3.49, ptr @.str.2.50, !dbg !2220
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #39, !dbg !2220
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2221
  br label %36, !dbg !2222

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2222
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2223 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2233
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2232, metadata !DIExpression(), metadata !2233, metadata ptr %6, metadata !DIExpression()), !dbg !2234
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2227, metadata !DIExpression()), !dbg !2234
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2228, metadata !DIExpression()), !dbg !2234
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2229, metadata !DIExpression()), !dbg !2234
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2230, metadata !DIExpression()), !dbg !2234
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2231, metadata !DIExpression()), !dbg !2234
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #39, !dbg !2235
  call void @llvm.va_start(ptr nonnull %6), !dbg !2236
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #44, !dbg !2237
  call void @llvm.va_end(ptr nonnull %6), !dbg !2238
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #39, !dbg !2239
  ret void, !dbg !2239
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2240 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2278, metadata !DIExpression()), !dbg !2282
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2279, metadata !DIExpression()), !dbg !2282
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !2283
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2280, metadata !DIExpression()), !dbg !2282
  %3 = icmp slt i32 %2, 0, !dbg !2284
  br i1 %3, label %4, label %6, !dbg !2286

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2287
  br label %24, !dbg !2288

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !2289
  %8 = icmp eq i32 %7, 0, !dbg !2289
  br i1 %8, label %13, label %9, !dbg !2291

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !2292
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !2293
  %12 = icmp eq i64 %11, -1, !dbg !2294
  br i1 %12, label %16, label %13, !dbg !2295

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !2296
  %15 = icmp eq i32 %14, 0, !dbg !2296
  br i1 %15, label %16, label %18, !dbg !2297

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2279, metadata !DIExpression()), !dbg !2282
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2281, metadata !DIExpression()), !dbg !2282
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2298
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !2281, metadata !DIExpression()), !dbg !2282
  br label %24, !dbg !2299

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !2300
  %20 = load i32, ptr %19, align 4, !dbg !2300, !tbaa !1169
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !2279, metadata !DIExpression()), !dbg !2282
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2281, metadata !DIExpression()), !dbg !2282
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2298
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !2281, metadata !DIExpression()), !dbg !2282
  %22 = icmp eq i32 %20, 0, !dbg !2301
  br i1 %22, label %24, label %23, !dbg !2299

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2303, !tbaa !1169
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !2281, metadata !DIExpression()), !dbg !2282
  br label %24, !dbg !2305

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2282
  ret i32 %25, !dbg !2306
}

; Function Attrs: nofree nounwind
declare !dbg !2307 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !2308 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2309 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2311 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2314 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2352, metadata !DIExpression()), !dbg !2353
  %2 = icmp eq ptr %0, null, !dbg !2354
  br i1 %2, label %6, label %3, !dbg !2356

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !2357
  %5 = icmp eq i32 %4, 0, !dbg !2357
  br i1 %5, label %6, label %8, !dbg !2358

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2359
  br label %16, !dbg !2360

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2361, metadata !DIExpression()), !dbg !2366
  %9 = load i32, ptr %0, align 8, !dbg !2368, !tbaa !1567
  %10 = and i32 %9, 256, !dbg !2370
  %11 = icmp eq i32 %10, 0, !dbg !2370
  br i1 %11, label %14, label %12, !dbg !2371

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !2372
  br label %14, !dbg !2372

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2373
  br label %16, !dbg !2374

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2353
  ret i32 %17, !dbg !2375
}

; Function Attrs: nofree nounwind
declare !dbg !2376 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @freopen_safer(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) local_unnamed_addr #10 !dbg !2377 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2415, metadata !DIExpression()), !dbg !2422
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2416, metadata !DIExpression()), !dbg !2422
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2417, metadata !DIExpression()), !dbg !2422
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2418, metadata !DIExpression()), !dbg !2422
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2419, metadata !DIExpression()), !dbg !2422
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2420, metadata !DIExpression()), !dbg !2422
  %4 = tail call i32 @fileno(ptr noundef nonnull %2) #39, !dbg !2423
  switch i32 %4, label %5 [
    i32 2, label %9
    i32 1, label %14
    i32 0, label %53
  ], !dbg !2424

5:                                                ; preds = %3
  %6 = tail call i32 @dup2(i32 noundef 2, i32 noundef 2) #39, !dbg !2425
  %7 = icmp ne i32 %6, 2, !dbg !2428
  %8 = zext i1 %7 to i8, !dbg !2429
  br label %9, !dbg !2429

9:                                                ; preds = %5, %3
  %10 = phi i8 [ 0, %3 ], [ %8, %5 ], !dbg !2422
  tail call void @llvm.dbg.value(metadata i8 %10, metadata !2420, metadata !DIExpression()), !dbg !2422
  %11 = tail call i32 @dup2(i32 noundef 1, i32 noundef 1) #39, !dbg !2430
  %12 = icmp ne i32 %11, 1, !dbg !2432
  %13 = zext i1 %12 to i8, !dbg !2433
  br label %14, !dbg !2433

14:                                               ; preds = %3, %9
  %15 = phi i8 [ 0, %3 ], [ %13, %9 ], !dbg !2422
  %16 = phi i8 [ 0, %3 ], [ %10, %9 ], !dbg !2422
  tail call void @llvm.dbg.value(metadata i8 %16, metadata !2420, metadata !DIExpression()), !dbg !2422
  tail call void @llvm.dbg.value(metadata i8 %15, metadata !2419, metadata !DIExpression()), !dbg !2422
  %17 = tail call i32 @dup2(i32 noundef 0, i32 noundef 0) #39, !dbg !2434
  %18 = icmp ne i32 %17, 0, !dbg !2436
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2418, metadata !DIExpression()), !dbg !2422
  br i1 %18, label %19, label %27, !dbg !2437

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i32 0, metadata !2439, metadata !DIExpression()), !dbg !2443
  %20 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.146, i32 noundef 0) #39, !dbg !2445
  call void @llvm.dbg.value(metadata i32 %20, metadata !2442, metadata !DIExpression()), !dbg !2443
  %21 = icmp slt i32 %20, 1, !dbg !2446
  br i1 %21, label %25, label %22, !dbg !2446

22:                                               ; preds = %19
  %23 = tail call i32 @close(i32 noundef %20) #39, !dbg !2447
  %24 = tail call ptr @__errno_location() #42, !dbg !2452
  store i32 9, ptr %24, align 4, !dbg !2453, !tbaa !1169
  br label %58, !dbg !2454

25:                                               ; preds = %19
  %26 = icmp eq i32 %20, 0, !dbg !2455
  br i1 %26, label %27, label %58, !dbg !2454

27:                                               ; preds = %25, %14
  %28 = icmp eq i8 %15, 0, !dbg !2456
  br i1 %28, label %38, label %29, !dbg !2458

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i32 1, metadata !2439, metadata !DIExpression()), !dbg !2459
  %30 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.146, i32 noundef 0) #39, !dbg !2461
  call void @llvm.dbg.value(metadata i32 %30, metadata !2442, metadata !DIExpression()), !dbg !2459
  %31 = icmp eq i32 %30, 1, !dbg !2462
  %32 = icmp slt i32 %30, 0
  %33 = or i1 %32, %31, !dbg !2463
  br i1 %33, label %37, label %34, !dbg !2463

34:                                               ; preds = %29
  %35 = tail call i32 @close(i32 noundef %30) #39, !dbg !2464
  %36 = tail call ptr @__errno_location() #42, !dbg !2465
  store i32 9, ptr %36, align 4, !dbg !2466, !tbaa !1169
  br label %37, !dbg !2467

37:                                               ; preds = %29, %34
  br i1 %31, label %38, label %58, !dbg !2468

38:                                               ; preds = %37, %27
  %39 = phi i8 [ 1, %37 ], [ 0, %27 ]
  %40 = icmp eq i8 %16, 0, !dbg !2469
  br i1 %40, label %53, label %41, !dbg !2471

41:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 2, metadata !2439, metadata !DIExpression()), !dbg !2472
  %42 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.146, i32 noundef 0) #39, !dbg !2474
  call void @llvm.dbg.value(metadata i32 %42, metadata !2442, metadata !DIExpression()), !dbg !2472
  %43 = icmp eq i32 %42, 2, !dbg !2475
  %44 = icmp slt i32 %42, 0
  %45 = or i1 %44, %43, !dbg !2476
  br i1 %45, label %49, label %46, !dbg !2476

46:                                               ; preds = %41
  %47 = tail call i32 @close(i32 noundef %42) #39, !dbg !2477
  %48 = tail call ptr @__errno_location() #42, !dbg !2478
  store i32 9, ptr %48, align 4, !dbg !2479, !tbaa !1169
  br label %49, !dbg !2480

49:                                               ; preds = %41, %46
  br i1 %43, label %53, label %50, !dbg !2481

50:                                               ; preds = %49
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2417, metadata !DIExpression()), !dbg !2422
  %51 = tail call ptr @__errno_location() #42, !dbg !2482
  %52 = load i32, ptr %51, align 4, !dbg !2482, !tbaa !1169
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !2421, metadata !DIExpression()), !dbg !2422
  br label %66, !dbg !2483

53:                                               ; preds = %3, %49, %38
  %54 = phi i8 [ 1, %49 ], [ 0, %38 ], [ 0, %3 ]
  %55 = phi i8 [ %39, %49 ], [ %39, %38 ], [ 0, %3 ]
  %56 = phi i1 [ %18, %49 ], [ %18, %38 ], [ false, %3 ]
  %57 = tail call ptr @freopen(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #39, !dbg !2484
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !2417, metadata !DIExpression()), !dbg !2422
  br label %58

58:                                               ; preds = %22, %37, %25, %53
  %59 = phi i8 [ %54, %53 ], [ %16, %25 ], [ %16, %37 ], [ %16, %22 ]
  %60 = phi i8 [ %55, %53 ], [ %15, %25 ], [ 1, %37 ], [ %15, %22 ]
  %61 = phi i1 [ %56, %53 ], [ true, %25 ], [ %18, %37 ], [ true, %22 ]
  %62 = phi ptr [ %57, %53 ], [ null, %25 ], [ null, %37 ], [ null, %22 ], !dbg !2485
  tail call void @llvm.dbg.value(metadata ptr %62, metadata !2417, metadata !DIExpression()), !dbg !2422
  %63 = tail call ptr @__errno_location() #42, !dbg !2482
  %64 = load i32, ptr %63, align 4, !dbg !2482, !tbaa !1169
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !2421, metadata !DIExpression()), !dbg !2422
  %65 = icmp eq i8 %59, 0, !dbg !2486
  br i1 %65, label %73, label %66, !dbg !2483

66:                                               ; preds = %50, %58
  %67 = phi i32 [ %52, %50 ], [ %64, %58 ]
  %68 = phi ptr [ %51, %50 ], [ %63, %58 ]
  %69 = phi ptr [ null, %50 ], [ %62, %58 ]
  %70 = phi i1 [ %18, %50 ], [ %61, %58 ]
  %71 = phi i8 [ %39, %50 ], [ %60, %58 ]
  %72 = tail call i32 @close(i32 noundef 2) #39, !dbg !2488
  br label %73, !dbg !2488

73:                                               ; preds = %66, %58
  %74 = phi i32 [ %67, %66 ], [ %64, %58 ]
  %75 = phi ptr [ %68, %66 ], [ %63, %58 ]
  %76 = phi ptr [ %69, %66 ], [ %62, %58 ]
  %77 = phi i1 [ %70, %66 ], [ %61, %58 ]
  %78 = phi i8 [ %71, %66 ], [ %60, %58 ]
  %79 = icmp eq i8 %78, 0, !dbg !2489
  br i1 %79, label %82, label %80, !dbg !2491

80:                                               ; preds = %73
  %81 = tail call i32 @close(i32 noundef 1) #39, !dbg !2492
  br label %82, !dbg !2492

82:                                               ; preds = %80, %73
  br i1 %77, label %83, label %85, !dbg !2493

83:                                               ; preds = %82
  %84 = tail call i32 @close(i32 noundef 0) #39, !dbg !2494
  br label %85, !dbg !2494

85:                                               ; preds = %83, %82
  %86 = icmp eq ptr %76, null, !dbg !2496
  br i1 %86, label %87, label %88, !dbg !2498

87:                                               ; preds = %85
  store i32 %74, ptr %75, align 4, !dbg !2499, !tbaa !1169
  br label %88, !dbg !2500

88:                                               ; preds = %87, %85
  ret ptr %76, !dbg !2501
}

; Function Attrs: nounwind
declare !dbg !2502 i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !2505 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #20

declare !dbg !2508 i32 @close(i32 noundef) local_unnamed_addr #3

declare !dbg !2509 ptr @freopen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2513 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2552, metadata !DIExpression()), !dbg !2558
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2553, metadata !DIExpression()), !dbg !2558
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2554, metadata !DIExpression()), !dbg !2558
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2559
  %5 = load ptr, ptr %4, align 8, !dbg !2559, !tbaa !2560
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2561
  %7 = load ptr, ptr %6, align 8, !dbg !2561, !tbaa !2562
  %8 = icmp eq ptr %5, %7, !dbg !2563
  br i1 %8, label %9, label %27, !dbg !2564

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2565
  %11 = load ptr, ptr %10, align 8, !dbg !2565, !tbaa !2148
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2566
  %13 = load ptr, ptr %12, align 8, !dbg !2566, !tbaa !2567
  %14 = icmp eq ptr %11, %13, !dbg !2568
  br i1 %14, label %15, label %27, !dbg !2569

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2570
  %17 = load ptr, ptr %16, align 8, !dbg !2570, !tbaa !2571
  %18 = icmp eq ptr %17, null, !dbg !2572
  br i1 %18, label %19, label %27, !dbg !2573

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !2574
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !2575
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2555, metadata !DIExpression()), !dbg !2576
  %22 = icmp eq i64 %21, -1, !dbg !2577
  br i1 %22, label %29, label %23, !dbg !2579

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2580, !tbaa !1567
  %25 = and i32 %24, -17, !dbg !2580
  store i32 %25, ptr %0, align 8, !dbg !2580, !tbaa !1567
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2581
  store i64 %21, ptr %26, align 8, !dbg !2582, !tbaa !2583
  br label %29, !dbg !2584

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2585
  br label %29, !dbg !2586

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2558
  ret i32 %30, !dbg !2587
}

; Function Attrs: nofree nounwind
declare !dbg !2588 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #21 !dbg !2591 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2594, !tbaa !1103
  ret ptr %1, !dbg !2595
}

; Function Attrs: noreturn nounwind uwtable
define internal void @print_and_abort() #0 !dbg !2596 {
  %1 = load ptr, ptr @stderr, align 8, !dbg !2597, !tbaa !1103
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.151, ptr noundef nonnull @.str.2.152, i32 noundef 5) #39, !dbg !2597
  %3 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.153, ptr noundef %2) #39, !dbg !2597
  %4 = load volatile i32, ptr @exit_failure, align 4, !dbg !2598, !tbaa !1169
  tail call void @exit(i32 noundef %4) #41, !dbg !2599
  unreachable, !dbg !2599
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_obstack_begin(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2600 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2639, metadata !DIExpression()), !dbg !2644
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2640, metadata !DIExpression()), !dbg !2644
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2641, metadata !DIExpression()), !dbg !2644
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2642, metadata !DIExpression()), !dbg !2644
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2643, metadata !DIExpression()), !dbg !2644
  %6 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 7, !dbg !2645
  store ptr %3, ptr %6, align 8, !dbg !2646, !tbaa !1178
  %7 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 8, !dbg !2647
  store ptr %4, ptr %7, align 8, !dbg !2648, !tbaa !1178
  %8 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 10, !dbg !2649
  %9 = load i8, ptr %8, align 8, !dbg !2650
  %10 = and i8 %9, -2, !dbg !2650
  store i8 %10, ptr %8, align 8, !dbg !2650
  call void @llvm.dbg.value(metadata ptr %0, metadata !2651, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i64 %1, metadata !2656, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i64 %2, metadata !2657, metadata !DIExpression()), !dbg !2665
  %11 = icmp eq i64 %2, 0, !dbg !2667
  %12 = add i64 %2, -1, !dbg !2669
  call void @llvm.dbg.value(metadata i64 poison, metadata !2657, metadata !DIExpression()), !dbg !2665
  %13 = select i1 %11, i64 15, i64 %12, !dbg !2669
  call void @llvm.dbg.value(metadata ptr undef, metadata !2670, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i64 %13, metadata !2675, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i64 16, metadata !2676, metadata !DIExpression()), !dbg !2677
  %14 = and i64 %13, -16, !dbg !2679
  %15 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 16), !dbg !2679
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !2679
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !2679
  call void @llvm.dbg.value(metadata i64 %17, metadata !2659, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i1 %16, metadata !2660, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2665
  call void @llvm.dbg.value(metadata i64 %1, metadata !2661, metadata !DIExpression()), !dbg !2665
  %18 = icmp ugt i64 %17, %1, !dbg !2680
  %19 = tail call i64 @llvm.umax.i64(i64 %17, i64 4000), !dbg !2681
  %20 = select i1 %18, i64 %19, i64 %1, !dbg !2681
  call void @llvm.dbg.value(metadata i64 %20, metadata !2661, metadata !DIExpression()), !dbg !2665
  store i64 %20, ptr %0, align 8, !dbg !2682, !tbaa !2683
  %21 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 6, !dbg !2684
  store i64 %13, ptr %21, align 8, !dbg !2685, !tbaa !1482
  br i1 %16, label %22, label %24, !dbg !2686

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2687
  store ptr null, ptr %23, align 8, !dbg !2688, !tbaa !2689
  call void @llvm.dbg.value(metadata ptr null, metadata !2658, metadata !DIExpression()), !dbg !2665
  br label %28, !dbg !2690

24:                                               ; preds = %5
  call void @llvm.dbg.value(metadata ptr %0, metadata !2691, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %20, metadata !2696, metadata !DIExpression()), !dbg !2697
  %25 = tail call ptr %3(i64 noundef %20) #39, !dbg !2699
  %26 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2687
  store ptr %25, ptr %26, align 8, !dbg !2688, !tbaa !2689
  call void @llvm.dbg.value(metadata ptr %25, metadata !2658, metadata !DIExpression()), !dbg !2665
  %27 = icmp eq ptr %25, null, !dbg !2701
  br i1 %27, label %28, label %30, !dbg !2690

28:                                               ; preds = %24, %22
  %29 = load ptr, ptr @obstack_alloc_failed_handler, align 8, !dbg !2703, !tbaa !1103
  tail call void %29() #41, !dbg !2704
  unreachable, !dbg !2704

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct._obstack_chunk, ptr %25, i64 0, i32 2, !dbg !2705
  %32 = ptrtoint ptr %31 to i64, !dbg !2705
  %33 = sub i64 0, %32, !dbg !2705
  %34 = and i64 %13, %33, !dbg !2705
  %35 = getelementptr inbounds i8, ptr %31, i64 %34, !dbg !2705
  %36 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 2, !dbg !2706
  store ptr %35, ptr %36, align 8, !dbg !2707, !tbaa !1476
  %37 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 3, !dbg !2708
  store ptr %35, ptr %37, align 8, !dbg !2709, !tbaa !1473
  %38 = getelementptr inbounds i8, ptr %25, i64 %20, !dbg !2710
  %39 = sub i64 0, %13, !dbg !2710
  %40 = getelementptr inbounds i8, ptr %38, i64 %39, !dbg !2710
  %41 = ptrtoint ptr %40 to i64, !dbg !2710
  %42 = sub i64 0, %41, !dbg !2710
  %43 = and i64 %13, %42, !dbg !2710
  %44 = getelementptr inbounds i8, ptr %40, i64 %43, !dbg !2710
  store ptr %44, ptr %25, align 8, !dbg !2711, !tbaa !1103
  %45 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 4, !dbg !2712
  store ptr %44, ptr %45, align 8, !dbg !2713, !tbaa !1779
  %46 = getelementptr inbounds %struct._obstack_chunk, ptr %25, i64 0, i32 1, !dbg !2714
  store ptr null, ptr %46, align 8, !dbg !2715, !tbaa !1103
  %47 = load i8, ptr %8, align 8, !dbg !2716
  %48 = and i8 %47, -7, !dbg !2717
  store i8 %48, ptr %8, align 8, !dbg !2717
  ret i32 1, !dbg !2718
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_obstack_begin_1(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #10 !dbg !2719 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2723, metadata !DIExpression()), !dbg !2729
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2724, metadata !DIExpression()), !dbg !2729
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2725, metadata !DIExpression()), !dbg !2729
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2726, metadata !DIExpression()), !dbg !2729
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2727, metadata !DIExpression()), !dbg !2729
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2728, metadata !DIExpression()), !dbg !2729
  %7 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 7, !dbg !2730
  store ptr %3, ptr %7, align 8, !dbg !2731, !tbaa !1178
  %8 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 8, !dbg !2732
  store ptr %4, ptr %8, align 8, !dbg !2733, !tbaa !1178
  %9 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 9, !dbg !2734
  store ptr %5, ptr %9, align 8, !dbg !2735, !tbaa !2736
  %10 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 10, !dbg !2737
  %11 = load i8, ptr %10, align 8, !dbg !2738
  %12 = or i8 %11, 1, !dbg !2738
  store i8 %12, ptr %10, align 8, !dbg !2738
  call void @llvm.dbg.value(metadata ptr %0, metadata !2651, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %1, metadata !2656, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %2, metadata !2657, metadata !DIExpression()), !dbg !2739
  %13 = icmp eq i64 %2, 0, !dbg !2741
  %14 = add i64 %2, -1, !dbg !2742
  call void @llvm.dbg.value(metadata i64 poison, metadata !2657, metadata !DIExpression()), !dbg !2739
  %15 = select i1 %13, i64 15, i64 %14, !dbg !2742
  call void @llvm.dbg.value(metadata ptr undef, metadata !2670, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i64 %15, metadata !2675, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i64 16, metadata !2676, metadata !DIExpression()), !dbg !2743
  %16 = and i64 %15, -16, !dbg !2745
  %17 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %16, i64 16), !dbg !2745
  %18 = extractvalue { i64, i1 } %17, 1, !dbg !2745
  %19 = extractvalue { i64, i1 } %17, 0, !dbg !2745
  call void @llvm.dbg.value(metadata i64 %19, metadata !2659, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i1 %18, metadata !2660, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %1, metadata !2661, metadata !DIExpression()), !dbg !2739
  %20 = icmp ugt i64 %19, %1, !dbg !2746
  %21 = tail call i64 @llvm.umax.i64(i64 %19, i64 4000), !dbg !2747
  %22 = select i1 %20, i64 %21, i64 %1, !dbg !2747
  call void @llvm.dbg.value(metadata i64 %22, metadata !2661, metadata !DIExpression()), !dbg !2739
  store i64 %22, ptr %0, align 8, !dbg !2748, !tbaa !2683
  %23 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 6, !dbg !2749
  store i64 %15, ptr %23, align 8, !dbg !2750, !tbaa !1482
  br i1 %18, label %24, label %26, !dbg !2751

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2752
  store ptr null, ptr %25, align 8, !dbg !2753, !tbaa !2689
  call void @llvm.dbg.value(metadata ptr null, metadata !2658, metadata !DIExpression()), !dbg !2739
  br label %30, !dbg !2754

26:                                               ; preds = %6
  call void @llvm.dbg.value(metadata ptr %0, metadata !2691, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i64 %22, metadata !2696, metadata !DIExpression()), !dbg !2755
  %27 = tail call ptr %3(ptr noundef %5, i64 noundef %22) #39, !dbg !2757
  %28 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2752
  store ptr %27, ptr %28, align 8, !dbg !2753, !tbaa !2689
  call void @llvm.dbg.value(metadata ptr %27, metadata !2658, metadata !DIExpression()), !dbg !2739
  %29 = icmp eq ptr %27, null, !dbg !2758
  br i1 %29, label %30, label %32, !dbg !2754

30:                                               ; preds = %26, %24
  %31 = load ptr, ptr @obstack_alloc_failed_handler, align 8, !dbg !2759, !tbaa !1103
  tail call void %31() #41, !dbg !2760
  unreachable, !dbg !2760

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct._obstack_chunk, ptr %27, i64 0, i32 2, !dbg !2761
  %34 = ptrtoint ptr %33 to i64, !dbg !2761
  %35 = sub i64 0, %34, !dbg !2761
  %36 = and i64 %15, %35, !dbg !2761
  %37 = getelementptr inbounds i8, ptr %33, i64 %36, !dbg !2761
  %38 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 2, !dbg !2762
  store ptr %37, ptr %38, align 8, !dbg !2763, !tbaa !1476
  %39 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 3, !dbg !2764
  store ptr %37, ptr %39, align 8, !dbg !2765, !tbaa !1473
  %40 = getelementptr inbounds i8, ptr %27, i64 %22, !dbg !2766
  %41 = sub i64 0, %15, !dbg !2766
  %42 = getelementptr inbounds i8, ptr %40, i64 %41, !dbg !2766
  %43 = ptrtoint ptr %42 to i64, !dbg !2766
  %44 = sub i64 0, %43, !dbg !2766
  %45 = and i64 %15, %44, !dbg !2766
  %46 = getelementptr inbounds i8, ptr %42, i64 %45, !dbg !2766
  store ptr %46, ptr %27, align 8, !dbg !2767, !tbaa !1103
  %47 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 4, !dbg !2768
  store ptr %46, ptr %47, align 8, !dbg !2769, !tbaa !1779
  %48 = getelementptr inbounds %struct._obstack_chunk, ptr %27, i64 0, i32 1, !dbg !2770
  store ptr null, ptr %48, align 8, !dbg !2771, !tbaa !1103
  %49 = load i8, ptr %10, align 8, !dbg !2772
  %50 = and i8 %49, -7, !dbg !2773
  store i8 %50, ptr %10, align 8, !dbg !2773
  ret i32 1, !dbg !2774
}

; Function Attrs: nounwind uwtable
define dso_local void @rpl_obstack_newchunk(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2775 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2779, metadata !DIExpression()), !dbg !2788
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2780, metadata !DIExpression()), !dbg !2788
  %3 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2789
  %4 = load ptr, ptr %3, align 8, !dbg !2789, !tbaa !2689
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2781, metadata !DIExpression()), !dbg !2788
  %5 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 3, !dbg !2790
  %6 = load ptr, ptr %5, align 8, !dbg !2790, !tbaa !1473
  %7 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 2, !dbg !2791
  %8 = load ptr, ptr %7, align 8, !dbg !2791, !tbaa !1476
  %9 = ptrtoint ptr %6 to i64, !dbg !2792
  %10 = ptrtoint ptr %8 to i64, !dbg !2792
  %11 = sub i64 %9, %10, !dbg !2792
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2782, metadata !DIExpression()), !dbg !2788
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2785, metadata !DIExpression()), !dbg !2788
  %12 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %11, i64 %1), !dbg !2793
  %13 = extractvalue { i64, i1 } %12, 1, !dbg !2793
  %14 = extractvalue { i64, i1 } %12, 0, !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2783, metadata !DIExpression()), !dbg !2788
  tail call void @llvm.dbg.value(metadata i1 %13, metadata !2785, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2788
  %15 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 6, !dbg !2794
  %16 = load i64, ptr %15, align 8, !dbg !2794, !tbaa !1482
  call void @llvm.dbg.value(metadata ptr undef, metadata !2670, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i64 %16, metadata !2675, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i64 %14, metadata !2676, metadata !DIExpression()), !dbg !2795
  %17 = sub i64 0, %14, !dbg !2797
  %18 = and i64 %16, %17, !dbg !2797
  %19 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %18, i64 %14), !dbg !2797
  %20 = extractvalue { i64, i1 } %19, 1, !dbg !2797
  %21 = extractvalue { i64, i1 } %19, 0, !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2783, metadata !DIExpression()), !dbg !2788
  %22 = or i1 %13, %20, !dbg !2798
  tail call void @llvm.dbg.value(metadata i1 %22, metadata !2785, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2788
  %23 = add i64 %16, 16, !dbg !2799
  %24 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %21, i64 %23), !dbg !2799
  %25 = extractvalue { i64, i1 } %24, 1, !dbg !2799
  %26 = extractvalue { i64, i1 } %24, 0, !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !2783, metadata !DIExpression()), !dbg !2788
  %27 = or i1 %22, %25, !dbg !2800
  tail call void @llvm.dbg.value(metadata i1 %27, metadata !2785, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2788
  %28 = lshr i64 %11, 3, !dbg !2801
  %29 = add nuw nsw i64 %28, 100, !dbg !2801
  %30 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %26, i64 %29), !dbg !2801
  %31 = extractvalue { i64, i1 } %30, 1, !dbg !2801
  %32 = extractvalue { i64, i1 } %30, 0, !dbg !2801
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2784, metadata !DIExpression()), !dbg !2788
  %33 = select i1 %31, i64 %26, i64 %32, !dbg !2803
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !2784, metadata !DIExpression()), !dbg !2788
  %34 = load i64, ptr %0, align 8, !dbg !2804, !tbaa !2683
  %35 = tail call i64 @llvm.umax.i64(i64 %33, i64 %34), !dbg !2806
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !2784, metadata !DIExpression()), !dbg !2788
  br i1 %27, label %52, label %36, !dbg !2807

36:                                               ; preds = %2
  call void @llvm.dbg.value(metadata ptr %0, metadata !2691, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i64 %35, metadata !2696, metadata !DIExpression()), !dbg !2808
  %37 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 10, !dbg !2810
  %38 = load i8, ptr %37, align 8, !dbg !2810
  %39 = and i8 %38, 1, !dbg !2810
  %40 = icmp eq i8 %39, 0, !dbg !2811
  %41 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 7, !dbg !2812
  %42 = load ptr, ptr %41, align 8, !dbg !2812, !tbaa !1178
  br i1 %40, label %47, label %43, !dbg !2813

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 9, !dbg !2814
  %45 = load ptr, ptr %44, align 8, !dbg !2814, !tbaa !2736
  %46 = tail call ptr %42(ptr noundef %45, i64 noundef %35) #39, !dbg !2815
  br label %49, !dbg !2816

47:                                               ; preds = %36
  %48 = tail call ptr %42(i64 noundef %35) #39, !dbg !2817
  br label %49, !dbg !2818

49:                                               ; preds = %47, %43
  %50 = phi ptr [ %46, %43 ], [ %48, %47 ], !dbg !2807
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !2786, metadata !DIExpression()), !dbg !2788
  %51 = icmp eq ptr %50, null, !dbg !2819
  br i1 %51, label %52, label %54, !dbg !2821

52:                                               ; preds = %2, %49
  %53 = load ptr, ptr @obstack_alloc_failed_handler, align 8, !dbg !2822, !tbaa !1103
  tail call void %53() #41, !dbg !2823
  unreachable, !dbg !2823

54:                                               ; preds = %49
  store ptr %50, ptr %3, align 8, !dbg !2824, !tbaa !2689
  %55 = getelementptr inbounds %struct._obstack_chunk, ptr %50, i64 0, i32 1, !dbg !2825
  store ptr %4, ptr %55, align 8, !dbg !2826, !tbaa !1103
  %56 = getelementptr inbounds i8, ptr %50, i64 %35, !dbg !2827
  %57 = load i64, ptr %15, align 8, !dbg !2827, !tbaa !1482
  %58 = sub i64 0, %57, !dbg !2827
  %59 = getelementptr inbounds i8, ptr %56, i64 %58, !dbg !2827
  %60 = ptrtoint ptr %59 to i64, !dbg !2827
  %61 = sub i64 0, %60, !dbg !2827
  %62 = and i64 %57, %61, !dbg !2827
  %63 = getelementptr inbounds i8, ptr %59, i64 %62, !dbg !2827
  %64 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 4, !dbg !2828
  store ptr %63, ptr %64, align 8, !dbg !2829, !tbaa !1779
  store ptr %63, ptr %50, align 8, !dbg !2830, !tbaa !1103
  %65 = getelementptr inbounds %struct._obstack_chunk, ptr %50, i64 0, i32 2, !dbg !2831
  %66 = ptrtoint ptr %65 to i64, !dbg !2831
  %67 = sub i64 0, %66, !dbg !2831
  %68 = and i64 %57, %67, !dbg !2831
  %69 = getelementptr inbounds i8, ptr %65, i64 %68, !dbg !2831
  tail call void @llvm.dbg.value(metadata ptr %69, metadata !2787, metadata !DIExpression()), !dbg !2788
  %70 = load ptr, ptr %7, align 8, !dbg !2832, !tbaa !1476
  call void @llvm.dbg.value(metadata ptr %69, metadata !2833, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata ptr %70, metadata !2840, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i64 %11, metadata !2841, metadata !DIExpression()), !dbg !2842
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %69, ptr noundef nonnull align 1 %70, i64 noundef %11, i1 noundef false) #39, !dbg !2844
  %71 = load i8, ptr %37, align 8, !dbg !2845
  %72 = and i8 %71, 2, !dbg !2847
  %73 = icmp eq i8 %72, 0, !dbg !2847
  br i1 %73, label %74, label %95, !dbg !2848

74:                                               ; preds = %54
  %75 = load ptr, ptr %7, align 8, !dbg !2849, !tbaa !1476
  %76 = getelementptr inbounds %struct._obstack_chunk, ptr %4, i64 0, i32 2, !dbg !2850
  %77 = ptrtoint ptr %76 to i64, !dbg !2850
  %78 = sub i64 0, %77, !dbg !2850
  %79 = load i64, ptr %15, align 8, !dbg !2850, !tbaa !1482
  %80 = and i64 %79, %78, !dbg !2850
  %81 = getelementptr inbounds i8, ptr %76, i64 %80, !dbg !2850
  %82 = icmp eq ptr %75, %81, !dbg !2851
  br i1 %82, label %83, label %95, !dbg !2852

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct._obstack_chunk, ptr %4, i64 0, i32 1, !dbg !2853
  %85 = load ptr, ptr %84, align 8, !dbg !2853, !tbaa !1103
  store ptr %85, ptr %55, align 8, !dbg !2855, !tbaa !1103
  call void @llvm.dbg.value(metadata ptr %0, metadata !2856, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata ptr %4, metadata !2861, metadata !DIExpression()), !dbg !2862
  %86 = load i8, ptr %37, align 8, !dbg !2864
  %87 = and i8 %86, 1, !dbg !2864
  %88 = icmp eq i8 %87, 0, !dbg !2866
  %89 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 8, !dbg !2867
  %90 = load ptr, ptr %89, align 8, !dbg !2867, !tbaa !1178
  br i1 %88, label %94, label %91, !dbg !2868

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 9, !dbg !2869
  %93 = load ptr, ptr %92, align 8, !dbg !2869, !tbaa !2736
  tail call void %90(ptr noundef %93, ptr noundef nonnull %4) #39, !dbg !2870
  br label %95, !dbg !2870

94:                                               ; preds = %83
  tail call void %90(ptr noundef nonnull %4) #39, !dbg !2871
  br label %95

95:                                               ; preds = %94, %91, %74, %54
  store ptr %69, ptr %7, align 8, !dbg !2872, !tbaa !1476
  %96 = getelementptr inbounds i8, ptr %69, i64 %11, !dbg !2873
  store ptr %96, ptr %5, align 8, !dbg !2874, !tbaa !1473
  %97 = load i8, ptr %37, align 8, !dbg !2875
  %98 = and i8 %97, -3, !dbg !2875
  store i8 %98, ptr %37, align 8, !dbg !2875
  ret void, !dbg !2876
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #22

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @rpl_obstack_allocated_p(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #14 !dbg !2877 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2881, metadata !DIExpression()), !dbg !2886
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2882, metadata !DIExpression()), !dbg !2886
  %3 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2887
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !2883, metadata !DIExpression()), !dbg !2886
  %4 = load ptr, ptr %3, align 8, !dbg !2886, !tbaa !1103
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2883, metadata !DIExpression()), !dbg !2886
  %5 = icmp eq ptr %4, null, !dbg !2888
  br i1 %5, label %16, label %6, !dbg !2889

6:                                                ; preds = %2, %12
  %7 = phi ptr [ %14, %12 ], [ %4, %2 ]
  %8 = icmp ult ptr %7, %1, !dbg !2890
  br i1 %8, label %9, label %12, !dbg !2891

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 8, !dbg !2892, !tbaa !1103
  %11 = icmp ult ptr %10, %1, !dbg !2893
  br i1 %11, label %12, label %16, !dbg !2894

12:                                               ; preds = %6, %9
  %13 = getelementptr inbounds %struct._obstack_chunk, ptr %7, i64 0, i32 1, !dbg !2895
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !2884, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !2883, metadata !DIExpression()), !dbg !2886
  %14 = load ptr, ptr %13, align 8, !dbg !2886, !tbaa !1103
  tail call void @llvm.dbg.value(metadata ptr %14, metadata !2883, metadata !DIExpression()), !dbg !2886
  %15 = icmp eq ptr %14, null, !dbg !2888
  br i1 %15, label %16, label %6, !dbg !2889, !llvm.loop !2897

16:                                               ; preds = %9, %12, %2
  %17 = phi i32 [ 0, %2 ], [ 0, %12 ], [ 1, %9 ], !dbg !2888
  ret i32 %17, !dbg !2899
}

; Function Attrs: nounwind uwtable
define dso_local void @rpl_obstack_free(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2900 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2902, metadata !DIExpression()), !dbg !2907
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2903, metadata !DIExpression()), !dbg !2907
  %3 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2908
  %4 = load ptr, ptr %3, align 8, !dbg !2908, !tbaa !2689
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2904, metadata !DIExpression()), !dbg !2907
  %5 = icmp eq ptr %4, null, !dbg !2909
  br i1 %5, label %35, label %6, !dbg !2910

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 10
  %8 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 8
  %9 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 9
  br label %10, !dbg !2910

10:                                               ; preds = %6, %26
  %11 = phi ptr [ %4, %6 ], [ %18, %26 ]
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !2904, metadata !DIExpression()), !dbg !2907
  %12 = icmp ult ptr %11, %1, !dbg !2911
  br i1 %12, label %13, label %16, !dbg !2912

13:                                               ; preds = %10
  %14 = load ptr, ptr %11, align 8, !dbg !2913, !tbaa !1103
  %15 = icmp ult ptr %14, %1, !dbg !2914
  br i1 %15, label %16, label %30, !dbg !2915

16:                                               ; preds = %10, %13
  %17 = getelementptr inbounds %struct._obstack_chunk, ptr %11, i64 0, i32 1, !dbg !2916
  %18 = load ptr, ptr %17, align 8, !dbg !2916, !tbaa !1103
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !2905, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata ptr %0, metadata !2856, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata ptr %11, metadata !2861, metadata !DIExpression()), !dbg !2918
  %19 = load i8, ptr %7, align 8, !dbg !2920
  %20 = and i8 %19, 1, !dbg !2920
  %21 = icmp eq i8 %20, 0, !dbg !2921
  %22 = load ptr, ptr %8, align 8, !dbg !2922, !tbaa !1178
  br i1 %21, label %25, label %23, !dbg !2923

23:                                               ; preds = %16
  %24 = load ptr, ptr %9, align 8, !dbg !2924, !tbaa !2736
  tail call void %22(ptr noundef %24, ptr noundef nonnull %11) #39, !dbg !2925
  br label %26, !dbg !2925

25:                                               ; preds = %16
  tail call void %22(ptr noundef nonnull %11) #39, !dbg !2926
  br label %26

26:                                               ; preds = %23, %25
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !2904, metadata !DIExpression()), !dbg !2907
  %27 = load i8, ptr %7, align 8, !dbg !2927
  %28 = or i8 %27, 2, !dbg !2927
  store i8 %28, ptr %7, align 8, !dbg !2927
  %29 = icmp eq ptr %18, null, !dbg !2909
  br i1 %29, label %35, label %10, !dbg !2910, !llvm.loop !2928

30:                                               ; preds = %13
  %31 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 3, !dbg !2930
  store ptr %1, ptr %31, align 8, !dbg !2933, !tbaa !1473
  %32 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 2, !dbg !2934
  store ptr %1, ptr %32, align 8, !dbg !2935, !tbaa !1476
  %33 = load ptr, ptr %11, align 8, !dbg !2936, !tbaa !1103
  %34 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 4, !dbg !2937
  store ptr %33, ptr %34, align 8, !dbg !2938, !tbaa !1779
  store ptr %11, ptr %3, align 8, !dbg !2939, !tbaa !2689
  br label %38, !dbg !2940

35:                                               ; preds = %26, %2
  %36 = icmp eq ptr %1, null, !dbg !2941
  br i1 %36, label %38, label %37, !dbg !2943

37:                                               ; preds = %35
  tail call void @abort() #41, !dbg !2944
  unreachable, !dbg !2944

38:                                               ; preds = %35, %30
  ret void, !dbg !2945
}

; Function Attrs: noreturn nounwind
declare !dbg !2946 void @abort() local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @rpl_obstack_memory_used(ptr nocapture noundef readonly %0) local_unnamed_addr #14 !dbg !2947 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2951, metadata !DIExpression()), !dbg !2955
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2952, metadata !DIExpression()), !dbg !2955
  %2 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2956
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !2953, metadata !DIExpression()), !dbg !2957
  %3 = load ptr, ptr %2, align 8, !dbg !2958, !tbaa !1103
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2953, metadata !DIExpression()), !dbg !2957
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2952, metadata !DIExpression()), !dbg !2955
  %4 = icmp eq ptr %3, null, !dbg !2959
  br i1 %4, label %5, label %7, !dbg !2961

5:                                                ; preds = %7, %1
  %6 = phi i64 [ 0, %1 ], [ %14, %7 ], !dbg !2955
  ret i64 %6, !dbg !2962

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %16, %7 ], [ %3, %1 ]
  %9 = phi i64 [ %14, %7 ], [ 0, %1 ]
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !2952, metadata !DIExpression()), !dbg !2955
  %10 = load ptr, ptr %8, align 8, !dbg !2963, !tbaa !1103
  %11 = ptrtoint ptr %10 to i64, !dbg !2965
  %12 = ptrtoint ptr %8 to i64, !dbg !2965
  %13 = sub i64 %9, %12, !dbg !2965
  %14 = add i64 %13, %11, !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2952, metadata !DIExpression()), !dbg !2955
  %15 = getelementptr inbounds %struct._obstack_chunk, ptr %8, i64 0, i32 1, !dbg !2967
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !2953, metadata !DIExpression()), !dbg !2957
  %16 = load ptr, ptr %15, align 8, !dbg !2958, !tbaa !1103
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !2953, metadata !DIExpression()), !dbg !2957
  %17 = icmp eq ptr %16, null, !dbg !2959
  br i1 %17, label %5, label %7, !dbg !2961, !llvm.loop !2968
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #23 !dbg !2970 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2972, metadata !DIExpression()), !dbg !2975
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !2976
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2973, metadata !DIExpression()), !dbg !2975
  %3 = icmp eq ptr %2, null, !dbg !2977
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2977
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2977
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2974, metadata !DIExpression()), !dbg !2975
  %6 = ptrtoint ptr %5 to i64, !dbg !2978
  %7 = ptrtoint ptr %0 to i64, !dbg !2978
  %8 = sub i64 %6, %7, !dbg !2978
  %9 = icmp sgt i64 %8, 6, !dbg !2980
  br i1 %9, label %10, label %19, !dbg !2981

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2982
  call void @llvm.dbg.value(metadata ptr %11, metadata !2983, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata ptr @.str.162, metadata !2988, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i64 7, metadata !2989, metadata !DIExpression()), !dbg !2990
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.162, i64 7), !dbg !2992
  %13 = icmp eq i32 %12, 0, !dbg !2993
  br i1 %13, label %14, label %19, !dbg !2994

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2972, metadata !DIExpression()), !dbg !2975
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.163, i64 noundef 3) #40, !dbg !2995
  %16 = icmp eq i32 %15, 0, !dbg !2998
  %17 = select i1 %16, i64 3, i64 0, !dbg !2999
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2999
  br label %19, !dbg !2999

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2975
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2974, metadata !DIExpression()), !dbg !2975
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2972, metadata !DIExpression()), !dbg !2975
  store ptr %20, ptr @program_name, align 8, !dbg !3000, !tbaa !1103
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !3001, !tbaa !1103
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !3002, !tbaa !1103
  ret void, !dbg !3003
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3004 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !770 {
  %3 = alloca i32, align 4, !DIAssignID !3005
  call void @llvm.dbg.assign(metadata i1 undef, metadata !780, metadata !DIExpression(), metadata !3005, metadata ptr %3, metadata !DIExpression()), !dbg !3006
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3007
  call void @llvm.dbg.assign(metadata i1 undef, metadata !785, metadata !DIExpression(), metadata !3007, metadata ptr %4, metadata !DIExpression()), !dbg !3006
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !777, metadata !DIExpression()), !dbg !3006
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !778, metadata !DIExpression()), !dbg !3006
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !3008
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !779, metadata !DIExpression()), !dbg !3006
  %6 = icmp eq ptr %5, %0, !dbg !3009
  br i1 %6, label %7, label %14, !dbg !3011

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !3012
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !3013
  call void @llvm.dbg.value(metadata ptr %4, metadata !3014, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata ptr %4, metadata !3023, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i32 0, metadata !3028, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 8, metadata !3029, metadata !DIExpression()), !dbg !3030
  store i64 0, ptr %4, align 8, !dbg !3032
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !3033
  %9 = icmp eq i64 %8, 2, !dbg !3035
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !3036
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !3006
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !3037
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !3037
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !3006
  ret ptr %15, !dbg !3037
}

; Function Attrs: nounwind
declare !dbg !3038 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !3044 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3049, metadata !DIExpression()), !dbg !3052
  %2 = tail call ptr @__errno_location() #42, !dbg !3053
  %3 = load i32, ptr %2, align 4, !dbg !3053, !tbaa !1169
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !3050, metadata !DIExpression()), !dbg !3052
  %4 = icmp eq ptr %0, null, !dbg !3054
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3054
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #45, !dbg !3055
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3051, metadata !DIExpression()), !dbg !3052
  store i32 %3, ptr %2, align 4, !dbg !3056, !tbaa !1169
  ret ptr %6, !dbg !3057
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #14 !dbg !3058 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3064, metadata !DIExpression()), !dbg !3065
  %2 = icmp eq ptr %0, null, !dbg !3066
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !3066
  %4 = load i32, ptr %3, align 8, !dbg !3067, !tbaa !3068
  ret i32 %4, !dbg !3070
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #25 !dbg !3071 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3075, metadata !DIExpression()), !dbg !3077
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3076, metadata !DIExpression()), !dbg !3077
  %3 = icmp eq ptr %0, null, !dbg !3078
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3078
  store i32 %1, ptr %4, align 8, !dbg !3079, !tbaa !3068
  ret void, !dbg !3080
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #26 !dbg !3081 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3085, metadata !DIExpression()), !dbg !3093
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3086, metadata !DIExpression()), !dbg !3093
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3087, metadata !DIExpression()), !dbg !3093
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3088, metadata !DIExpression()), !dbg !3093
  %4 = icmp eq ptr %0, null, !dbg !3094
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3094
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3095
  %7 = lshr i8 %1, 5, !dbg !3096
  %8 = zext nneg i8 %7 to i64, !dbg !3096
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !3097
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !3089, metadata !DIExpression()), !dbg !3093
  %10 = and i8 %1, 31, !dbg !3098
  %11 = zext nneg i8 %10 to i32, !dbg !3098
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !3091, metadata !DIExpression()), !dbg !3093
  %12 = load i32, ptr %9, align 4, !dbg !3099, !tbaa !1169
  %13 = lshr i32 %12, %11, !dbg !3100
  %14 = and i32 %13, 1, !dbg !3101
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !3092, metadata !DIExpression()), !dbg !3093
  %15 = xor i32 %13, %2, !dbg !3102
  %16 = and i32 %15, 1, !dbg !3102
  %17 = shl nuw i32 %16, %11, !dbg !3103
  %18 = xor i32 %17, %12, !dbg !3104
  store i32 %18, ptr %9, align 4, !dbg !3104, !tbaa !1169
  ret i32 %14, !dbg !3105
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #26 !dbg !3106 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3110, metadata !DIExpression()), !dbg !3113
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3111, metadata !DIExpression()), !dbg !3113
  %3 = icmp eq ptr %0, null, !dbg !3114
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3116
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3110, metadata !DIExpression()), !dbg !3113
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !3117
  %6 = load i32, ptr %5, align 4, !dbg !3117, !tbaa !3118
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !3112, metadata !DIExpression()), !dbg !3113
  store i32 %1, ptr %5, align 4, !dbg !3119, !tbaa !3118
  ret i32 %6, !dbg !3120
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3121 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3125, metadata !DIExpression()), !dbg !3128
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3126, metadata !DIExpression()), !dbg !3128
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3127, metadata !DIExpression()), !dbg !3128
  %4 = icmp eq ptr %0, null, !dbg !3129
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3131
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3125, metadata !DIExpression()), !dbg !3128
  store i32 10, ptr %5, align 8, !dbg !3132, !tbaa !3068
  %6 = icmp ne ptr %1, null, !dbg !3133
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3135
  br i1 %8, label %10, label %9, !dbg !3135

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3136
  unreachable, !dbg !3136

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3137
  store ptr %1, ptr %11, align 8, !dbg !3138, !tbaa !3139
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3140
  store ptr %2, ptr %12, align 8, !dbg !3141, !tbaa !3142
  ret void, !dbg !3143
}

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !3144 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3148, metadata !DIExpression()), !dbg !3156
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3149, metadata !DIExpression()), !dbg !3156
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3150, metadata !DIExpression()), !dbg !3156
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3151, metadata !DIExpression()), !dbg !3156
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3152, metadata !DIExpression()), !dbg !3156
  %6 = icmp eq ptr %4, null, !dbg !3157
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !3157
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3153, metadata !DIExpression()), !dbg !3156
  %8 = tail call ptr @__errno_location() #42, !dbg !3158
  %9 = load i32, ptr %8, align 4, !dbg !3158, !tbaa !1169
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !3154, metadata !DIExpression()), !dbg !3156
  %10 = load i32, ptr %7, align 8, !dbg !3159, !tbaa !3068
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !3160
  %12 = load i32, ptr %11, align 4, !dbg !3160, !tbaa !3118
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !3161
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !3162
  %15 = load ptr, ptr %14, align 8, !dbg !3162, !tbaa !3139
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !3163
  %17 = load ptr, ptr %16, align 8, !dbg !3163, !tbaa !3142
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !3164
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !3155, metadata !DIExpression()), !dbg !3156
  store i32 %9, ptr %8, align 4, !dbg !3165, !tbaa !1169
  ret i64 %18, !dbg !3166
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !3167 {
  %10 = alloca i32, align 4, !DIAssignID !3235
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3236
  %12 = alloca i32, align 4, !DIAssignID !3237
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3238
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3239
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3213, metadata !DIExpression(), metadata !3239, metadata ptr %14, metadata !DIExpression()), !dbg !3240
  %15 = alloca i32, align 4, !DIAssignID !3241
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3216, metadata !DIExpression(), metadata !3241, metadata ptr %15, metadata !DIExpression()), !dbg !3242
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3173, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3174, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3175, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3176, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !3177, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !3178, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3179, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3180, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3181, metadata !DIExpression()), !dbg !3243
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !3244
  %17 = icmp eq i64 %16, 1, !dbg !3245
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !3182, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3183, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3184, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata ptr null, metadata !3185, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3186, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3187, metadata !DIExpression()), !dbg !3243
  %18 = trunc i32 %5 to i8, !dbg !3246
  %19 = lshr i8 %18, 1, !dbg !3246
  %20 = and i8 %19, 1, !dbg !3246
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !3188, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3189, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3190, metadata !DIExpression()), !dbg !3243
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !3247

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !3248
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !3249
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !3250
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !3251
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !3243
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !3252
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !3253
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !3174, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !3190, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !3189, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !3188, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !3187, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !3186, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !3185, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !3184, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3183, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !3176, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !3181, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !3180, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !3177, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.label(metadata !3191), !dbg !3254
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3192, metadata !DIExpression()), !dbg !3243
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
  ], !dbg !3255

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3188, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i32 5, metadata !3177, metadata !DIExpression()), !dbg !3243
  br label %114, !dbg !3256

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !3188, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i32 5, metadata !3177, metadata !DIExpression()), !dbg !3243
  %43 = and i8 %37, 1, !dbg !3257
  %44 = icmp eq i8 %43, 0, !dbg !3257
  br i1 %44, label %45, label %114, !dbg !3256

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !3259
  br i1 %46, label %114, label %47, !dbg !3262

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !3259, !tbaa !1178
  br label %114, !dbg !3259

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !871, metadata !DIExpression(), metadata !3237, metadata ptr %12, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.assign(metadata i1 undef, metadata !872, metadata !DIExpression(), metadata !3238, metadata ptr %13, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata ptr @.str.11.176, metadata !868, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i32 %29, metadata !869, metadata !DIExpression()), !dbg !3263
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.177, ptr noundef nonnull @.str.11.176, i32 noundef 5) #39, !dbg !3267
  call void @llvm.dbg.value(metadata ptr %49, metadata !870, metadata !DIExpression()), !dbg !3263
  %50 = icmp eq ptr %49, @.str.11.176, !dbg !3268
  br i1 %50, label %51, label %60, !dbg !3270

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !3271
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !3272
  call void @llvm.dbg.value(metadata ptr %13, metadata !3273, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata ptr %13, metadata !3281, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i32 0, metadata !3284, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 8, metadata !3285, metadata !DIExpression()), !dbg !3286
  store i64 0, ptr %13, align 8, !dbg !3288
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !3289
  %53 = icmp eq i64 %52, 3, !dbg !3291
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !3292
  %57 = icmp eq i32 %29, 9, !dbg !3292
  %58 = select i1 %57, ptr @.str.10.178, ptr @.str.12.179, !dbg !3292
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !3292
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !3293
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !3293
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !3263
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3180, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.assign(metadata i1 undef, metadata !871, metadata !DIExpression(), metadata !3235, metadata ptr %10, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.assign(metadata i1 undef, metadata !872, metadata !DIExpression(), metadata !3236, metadata ptr %11, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata ptr @.str.12.179, metadata !868, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i32 %29, metadata !869, metadata !DIExpression()), !dbg !3294
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.177, ptr noundef nonnull @.str.12.179, i32 noundef 5) #39, !dbg !3296
  call void @llvm.dbg.value(metadata ptr %62, metadata !870, metadata !DIExpression()), !dbg !3294
  %63 = icmp eq ptr %62, @.str.12.179, !dbg !3297
  br i1 %63, label %64, label %73, !dbg !3298

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !3299
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !3300
  call void @llvm.dbg.value(metadata ptr %11, metadata !3273, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata ptr %11, metadata !3281, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i32 0, metadata !3284, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i64 8, metadata !3285, metadata !DIExpression()), !dbg !3303
  store i64 0, ptr %11, align 8, !dbg !3305
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !3306
  %66 = icmp eq i64 %65, 3, !dbg !3307
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !3308
  %70 = icmp eq i32 %29, 9, !dbg !3308
  %71 = select i1 %70, ptr @.str.10.178, ptr @.str.12.179, !dbg !3308
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !3308
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !3309
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !3309
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !3181, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !3180, metadata !DIExpression()), !dbg !3243
  %76 = and i8 %37, 1, !dbg !3310
  %77 = icmp eq i8 %76, 0, !dbg !3310
  br i1 %77, label %78, label %93, !dbg !3311

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !3193, metadata !DIExpression()), !dbg !3312
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3183, metadata !DIExpression()), !dbg !3243
  %79 = load i8, ptr %74, align 1, !dbg !3313, !tbaa !1178
  %80 = icmp eq i8 %79, 0, !dbg !3315
  br i1 %80, label %93, label %81, !dbg !3315

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !3193, metadata !DIExpression()), !dbg !3312
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !3183, metadata !DIExpression()), !dbg !3243
  %85 = icmp ult i64 %84, %40, !dbg !3316
  br i1 %85, label %86, label %88, !dbg !3319

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !3316
  store i8 %82, ptr %87, align 1, !dbg !3316, !tbaa !1178
  br label %88, !dbg !3316

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !3319
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !3183, metadata !DIExpression()), !dbg !3243
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !3320
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !3193, metadata !DIExpression()), !dbg !3312
  %91 = load i8, ptr %90, align 1, !dbg !3313, !tbaa !1178
  %92 = icmp eq i8 %91, 0, !dbg !3315
  br i1 %92, label %93, label %81, !dbg !3315, !llvm.loop !3321

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !3323
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !3183, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3187, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !3185, metadata !DIExpression()), !dbg !3243
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #40, !dbg !3324
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !3186, metadata !DIExpression()), !dbg !3243
  br label %114, !dbg !3325

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3187, metadata !DIExpression()), !dbg !3243
  br label %98, !dbg !3326

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !3187, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3188, metadata !DIExpression()), !dbg !3243
  br label %98, !dbg !3327

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !3251
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !3188, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !3187, metadata !DIExpression()), !dbg !3243
  %101 = and i8 %100, 1, !dbg !3328
  %102 = icmp eq i8 %101, 0, !dbg !3328
  %103 = select i1 %102, i8 1, i8 %99, !dbg !3330
  br label %104, !dbg !3330

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !3243
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !3246
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !3188, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !3187, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i32 2, metadata !3177, metadata !DIExpression()), !dbg !3243
  %107 = and i8 %106, 1, !dbg !3331
  %108 = icmp eq i8 %107, 0, !dbg !3331
  br i1 %108, label %109, label %114, !dbg !3333

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !3334
  br i1 %110, label %114, label %111, !dbg !3337

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !3334, !tbaa !1178
  br label %114, !dbg !3334

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3188, metadata !DIExpression()), !dbg !3243
  br label %114, !dbg !3338

113:                                              ; preds = %28
  call void @abort() #41, !dbg !3339
  unreachable, !dbg !3339

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !3323
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.178, %45 ], [ @.str.10.178, %47 ], [ @.str.10.178, %42 ], [ %34, %28 ], [ @.str.12.179, %109 ], [ @.str.12.179, %111 ], [ @.str.12.179, %104 ], [ @.str.10.178, %41 ], !dbg !3243
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !3243
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !3243
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !3188, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !3187, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !3186, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !3185, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !3183, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !3181, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !3180, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !3177, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3198, metadata !DIExpression()), !dbg !3340
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
  br label %138, !dbg !3341

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !3323
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !3248
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !3252
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !3253
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !3342
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !3343
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !3174, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !3198, metadata !DIExpression()), !dbg !3340
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !3192, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !3190, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !3189, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !3184, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !3183, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !3176, metadata !DIExpression()), !dbg !3243
  %147 = icmp eq i64 %139, -1, !dbg !3344
  br i1 %147, label %148, label %152, !dbg !3345

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3346
  %150 = load i8, ptr %149, align 1, !dbg !3346, !tbaa !1178
  %151 = icmp eq i8 %150, 0, !dbg !3347
  br i1 %151, label %612, label %154, !dbg !3348

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !3349
  br i1 %153, label %612, label %154, !dbg !3348

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3200, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3203, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3204, metadata !DIExpression()), !dbg !3350
  br i1 %128, label %155, label %170, !dbg !3351

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !3353
  %157 = select i1 %147, i1 %129, i1 false, !dbg !3354
  br i1 %157, label %158, label %160, !dbg !3354

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !3355
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !3176, metadata !DIExpression()), !dbg !3243
  br label %160, !dbg !3356

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !3356
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !3176, metadata !DIExpression()), !dbg !3243
  %162 = icmp ugt i64 %156, %161, !dbg !3357
  br i1 %162, label %170, label %163, !dbg !3358

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3359
  call void @llvm.dbg.value(metadata ptr %164, metadata !3360, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata ptr %119, metadata !3363, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i64 %120, metadata !3364, metadata !DIExpression()), !dbg !3365
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !3367
  %166 = icmp ne i32 %165, 0, !dbg !3368
  %167 = select i1 %166, i1 true, i1 %131, !dbg !3369
  %168 = xor i1 %166, true, !dbg !3369
  %169 = zext i1 %168 to i8, !dbg !3369
  br i1 %167, label %170, label %666, !dbg !3369

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !3350
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !3200, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !3176, metadata !DIExpression()), !dbg !3243
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3370
  %175 = load i8, ptr %174, align 1, !dbg !3370, !tbaa !1178
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !3205, metadata !DIExpression()), !dbg !3350
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
  ], !dbg !3371

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !3372

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !3373

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3203, metadata !DIExpression()), !dbg !3350
  %179 = and i8 %144, 1, !dbg !3377
  %180 = icmp eq i8 %179, 0, !dbg !3377
  %181 = select i1 %132, i1 %180, i1 false, !dbg !3377
  br i1 %181, label %182, label %198, !dbg !3377

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !3379
  br i1 %183, label %184, label %186, !dbg !3383

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3379
  store i8 39, ptr %185, align 1, !dbg !3379, !tbaa !1178
  br label %186, !dbg !3379

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !3383
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !3183, metadata !DIExpression()), !dbg !3243
  %188 = icmp ult i64 %187, %146, !dbg !3384
  br i1 %188, label %189, label %191, !dbg !3387

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !3384
  store i8 36, ptr %190, align 1, !dbg !3384, !tbaa !1178
  br label %191, !dbg !3384

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !3387
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !3183, metadata !DIExpression()), !dbg !3243
  %193 = icmp ult i64 %192, %146, !dbg !3388
  br i1 %193, label %194, label %196, !dbg !3391

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !3388
  store i8 39, ptr %195, align 1, !dbg !3388, !tbaa !1178
  br label %196, !dbg !3388

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !3391
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !3183, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3192, metadata !DIExpression()), !dbg !3243
  br label %198, !dbg !3392

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !3243
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !3192, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !3183, metadata !DIExpression()), !dbg !3243
  %201 = icmp ult i64 %199, %146, !dbg !3393
  br i1 %201, label %202, label %204, !dbg !3396

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !3393
  store i8 92, ptr %203, align 1, !dbg !3393, !tbaa !1178
  br label %204, !dbg !3393

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !3396
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !3183, metadata !DIExpression()), !dbg !3243
  br i1 %125, label %206, label %476, !dbg !3397

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !3399
  %208 = icmp ult i64 %207, %171, !dbg !3400
  br i1 %208, label %209, label %465, !dbg !3401

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !3402
  %211 = load i8, ptr %210, align 1, !dbg !3402, !tbaa !1178
  %212 = add i8 %211, -48, !dbg !3403
  %213 = icmp ult i8 %212, 10, !dbg !3403
  br i1 %213, label %214, label %465, !dbg !3403

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !3404
  br i1 %215, label %216, label %218, !dbg !3408

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !3404
  store i8 48, ptr %217, align 1, !dbg !3404, !tbaa !1178
  br label %218, !dbg !3404

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !3408
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !3183, metadata !DIExpression()), !dbg !3243
  %220 = icmp ult i64 %219, %146, !dbg !3409
  br i1 %220, label %221, label %223, !dbg !3412

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !3409
  store i8 48, ptr %222, align 1, !dbg !3409, !tbaa !1178
  br label %223, !dbg !3409

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !3183, metadata !DIExpression()), !dbg !3243
  br label %465, !dbg !3413

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !3414

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !3415

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !3416

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !3418

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !3420
  %231 = icmp ult i64 %230, %171, !dbg !3421
  br i1 %231, label %232, label %465, !dbg !3422

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !3423
  %234 = load i8, ptr %233, align 1, !dbg !3423, !tbaa !1178
  %235 = icmp eq i8 %234, 63, !dbg !3424
  br i1 %235, label %236, label %465, !dbg !3425

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !3426
  %238 = load i8, ptr %237, align 1, !dbg !3426, !tbaa !1178
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
  ], !dbg !3427

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !3428

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !3205, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !3198, metadata !DIExpression()), !dbg !3340
  %241 = icmp ult i64 %140, %146, !dbg !3430
  br i1 %241, label %242, label %244, !dbg !3433

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3430
  store i8 63, ptr %243, align 1, !dbg !3430, !tbaa !1178
  br label %244, !dbg !3430

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !3433
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !3183, metadata !DIExpression()), !dbg !3243
  %246 = icmp ult i64 %245, %146, !dbg !3434
  br i1 %246, label %247, label %249, !dbg !3437

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !3434
  store i8 34, ptr %248, align 1, !dbg !3434, !tbaa !1178
  br label %249, !dbg !3434

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !3437
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !3183, metadata !DIExpression()), !dbg !3243
  %251 = icmp ult i64 %250, %146, !dbg !3438
  br i1 %251, label %252, label %254, !dbg !3441

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !3438
  store i8 34, ptr %253, align 1, !dbg !3438, !tbaa !1178
  br label %254, !dbg !3438

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !3441
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !3183, metadata !DIExpression()), !dbg !3243
  %256 = icmp ult i64 %255, %146, !dbg !3442
  br i1 %256, label %257, label %259, !dbg !3445

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !3442
  store i8 63, ptr %258, align 1, !dbg !3442, !tbaa !1178
  br label %259, !dbg !3442

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !3445
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !3183, metadata !DIExpression()), !dbg !3243
  br label %465, !dbg !3446

261:                                              ; preds = %170
  br label %272, !dbg !3447

262:                                              ; preds = %170
  br label %272, !dbg !3448

263:                                              ; preds = %170
  br label %270, !dbg !3449

264:                                              ; preds = %170
  br label %270, !dbg !3450

265:                                              ; preds = %170
  br label %272, !dbg !3451

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !3452

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !3453

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !3456

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !3458

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !3459
  call void @llvm.dbg.label(metadata !3206), !dbg !3460
  br i1 %133, label %272, label %655, !dbg !3461

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !3459
  call void @llvm.dbg.label(metadata !3209), !dbg !3463
  br i1 %124, label %520, label %476, !dbg !3464

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !3465

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !3466, !tbaa !1178
  %277 = icmp eq i8 %276, 0, !dbg !3468
  br i1 %277, label %278, label %465, !dbg !3469

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !3470
  br i1 %279, label %280, label %465, !dbg !3472

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3204, metadata !DIExpression()), !dbg !3350
  br label %281, !dbg !3473

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !3204, metadata !DIExpression()), !dbg !3350
  br i1 %133, label %465, label %655, !dbg !3474

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3189, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3204, metadata !DIExpression()), !dbg !3350
  br i1 %132, label %284, label %465, !dbg !3476

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !3477

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !3480
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !3482
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !3482
  %290 = select i1 %288, i64 %146, i64 0, !dbg !3482
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !3174, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !3184, metadata !DIExpression()), !dbg !3243
  %291 = icmp ult i64 %140, %290, !dbg !3483
  br i1 %291, label %292, label %294, !dbg !3486

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3483
  store i8 39, ptr %293, align 1, !dbg !3483, !tbaa !1178
  br label %294, !dbg !3483

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !3486
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !3183, metadata !DIExpression()), !dbg !3243
  %296 = icmp ult i64 %295, %290, !dbg !3487
  br i1 %296, label %297, label %299, !dbg !3490

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !3487
  store i8 92, ptr %298, align 1, !dbg !3487, !tbaa !1178
  br label %299, !dbg !3487

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !3490
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !3183, metadata !DIExpression()), !dbg !3243
  %301 = icmp ult i64 %300, %290, !dbg !3491
  br i1 %301, label %302, label %304, !dbg !3494

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !3491
  store i8 39, ptr %303, align 1, !dbg !3491, !tbaa !1178
  br label %304, !dbg !3491

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !3494
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !3183, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3192, metadata !DIExpression()), !dbg !3243
  br label %465, !dbg !3495

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !3496

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3210, metadata !DIExpression()), !dbg !3497
  %308 = tail call ptr @__ctype_b_loc() #42, !dbg !3498
  %309 = load ptr, ptr %308, align 8, !dbg !3498, !tbaa !1103
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !3498
  %312 = load i16, ptr %311, align 2, !dbg !3498, !tbaa !1210
  %313 = and i16 %312, 16384, !dbg !3500
  %314 = icmp ne i16 %313, 0, !dbg !3500
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !3212, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3497
  br label %355, !dbg !3501

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !3502
  call void @llvm.dbg.value(metadata ptr %14, metadata !3273, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata ptr %14, metadata !3281, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i32 0, metadata !3284, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i64 8, metadata !3285, metadata !DIExpression()), !dbg !3505
  store i64 0, ptr %14, align 8, !dbg !3507
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3210, metadata !DIExpression()), !dbg !3497
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3212, metadata !DIExpression()), !dbg !3497
  %316 = icmp eq i64 %171, -1, !dbg !3508
  br i1 %316, label %317, label %319, !dbg !3510

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !3511
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !3176, metadata !DIExpression()), !dbg !3243
  br label %319, !dbg !3512

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !3350
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !3176, metadata !DIExpression()), !dbg !3243
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !3513
  %321 = sub i64 %320, %145, !dbg !3514
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #39, !dbg !3515
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !3220, metadata !DIExpression()), !dbg !3242
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !3516

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3210, metadata !DIExpression()), !dbg !3497
  %324 = icmp ult i64 %145, %320, !dbg !3517
  br i1 %324, label %326, label %351, !dbg !3519

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3212, metadata !DIExpression()), !dbg !3497
  br label %351, !dbg !3520

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !3210, metadata !DIExpression()), !dbg !3497
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !3522
  %330 = load i8, ptr %329, align 1, !dbg !3522, !tbaa !1178
  %331 = icmp eq i8 %330, 0, !dbg !3519
  br i1 %331, label %351, label %332, !dbg !3523

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !3524
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !3210, metadata !DIExpression()), !dbg !3497
  %334 = add i64 %333, %145, !dbg !3525
  %335 = icmp eq i64 %333, %321, !dbg !3517
  br i1 %335, label %351, label %326, !dbg !3519, !llvm.loop !3526

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3221, metadata !DIExpression()), !dbg !3527
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !3528
  %339 = and i1 %338, %132, !dbg !3528
  br i1 %339, label %340, label %347, !dbg !3528

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !3221, metadata !DIExpression()), !dbg !3527
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !3529
  %343 = load i8, ptr %342, align 1, !dbg !3529, !tbaa !1178
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !3531

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !3532
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !3221, metadata !DIExpression()), !dbg !3527
  %346 = icmp eq i64 %345, %322, !dbg !3533
  br i1 %346, label %347, label %340, !dbg !3534, !llvm.loop !3535

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !3537, !tbaa !1169
  call void @llvm.dbg.value(metadata i32 %348, metadata !3539, metadata !DIExpression()), !dbg !3547
  %349 = call i32 @iswprint(i32 noundef %348) #39, !dbg !3549
  %350 = icmp ne i32 %349, 0, !dbg !3550
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3212, metadata !DIExpression()), !dbg !3497
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !3210, metadata !DIExpression()), !dbg !3497
  br label %351, !dbg !3551

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3212, metadata !DIExpression()), !dbg !3497
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !3210, metadata !DIExpression()), !dbg !3497
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !3552
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !3553
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3212, metadata !DIExpression()), !dbg !3497
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3210, metadata !DIExpression()), !dbg !3497
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !3552
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !3553
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !3350
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !3554
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !3554
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3212, metadata !DIExpression()), !dbg !3497
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !3210, metadata !DIExpression()), !dbg !3497
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !3176, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !3204, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3350
  %359 = icmp ult i64 %357, 2, !dbg !3555
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !3556
  br i1 %361, label %461, label %362, !dbg !3556

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !3557
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !3229, metadata !DIExpression()), !dbg !3558
  br label %364, !dbg !3559

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !3243
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !3342
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !3340
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !3350
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !3560
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !3205, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !3203, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !3200, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !3198, metadata !DIExpression()), !dbg !3340
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !3192, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !3183, metadata !DIExpression()), !dbg !3243
  br i1 %360, label %417, label %371, !dbg !3561

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !3566

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3203, metadata !DIExpression()), !dbg !3350
  %373 = and i8 %366, 1, !dbg !3569
  %374 = icmp eq i8 %373, 0, !dbg !3569
  %375 = select i1 %132, i1 %374, i1 false, !dbg !3569
  br i1 %375, label %376, label %392, !dbg !3569

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !3571
  br i1 %377, label %378, label %380, !dbg !3575

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3571
  store i8 39, ptr %379, align 1, !dbg !3571, !tbaa !1178
  br label %380, !dbg !3571

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !3575
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !3183, metadata !DIExpression()), !dbg !3243
  %382 = icmp ult i64 %381, %146, !dbg !3576
  br i1 %382, label %383, label %385, !dbg !3579

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !3576
  store i8 36, ptr %384, align 1, !dbg !3576, !tbaa !1178
  br label %385, !dbg !3576

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !3579
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !3183, metadata !DIExpression()), !dbg !3243
  %387 = icmp ult i64 %386, %146, !dbg !3580
  br i1 %387, label %388, label %390, !dbg !3583

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3580
  store i8 39, ptr %389, align 1, !dbg !3580, !tbaa !1178
  br label %390, !dbg !3580

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !3583
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !3183, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3192, metadata !DIExpression()), !dbg !3243
  br label %392, !dbg !3584

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !3243
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !3192, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !3183, metadata !DIExpression()), !dbg !3243
  %395 = icmp ult i64 %393, %146, !dbg !3585
  br i1 %395, label %396, label %398, !dbg !3588

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !3585
  store i8 92, ptr %397, align 1, !dbg !3585, !tbaa !1178
  br label %398, !dbg !3585

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !3588
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !3183, metadata !DIExpression()), !dbg !3243
  %400 = icmp ult i64 %399, %146, !dbg !3589
  br i1 %400, label %401, label %405, !dbg !3592

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !3589
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !3589
  store i8 %403, ptr %404, align 1, !dbg !3589, !tbaa !1178
  br label %405, !dbg !3589

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !3592
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !3183, metadata !DIExpression()), !dbg !3243
  %407 = icmp ult i64 %406, %146, !dbg !3593
  br i1 %407, label %408, label %413, !dbg !3596

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !3593
  %411 = or disjoint i8 %410, 48, !dbg !3593
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !3593
  store i8 %411, ptr %412, align 1, !dbg !3593, !tbaa !1178
  br label %413, !dbg !3593

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !3596
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !3183, metadata !DIExpression()), !dbg !3243
  %415 = and i8 %370, 7, !dbg !3597
  %416 = or disjoint i8 %415, 48, !dbg !3598
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !3205, metadata !DIExpression()), !dbg !3350
  br label %426, !dbg !3599

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !3600
  %419 = icmp eq i8 %418, 0, !dbg !3600
  br i1 %419, label %426, label %420, !dbg !3602

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !3603
  br i1 %421, label %422, label %424, !dbg !3607

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3603
  store i8 92, ptr %423, align 1, !dbg !3603, !tbaa !1178
  br label %424, !dbg !3603

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !3607
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !3183, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3200, metadata !DIExpression()), !dbg !3350
  br label %426, !dbg !3608

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !3243
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !3342
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !3350
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !3350
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !3205, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !3203, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !3200, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !3192, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !3183, metadata !DIExpression()), !dbg !3243
  %432 = add i64 %367, 1, !dbg !3609
  %433 = icmp ugt i64 %363, %432, !dbg !3611
  br i1 %433, label %434, label %463, !dbg !3612

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !3613
  %436 = icmp ne i8 %435, 0, !dbg !3613
  %437 = and i8 %430, 1, !dbg !3613
  %438 = icmp eq i8 %437, 0, !dbg !3613
  %439 = select i1 %436, i1 %438, i1 false, !dbg !3613
  br i1 %439, label %440, label %451, !dbg !3613

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !3616
  br i1 %441, label %442, label %444, !dbg !3620

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !3616
  store i8 39, ptr %443, align 1, !dbg !3616, !tbaa !1178
  br label %444, !dbg !3616

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !3620
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !3183, metadata !DIExpression()), !dbg !3243
  %446 = icmp ult i64 %445, %146, !dbg !3621
  br i1 %446, label %447, label %449, !dbg !3624

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !3621
  store i8 39, ptr %448, align 1, !dbg !3621, !tbaa !1178
  br label %449, !dbg !3621

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !3624
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !3183, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3192, metadata !DIExpression()), !dbg !3243
  br label %451, !dbg !3625

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !3626
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !3192, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !3183, metadata !DIExpression()), !dbg !3243
  %454 = icmp ult i64 %452, %146, !dbg !3627
  br i1 %454, label %455, label %457, !dbg !3630

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !3627
  store i8 %431, ptr %456, align 1, !dbg !3627, !tbaa !1178
  br label %457, !dbg !3627

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !3630
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !3183, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !3198, metadata !DIExpression()), !dbg !3340
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !3631
  %460 = load i8, ptr %459, align 1, !dbg !3631, !tbaa !1178
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !3205, metadata !DIExpression()), !dbg !3350
  br label %364, !dbg !3632, !llvm.loop !3633

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !3205, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !3204, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3203, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !3200, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !3198, metadata !DIExpression()), !dbg !3340
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !3192, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !3183, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !3176, metadata !DIExpression()), !dbg !3243
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !3205, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !3204, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !3203, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !3200, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !3198, metadata !DIExpression()), !dbg !3340
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !3192, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !3183, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !3176, metadata !DIExpression()), !dbg !3243
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !3636
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !3243
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !3248
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !3243
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !3243
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !3340
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !3350
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !3350
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !3350
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !3174, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !3205, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !3204, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !3203, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !3200, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !3198, metadata !DIExpression()), !dbg !3340
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !3192, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !3189, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !3184, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !3183, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !3176, metadata !DIExpression()), !dbg !3243
  br i1 %126, label %487, label %476, !dbg !3637

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
  br i1 %137, label %488, label %509, !dbg !3639

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !3640

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
  %499 = lshr i8 %490, 5, !dbg !3641
  %500 = zext nneg i8 %499 to i64, !dbg !3641
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !3642
  %502 = load i32, ptr %501, align 4, !dbg !3642, !tbaa !1169
  %503 = and i8 %490, 31, !dbg !3643
  %504 = zext nneg i8 %503 to i32, !dbg !3643
  %505 = shl nuw i32 1, %504, !dbg !3644
  %506 = and i32 %502, %505, !dbg !3644
  %507 = icmp eq i32 %506, 0, !dbg !3644
  %508 = and i1 %172, %507, !dbg !3645
  br i1 %508, label %558, label %520, !dbg !3645

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
  br i1 %172, label %558, label %520, !dbg !3646

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !3636
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !3243
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !3248
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !3252
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !3342
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !3647
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !3350
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !3350
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !3174, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !3205, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !3204, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !3198, metadata !DIExpression()), !dbg !3340
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !3192, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !3189, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !3184, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !3183, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !3176, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.label(metadata !3232), !dbg !3648
  br i1 %131, label %530, label %659, !dbg !3649

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3203, metadata !DIExpression()), !dbg !3350
  %531 = and i8 %525, 1, !dbg !3651
  %532 = icmp eq i8 %531, 0, !dbg !3651
  %533 = select i1 %132, i1 %532, i1 false, !dbg !3651
  br i1 %533, label %534, label %550, !dbg !3651

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !3653
  br i1 %535, label %536, label %538, !dbg !3657

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3653
  store i8 39, ptr %537, align 1, !dbg !3653, !tbaa !1178
  br label %538, !dbg !3653

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !3657
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !3183, metadata !DIExpression()), !dbg !3243
  %540 = icmp ult i64 %539, %529, !dbg !3658
  br i1 %540, label %541, label %543, !dbg !3661

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !3658
  store i8 36, ptr %542, align 1, !dbg !3658, !tbaa !1178
  br label %543, !dbg !3658

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !3661
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !3183, metadata !DIExpression()), !dbg !3243
  %545 = icmp ult i64 %544, %529, !dbg !3662
  br i1 %545, label %546, label %548, !dbg !3665

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !3662
  store i8 39, ptr %547, align 1, !dbg !3662, !tbaa !1178
  br label %548, !dbg !3662

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !3665
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !3183, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3192, metadata !DIExpression()), !dbg !3243
  br label %550, !dbg !3666

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !3350
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !3192, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !3183, metadata !DIExpression()), !dbg !3243
  %553 = icmp ult i64 %551, %529, !dbg !3667
  br i1 %553, label %554, label %556, !dbg !3670

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !3667
  store i8 92, ptr %555, align 1, !dbg !3667, !tbaa !1178
  br label %556, !dbg !3667

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !3670
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !3174, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !3205, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !3204, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3203, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !3198, metadata !DIExpression()), !dbg !3340
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !3192, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !3189, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !3184, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !3183, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !3176, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.label(metadata !3233), !dbg !3671
  br label %585, !dbg !3672

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !3636
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !3243
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !3248
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !3252
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !3342
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !3647
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !3350
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !3350
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !3675
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !3174, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !3205, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !3204, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !3203, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !3198, metadata !DIExpression()), !dbg !3340
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !3192, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !3189, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !3184, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !3183, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !3176, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.label(metadata !3233), !dbg !3671
  %569 = and i8 %563, 1, !dbg !3672
  %570 = icmp ne i8 %569, 0, !dbg !3672
  %571 = and i8 %565, 1, !dbg !3672
  %572 = icmp eq i8 %571, 0, !dbg !3672
  %573 = select i1 %570, i1 %572, i1 false, !dbg !3672
  br i1 %573, label %574, label %585, !dbg !3672

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !3676
  br i1 %575, label %576, label %578, !dbg !3680

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !3676
  store i8 39, ptr %577, align 1, !dbg !3676, !tbaa !1178
  br label %578, !dbg !3676

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !3680
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !3183, metadata !DIExpression()), !dbg !3243
  %580 = icmp ult i64 %579, %568, !dbg !3681
  br i1 %580, label %581, label %583, !dbg !3684

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !3681
  store i8 39, ptr %582, align 1, !dbg !3681, !tbaa !1178
  br label %583, !dbg !3681

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !3684
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !3183, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3192, metadata !DIExpression()), !dbg !3243
  br label %585, !dbg !3685

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !3350
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !3192, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !3183, metadata !DIExpression()), !dbg !3243
  %595 = icmp ult i64 %593, %586, !dbg !3686
  br i1 %595, label %596, label %598, !dbg !3689

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !3686
  store i8 %587, ptr %597, align 1, !dbg !3686, !tbaa !1178
  br label %598, !dbg !3686

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !3689
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !3183, metadata !DIExpression()), !dbg !3243
  %600 = icmp eq i8 %588, 0, !dbg !3690
  %601 = select i1 %600, i8 0, i8 %143, !dbg !3692
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !3190, metadata !DIExpression()), !dbg !3243
  br label %602, !dbg !3693

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !3636
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !3243
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !3248
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !3252
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !3253
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !3342
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !3647
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !3174, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !3198, metadata !DIExpression()), !dbg !3340
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !3192, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !3190, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !3189, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !3184, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !3183, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !3176, metadata !DIExpression()), !dbg !3243
  %611 = add i64 %609, 1, !dbg !3694
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !3198, metadata !DIExpression()), !dbg !3340
  br label %138, !dbg !3695, !llvm.loop !3696

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !3174, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !3190, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !3189, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !3184, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !3183, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !3176, metadata !DIExpression()), !dbg !3243
  %613 = icmp eq i64 %140, 0, !dbg !3698
  %614 = and i1 %132, %613, !dbg !3700
  %615 = xor i1 %614, true, !dbg !3700
  %616 = select i1 %615, i1 true, i1 %131, !dbg !3700
  br i1 %616, label %617, label %655, !dbg !3700

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !3701
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !3701
  br i1 %621, label %622, label %631, !dbg !3701

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !3703
  %624 = icmp eq i8 %623, 0, !dbg !3703
  br i1 %624, label %627, label %625, !dbg !3706

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !3707
  br label %672, !dbg !3708

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !3709
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !3711
  br i1 %630, label %28, label %631, !dbg !3711

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !3712
  %634 = select i1 %633, i1 %632, i1 false, !dbg !3714
  br i1 %634, label %635, label %650, !dbg !3714

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !3185, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !3183, metadata !DIExpression()), !dbg !3243
  %636 = load i8, ptr %119, align 1, !dbg !3715, !tbaa !1178
  %637 = icmp eq i8 %636, 0, !dbg !3718
  br i1 %637, label %650, label %638, !dbg !3718

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !3185, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !3183, metadata !DIExpression()), !dbg !3243
  %642 = icmp ult i64 %641, %146, !dbg !3719
  br i1 %642, label %643, label %645, !dbg !3722

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !3719
  store i8 %639, ptr %644, align 1, !dbg !3719, !tbaa !1178
  br label %645, !dbg !3719

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !3722
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !3183, metadata !DIExpression()), !dbg !3243
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !3723
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !3185, metadata !DIExpression()), !dbg !3243
  %648 = load i8, ptr %647, align 1, !dbg !3715, !tbaa !1178
  %649 = icmp eq i8 %648, 0, !dbg !3718
  br i1 %649, label %650, label %638, !dbg !3718, !llvm.loop !3724

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !3323
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !3183, metadata !DIExpression()), !dbg !3243
  %652 = icmp ult i64 %651, %146, !dbg !3726
  br i1 %652, label %653, label %672, !dbg !3728

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !3729
  store i8 0, ptr %654, align 1, !dbg !3730, !tbaa !1178
  br label %672, !dbg !3729

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !3234), !dbg !3731
  %657 = icmp eq i8 %123, 0, !dbg !3732
  %658 = select i1 %657, i32 2, i32 4, !dbg !3732
  br label %666, !dbg !3732

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !3234), !dbg !3731
  %662 = icmp eq i32 %115, 2, !dbg !3734
  %663 = icmp eq i8 %123, 0, !dbg !3732
  %664 = select i1 %663, i32 2, i32 4, !dbg !3732
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !3732
  br label %666, !dbg !3732

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !3177, metadata !DIExpression()), !dbg !3243
  %670 = and i32 %5, -3, !dbg !3735
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !3736
  br label %672, !dbg !3737

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !3738
}

; Function Attrs: nounwind
declare !dbg !3739 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3742 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3744 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3748, metadata !DIExpression()), !dbg !3751
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3749, metadata !DIExpression()), !dbg !3751
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3750, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata ptr %0, metadata !3752, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i64 %1, metadata !3757, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata ptr null, metadata !3758, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata ptr %2, metadata !3759, metadata !DIExpression()), !dbg !3765
  %4 = icmp eq ptr %2, null, !dbg !3767
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3767
  call void @llvm.dbg.value(metadata ptr %5, metadata !3760, metadata !DIExpression()), !dbg !3765
  %6 = tail call ptr @__errno_location() #42, !dbg !3768
  %7 = load i32, ptr %6, align 4, !dbg !3768, !tbaa !1169
  call void @llvm.dbg.value(metadata i32 %7, metadata !3761, metadata !DIExpression()), !dbg !3765
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3769
  %9 = load i32, ptr %8, align 4, !dbg !3769, !tbaa !3118
  %10 = or i32 %9, 1, !dbg !3770
  call void @llvm.dbg.value(metadata i32 %10, metadata !3762, metadata !DIExpression()), !dbg !3765
  %11 = load i32, ptr %5, align 8, !dbg !3771, !tbaa !3068
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3772
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3773
  %14 = load ptr, ptr %13, align 8, !dbg !3773, !tbaa !3139
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3774
  %16 = load ptr, ptr %15, align 8, !dbg !3774, !tbaa !3142
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3775
  %18 = add i64 %17, 1, !dbg !3776
  call void @llvm.dbg.value(metadata i64 %18, metadata !3763, metadata !DIExpression()), !dbg !3765
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #46, !dbg !3777
  call void @llvm.dbg.value(metadata ptr %19, metadata !3764, metadata !DIExpression()), !dbg !3765
  %20 = load i32, ptr %5, align 8, !dbg !3778, !tbaa !3068
  %21 = load ptr, ptr %13, align 8, !dbg !3779, !tbaa !3139
  %22 = load ptr, ptr %15, align 8, !dbg !3780, !tbaa !3142
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3781
  store i32 %7, ptr %6, align 4, !dbg !3782, !tbaa !1169
  ret ptr %19, !dbg !3783
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3753 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3752, metadata !DIExpression()), !dbg !3784
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3757, metadata !DIExpression()), !dbg !3784
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3758, metadata !DIExpression()), !dbg !3784
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3759, metadata !DIExpression()), !dbg !3784
  %5 = icmp eq ptr %3, null, !dbg !3785
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3785
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3760, metadata !DIExpression()), !dbg !3784
  %7 = tail call ptr @__errno_location() #42, !dbg !3786
  %8 = load i32, ptr %7, align 4, !dbg !3786, !tbaa !1169
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3761, metadata !DIExpression()), !dbg !3784
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3787
  %10 = load i32, ptr %9, align 4, !dbg !3787, !tbaa !3118
  %11 = icmp eq ptr %2, null, !dbg !3788
  %12 = zext i1 %11 to i32, !dbg !3788
  %13 = or i32 %10, %12, !dbg !3789
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3762, metadata !DIExpression()), !dbg !3784
  %14 = load i32, ptr %6, align 8, !dbg !3790, !tbaa !3068
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3791
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3792
  %17 = load ptr, ptr %16, align 8, !dbg !3792, !tbaa !3139
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3793
  %19 = load ptr, ptr %18, align 8, !dbg !3793, !tbaa !3142
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3794
  %21 = add i64 %20, 1, !dbg !3795
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3763, metadata !DIExpression()), !dbg !3784
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #46, !dbg !3796
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3764, metadata !DIExpression()), !dbg !3784
  %23 = load i32, ptr %6, align 8, !dbg !3797, !tbaa !3068
  %24 = load ptr, ptr %16, align 8, !dbg !3798, !tbaa !3139
  %25 = load ptr, ptr %18, align 8, !dbg !3799, !tbaa !3142
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3800
  store i32 %8, ptr %7, align 4, !dbg !3801, !tbaa !1169
  br i1 %11, label %28, label %27, !dbg !3802

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3803, !tbaa !1523
  br label %28, !dbg !3805

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3806
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3807 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3812, !tbaa !1103
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3809, metadata !DIExpression()), !dbg !3813
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3810, metadata !DIExpression()), !dbg !3814
  %2 = load i32, ptr @nslots, align 4, !tbaa !1169
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3810, metadata !DIExpression()), !dbg !3814
  %3 = icmp sgt i32 %2, 1, !dbg !3815
  br i1 %3, label %4, label %6, !dbg !3817

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3815
  br label %10, !dbg !3817

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3818
  %8 = load ptr, ptr %7, align 8, !dbg !3818, !tbaa !3820
  %9 = icmp eq ptr %8, @slot0, !dbg !3822
  br i1 %9, label %17, label %16, !dbg !3823

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3810, metadata !DIExpression()), !dbg !3814
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3824
  %13 = load ptr, ptr %12, align 8, !dbg !3824, !tbaa !3820
  tail call void @free(ptr noundef %13) #39, !dbg !3825
  %14 = add nuw nsw i64 %11, 1, !dbg !3826
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3810, metadata !DIExpression()), !dbg !3814
  %15 = icmp eq i64 %14, %5, !dbg !3815
  br i1 %15, label %6, label %10, !dbg !3817, !llvm.loop !3827

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !3829
  store i64 256, ptr @slotvec0, align 8, !dbg !3831, !tbaa !3832
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3833, !tbaa !3820
  br label %17, !dbg !3834

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3835
  br i1 %18, label %20, label %19, !dbg !3837

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !3838
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3840, !tbaa !1103
  br label %20, !dbg !3841

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3842, !tbaa !1169
  ret void, !dbg !3843
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3844 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3846, metadata !DIExpression()), !dbg !3848
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3847, metadata !DIExpression()), !dbg !3848
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3849
  ret ptr %3, !dbg !3850
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3851 {
  %5 = alloca i64, align 8, !DIAssignID !3871
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3865, metadata !DIExpression(), metadata !3871, metadata ptr %5, metadata !DIExpression()), !dbg !3872
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3855, metadata !DIExpression()), !dbg !3873
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3856, metadata !DIExpression()), !dbg !3873
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3857, metadata !DIExpression()), !dbg !3873
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3858, metadata !DIExpression()), !dbg !3873
  %6 = tail call ptr @__errno_location() #42, !dbg !3874
  %7 = load i32, ptr %6, align 4, !dbg !3874, !tbaa !1169
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3859, metadata !DIExpression()), !dbg !3873
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3875, !tbaa !1103
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3860, metadata !DIExpression()), !dbg !3873
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3861, metadata !DIExpression()), !dbg !3873
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3876
  br i1 %9, label %10, label %11, !dbg !3876

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !3878
  unreachable, !dbg !3878

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3879, !tbaa !1169
  %13 = icmp sgt i32 %12, %0, !dbg !3880
  br i1 %13, label %32, label %14, !dbg !3881

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3882
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3862, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3872
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !3883
  %16 = sext i32 %12 to i64, !dbg !3884
  store i64 %16, ptr %5, align 8, !dbg !3885, !tbaa !1523, !DIAssignID !3886
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3865, metadata !DIExpression(), metadata !3886, metadata ptr %5, metadata !DIExpression()), !dbg !3872
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3887
  %18 = add nuw nsw i32 %0, 1, !dbg !3888
  %19 = sub i32 %18, %12, !dbg !3889
  %20 = sext i32 %19 to i64, !dbg !3890
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !3891
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3860, metadata !DIExpression()), !dbg !3873
  store ptr %21, ptr @slotvec, align 8, !dbg !3892, !tbaa !1103
  br i1 %15, label %22, label %23, !dbg !3893

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3894, !tbaa.struct !3896
  br label %23, !dbg !3897

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3898, !tbaa !1169
  %25 = sext i32 %24 to i64, !dbg !3899
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3899
  %27 = load i64, ptr %5, align 8, !dbg !3900, !tbaa !1523
  %28 = sub nsw i64 %27, %25, !dbg !3901
  %29 = shl i64 %28, 4, !dbg !3902
  call void @llvm.dbg.value(metadata ptr %26, metadata !3281, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i32 0, metadata !3284, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i64 %29, metadata !3285, metadata !DIExpression()), !dbg !3903
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !3905
  %30 = load i64, ptr %5, align 8, !dbg !3906, !tbaa !1523
  %31 = trunc i64 %30 to i32, !dbg !3906
  store i32 %31, ptr @nslots, align 4, !dbg !3907, !tbaa !1169
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !3908
  br label %32, !dbg !3909

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3873
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3860, metadata !DIExpression()), !dbg !3873
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3910
  %36 = load i64, ptr %35, align 8, !dbg !3911, !tbaa !3832
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3866, metadata !DIExpression()), !dbg !3912
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3913
  %38 = load ptr, ptr %37, align 8, !dbg !3913, !tbaa !3820
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3868, metadata !DIExpression()), !dbg !3912
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3914
  %40 = load i32, ptr %39, align 4, !dbg !3914, !tbaa !3118
  %41 = or i32 %40, 1, !dbg !3915
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3869, metadata !DIExpression()), !dbg !3912
  %42 = load i32, ptr %3, align 8, !dbg !3916, !tbaa !3068
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3917
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3918
  %45 = load ptr, ptr %44, align 8, !dbg !3918, !tbaa !3139
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3919
  %47 = load ptr, ptr %46, align 8, !dbg !3919, !tbaa !3142
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3920
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3870, metadata !DIExpression()), !dbg !3912
  %49 = icmp ugt i64 %36, %48, !dbg !3921
  br i1 %49, label %60, label %50, !dbg !3923

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3924
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3866, metadata !DIExpression()), !dbg !3912
  store i64 %51, ptr %35, align 8, !dbg !3926, !tbaa !3832
  %52 = icmp eq ptr %38, @slot0, !dbg !3927
  br i1 %52, label %54, label %53, !dbg !3929

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !3930
  br label %54, !dbg !3930

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #46, !dbg !3931
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3868, metadata !DIExpression()), !dbg !3912
  store ptr %55, ptr %37, align 8, !dbg !3932, !tbaa !3820
  %56 = load i32, ptr %3, align 8, !dbg !3933, !tbaa !3068
  %57 = load ptr, ptr %44, align 8, !dbg !3934, !tbaa !3139
  %58 = load ptr, ptr %46, align 8, !dbg !3935, !tbaa !3142
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3936
  br label %60, !dbg !3937

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3912
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3868, metadata !DIExpression()), !dbg !3912
  store i32 %7, ptr %6, align 4, !dbg !3938, !tbaa !1169
  ret ptr %61, !dbg !3939
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3940 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3944, metadata !DIExpression()), !dbg !3947
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3945, metadata !DIExpression()), !dbg !3947
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3946, metadata !DIExpression()), !dbg !3947
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3948
  ret ptr %4, !dbg !3949
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3950 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3952, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i32 0, metadata !3846, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata ptr %0, metadata !3847, metadata !DIExpression()), !dbg !3954
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3956
  ret ptr %2, !dbg !3957
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3958 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3962, metadata !DIExpression()), !dbg !3964
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3963, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i32 0, metadata !3944, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata ptr %0, metadata !3945, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata i64 %1, metadata !3946, metadata !DIExpression()), !dbg !3965
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3967
  ret ptr %3, !dbg !3968
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3969 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3977
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3976, metadata !DIExpression(), metadata !3977, metadata ptr %4, metadata !DIExpression()), !dbg !3978
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3973, metadata !DIExpression()), !dbg !3978
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3974, metadata !DIExpression()), !dbg !3978
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3975, metadata !DIExpression()), !dbg !3978
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3979
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3980), !dbg !3983
  call void @llvm.dbg.value(metadata i32 %1, metadata !3984, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3989, metadata !DIExpression()), !dbg !3992
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3992, !alias.scope !3980, !DIAssignID !3993
  call void @llvm.dbg.assign(metadata i8 0, metadata !3976, metadata !DIExpression(), metadata !3993, metadata ptr %4, metadata !DIExpression()), !dbg !3978
  %5 = icmp eq i32 %1, 10, !dbg !3994
  br i1 %5, label %6, label %7, !dbg !3996

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3997, !noalias !3980
  unreachable, !dbg !3997

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3998, !tbaa !3068, !alias.scope !3980, !DIAssignID !3999
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3976, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3999, metadata ptr %4, metadata !DIExpression()), !dbg !3978
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4000
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !4001
  ret ptr %8, !dbg !4002
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4003 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4012
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4011, metadata !DIExpression(), metadata !4012, metadata ptr %5, metadata !DIExpression()), !dbg !4013
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4007, metadata !DIExpression()), !dbg !4013
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4008, metadata !DIExpression()), !dbg !4013
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4009, metadata !DIExpression()), !dbg !4013
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4010, metadata !DIExpression()), !dbg !4013
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !4014
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4015), !dbg !4018
  call void @llvm.dbg.value(metadata i32 %1, metadata !3984, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3989, metadata !DIExpression()), !dbg !4021
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !4021, !alias.scope !4015, !DIAssignID !4022
  call void @llvm.dbg.assign(metadata i8 0, metadata !4011, metadata !DIExpression(), metadata !4022, metadata ptr %5, metadata !DIExpression()), !dbg !4013
  %6 = icmp eq i32 %1, 10, !dbg !4023
  br i1 %6, label %7, label %8, !dbg !4024

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !4025, !noalias !4015
  unreachable, !dbg !4025

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !4026, !tbaa !3068, !alias.scope !4015, !DIAssignID !4027
  call void @llvm.dbg.assign(metadata i32 %1, metadata !4011, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4027, metadata ptr %5, metadata !DIExpression()), !dbg !4013
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4028
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !4029
  ret ptr %9, !dbg !4030
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4031 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !4037
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4035, metadata !DIExpression()), !dbg !4038
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4036, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3976, metadata !DIExpression(), metadata !4037, metadata ptr %3, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i32 0, metadata !3973, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i32 %0, metadata !3974, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata ptr %1, metadata !3975, metadata !DIExpression()), !dbg !4039
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !4041
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4042), !dbg !4045
  call void @llvm.dbg.value(metadata i32 %0, metadata !3984, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3989, metadata !DIExpression()), !dbg !4048
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !4048, !alias.scope !4042, !DIAssignID !4049
  call void @llvm.dbg.assign(metadata i8 0, metadata !3976, metadata !DIExpression(), metadata !4049, metadata ptr %3, metadata !DIExpression()), !dbg !4039
  %4 = icmp eq i32 %0, 10, !dbg !4050
  br i1 %4, label %5, label %6, !dbg !4051

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !4052, !noalias !4042
  unreachable, !dbg !4052

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !4053, !tbaa !3068, !alias.scope !4042, !DIAssignID !4054
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3976, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4054, metadata ptr %3, metadata !DIExpression()), !dbg !4039
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !4055
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !4056
  ret ptr %7, !dbg !4057
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4058 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4065
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4062, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4063, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4064, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4011, metadata !DIExpression(), metadata !4065, metadata ptr %4, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata i32 0, metadata !4007, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata i32 %0, metadata !4008, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata ptr %1, metadata !4009, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata i64 %2, metadata !4010, metadata !DIExpression()), !dbg !4067
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !4069
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4070), !dbg !4073
  call void @llvm.dbg.value(metadata i32 %0, metadata !3984, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3989, metadata !DIExpression()), !dbg !4076
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !4076, !alias.scope !4070, !DIAssignID !4077
  call void @llvm.dbg.assign(metadata i8 0, metadata !4011, metadata !DIExpression(), metadata !4077, metadata ptr %4, metadata !DIExpression()), !dbg !4067
  %5 = icmp eq i32 %0, 10, !dbg !4078
  br i1 %5, label %6, label %7, !dbg !4079

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !4080, !noalias !4070
  unreachable, !dbg !4080

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !4081, !tbaa !3068, !alias.scope !4070, !DIAssignID !4082
  call void @llvm.dbg.assign(metadata i32 %0, metadata !4011, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4082, metadata ptr %4, metadata !DIExpression()), !dbg !4067
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !4083
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !4084
  ret ptr %8, !dbg !4085
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !4086 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4094
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4093, metadata !DIExpression(), metadata !4094, metadata ptr %4, metadata !DIExpression()), !dbg !4095
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4090, metadata !DIExpression()), !dbg !4095
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4091, metadata !DIExpression()), !dbg !4095
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !4092, metadata !DIExpression()), !dbg !4095
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !4096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4097, !tbaa.struct !4098, !DIAssignID !4099
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4093, metadata !DIExpression(), metadata !4099, metadata ptr %4, metadata !DIExpression()), !dbg !4095
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3085, metadata !DIExpression()), !dbg !4100
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3086, metadata !DIExpression()), !dbg !4100
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3087, metadata !DIExpression()), !dbg !4100
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3088, metadata !DIExpression()), !dbg !4100
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !4102
  %6 = lshr i8 %2, 5, !dbg !4103
  %7 = zext nneg i8 %6 to i64, !dbg !4103
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !4104
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3089, metadata !DIExpression()), !dbg !4100
  %9 = and i8 %2, 31, !dbg !4105
  %10 = zext nneg i8 %9 to i32, !dbg !4105
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !3091, metadata !DIExpression()), !dbg !4100
  %11 = load i32, ptr %8, align 4, !dbg !4106, !tbaa !1169
  %12 = lshr i32 %11, %10, !dbg !4107
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !3092, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4100
  %13 = and i32 %12, 1, !dbg !4108
  %14 = xor i32 %13, 1, !dbg !4108
  %15 = shl nuw i32 %14, %10, !dbg !4109
  %16 = xor i32 %15, %11, !dbg !4110
  store i32 %16, ptr %8, align 4, !dbg !4110, !tbaa !1169
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !4111
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !4112
  ret ptr %17, !dbg !4113
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !4114 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !4120
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4118, metadata !DIExpression()), !dbg !4121
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !4119, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4093, metadata !DIExpression(), metadata !4120, metadata ptr %3, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata ptr %0, metadata !4090, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i64 -1, metadata !4091, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i8 %1, metadata !4092, metadata !DIExpression()), !dbg !4122
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !4124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4125, !tbaa.struct !4098, !DIAssignID !4126
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4093, metadata !DIExpression(), metadata !4126, metadata ptr %3, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata ptr %3, metadata !3085, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i8 %1, metadata !3086, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i32 1, metadata !3087, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i8 %1, metadata !3088, metadata !DIExpression()), !dbg !4127
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !4129
  %5 = lshr i8 %1, 5, !dbg !4130
  %6 = zext nneg i8 %5 to i64, !dbg !4130
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !4131
  call void @llvm.dbg.value(metadata ptr %7, metadata !3089, metadata !DIExpression()), !dbg !4127
  %8 = and i8 %1, 31, !dbg !4132
  %9 = zext nneg i8 %8 to i32, !dbg !4132
  call void @llvm.dbg.value(metadata i32 %9, metadata !3091, metadata !DIExpression()), !dbg !4127
  %10 = load i32, ptr %7, align 4, !dbg !4133, !tbaa !1169
  %11 = lshr i32 %10, %9, !dbg !4134
  call void @llvm.dbg.value(metadata i32 %11, metadata !3092, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4127
  %12 = and i32 %11, 1, !dbg !4135
  %13 = xor i32 %12, 1, !dbg !4135
  %14 = shl nuw i32 %13, %9, !dbg !4136
  %15 = xor i32 %14, %10, !dbg !4137
  store i32 %15, ptr %7, align 4, !dbg !4137, !tbaa !1169
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !4138
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !4139
  ret ptr %16, !dbg !4140
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !4141 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !4144
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4143, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata ptr %0, metadata !4118, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i8 58, metadata !4119, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4093, metadata !DIExpression(), metadata !4144, metadata ptr %2, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %0, metadata !4090, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i64 -1, metadata !4091, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i8 58, metadata !4092, metadata !DIExpression()), !dbg !4148
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !4150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4151, !tbaa.struct !4098, !DIAssignID !4152
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4093, metadata !DIExpression(), metadata !4152, metadata ptr %2, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %2, metadata !3085, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata i8 58, metadata !3086, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata i32 1, metadata !3087, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata i8 58, metadata !3088, metadata !DIExpression()), !dbg !4153
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !4155
  call void @llvm.dbg.value(metadata ptr %3, metadata !3089, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata i32 26, metadata !3091, metadata !DIExpression()), !dbg !4153
  %4 = load i32, ptr %3, align 4, !dbg !4156, !tbaa !1169
  call void @llvm.dbg.value(metadata i32 %4, metadata !3092, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4153
  %5 = or i32 %4, 67108864, !dbg !4157
  store i32 %5, ptr %3, align 4, !dbg !4157, !tbaa !1169
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !4158
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !4159
  ret ptr %6, !dbg !4160
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4161 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !4165
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4163, metadata !DIExpression()), !dbg !4166
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4164, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4093, metadata !DIExpression(), metadata !4165, metadata ptr %3, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata ptr %0, metadata !4090, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i64 %1, metadata !4091, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i8 58, metadata !4092, metadata !DIExpression()), !dbg !4167
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !4169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4170, !tbaa.struct !4098, !DIAssignID !4171
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4093, metadata !DIExpression(), metadata !4171, metadata ptr %3, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata ptr %3, metadata !3085, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata i8 58, metadata !3086, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata i32 1, metadata !3087, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata i8 58, metadata !3088, metadata !DIExpression()), !dbg !4172
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !4174
  call void @llvm.dbg.value(metadata ptr %4, metadata !3089, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata i32 26, metadata !3091, metadata !DIExpression()), !dbg !4172
  %5 = load i32, ptr %4, align 4, !dbg !4175, !tbaa !1169
  call void @llvm.dbg.value(metadata i32 %5, metadata !3092, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4172
  %6 = or i32 %5, 67108864, !dbg !4176
  store i32 %6, ptr %4, align 4, !dbg !4176, !tbaa !1169
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !4177
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !4178
  ret ptr %7, !dbg !4179
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4180 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4186
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4185, metadata !DIExpression(), metadata !4186, metadata ptr %4, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3989, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4188
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4182, metadata !DIExpression()), !dbg !4187
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4183, metadata !DIExpression()), !dbg !4187
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4184, metadata !DIExpression()), !dbg !4187
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !4190
  call void @llvm.dbg.value(metadata i32 %1, metadata !3984, metadata !DIExpression()), !dbg !4191
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3989, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4191
  %5 = icmp eq i32 %1, 10, !dbg !4192
  br i1 %5, label %6, label %7, !dbg !4193

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !4194, !noalias !4195
  unreachable, !dbg !4194

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3989, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4191
  store i32 %1, ptr %4, align 8, !dbg !4198, !tbaa.struct !4098, !DIAssignID !4199
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !4198
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !4198
  call void @llvm.dbg.assign(metadata i32 %1, metadata !4185, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4199, metadata ptr %4, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4185, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !4200, metadata ptr %8, metadata !DIExpression()), !dbg !4187
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3085, metadata !DIExpression()), !dbg !4201
  tail call void @llvm.dbg.value(metadata i8 58, metadata !3086, metadata !DIExpression()), !dbg !4201
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3087, metadata !DIExpression()), !dbg !4201
  tail call void @llvm.dbg.value(metadata i8 58, metadata !3088, metadata !DIExpression()), !dbg !4201
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !4203
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !3089, metadata !DIExpression()), !dbg !4201
  tail call void @llvm.dbg.value(metadata i32 26, metadata !3091, metadata !DIExpression()), !dbg !4201
  %10 = load i32, ptr %9, align 4, !dbg !4204, !tbaa !1169
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !3092, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4201
  %11 = or i32 %10, 67108864, !dbg !4205
  store i32 %11, ptr %9, align 4, !dbg !4205, !tbaa !1169, !DIAssignID !4206
  call void @llvm.dbg.assign(metadata i32 %11, metadata !4185, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !4206, metadata ptr %9, metadata !DIExpression()), !dbg !4187
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4207
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !4208
  ret ptr %12, !dbg !4209
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4210 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4218
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4214, metadata !DIExpression()), !dbg !4219
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4215, metadata !DIExpression()), !dbg !4219
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4216, metadata !DIExpression()), !dbg !4219
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4217, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4220, metadata !DIExpression(), metadata !4218, metadata ptr %5, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata i32 %0, metadata !4225, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata ptr %1, metadata !4226, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata ptr %2, metadata !4227, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata ptr %3, metadata !4228, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata i64 -1, metadata !4229, metadata !DIExpression()), !dbg !4230
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !4232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4233, !tbaa.struct !4098, !DIAssignID !4234
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4220, metadata !DIExpression(), metadata !4234, metadata ptr %5, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4220, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4235, metadata ptr undef, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata ptr %5, metadata !3125, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata ptr %1, metadata !3126, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata ptr %2, metadata !3127, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata ptr %5, metadata !3125, metadata !DIExpression()), !dbg !4236
  store i32 10, ptr %5, align 8, !dbg !4238, !tbaa !3068, !DIAssignID !4239
  call void @llvm.dbg.assign(metadata i32 10, metadata !4220, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4239, metadata ptr %5, metadata !DIExpression()), !dbg !4230
  %6 = icmp ne ptr %1, null, !dbg !4240
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4241
  br i1 %8, label %10, label %9, !dbg !4241

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !4242
  unreachable, !dbg !4242

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4243
  store ptr %1, ptr %11, align 8, !dbg !4244, !tbaa !3139, !DIAssignID !4245
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4220, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4245, metadata ptr %11, metadata !DIExpression()), !dbg !4230
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4246
  store ptr %2, ptr %12, align 8, !dbg !4247, !tbaa !3142, !DIAssignID !4248
  call void @llvm.dbg.assign(metadata ptr %2, metadata !4220, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4248, metadata ptr %12, metadata !DIExpression()), !dbg !4230
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4249
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !4250
  ret ptr %13, !dbg !4251
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !4221 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !4252
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4220, metadata !DIExpression(), metadata !4252, metadata ptr %6, metadata !DIExpression()), !dbg !4253
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4225, metadata !DIExpression()), !dbg !4253
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4226, metadata !DIExpression()), !dbg !4253
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4227, metadata !DIExpression()), !dbg !4253
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4228, metadata !DIExpression()), !dbg !4253
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !4229, metadata !DIExpression()), !dbg !4253
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !4254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4255, !tbaa.struct !4098, !DIAssignID !4256
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4220, metadata !DIExpression(), metadata !4256, metadata ptr %6, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4220, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4257, metadata ptr undef, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.value(metadata ptr %6, metadata !3125, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata ptr %1, metadata !3126, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata ptr %2, metadata !3127, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata ptr %6, metadata !3125, metadata !DIExpression()), !dbg !4258
  store i32 10, ptr %6, align 8, !dbg !4260, !tbaa !3068, !DIAssignID !4261
  call void @llvm.dbg.assign(metadata i32 10, metadata !4220, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4261, metadata ptr %6, metadata !DIExpression()), !dbg !4253
  %7 = icmp ne ptr %1, null, !dbg !4262
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4263
  br i1 %9, label %11, label %10, !dbg !4263

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !4264
  unreachable, !dbg !4264

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4265
  store ptr %1, ptr %12, align 8, !dbg !4266, !tbaa !3139, !DIAssignID !4267
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4220, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4267, metadata ptr %12, metadata !DIExpression()), !dbg !4253
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4268
  store ptr %2, ptr %13, align 8, !dbg !4269, !tbaa !3142, !DIAssignID !4270
  call void @llvm.dbg.assign(metadata ptr %2, metadata !4220, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4270, metadata ptr %13, metadata !DIExpression()), !dbg !4253
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4271
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !4272
  ret ptr %14, !dbg !4273
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4274 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4281
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4278, metadata !DIExpression()), !dbg !4282
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4279, metadata !DIExpression()), !dbg !4282
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4280, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i32 0, metadata !4214, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata ptr %0, metadata !4215, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata ptr %1, metadata !4216, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata ptr %2, metadata !4217, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4220, metadata !DIExpression(), metadata !4281, metadata ptr %4, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata i32 0, metadata !4225, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata ptr %0, metadata !4226, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata ptr %1, metadata !4227, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata ptr %2, metadata !4228, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata i64 -1, metadata !4229, metadata !DIExpression()), !dbg !4285
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !4287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4288, !tbaa.struct !4098, !DIAssignID !4289
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4220, metadata !DIExpression(), metadata !4289, metadata ptr %4, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4220, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4290, metadata ptr undef, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata ptr %4, metadata !3125, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata ptr %0, metadata !3126, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata ptr %1, metadata !3127, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata ptr %4, metadata !3125, metadata !DIExpression()), !dbg !4291
  store i32 10, ptr %4, align 8, !dbg !4293, !tbaa !3068, !DIAssignID !4294
  call void @llvm.dbg.assign(metadata i32 10, metadata !4220, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4294, metadata ptr %4, metadata !DIExpression()), !dbg !4285
  %5 = icmp ne ptr %0, null, !dbg !4295
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4296
  br i1 %7, label %9, label %8, !dbg !4296

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !4297
  unreachable, !dbg !4297

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4298
  store ptr %0, ptr %10, align 8, !dbg !4299, !tbaa !3139, !DIAssignID !4300
  call void @llvm.dbg.assign(metadata ptr %0, metadata !4220, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4300, metadata ptr %10, metadata !DIExpression()), !dbg !4285
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4301
  store ptr %1, ptr %11, align 8, !dbg !4302, !tbaa !3142, !DIAssignID !4303
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4220, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4303, metadata ptr %11, metadata !DIExpression()), !dbg !4285
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4304
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !4305
  ret ptr %12, !dbg !4306
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4307 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4315
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4311, metadata !DIExpression()), !dbg !4316
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4312, metadata !DIExpression()), !dbg !4316
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4313, metadata !DIExpression()), !dbg !4316
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4314, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4220, metadata !DIExpression(), metadata !4315, metadata ptr %5, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i32 0, metadata !4225, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata ptr %0, metadata !4226, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata ptr %1, metadata !4227, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata ptr %2, metadata !4228, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 %3, metadata !4229, metadata !DIExpression()), !dbg !4317
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !4319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4320, !tbaa.struct !4098, !DIAssignID !4321
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4220, metadata !DIExpression(), metadata !4321, metadata ptr %5, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4220, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4322, metadata ptr undef, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata ptr %5, metadata !3125, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata ptr %0, metadata !3126, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata ptr %1, metadata !3127, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata ptr %5, metadata !3125, metadata !DIExpression()), !dbg !4323
  store i32 10, ptr %5, align 8, !dbg !4325, !tbaa !3068, !DIAssignID !4326
  call void @llvm.dbg.assign(metadata i32 10, metadata !4220, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4326, metadata ptr %5, metadata !DIExpression()), !dbg !4317
  %6 = icmp ne ptr %0, null, !dbg !4327
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4328
  br i1 %8, label %10, label %9, !dbg !4328

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !4329
  unreachable, !dbg !4329

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4330
  store ptr %0, ptr %11, align 8, !dbg !4331, !tbaa !3139, !DIAssignID !4332
  call void @llvm.dbg.assign(metadata ptr %0, metadata !4220, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4332, metadata ptr %11, metadata !DIExpression()), !dbg !4317
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4333
  store ptr %1, ptr %12, align 8, !dbg !4334, !tbaa !3142, !DIAssignID !4335
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4220, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4335, metadata ptr %12, metadata !DIExpression()), !dbg !4317
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4336
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !4337
  ret ptr %13, !dbg !4338
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4339 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4343, metadata !DIExpression()), !dbg !4346
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4344, metadata !DIExpression()), !dbg !4346
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4345, metadata !DIExpression()), !dbg !4346
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4347
  ret ptr %4, !dbg !4348
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4349 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4353, metadata !DIExpression()), !dbg !4355
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4354, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i32 0, metadata !4343, metadata !DIExpression()), !dbg !4356
  call void @llvm.dbg.value(metadata ptr %0, metadata !4344, metadata !DIExpression()), !dbg !4356
  call void @llvm.dbg.value(metadata i64 %1, metadata !4345, metadata !DIExpression()), !dbg !4356
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4358
  ret ptr %3, !dbg !4359
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4360 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4364, metadata !DIExpression()), !dbg !4366
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4365, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i32 %0, metadata !4343, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata ptr %1, metadata !4344, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i64 -1, metadata !4345, metadata !DIExpression()), !dbg !4367
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4369
  ret ptr %3, !dbg !4370
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4371 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4375, metadata !DIExpression()), !dbg !4376
  call void @llvm.dbg.value(metadata i32 0, metadata !4364, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.value(metadata ptr %0, metadata !4365, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.value(metadata i32 0, metadata !4343, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.value(metadata ptr %0, metadata !4344, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.value(metadata i64 -1, metadata !4345, metadata !DIExpression()), !dbg !4379
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4381
  ret ptr %2, !dbg !4382
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4383 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4422, metadata !DIExpression()), !dbg !4428
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4423, metadata !DIExpression()), !dbg !4428
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4424, metadata !DIExpression()), !dbg !4428
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4425, metadata !DIExpression()), !dbg !4428
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4426, metadata !DIExpression()), !dbg !4428
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4427, metadata !DIExpression()), !dbg !4428
  %7 = icmp eq ptr %1, null, !dbg !4429
  br i1 %7, label %10, label %8, !dbg !4431

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.186, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !4432
  br label %12, !dbg !4432

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.187, ptr noundef %2, ptr noundef %3) #39, !dbg !4433
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.3.189, i32 noundef 5) #39, !dbg !4434
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !4434
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.190, ptr noundef %0), !dbg !4435
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.5.191, i32 noundef 5) #39, !dbg !4436
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.192) #39, !dbg !4436
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.190, ptr noundef %0), !dbg !4437
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
  ], !dbg !4438

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.7.193, i32 noundef 5) #39, !dbg !4439
  %21 = load ptr, ptr %4, align 8, !dbg !4439, !tbaa !1103
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !4439
  br label %147, !dbg !4441

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.8.194, i32 noundef 5) #39, !dbg !4442
  %25 = load ptr, ptr %4, align 8, !dbg !4442, !tbaa !1103
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4442
  %27 = load ptr, ptr %26, align 8, !dbg !4442, !tbaa !1103
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !4442
  br label %147, !dbg !4443

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.9.195, i32 noundef 5) #39, !dbg !4444
  %31 = load ptr, ptr %4, align 8, !dbg !4444, !tbaa !1103
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4444
  %33 = load ptr, ptr %32, align 8, !dbg !4444, !tbaa !1103
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4444
  %35 = load ptr, ptr %34, align 8, !dbg !4444, !tbaa !1103
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !4444
  br label %147, !dbg !4445

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.10.196, i32 noundef 5) #39, !dbg !4446
  %39 = load ptr, ptr %4, align 8, !dbg !4446, !tbaa !1103
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4446
  %41 = load ptr, ptr %40, align 8, !dbg !4446, !tbaa !1103
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4446
  %43 = load ptr, ptr %42, align 8, !dbg !4446, !tbaa !1103
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4446
  %45 = load ptr, ptr %44, align 8, !dbg !4446, !tbaa !1103
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !4446
  br label %147, !dbg !4447

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.11.197, i32 noundef 5) #39, !dbg !4448
  %49 = load ptr, ptr %4, align 8, !dbg !4448, !tbaa !1103
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4448
  %51 = load ptr, ptr %50, align 8, !dbg !4448, !tbaa !1103
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4448
  %53 = load ptr, ptr %52, align 8, !dbg !4448, !tbaa !1103
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4448
  %55 = load ptr, ptr %54, align 8, !dbg !4448, !tbaa !1103
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4448
  %57 = load ptr, ptr %56, align 8, !dbg !4448, !tbaa !1103
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !4448
  br label %147, !dbg !4449

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.12.198, i32 noundef 5) #39, !dbg !4450
  %61 = load ptr, ptr %4, align 8, !dbg !4450, !tbaa !1103
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4450
  %63 = load ptr, ptr %62, align 8, !dbg !4450, !tbaa !1103
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4450
  %65 = load ptr, ptr %64, align 8, !dbg !4450, !tbaa !1103
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4450
  %67 = load ptr, ptr %66, align 8, !dbg !4450, !tbaa !1103
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4450
  %69 = load ptr, ptr %68, align 8, !dbg !4450, !tbaa !1103
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4450
  %71 = load ptr, ptr %70, align 8, !dbg !4450, !tbaa !1103
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !4450
  br label %147, !dbg !4451

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.13.199, i32 noundef 5) #39, !dbg !4452
  %75 = load ptr, ptr %4, align 8, !dbg !4452, !tbaa !1103
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4452
  %77 = load ptr, ptr %76, align 8, !dbg !4452, !tbaa !1103
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4452
  %79 = load ptr, ptr %78, align 8, !dbg !4452, !tbaa !1103
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4452
  %81 = load ptr, ptr %80, align 8, !dbg !4452, !tbaa !1103
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4452
  %83 = load ptr, ptr %82, align 8, !dbg !4452, !tbaa !1103
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4452
  %85 = load ptr, ptr %84, align 8, !dbg !4452, !tbaa !1103
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4452
  %87 = load ptr, ptr %86, align 8, !dbg !4452, !tbaa !1103
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !4452
  br label %147, !dbg !4453

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.14.200, i32 noundef 5) #39, !dbg !4454
  %91 = load ptr, ptr %4, align 8, !dbg !4454, !tbaa !1103
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4454
  %93 = load ptr, ptr %92, align 8, !dbg !4454, !tbaa !1103
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4454
  %95 = load ptr, ptr %94, align 8, !dbg !4454, !tbaa !1103
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4454
  %97 = load ptr, ptr %96, align 8, !dbg !4454, !tbaa !1103
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4454
  %99 = load ptr, ptr %98, align 8, !dbg !4454, !tbaa !1103
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4454
  %101 = load ptr, ptr %100, align 8, !dbg !4454, !tbaa !1103
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4454
  %103 = load ptr, ptr %102, align 8, !dbg !4454, !tbaa !1103
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4454
  %105 = load ptr, ptr %104, align 8, !dbg !4454, !tbaa !1103
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !4454
  br label %147, !dbg !4455

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.15.201, i32 noundef 5) #39, !dbg !4456
  %109 = load ptr, ptr %4, align 8, !dbg !4456, !tbaa !1103
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4456
  %111 = load ptr, ptr %110, align 8, !dbg !4456, !tbaa !1103
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4456
  %113 = load ptr, ptr %112, align 8, !dbg !4456, !tbaa !1103
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4456
  %115 = load ptr, ptr %114, align 8, !dbg !4456, !tbaa !1103
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4456
  %117 = load ptr, ptr %116, align 8, !dbg !4456, !tbaa !1103
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4456
  %119 = load ptr, ptr %118, align 8, !dbg !4456, !tbaa !1103
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4456
  %121 = load ptr, ptr %120, align 8, !dbg !4456, !tbaa !1103
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4456
  %123 = load ptr, ptr %122, align 8, !dbg !4456, !tbaa !1103
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4456
  %125 = load ptr, ptr %124, align 8, !dbg !4456, !tbaa !1103
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !4456
  br label %147, !dbg !4457

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.16.202, i32 noundef 5) #39, !dbg !4458
  %129 = load ptr, ptr %4, align 8, !dbg !4458, !tbaa !1103
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4458
  %131 = load ptr, ptr %130, align 8, !dbg !4458, !tbaa !1103
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4458
  %133 = load ptr, ptr %132, align 8, !dbg !4458, !tbaa !1103
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4458
  %135 = load ptr, ptr %134, align 8, !dbg !4458, !tbaa !1103
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4458
  %137 = load ptr, ptr %136, align 8, !dbg !4458, !tbaa !1103
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4458
  %139 = load ptr, ptr %138, align 8, !dbg !4458, !tbaa !1103
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4458
  %141 = load ptr, ptr %140, align 8, !dbg !4458, !tbaa !1103
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4458
  %143 = load ptr, ptr %142, align 8, !dbg !4458, !tbaa !1103
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4458
  %145 = load ptr, ptr %144, align 8, !dbg !4458, !tbaa !1103
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !4458
  br label %147, !dbg !4459

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4460
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4461 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4465, metadata !DIExpression()), !dbg !4471
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4466, metadata !DIExpression()), !dbg !4471
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4467, metadata !DIExpression()), !dbg !4471
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4468, metadata !DIExpression()), !dbg !4471
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4469, metadata !DIExpression()), !dbg !4471
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4470, metadata !DIExpression()), !dbg !4471
  br label %6, !dbg !4472

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4474
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4470, metadata !DIExpression()), !dbg !4471
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4475
  %9 = load ptr, ptr %8, align 8, !dbg !4475, !tbaa !1103
  %10 = icmp eq ptr %9, null, !dbg !4477
  %11 = add i64 %7, 1, !dbg !4478
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4470, metadata !DIExpression()), !dbg !4471
  br i1 %10, label %12, label %6, !dbg !4477, !llvm.loop !4479

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4481
  ret void, !dbg !4482
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4483 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !4502
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4500, metadata !DIExpression(), metadata !4502, metadata ptr %6, metadata !DIExpression()), !dbg !4503
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4494, metadata !DIExpression()), !dbg !4503
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4495, metadata !DIExpression()), !dbg !4503
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4496, metadata !DIExpression()), !dbg !4503
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4497, metadata !DIExpression()), !dbg !4503
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4498, metadata !DIExpression()), !dbg !4503
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !4504
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4499, metadata !DIExpression()), !dbg !4503
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4499, metadata !DIExpression()), !dbg !4503
  %10 = icmp ult i32 %9, 41, !dbg !4505
  br i1 %10, label %11, label %16, !dbg !4505

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4505
  %13 = zext nneg i32 %9 to i64, !dbg !4505
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4505
  %15 = add nuw nsw i32 %9, 8, !dbg !4505
  store i32 %15, ptr %4, align 8, !dbg !4505
  br label %19, !dbg !4505

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4505
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4505
  store ptr %18, ptr %7, align 8, !dbg !4505
  br label %19, !dbg !4505

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4505
  %22 = load ptr, ptr %21, align 8, !dbg !4505
  store ptr %22, ptr %6, align 16, !dbg !4508, !tbaa !1103
  %23 = icmp eq ptr %22, null, !dbg !4509
  br i1 %23, label %128, label %24, !dbg !4510

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4499, metadata !DIExpression()), !dbg !4503
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4499, metadata !DIExpression()), !dbg !4503
  %25 = icmp ult i32 %20, 41, !dbg !4505
  br i1 %25, label %29, label %26, !dbg !4505

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4505
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4505
  store ptr %28, ptr %7, align 8, !dbg !4505
  br label %34, !dbg !4505

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4505
  %31 = zext nneg i32 %20 to i64, !dbg !4505
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4505
  %33 = add nuw nsw i32 %20, 8, !dbg !4505
  store i32 %33, ptr %4, align 8, !dbg !4505
  br label %34, !dbg !4505

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4505
  %37 = load ptr, ptr %36, align 8, !dbg !4505
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4511
  store ptr %37, ptr %38, align 8, !dbg !4508, !tbaa !1103
  %39 = icmp eq ptr %37, null, !dbg !4509
  br i1 %39, label %128, label %40, !dbg !4510

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4499, metadata !DIExpression()), !dbg !4503
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4499, metadata !DIExpression()), !dbg !4503
  %41 = icmp ult i32 %35, 41, !dbg !4505
  br i1 %41, label %45, label %42, !dbg !4505

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4505
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4505
  store ptr %44, ptr %7, align 8, !dbg !4505
  br label %50, !dbg !4505

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4505
  %47 = zext nneg i32 %35 to i64, !dbg !4505
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4505
  %49 = add nuw nsw i32 %35, 8, !dbg !4505
  store i32 %49, ptr %4, align 8, !dbg !4505
  br label %50, !dbg !4505

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4505
  %53 = load ptr, ptr %52, align 8, !dbg !4505
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4511
  store ptr %53, ptr %54, align 16, !dbg !4508, !tbaa !1103
  %55 = icmp eq ptr %53, null, !dbg !4509
  br i1 %55, label %128, label %56, !dbg !4510

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4499, metadata !DIExpression()), !dbg !4503
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4499, metadata !DIExpression()), !dbg !4503
  %57 = icmp ult i32 %51, 41, !dbg !4505
  br i1 %57, label %61, label %58, !dbg !4505

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4505
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4505
  store ptr %60, ptr %7, align 8, !dbg !4505
  br label %66, !dbg !4505

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4505
  %63 = zext nneg i32 %51 to i64, !dbg !4505
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4505
  %65 = add nuw nsw i32 %51, 8, !dbg !4505
  store i32 %65, ptr %4, align 8, !dbg !4505
  br label %66, !dbg !4505

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4505
  %69 = load ptr, ptr %68, align 8, !dbg !4505
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4511
  store ptr %69, ptr %70, align 8, !dbg !4508, !tbaa !1103
  %71 = icmp eq ptr %69, null, !dbg !4509
  br i1 %71, label %128, label %72, !dbg !4510

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4499, metadata !DIExpression()), !dbg !4503
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4499, metadata !DIExpression()), !dbg !4503
  %73 = icmp ult i32 %67, 41, !dbg !4505
  br i1 %73, label %77, label %74, !dbg !4505

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4505
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4505
  store ptr %76, ptr %7, align 8, !dbg !4505
  br label %82, !dbg !4505

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4505
  %79 = zext nneg i32 %67 to i64, !dbg !4505
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4505
  %81 = add nuw nsw i32 %67, 8, !dbg !4505
  store i32 %81, ptr %4, align 8, !dbg !4505
  br label %82, !dbg !4505

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4505
  %85 = load ptr, ptr %84, align 8, !dbg !4505
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4511
  store ptr %85, ptr %86, align 16, !dbg !4508, !tbaa !1103
  %87 = icmp eq ptr %85, null, !dbg !4509
  br i1 %87, label %128, label %88, !dbg !4510

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4499, metadata !DIExpression()), !dbg !4503
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4499, metadata !DIExpression()), !dbg !4503
  %89 = icmp ult i32 %83, 41, !dbg !4505
  br i1 %89, label %93, label %90, !dbg !4505

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4505
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4505
  store ptr %92, ptr %7, align 8, !dbg !4505
  br label %98, !dbg !4505

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4505
  %95 = zext nneg i32 %83 to i64, !dbg !4505
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4505
  %97 = add nuw nsw i32 %83, 8, !dbg !4505
  store i32 %97, ptr %4, align 8, !dbg !4505
  br label %98, !dbg !4505

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4505
  %100 = load ptr, ptr %99, align 8, !dbg !4505
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4511
  store ptr %100, ptr %101, align 8, !dbg !4508, !tbaa !1103
  %102 = icmp eq ptr %100, null, !dbg !4509
  br i1 %102, label %128, label %103, !dbg !4510

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4499, metadata !DIExpression()), !dbg !4503
  %104 = load ptr, ptr %7, align 8, !dbg !4505
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4505
  store ptr %105, ptr %7, align 8, !dbg !4505
  %106 = load ptr, ptr %104, align 8, !dbg !4505
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4511
  store ptr %106, ptr %107, align 16, !dbg !4508, !tbaa !1103
  %108 = icmp eq ptr %106, null, !dbg !4509
  br i1 %108, label %128, label %109, !dbg !4510

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4499, metadata !DIExpression()), !dbg !4503
  %110 = load ptr, ptr %7, align 8, !dbg !4505
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4505
  store ptr %111, ptr %7, align 8, !dbg !4505
  %112 = load ptr, ptr %110, align 8, !dbg !4505
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4511
  store ptr %112, ptr %113, align 8, !dbg !4508, !tbaa !1103
  %114 = icmp eq ptr %112, null, !dbg !4509
  br i1 %114, label %128, label %115, !dbg !4510

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4499, metadata !DIExpression()), !dbg !4503
  %116 = load ptr, ptr %7, align 8, !dbg !4505
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4505
  store ptr %117, ptr %7, align 8, !dbg !4505
  %118 = load ptr, ptr %116, align 8, !dbg !4505
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4511
  store ptr %118, ptr %119, align 16, !dbg !4508, !tbaa !1103
  %120 = icmp eq ptr %118, null, !dbg !4509
  br i1 %120, label %128, label %121, !dbg !4510

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4499, metadata !DIExpression()), !dbg !4503
  %122 = load ptr, ptr %7, align 8, !dbg !4505
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4505
  store ptr %123, ptr %7, align 8, !dbg !4505
  %124 = load ptr, ptr %122, align 8, !dbg !4505
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4511
  store ptr %124, ptr %125, align 8, !dbg !4508, !tbaa !1103
  %126 = icmp eq ptr %124, null, !dbg !4509
  %127 = select i1 %126, i64 9, i64 10, !dbg !4510
  br label %128, !dbg !4510

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4512
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4513
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !4514
  ret void, !dbg !4514
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4515 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !4528
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4523, metadata !DIExpression(), metadata !4528, metadata ptr %5, metadata !DIExpression()), !dbg !4529
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4519, metadata !DIExpression()), !dbg !4529
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4520, metadata !DIExpression()), !dbg !4529
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4521, metadata !DIExpression()), !dbg !4529
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4522, metadata !DIExpression()), !dbg !4529
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #39, !dbg !4530
  call void @llvm.va_start(ptr nonnull %5), !dbg !4531
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4532
  call void @llvm.va_end(ptr nonnull %5), !dbg !4533
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #39, !dbg !4534
  ret void, !dbg !4534
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4535 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4536, !tbaa !1103
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.190, ptr noundef %1), !dbg !4536
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.17.207, i32 noundef 5) #39, !dbg !4537
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.208) #39, !dbg !4537
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.19.209, i32 noundef 5) #39, !dbg !4538
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.210, ptr noundef nonnull @.str.21.211) #39, !dbg !4538
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.22.212, i32 noundef 5) #39, !dbg !4539
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.213) #39, !dbg !4539
  ret void, !dbg !4540
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4541 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4546, metadata !DIExpression()), !dbg !4549
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4547, metadata !DIExpression()), !dbg !4549
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4548, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata ptr %0, metadata !4550, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata i64 %1, metadata !4553, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata i64 %2, metadata !4554, metadata !DIExpression()), !dbg !4555
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4557
  call void @llvm.dbg.value(metadata ptr %4, metadata !4558, metadata !DIExpression()), !dbg !4563
  %5 = icmp eq ptr %4, null, !dbg !4565
  br i1 %5, label %6, label %7, !dbg !4567

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4568
  unreachable, !dbg !4568

7:                                                ; preds = %3
  ret ptr %4, !dbg !4569
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4551 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4550, metadata !DIExpression()), !dbg !4570
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4553, metadata !DIExpression()), !dbg !4570
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4554, metadata !DIExpression()), !dbg !4570
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4571
  call void @llvm.dbg.value(metadata ptr %4, metadata !4558, metadata !DIExpression()), !dbg !4572
  %5 = icmp eq ptr %4, null, !dbg !4574
  br i1 %5, label %6, label %7, !dbg !4575

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4576
  unreachable, !dbg !4576

7:                                                ; preds = %3
  ret ptr %4, !dbg !4577
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4578 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4580, metadata !DIExpression()), !dbg !4581
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !4582
  call void @llvm.dbg.value(metadata ptr %2, metadata !4558, metadata !DIExpression()), !dbg !4583
  %3 = icmp eq ptr %2, null, !dbg !4585
  br i1 %3, label %4, label %5, !dbg !4586

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4587
  unreachable, !dbg !4587

5:                                                ; preds = %1
  ret ptr %2, !dbg !4588
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4589 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4593, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.value(metadata i64 %0, metadata !4595, metadata !DIExpression()), !dbg !4599
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !4601
  call void @llvm.dbg.value(metadata ptr %2, metadata !4558, metadata !DIExpression()), !dbg !4602
  %3 = icmp eq ptr %2, null, !dbg !4604
  br i1 %3, label %4, label %5, !dbg !4605

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4606
  unreachable, !dbg !4606

5:                                                ; preds = %1
  ret ptr %2, !dbg !4607
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4608 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4612, metadata !DIExpression()), !dbg !4613
  call void @llvm.dbg.value(metadata i64 %0, metadata !4580, metadata !DIExpression()), !dbg !4614
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !4616
  call void @llvm.dbg.value(metadata ptr %2, metadata !4558, metadata !DIExpression()), !dbg !4617
  %3 = icmp eq ptr %2, null, !dbg !4619
  br i1 %3, label %4, label %5, !dbg !4620

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4621
  unreachable, !dbg !4621

5:                                                ; preds = %1
  ret ptr %2, !dbg !4622
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4623 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4625, metadata !DIExpression()), !dbg !4627
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4626, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata ptr %0, metadata !4628, metadata !DIExpression()), !dbg !4633
  call void @llvm.dbg.value(metadata i64 %1, metadata !4632, metadata !DIExpression()), !dbg !4633
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4635
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !4636
  call void @llvm.dbg.value(metadata ptr %4, metadata !4558, metadata !DIExpression()), !dbg !4637
  %5 = icmp eq ptr %4, null, !dbg !4639
  br i1 %5, label %6, label %7, !dbg !4640

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4641
  unreachable, !dbg !4641

7:                                                ; preds = %2
  ret ptr %4, !dbg !4642
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4643 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4644 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4648, metadata !DIExpression()), !dbg !4650
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4649, metadata !DIExpression()), !dbg !4650
  call void @llvm.dbg.value(metadata ptr %0, metadata !4651, metadata !DIExpression()), !dbg !4655
  call void @llvm.dbg.value(metadata i64 %1, metadata !4654, metadata !DIExpression()), !dbg !4655
  call void @llvm.dbg.value(metadata ptr %0, metadata !4628, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.value(metadata i64 %1, metadata !4632, metadata !DIExpression()), !dbg !4657
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4659
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !4660
  call void @llvm.dbg.value(metadata ptr %4, metadata !4558, metadata !DIExpression()), !dbg !4661
  %5 = icmp eq ptr %4, null, !dbg !4663
  br i1 %5, label %6, label %7, !dbg !4664

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4665
  unreachable, !dbg !4665

7:                                                ; preds = %2
  ret ptr %4, !dbg !4666
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4667 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4671, metadata !DIExpression()), !dbg !4674
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4672, metadata !DIExpression()), !dbg !4674
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4673, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata ptr %0, metadata !4675, metadata !DIExpression()), !dbg !4680
  call void @llvm.dbg.value(metadata i64 %1, metadata !4678, metadata !DIExpression()), !dbg !4680
  call void @llvm.dbg.value(metadata i64 %2, metadata !4679, metadata !DIExpression()), !dbg !4680
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4682
  call void @llvm.dbg.value(metadata ptr %4, metadata !4558, metadata !DIExpression()), !dbg !4683
  %5 = icmp eq ptr %4, null, !dbg !4685
  br i1 %5, label %6, label %7, !dbg !4686

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4687
  unreachable, !dbg !4687

7:                                                ; preds = %3
  ret ptr %4, !dbg !4688
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4689 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4693, metadata !DIExpression()), !dbg !4695
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4694, metadata !DIExpression()), !dbg !4695
  call void @llvm.dbg.value(metadata ptr null, metadata !4550, metadata !DIExpression()), !dbg !4696
  call void @llvm.dbg.value(metadata i64 %0, metadata !4553, metadata !DIExpression()), !dbg !4696
  call void @llvm.dbg.value(metadata i64 %1, metadata !4554, metadata !DIExpression()), !dbg !4696
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4698
  call void @llvm.dbg.value(metadata ptr %3, metadata !4558, metadata !DIExpression()), !dbg !4699
  %4 = icmp eq ptr %3, null, !dbg !4701
  br i1 %4, label %5, label %6, !dbg !4702

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4703
  unreachable, !dbg !4703

6:                                                ; preds = %2
  ret ptr %3, !dbg !4704
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4705 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4709, metadata !DIExpression()), !dbg !4711
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4710, metadata !DIExpression()), !dbg !4711
  call void @llvm.dbg.value(metadata ptr null, metadata !4671, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.value(metadata i64 %0, metadata !4672, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.value(metadata i64 %1, metadata !4673, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.value(metadata ptr null, metadata !4675, metadata !DIExpression()), !dbg !4714
  call void @llvm.dbg.value(metadata i64 %0, metadata !4678, metadata !DIExpression()), !dbg !4714
  call void @llvm.dbg.value(metadata i64 %1, metadata !4679, metadata !DIExpression()), !dbg !4714
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4716
  call void @llvm.dbg.value(metadata ptr %3, metadata !4558, metadata !DIExpression()), !dbg !4717
  %4 = icmp eq ptr %3, null, !dbg !4719
  br i1 %4, label %5, label %6, !dbg !4720

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4721
  unreachable, !dbg !4721

6:                                                ; preds = %2
  ret ptr %3, !dbg !4722
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4723 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4727, metadata !DIExpression()), !dbg !4729
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4728, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.value(metadata ptr %0, metadata !1046, metadata !DIExpression()), !dbg !4730
  call void @llvm.dbg.value(metadata ptr %1, metadata !1047, metadata !DIExpression()), !dbg !4730
  call void @llvm.dbg.value(metadata i64 1, metadata !1048, metadata !DIExpression()), !dbg !4730
  %3 = load i64, ptr %1, align 8, !dbg !4732, !tbaa !1523
  call void @llvm.dbg.value(metadata i64 %3, metadata !1049, metadata !DIExpression()), !dbg !4730
  %4 = icmp eq ptr %0, null, !dbg !4733
  br i1 %4, label %5, label %8, !dbg !4735

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4736
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4739
  br label %15, !dbg !4739

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4740
  %10 = add nuw i64 %9, 1, !dbg !4740
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4740
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4740
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4740
  call void @llvm.dbg.value(metadata i64 %13, metadata !1049, metadata !DIExpression()), !dbg !4730
  br i1 %12, label %14, label %15, !dbg !4743

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !4744
  unreachable, !dbg !4744

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4730
  call void @llvm.dbg.value(metadata i64 %16, metadata !1049, metadata !DIExpression()), !dbg !4730
  call void @llvm.dbg.value(metadata ptr %0, metadata !4550, metadata !DIExpression()), !dbg !4745
  call void @llvm.dbg.value(metadata i64 %16, metadata !4553, metadata !DIExpression()), !dbg !4745
  call void @llvm.dbg.value(metadata i64 1, metadata !4554, metadata !DIExpression()), !dbg !4745
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !4747
  call void @llvm.dbg.value(metadata ptr %17, metadata !4558, metadata !DIExpression()), !dbg !4748
  %18 = icmp eq ptr %17, null, !dbg !4750
  br i1 %18, label %19, label %20, !dbg !4751

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !4752
  unreachable, !dbg !4752

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !1046, metadata !DIExpression()), !dbg !4730
  store i64 %16, ptr %1, align 8, !dbg !4753, !tbaa !1523
  ret ptr %17, !dbg !4754
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1041 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1046, metadata !DIExpression()), !dbg !4755
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1047, metadata !DIExpression()), !dbg !4755
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1048, metadata !DIExpression()), !dbg !4755
  %4 = load i64, ptr %1, align 8, !dbg !4756, !tbaa !1523
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !1049, metadata !DIExpression()), !dbg !4755
  %5 = icmp eq ptr %0, null, !dbg !4757
  br i1 %5, label %6, label %13, !dbg !4758

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4759
  br i1 %7, label %8, label %20, !dbg !4760

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4761
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1049, metadata !DIExpression()), !dbg !4755
  %10 = icmp ugt i64 %2, 128, !dbg !4763
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4764
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1049, metadata !DIExpression()), !dbg !4755
  br label %20, !dbg !4765

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4766
  %15 = add nuw i64 %14, 1, !dbg !4766
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4766
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4766
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4766
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1049, metadata !DIExpression()), !dbg !4755
  br i1 %17, label %19, label %20, !dbg !4767

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !4768
  unreachable, !dbg !4768

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4755
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !1049, metadata !DIExpression()), !dbg !4755
  call void @llvm.dbg.value(metadata ptr %0, metadata !4550, metadata !DIExpression()), !dbg !4769
  call void @llvm.dbg.value(metadata i64 %21, metadata !4553, metadata !DIExpression()), !dbg !4769
  call void @llvm.dbg.value(metadata i64 %2, metadata !4554, metadata !DIExpression()), !dbg !4769
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !4771
  call void @llvm.dbg.value(metadata ptr %22, metadata !4558, metadata !DIExpression()), !dbg !4772
  %23 = icmp eq ptr %22, null, !dbg !4774
  br i1 %23, label %24, label %25, !dbg !4775

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !4776
  unreachable, !dbg !4776

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !1046, metadata !DIExpression()), !dbg !4755
  store i64 %21, ptr %1, align 8, !dbg !4777, !tbaa !1523
  ret ptr %22, !dbg !4778
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !1053 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1060, metadata !DIExpression()), !dbg !4779
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1061, metadata !DIExpression()), !dbg !4779
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1062, metadata !DIExpression()), !dbg !4779
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1063, metadata !DIExpression()), !dbg !4779
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !1064, metadata !DIExpression()), !dbg !4779
  %6 = load i64, ptr %1, align 8, !dbg !4780, !tbaa !1523
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !1065, metadata !DIExpression()), !dbg !4779
  %7 = ashr i64 %6, 1, !dbg !4781
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4781
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4781
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4781
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !1066, metadata !DIExpression()), !dbg !4779
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4783
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1066, metadata !DIExpression()), !dbg !4779
  %12 = icmp sgt i64 %3, -1, !dbg !4784
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4786
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4786
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !1066, metadata !DIExpression()), !dbg !4779
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4787
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4787
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4787
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !1067, metadata !DIExpression()), !dbg !4779
  %18 = icmp slt i64 %17, 128, !dbg !4787
  %19 = select i1 %18, i64 128, i64 0, !dbg !4787
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4787
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !1068, metadata !DIExpression()), !dbg !4779
  %21 = icmp eq i64 %20, 0, !dbg !4788
  br i1 %21, label %26, label %22, !dbg !4790

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !4791
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !1066, metadata !DIExpression()), !dbg !4779
  %24 = srem i64 %20, %4, !dbg !4793
  %25 = sub nsw i64 %20, %24, !dbg !4794
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !1067, metadata !DIExpression()), !dbg !4779
  br label %26, !dbg !4795

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !4779
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !4779
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !1067, metadata !DIExpression()), !dbg !4779
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !1066, metadata !DIExpression()), !dbg !4779
  %29 = icmp eq ptr %0, null, !dbg !4796
  br i1 %29, label %30, label %31, !dbg !4798

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !4799, !tbaa !1523
  br label %31, !dbg !4800

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !4801
  %33 = icmp slt i64 %32, %2, !dbg !4803
  br i1 %33, label %34, label %46, !dbg !4804

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4805
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !4805
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !4805
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !1066, metadata !DIExpression()), !dbg !4779
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !4806
  br i1 %40, label %45, label %41, !dbg !4806

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !4807
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !4807
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !4807
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !1067, metadata !DIExpression()), !dbg !4779
  br i1 %43, label %45, label %46, !dbg !4808

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #41, !dbg !4809
  unreachable, !dbg !4809

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !4779
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !4779
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !1067, metadata !DIExpression()), !dbg !4779
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !1066, metadata !DIExpression()), !dbg !4779
  call void @llvm.dbg.value(metadata ptr %0, metadata !4625, metadata !DIExpression()), !dbg !4810
  call void @llvm.dbg.value(metadata i64 %48, metadata !4626, metadata !DIExpression()), !dbg !4810
  call void @llvm.dbg.value(metadata ptr %0, metadata !4628, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i64 %48, metadata !4632, metadata !DIExpression()), !dbg !4812
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !4814
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #45, !dbg !4815
  call void @llvm.dbg.value(metadata ptr %50, metadata !4558, metadata !DIExpression()), !dbg !4816
  %51 = icmp eq ptr %50, null, !dbg !4818
  br i1 %51, label %52, label %53, !dbg !4819

52:                                               ; preds = %46
  tail call void @xalloc_die() #41, !dbg !4820
  unreachable, !dbg !4820

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !1060, metadata !DIExpression()), !dbg !4779
  store i64 %47, ptr %1, align 8, !dbg !4821, !tbaa !1523
  ret ptr %50, !dbg !4822
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4823 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4825, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata i64 %0, metadata !4827, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata i64 1, metadata !4830, metadata !DIExpression()), !dbg !4831
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4833
  call void @llvm.dbg.value(metadata ptr %2, metadata !4558, metadata !DIExpression()), !dbg !4834
  %3 = icmp eq ptr %2, null, !dbg !4836
  br i1 %3, label %4, label %5, !dbg !4837

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4838
  unreachable, !dbg !4838

5:                                                ; preds = %1
  ret ptr %2, !dbg !4839
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4840 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4828 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4827, metadata !DIExpression()), !dbg !4841
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4830, metadata !DIExpression()), !dbg !4841
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4842
  call void @llvm.dbg.value(metadata ptr %3, metadata !4558, metadata !DIExpression()), !dbg !4843
  %4 = icmp eq ptr %3, null, !dbg !4845
  br i1 %4, label %5, label %6, !dbg !4846

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4847
  unreachable, !dbg !4847

6:                                                ; preds = %2
  ret ptr %3, !dbg !4848
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4849 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4851, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata i64 %0, metadata !4853, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.value(metadata i64 1, metadata !4856, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.value(metadata i64 %0, metadata !4859, metadata !DIExpression()), !dbg !4863
  call void @llvm.dbg.value(metadata i64 1, metadata !4862, metadata !DIExpression()), !dbg !4863
  call void @llvm.dbg.value(metadata i64 %0, metadata !4859, metadata !DIExpression()), !dbg !4863
  call void @llvm.dbg.value(metadata i64 1, metadata !4862, metadata !DIExpression()), !dbg !4863
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4865
  call void @llvm.dbg.value(metadata ptr %2, metadata !4558, metadata !DIExpression()), !dbg !4866
  %3 = icmp eq ptr %2, null, !dbg !4868
  br i1 %3, label %4, label %5, !dbg !4869

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4870
  unreachable, !dbg !4870

5:                                                ; preds = %1
  ret ptr %2, !dbg !4871
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4854 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4853, metadata !DIExpression()), !dbg !4872
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4856, metadata !DIExpression()), !dbg !4872
  call void @llvm.dbg.value(metadata i64 %0, metadata !4859, metadata !DIExpression()), !dbg !4873
  call void @llvm.dbg.value(metadata i64 %1, metadata !4862, metadata !DIExpression()), !dbg !4873
  call void @llvm.dbg.value(metadata i64 %0, metadata !4859, metadata !DIExpression()), !dbg !4873
  call void @llvm.dbg.value(metadata i64 %1, metadata !4862, metadata !DIExpression()), !dbg !4873
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4875
  call void @llvm.dbg.value(metadata ptr %3, metadata !4558, metadata !DIExpression()), !dbg !4876
  %4 = icmp eq ptr %3, null, !dbg !4878
  br i1 %4, label %5, label %6, !dbg !4879

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4880
  unreachable, !dbg !4880

6:                                                ; preds = %2
  ret ptr %3, !dbg !4881
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4882 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4886, metadata !DIExpression()), !dbg !4888
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4887, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata i64 %1, metadata !4580, metadata !DIExpression()), !dbg !4889
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !4891
  call void @llvm.dbg.value(metadata ptr %3, metadata !4558, metadata !DIExpression()), !dbg !4892
  %4 = icmp eq ptr %3, null, !dbg !4894
  br i1 %4, label %5, label %6, !dbg !4895

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4896
  unreachable, !dbg !4896

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4897, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.value(metadata ptr %0, metadata !4900, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.value(metadata i64 %1, metadata !4901, metadata !DIExpression()), !dbg !4902
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4904
  ret ptr %3, !dbg !4905
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4906 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4910, metadata !DIExpression()), !dbg !4912
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4911, metadata !DIExpression()), !dbg !4912
  call void @llvm.dbg.value(metadata i64 %1, metadata !4593, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %1, metadata !4595, metadata !DIExpression()), !dbg !4915
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !4917
  call void @llvm.dbg.value(metadata ptr %3, metadata !4558, metadata !DIExpression()), !dbg !4918
  %4 = icmp eq ptr %3, null, !dbg !4920
  br i1 %4, label %5, label %6, !dbg !4921

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4922
  unreachable, !dbg !4922

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4897, metadata !DIExpression()), !dbg !4923
  call void @llvm.dbg.value(metadata ptr %0, metadata !4900, metadata !DIExpression()), !dbg !4923
  call void @llvm.dbg.value(metadata i64 %1, metadata !4901, metadata !DIExpression()), !dbg !4923
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4925
  ret ptr %3, !dbg !4926
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4927 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4931, metadata !DIExpression()), !dbg !4934
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4932, metadata !DIExpression()), !dbg !4934
  %3 = add nsw i64 %1, 1, !dbg !4935
  call void @llvm.dbg.value(metadata i64 %3, metadata !4593, metadata !DIExpression()), !dbg !4936
  call void @llvm.dbg.value(metadata i64 %3, metadata !4595, metadata !DIExpression()), !dbg !4938
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !4940
  call void @llvm.dbg.value(metadata ptr %4, metadata !4558, metadata !DIExpression()), !dbg !4941
  %5 = icmp eq ptr %4, null, !dbg !4943
  br i1 %5, label %6, label %7, !dbg !4944

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4945
  unreachable, !dbg !4945

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4933, metadata !DIExpression()), !dbg !4934
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4946
  store i8 0, ptr %8, align 1, !dbg !4947, !tbaa !1178
  call void @llvm.dbg.value(metadata ptr %4, metadata !4897, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.value(metadata ptr %0, metadata !4900, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.value(metadata i64 %1, metadata !4901, metadata !DIExpression()), !dbg !4948
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4950
  ret ptr %4, !dbg !4951
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4952 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4954, metadata !DIExpression()), !dbg !4955
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !4956
  %3 = add i64 %2, 1, !dbg !4957
  call void @llvm.dbg.value(metadata ptr %0, metadata !4886, metadata !DIExpression()), !dbg !4958
  call void @llvm.dbg.value(metadata i64 %3, metadata !4887, metadata !DIExpression()), !dbg !4958
  call void @llvm.dbg.value(metadata i64 %3, metadata !4580, metadata !DIExpression()), !dbg !4960
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !4962
  call void @llvm.dbg.value(metadata ptr %4, metadata !4558, metadata !DIExpression()), !dbg !4963
  %5 = icmp eq ptr %4, null, !dbg !4965
  br i1 %5, label %6, label %7, !dbg !4966

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4967
  unreachable, !dbg !4967

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4897, metadata !DIExpression()), !dbg !4968
  call void @llvm.dbg.value(metadata ptr %0, metadata !4900, metadata !DIExpression()), !dbg !4968
  call void @llvm.dbg.value(metadata i64 %3, metadata !4901, metadata !DIExpression()), !dbg !4968
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !4970
  ret ptr %4, !dbg !4971
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4972 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4977, !tbaa !1169
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4974, metadata !DIExpression()), !dbg !4978
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.226, ptr noundef nonnull @.str.2.227, i32 noundef 5) #39, !dbg !4977
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.228, ptr noundef %2) #39, !dbg !4977
  %3 = icmp eq i32 %1, 0, !dbg !4977
  tail call void @llvm.assume(i1 %3), !dbg !4977
  tail call void @abort() #41, !dbg !4979
  unreachable, !dbg !4979
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #36

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4980 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5018, metadata !DIExpression()), !dbg !5023
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !5024
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5019, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5023
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5025, metadata !DIExpression()), !dbg !5028
  %3 = load i32, ptr %0, align 8, !dbg !5030, !tbaa !1567
  %4 = and i32 %3, 32, !dbg !5031
  %5 = icmp eq i32 %4, 0, !dbg !5031
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !5021, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5023
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !5032
  %7 = icmp eq i32 %6, 0, !dbg !5033
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !5022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5023
  br i1 %5, label %8, label %18, !dbg !5034

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5036
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !5019, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5023
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5037
  %11 = xor i1 %7, true, !dbg !5037
  %12 = sext i1 %11 to i32, !dbg !5037
  br i1 %10, label %21, label %13, !dbg !5037

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !5038
  %15 = load i32, ptr %14, align 4, !dbg !5038, !tbaa !1169
  %16 = icmp ne i32 %15, 9, !dbg !5039
  %17 = sext i1 %16 to i32, !dbg !5040
  br label %21, !dbg !5040

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5041

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !5043
  store i32 0, ptr %20, align 4, !dbg !5045, !tbaa !1169
  br label %21, !dbg !5043

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5023
  ret i32 %22, !dbg !5046
}

; Function Attrs: nounwind
declare !dbg !5047 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5050 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5055, metadata !DIExpression()), !dbg !5060
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5056, metadata !DIExpression()), !dbg !5060
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5057, metadata !DIExpression()), !dbg !5060
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5058, metadata !DIExpression()), !dbg !5060
  %5 = icmp eq ptr %1, null, !dbg !5061
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5063
  %7 = select i1 %5, ptr @.str.233, ptr %1, !dbg !5063
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5063
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !5057, metadata !DIExpression()), !dbg !5060
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !5056, metadata !DIExpression()), !dbg !5060
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !5055, metadata !DIExpression()), !dbg !5060
  %9 = icmp eq ptr %3, null, !dbg !5064
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5066
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !5058, metadata !DIExpression()), !dbg !5060
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #39, !dbg !5067
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !5059, metadata !DIExpression()), !dbg !5060
  %12 = icmp ult i64 %11, -3, !dbg !5068
  br i1 %12, label %13, label %17, !dbg !5070

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #40, !dbg !5071
  %15 = icmp eq i32 %14, 0, !dbg !5071
  br i1 %15, label %16, label %29, !dbg !5072

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5073, metadata !DIExpression()), !dbg !5078
  call void @llvm.dbg.value(metadata ptr %10, metadata !5080, metadata !DIExpression()), !dbg !5085
  call void @llvm.dbg.value(metadata i32 0, metadata !5083, metadata !DIExpression()), !dbg !5085
  call void @llvm.dbg.value(metadata i64 8, metadata !5084, metadata !DIExpression()), !dbg !5085
  store i64 0, ptr %10, align 1, !dbg !5087
  br label %29, !dbg !5088

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5089
  br i1 %18, label %19, label %20, !dbg !5091

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !5092
  unreachable, !dbg !5092

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5093

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #39, !dbg !5095
  br i1 %23, label %29, label %24, !dbg !5096

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5097
  br i1 %25, label %29, label %26, !dbg !5100

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5101, !tbaa !1178
  %28 = zext i8 %27 to i32, !dbg !5102
  store i32 %28, ptr %6, align 4, !dbg !5103, !tbaa !1169
  br label %29, !dbg !5104

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5060
  ret i64 %30, !dbg !5105
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5106 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !5112 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5114, metadata !DIExpression()), !dbg !5118
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5115, metadata !DIExpression()), !dbg !5118
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5116, metadata !DIExpression()), !dbg !5118
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !5119
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !5119
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5117, metadata !DIExpression()), !dbg !5118
  br i1 %5, label %6, label %8, !dbg !5121

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #42, !dbg !5122
  store i32 12, ptr %7, align 4, !dbg !5124, !tbaa !1169
  br label %12, !dbg !5125

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !5119
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !5117, metadata !DIExpression()), !dbg !5118
  call void @llvm.dbg.value(metadata ptr %0, metadata !5126, metadata !DIExpression()), !dbg !5130
  call void @llvm.dbg.value(metadata i64 %9, metadata !5129, metadata !DIExpression()), !dbg !5130
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !5132
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #45, !dbg !5133
  br label %12, !dbg !5134

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !5118
  ret ptr %13, !dbg !5135
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5136 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !5143
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5139, metadata !DIExpression(), metadata !5143, metadata ptr %2, metadata !DIExpression()), !dbg !5144
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5138, metadata !DIExpression()), !dbg !5144
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !5145
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !5146
  %4 = icmp eq i32 %3, 0, !dbg !5146
  br i1 %4, label %5, label %12, !dbg !5148

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5149, metadata !DIExpression()), !dbg !5153
  call void @llvm.dbg.value(metadata !1136, metadata !5152, metadata !DIExpression()), !dbg !5153
  %6 = load i16, ptr %2, align 16, !dbg !5156
  %7 = icmp eq i16 %6, 67, !dbg !5156
  br i1 %7, label %11, label %8, !dbg !5157

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5149, metadata !DIExpression()), !dbg !5158
  call void @llvm.dbg.value(metadata ptr @.str.1.238, metadata !5152, metadata !DIExpression()), !dbg !5158
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.238, i64 6), !dbg !5160
  %10 = icmp eq i32 %9, 0, !dbg !5161
  br i1 %10, label %11, label %12, !dbg !5162

11:                                               ; preds = %8, %5
  br label %12, !dbg !5163

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5144
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !5164
  ret i1 %13, !dbg !5164
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5165 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5169, metadata !DIExpression()), !dbg !5172
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5170, metadata !DIExpression()), !dbg !5172
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5171, metadata !DIExpression()), !dbg !5172
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !5173
  ret i32 %4, !dbg !5174
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5175 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5179, metadata !DIExpression()), !dbg !5180
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !5181
  ret ptr %2, !dbg !5182
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5183 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5185, metadata !DIExpression()), !dbg !5187
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5188
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5186, metadata !DIExpression()), !dbg !5187
  ret ptr %2, !dbg !5189
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5190 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5192, metadata !DIExpression()), !dbg !5199
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5193, metadata !DIExpression()), !dbg !5199
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5194, metadata !DIExpression()), !dbg !5199
  call void @llvm.dbg.value(metadata i32 %0, metadata !5185, metadata !DIExpression()), !dbg !5200
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5202
  call void @llvm.dbg.value(metadata ptr %4, metadata !5186, metadata !DIExpression()), !dbg !5200
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5195, metadata !DIExpression()), !dbg !5199
  %5 = icmp eq ptr %4, null, !dbg !5203
  br i1 %5, label %6, label %9, !dbg !5204

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5205
  br i1 %7, label %19, label %8, !dbg !5208

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5209, !tbaa !1178
  br label %19, !dbg !5210

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !5211
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5196, metadata !DIExpression()), !dbg !5212
  %11 = icmp ult i64 %10, %2, !dbg !5213
  br i1 %11, label %12, label %14, !dbg !5215

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5216
  call void @llvm.dbg.value(metadata ptr %1, metadata !5218, metadata !DIExpression()), !dbg !5223
  call void @llvm.dbg.value(metadata ptr %4, metadata !5221, metadata !DIExpression()), !dbg !5223
  call void @llvm.dbg.value(metadata i64 %13, metadata !5222, metadata !DIExpression()), !dbg !5223
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #39, !dbg !5225
  br label %19, !dbg !5226

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5227
  br i1 %15, label %19, label %16, !dbg !5230

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5231
  call void @llvm.dbg.value(metadata ptr %1, metadata !5218, metadata !DIExpression()), !dbg !5233
  call void @llvm.dbg.value(metadata ptr %4, metadata !5221, metadata !DIExpression()), !dbg !5233
  call void @llvm.dbg.value(metadata i64 %17, metadata !5222, metadata !DIExpression()), !dbg !5233
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !5235
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5236
  store i8 0, ptr %18, align 1, !dbg !5237, !tbaa !1178
  br label %19, !dbg !5238

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5239
  ret i32 %20, !dbg !5240
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
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #23 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind willreturn memory(argmem: read) }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #37 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { noreturn }
attributes #44 = { cold }
attributes #45 = { nounwind allocsize(1) }
attributes #46 = { nounwind allocsize(0) }
attributes #47 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!76, !678, !1012, !1015, !682, !697, !980, !1020, !1022, !1025, !1027, !1029, !748, !760, !774, !822, !1031, !972, !1037, !1070, !1072, !996, !1074, !1076, !1080, !1082}
!llvm.ident = !{!1084, !1084, !1084, !1084, !1084, !1084, !1084, !1084, !1084, !1084, !1084, !1084, !1084, !1084, !1084, !1084, !1084, !1084, !1084, !1084, !1084, !1084, !1084, !1084, !1084, !1084}
!llvm.module.flags = !{!1085, !1086, !1087, !1088, !1089, !1090, !1091}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/dircolors.c", directory: "/src", checksumkind: CSK_MD5, checksum: "670b95ccf0215cde2984ed04e905f87d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!86 = !DIEnumerator(name: "PRINT_LS_COLORS_OPTION", value: 128)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 337, baseType: !89, size: 32, elements: !90)
!88 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!89 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!90 = !{!91, !92}
!91 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!92 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
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
!115 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !118)
!117 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!141 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!665 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!696 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !697, file: !698, line: 66, type: !740, isLocal: false, isDefinition: true)
!697 = distinct !DICompileUnit(language: DW_LANG_C11, file: !698, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !699, globals: !700, splitDebugInlining: false, nameTableKind: None)
!698 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!699 = !{!161, !223}
!700 = !{!701, !703, !722, !724, !726, !728, !695, !730, !732, !734, !736, !738}
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !698, line: 272, type: !361, isLocal: true, isDefinition: true)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(name: "old_file_name", scope: !705, file: !698, line: 304, type: !171, isLocal: true, isDefinition: true)
!705 = distinct !DISubprogram(name: "verror_at_line", scope: !698, file: !698, line: 298, type: !706, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !715)
!706 = !DISubroutineType(types: !707)
!707 = !{null, !89, !89, !171, !79, !171, !708}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !710)
!710 = !{!711, !712, !713, !714}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !709, file: !698, baseType: !79, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !709, file: !698, baseType: !79, size: 32, offset: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !709, file: !698, baseType: !161, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !709, file: !698, baseType: !161, size: 64, offset: 128)
!715 = !{!716, !717, !718, !719, !720, !721}
!716 = !DILocalVariable(name: "status", arg: 1, scope: !705, file: !698, line: 298, type: !89)
!717 = !DILocalVariable(name: "errnum", arg: 2, scope: !705, file: !698, line: 298, type: !89)
!718 = !DILocalVariable(name: "file_name", arg: 3, scope: !705, file: !698, line: 298, type: !171)
!719 = !DILocalVariable(name: "line_number", arg: 4, scope: !705, file: !698, line: 298, type: !79)
!720 = !DILocalVariable(name: "message", arg: 5, scope: !705, file: !698, line: 298, type: !171)
!721 = !DILocalVariable(name: "args", arg: 6, scope: !705, file: !698, line: 298, type: !708)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(name: "old_line_number", scope: !705, file: !698, line: 305, type: !79, isLocal: true, isDefinition: true)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(scope: null, file: !698, line: 338, type: !71, isLocal: true, isDefinition: true)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !698, line: 346, type: !397, isLocal: true, isDefinition: true)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !698, line: 346, type: !375, isLocal: true, isDefinition: true)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(name: "error_message_count", scope: !697, file: !698, line: 69, type: !79, isLocal: false, isDefinition: true)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !697, file: !698, line: 295, type: !89, isLocal: false, isDefinition: true)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !698, line: 208, type: !392, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !698, line: 208, type: !263, isLocal: true, isDefinition: true)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !698, line: 214, type: !361, isLocal: true, isDefinition: true)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{null}
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !745, line: 40, type: !19, isLocal: true, isDefinition: true)
!745 = !DIFile(filename: "lib/freopen-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "380f3eea209580e07073525fbfd0dac5")
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(name: "obstack_alloc_failed_handler", scope: !748, file: !749, line: 53, type: !740, isLocal: false, isDefinition: true)
!748 = distinct !DICompileUnit(language: DW_LANG_C11, file: !749, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-obstack.o -MD -MP -MF lib/.deps/libcoreutils_a-obstack.Tpo -c lib/obstack.c -o lib/.libcoreutils_a-obstack.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !750, globals: !751, splitDebugInlining: false, nameTableKind: None)
!749 = !DIFile(filename: "lib/obstack.c", directory: "/src", checksumkind: CSK_MD5, checksum: "47f5bbc27e7c2d5a5cc3aab9403d8d27")
!750 = !{!161, !121, !165}
!751 = !{!746, !752, !754, !756}
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(scope: null, file: !749, line: 353, type: !71, isLocal: true, isDefinition: true)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(scope: null, file: !749, line: 353, type: !392, isLocal: true, isDefinition: true)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !749, line: 353, type: !244, isLocal: true, isDefinition: true)
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(name: "program_name", scope: !760, file: !761, line: 31, type: !171, isLocal: false, isDefinition: true)
!760 = distinct !DICompileUnit(language: DW_LANG_C11, file: !761, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !762, globals: !763, splitDebugInlining: false, nameTableKind: None)
!761 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!762 = !{!161, !121}
!763 = !{!758, !764, !766}
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(scope: null, file: !761, line: 46, type: !397, isLocal: true, isDefinition: true)
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(scope: null, file: !761, line: 49, type: !71, isLocal: true, isDefinition: true)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(name: "utf07FF", scope: !770, file: !771, line: 46, type: !798, isLocal: true, isDefinition: true)
!770 = distinct !DISubprogram(name: "proper_name_lite", scope: !771, file: !771, line: 38, type: !772, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !776)
!771 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!772 = !DISubroutineType(types: !773)
!773 = !{!171, !171, !171}
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !771, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !775, splitDebugInlining: false, nameTableKind: None)
!775 = !{!768}
!776 = !{!777, !778, !779, !780, !785}
!777 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !770, file: !771, line: 38, type: !171)
!778 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !770, file: !771, line: 38, type: !171)
!779 = !DILocalVariable(name: "translation", scope: !770, file: !771, line: 40, type: !171)
!780 = !DILocalVariable(name: "w", scope: !770, file: !771, line: 47, type: !781)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !782, line: 37, baseType: !783)
!782 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !141, line: 57, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !141, line: 42, baseType: !79)
!785 = !DILocalVariable(name: "mbs", scope: !770, file: !771, line: 48, type: !786)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !787, line: 6, baseType: !788)
!787 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !789, line: 21, baseType: !790)
!789 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !789, line: 13, size: 64, elements: !791)
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !790, file: !789, line: 15, baseType: !89, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !790, file: !789, line: 20, baseType: !794, size: 32, offset: 32)
!794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !790, file: !789, line: 16, size: 32, elements: !795)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !794, file: !789, line: 18, baseType: !79, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !794, file: !789, line: 19, baseType: !71, size: 32)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 16, elements: !376)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(scope: null, file: !801, line: 78, type: !397, isLocal: true, isDefinition: true)
!801 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(scope: null, file: !801, line: 79, type: !370, isLocal: true, isDefinition: true)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(scope: null, file: !801, line: 80, type: !467, isLocal: true, isDefinition: true)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(scope: null, file: !801, line: 81, type: !467, isLocal: true, isDefinition: true)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(scope: null, file: !801, line: 82, type: !168, isLocal: true, isDefinition: true)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(scope: null, file: !801, line: 83, type: !375, isLocal: true, isDefinition: true)
!812 = !DIGlobalVariableExpression(var: !813, expr: !DIExpression())
!813 = distinct !DIGlobalVariable(scope: null, file: !801, line: 84, type: !397, isLocal: true, isDefinition: true)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(scope: null, file: !801, line: 85, type: !392, isLocal: true, isDefinition: true)
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(scope: null, file: !801, line: 86, type: !392, isLocal: true, isDefinition: true)
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(scope: null, file: !801, line: 87, type: !397, isLocal: true, isDefinition: true)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !822, file: !801, line: 76, type: !896, isLocal: false, isDefinition: true)
!822 = distinct !DICompileUnit(language: DW_LANG_C11, file: !801, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !823, retainedTypes: !831, globals: !832, splitDebugInlining: false, nameTableKind: None)
!823 = !{!824, !826, !93}
!824 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !825, line: 42, baseType: !79, size: 32, elements: !210)
!825 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!826 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !825, line: 254, baseType: !79, size: 32, elements: !827)
!827 = !{!828, !829, !830}
!828 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!829 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!830 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!831 = !{!161, !89, !144, !163}
!832 = !{!799, !802, !804, !806, !808, !810, !812, !814, !816, !818, !820, !833, !837, !847, !849, !854, !856, !858, !860, !862, !885, !892, !894}
!833 = !DIGlobalVariableExpression(var: !834, expr: !DIExpression())
!834 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !822, file: !801, line: 92, type: !835, isLocal: false, isDefinition: true)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !836, size: 320, elements: !20)
!836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !824)
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression())
!838 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !822, file: !801, line: 1040, type: !839, isLocal: false, isDefinition: true)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !801, line: 56, size: 448, elements: !840)
!840 = !{!841, !842, !843, !845, !846}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !839, file: !801, line: 59, baseType: !824, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !839, file: !801, line: 62, baseType: !89, size: 32, offset: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !839, file: !801, line: 66, baseType: !844, size: 256, offset: 64)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 256, elements: !398)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !839, file: !801, line: 69, baseType: !171, size: 64, offset: 320)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !839, file: !801, line: 72, baseType: !171, size: 64, offset: 384)
!847 = !DIGlobalVariableExpression(var: !848, expr: !DIExpression())
!848 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !822, file: !801, line: 107, type: !839, isLocal: true, isDefinition: true)
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(name: "slot0", scope: !822, file: !801, line: 831, type: !851, isLocal: true, isDefinition: true)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !852)
!852 = !{!853}
!853 = !DISubrange(count: 256)
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(scope: null, file: !801, line: 321, type: !375, isLocal: true, isDefinition: true)
!856 = !DIGlobalVariableExpression(var: !857, expr: !DIExpression())
!857 = distinct !DIGlobalVariable(scope: null, file: !801, line: 357, type: !375, isLocal: true, isDefinition: true)
!858 = !DIGlobalVariableExpression(var: !859, expr: !DIExpression())
!859 = distinct !DIGlobalVariable(scope: null, file: !801, line: 358, type: !375, isLocal: true, isDefinition: true)
!860 = !DIGlobalVariableExpression(var: !861, expr: !DIExpression())
!861 = distinct !DIGlobalVariable(scope: null, file: !801, line: 199, type: !392, isLocal: true, isDefinition: true)
!862 = !DIGlobalVariableExpression(var: !863, expr: !DIExpression())
!863 = distinct !DIGlobalVariable(name: "quote", scope: !864, file: !801, line: 228, type: !883, isLocal: true, isDefinition: true)
!864 = distinct !DISubprogram(name: "gettext_quote", scope: !801, file: !801, line: 197, type: !865, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !867)
!865 = !DISubroutineType(types: !866)
!866 = !{!171, !171, !824}
!867 = !{!868, !869, !870, !871, !872}
!868 = !DILocalVariable(name: "msgid", arg: 1, scope: !864, file: !801, line: 197, type: !171)
!869 = !DILocalVariable(name: "s", arg: 2, scope: !864, file: !801, line: 197, type: !824)
!870 = !DILocalVariable(name: "translation", scope: !864, file: !801, line: 199, type: !171)
!871 = !DILocalVariable(name: "w", scope: !864, file: !801, line: 229, type: !781)
!872 = !DILocalVariable(name: "mbs", scope: !864, file: !801, line: 230, type: !873)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !787, line: 6, baseType: !874)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !789, line: 21, baseType: !875)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !789, line: 13, size: 64, elements: !876)
!876 = !{!877, !878}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !875, file: !789, line: 15, baseType: !89, size: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !875, file: !789, line: 20, baseType: !879, size: 32, offset: 32)
!879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !875, file: !789, line: 16, size: 32, elements: !880)
!880 = !{!881, !882}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !879, file: !789, line: 18, baseType: !79, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !879, file: !789, line: 19, baseType: !71, size: 32)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 64, elements: !884)
!884 = !{!377, !73}
!885 = !DIGlobalVariableExpression(var: !886, expr: !DIExpression())
!886 = distinct !DIGlobalVariable(name: "slotvec", scope: !822, file: !801, line: 834, type: !887, isLocal: true, isDefinition: true)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !801, line: 823, size: 128, elements: !889)
!889 = !{!890, !891}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !888, file: !801, line: 825, baseType: !163, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !888, file: !801, line: 826, baseType: !121, size: 64, offset: 64)
!892 = !DIGlobalVariableExpression(var: !893, expr: !DIExpression())
!893 = distinct !DIGlobalVariable(name: "nslots", scope: !822, file: !801, line: 832, type: !89, isLocal: true, isDefinition: true)
!894 = !DIGlobalVariableExpression(var: !895, expr: !DIExpression())
!895 = distinct !DIGlobalVariable(name: "slotvec0", scope: !822, file: !801, line: 833, type: !888, isLocal: true, isDefinition: true)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 704, elements: !522)
!897 = !DIGlobalVariableExpression(var: !898, expr: !DIExpression())
!898 = distinct !DIGlobalVariable(scope: null, file: !899, line: 67, type: !258, isLocal: true, isDefinition: true)
!899 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!900 = !DIGlobalVariableExpression(var: !901, expr: !DIExpression())
!901 = distinct !DIGlobalVariable(scope: null, file: !899, line: 69, type: !392, isLocal: true, isDefinition: true)
!902 = !DIGlobalVariableExpression(var: !903, expr: !DIExpression())
!903 = distinct !DIGlobalVariable(scope: null, file: !899, line: 83, type: !392, isLocal: true, isDefinition: true)
!904 = !DIGlobalVariableExpression(var: !905, expr: !DIExpression())
!905 = distinct !DIGlobalVariable(scope: null, file: !899, line: 83, type: !71, isLocal: true, isDefinition: true)
!906 = !DIGlobalVariableExpression(var: !907, expr: !DIExpression())
!907 = distinct !DIGlobalVariable(scope: null, file: !899, line: 85, type: !375, isLocal: true, isDefinition: true)
!908 = !DIGlobalVariableExpression(var: !909, expr: !DIExpression())
!909 = distinct !DIGlobalVariable(scope: null, file: !899, line: 88, type: !910, isLocal: true, isDefinition: true)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !911)
!911 = !{!912}
!912 = !DISubrange(count: 171)
!913 = !DIGlobalVariableExpression(var: !914, expr: !DIExpression())
!914 = distinct !DIGlobalVariable(scope: null, file: !899, line: 88, type: !915, isLocal: true, isDefinition: true)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !916)
!916 = !{!917}
!917 = !DISubrange(count: 34)
!918 = !DIGlobalVariableExpression(var: !919, expr: !DIExpression())
!919 = distinct !DIGlobalVariable(scope: null, file: !899, line: 105, type: !436, isLocal: true, isDefinition: true)
!920 = !DIGlobalVariableExpression(var: !921, expr: !DIExpression())
!921 = distinct !DIGlobalVariable(scope: null, file: !899, line: 109, type: !922, isLocal: true, isDefinition: true)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !923)
!923 = !{!924}
!924 = !DISubrange(count: 23)
!925 = !DIGlobalVariableExpression(var: !926, expr: !DIExpression())
!926 = distinct !DIGlobalVariable(scope: null, file: !899, line: 113, type: !927, isLocal: true, isDefinition: true)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !928)
!928 = !{!929}
!929 = !DISubrange(count: 28)
!930 = !DIGlobalVariableExpression(var: !931, expr: !DIExpression())
!931 = distinct !DIGlobalVariable(scope: null, file: !899, line: 120, type: !516, isLocal: true, isDefinition: true)
!932 = !DIGlobalVariableExpression(var: !933, expr: !DIExpression())
!933 = distinct !DIGlobalVariable(scope: null, file: !899, line: 127, type: !934, isLocal: true, isDefinition: true)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !935)
!935 = !{!936}
!936 = !DISubrange(count: 36)
!937 = !DIGlobalVariableExpression(var: !938, expr: !DIExpression())
!938 = distinct !DIGlobalVariable(scope: null, file: !899, line: 134, type: !416, isLocal: true, isDefinition: true)
!939 = !DIGlobalVariableExpression(var: !940, expr: !DIExpression())
!940 = distinct !DIGlobalVariable(scope: null, file: !899, line: 142, type: !502, isLocal: true, isDefinition: true)
!941 = !DIGlobalVariableExpression(var: !942, expr: !DIExpression())
!942 = distinct !DIGlobalVariable(scope: null, file: !899, line: 150, type: !943, isLocal: true, isDefinition: true)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !944)
!944 = !{!945}
!945 = !DISubrange(count: 48)
!946 = !DIGlobalVariableExpression(var: !947, expr: !DIExpression())
!947 = distinct !DIGlobalVariable(scope: null, file: !899, line: 159, type: !948, isLocal: true, isDefinition: true)
!948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !949)
!949 = !{!950}
!950 = !DISubrange(count: 52)
!951 = !DIGlobalVariableExpression(var: !952, expr: !DIExpression())
!952 = distinct !DIGlobalVariable(scope: null, file: !899, line: 170, type: !251, isLocal: true, isDefinition: true)
!953 = !DIGlobalVariableExpression(var: !954, expr: !DIExpression())
!954 = distinct !DIGlobalVariable(scope: null, file: !899, line: 248, type: !168, isLocal: true, isDefinition: true)
!955 = !DIGlobalVariableExpression(var: !956, expr: !DIExpression())
!956 = distinct !DIGlobalVariable(scope: null, file: !899, line: 248, type: !441, isLocal: true, isDefinition: true)
!957 = !DIGlobalVariableExpression(var: !958, expr: !DIExpression())
!958 = distinct !DIGlobalVariable(scope: null, file: !899, line: 254, type: !168, isLocal: true, isDefinition: true)
!959 = !DIGlobalVariableExpression(var: !960, expr: !DIExpression())
!960 = distinct !DIGlobalVariable(scope: null, file: !899, line: 254, type: !227, isLocal: true, isDefinition: true)
!961 = !DIGlobalVariableExpression(var: !962, expr: !DIExpression())
!962 = distinct !DIGlobalVariable(scope: null, file: !899, line: 254, type: !416, isLocal: true, isDefinition: true)
!963 = !DIGlobalVariableExpression(var: !964, expr: !DIExpression())
!964 = distinct !DIGlobalVariable(scope: null, file: !899, line: 259, type: !3, isLocal: true, isDefinition: true)
!965 = !DIGlobalVariableExpression(var: !966, expr: !DIExpression())
!966 = distinct !DIGlobalVariable(scope: null, file: !899, line: 259, type: !967, isLocal: true, isDefinition: true)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !968)
!968 = !{!969}
!969 = !DISubrange(count: 29)
!970 = !DIGlobalVariableExpression(var: !971, expr: !DIExpression())
!971 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !972, file: !973, line: 26, type: !975, isLocal: false, isDefinition: true)
!972 = distinct !DICompileUnit(language: DW_LANG_C11, file: !973, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !974, splitDebugInlining: false, nameTableKind: None)
!973 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!974 = !{!970}
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 376, elements: !976)
!976 = !{!977}
!977 = !DISubrange(count: 47)
!978 = !DIGlobalVariableExpression(var: !979, expr: !DIExpression())
!979 = distinct !DIGlobalVariable(name: "exit_failure", scope: !980, file: !981, line: 24, type: !983, isLocal: false, isDefinition: true)
!980 = distinct !DICompileUnit(language: DW_LANG_C11, file: !981, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !982, splitDebugInlining: false, nameTableKind: None)
!981 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!982 = !{!978}
!983 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !89)
!984 = !DIGlobalVariableExpression(var: !985, expr: !DIExpression())
!985 = distinct !DIGlobalVariable(scope: null, file: !986, line: 34, type: !273, isLocal: true, isDefinition: true)
!986 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!987 = !DIGlobalVariableExpression(var: !988, expr: !DIExpression())
!988 = distinct !DIGlobalVariable(scope: null, file: !986, line: 34, type: !392, isLocal: true, isDefinition: true)
!989 = !DIGlobalVariableExpression(var: !990, expr: !DIExpression())
!990 = distinct !DIGlobalVariable(scope: null, file: !986, line: 34, type: !244, isLocal: true, isDefinition: true)
!991 = !DIGlobalVariableExpression(var: !992, expr: !DIExpression())
!992 = distinct !DIGlobalVariable(scope: null, file: !993, line: 108, type: !59, isLocal: true, isDefinition: true)
!993 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!994 = !DIGlobalVariableExpression(var: !995, expr: !DIExpression())
!995 = distinct !DIGlobalVariable(name: "internal_state", scope: !996, file: !993, line: 97, type: !999, isLocal: true, isDefinition: true)
!996 = distinct !DICompileUnit(language: DW_LANG_C11, file: !993, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !997, globals: !998, splitDebugInlining: false, nameTableKind: None)
!997 = !{!161, !163, !223}
!998 = !{!991, !994}
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !787, line: 6, baseType: !1000)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !789, line: 21, baseType: !1001)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !789, line: 13, size: 64, elements: !1002)
!1002 = !{!1003, !1004}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1001, file: !789, line: 15, baseType: !89, size: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1001, file: !789, line: 20, baseType: !1005, size: 32, offset: 32)
!1005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1001, file: !789, line: 16, size: 32, elements: !1006)
!1006 = !{!1007, !1008}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1005, file: !789, line: 18, baseType: !79, size: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1005, file: !789, line: 19, baseType: !71, size: 32)
!1009 = !DIGlobalVariableExpression(var: !1010, expr: !DIExpression())
!1010 = distinct !DIGlobalVariable(scope: null, file: !1011, line: 35, type: !370, isLocal: true, isDefinition: true)
!1011 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!1012 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1013, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-basename-lgpl.o -MD -MP -MF lib/.deps/libcoreutils_a-basename-lgpl.Tpo -c lib/basename-lgpl.c -o lib/.libcoreutils_a-basename-lgpl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1014, splitDebugInlining: false, nameTableKind: None)
!1013 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!1014 = !{!121}
!1015 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1016, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-c-strcasecmp.o -MD -MP -MF lib/.deps/libcoreutils_a-c-strcasecmp.Tpo -c lib/c-strcasecmp.c -o lib/.libcoreutils_a-c-strcasecmp.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1017, splitDebugInlining: false, nameTableKind: None)
!1016 = !DIFile(filename: "lib/c-strcasecmp.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7d8203371740f321f2a78256f94ab3b7")
!1017 = !{!1018}
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!1020 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1021, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1021 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!1022 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1023, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1024, splitDebugInlining: false, nameTableKind: None)
!1023 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!1024 = !{!161}
!1025 = distinct !DICompileUnit(language: DW_LANG_C11, file: !745, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-freopen-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-freopen-safer.Tpo -c lib/freopen-safer.c -o lib/.libcoreutils_a-freopen-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !1026, splitDebugInlining: false, nameTableKind: None)
!1026 = !{!743}
!1027 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1028, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1024, splitDebugInlining: false, nameTableKind: None)
!1028 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!1029 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1030, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1030 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!1031 = distinct !DICompileUnit(language: DW_LANG_C11, file: !899, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !1032, retainedTypes: !1024, globals: !1036, splitDebugInlining: false, nameTableKind: None)
!1032 = !{!1033}
!1033 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !899, line: 40, baseType: !79, size: 32, elements: !1034)
!1034 = !{!1035}
!1035 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!1036 = !{!897, !900, !902, !904, !906, !908, !913, !918, !920, !925, !930, !932, !937, !939, !941, !946, !951, !953, !955, !957, !959, !961, !963, !965}
!1037 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1038, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !1039, retainedTypes: !1069, splitDebugInlining: false, nameTableKind: None)
!1038 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!1039 = !{!1040, !1052}
!1040 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1041, file: !1038, line: 188, baseType: !79, size: 32, elements: !1050)
!1041 = distinct !DISubprogram(name: "x2nrealloc", scope: !1038, file: !1038, line: 176, type: !1042, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !1045)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!161, !161, !1044, !163}
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!1045 = !{!1046, !1047, !1048, !1049}
!1046 = !DILocalVariable(name: "p", arg: 1, scope: !1041, file: !1038, line: 176, type: !161)
!1047 = !DILocalVariable(name: "pn", arg: 2, scope: !1041, file: !1038, line: 176, type: !1044)
!1048 = !DILocalVariable(name: "s", arg: 3, scope: !1041, file: !1038, line: 176, type: !163)
!1049 = !DILocalVariable(name: "n", scope: !1041, file: !1038, line: 178, type: !163)
!1050 = !{!1051}
!1051 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!1052 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1053, file: !1038, line: 228, baseType: !79, size: 32, elements: !1050)
!1053 = distinct !DISubprogram(name: "xpalloc", scope: !1038, file: !1038, line: 223, type: !1054, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !1059)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!161, !161, !1056, !1057, !179, !1057}
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !1058, line: 130, baseType: !179)
!1058 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!1059 = !{!1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068}
!1060 = !DILocalVariable(name: "pa", arg: 1, scope: !1053, file: !1038, line: 223, type: !161)
!1061 = !DILocalVariable(name: "pn", arg: 2, scope: !1053, file: !1038, line: 223, type: !1056)
!1062 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !1053, file: !1038, line: 223, type: !1057)
!1063 = !DILocalVariable(name: "n_max", arg: 4, scope: !1053, file: !1038, line: 223, type: !179)
!1064 = !DILocalVariable(name: "s", arg: 5, scope: !1053, file: !1038, line: 223, type: !1057)
!1065 = !DILocalVariable(name: "n0", scope: !1053, file: !1038, line: 230, type: !1057)
!1066 = !DILocalVariable(name: "n", scope: !1053, file: !1038, line: 237, type: !1057)
!1067 = !DILocalVariable(name: "nbytes", scope: !1053, file: !1038, line: 248, type: !1057)
!1068 = !DILocalVariable(name: "adjusted_nbytes", scope: !1053, file: !1038, line: 252, type: !1057)
!1069 = !{!121, !161}
!1070 = distinct !DICompileUnit(language: DW_LANG_C11, file: !986, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !1071, splitDebugInlining: false, nameTableKind: None)
!1071 = !{!984, !987, !989}
!1072 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1073, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1073 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!1074 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1075, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1024, splitDebugInlining: false, nameTableKind: None)
!1075 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1076 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1011, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !1077, splitDebugInlining: false, nameTableKind: None)
!1077 = !{!1078, !1009}
!1078 = !DIGlobalVariableExpression(var: !1079, expr: !DIExpression())
!1079 = distinct !DIGlobalVariable(scope: null, file: !1011, line: 35, type: !375, isLocal: true, isDefinition: true)
!1080 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1081, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1081 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1082 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1083, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1024, splitDebugInlining: false, nameTableKind: None)
!1083 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1084 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1085 = !{i32 7, !"Dwarf Version", i32 5}
!1086 = !{i32 2, !"Debug Info Version", i32 3}
!1087 = !{i32 1, !"wchar_size", i32 4}
!1088 = !{i32 8, !"PIC Level", i32 2}
!1089 = !{i32 7, !"PIE Level", i32 2}
!1090 = !{i32 7, !"uwtable", i32 2}
!1091 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!1092 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 96, type: !1093, scopeLine: 97, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1095)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{null, !89}
!1095 = !{!1096}
!1096 = !DILocalVariable(name: "status", arg: 1, scope: !1092, file: !2, line: 96, type: !89)
!1097 = !DILocation(line: 0, scope: !1092)
!1098 = !DILocation(line: 98, column: 14, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1092, file: !2, line: 98, column: 7)
!1100 = !DILocation(line: 98, column: 7, scope: !1092)
!1101 = !DILocation(line: 99, column: 5, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 99, column: 5)
!1103 = !{!1104, !1104, i64 0}
!1104 = !{!"any pointer", !1105, i64 0}
!1105 = !{!"omnipotent char", !1106, i64 0}
!1106 = !{!"Simple C/C++ TBAA"}
!1107 = !DILocation(line: 102, column: 7, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 101, column: 5)
!1109 = !DILocation(line: 103, column: 7, scope: !1108)
!1110 = !DILocation(line: 108, column: 7, scope: !1108)
!1111 = !DILocation(line: 112, column: 7, scope: !1108)
!1112 = !DILocation(line: 116, column: 7, scope: !1108)
!1113 = !DILocation(line: 120, column: 7, scope: !1108)
!1114 = !DILocation(line: 124, column: 7, scope: !1108)
!1115 = !DILocation(line: 125, column: 7, scope: !1108)
!1116 = !DILocation(line: 126, column: 7, scope: !1108)
!1117 = !DILocalVariable(name: "program", arg: 1, scope: !1118, file: !88, line: 836, type: !171)
!1118 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !88, file: !88, line: 836, type: !1119, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1121)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{null, !171}
!1121 = !{!1117, !1122, !1129, !1130, !1132, !1133}
!1122 = !DILocalVariable(name: "infomap", scope: !1118, file: !88, line: 838, type: !1123)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1124, size: 896, elements: !393)
!1124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1125)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1118, file: !88, line: 838, size: 128, elements: !1126)
!1126 = !{!1127, !1128}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1125, file: !88, line: 838, baseType: !171, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1125, file: !88, line: 838, baseType: !171, size: 64, offset: 64)
!1129 = !DILocalVariable(name: "node", scope: !1118, file: !88, line: 848, type: !171)
!1130 = !DILocalVariable(name: "map_prog", scope: !1118, file: !88, line: 849, type: !1131)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1132 = !DILocalVariable(name: "lc_messages", scope: !1118, file: !88, line: 861, type: !171)
!1133 = !DILocalVariable(name: "url_program", scope: !1118, file: !88, line: 874, type: !171)
!1134 = !DILocation(line: 0, scope: !1118, inlinedAt: !1135)
!1135 = distinct !DILocation(line: 132, column: 7, scope: !1108)
!1136 = !{}
!1137 = !DILocation(line: 857, column: 3, scope: !1118, inlinedAt: !1135)
!1138 = !DILocation(line: 861, column: 29, scope: !1118, inlinedAt: !1135)
!1139 = !DILocation(line: 862, column: 7, scope: !1140, inlinedAt: !1135)
!1140 = distinct !DILexicalBlock(scope: !1118, file: !88, line: 862, column: 7)
!1141 = !DILocation(line: 862, column: 19, scope: !1140, inlinedAt: !1135)
!1142 = !DILocation(line: 862, column: 22, scope: !1140, inlinedAt: !1135)
!1143 = !DILocation(line: 862, column: 7, scope: !1118, inlinedAt: !1135)
!1144 = !DILocation(line: 868, column: 7, scope: !1145, inlinedAt: !1135)
!1145 = distinct !DILexicalBlock(scope: !1140, file: !88, line: 863, column: 5)
!1146 = !DILocation(line: 870, column: 5, scope: !1145, inlinedAt: !1135)
!1147 = !DILocation(line: 875, column: 3, scope: !1118, inlinedAt: !1135)
!1148 = !DILocation(line: 877, column: 3, scope: !1118, inlinedAt: !1135)
!1149 = !DILocation(line: 135, column: 3, scope: !1092)
!1150 = !DISubprogram(name: "dcgettext", scope: !1151, file: !1151, line: 51, type: !1152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1151 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!121, !171, !171, !89}
!1154 = !DISubprogram(name: "__fprintf_chk", scope: !1155, file: !1155, line: 93, type: !1156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1155 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!89, !1158, !89, !1159, null}
!1158 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !113)
!1159 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !171)
!1160 = !DISubprogram(name: "__printf_chk", scope: !1155, file: !1155, line: 95, type: !1161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!89, !89, !1159, null}
!1163 = !DISubprogram(name: "fputs_unlocked", scope: !1164, file: !1164, line: 691, type: !1165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1164 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!89, !1159, !1158}
!1167 = !DILocation(line: 0, scope: !331)
!1168 = !DILocation(line: 581, column: 7, scope: !339)
!1169 = !{!1170, !1170, i64 0}
!1170 = !{!"int", !1105, i64 0}
!1171 = !DILocation(line: 581, column: 19, scope: !339)
!1172 = !DILocation(line: 581, column: 7, scope: !331)
!1173 = !DILocation(line: 585, column: 26, scope: !338)
!1174 = !DILocation(line: 0, scope: !338)
!1175 = !DILocation(line: 586, column: 23, scope: !338)
!1176 = !DILocation(line: 586, column: 28, scope: !338)
!1177 = !DILocation(line: 586, column: 32, scope: !338)
!1178 = !{!1105, !1105, i64 0}
!1179 = !DILocation(line: 586, column: 38, scope: !338)
!1180 = !DILocalVariable(name: "__s1", arg: 1, scope: !1181, file: !1182, line: 1359, type: !171)
!1181 = distinct !DISubprogram(name: "streq", scope: !1182, file: !1182, line: 1359, type: !1183, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1185)
!1182 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!112, !171, !171}
!1185 = !{!1180, !1186}
!1186 = !DILocalVariable(name: "__s2", arg: 2, scope: !1181, file: !1182, line: 1359, type: !171)
!1187 = !DILocation(line: 0, scope: !1181, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 586, column: 41, scope: !338)
!1189 = !DILocation(line: 1361, column: 11, scope: !1181, inlinedAt: !1188)
!1190 = !DILocation(line: 1361, column: 10, scope: !1181, inlinedAt: !1188)
!1191 = !DILocation(line: 586, column: 19, scope: !338)
!1192 = !DILocation(line: 587, column: 5, scope: !338)
!1193 = !DILocation(line: 588, column: 7, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !331, file: !88, line: 588, column: 7)
!1195 = !DILocation(line: 588, column: 7, scope: !331)
!1196 = !DILocation(line: 590, column: 7, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1194, file: !88, line: 589, column: 5)
!1198 = !DILocation(line: 591, column: 7, scope: !1197)
!1199 = !DILocation(line: 595, column: 37, scope: !331)
!1200 = !DILocation(line: 595, column: 35, scope: !331)
!1201 = !DILocation(line: 596, column: 29, scope: !331)
!1202 = !DILocation(line: 597, column: 8, scope: !346)
!1203 = !DILocation(line: 597, column: 7, scope: !331)
!1204 = !DILocation(line: 604, column: 24, scope: !345)
!1205 = !DILocation(line: 604, column: 12, scope: !346)
!1206 = !DILocation(line: 0, scope: !344)
!1207 = !DILocation(line: 610, column: 16, scope: !344)
!1208 = !DILocation(line: 610, column: 7, scope: !344)
!1209 = !DILocation(line: 611, column: 21, scope: !344)
!1210 = !{!1211, !1211, i64 0}
!1211 = !{!"short", !1105, i64 0}
!1212 = !DILocation(line: 611, column: 19, scope: !344)
!1213 = !DILocation(line: 611, column: 16, scope: !344)
!1214 = !DILocation(line: 610, column: 30, scope: !344)
!1215 = distinct !{!1215, !1208, !1209, !1216}
!1216 = !{!"llvm.loop.mustprogress"}
!1217 = !DILocation(line: 612, column: 18, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !344, file: !88, line: 612, column: 11)
!1219 = !DILocation(line: 612, column: 11, scope: !344)
!1220 = !DILocation(line: 620, column: 23, scope: !331)
!1221 = !DILocation(line: 625, column: 39, scope: !331)
!1222 = !DILocation(line: 626, column: 3, scope: !331)
!1223 = !DILocation(line: 626, column: 10, scope: !331)
!1224 = !DILocation(line: 626, column: 21, scope: !331)
!1225 = !DILocation(line: 628, column: 44, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !88, line: 628, column: 11)
!1227 = distinct !DILexicalBlock(scope: !331, file: !88, line: 627, column: 5)
!1228 = !DILocation(line: 628, column: 32, scope: !1226)
!1229 = !DILocation(line: 628, column: 49, scope: !1226)
!1230 = !DILocation(line: 628, column: 11, scope: !1227)
!1231 = !DILocation(line: 630, column: 11, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1227, file: !88, line: 630, column: 11)
!1233 = !DILocation(line: 630, column: 11, scope: !1227)
!1234 = !DILocation(line: 632, column: 26, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !88, line: 632, column: 15)
!1236 = distinct !DILexicalBlock(scope: !1232, file: !88, line: 631, column: 9)
!1237 = !DILocation(line: 632, column: 34, scope: !1235)
!1238 = !DILocation(line: 632, column: 37, scope: !1235)
!1239 = !DILocation(line: 632, column: 15, scope: !1236)
!1240 = !DILocation(line: 636, column: 16, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1236, file: !88, line: 636, column: 15)
!1242 = !DILocation(line: 636, column: 29, scope: !1241)
!1243 = !DILocation(line: 640, column: 16, scope: !1227)
!1244 = distinct !{!1244, !1222, !1245, !1216}
!1245 = !DILocation(line: 641, column: 5, scope: !331)
!1246 = !DILocation(line: 644, column: 3, scope: !331)
!1247 = !DILocation(line: 0, scope: !1181, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 648, column: 31, scope: !331)
!1249 = !DILocation(line: 0, scope: !1181, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 649, column: 31, scope: !331)
!1251 = !DILocation(line: 0, scope: !1181, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 650, column: 31, scope: !331)
!1253 = !DILocation(line: 0, scope: !1181, inlinedAt: !1254)
!1254 = distinct !DILocation(line: 651, column: 31, scope: !331)
!1255 = !DILocation(line: 0, scope: !1181, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 652, column: 31, scope: !331)
!1257 = !DILocation(line: 0, scope: !1181, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 653, column: 31, scope: !331)
!1259 = !DILocation(line: 0, scope: !1181, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 654, column: 31, scope: !331)
!1261 = !DILocation(line: 0, scope: !1181, inlinedAt: !1262)
!1262 = distinct !DILocation(line: 655, column: 31, scope: !331)
!1263 = !DILocation(line: 0, scope: !1181, inlinedAt: !1264)
!1264 = distinct !DILocation(line: 656, column: 31, scope: !331)
!1265 = !DILocation(line: 0, scope: !1181, inlinedAt: !1266)
!1266 = distinct !DILocation(line: 657, column: 31, scope: !331)
!1267 = !DILocation(line: 663, column: 7, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !331, file: !88, line: 663, column: 7)
!1269 = !DILocation(line: 664, column: 7, scope: !1268)
!1270 = !DILocation(line: 664, column: 10, scope: !1268)
!1271 = !DILocation(line: 663, column: 7, scope: !331)
!1272 = !DILocation(line: 669, column: 7, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1268, file: !88, line: 665, column: 5)
!1274 = !DILocation(line: 671, column: 5, scope: !1273)
!1275 = !DILocation(line: 676, column: 7, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1268, file: !88, line: 673, column: 5)
!1277 = !DILocation(line: 679, column: 3, scope: !331)
!1278 = !DILocation(line: 683, column: 3, scope: !331)
!1279 = !DILocation(line: 686, column: 3, scope: !331)
!1280 = !DILocation(line: 688, column: 3, scope: !331)
!1281 = !DILocation(line: 691, column: 3, scope: !331)
!1282 = !DILocation(line: 695, column: 3, scope: !331)
!1283 = !DILocation(line: 696, column: 1, scope: !331)
!1284 = !DISubprogram(name: "setlocale", scope: !1285, file: !1285, line: 122, type: !1286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1285 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!121, !89, !171}
!1288 = !DISubprogram(name: "strncmp", scope: !1289, file: !1289, line: 159, type: !1290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1289 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!89, !171, !171, !163}
!1292 = !DISubprogram(name: "exit", scope: !1293, file: !1293, line: 624, type: !1093, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1293 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1294 = !DISubprogram(name: "getenv", scope: !1293, file: !1293, line: 641, type: !1295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!121, !171}
!1297 = !DISubprogram(name: "strcmp", scope: !1289, file: !1289, line: 156, type: !1298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!89, !171, !171}
!1300 = !DISubprogram(name: "strspn", scope: !1289, file: !1289, line: 297, type: !1301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!165, !171, !171}
!1303 = !DISubprogram(name: "strchr", scope: !1289, file: !1289, line: 246, type: !1304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!121, !171, !89}
!1306 = !DISubprogram(name: "__ctype_b_loc", scope: !94, file: !94, line: 79, type: !1307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!1309}
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!1312 = !DISubprogram(name: "strcspn", scope: !1289, file: !1289, line: 293, type: !1301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1313 = !DISubprogram(name: "fwrite_unlocked", scope: !1164, file: !1164, line: 704, type: !1314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!163, !1316, !163, !163, !1158}
!1316 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1317)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1319 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 429, type: !1320, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1323)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!89, !89, !1322}
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!1323 = !{!1324, !1325, !1326, !1327, !1328, !1329, !1330, !1333, !1337, !1341, !1342, !1345, !1346, !1347, !1348, !1350, !1351}
!1324 = !DILocalVariable(name: "argc", arg: 1, scope: !1319, file: !2, line: 429, type: !89)
!1325 = !DILocalVariable(name: "argv", arg: 2, scope: !1319, file: !2, line: 429, type: !1322)
!1326 = !DILocalVariable(name: "ok", scope: !1319, file: !2, line: 431, type: !112)
!1327 = !DILocalVariable(name: "optc", scope: !1319, file: !2, line: 432, type: !89)
!1328 = !DILocalVariable(name: "syntax", scope: !1319, file: !2, line: 433, type: !78)
!1329 = !DILocalVariable(name: "print_database", scope: !1319, file: !2, line: 434, type: !112)
!1330 = !DILocalVariable(name: "p", scope: !1331, file: !2, line: 505, type: !171)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 504, column: 5)
!1332 = distinct !DILexicalBlock(scope: !1319, file: !2, line: 503, column: 7)
!1333 = !DILocalVariable(name: "len", scope: !1334, file: !2, line: 532, type: !163)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 531, column: 9)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 530, column: 11)
!1336 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 513, column: 5)
!1337 = !DILocalVariable(name: "__o", scope: !1338, file: !2, line: 532, type: !1339)
!1338 = distinct !DILexicalBlock(scope: !1334, file: !2, line: 532, column: 24)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!1341 = !DILocalVariable(name: "s", scope: !1334, file: !2, line: 533, type: !121)
!1342 = !DILocalVariable(name: "__o1", scope: !1343, file: !2, line: 533, type: !1344)
!1343 = distinct !DILexicalBlock(scope: !1334, file: !2, line: 533, column: 21)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!1345 = !DILocalVariable(name: "__value", scope: !1343, file: !2, line: 533, type: !161)
!1346 = !DILocalVariable(name: "prefix", scope: !1334, file: !2, line: 534, type: !171)
!1347 = !DILocalVariable(name: "suffix", scope: !1334, file: !2, line: 535, type: !171)
!1348 = !DILocalVariable(name: "__ptr", scope: !1349, file: !2, line: 549, type: !171)
!1349 = distinct !DILexicalBlock(scope: !1334, file: !2, line: 549, column: 11)
!1350 = !DILocalVariable(name: "__stream", scope: !1349, file: !2, line: 549, type: !113)
!1351 = !DILocalVariable(name: "__cnt", scope: !1349, file: !2, line: 549, type: !163)
!1352 = !DILocation(line: 0, scope: !1319)
!1353 = !DILocation(line: 437, column: 21, scope: !1319)
!1354 = !DILocation(line: 437, column: 3, scope: !1319)
!1355 = !DILocation(line: 438, column: 3, scope: !1319)
!1356 = !DILocation(line: 439, column: 3, scope: !1319)
!1357 = !DILocation(line: 440, column: 3, scope: !1319)
!1358 = !DILocation(line: 442, column: 3, scope: !1319)
!1359 = !DILocation(line: 444, column: 3, scope: !1319)
!1360 = !DILocation(line: 444, column: 18, scope: !1319)
!1361 = distinct !{!1361, !1359, !1362, !1216}
!1362 = !DILocation(line: 469, column: 7, scope: !1319)
!1363 = !DILocation(line: 453, column: 9, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1319, file: !2, line: 446, column: 7)
!1365 = !DILocation(line: 457, column: 9, scope: !1364)
!1366 = !DILocation(line: 460, column: 25, scope: !1364)
!1367 = !DILocation(line: 461, column: 9, scope: !1364)
!1368 = !DILocation(line: 463, column: 7, scope: !1364)
!1369 = !DILocation(line: 465, column: 7, scope: !1364)
!1370 = !DILocation(line: 468, column: 9, scope: !1364)
!1371 = !DILocation(line: 471, column: 11, scope: !1319)
!1372 = !DILocation(line: 471, column: 8, scope: !1319)
!1373 = !DILocation(line: 472, column: 8, scope: !1319)
!1374 = !DILocation(line: 476, column: 25, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1319, file: !2, line: 476, column: 7)
!1376 = !DILocation(line: 476, column: 23, scope: !1375)
!1377 = !DILocation(line: 476, column: 42, scope: !1375)
!1378 = !DILocation(line: 478, column: 7, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1375, file: !2, line: 477, column: 5)
!1380 = !DILocation(line: 481, column: 7, scope: !1379)
!1381 = !DILocation(line: 484, column: 22, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1319, file: !2, line: 484, column: 7)
!1383 = !DILocation(line: 486, column: 7, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 485, column: 5)
!1385 = !DILocation(line: 489, column: 7, scope: !1384)
!1386 = !DILocation(line: 492, column: 8, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1319, file: !2, line: 492, column: 7)
!1388 = !DILocation(line: 492, column: 25, scope: !1387)
!1389 = !DILocation(line: 492, column: 7, scope: !1319)
!1390 = !DILocation(line: 494, column: 7, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1387, file: !2, line: 493, column: 5)
!1392 = !DILocation(line: 496, column: 11, scope: !1391)
!1393 = !DILocation(line: 497, column: 9, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1391, file: !2, line: 496, column: 11)
!1395 = !DILocation(line: 500, column: 7, scope: !1391)
!1396 = !DILocation(line: 503, column: 7, scope: !1319)
!1397 = !DILocation(line: 0, scope: !1331)
!1398 = !DILocation(line: 508, column: 11, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 507, column: 9)
!1400 = !DILocation(line: 509, column: 16, scope: !1399)
!1401 = !DILocation(line: 509, column: 27, scope: !1399)
!1402 = !DILocation(line: 509, column: 13, scope: !1399)
!1403 = !DILocation(line: 506, column: 16, scope: !1331)
!1404 = !DILocation(line: 506, column: 25, scope: !1331)
!1405 = !DILocation(line: 506, column: 7, scope: !1331)
!1406 = distinct !{!1406, !1405, !1407, !1216}
!1407 = !DILocation(line: 510, column: 9, scope: !1331)
!1408 = !DILocation(line: 515, column: 42, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 515, column: 11)
!1410 = !DILocation(line: 146, column: 11, scope: !1411, inlinedAt: !1416)
!1411 = distinct !DISubprogram(name: "guess_shell_syntax", scope: !2, file: !2, line: 142, type: !1412, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1414)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!78}
!1414 = !{!1415}
!1415 = !DILocalVariable(name: "shell", scope: !1411, file: !2, line: 144, type: !121)
!1416 = distinct !DILocation(line: 517, column: 20, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 516, column: 9)
!1418 = !DILocation(line: 0, scope: !1411, inlinedAt: !1416)
!1419 = !DILocation(line: 147, column: 13, scope: !1420, inlinedAt: !1416)
!1420 = distinct !DILexicalBlock(scope: !1411, file: !2, line: 147, column: 7)
!1421 = !DILocation(line: 147, column: 21, scope: !1420, inlinedAt: !1416)
!1422 = !DILocation(line: 147, column: 24, scope: !1420, inlinedAt: !1416)
!1423 = !DILocation(line: 147, column: 31, scope: !1420, inlinedAt: !1416)
!1424 = !DILocation(line: 147, column: 7, scope: !1411, inlinedAt: !1416)
!1425 = !DILocation(line: 150, column: 11, scope: !1411, inlinedAt: !1416)
!1426 = !DILocation(line: 0, scope: !1181, inlinedAt: !1427)
!1427 = distinct !DILocation(line: 152, column: 7, scope: !1428, inlinedAt: !1416)
!1428 = distinct !DILexicalBlock(scope: !1411, file: !2, line: 152, column: 7)
!1429 = !DILocation(line: 1361, column: 11, scope: !1181, inlinedAt: !1427)
!1430 = !DILocation(line: 1361, column: 10, scope: !1181, inlinedAt: !1427)
!1431 = !DILocation(line: 152, column: 28, scope: !1428, inlinedAt: !1416)
!1432 = !DILocation(line: 0, scope: !1181, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 152, column: 31, scope: !1428, inlinedAt: !1416)
!1434 = !DILocation(line: 1361, column: 11, scope: !1181, inlinedAt: !1433)
!1435 = !DILocation(line: 1361, column: 10, scope: !1181, inlinedAt: !1433)
!1436 = !DILocation(line: 152, column: 7, scope: !1411, inlinedAt: !1416)
!1437 = !DILocation(line: 519, column: 13, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 518, column: 15)
!1439 = !DILocation(line: 524, column: 7, scope: !1336)
!1440 = !DILocation(line: 525, column: 16, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 525, column: 11)
!1442 = !DILocation(line: 525, column: 11, scope: !1336)
!1443 = !DILocation(line: 526, column: 14, scope: !1441)
!1444 = !DILocation(line: 530, column: 11, scope: !1336)
!1445 = !DILocation(line: 528, column: 29, scope: !1441)
!1446 = !DILocalVariable(name: "filename", arg: 1, scope: !1447, file: !2, line: 407, type: !171)
!1447 = distinct !DISubprogram(name: "dc_parse_file", scope: !2, file: !2, line: 407, type: !1448, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1450)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!112, !171}
!1450 = !{!1446, !1451}
!1451 = !DILocalVariable(name: "ok", scope: !1447, file: !2, line: 409, type: !112)
!1452 = !DILocation(line: 0, scope: !1447, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 528, column: 14, scope: !1441)
!1454 = !DILocation(line: 0, scope: !1181, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 411, column: 9, scope: !1456, inlinedAt: !1453)
!1456 = distinct !DILexicalBlock(scope: !1447, file: !2, line: 411, column: 7)
!1457 = !DILocation(line: 1361, column: 11, scope: !1181, inlinedAt: !1455)
!1458 = !DILocation(line: 1361, column: 10, scope: !1181, inlinedAt: !1455)
!1459 = !DILocation(line: 411, column: 31, scope: !1456, inlinedAt: !1453)
!1460 = !DILocation(line: 411, column: 58, scope: !1456, inlinedAt: !1453)
!1461 = !DILocation(line: 411, column: 34, scope: !1456, inlinedAt: !1453)
!1462 = !DILocation(line: 411, column: 65, scope: !1456, inlinedAt: !1453)
!1463 = !DILocation(line: 411, column: 7, scope: !1447, inlinedAt: !1453)
!1464 = !DILocation(line: 417, column: 25, scope: !1447, inlinedAt: !1453)
!1465 = !DILocation(line: 417, column: 8, scope: !1447, inlinedAt: !1453)
!1466 = !DILocation(line: 419, column: 15, scope: !1467, inlinedAt: !1453)
!1467 = distinct !DILexicalBlock(scope: !1447, file: !2, line: 419, column: 7)
!1468 = !DILocation(line: 419, column: 7, scope: !1467, inlinedAt: !1453)
!1469 = !DILocation(line: 419, column: 22, scope: !1467, inlinedAt: !1453)
!1470 = !DILocation(line: 419, column: 7, scope: !1447, inlinedAt: !1453)
!1471 = !DILocation(line: 0, scope: !1338)
!1472 = !DILocation(line: 532, column: 24, scope: !1338)
!1473 = !{!1474, !1104, i64 24}
!1474 = !{!"obstack", !1475, i64 0, !1104, i64 8, !1104, i64 16, !1104, i64 24, !1104, i64 32, !1105, i64 40, !1475, i64 48, !1105, i64 56, !1105, i64 64, !1104, i64 72, !1170, i64 80, !1170, i64 80, !1170, i64 80}
!1475 = !{!"long", !1105, i64 0}
!1476 = !{!1474, !1104, i64 16}
!1477 = !DILocation(line: 0, scope: !1334)
!1478 = !DILocation(line: 0, scope: !1343)
!1479 = !DILocation(line: 533, column: 21, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 533, column: 21)
!1481 = !DILocation(line: 533, column: 21, scope: !1343)
!1482 = !{!1474, !1475, i64 48}
!1483 = !DILocation(line: 537, column: 22, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1334, file: !2, line: 537, column: 15)
!1485 = !DILocation(line: 547, column: 17, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1334, file: !2, line: 547, column: 15)
!1487 = !DILocation(line: 547, column: 15, scope: !1334)
!1488 = !DILocation(line: 548, column: 13, scope: !1486)
!1489 = !DILocation(line: 549, column: 11, scope: !1334)
!1490 = !DILocation(line: 550, column: 17, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1334, file: !2, line: 550, column: 15)
!1492 = !DILocation(line: 550, column: 15, scope: !1334)
!1493 = !DILocation(line: 551, column: 13, scope: !1491)
!1494 = !DILocation(line: 555, column: 3, scope: !1319)
!1495 = !DISubprogram(name: "bindtextdomain", scope: !1151, file: !1151, line: 86, type: !1496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!121, !171, !171}
!1498 = !DISubprogram(name: "textdomain", scope: !1151, file: !1151, line: 82, type: !1295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1499 = !DISubprogram(name: "atexit", scope: !1293, file: !1293, line: 602, type: !1500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!89, !740}
!1502 = !DISubprogram(name: "getopt_long", scope: !665, file: !665, line: 66, type: !1503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!89, !89, !1505, !171, !1507, !670}
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!1508 = !DISubprogram(name: "puts", scope: !1164, file: !1164, line: 661, type: !1509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!89, !171}
!1511 = !DISubprogram(name: "strlen", scope: !1289, file: !1289, line: 407, type: !1512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!165, !171}
!1514 = !DISubprogram(name: "free", scope: !1293, file: !1293, line: 555, type: !317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1515 = distinct !DIAssignID()
!1516 = !DILocation(line: 0, scope: !109)
!1517 = distinct !DIAssignID()
!1518 = !DILocation(line: 282, column: 3, scope: !109)
!1519 = !DILocation(line: 282, column: 9, scope: !109)
!1520 = distinct !DIAssignID()
!1521 = !DILocation(line: 283, column: 3, scope: !109)
!1522 = !DILocation(line: 283, column: 10, scope: !109)
!1523 = !{!1475, !1475, i64 0}
!1524 = distinct !DIAssignID()
!1525 = !DILocation(line: 293, column: 10, scope: !109)
!1526 = !DILocation(line: 294, column: 12, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !109, file: !2, line: 294, column: 7)
!1528 = !DILocation(line: 294, column: 20, scope: !1527)
!1529 = !DILocation(line: 294, column: 23, scope: !1527)
!1530 = !DILocation(line: 294, column: 29, scope: !1527)
!1531 = !DILocation(line: 294, column: 7, scope: !109)
!1532 = !DILocation(line: 295, column: 5, scope: !1527)
!1533 = !DILocation(line: 298, column: 15, scope: !109)
!1534 = !DILocation(line: 299, column: 17, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !109, file: !2, line: 299, column: 7)
!1536 = !DILocation(line: 299, column: 7, scope: !109)
!1537 = !DILocation(line: 302, column: 3, scope: !109)
!1538 = !DILocation(line: 309, column: 11, scope: !190)
!1539 = !DILocation(line: 307, column: 7, scope: !190)
!1540 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1541, file: !1542, line: 118, type: !1322)
!1541 = distinct !DISubprogram(name: "getline", scope: !1542, file: !1542, line: 118, type: !1543, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1546)
!1542 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!1545, !1322, !1044, !113}
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !141, line: 194, baseType: !142)
!1546 = !{!1540, !1547, !1548}
!1547 = !DILocalVariable(name: "__n", arg: 2, scope: !1541, file: !1542, line: 118, type: !1044)
!1548 = !DILocalVariable(name: "__stream", arg: 3, scope: !1541, file: !1542, line: 118, type: !113)
!1549 = !DILocation(line: 0, scope: !1541, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 311, column: 15, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !2, line: 311, column: 15)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 310, column: 9)
!1553 = distinct !DILexicalBlock(scope: !190, file: !2, line: 309, column: 11)
!1554 = !DILocation(line: 120, column: 10, scope: !1541, inlinedAt: !1550)
!1555 = !DILocation(line: 311, column: 59, scope: !1551)
!1556 = !DILocation(line: 311, column: 15, scope: !1552)
!1557 = !DILocalVariable(name: "__stream", arg: 1, scope: !1558, file: !1542, line: 135, type: !113)
!1558 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1542, file: !1542, line: 135, type: !1559, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1561)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!89, !113}
!1561 = !{!1557}
!1562 = !DILocation(line: 0, scope: !1558, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 313, column: 19, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !2, line: 313, column: 19)
!1565 = distinct !DILexicalBlock(scope: !1551, file: !2, line: 312, column: 13)
!1566 = !DILocation(line: 137, column: 10, scope: !1558, inlinedAt: !1563)
!1567 = !{!1568, !1170, i64 0}
!1568 = !{!"_IO_FILE", !1170, i64 0, !1104, i64 8, !1104, i64 16, !1104, i64 24, !1104, i64 32, !1104, i64 40, !1104, i64 48, !1104, i64 56, !1104, i64 64, !1104, i64 72, !1104, i64 80, !1104, i64 88, !1104, i64 96, !1104, i64 104, !1170, i64 112, !1170, i64 116, !1475, i64 120, !1211, i64 128, !1105, i64 130, !1105, i64 131, !1104, i64 136, !1475, i64 144, !1104, i64 152, !1104, i64 160, !1104, i64 168, !1104, i64 176, !1475, i64 184, !1170, i64 192, !1105, i64 196}
!1569 = !DILocation(line: 313, column: 19, scope: !1564)
!1570 = !DILocation(line: 313, column: 19, scope: !1565)
!1571 = !DILocation(line: 315, column: 19, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1564, file: !2, line: 314, column: 17)
!1573 = !DILocation(line: 317, column: 17, scope: !1572)
!1574 = !DILocation(line: 318, column: 21, scope: !1565)
!1575 = !DILocation(line: 318, column: 15, scope: !1565)
!1576 = !DILocation(line: 319, column: 15, scope: !1565)
!1577 = !DILocation(line: 321, column: 18, scope: !1552)
!1578 = !DILocation(line: 322, column: 9, scope: !1552)
!1579 = !DILocation(line: 325, column: 27, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 325, column: 15)
!1581 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 324, column: 9)
!1582 = !DILocation(line: 325, column: 15, scope: !1581)
!1583 = !DILocation(line: 328, column: 26, scope: !1581)
!1584 = !DILocation(line: 328, column: 47, scope: !1581)
!1585 = !DILocation(line: 328, column: 23, scope: !1581)
!1586 = !DILocation(line: 0, scope: !1553)
!1587 = !DILocalVariable(name: "line", arg: 1, scope: !1588, file: !2, line: 159, type: !171)
!1588 = distinct !DISubprogram(name: "parse_line", scope: !2, file: !2, line: 159, type: !1589, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1591)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{null, !171, !1322, !1322}
!1591 = !{!1587, !1592, !1593, !1594, !1595, !1596}
!1592 = !DILocalVariable(name: "keyword", arg: 2, scope: !1588, file: !2, line: 159, type: !1322)
!1593 = !DILocalVariable(name: "arg", arg: 3, scope: !1588, file: !2, line: 159, type: !1322)
!1594 = !DILocalVariable(name: "p", scope: !1588, file: !2, line: 161, type: !171)
!1595 = !DILocalVariable(name: "keyword_start", scope: !1588, file: !2, line: 162, type: !171)
!1596 = !DILocalVariable(name: "arg_start", scope: !1588, file: !2, line: 163, type: !171)
!1597 = !DILocation(line: 0, scope: !1588, inlinedAt: !1598)
!1598 = distinct !DILocation(line: 331, column: 7, scope: !190)
!1599 = !DILocation(line: 0, scope: !190)
!1600 = !DILocation(line: 168, column: 8, scope: !1601, inlinedAt: !1598)
!1601 = distinct !DILexicalBlock(scope: !1588, file: !2, line: 168, column: 3)
!1602 = !DILocation(line: 168, scope: !1601, inlinedAt: !1598)
!1603 = !DILocation(line: 168, column: 29, scope: !1604, inlinedAt: !1598)
!1604 = distinct !DILexicalBlock(scope: !1601, file: !2, line: 168, column: 3)
!1605 = !DILocalVariable(name: "c", arg: 1, scope: !1606, file: !1607, line: 300, type: !89)
!1606 = distinct !DISubprogram(name: "c_isspace", scope: !1607, file: !1607, line: 300, type: !1608, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1610)
!1607 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!112, !89}
!1610 = !{!1605}
!1611 = !DILocation(line: 0, scope: !1606, inlinedAt: !1612)
!1612 = distinct !DILocation(line: 168, column: 18, scope: !1604, inlinedAt: !1598)
!1613 = !DILocation(line: 302, column: 3, scope: !1606, inlinedAt: !1612)
!1614 = distinct !{!1614, !1537, !1615}
!1615 = !DILocation(line: 401, column: 5, scope: !109)
!1616 = !DILocation(line: 168, column: 34, scope: !1604, inlinedAt: !1598)
!1617 = !DILocation(line: 168, column: 3, scope: !1604, inlinedAt: !1598)
!1618 = distinct !{!1618, !1619, !1620, !1216}
!1619 = !DILocation(line: 168, column: 3, scope: !1601, inlinedAt: !1598)
!1620 = !DILocation(line: 169, column: 5, scope: !1601, inlinedAt: !1598)
!1621 = !DILocation(line: 177, column: 22, scope: !1588, inlinedAt: !1598)
!1622 = !DILocation(line: 0, scope: !1606, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 177, column: 11, scope: !1588, inlinedAt: !1598)
!1624 = !DILocation(line: 302, column: 3, scope: !1606, inlinedAt: !1623)
!1625 = !DILocation(line: 179, column: 7, scope: !1626, inlinedAt: !1598)
!1626 = distinct !DILexicalBlock(scope: !1588, file: !2, line: 178, column: 5)
!1627 = !DILocation(line: 177, column: 3, scope: !1588, inlinedAt: !1598)
!1628 = distinct !{!1628, !1627, !1629, !1216}
!1629 = !DILocation(line: 180, column: 5, scope: !1588, inlinedAt: !1598)
!1630 = !DILocation(line: 182, column: 42, scope: !1588, inlinedAt: !1598)
!1631 = !DILocation(line: 182, column: 14, scope: !1588, inlinedAt: !1598)
!1632 = !DILocation(line: 183, column: 7, scope: !1633, inlinedAt: !1598)
!1633 = distinct !DILexicalBlock(scope: !1588, file: !2, line: 183, column: 7)
!1634 = !DILocation(line: 183, column: 11, scope: !1633, inlinedAt: !1598)
!1635 = !DILocation(line: 183, column: 7, scope: !1588, inlinedAt: !1598)
!1636 = !DILocation(line: 188, column: 7, scope: !1637, inlinedAt: !1598)
!1637 = distinct !DILexicalBlock(scope: !1588, file: !2, line: 187, column: 5)
!1638 = !DILocation(line: 190, column: 21, scope: !1588, inlinedAt: !1598)
!1639 = !DILocation(line: 0, scope: !1606, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 190, column: 10, scope: !1588, inlinedAt: !1598)
!1641 = !DILocation(line: 302, column: 3, scope: !1606, inlinedAt: !1640)
!1642 = distinct !{!1642, !1643, !1644, !1216}
!1643 = !DILocation(line: 186, column: 3, scope: !1588, inlinedAt: !1598)
!1644 = !DILocation(line: 190, column: 24, scope: !1588, inlinedAt: !1598)
!1645 = !DILocation(line: 197, column: 10, scope: !1588, inlinedAt: !1598)
!1646 = !DILocation(line: 197, column: 21, scope: !1588, inlinedAt: !1598)
!1647 = !DILocation(line: 200, column: 3, scope: !1648, inlinedAt: !1598)
!1648 = distinct !DILexicalBlock(scope: !1588, file: !2, line: 200, column: 3)
!1649 = !DILocation(line: 198, column: 5, scope: !1588, inlinedAt: !1598)
!1650 = !DILocation(line: 197, column: 3, scope: !1588, inlinedAt: !1598)
!1651 = distinct !{!1651, !1650, !1652, !1216}
!1652 = !DILocation(line: 198, column: 7, scope: !1588, inlinedAt: !1598)
!1653 = !DILocation(line: 200, scope: !1648, inlinedAt: !1598)
!1654 = !DILocation(line: 200, column: 24, scope: !1655, inlinedAt: !1598)
!1655 = distinct !DILexicalBlock(scope: !1648, file: !2, line: 200, column: 3)
!1656 = !DILocation(line: 0, scope: !1606, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 200, column: 13, scope: !1655, inlinedAt: !1598)
!1658 = !DILocation(line: 302, column: 3, scope: !1606, inlinedAt: !1657)
!1659 = distinct !{!1659, !1647, !1660, !1216}
!1660 = !DILocation(line: 201, column: 5, scope: !1648, inlinedAt: !1598)
!1661 = !DILocation(line: 338, column: 11, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !2, line: 337, column: 9)
!1663 = distinct !DILexicalBlock(scope: !190, file: !2, line: 336, column: 11)
!1664 = !DILocation(line: 342, column: 11, scope: !1662)
!1665 = !DILocation(line: 204, column: 34, scope: !1588, inlinedAt: !1598)
!1666 = !DILocation(line: 204, column: 10, scope: !1588, inlinedAt: !1598)
!1667 = !DILocation(line: 346, column: 11, scope: !202)
!1668 = !DILocation(line: 346, column: 40, scope: !202)
!1669 = !DILocation(line: 346, column: 11, scope: !190)
!1670 = !DILocation(line: 348, column: 21, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !2, line: 348, column: 15)
!1672 = distinct !DILexicalBlock(scope: !202, file: !2, line: 347, column: 9)
!1673 = !DILocation(line: 348, column: 15, scope: !1672)
!1674 = !DILocation(line: 349, column: 21, scope: !1671)
!1675 = !DILocation(line: 349, column: 44, scope: !1671)
!1676 = !DILocation(line: 349, column: 13, scope: !1671)
!1677 = !DILocation(line: 351, column: 16, scope: !201)
!1678 = !DILocation(line: 351, column: 50, scope: !201)
!1679 = !DILocation(line: 0, scope: !201)
!1680 = !DILocation(line: 351, column: 16, scope: !202)
!1681 = !DILocation(line: 353, column: 15, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !201, file: !2, line: 352, column: 9)
!1683 = !DILocation(line: 354, column: 21, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1682, file: !2, line: 353, column: 15)
!1685 = !DILocation(line: 354, column: 49, scope: !1684)
!1686 = !DILocation(line: 354, column: 13, scope: !1684)
!1687 = !DILocation(line: 358, column: 15, scope: !200)
!1688 = !DILocation(line: 361, column: 21, scope: !199)
!1689 = !DILocation(line: 361, column: 15, scope: !200)
!1690 = !DILocation(line: 363, column: 19, scope: !197)
!1691 = !DILocation(line: 363, column: 19, scope: !198)
!1692 = !DILocation(line: 364, column: 17, scope: !197)
!1693 = !DILocation(line: 366, column: 17, scope: !196)
!1694 = !DILocation(line: 367, column: 24, scope: !195)
!1695 = !DILocation(line: 367, column: 56, scope: !195)
!1696 = !DILocation(line: 368, column: 24, scope: !195)
!1697 = !DILocation(line: 368, column: 27, scope: !195)
!1698 = !DILocation(line: 368, column: 57, scope: !195)
!1699 = !DILocation(line: 369, column: 24, scope: !195)
!1700 = !DILocation(line: 369, column: 27, scope: !195)
!1701 = !DILocation(line: 369, column: 60, scope: !195)
!1702 = !DILocation(line: 367, column: 24, scope: !196)
!1703 = !DILocation(line: 377, column: 55, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !2, line: 377, column: 19)
!1705 = distinct !DILexicalBlock(scope: !194, file: !2, line: 377, column: 19)
!1706 = !DILocation(line: 0, scope: !194)
!1707 = !DILocation(line: 377, column: 46, scope: !1704)
!1708 = !DILocation(line: 377, column: 19, scope: !1705)
!1709 = distinct !{!1709, !1708, !1710, !1216}
!1710 = !DILocation(line: 379, column: 23, scope: !1705)
!1711 = !DILocation(line: 377, column: 31, scope: !1704)
!1712 = !DILocation(line: 378, column: 25, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1704, file: !2, line: 378, column: 25)
!1714 = !DILocation(line: 378, column: 62, scope: !1713)
!1715 = !DILocation(line: 378, column: 25, scope: !1704)
!1716 = !DILocation(line: 382, column: 38, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !194, file: !2, line: 381, column: 23)
!1718 = !DILocation(line: 382, column: 21, scope: !1717)
!1719 = !DILocation(line: 391, column: 24, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !190, file: !2, line: 391, column: 11)
!1721 = !DILocation(line: 393, column: 11, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1720, file: !2, line: 392, column: 9)
!1723 = !DILocation(line: 397, column: 9, scope: !1722)
!1724 = !DILocation(line: 399, column: 7, scope: !190)
!1725 = !DILocation(line: 403, column: 10, scope: !109)
!1726 = !DILocation(line: 404, column: 1, scope: !109)
!1727 = !DILocation(line: 403, column: 3, scope: !109)
!1728 = !DISubprogram(name: "__errno_location", scope: !1729, file: !1729, line: 37, type: !1730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1729 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!670}
!1732 = !DISubprogram(name: "__getdelim", scope: !1164, file: !1164, line: 632, type: !1733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!1545, !1735, !1736, !89, !1158}
!1735 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1322)
!1736 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1044)
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
!1748 = !DILocalVariable(name: "__o", scope: !1749, file: !2, line: 258, type: !1344)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 258, column: 7)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !2, line: 255, column: 5)
!1751 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 254, column: 7)
!1752 = !DILocalVariable(name: "__o1", scope: !1753, file: !2, line: 258, type: !1339)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !2, line: 258, column: 7)
!1754 = distinct !DILexicalBlock(scope: !1749, file: !2, line: 258, column: 7)
!1755 = !DILocalVariable(name: "__o", scope: !1756, file: !2, line: 261, type: !1344)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !2, line: 261, column: 5)
!1757 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 260, column: 7)
!1758 = !DILocalVariable(name: "__o1", scope: !1759, file: !2, line: 261, type: !1339)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !2, line: 261, column: 5)
!1760 = distinct !DILexicalBlock(scope: !1756, file: !2, line: 261, column: 5)
!1761 = !DILocalVariable(name: "__o", scope: !1762, file: !2, line: 263, type: !1344)
!1762 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 263, column: 3)
!1763 = !DILocalVariable(name: "__o1", scope: !1764, file: !2, line: 263, type: !1339)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !2, line: 263, column: 3)
!1765 = distinct !DILexicalBlock(scope: !1762, file: !2, line: 263, column: 3)
!1766 = !DILocalVariable(name: "__o", scope: !1767, file: !2, line: 267, type: !1344)
!1767 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 267, column: 3)
!1768 = !DILocalVariable(name: "__o1", scope: !1769, file: !2, line: 267, type: !1339)
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
!1779 = !{!1474, !1104, i64 32}
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
!1808 = distinct !DISubprogram(name: "append_quoted", scope: !2, file: !2, line: 211, type: !1119, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1809)
!1809 = !{!1810, !1811, !1812, !1817, !1820, !1822, !1825, !1827, !1830, !1833, !1836, !1838}
!1810 = !DILocalVariable(name: "str", arg: 1, scope: !1808, file: !2, line: 211, type: !171)
!1811 = !DILocalVariable(name: "need_backslash", scope: !1808, file: !2, line: 213, type: !112)
!1812 = !DILocalVariable(name: "__o", scope: !1813, file: !2, line: 221, type: !1344)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 221, column: 13)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !2, line: 219, column: 11)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !2, line: 217, column: 11)
!1816 = distinct !DILexicalBlock(scope: !1808, file: !2, line: 216, column: 5)
!1817 = !DILocalVariable(name: "__o1", scope: !1818, file: !2, line: 221, type: !1339)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !2, line: 221, column: 13)
!1819 = distinct !DILexicalBlock(scope: !1813, file: !2, line: 221, column: 13)
!1820 = !DILocalVariable(name: "__o", scope: !1821, file: !2, line: 222, type: !1344)
!1821 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 222, column: 13)
!1822 = !DILocalVariable(name: "__o1", scope: !1823, file: !2, line: 222, type: !1339)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !2, line: 222, column: 13)
!1824 = distinct !DILexicalBlock(scope: !1821, file: !2, line: 222, column: 13)
!1825 = !DILocalVariable(name: "__o", scope: !1826, file: !2, line: 223, type: !1344)
!1826 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 223, column: 13)
!1827 = !DILocalVariable(name: "__o1", scope: !1828, file: !2, line: 223, type: !1339)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !2, line: 223, column: 13)
!1829 = distinct !DILexicalBlock(scope: !1826, file: !2, line: 223, column: 13)
!1830 = !DILocalVariable(name: "__o", scope: !1831, file: !2, line: 235, type: !1344)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !2, line: 235, column: 15)
!1832 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 234, column: 17)
!1833 = !DILocalVariable(name: "__o1", scope: !1834, file: !2, line: 235, type: !1339)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !2, line: 235, column: 15)
!1835 = distinct !DILexicalBlock(scope: !1831, file: !2, line: 235, column: 15)
!1836 = !DILocalVariable(name: "__o", scope: !1837, file: !2, line: 243, type: !1344)
!1837 = distinct !DILexicalBlock(scope: !1816, file: !2, line: 243, column: 7)
!1838 = !DILocalVariable(name: "__o1", scope: !1839, file: !2, line: 243, type: !1339)
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
!1864 = !DILocation(line: 229, column: 31, scope: !1814)
!1865 = !DILocation(line: 229, column: 28, scope: !1814)
!1866 = !DILocation(line: 230, column: 13, scope: !1814)
!1867 = !DILocation(line: 234, column: 17, scope: !1832)
!1868 = !DILocation(line: 234, column: 17, scope: !1814)
!1869 = !DILocation(line: 0, scope: !1831)
!1870 = !DILocation(line: 0, scope: !1834)
!1871 = !DILocation(line: 235, column: 15, scope: !1834)
!1872 = !DILocation(line: 235, column: 15, scope: !1835)
!1873 = !DILocation(line: 235, column: 15, scope: !1831)
!1874 = !DILocation(line: 235, column: 15, scope: !1832)
!1875 = !DILocation(line: 0, scope: !1837)
!1876 = !DILocation(line: 0, scope: !1839)
!1877 = !DILocation(line: 243, column: 7, scope: !1839)
!1878 = !DILocation(line: 243, column: 7, scope: !1840)
!1879 = !DILocation(line: 243, column: 7, scope: !1837)
!1880 = !DILocation(line: 244, column: 7, scope: !1816)
!1881 = distinct !{!1881, !1844, !1882, !1216}
!1882 = !DILocation(line: 245, column: 5, scope: !1808)
!1883 = !DILocation(line: 246, column: 1, scope: !1808)
!1884 = distinct !DISubprogram(name: "last_component", scope: !1013, file: !1013, line: 29, type: !1295, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1012, retainedNodes: !1885)
!1885 = !{!1886, !1887, !1888, !1889}
!1886 = !DILocalVariable(name: "name", arg: 1, scope: !1884, file: !1013, line: 29, type: !171)
!1887 = !DILocalVariable(name: "base", scope: !1884, file: !1013, line: 31, type: !171)
!1888 = !DILocalVariable(name: "last_was_slash", scope: !1884, file: !1013, line: 35, type: !112)
!1889 = !DILocalVariable(name: "p", scope: !1890, file: !1013, line: 36, type: !171)
!1890 = distinct !DILexicalBlock(scope: !1884, file: !1013, line: 36, column: 3)
!1891 = !DILocation(line: 0, scope: !1884)
!1892 = !DILocation(line: 32, column: 3, scope: !1884)
!1893 = !DILocation(line: 32, column: 10, scope: !1884)
!1894 = !DILocation(line: 33, column: 9, scope: !1884)
!1895 = distinct !{!1895, !1892, !1894, !1216}
!1896 = !DILocation(line: 36, column: 30, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1890, file: !1013, line: 36, column: 3)
!1898 = !DILocation(line: 31, column: 15, scope: !1884)
!1899 = !DILocation(line: 36, scope: !1890)
!1900 = !DILocation(line: 0, scope: !1890)
!1901 = !DILocation(line: 36, column: 3, scope: !1890)
!1902 = !DILocation(line: 47, column: 3, scope: !1884)
!1903 = !DILocation(line: 40, column: 16, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !1013, line: 40, column: 16)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !1013, line: 38, column: 11)
!1906 = distinct !DILexicalBlock(scope: !1897, file: !1013, line: 37, column: 5)
!1907 = !DILocation(line: 40, column: 16, scope: !1905)
!1908 = !DILocation(line: 36, column: 35, scope: !1897)
!1909 = !DILocation(line: 36, column: 3, scope: !1897)
!1910 = distinct !{!1910, !1901, !1911, !1216}
!1911 = !DILocation(line: 45, column: 5, scope: !1890)
!1912 = distinct !DISubprogram(name: "base_len", scope: !1013, file: !1013, line: 51, type: !1913, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1012, retainedNodes: !1915)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!163, !171}
!1915 = !{!1916, !1917, !1918}
!1916 = !DILocalVariable(name: "name", arg: 1, scope: !1912, file: !1013, line: 51, type: !171)
!1917 = !DILocalVariable(name: "len", scope: !1912, file: !1013, line: 53, type: !163)
!1918 = !DILocalVariable(name: "prefix_len", scope: !1912, file: !1013, line: 61, type: !163)
!1919 = !DILocation(line: 0, scope: !1912)
!1920 = !DILocation(line: 54, column: 14, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1912, file: !1013, line: 54, column: 3)
!1922 = !DILocation(line: 54, column: 8, scope: !1921)
!1923 = !DILocation(line: 54, column: 32, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1921, file: !1013, line: 54, column: 3)
!1925 = !DILocation(line: 54, column: 38, scope: !1924)
!1926 = !DILocation(line: 54, column: 41, scope: !1924)
!1927 = !DILocation(line: 54, column: 3, scope: !1921)
!1928 = !DILocation(line: 54, column: 70, scope: !1924)
!1929 = distinct !{!1929, !1927, !1930, !1216}
!1930 = !DILocation(line: 55, column: 5, scope: !1921)
!1931 = !DILocation(line: 54, scope: !1921)
!1932 = !DILocation(line: 66, column: 3, scope: !1912)
!1933 = distinct !DISubprogram(name: "c_strcasecmp", scope: !1016, file: !1016, line: 27, type: !1298, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1015, retainedNodes: !1934)
!1934 = !{!1935, !1936, !1937, !1938, !1939, !1943}
!1935 = !DILocalVariable(name: "s1", arg: 1, scope: !1933, file: !1016, line: 27, type: !171)
!1936 = !DILocalVariable(name: "s2", arg: 2, scope: !1933, file: !1016, line: 27, type: !171)
!1937 = !DILocalVariable(name: "p1", scope: !1933, file: !1016, line: 29, type: !1018)
!1938 = !DILocalVariable(name: "p2", scope: !1933, file: !1016, line: 30, type: !1018)
!1939 = !DILocalVariable(name: "c1", scope: !1940, file: !1016, line: 37, type: !223)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !1016, line: 36, column: 5)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !1016, line: 35, column: 3)
!1942 = distinct !DILexicalBlock(scope: !1933, file: !1016, line: 35, column: 3)
!1943 = !DILocalVariable(name: "c2", scope: !1940, file: !1016, line: 38, type: !223)
!1944 = !DILocation(line: 0, scope: !1933)
!1945 = !DILocation(line: 32, column: 10, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1933, file: !1016, line: 32, column: 7)
!1947 = !DILocation(line: 32, column: 7, scope: !1933)
!1948 = !DILocation(line: 37, column: 37, scope: !1940)
!1949 = !DILocalVariable(name: "c", arg: 1, scope: !1950, file: !1951, line: 337, type: !89)
!1950 = distinct !DISubprogram(name: "c_tolower", scope: !1951, file: !1951, line: 337, type: !1952, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1015, retainedNodes: !1954)
!1951 = !DIFile(filename: "lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!89, !89}
!1954 = !{!1949}
!1955 = !DILocation(line: 0, scope: !1950, inlinedAt: !1956)
!1956 = distinct !DILocation(line: 37, column: 26, scope: !1940)
!1957 = !DILocation(line: 339, column: 3, scope: !1950, inlinedAt: !1956)
!1958 = !DILocation(line: 0, scope: !1940)
!1959 = !DILocation(line: 38, column: 37, scope: !1940)
!1960 = !DILocation(line: 0, scope: !1950, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 38, column: 26, scope: !1940)
!1962 = !DILocation(line: 339, column: 3, scope: !1950, inlinedAt: !1961)
!1963 = !DILocation(line: 40, column: 11, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1940, file: !1016, line: 40, column: 11)
!1965 = !DILocation(line: 40, column: 14, scope: !1964)
!1966 = !DILocation(line: 40, column: 22, scope: !1964)
!1967 = !DILocation(line: 43, column: 23, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !1016, line: 42, column: 15)
!1969 = distinct !DILexicalBlock(scope: !1964, file: !1016, line: 41, column: 9)
!1970 = !DILocation(line: 35, column: 13, scope: !1941)
!1971 = !DILocation(line: 35, column: 19, scope: !1941)
!1972 = distinct !{!1972, !1973, !1974}
!1973 = !DILocation(line: 35, column: 3, scope: !1942)
!1974 = !DILocation(line: 50, column: 5, scope: !1942)
!1975 = !DILocation(line: 51, column: 1, scope: !1933)
!1976 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !683, file: !683, line: 50, type: !1119, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !1977)
!1977 = !{!1978}
!1978 = !DILocalVariable(name: "file", arg: 1, scope: !1976, file: !683, line: 50, type: !171)
!1979 = !DILocation(line: 0, scope: !1976)
!1980 = !DILocation(line: 52, column: 13, scope: !1976)
!1981 = !DILocation(line: 53, column: 1, scope: !1976)
!1982 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !683, file: !683, line: 87, type: !1983, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !1985)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{null, !112}
!1985 = !{!1986}
!1986 = !DILocalVariable(name: "ignore", arg: 1, scope: !1982, file: !683, line: 87, type: !112)
!1987 = !DILocation(line: 0, scope: !1982)
!1988 = !DILocation(line: 89, column: 16, scope: !1982)
!1989 = !{!1990, !1990, i64 0}
!1990 = !{!"_Bool", !1105, i64 0}
!1991 = !DILocation(line: 90, column: 1, scope: !1982)
!1992 = distinct !DISubprogram(name: "close_stdout", scope: !683, file: !683, line: 116, type: !741, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !1993)
!1993 = !{!1994}
!1994 = !DILocalVariable(name: "write_error", scope: !1995, file: !683, line: 121, type: !171)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !683, line: 120, column: 5)
!1996 = distinct !DILexicalBlock(scope: !1992, file: !683, line: 118, column: 7)
!1997 = !DILocation(line: 118, column: 21, scope: !1996)
!1998 = !DILocation(line: 118, column: 7, scope: !1996)
!1999 = !DILocation(line: 118, column: 29, scope: !1996)
!2000 = !DILocation(line: 119, column: 7, scope: !1996)
!2001 = !DILocation(line: 119, column: 12, scope: !1996)
!2002 = !{i8 0, i8 2}
!2003 = !DILocation(line: 119, column: 25, scope: !1996)
!2004 = !DILocation(line: 119, column: 28, scope: !1996)
!2005 = !DILocation(line: 119, column: 34, scope: !1996)
!2006 = !DILocation(line: 118, column: 7, scope: !1992)
!2007 = !DILocation(line: 121, column: 33, scope: !1995)
!2008 = !DILocation(line: 0, scope: !1995)
!2009 = !DILocation(line: 122, column: 11, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1995, file: !683, line: 122, column: 11)
!2011 = !DILocation(line: 0, scope: !2010)
!2012 = !DILocation(line: 122, column: 11, scope: !1995)
!2013 = !DILocation(line: 123, column: 9, scope: !2010)
!2014 = !DILocation(line: 126, column: 9, scope: !2010)
!2015 = !DILocation(line: 128, column: 14, scope: !1995)
!2016 = !DILocation(line: 128, column: 7, scope: !1995)
!2017 = !DILocation(line: 133, column: 42, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1992, file: !683, line: 133, column: 7)
!2019 = !DILocation(line: 133, column: 28, scope: !2018)
!2020 = !DILocation(line: 133, column: 50, scope: !2018)
!2021 = !DILocation(line: 133, column: 7, scope: !1992)
!2022 = !DILocation(line: 134, column: 12, scope: !2018)
!2023 = !DILocation(line: 134, column: 5, scope: !2018)
!2024 = !DILocation(line: 135, column: 1, scope: !1992)
!2025 = !DISubprogram(name: "_exit", scope: !2026, file: !2026, line: 624, type: !1093, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2026 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2027 = distinct !DISubprogram(name: "verror", scope: !698, file: !698, line: 251, type: !2028, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !2030)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{null, !89, !89, !171, !708}
!2030 = !{!2031, !2032, !2033, !2034}
!2031 = !DILocalVariable(name: "status", arg: 1, scope: !2027, file: !698, line: 251, type: !89)
!2032 = !DILocalVariable(name: "errnum", arg: 2, scope: !2027, file: !698, line: 251, type: !89)
!2033 = !DILocalVariable(name: "message", arg: 3, scope: !2027, file: !698, line: 251, type: !171)
!2034 = !DILocalVariable(name: "args", arg: 4, scope: !2027, file: !698, line: 251, type: !708)
!2035 = !DILocation(line: 0, scope: !2027)
!2036 = !DILocation(line: 261, column: 3, scope: !2027)
!2037 = !DILocation(line: 265, column: 7, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2027, file: !698, line: 265, column: 7)
!2039 = !DILocation(line: 265, column: 7, scope: !2027)
!2040 = !DILocation(line: 266, column: 5, scope: !2038)
!2041 = !DILocation(line: 272, column: 7, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2038, file: !698, line: 268, column: 5)
!2043 = !DILocation(line: 276, column: 3, scope: !2027)
!2044 = !DILocation(line: 282, column: 1, scope: !2027)
!2045 = distinct !DISubprogram(name: "flush_stdout", scope: !698, file: !698, line: 163, type: !741, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !2046)
!2046 = !{!2047}
!2047 = !DILocalVariable(name: "stdout_fd", scope: !2045, file: !698, line: 166, type: !89)
!2048 = !DILocation(line: 0, scope: !2045)
!2049 = !DILocalVariable(name: "fd", arg: 1, scope: !2050, file: !698, line: 145, type: !89)
!2050 = distinct !DISubprogram(name: "is_open", scope: !698, file: !698, line: 145, type: !1952, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !2051)
!2051 = !{!2049}
!2052 = !DILocation(line: 0, scope: !2050, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 182, column: 25, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2045, file: !698, line: 182, column: 7)
!2055 = !DILocation(line: 157, column: 15, scope: !2050, inlinedAt: !2053)
!2056 = !DILocation(line: 157, column: 12, scope: !2050, inlinedAt: !2053)
!2057 = !DILocation(line: 182, column: 7, scope: !2045)
!2058 = !DILocation(line: 184, column: 5, scope: !2054)
!2059 = !DILocation(line: 185, column: 1, scope: !2045)
!2060 = distinct !DISubprogram(name: "error_tail", scope: !698, file: !698, line: 219, type: !2028, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !2061)
!2061 = !{!2062, !2063, !2064, !2065}
!2062 = !DILocalVariable(name: "status", arg: 1, scope: !2060, file: !698, line: 219, type: !89)
!2063 = !DILocalVariable(name: "errnum", arg: 2, scope: !2060, file: !698, line: 219, type: !89)
!2064 = !DILocalVariable(name: "message", arg: 3, scope: !2060, file: !698, line: 219, type: !171)
!2065 = !DILocalVariable(name: "args", arg: 4, scope: !2060, file: !698, line: 219, type: !708)
!2066 = distinct !DIAssignID()
!2067 = !DILocation(line: 0, scope: !2060)
!2068 = !DILocation(line: 229, column: 13, scope: !2060)
!2069 = !DILocalVariable(name: "__stream", arg: 1, scope: !2070, file: !1155, line: 132, type: !2073)
!2070 = distinct !DISubprogram(name: "vfprintf", scope: !1155, file: !1155, line: 132, type: !2071, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !2108)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!89, !2073, !1159, !708}
!2073 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2074)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !2076)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !2077)
!2077 = !{!2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2076, file: !117, line: 51, baseType: !89, size: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2076, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2076, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2076, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2076, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2076, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2076, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2076, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2076, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2076, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2076, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2076, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2076, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2076, file: !117, line: 70, baseType: !2092, size: 64, offset: 832)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2076, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2076, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2076, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2076, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2076, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2076, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2076, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2076, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2076, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2076, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2076, file: !117, line: 93, baseType: !2092, size: 64, offset: 1344)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2076, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2076, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2076, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2076, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!2108 = !{!2069, !2109, !2110}
!2109 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2070, file: !1155, line: 133, type: !1159)
!2110 = !DILocalVariable(name: "__ap", arg: 3, scope: !2070, file: !1155, line: 133, type: !708)
!2111 = !DILocation(line: 0, scope: !2070, inlinedAt: !2112)
!2112 = distinct !DILocation(line: 229, column: 3, scope: !2060)
!2113 = !DILocation(line: 135, column: 10, scope: !2070, inlinedAt: !2112)
!2114 = !DILocation(line: 232, column: 3, scope: !2060)
!2115 = !DILocation(line: 233, column: 7, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2060, file: !698, line: 233, column: 7)
!2117 = !DILocation(line: 233, column: 7, scope: !2060)
!2118 = !DILocalVariable(name: "errbuf", scope: !2119, file: !698, line: 193, type: !2123)
!2119 = distinct !DISubprogram(name: "print_errno_message", scope: !698, file: !698, line: 188, type: !1093, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !2120)
!2120 = !{!2121, !2122, !2118}
!2121 = !DILocalVariable(name: "errnum", arg: 1, scope: !2119, file: !698, line: 188, type: !89)
!2122 = !DILocalVariable(name: "s", scope: !2119, file: !698, line: 190, type: !171)
!2123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2124)
!2124 = !{!2125}
!2125 = !DISubrange(count: 1024)
!2126 = !DILocation(line: 0, scope: !2119, inlinedAt: !2127)
!2127 = distinct !DILocation(line: 234, column: 5, scope: !2116)
!2128 = !DILocation(line: 193, column: 3, scope: !2119, inlinedAt: !2127)
!2129 = !DILocation(line: 195, column: 7, scope: !2119, inlinedAt: !2127)
!2130 = !DILocation(line: 207, column: 9, scope: !2131, inlinedAt: !2127)
!2131 = distinct !DILexicalBlock(scope: !2119, file: !698, line: 207, column: 7)
!2132 = !DILocation(line: 207, column: 7, scope: !2119, inlinedAt: !2127)
!2133 = !DILocation(line: 208, column: 9, scope: !2131, inlinedAt: !2127)
!2134 = !DILocation(line: 208, column: 5, scope: !2131, inlinedAt: !2127)
!2135 = !DILocation(line: 214, column: 3, scope: !2119, inlinedAt: !2127)
!2136 = !DILocation(line: 216, column: 1, scope: !2119, inlinedAt: !2127)
!2137 = !DILocation(line: 234, column: 5, scope: !2116)
!2138 = !DILocation(line: 238, column: 3, scope: !2060)
!2139 = !DILocalVariable(name: "__c", arg: 1, scope: !2140, file: !1542, line: 101, type: !89)
!2140 = distinct !DISubprogram(name: "putc_unlocked", scope: !1542, file: !1542, line: 101, type: !2141, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !2143)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!89, !89, !2074}
!2143 = !{!2139, !2144}
!2144 = !DILocalVariable(name: "__stream", arg: 2, scope: !2140, file: !1542, line: 101, type: !2074)
!2145 = !DILocation(line: 0, scope: !2140, inlinedAt: !2146)
!2146 = distinct !DILocation(line: 238, column: 3, scope: !2060)
!2147 = !DILocation(line: 103, column: 10, scope: !2140, inlinedAt: !2146)
!2148 = !{!1568, !1104, i64 40}
!2149 = !{!1568, !1104, i64 48}
!2150 = !{!"branch_weights", i32 2000, i32 1}
!2151 = !DILocation(line: 240, column: 3, scope: !2060)
!2152 = !DILocation(line: 241, column: 7, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2060, file: !698, line: 241, column: 7)
!2154 = !DILocation(line: 241, column: 7, scope: !2060)
!2155 = !DILocation(line: 242, column: 5, scope: !2153)
!2156 = !DILocation(line: 243, column: 1, scope: !2060)
!2157 = !DISubprogram(name: "__vfprintf_chk", scope: !1155, file: !1155, line: 96, type: !2158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!89, !2073, !89, !1159, !708}
!2160 = !DISubprogram(name: "strerror_r", scope: !1289, file: !1289, line: 444, type: !2161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!121, !89, !121, !163}
!2163 = !DISubprogram(name: "__overflow", scope: !1164, file: !1164, line: 886, type: !2164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!89, !2074, !89}
!2166 = !DISubprogram(name: "fflush_unlocked", scope: !1164, file: !1164, line: 239, type: !2167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!89, !2074}
!2169 = !DISubprogram(name: "fcntl", scope: !2170, file: !2170, line: 149, type: !2171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2170 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!89, !89, !89, null}
!2173 = distinct !DISubprogram(name: "error", scope: !698, file: !698, line: 285, type: !2174, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !2176)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{null, !89, !89, !171, null}
!2176 = !{!2177, !2178, !2179, !2180}
!2177 = !DILocalVariable(name: "status", arg: 1, scope: !2173, file: !698, line: 285, type: !89)
!2178 = !DILocalVariable(name: "errnum", arg: 2, scope: !2173, file: !698, line: 285, type: !89)
!2179 = !DILocalVariable(name: "message", arg: 3, scope: !2173, file: !698, line: 285, type: !171)
!2180 = !DILocalVariable(name: "ap", scope: !2173, file: !698, line: 287, type: !2181)
!2181 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1164, line: 52, baseType: !2182)
!2182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2183, line: 12, baseType: !2184)
!2183 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !698, baseType: !2185)
!2185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !709, size: 192, elements: !60)
!2186 = distinct !DIAssignID()
!2187 = !DILocation(line: 0, scope: !2173)
!2188 = !DILocation(line: 287, column: 3, scope: !2173)
!2189 = !DILocation(line: 288, column: 3, scope: !2173)
!2190 = !DILocation(line: 289, column: 3, scope: !2173)
!2191 = !DILocation(line: 290, column: 3, scope: !2173)
!2192 = !DILocation(line: 291, column: 1, scope: !2173)
!2193 = !DILocation(line: 0, scope: !705)
!2194 = !DILocation(line: 302, column: 7, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !705, file: !698, line: 302, column: 7)
!2196 = !DILocation(line: 302, column: 7, scope: !705)
!2197 = !DILocation(line: 307, column: 11, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !698, line: 307, column: 11)
!2199 = distinct !DILexicalBlock(scope: !2195, file: !698, line: 303, column: 5)
!2200 = !DILocation(line: 307, column: 27, scope: !2198)
!2201 = !DILocation(line: 308, column: 11, scope: !2198)
!2202 = !DILocation(line: 308, column: 28, scope: !2198)
!2203 = !DILocation(line: 308, column: 25, scope: !2198)
!2204 = !DILocation(line: 309, column: 15, scope: !2198)
!2205 = !DILocation(line: 309, column: 33, scope: !2198)
!2206 = !DILocation(line: 310, column: 19, scope: !2198)
!2207 = !DILocation(line: 311, column: 22, scope: !2198)
!2208 = !DILocation(line: 311, column: 56, scope: !2198)
!2209 = !DILocation(line: 307, column: 11, scope: !2199)
!2210 = !DILocation(line: 316, column: 21, scope: !2199)
!2211 = !DILocation(line: 317, column: 23, scope: !2199)
!2212 = !DILocation(line: 318, column: 5, scope: !2199)
!2213 = !DILocation(line: 327, column: 3, scope: !705)
!2214 = !DILocation(line: 331, column: 7, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !705, file: !698, line: 331, column: 7)
!2216 = !DILocation(line: 331, column: 7, scope: !705)
!2217 = !DILocation(line: 332, column: 5, scope: !2215)
!2218 = !DILocation(line: 338, column: 7, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2215, file: !698, line: 334, column: 5)
!2220 = !DILocation(line: 346, column: 3, scope: !705)
!2221 = !DILocation(line: 350, column: 3, scope: !705)
!2222 = !DILocation(line: 356, column: 1, scope: !705)
!2223 = distinct !DISubprogram(name: "error_at_line", scope: !698, file: !698, line: 359, type: !2224, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !2226)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{null, !89, !89, !171, !79, !171, null}
!2226 = !{!2227, !2228, !2229, !2230, !2231, !2232}
!2227 = !DILocalVariable(name: "status", arg: 1, scope: !2223, file: !698, line: 359, type: !89)
!2228 = !DILocalVariable(name: "errnum", arg: 2, scope: !2223, file: !698, line: 359, type: !89)
!2229 = !DILocalVariable(name: "file_name", arg: 3, scope: !2223, file: !698, line: 359, type: !171)
!2230 = !DILocalVariable(name: "line_number", arg: 4, scope: !2223, file: !698, line: 360, type: !79)
!2231 = !DILocalVariable(name: "message", arg: 5, scope: !2223, file: !698, line: 360, type: !171)
!2232 = !DILocalVariable(name: "ap", scope: !2223, file: !698, line: 362, type: !2181)
!2233 = distinct !DIAssignID()
!2234 = !DILocation(line: 0, scope: !2223)
!2235 = !DILocation(line: 362, column: 3, scope: !2223)
!2236 = !DILocation(line: 363, column: 3, scope: !2223)
!2237 = !DILocation(line: 364, column: 3, scope: !2223)
!2238 = !DILocation(line: 366, column: 3, scope: !2223)
!2239 = !DILocation(line: 367, column: 1, scope: !2223)
!2240 = distinct !DISubprogram(name: "rpl_fclose", scope: !1021, file: !1021, line: 58, type: !2241, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !2277)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!89, !2243}
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !2245)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !2246)
!2246 = !{!2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2245, file: !117, line: 51, baseType: !89, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2245, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2245, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2245, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2245, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2245, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2245, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2245, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2245, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2245, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2245, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2245, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2245, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2245, file: !117, line: 70, baseType: !2261, size: 64, offset: 832)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2245, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2245, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2245, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2245, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2245, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2245, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2245, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2245, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2245, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2245, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2245, file: !117, line: 93, baseType: !2261, size: 64, offset: 1344)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2245, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2245, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2245, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2245, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!2277 = !{!2278, !2279, !2280, !2281}
!2278 = !DILocalVariable(name: "fp", arg: 1, scope: !2240, file: !1021, line: 58, type: !2243)
!2279 = !DILocalVariable(name: "saved_errno", scope: !2240, file: !1021, line: 60, type: !89)
!2280 = !DILocalVariable(name: "fd", scope: !2240, file: !1021, line: 63, type: !89)
!2281 = !DILocalVariable(name: "result", scope: !2240, file: !1021, line: 74, type: !89)
!2282 = !DILocation(line: 0, scope: !2240)
!2283 = !DILocation(line: 63, column: 12, scope: !2240)
!2284 = !DILocation(line: 64, column: 10, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2240, file: !1021, line: 64, column: 7)
!2286 = !DILocation(line: 64, column: 7, scope: !2240)
!2287 = !DILocation(line: 65, column: 12, scope: !2285)
!2288 = !DILocation(line: 65, column: 5, scope: !2285)
!2289 = !DILocation(line: 70, column: 9, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2240, file: !1021, line: 70, column: 7)
!2291 = !DILocation(line: 70, column: 23, scope: !2290)
!2292 = !DILocation(line: 70, column: 33, scope: !2290)
!2293 = !DILocation(line: 70, column: 26, scope: !2290)
!2294 = !DILocation(line: 70, column: 59, scope: !2290)
!2295 = !DILocation(line: 71, column: 7, scope: !2290)
!2296 = !DILocation(line: 71, column: 10, scope: !2290)
!2297 = !DILocation(line: 70, column: 7, scope: !2240)
!2298 = !DILocation(line: 100, column: 12, scope: !2240)
!2299 = !DILocation(line: 105, column: 7, scope: !2240)
!2300 = !DILocation(line: 72, column: 19, scope: !2290)
!2301 = !DILocation(line: 105, column: 19, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2240, file: !1021, line: 105, column: 7)
!2303 = !DILocation(line: 107, column: 13, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2302, file: !1021, line: 106, column: 5)
!2305 = !DILocation(line: 109, column: 5, scope: !2304)
!2306 = !DILocation(line: 112, column: 1, scope: !2240)
!2307 = !DISubprogram(name: "fileno", scope: !1164, file: !1164, line: 809, type: !2241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2308 = !DISubprogram(name: "fclose", scope: !1164, file: !1164, line: 178, type: !2241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2309 = !DISubprogram(name: "__freading", scope: !2310, file: !2310, line: 51, type: !2241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2310 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2311 = !DISubprogram(name: "lseek", scope: !2026, file: !2026, line: 339, type: !2312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!140, !89, !140, !89}
!2314 = distinct !DISubprogram(name: "rpl_fflush", scope: !1023, file: !1023, line: 130, type: !2315, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !2351)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!89, !2317}
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !2319)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !2320)
!2320 = !{!2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2319, file: !117, line: 51, baseType: !89, size: 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2319, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2319, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2319, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2319, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2319, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2319, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2319, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2319, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2319, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2319, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2319, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2319, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2319, file: !117, line: 70, baseType: !2335, size: 64, offset: 832)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2319, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2319, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2319, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2319, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2319, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2319, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2319, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2319, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2319, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2319, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2319, file: !117, line: 93, baseType: !2335, size: 64, offset: 1344)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2319, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2319, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2319, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2319, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!2351 = !{!2352}
!2352 = !DILocalVariable(name: "stream", arg: 1, scope: !2314, file: !1023, line: 130, type: !2317)
!2353 = !DILocation(line: 0, scope: !2314)
!2354 = !DILocation(line: 151, column: 14, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2314, file: !1023, line: 151, column: 7)
!2356 = !DILocation(line: 151, column: 22, scope: !2355)
!2357 = !DILocation(line: 151, column: 27, scope: !2355)
!2358 = !DILocation(line: 151, column: 7, scope: !2314)
!2359 = !DILocation(line: 152, column: 12, scope: !2355)
!2360 = !DILocation(line: 152, column: 5, scope: !2355)
!2361 = !DILocalVariable(name: "fp", arg: 1, scope: !2362, file: !1023, line: 42, type: !2317)
!2362 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1023, file: !1023, line: 42, type: !2363, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !2365)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{null, !2317}
!2365 = !{!2361}
!2366 = !DILocation(line: 0, scope: !2362, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 157, column: 3, scope: !2314)
!2368 = !DILocation(line: 44, column: 12, scope: !2369, inlinedAt: !2367)
!2369 = distinct !DILexicalBlock(scope: !2362, file: !1023, line: 44, column: 7)
!2370 = !DILocation(line: 44, column: 19, scope: !2369, inlinedAt: !2367)
!2371 = !DILocation(line: 44, column: 7, scope: !2362, inlinedAt: !2367)
!2372 = !DILocation(line: 46, column: 5, scope: !2369, inlinedAt: !2367)
!2373 = !DILocation(line: 159, column: 10, scope: !2314)
!2374 = !DILocation(line: 159, column: 3, scope: !2314)
!2375 = !DILocation(line: 236, column: 1, scope: !2314)
!2376 = !DISubprogram(name: "fflush", scope: !1164, file: !1164, line: 230, type: !2315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2377 = distinct !DISubprogram(name: "freopen_safer", scope: !745, file: !745, line: 60, type: !2378, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1025, retainedNodes: !2414)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!2380, !171, !171, !2380}
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !2382)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !2383)
!2383 = !{!2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2382, file: !117, line: 51, baseType: !89, size: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2382, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2382, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2382, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2382, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2382, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2382, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2382, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2382, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2382, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2382, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2382, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2382, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2382, file: !117, line: 70, baseType: !2398, size: 64, offset: 832)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2382, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2382, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2382, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2382, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2382, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2382, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2382, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2382, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2382, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2382, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2382, file: !117, line: 93, baseType: !2398, size: 64, offset: 1344)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2382, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2382, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2382, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2382, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!2414 = !{!2415, !2416, !2417, !2418, !2419, !2420, !2421}
!2415 = !DILocalVariable(name: "name", arg: 1, scope: !2377, file: !745, line: 60, type: !171)
!2416 = !DILocalVariable(name: "mode", arg: 2, scope: !2377, file: !745, line: 60, type: !171)
!2417 = !DILocalVariable(name: "f", arg: 3, scope: !2377, file: !745, line: 60, type: !2380)
!2418 = !DILocalVariable(name: "protect_in", scope: !2377, file: !745, line: 68, type: !112)
!2419 = !DILocalVariable(name: "protect_out", scope: !2377, file: !745, line: 69, type: !112)
!2420 = !DILocalVariable(name: "protect_err", scope: !2377, file: !745, line: 70, type: !112)
!2421 = !DILocalVariable(name: "saved_errno", scope: !2377, file: !745, line: 98, type: !89)
!2422 = !DILocation(line: 0, scope: !2377)
!2423 = !DILocation(line: 72, column: 11, scope: !2377)
!2424 = !DILocation(line: 72, column: 3, scope: !2377)
!2425 = !DILocation(line: 75, column: 11, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !745, line: 75, column: 11)
!2427 = distinct !DILexicalBlock(scope: !2377, file: !745, line: 73, column: 5)
!2428 = !DILocation(line: 75, column: 47, scope: !2426)
!2429 = !DILocation(line: 75, column: 11, scope: !2427)
!2430 = !DILocation(line: 79, column: 11, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2427, file: !745, line: 79, column: 11)
!2432 = !DILocation(line: 79, column: 47, scope: !2431)
!2433 = !DILocation(line: 79, column: 11, scope: !2427)
!2434 = !DILocation(line: 83, column: 11, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2427, file: !745, line: 83, column: 11)
!2436 = !DILocation(line: 83, column: 45, scope: !2435)
!2437 = !DILocation(line: 90, column: 18, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2377, file: !745, line: 90, column: 7)
!2439 = !DILocalVariable(name: "fd", arg: 1, scope: !2440, file: !745, line: 38, type: !89)
!2440 = distinct !DISubprogram(name: "protect_fd", scope: !745, file: !745, line: 38, type: !1608, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1025, retainedNodes: !2441)
!2441 = !{!2439, !2442}
!2442 = !DILocalVariable(name: "value", scope: !2440, file: !745, line: 40, type: !89)
!2443 = !DILocation(line: 0, scope: !2440, inlinedAt: !2444)
!2444 = distinct !DILocation(line: 90, column: 22, scope: !2438)
!2445 = !DILocation(line: 40, column: 15, scope: !2440, inlinedAt: !2444)
!2446 = !DILocation(line: 41, column: 7, scope: !2440, inlinedAt: !2444)
!2447 = !DILocation(line: 45, column: 11, scope: !2448, inlinedAt: !2444)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !745, line: 44, column: 9)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !745, line: 43, column: 11)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !745, line: 42, column: 5)
!2451 = distinct !DILexicalBlock(scope: !2440, file: !745, line: 41, column: 7)
!2452 = !DILocation(line: 46, column: 11, scope: !2448, inlinedAt: !2444)
!2453 = !DILocation(line: 46, column: 17, scope: !2448, inlinedAt: !2444)
!2454 = !DILocation(line: 90, column: 7, scope: !2377)
!2455 = !DILocation(line: 41, column: 13, scope: !2451, inlinedAt: !2444)
!2456 = !DILocation(line: 92, column: 12, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2438, file: !745, line: 92, column: 12)
!2458 = !DILocation(line: 92, column: 24, scope: !2457)
!2459 = !DILocation(line: 0, scope: !2440, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 92, column: 28, scope: !2457)
!2461 = !DILocation(line: 40, column: 15, scope: !2440, inlinedAt: !2460)
!2462 = !DILocation(line: 41, column: 13, scope: !2451, inlinedAt: !2460)
!2463 = !DILocation(line: 41, column: 7, scope: !2440, inlinedAt: !2460)
!2464 = !DILocation(line: 45, column: 11, scope: !2448, inlinedAt: !2460)
!2465 = !DILocation(line: 46, column: 11, scope: !2448, inlinedAt: !2460)
!2466 = !DILocation(line: 46, column: 17, scope: !2448, inlinedAt: !2460)
!2467 = !DILocation(line: 47, column: 9, scope: !2448, inlinedAt: !2460)
!2468 = !DILocation(line: 92, column: 12, scope: !2438)
!2469 = !DILocation(line: 94, column: 12, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2457, file: !745, line: 94, column: 12)
!2471 = !DILocation(line: 94, column: 24, scope: !2470)
!2472 = !DILocation(line: 0, scope: !2440, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 94, column: 28, scope: !2470)
!2474 = !DILocation(line: 40, column: 15, scope: !2440, inlinedAt: !2473)
!2475 = !DILocation(line: 41, column: 13, scope: !2451, inlinedAt: !2473)
!2476 = !DILocation(line: 41, column: 7, scope: !2440, inlinedAt: !2473)
!2477 = !DILocation(line: 45, column: 11, scope: !2448, inlinedAt: !2473)
!2478 = !DILocation(line: 46, column: 11, scope: !2448, inlinedAt: !2473)
!2479 = !DILocation(line: 46, column: 17, scope: !2448, inlinedAt: !2473)
!2480 = !DILocation(line: 47, column: 9, scope: !2448, inlinedAt: !2473)
!2481 = !DILocation(line: 94, column: 12, scope: !2457)
!2482 = !DILocation(line: 98, column: 21, scope: !2377)
!2483 = !DILocation(line: 99, column: 7, scope: !2377)
!2484 = !DILocation(line: 97, column: 9, scope: !2470)
!2485 = !DILocation(line: 0, scope: !2438)
!2486 = !DILocation(line: 99, column: 7, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2377, file: !745, line: 99, column: 7)
!2488 = !DILocation(line: 100, column: 5, scope: !2487)
!2489 = !DILocation(line: 101, column: 7, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2377, file: !745, line: 101, column: 7)
!2491 = !DILocation(line: 101, column: 7, scope: !2377)
!2492 = !DILocation(line: 102, column: 5, scope: !2490)
!2493 = !DILocation(line: 103, column: 7, scope: !2377)
!2494 = !DILocation(line: 104, column: 5, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2377, file: !745, line: 103, column: 7)
!2496 = !DILocation(line: 105, column: 8, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2377, file: !745, line: 105, column: 7)
!2498 = !DILocation(line: 105, column: 7, scope: !2377)
!2499 = !DILocation(line: 106, column: 11, scope: !2497)
!2500 = !DILocation(line: 106, column: 5, scope: !2497)
!2501 = !DILocation(line: 107, column: 3, scope: !2377)
!2502 = !DISubprogram(name: "dup2", scope: !2026, file: !2026, line: 555, type: !2503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!89, !89, !89}
!2505 = !DISubprogram(name: "open", scope: !2170, file: !2170, line: 181, type: !2506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!89, !171, !89, null}
!2508 = !DISubprogram(name: "close", scope: !2026, file: !2026, line: 358, type: !1952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2509 = !DISubprogram(name: "freopen", scope: !1164, file: !1164, line: 265, type: !2510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!2380, !1159, !1159, !2512}
!2512 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2380)
!2513 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1028, file: !1028, line: 28, type: !2514, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !2551)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!89, !2516, !2550, !89}
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !2518)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !2519)
!2519 = !{!2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2518, file: !117, line: 51, baseType: !89, size: 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2518, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2518, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2518, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2518, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2518, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2518, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2518, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2518, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2518, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2518, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2518, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2518, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2518, file: !117, line: 70, baseType: !2534, size: 64, offset: 832)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2518, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2518, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2518, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2518, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2518, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2518, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2518, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2518, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2518, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2518, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2518, file: !117, line: 93, baseType: !2534, size: 64, offset: 1344)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2518, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2518, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2518, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2518, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!2550 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1164, line: 63, baseType: !140)
!2551 = !{!2552, !2553, !2554, !2555}
!2552 = !DILocalVariable(name: "fp", arg: 1, scope: !2513, file: !1028, line: 28, type: !2516)
!2553 = !DILocalVariable(name: "offset", arg: 2, scope: !2513, file: !1028, line: 28, type: !2550)
!2554 = !DILocalVariable(name: "whence", arg: 3, scope: !2513, file: !1028, line: 28, type: !89)
!2555 = !DILocalVariable(name: "pos", scope: !2556, file: !1028, line: 123, type: !2550)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !1028, line: 119, column: 5)
!2557 = distinct !DILexicalBlock(scope: !2513, file: !1028, line: 55, column: 7)
!2558 = !DILocation(line: 0, scope: !2513)
!2559 = !DILocation(line: 55, column: 12, scope: !2557)
!2560 = !{!1568, !1104, i64 16}
!2561 = !DILocation(line: 55, column: 33, scope: !2557)
!2562 = !{!1568, !1104, i64 8}
!2563 = !DILocation(line: 55, column: 25, scope: !2557)
!2564 = !DILocation(line: 56, column: 7, scope: !2557)
!2565 = !DILocation(line: 56, column: 15, scope: !2557)
!2566 = !DILocation(line: 56, column: 37, scope: !2557)
!2567 = !{!1568, !1104, i64 32}
!2568 = !DILocation(line: 56, column: 29, scope: !2557)
!2569 = !DILocation(line: 57, column: 7, scope: !2557)
!2570 = !DILocation(line: 57, column: 15, scope: !2557)
!2571 = !{!1568, !1104, i64 72}
!2572 = !DILocation(line: 57, column: 29, scope: !2557)
!2573 = !DILocation(line: 55, column: 7, scope: !2513)
!2574 = !DILocation(line: 123, column: 26, scope: !2556)
!2575 = !DILocation(line: 123, column: 19, scope: !2556)
!2576 = !DILocation(line: 0, scope: !2556)
!2577 = !DILocation(line: 124, column: 15, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2556, file: !1028, line: 124, column: 11)
!2579 = !DILocation(line: 124, column: 11, scope: !2556)
!2580 = !DILocation(line: 135, column: 19, scope: !2556)
!2581 = !DILocation(line: 136, column: 12, scope: !2556)
!2582 = !DILocation(line: 136, column: 20, scope: !2556)
!2583 = !{!1568, !1475, i64 144}
!2584 = !DILocation(line: 167, column: 7, scope: !2556)
!2585 = !DILocation(line: 169, column: 10, scope: !2513)
!2586 = !DILocation(line: 169, column: 3, scope: !2513)
!2587 = !DILocation(line: 170, column: 1, scope: !2513)
!2588 = !DISubprogram(name: "fseeko", scope: !1164, file: !1164, line: 736, type: !2589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!89, !2516, !140, !89}
!2591 = distinct !DISubprogram(name: "getprogname", scope: !1030, file: !1030, line: 54, type: !2592, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1029)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!171}
!2594 = !DILocation(line: 58, column: 10, scope: !2591)
!2595 = !DILocation(line: 58, column: 3, scope: !2591)
!2596 = distinct !DISubprogram(name: "print_and_abort", scope: !749, file: !749, line: 343, type: !741, scopeLine: 344, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !748)
!2597 = !DILocation(line: 353, column: 3, scope: !2596)
!2598 = !DILocation(line: 355, column: 9, scope: !2596)
!2599 = !DILocation(line: 355, column: 3, scope: !2596)
!2600 = distinct !DISubprogram(name: "rpl_obstack_begin", scope: !749, file: !749, line: 161, type: !2601, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !2638)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!89, !2603, !163, !163, !305, !316}
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !2605, line: 210, size: 704, elements: !2606)
!2605 = !DIFile(filename: "lib/obstack.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8dc5712d9cd0944565da172aee39448c")
!2606 = !{!2607, !2608, !2615, !2616, !2617, !2618, !2623, !2624, !2629, !2634, !2635, !2636, !2637}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !2604, file: !2605, line: 212, baseType: !163, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !2604, file: !2605, line: 213, baseType: !2609, size: 64, offset: 64)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !2605, line: 203, size: 128, elements: !2611)
!2611 = !{!2612, !2613, !2614}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !2610, file: !2605, line: 205, baseType: !121, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2610, file: !2605, line: 206, baseType: !2609, size: 64, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !2610, file: !2605, line: 207, baseType: !289, offset: 128)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !2604, file: !2605, line: 214, baseType: !121, size: 64, offset: 128)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !2604, file: !2605, line: 215, baseType: !121, size: 64, offset: 192)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !2604, file: !2605, line: 216, baseType: !121, size: 64, offset: 256)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2604, file: !2605, line: 221, baseType: !2619, size: 64, offset: 320)
!2619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2604, file: !2605, line: 217, size: 64, elements: !2620)
!2620 = !{!2621, !2622}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "tempint", scope: !2619, file: !2605, line: 219, baseType: !163, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "tempptr", scope: !2619, file: !2605, line: 220, baseType: !161, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !2604, file: !2605, line: 222, baseType: !163, size: 64, offset: 384)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !2604, file: !2605, line: 229, baseType: !2625, size: 64, offset: 448)
!2625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2604, file: !2605, line: 225, size: 64, elements: !2626)
!2626 = !{!2627, !2628}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !2625, file: !2605, line: 227, baseType: !305, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !2625, file: !2605, line: 228, baseType: !309, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !2604, file: !2605, line: 234, baseType: !2630, size: 64, offset: 512)
!2630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2604, file: !2605, line: 230, size: 64, elements: !2631)
!2631 = !{!2632, !2633}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !2630, file: !2605, line: 232, baseType: !316, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !2630, file: !2605, line: 233, baseType: !320, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !2604, file: !2605, line: 236, baseType: !161, size: 64, offset: 576)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !2604, file: !2605, line: 237, baseType: !79, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !2604, file: !2605, line: 238, baseType: !79, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !2604, file: !2605, line: 242, baseType: !79, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!2638 = !{!2639, !2640, !2641, !2642, !2643}
!2639 = !DILocalVariable(name: "h", arg: 1, scope: !2600, file: !749, line: 161, type: !2603)
!2640 = !DILocalVariable(name: "size", arg: 2, scope: !2600, file: !749, line: 162, type: !163)
!2641 = !DILocalVariable(name: "alignment", arg: 3, scope: !2600, file: !749, line: 162, type: !163)
!2642 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !2600, file: !749, line: 163, type: !305)
!2643 = !DILocalVariable(name: "freefun", arg: 5, scope: !2600, file: !749, line: 164, type: !316)
!2644 = !DILocation(line: 0, scope: !2600)
!2645 = !DILocation(line: 166, column: 6, scope: !2600)
!2646 = !DILocation(line: 166, column: 21, scope: !2600)
!2647 = !DILocation(line: 167, column: 6, scope: !2600)
!2648 = !DILocation(line: 167, column: 20, scope: !2600)
!2649 = !DILocation(line: 168, column: 6, scope: !2600)
!2650 = !DILocation(line: 168, column: 20, scope: !2600)
!2651 = !DILocalVariable(name: "h", arg: 1, scope: !2652, file: !749, line: 114, type: !2603)
!2652 = distinct !DISubprogram(name: "_obstack_begin_worker", scope: !749, file: !749, line: 114, type: !2653, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !2655)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!89, !2603, !163, !163}
!2655 = !{!2651, !2656, !2657, !2658, !2659, !2660, !2661, !2662}
!2656 = !DILocalVariable(name: "chunk_size", arg: 2, scope: !2652, file: !749, line: 115, type: !163)
!2657 = !DILocalVariable(name: "alignment", arg: 3, scope: !2652, file: !749, line: 115, type: !163)
!2658 = !DILocalVariable(name: "chunk", scope: !2652, file: !749, line: 117, type: !2609)
!2659 = !DILocalVariable(name: "aligned_prefix_size", scope: !2652, file: !749, line: 127, type: !163)
!2660 = !DILocalVariable(name: "v", scope: !2652, file: !749, line: 128, type: !112)
!2661 = !DILocalVariable(name: "size", scope: !2652, file: !749, line: 131, type: !163)
!2662 = !DILocalVariable(name: "good_size", scope: !2663, file: !749, line: 137, type: !89)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !749, line: 133, column: 5)
!2664 = distinct !DILexicalBlock(scope: !2652, file: !749, line: 132, column: 7)
!2665 = !DILocation(line: 0, scope: !2652, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 169, column: 10, scope: !2600)
!2667 = !DILocation(line: 119, column: 17, scope: !2668, inlinedAt: !2666)
!2668 = distinct !DILexicalBlock(scope: !2652, file: !749, line: 119, column: 7)
!2669 = !DILocation(line: 128, column: 65, scope: !2652, inlinedAt: !2666)
!2670 = !DILocalVariable(name: "r", arg: 1, scope: !2671, file: !749, line: 78, type: !1044)
!2671 = distinct !DISubprogram(name: "align_chunk_size_up", scope: !749, file: !749, line: 78, type: !2672, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !2674)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!112, !1044, !163, !163}
!2674 = !{!2670, !2675, !2676}
!2675 = !DILocalVariable(name: "mask", arg: 2, scope: !2671, file: !749, line: 78, type: !163)
!2676 = !DILocalVariable(name: "size", arg: 3, scope: !2671, file: !749, line: 79, type: !163)
!2677 = !DILocation(line: 0, scope: !2671, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 128, column: 12, scope: !2652, inlinedAt: !2666)
!2679 = !DILocation(line: 81, column: 10, scope: !2671, inlinedAt: !2678)
!2680 = !DILocation(line: 132, column: 12, scope: !2664, inlinedAt: !2666)
!2681 = !DILocation(line: 132, column: 7, scope: !2652, inlinedAt: !2666)
!2682 = !DILocation(line: 142, column: 17, scope: !2652, inlinedAt: !2666)
!2683 = !{!1474, !1475, i64 0}
!2684 = !DILocation(line: 143, column: 6, scope: !2652, inlinedAt: !2666)
!2685 = !DILocation(line: 143, column: 21, scope: !2652, inlinedAt: !2666)
!2686 = !DILocation(line: 145, column: 22, scope: !2652, inlinedAt: !2666)
!2687 = !DILocation(line: 145, column: 14, scope: !2652, inlinedAt: !2666)
!2688 = !DILocation(line: 145, column: 20, scope: !2652, inlinedAt: !2666)
!2689 = !{!1474, !1104, i64 8}
!2690 = !DILocation(line: 146, column: 7, scope: !2652, inlinedAt: !2666)
!2691 = !DILocalVariable(name: "h", arg: 1, scope: !2692, file: !749, line: 89, type: !2603)
!2692 = distinct !DISubprogram(name: "call_chunkfun", scope: !749, file: !749, line: 89, type: !2693, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !2695)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!161, !2603, !163}
!2695 = !{!2691, !2696}
!2696 = !DILocalVariable(name: "size", arg: 2, scope: !2692, file: !749, line: 89, type: !163)
!2697 = !DILocation(line: 0, scope: !2692, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 145, column: 33, scope: !2652, inlinedAt: !2666)
!2699 = !DILocation(line: 94, column: 12, scope: !2700, inlinedAt: !2698)
!2700 = distinct !DILexicalBlock(scope: !2692, file: !749, line: 91, column: 7)
!2701 = !DILocation(line: 146, column: 8, scope: !2702, inlinedAt: !2666)
!2702 = distinct !DILexicalBlock(scope: !2652, file: !749, line: 146, column: 7)
!2703 = !DILocation(line: 147, column: 7, scope: !2702, inlinedAt: !2666)
!2704 = !DILocation(line: 147, column: 5, scope: !2702, inlinedAt: !2666)
!2705 = !DILocation(line: 148, column: 35, scope: !2652, inlinedAt: !2666)
!2706 = !DILocation(line: 148, column: 21, scope: !2652, inlinedAt: !2666)
!2707 = !DILocation(line: 148, column: 33, scope: !2652, inlinedAt: !2666)
!2708 = !DILocation(line: 148, column: 6, scope: !2652, inlinedAt: !2666)
!2709 = !DILocation(line: 148, column: 16, scope: !2652, inlinedAt: !2666)
!2710 = !DILocation(line: 151, column: 5, scope: !2652, inlinedAt: !2666)
!2711 = !DILocation(line: 150, column: 33, scope: !2652, inlinedAt: !2666)
!2712 = !DILocation(line: 150, column: 6, scope: !2652, inlinedAt: !2666)
!2713 = !DILocation(line: 150, column: 18, scope: !2652, inlinedAt: !2666)
!2714 = !DILocation(line: 153, column: 10, scope: !2652, inlinedAt: !2666)
!2715 = !DILocation(line: 153, column: 15, scope: !2652, inlinedAt: !2666)
!2716 = !DILocation(line: 155, column: 25, scope: !2652, inlinedAt: !2666)
!2717 = !DILocation(line: 156, column: 19, scope: !2652, inlinedAt: !2666)
!2718 = !DILocation(line: 169, column: 3, scope: !2600)
!2719 = distinct !DISubprogram(name: "rpl_obstack_begin_1", scope: !749, file: !749, line: 173, type: !2720, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !2722)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!89, !2603, !163, !163, !309, !320, !161}
!2722 = !{!2723, !2724, !2725, !2726, !2727, !2728}
!2723 = !DILocalVariable(name: "h", arg: 1, scope: !2719, file: !749, line: 173, type: !2603)
!2724 = !DILocalVariable(name: "size", arg: 2, scope: !2719, file: !749, line: 174, type: !163)
!2725 = !DILocalVariable(name: "alignment", arg: 3, scope: !2719, file: !749, line: 174, type: !163)
!2726 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !2719, file: !749, line: 175, type: !309)
!2727 = !DILocalVariable(name: "freefun", arg: 5, scope: !2719, file: !749, line: 176, type: !320)
!2728 = !DILocalVariable(name: "arg", arg: 6, scope: !2719, file: !749, line: 177, type: !161)
!2729 = !DILocation(line: 0, scope: !2719)
!2730 = !DILocation(line: 179, column: 6, scope: !2719)
!2731 = !DILocation(line: 179, column: 21, scope: !2719)
!2732 = !DILocation(line: 180, column: 6, scope: !2719)
!2733 = !DILocation(line: 180, column: 20, scope: !2719)
!2734 = !DILocation(line: 181, column: 6, scope: !2719)
!2735 = !DILocation(line: 181, column: 16, scope: !2719)
!2736 = !{!1474, !1104, i64 72}
!2737 = !DILocation(line: 182, column: 6, scope: !2719)
!2738 = !DILocation(line: 182, column: 20, scope: !2719)
!2739 = !DILocation(line: 0, scope: !2652, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 183, column: 10, scope: !2719)
!2741 = !DILocation(line: 119, column: 17, scope: !2668, inlinedAt: !2740)
!2742 = !DILocation(line: 128, column: 65, scope: !2652, inlinedAt: !2740)
!2743 = !DILocation(line: 0, scope: !2671, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 128, column: 12, scope: !2652, inlinedAt: !2740)
!2745 = !DILocation(line: 81, column: 10, scope: !2671, inlinedAt: !2744)
!2746 = !DILocation(line: 132, column: 12, scope: !2664, inlinedAt: !2740)
!2747 = !DILocation(line: 132, column: 7, scope: !2652, inlinedAt: !2740)
!2748 = !DILocation(line: 142, column: 17, scope: !2652, inlinedAt: !2740)
!2749 = !DILocation(line: 143, column: 6, scope: !2652, inlinedAt: !2740)
!2750 = !DILocation(line: 143, column: 21, scope: !2652, inlinedAt: !2740)
!2751 = !DILocation(line: 145, column: 22, scope: !2652, inlinedAt: !2740)
!2752 = !DILocation(line: 145, column: 14, scope: !2652, inlinedAt: !2740)
!2753 = !DILocation(line: 145, column: 20, scope: !2652, inlinedAt: !2740)
!2754 = !DILocation(line: 146, column: 7, scope: !2652, inlinedAt: !2740)
!2755 = !DILocation(line: 0, scope: !2692, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 145, column: 33, scope: !2652, inlinedAt: !2740)
!2757 = !DILocation(line: 92, column: 12, scope: !2700, inlinedAt: !2756)
!2758 = !DILocation(line: 146, column: 8, scope: !2702, inlinedAt: !2740)
!2759 = !DILocation(line: 147, column: 7, scope: !2702, inlinedAt: !2740)
!2760 = !DILocation(line: 147, column: 5, scope: !2702, inlinedAt: !2740)
!2761 = !DILocation(line: 148, column: 35, scope: !2652, inlinedAt: !2740)
!2762 = !DILocation(line: 148, column: 21, scope: !2652, inlinedAt: !2740)
!2763 = !DILocation(line: 148, column: 33, scope: !2652, inlinedAt: !2740)
!2764 = !DILocation(line: 148, column: 6, scope: !2652, inlinedAt: !2740)
!2765 = !DILocation(line: 148, column: 16, scope: !2652, inlinedAt: !2740)
!2766 = !DILocation(line: 151, column: 5, scope: !2652, inlinedAt: !2740)
!2767 = !DILocation(line: 150, column: 33, scope: !2652, inlinedAt: !2740)
!2768 = !DILocation(line: 150, column: 6, scope: !2652, inlinedAt: !2740)
!2769 = !DILocation(line: 150, column: 18, scope: !2652, inlinedAt: !2740)
!2770 = !DILocation(line: 153, column: 10, scope: !2652, inlinedAt: !2740)
!2771 = !DILocation(line: 153, column: 15, scope: !2652, inlinedAt: !2740)
!2772 = !DILocation(line: 155, column: 25, scope: !2652, inlinedAt: !2740)
!2773 = !DILocation(line: 156, column: 19, scope: !2652, inlinedAt: !2740)
!2774 = !DILocation(line: 183, column: 3, scope: !2719)
!2775 = distinct !DISubprogram(name: "rpl_obstack_newchunk", scope: !749, file: !749, line: 194, type: !2776, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{null, !2603, !163}
!2778 = !{!2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787}
!2779 = !DILocalVariable(name: "h", arg: 1, scope: !2775, file: !749, line: 194, type: !2603)
!2780 = !DILocalVariable(name: "length", arg: 2, scope: !2775, file: !749, line: 194, type: !163)
!2781 = !DILocalVariable(name: "old_chunk", scope: !2775, file: !749, line: 196, type: !2609)
!2782 = !DILocalVariable(name: "obj_size", scope: !2775, file: !749, line: 197, type: !163)
!2783 = !DILocalVariable(name: "s", scope: !2775, file: !749, line: 200, type: !163)
!2784 = !DILocalVariable(name: "new_size", scope: !2775, file: !749, line: 200, type: !163)
!2785 = !DILocalVariable(name: "v", scope: !2775, file: !749, line: 201, type: !112)
!2786 = !DILocalVariable(name: "new_chunk", scope: !2775, file: !749, line: 213, type: !2609)
!2787 = !DILocalVariable(name: "object_base", scope: !2775, file: !749, line: 225, type: !121)
!2788 = !DILocation(line: 0, scope: !2775)
!2789 = !DILocation(line: 196, column: 41, scope: !2775)
!2790 = !DILocation(line: 197, column: 24, scope: !2775)
!2791 = !DILocation(line: 197, column: 39, scope: !2775)
!2792 = !DILocation(line: 197, column: 34, scope: !2775)
!2793 = !DILocation(line: 202, column: 8, scope: !2775)
!2794 = !DILocation(line: 203, column: 36, scope: !2775)
!2795 = !DILocation(line: 0, scope: !2671, inlinedAt: !2796)
!2796 = distinct !DILocation(line: 203, column: 8, scope: !2775)
!2797 = !DILocation(line: 81, column: 10, scope: !2671, inlinedAt: !2796)
!2798 = !DILocation(line: 203, column: 5, scope: !2775)
!2799 = !DILocation(line: 204, column: 8, scope: !2775)
!2800 = !DILocation(line: 204, column: 5, scope: !2775)
!2801 = !DILocation(line: 207, column: 7, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2775, file: !749, line: 207, column: 7)
!2803 = !DILocation(line: 207, column: 7, scope: !2775)
!2804 = !DILocation(line: 209, column: 21, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2775, file: !749, line: 209, column: 7)
!2806 = !DILocation(line: 209, column: 7, scope: !2775)
!2807 = !DILocation(line: 214, column: 5, scope: !2775)
!2808 = !DILocation(line: 0, scope: !2692, inlinedAt: !2809)
!2809 = distinct !DILocation(line: 214, column: 16, scope: !2775)
!2810 = !DILocation(line: 91, column: 10, scope: !2700, inlinedAt: !2809)
!2811 = !DILocation(line: 91, column: 7, scope: !2700, inlinedAt: !2809)
!2812 = !DILocation(line: 0, scope: !2700, inlinedAt: !2809)
!2813 = !DILocation(line: 91, column: 7, scope: !2692, inlinedAt: !2809)
!2814 = !DILocation(line: 92, column: 34, scope: !2700, inlinedAt: !2809)
!2815 = !DILocation(line: 92, column: 12, scope: !2700, inlinedAt: !2809)
!2816 = !DILocation(line: 92, column: 5, scope: !2700, inlinedAt: !2809)
!2817 = !DILocation(line: 94, column: 12, scope: !2700, inlinedAt: !2809)
!2818 = !DILocation(line: 94, column: 5, scope: !2700, inlinedAt: !2809)
!2819 = !DILocation(line: 215, column: 8, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2775, file: !749, line: 215, column: 7)
!2821 = !DILocation(line: 215, column: 7, scope: !2775)
!2822 = !DILocation(line: 216, column: 7, scope: !2820)
!2823 = !DILocation(line: 216, column: 5, scope: !2820)
!2824 = !DILocation(line: 217, column: 12, scope: !2775)
!2825 = !DILocation(line: 218, column: 14, scope: !2775)
!2826 = !DILocation(line: 218, column: 19, scope: !2775)
!2827 = !DILocation(line: 220, column: 5, scope: !2775)
!2828 = !DILocation(line: 219, column: 25, scope: !2775)
!2829 = !DILocation(line: 219, column: 37, scope: !2775)
!2830 = !DILocation(line: 219, column: 20, scope: !2775)
!2831 = !DILocation(line: 226, column: 5, scope: !2775)
!2832 = !DILocation(line: 229, column: 27, scope: !2775)
!2833 = !DILocalVariable(name: "__dest", arg: 1, scope: !2834, file: !2835, line: 26, type: !2838)
!2834 = distinct !DISubprogram(name: "memcpy", scope: !2835, file: !2835, line: 26, type: !2836, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !2839)
!2835 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!161, !2838, !1316, !163}
!2838 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !161)
!2839 = !{!2833, !2840, !2841}
!2840 = !DILocalVariable(name: "__src", arg: 2, scope: !2834, file: !2835, line: 26, type: !1316)
!2841 = !DILocalVariable(name: "__len", arg: 3, scope: !2834, file: !2835, line: 26, type: !163)
!2842 = !DILocation(line: 0, scope: !2834, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 229, column: 3, scope: !2775)
!2844 = !DILocation(line: 29, column: 10, scope: !2834, inlinedAt: !2843)
!2845 = !DILocation(line: 234, column: 11, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2775, file: !749, line: 234, column: 7)
!2847 = !DILocation(line: 234, column: 8, scope: !2846)
!2848 = !DILocation(line: 235, column: 7, scope: !2846)
!2849 = !DILocation(line: 235, column: 14, scope: !2846)
!2850 = !DILocation(line: 236, column: 14, scope: !2846)
!2851 = !DILocation(line: 236, column: 11, scope: !2846)
!2852 = !DILocation(line: 234, column: 7, scope: !2775)
!2853 = !DILocation(line: 239, column: 36, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2846, file: !749, line: 238, column: 5)
!2855 = !DILocation(line: 239, column: 23, scope: !2854)
!2856 = !DILocalVariable(name: "h", arg: 1, scope: !2857, file: !749, line: 98, type: !2603)
!2857 = distinct !DISubprogram(name: "call_freefun", scope: !749, file: !749, line: 98, type: !2858, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !2860)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{null, !2603, !161}
!2860 = !{!2856, !2861}
!2861 = !DILocalVariable(name: "old_chunk", arg: 2, scope: !2857, file: !749, line: 98, type: !161)
!2862 = !DILocation(line: 0, scope: !2857, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 240, column: 7, scope: !2854)
!2864 = !DILocation(line: 100, column: 10, scope: !2865, inlinedAt: !2863)
!2865 = distinct !DILexicalBlock(scope: !2857, file: !749, line: 100, column: 7)
!2866 = !DILocation(line: 100, column: 7, scope: !2865, inlinedAt: !2863)
!2867 = !DILocation(line: 0, scope: !2865, inlinedAt: !2863)
!2868 = !DILocation(line: 100, column: 7, scope: !2857, inlinedAt: !2863)
!2869 = !DILocation(line: 101, column: 26, scope: !2865, inlinedAt: !2863)
!2870 = !DILocation(line: 101, column: 5, scope: !2865, inlinedAt: !2863)
!2871 = !DILocation(line: 103, column: 5, scope: !2865, inlinedAt: !2863)
!2872 = !DILocation(line: 243, column: 18, scope: !2775)
!2873 = !DILocation(line: 244, column: 33, scope: !2775)
!2874 = !DILocation(line: 244, column: 16, scope: !2775)
!2875 = !DILocation(line: 246, column: 25, scope: !2775)
!2876 = !DILocation(line: 247, column: 1, scope: !2775)
!2877 = distinct !DISubprogram(name: "rpl_obstack_allocated_p", scope: !749, file: !749, line: 259, type: !2878, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !2880)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!89, !2603, !161}
!2880 = !{!2881, !2882, !2883, !2884}
!2881 = !DILocalVariable(name: "h", arg: 1, scope: !2877, file: !749, line: 259, type: !2603)
!2882 = !DILocalVariable(name: "obj", arg: 2, scope: !2877, file: !749, line: 259, type: !161)
!2883 = !DILocalVariable(name: "lp", scope: !2877, file: !749, line: 261, type: !2609)
!2884 = !DILocalVariable(name: "plp", scope: !2885, file: !749, line: 268, type: !2609)
!2885 = distinct !DILexicalBlock(scope: !2877, file: !749, line: 267, column: 5)
!2886 = !DILocation(line: 0, scope: !2877)
!2887 = !DILocation(line: 262, column: 8, scope: !2877)
!2888 = !DILocation(line: 266, column: 13, scope: !2877)
!2889 = !DILocation(line: 266, column: 21, scope: !2877)
!2890 = !DILocation(line: 266, column: 37, scope: !2877)
!2891 = !DILocation(line: 266, column: 44, scope: !2877)
!2892 = !DILocation(line: 266, column: 62, scope: !2877)
!2893 = !DILocation(line: 266, column: 68, scope: !2877)
!2894 = !DILocation(line: 266, column: 3, scope: !2877)
!2895 = !DILocation(line: 268, column: 40, scope: !2885)
!2896 = !DILocation(line: 0, scope: !2885)
!2897 = distinct !{!2897, !2894, !2898, !1216}
!2898 = !DILocation(line: 270, column: 5, scope: !2877)
!2899 = !DILocation(line: 271, column: 3, scope: !2877)
!2900 = distinct !DISubprogram(name: "rpl_obstack_free", scope: !749, file: !749, line: 278, type: !2858, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !2901)
!2901 = !{!2902, !2903, !2904, !2905}
!2902 = !DILocalVariable(name: "h", arg: 1, scope: !2900, file: !749, line: 278, type: !2603)
!2903 = !DILocalVariable(name: "obj", arg: 2, scope: !2900, file: !749, line: 278, type: !161)
!2904 = !DILocalVariable(name: "lp", scope: !2900, file: !749, line: 280, type: !2609)
!2905 = !DILocalVariable(name: "plp", scope: !2906, file: !749, line: 287, type: !2609)
!2906 = distinct !DILexicalBlock(scope: !2900, file: !749, line: 286, column: 5)
!2907 = !DILocation(line: 0, scope: !2900)
!2908 = !DILocation(line: 281, column: 8, scope: !2900)
!2909 = !DILocation(line: 285, column: 13, scope: !2900)
!2910 = !DILocation(line: 285, column: 21, scope: !2900)
!2911 = !DILocation(line: 285, column: 37, scope: !2900)
!2912 = !DILocation(line: 285, column: 44, scope: !2900)
!2913 = !DILocation(line: 285, column: 62, scope: !2900)
!2914 = !DILocation(line: 285, column: 68, scope: !2900)
!2915 = !DILocation(line: 285, column: 3, scope: !2900)
!2916 = !DILocation(line: 287, column: 40, scope: !2906)
!2917 = !DILocation(line: 0, scope: !2906)
!2918 = !DILocation(line: 0, scope: !2857, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 288, column: 7, scope: !2906)
!2920 = !DILocation(line: 100, column: 10, scope: !2865, inlinedAt: !2919)
!2921 = !DILocation(line: 100, column: 7, scope: !2865, inlinedAt: !2919)
!2922 = !DILocation(line: 0, scope: !2865, inlinedAt: !2919)
!2923 = !DILocation(line: 100, column: 7, scope: !2857, inlinedAt: !2919)
!2924 = !DILocation(line: 101, column: 26, scope: !2865, inlinedAt: !2919)
!2925 = !DILocation(line: 101, column: 5, scope: !2865, inlinedAt: !2919)
!2926 = !DILocation(line: 103, column: 5, scope: !2865, inlinedAt: !2919)
!2927 = !DILocation(line: 292, column: 29, scope: !2906)
!2928 = distinct !{!2928, !2915, !2929, !1216}
!2929 = !DILocation(line: 293, column: 5, scope: !2900)
!2930 = !DILocation(line: 296, column: 27, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !749, line: 295, column: 5)
!2932 = distinct !DILexicalBlock(scope: !2900, file: !749, line: 294, column: 7)
!2933 = !DILocation(line: 296, column: 37, scope: !2931)
!2934 = !DILocation(line: 296, column: 10, scope: !2931)
!2935 = !DILocation(line: 296, column: 22, scope: !2931)
!2936 = !DILocation(line: 297, column: 28, scope: !2931)
!2937 = !DILocation(line: 297, column: 10, scope: !2931)
!2938 = !DILocation(line: 297, column: 22, scope: !2931)
!2939 = !DILocation(line: 298, column: 16, scope: !2931)
!2940 = !DILocation(line: 299, column: 5, scope: !2931)
!2941 = !DILocation(line: 300, column: 16, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2932, file: !749, line: 300, column: 12)
!2943 = !DILocation(line: 300, column: 12, scope: !2932)
!2944 = !DILocation(line: 302, column: 5, scope: !2942)
!2945 = !DILocation(line: 303, column: 1, scope: !2900)
!2946 = !DISubprogram(name: "abort", scope: !1293, file: !1293, line: 598, type: !741, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2947 = distinct !DISubprogram(name: "rpl_obstack_memory_used", scope: !749, file: !749, line: 311, type: !2948, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!163, !2603}
!2950 = !{!2951, !2952, !2953}
!2951 = !DILocalVariable(name: "h", arg: 1, scope: !2947, file: !749, line: 311, type: !2603)
!2952 = !DILocalVariable(name: "nbytes", scope: !2947, file: !749, line: 313, type: !163)
!2953 = !DILocalVariable(name: "lp", scope: !2954, file: !749, line: 315, type: !2609)
!2954 = distinct !DILexicalBlock(scope: !2947, file: !749, line: 315, column: 3)
!2955 = !DILocation(line: 0, scope: !2947)
!2956 = !DILocation(line: 315, column: 39, scope: !2954)
!2957 = !DILocation(line: 0, scope: !2954)
!2958 = !DILocation(line: 315, scope: !2954)
!2959 = !DILocation(line: 315, column: 49, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2954, file: !749, line: 315, column: 3)
!2961 = !DILocation(line: 315, column: 3, scope: !2954)
!2962 = !DILocation(line: 319, column: 3, scope: !2947)
!2963 = !DILocation(line: 317, column: 21, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2960, file: !749, line: 316, column: 5)
!2965 = !DILocation(line: 317, column: 27, scope: !2964)
!2966 = !DILocation(line: 317, column: 14, scope: !2964)
!2967 = !DILocation(line: 315, column: 67, scope: !2960)
!2968 = distinct !{!2968, !2961, !2969, !1216}
!2969 = !DILocation(line: 318, column: 5, scope: !2954)
!2970 = distinct !DISubprogram(name: "set_program_name", scope: !761, file: !761, line: 37, type: !1119, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !2971)
!2971 = !{!2972, !2973, !2974}
!2972 = !DILocalVariable(name: "argv0", arg: 1, scope: !2970, file: !761, line: 37, type: !171)
!2973 = !DILocalVariable(name: "slash", scope: !2970, file: !761, line: 44, type: !171)
!2974 = !DILocalVariable(name: "base", scope: !2970, file: !761, line: 45, type: !171)
!2975 = !DILocation(line: 0, scope: !2970)
!2976 = !DILocation(line: 44, column: 23, scope: !2970)
!2977 = !DILocation(line: 45, column: 22, scope: !2970)
!2978 = !DILocation(line: 46, column: 17, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2970, file: !761, line: 46, column: 7)
!2980 = !DILocation(line: 46, column: 9, scope: !2979)
!2981 = !DILocation(line: 46, column: 25, scope: !2979)
!2982 = !DILocation(line: 46, column: 40, scope: !2979)
!2983 = !DILocalVariable(name: "__s1", arg: 1, scope: !2984, file: !1182, line: 974, type: !1317)
!2984 = distinct !DISubprogram(name: "memeq", scope: !1182, file: !1182, line: 974, type: !2985, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!112, !1317, !1317, !163}
!2987 = !{!2983, !2988, !2989}
!2988 = !DILocalVariable(name: "__s2", arg: 2, scope: !2984, file: !1182, line: 974, type: !1317)
!2989 = !DILocalVariable(name: "__n", arg: 3, scope: !2984, file: !1182, line: 974, type: !163)
!2990 = !DILocation(line: 0, scope: !2984, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 46, column: 28, scope: !2979)
!2992 = !DILocation(line: 976, column: 11, scope: !2984, inlinedAt: !2991)
!2993 = !DILocation(line: 976, column: 10, scope: !2984, inlinedAt: !2991)
!2994 = !DILocation(line: 46, column: 7, scope: !2970)
!2995 = !DILocation(line: 49, column: 11, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !761, line: 49, column: 11)
!2997 = distinct !DILexicalBlock(scope: !2979, file: !761, line: 47, column: 5)
!2998 = !DILocation(line: 49, column: 36, scope: !2996)
!2999 = !DILocation(line: 49, column: 11, scope: !2997)
!3000 = !DILocation(line: 65, column: 16, scope: !2970)
!3001 = !DILocation(line: 71, column: 27, scope: !2970)
!3002 = !DILocation(line: 74, column: 33, scope: !2970)
!3003 = !DILocation(line: 76, column: 1, scope: !2970)
!3004 = !DISubprogram(name: "strrchr", scope: !1289, file: !1289, line: 273, type: !1304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3005 = distinct !DIAssignID()
!3006 = !DILocation(line: 0, scope: !770)
!3007 = distinct !DIAssignID()
!3008 = !DILocation(line: 40, column: 29, scope: !770)
!3009 = !DILocation(line: 41, column: 19, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !770, file: !771, line: 41, column: 7)
!3011 = !DILocation(line: 41, column: 7, scope: !770)
!3012 = !DILocation(line: 47, column: 3, scope: !770)
!3013 = !DILocation(line: 48, column: 3, scope: !770)
!3014 = !DILocalVariable(name: "ps", arg: 1, scope: !3015, file: !3016, line: 1135, type: !3019)
!3015 = distinct !DISubprogram(name: "mbszero", scope: !3016, file: !3016, line: 1135, type: !3017, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3020)
!3016 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!3017 = !DISubroutineType(types: !3018)
!3018 = !{null, !3019}
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!3020 = !{!3014}
!3021 = !DILocation(line: 0, scope: !3015, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 48, column: 18, scope: !770)
!3023 = !DILocalVariable(name: "__dest", arg: 1, scope: !3024, file: !2835, line: 57, type: !161)
!3024 = distinct !DISubprogram(name: "memset", scope: !2835, file: !2835, line: 57, type: !3025, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3027)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!161, !161, !89, !163}
!3027 = !{!3023, !3028, !3029}
!3028 = !DILocalVariable(name: "__ch", arg: 2, scope: !3024, file: !2835, line: 57, type: !89)
!3029 = !DILocalVariable(name: "__len", arg: 3, scope: !3024, file: !2835, line: 57, type: !163)
!3030 = !DILocation(line: 0, scope: !3024, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 1137, column: 3, scope: !3015, inlinedAt: !3022)
!3032 = !DILocation(line: 59, column: 10, scope: !3024, inlinedAt: !3031)
!3033 = !DILocation(line: 49, column: 7, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !770, file: !771, line: 49, column: 7)
!3035 = !DILocation(line: 49, column: 39, scope: !3034)
!3036 = !DILocation(line: 49, column: 44, scope: !3034)
!3037 = !DILocation(line: 54, column: 1, scope: !770)
!3038 = !DISubprogram(name: "mbrtoc32", scope: !782, file: !782, line: 57, type: !3039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!163, !3041, !1159, !163, !3043}
!3041 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3042)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3019)
!3044 = distinct !DISubprogram(name: "clone_quoting_options", scope: !801, file: !801, line: 113, type: !3045, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3048)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!3047, !3047}
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!3048 = !{!3049, !3050, !3051}
!3049 = !DILocalVariable(name: "o", arg: 1, scope: !3044, file: !801, line: 113, type: !3047)
!3050 = !DILocalVariable(name: "saved_errno", scope: !3044, file: !801, line: 115, type: !89)
!3051 = !DILocalVariable(name: "p", scope: !3044, file: !801, line: 116, type: !3047)
!3052 = !DILocation(line: 0, scope: !3044)
!3053 = !DILocation(line: 115, column: 21, scope: !3044)
!3054 = !DILocation(line: 116, column: 40, scope: !3044)
!3055 = !DILocation(line: 116, column: 31, scope: !3044)
!3056 = !DILocation(line: 118, column: 9, scope: !3044)
!3057 = !DILocation(line: 119, column: 3, scope: !3044)
!3058 = distinct !DISubprogram(name: "get_quoting_style", scope: !801, file: !801, line: 124, type: !3059, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3063)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!824, !3061}
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !839)
!3063 = !{!3064}
!3064 = !DILocalVariable(name: "o", arg: 1, scope: !3058, file: !801, line: 124, type: !3061)
!3065 = !DILocation(line: 0, scope: !3058)
!3066 = !DILocation(line: 126, column: 11, scope: !3058)
!3067 = !DILocation(line: 126, column: 46, scope: !3058)
!3068 = !{!3069, !1170, i64 0}
!3069 = !{!"quoting_options", !1170, i64 0, !1170, i64 4, !1105, i64 8, !1104, i64 40, !1104, i64 48}
!3070 = !DILocation(line: 126, column: 3, scope: !3058)
!3071 = distinct !DISubprogram(name: "set_quoting_style", scope: !801, file: !801, line: 132, type: !3072, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3074)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{null, !3047, !824}
!3074 = !{!3075, !3076}
!3075 = !DILocalVariable(name: "o", arg: 1, scope: !3071, file: !801, line: 132, type: !3047)
!3076 = !DILocalVariable(name: "s", arg: 2, scope: !3071, file: !801, line: 132, type: !824)
!3077 = !DILocation(line: 0, scope: !3071)
!3078 = !DILocation(line: 134, column: 4, scope: !3071)
!3079 = !DILocation(line: 134, column: 45, scope: !3071)
!3080 = !DILocation(line: 135, column: 1, scope: !3071)
!3081 = distinct !DISubprogram(name: "set_char_quoting", scope: !801, file: !801, line: 143, type: !3082, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3084)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!89, !3047, !4, !89}
!3084 = !{!3085, !3086, !3087, !3088, !3089, !3091, !3092}
!3085 = !DILocalVariable(name: "o", arg: 1, scope: !3081, file: !801, line: 143, type: !3047)
!3086 = !DILocalVariable(name: "c", arg: 2, scope: !3081, file: !801, line: 143, type: !4)
!3087 = !DILocalVariable(name: "i", arg: 3, scope: !3081, file: !801, line: 143, type: !89)
!3088 = !DILocalVariable(name: "uc", scope: !3081, file: !801, line: 145, type: !223)
!3089 = !DILocalVariable(name: "p", scope: !3081, file: !801, line: 146, type: !3090)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!3091 = !DILocalVariable(name: "shift", scope: !3081, file: !801, line: 148, type: !89)
!3092 = !DILocalVariable(name: "r", scope: !3081, file: !801, line: 149, type: !79)
!3093 = !DILocation(line: 0, scope: !3081)
!3094 = !DILocation(line: 147, column: 6, scope: !3081)
!3095 = !DILocation(line: 147, column: 41, scope: !3081)
!3096 = !DILocation(line: 147, column: 62, scope: !3081)
!3097 = !DILocation(line: 147, column: 57, scope: !3081)
!3098 = !DILocation(line: 148, column: 15, scope: !3081)
!3099 = !DILocation(line: 149, column: 21, scope: !3081)
!3100 = !DILocation(line: 149, column: 24, scope: !3081)
!3101 = !DILocation(line: 149, column: 34, scope: !3081)
!3102 = !DILocation(line: 150, column: 19, scope: !3081)
!3103 = !DILocation(line: 150, column: 24, scope: !3081)
!3104 = !DILocation(line: 150, column: 6, scope: !3081)
!3105 = !DILocation(line: 151, column: 3, scope: !3081)
!3106 = distinct !DISubprogram(name: "set_quoting_flags", scope: !801, file: !801, line: 159, type: !3107, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3109)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!89, !3047, !89}
!3109 = !{!3110, !3111, !3112}
!3110 = !DILocalVariable(name: "o", arg: 1, scope: !3106, file: !801, line: 159, type: !3047)
!3111 = !DILocalVariable(name: "i", arg: 2, scope: !3106, file: !801, line: 159, type: !89)
!3112 = !DILocalVariable(name: "r", scope: !3106, file: !801, line: 163, type: !89)
!3113 = !DILocation(line: 0, scope: !3106)
!3114 = !DILocation(line: 161, column: 8, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3106, file: !801, line: 161, column: 7)
!3116 = !DILocation(line: 161, column: 7, scope: !3106)
!3117 = !DILocation(line: 163, column: 14, scope: !3106)
!3118 = !{!3069, !1170, i64 4}
!3119 = !DILocation(line: 164, column: 12, scope: !3106)
!3120 = !DILocation(line: 165, column: 3, scope: !3106)
!3121 = distinct !DISubprogram(name: "set_custom_quoting", scope: !801, file: !801, line: 169, type: !3122, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3124)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{null, !3047, !171, !171}
!3124 = !{!3125, !3126, !3127}
!3125 = !DILocalVariable(name: "o", arg: 1, scope: !3121, file: !801, line: 169, type: !3047)
!3126 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3121, file: !801, line: 170, type: !171)
!3127 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3121, file: !801, line: 170, type: !171)
!3128 = !DILocation(line: 0, scope: !3121)
!3129 = !DILocation(line: 172, column: 8, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3121, file: !801, line: 172, column: 7)
!3131 = !DILocation(line: 172, column: 7, scope: !3121)
!3132 = !DILocation(line: 174, column: 12, scope: !3121)
!3133 = !DILocation(line: 175, column: 8, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3121, file: !801, line: 175, column: 7)
!3135 = !DILocation(line: 175, column: 19, scope: !3134)
!3136 = !DILocation(line: 176, column: 5, scope: !3134)
!3137 = !DILocation(line: 177, column: 6, scope: !3121)
!3138 = !DILocation(line: 177, column: 17, scope: !3121)
!3139 = !{!3069, !1104, i64 40}
!3140 = !DILocation(line: 178, column: 6, scope: !3121)
!3141 = !DILocation(line: 178, column: 18, scope: !3121)
!3142 = !{!3069, !1104, i64 48}
!3143 = !DILocation(line: 179, column: 1, scope: !3121)
!3144 = distinct !DISubprogram(name: "quotearg_buffer", scope: !801, file: !801, line: 774, type: !3145, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3147)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!163, !121, !163, !171, !163, !3061}
!3147 = !{!3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155}
!3148 = !DILocalVariable(name: "buffer", arg: 1, scope: !3144, file: !801, line: 774, type: !121)
!3149 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3144, file: !801, line: 774, type: !163)
!3150 = !DILocalVariable(name: "arg", arg: 3, scope: !3144, file: !801, line: 775, type: !171)
!3151 = !DILocalVariable(name: "argsize", arg: 4, scope: !3144, file: !801, line: 775, type: !163)
!3152 = !DILocalVariable(name: "o", arg: 5, scope: !3144, file: !801, line: 776, type: !3061)
!3153 = !DILocalVariable(name: "p", scope: !3144, file: !801, line: 778, type: !3061)
!3154 = !DILocalVariable(name: "saved_errno", scope: !3144, file: !801, line: 779, type: !89)
!3155 = !DILocalVariable(name: "r", scope: !3144, file: !801, line: 780, type: !163)
!3156 = !DILocation(line: 0, scope: !3144)
!3157 = !DILocation(line: 778, column: 37, scope: !3144)
!3158 = !DILocation(line: 779, column: 21, scope: !3144)
!3159 = !DILocation(line: 781, column: 43, scope: !3144)
!3160 = !DILocation(line: 781, column: 53, scope: !3144)
!3161 = !DILocation(line: 781, column: 63, scope: !3144)
!3162 = !DILocation(line: 782, column: 43, scope: !3144)
!3163 = !DILocation(line: 782, column: 58, scope: !3144)
!3164 = !DILocation(line: 780, column: 14, scope: !3144)
!3165 = !DILocation(line: 783, column: 9, scope: !3144)
!3166 = !DILocation(line: 784, column: 3, scope: !3144)
!3167 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !801, file: !801, line: 251, type: !3168, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3172)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!163, !121, !163, !171, !163, !824, !89, !3170, !171, !171}
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!3172 = !{!3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3198, !3200, !3203, !3204, !3205, !3206, !3209, !3210, !3212, !3213, !3216, !3220, !3221, !3229, !3232, !3233, !3234}
!3173 = !DILocalVariable(name: "buffer", arg: 1, scope: !3167, file: !801, line: 251, type: !121)
!3174 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3167, file: !801, line: 251, type: !163)
!3175 = !DILocalVariable(name: "arg", arg: 3, scope: !3167, file: !801, line: 252, type: !171)
!3176 = !DILocalVariable(name: "argsize", arg: 4, scope: !3167, file: !801, line: 252, type: !163)
!3177 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3167, file: !801, line: 253, type: !824)
!3178 = !DILocalVariable(name: "flags", arg: 6, scope: !3167, file: !801, line: 253, type: !89)
!3179 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3167, file: !801, line: 254, type: !3170)
!3180 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3167, file: !801, line: 255, type: !171)
!3181 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3167, file: !801, line: 256, type: !171)
!3182 = !DILocalVariable(name: "unibyte_locale", scope: !3167, file: !801, line: 258, type: !112)
!3183 = !DILocalVariable(name: "len", scope: !3167, file: !801, line: 260, type: !163)
!3184 = !DILocalVariable(name: "orig_buffersize", scope: !3167, file: !801, line: 261, type: !163)
!3185 = !DILocalVariable(name: "quote_string", scope: !3167, file: !801, line: 262, type: !171)
!3186 = !DILocalVariable(name: "quote_string_len", scope: !3167, file: !801, line: 263, type: !163)
!3187 = !DILocalVariable(name: "backslash_escapes", scope: !3167, file: !801, line: 264, type: !112)
!3188 = !DILocalVariable(name: "elide_outer_quotes", scope: !3167, file: !801, line: 265, type: !112)
!3189 = !DILocalVariable(name: "encountered_single_quote", scope: !3167, file: !801, line: 266, type: !112)
!3190 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3167, file: !801, line: 267, type: !112)
!3191 = !DILabel(scope: !3167, name: "process_input", file: !801, line: 308)
!3192 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3167, file: !801, line: 309, type: !112)
!3193 = !DILocalVariable(name: "lq", scope: !3194, file: !801, line: 361, type: !171)
!3194 = distinct !DILexicalBlock(scope: !3195, file: !801, line: 361, column: 11)
!3195 = distinct !DILexicalBlock(scope: !3196, file: !801, line: 360, column: 13)
!3196 = distinct !DILexicalBlock(scope: !3197, file: !801, line: 333, column: 7)
!3197 = distinct !DILexicalBlock(scope: !3167, file: !801, line: 312, column: 5)
!3198 = !DILocalVariable(name: "i", scope: !3199, file: !801, line: 395, type: !163)
!3199 = distinct !DILexicalBlock(scope: !3167, file: !801, line: 395, column: 3)
!3200 = !DILocalVariable(name: "is_right_quote", scope: !3201, file: !801, line: 397, type: !112)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !801, line: 396, column: 5)
!3202 = distinct !DILexicalBlock(scope: !3199, file: !801, line: 395, column: 3)
!3203 = !DILocalVariable(name: "escaping", scope: !3201, file: !801, line: 398, type: !112)
!3204 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3201, file: !801, line: 399, type: !112)
!3205 = !DILocalVariable(name: "c", scope: !3201, file: !801, line: 417, type: !223)
!3206 = !DILabel(scope: !3207, name: "c_and_shell_escape", file: !801, line: 502)
!3207 = distinct !DILexicalBlock(scope: !3208, file: !801, line: 478, column: 9)
!3208 = distinct !DILexicalBlock(scope: !3201, file: !801, line: 419, column: 9)
!3209 = !DILabel(scope: !3207, name: "c_escape", file: !801, line: 507)
!3210 = !DILocalVariable(name: "m", scope: !3211, file: !801, line: 598, type: !163)
!3211 = distinct !DILexicalBlock(scope: !3208, file: !801, line: 596, column: 11)
!3212 = !DILocalVariable(name: "printable", scope: !3211, file: !801, line: 600, type: !112)
!3213 = !DILocalVariable(name: "mbs", scope: !3214, file: !801, line: 609, type: !873)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !801, line: 608, column: 15)
!3215 = distinct !DILexicalBlock(scope: !3211, file: !801, line: 602, column: 17)
!3216 = !DILocalVariable(name: "w", scope: !3217, file: !801, line: 618, type: !781)
!3217 = distinct !DILexicalBlock(scope: !3218, file: !801, line: 617, column: 19)
!3218 = distinct !DILexicalBlock(scope: !3219, file: !801, line: 616, column: 17)
!3219 = distinct !DILexicalBlock(scope: !3214, file: !801, line: 616, column: 17)
!3220 = !DILocalVariable(name: "bytes", scope: !3217, file: !801, line: 619, type: !163)
!3221 = !DILocalVariable(name: "j", scope: !3222, file: !801, line: 648, type: !163)
!3222 = distinct !DILexicalBlock(scope: !3223, file: !801, line: 648, column: 29)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !801, line: 647, column: 27)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !801, line: 645, column: 29)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !801, line: 636, column: 23)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !801, line: 628, column: 30)
!3227 = distinct !DILexicalBlock(scope: !3228, file: !801, line: 623, column: 30)
!3228 = distinct !DILexicalBlock(scope: !3217, file: !801, line: 621, column: 25)
!3229 = !DILocalVariable(name: "ilim", scope: !3230, file: !801, line: 674, type: !163)
!3230 = distinct !DILexicalBlock(scope: !3231, file: !801, line: 671, column: 15)
!3231 = distinct !DILexicalBlock(scope: !3211, file: !801, line: 670, column: 17)
!3232 = !DILabel(scope: !3201, name: "store_escape", file: !801, line: 709)
!3233 = !DILabel(scope: !3201, name: "store_c", file: !801, line: 712)
!3234 = !DILabel(scope: !3167, name: "force_outer_quoting_style", file: !801, line: 753)
!3235 = distinct !DIAssignID()
!3236 = distinct !DIAssignID()
!3237 = distinct !DIAssignID()
!3238 = distinct !DIAssignID()
!3239 = distinct !DIAssignID()
!3240 = !DILocation(line: 0, scope: !3214)
!3241 = distinct !DIAssignID()
!3242 = !DILocation(line: 0, scope: !3217)
!3243 = !DILocation(line: 0, scope: !3167)
!3244 = !DILocation(line: 258, column: 25, scope: !3167)
!3245 = !DILocation(line: 258, column: 36, scope: !3167)
!3246 = !DILocation(line: 265, column: 8, scope: !3167)
!3247 = !DILocation(line: 267, column: 3, scope: !3167)
!3248 = !DILocation(line: 261, column: 10, scope: !3167)
!3249 = !DILocation(line: 262, column: 15, scope: !3167)
!3250 = !DILocation(line: 263, column: 10, scope: !3167)
!3251 = !DILocation(line: 264, column: 8, scope: !3167)
!3252 = !DILocation(line: 266, column: 8, scope: !3167)
!3253 = !DILocation(line: 267, column: 8, scope: !3167)
!3254 = !DILocation(line: 308, column: 2, scope: !3167)
!3255 = !DILocation(line: 311, column: 3, scope: !3167)
!3256 = !DILocation(line: 318, column: 11, scope: !3197)
!3257 = !DILocation(line: 318, column: 12, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3197, file: !801, line: 318, column: 11)
!3259 = !DILocation(line: 319, column: 9, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !801, line: 319, column: 9)
!3261 = distinct !DILexicalBlock(scope: !3258, file: !801, line: 319, column: 9)
!3262 = !DILocation(line: 319, column: 9, scope: !3261)
!3263 = !DILocation(line: 0, scope: !864, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 357, column: 26, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !801, line: 335, column: 11)
!3266 = distinct !DILexicalBlock(scope: !3196, file: !801, line: 334, column: 13)
!3267 = !DILocation(line: 199, column: 29, scope: !864, inlinedAt: !3264)
!3268 = !DILocation(line: 201, column: 19, scope: !3269, inlinedAt: !3264)
!3269 = distinct !DILexicalBlock(scope: !864, file: !801, line: 201, column: 7)
!3270 = !DILocation(line: 201, column: 7, scope: !864, inlinedAt: !3264)
!3271 = !DILocation(line: 229, column: 3, scope: !864, inlinedAt: !3264)
!3272 = !DILocation(line: 230, column: 3, scope: !864, inlinedAt: !3264)
!3273 = !DILocalVariable(name: "ps", arg: 1, scope: !3274, file: !3016, line: 1135, type: !3277)
!3274 = distinct !DISubprogram(name: "mbszero", scope: !3016, file: !3016, line: 1135, type: !3275, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3278)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{null, !3277}
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!3278 = !{!3273}
!3279 = !DILocation(line: 0, scope: !3274, inlinedAt: !3280)
!3280 = distinct !DILocation(line: 230, column: 18, scope: !864, inlinedAt: !3264)
!3281 = !DILocalVariable(name: "__dest", arg: 1, scope: !3282, file: !2835, line: 57, type: !161)
!3282 = distinct !DISubprogram(name: "memset", scope: !2835, file: !2835, line: 57, type: !3025, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3283)
!3283 = !{!3281, !3284, !3285}
!3284 = !DILocalVariable(name: "__ch", arg: 2, scope: !3282, file: !2835, line: 57, type: !89)
!3285 = !DILocalVariable(name: "__len", arg: 3, scope: !3282, file: !2835, line: 57, type: !163)
!3286 = !DILocation(line: 0, scope: !3282, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 1137, column: 3, scope: !3274, inlinedAt: !3280)
!3288 = !DILocation(line: 59, column: 10, scope: !3282, inlinedAt: !3287)
!3289 = !DILocation(line: 231, column: 7, scope: !3290, inlinedAt: !3264)
!3290 = distinct !DILexicalBlock(scope: !864, file: !801, line: 231, column: 7)
!3291 = !DILocation(line: 231, column: 40, scope: !3290, inlinedAt: !3264)
!3292 = !DILocation(line: 231, column: 45, scope: !3290, inlinedAt: !3264)
!3293 = !DILocation(line: 235, column: 1, scope: !864, inlinedAt: !3264)
!3294 = !DILocation(line: 0, scope: !864, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 358, column: 27, scope: !3265)
!3296 = !DILocation(line: 199, column: 29, scope: !864, inlinedAt: !3295)
!3297 = !DILocation(line: 201, column: 19, scope: !3269, inlinedAt: !3295)
!3298 = !DILocation(line: 201, column: 7, scope: !864, inlinedAt: !3295)
!3299 = !DILocation(line: 229, column: 3, scope: !864, inlinedAt: !3295)
!3300 = !DILocation(line: 230, column: 3, scope: !864, inlinedAt: !3295)
!3301 = !DILocation(line: 0, scope: !3274, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 230, column: 18, scope: !864, inlinedAt: !3295)
!3303 = !DILocation(line: 0, scope: !3282, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 1137, column: 3, scope: !3274, inlinedAt: !3302)
!3305 = !DILocation(line: 59, column: 10, scope: !3282, inlinedAt: !3304)
!3306 = !DILocation(line: 231, column: 7, scope: !3290, inlinedAt: !3295)
!3307 = !DILocation(line: 231, column: 40, scope: !3290, inlinedAt: !3295)
!3308 = !DILocation(line: 231, column: 45, scope: !3290, inlinedAt: !3295)
!3309 = !DILocation(line: 235, column: 1, scope: !864, inlinedAt: !3295)
!3310 = !DILocation(line: 360, column: 14, scope: !3195)
!3311 = !DILocation(line: 360, column: 13, scope: !3196)
!3312 = !DILocation(line: 0, scope: !3194)
!3313 = !DILocation(line: 361, column: 45, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3194, file: !801, line: 361, column: 11)
!3315 = !DILocation(line: 361, column: 11, scope: !3194)
!3316 = !DILocation(line: 362, column: 13, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !801, line: 362, column: 13)
!3318 = distinct !DILexicalBlock(scope: !3314, file: !801, line: 362, column: 13)
!3319 = !DILocation(line: 362, column: 13, scope: !3318)
!3320 = !DILocation(line: 361, column: 52, scope: !3314)
!3321 = distinct !{!3321, !3315, !3322, !1216}
!3322 = !DILocation(line: 362, column: 13, scope: !3194)
!3323 = !DILocation(line: 260, column: 10, scope: !3167)
!3324 = !DILocation(line: 365, column: 28, scope: !3196)
!3325 = !DILocation(line: 367, column: 7, scope: !3197)
!3326 = !DILocation(line: 370, column: 7, scope: !3197)
!3327 = !DILocation(line: 373, column: 7, scope: !3197)
!3328 = !DILocation(line: 376, column: 12, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3197, file: !801, line: 376, column: 11)
!3330 = !DILocation(line: 376, column: 11, scope: !3197)
!3331 = !DILocation(line: 381, column: 12, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3197, file: !801, line: 381, column: 11)
!3333 = !DILocation(line: 381, column: 11, scope: !3197)
!3334 = !DILocation(line: 382, column: 9, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3336, file: !801, line: 382, column: 9)
!3336 = distinct !DILexicalBlock(scope: !3332, file: !801, line: 382, column: 9)
!3337 = !DILocation(line: 382, column: 9, scope: !3336)
!3338 = !DILocation(line: 389, column: 7, scope: !3197)
!3339 = !DILocation(line: 392, column: 7, scope: !3197)
!3340 = !DILocation(line: 0, scope: !3199)
!3341 = !DILocation(line: 395, column: 8, scope: !3199)
!3342 = !DILocation(line: 309, column: 8, scope: !3167)
!3343 = !DILocation(line: 395, scope: !3199)
!3344 = !DILocation(line: 395, column: 34, scope: !3202)
!3345 = !DILocation(line: 395, column: 26, scope: !3202)
!3346 = !DILocation(line: 395, column: 48, scope: !3202)
!3347 = !DILocation(line: 395, column: 55, scope: !3202)
!3348 = !DILocation(line: 395, column: 3, scope: !3199)
!3349 = !DILocation(line: 395, column: 67, scope: !3202)
!3350 = !DILocation(line: 0, scope: !3201)
!3351 = !DILocation(line: 402, column: 11, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3201, file: !801, line: 401, column: 11)
!3353 = !DILocation(line: 404, column: 17, scope: !3352)
!3354 = !DILocation(line: 405, column: 39, scope: !3352)
!3355 = !DILocation(line: 409, column: 32, scope: !3352)
!3356 = !DILocation(line: 405, column: 19, scope: !3352)
!3357 = !DILocation(line: 405, column: 15, scope: !3352)
!3358 = !DILocation(line: 410, column: 11, scope: !3352)
!3359 = !DILocation(line: 410, column: 25, scope: !3352)
!3360 = !DILocalVariable(name: "__s1", arg: 1, scope: !3361, file: !1182, line: 974, type: !1317)
!3361 = distinct !DISubprogram(name: "memeq", scope: !1182, file: !1182, line: 974, type: !2985, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3362)
!3362 = !{!3360, !3363, !3364}
!3363 = !DILocalVariable(name: "__s2", arg: 2, scope: !3361, file: !1182, line: 974, type: !1317)
!3364 = !DILocalVariable(name: "__n", arg: 3, scope: !3361, file: !1182, line: 974, type: !163)
!3365 = !DILocation(line: 0, scope: !3361, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 410, column: 14, scope: !3352)
!3367 = !DILocation(line: 976, column: 11, scope: !3361, inlinedAt: !3366)
!3368 = !DILocation(line: 976, column: 10, scope: !3361, inlinedAt: !3366)
!3369 = !DILocation(line: 401, column: 11, scope: !3201)
!3370 = !DILocation(line: 417, column: 25, scope: !3201)
!3371 = !DILocation(line: 418, column: 7, scope: !3201)
!3372 = !DILocation(line: 421, column: 15, scope: !3208)
!3373 = !DILocation(line: 423, column: 15, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3375, file: !801, line: 423, column: 15)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !801, line: 422, column: 13)
!3376 = distinct !DILexicalBlock(scope: !3208, file: !801, line: 421, column: 15)
!3377 = !DILocation(line: 423, column: 15, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3374, file: !801, line: 423, column: 15)
!3379 = !DILocation(line: 423, column: 15, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3381, file: !801, line: 423, column: 15)
!3381 = distinct !DILexicalBlock(scope: !3382, file: !801, line: 423, column: 15)
!3382 = distinct !DILexicalBlock(scope: !3378, file: !801, line: 423, column: 15)
!3383 = !DILocation(line: 423, column: 15, scope: !3381)
!3384 = !DILocation(line: 423, column: 15, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !801, line: 423, column: 15)
!3386 = distinct !DILexicalBlock(scope: !3382, file: !801, line: 423, column: 15)
!3387 = !DILocation(line: 423, column: 15, scope: !3386)
!3388 = !DILocation(line: 423, column: 15, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3390, file: !801, line: 423, column: 15)
!3390 = distinct !DILexicalBlock(scope: !3382, file: !801, line: 423, column: 15)
!3391 = !DILocation(line: 423, column: 15, scope: !3390)
!3392 = !DILocation(line: 423, column: 15, scope: !3382)
!3393 = !DILocation(line: 423, column: 15, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3395, file: !801, line: 423, column: 15)
!3395 = distinct !DILexicalBlock(scope: !3374, file: !801, line: 423, column: 15)
!3396 = !DILocation(line: 423, column: 15, scope: !3395)
!3397 = !DILocation(line: 431, column: 19, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3375, file: !801, line: 430, column: 19)
!3399 = !DILocation(line: 431, column: 24, scope: !3398)
!3400 = !DILocation(line: 431, column: 28, scope: !3398)
!3401 = !DILocation(line: 431, column: 38, scope: !3398)
!3402 = !DILocation(line: 431, column: 48, scope: !3398)
!3403 = !DILocation(line: 431, column: 59, scope: !3398)
!3404 = !DILocation(line: 433, column: 19, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !801, line: 433, column: 19)
!3406 = distinct !DILexicalBlock(scope: !3407, file: !801, line: 433, column: 19)
!3407 = distinct !DILexicalBlock(scope: !3398, file: !801, line: 432, column: 17)
!3408 = !DILocation(line: 433, column: 19, scope: !3406)
!3409 = !DILocation(line: 434, column: 19, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3411, file: !801, line: 434, column: 19)
!3411 = distinct !DILexicalBlock(scope: !3407, file: !801, line: 434, column: 19)
!3412 = !DILocation(line: 434, column: 19, scope: !3411)
!3413 = !DILocation(line: 435, column: 17, scope: !3407)
!3414 = !DILocation(line: 442, column: 20, scope: !3376)
!3415 = !DILocation(line: 447, column: 11, scope: !3208)
!3416 = !DILocation(line: 450, column: 19, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3208, file: !801, line: 448, column: 13)
!3418 = !DILocation(line: 456, column: 19, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3417, file: !801, line: 455, column: 19)
!3420 = !DILocation(line: 456, column: 24, scope: !3419)
!3421 = !DILocation(line: 456, column: 28, scope: !3419)
!3422 = !DILocation(line: 456, column: 38, scope: !3419)
!3423 = !DILocation(line: 456, column: 41, scope: !3419)
!3424 = !DILocation(line: 456, column: 52, scope: !3419)
!3425 = !DILocation(line: 455, column: 19, scope: !3417)
!3426 = !DILocation(line: 457, column: 25, scope: !3419)
!3427 = !DILocation(line: 457, column: 17, scope: !3419)
!3428 = !DILocation(line: 464, column: 25, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3419, file: !801, line: 458, column: 19)
!3430 = !DILocation(line: 468, column: 21, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3432, file: !801, line: 468, column: 21)
!3432 = distinct !DILexicalBlock(scope: !3429, file: !801, line: 468, column: 21)
!3433 = !DILocation(line: 468, column: 21, scope: !3432)
!3434 = !DILocation(line: 469, column: 21, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3436, file: !801, line: 469, column: 21)
!3436 = distinct !DILexicalBlock(scope: !3429, file: !801, line: 469, column: 21)
!3437 = !DILocation(line: 469, column: 21, scope: !3436)
!3438 = !DILocation(line: 470, column: 21, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !801, line: 470, column: 21)
!3440 = distinct !DILexicalBlock(scope: !3429, file: !801, line: 470, column: 21)
!3441 = !DILocation(line: 470, column: 21, scope: !3440)
!3442 = !DILocation(line: 471, column: 21, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !801, line: 471, column: 21)
!3444 = distinct !DILexicalBlock(scope: !3429, file: !801, line: 471, column: 21)
!3445 = !DILocation(line: 471, column: 21, scope: !3444)
!3446 = !DILocation(line: 472, column: 21, scope: !3429)
!3447 = !DILocation(line: 482, column: 33, scope: !3207)
!3448 = !DILocation(line: 483, column: 33, scope: !3207)
!3449 = !DILocation(line: 485, column: 33, scope: !3207)
!3450 = !DILocation(line: 486, column: 33, scope: !3207)
!3451 = !DILocation(line: 487, column: 33, scope: !3207)
!3452 = !DILocation(line: 490, column: 17, scope: !3207)
!3453 = !DILocation(line: 492, column: 21, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3455, file: !801, line: 491, column: 15)
!3455 = distinct !DILexicalBlock(scope: !3207, file: !801, line: 490, column: 17)
!3456 = !DILocation(line: 499, column: 35, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3207, file: !801, line: 499, column: 17)
!3458 = !DILocation(line: 499, column: 57, scope: !3457)
!3459 = !DILocation(line: 0, scope: !3207)
!3460 = !DILocation(line: 502, column: 11, scope: !3207)
!3461 = !DILocation(line: 504, column: 17, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3207, file: !801, line: 503, column: 17)
!3463 = !DILocation(line: 507, column: 11, scope: !3207)
!3464 = !DILocation(line: 508, column: 17, scope: !3207)
!3465 = !DILocation(line: 517, column: 15, scope: !3208)
!3466 = !DILocation(line: 517, column: 40, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3208, file: !801, line: 517, column: 15)
!3468 = !DILocation(line: 517, column: 47, scope: !3467)
!3469 = !DILocation(line: 517, column: 18, scope: !3467)
!3470 = !DILocation(line: 521, column: 17, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3208, file: !801, line: 521, column: 15)
!3472 = !DILocation(line: 521, column: 15, scope: !3208)
!3473 = !DILocation(line: 525, column: 11, scope: !3208)
!3474 = !DILocation(line: 537, column: 15, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3208, file: !801, line: 536, column: 15)
!3476 = !DILocation(line: 544, column: 15, scope: !3208)
!3477 = !DILocation(line: 546, column: 19, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !801, line: 545, column: 13)
!3479 = distinct !DILexicalBlock(scope: !3208, file: !801, line: 544, column: 15)
!3480 = !DILocation(line: 549, column: 19, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3478, file: !801, line: 549, column: 19)
!3482 = !DILocation(line: 549, column: 30, scope: !3481)
!3483 = !DILocation(line: 558, column: 15, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !801, line: 558, column: 15)
!3485 = distinct !DILexicalBlock(scope: !3478, file: !801, line: 558, column: 15)
!3486 = !DILocation(line: 558, column: 15, scope: !3485)
!3487 = !DILocation(line: 559, column: 15, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3489, file: !801, line: 559, column: 15)
!3489 = distinct !DILexicalBlock(scope: !3478, file: !801, line: 559, column: 15)
!3490 = !DILocation(line: 559, column: 15, scope: !3489)
!3491 = !DILocation(line: 560, column: 15, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3493, file: !801, line: 560, column: 15)
!3493 = distinct !DILexicalBlock(scope: !3478, file: !801, line: 560, column: 15)
!3494 = !DILocation(line: 560, column: 15, scope: !3493)
!3495 = !DILocation(line: 562, column: 13, scope: !3478)
!3496 = !DILocation(line: 602, column: 17, scope: !3211)
!3497 = !DILocation(line: 0, scope: !3211)
!3498 = !DILocation(line: 605, column: 29, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3215, file: !801, line: 603, column: 15)
!3500 = !DILocation(line: 605, column: 27, scope: !3499)
!3501 = !DILocation(line: 606, column: 15, scope: !3499)
!3502 = !DILocation(line: 609, column: 17, scope: !3214)
!3503 = !DILocation(line: 0, scope: !3274, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 609, column: 32, scope: !3214)
!3505 = !DILocation(line: 0, scope: !3282, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 1137, column: 3, scope: !3274, inlinedAt: !3504)
!3507 = !DILocation(line: 59, column: 10, scope: !3282, inlinedAt: !3506)
!3508 = !DILocation(line: 613, column: 29, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3214, file: !801, line: 613, column: 21)
!3510 = !DILocation(line: 613, column: 21, scope: !3214)
!3511 = !DILocation(line: 614, column: 29, scope: !3509)
!3512 = !DILocation(line: 614, column: 19, scope: !3509)
!3513 = !DILocation(line: 618, column: 21, scope: !3217)
!3514 = !DILocation(line: 620, column: 54, scope: !3217)
!3515 = !DILocation(line: 619, column: 36, scope: !3217)
!3516 = !DILocation(line: 621, column: 25, scope: !3217)
!3517 = !DILocation(line: 631, column: 38, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3226, file: !801, line: 629, column: 23)
!3519 = !DILocation(line: 631, column: 48, scope: !3518)
!3520 = !DILocation(line: 626, column: 25, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3227, file: !801, line: 624, column: 23)
!3522 = !DILocation(line: 631, column: 51, scope: !3518)
!3523 = !DILocation(line: 631, column: 25, scope: !3518)
!3524 = !DILocation(line: 632, column: 28, scope: !3518)
!3525 = !DILocation(line: 631, column: 34, scope: !3518)
!3526 = distinct !{!3526, !3523, !3524, !1216}
!3527 = !DILocation(line: 0, scope: !3222)
!3528 = !DILocation(line: 646, column: 29, scope: !3224)
!3529 = !DILocation(line: 649, column: 39, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3222, file: !801, line: 648, column: 29)
!3531 = !DILocation(line: 649, column: 31, scope: !3530)
!3532 = !DILocation(line: 648, column: 60, scope: !3530)
!3533 = !DILocation(line: 648, column: 50, scope: !3530)
!3534 = !DILocation(line: 648, column: 29, scope: !3222)
!3535 = distinct !{!3535, !3534, !3536, !1216}
!3536 = !DILocation(line: 654, column: 33, scope: !3222)
!3537 = !DILocation(line: 657, column: 43, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3225, file: !801, line: 657, column: 29)
!3539 = !DILocalVariable(name: "wc", arg: 1, scope: !3540, file: !3541, line: 865, type: !3544)
!3540 = distinct !DISubprogram(name: "c32isprint", scope: !3541, file: !3541, line: 865, type: !3542, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3546)
!3541 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!89, !3544}
!3544 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3545, line: 20, baseType: !79)
!3545 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3546 = !{!3539}
!3547 = !DILocation(line: 0, scope: !3540, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 657, column: 31, scope: !3538)
!3549 = !DILocation(line: 871, column: 10, scope: !3540, inlinedAt: !3548)
!3550 = !DILocation(line: 657, column: 31, scope: !3538)
!3551 = !DILocation(line: 664, column: 23, scope: !3217)
!3552 = !DILocation(line: 665, column: 19, scope: !3218)
!3553 = !DILocation(line: 666, column: 15, scope: !3215)
!3554 = !DILocation(line: 0, scope: !3215)
!3555 = !DILocation(line: 670, column: 19, scope: !3231)
!3556 = !DILocation(line: 670, column: 23, scope: !3231)
!3557 = !DILocation(line: 674, column: 33, scope: !3230)
!3558 = !DILocation(line: 0, scope: !3230)
!3559 = !DILocation(line: 676, column: 17, scope: !3230)
!3560 = !DILocation(line: 398, column: 12, scope: !3201)
!3561 = !DILocation(line: 678, column: 43, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3563, file: !801, line: 678, column: 25)
!3563 = distinct !DILexicalBlock(scope: !3564, file: !801, line: 677, column: 19)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !801, line: 676, column: 17)
!3565 = distinct !DILexicalBlock(scope: !3230, file: !801, line: 676, column: 17)
!3566 = !DILocation(line: 680, column: 25, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3568, file: !801, line: 680, column: 25)
!3568 = distinct !DILexicalBlock(scope: !3562, file: !801, line: 679, column: 23)
!3569 = !DILocation(line: 680, column: 25, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3567, file: !801, line: 680, column: 25)
!3571 = !DILocation(line: 680, column: 25, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3573, file: !801, line: 680, column: 25)
!3573 = distinct !DILexicalBlock(scope: !3574, file: !801, line: 680, column: 25)
!3574 = distinct !DILexicalBlock(scope: !3570, file: !801, line: 680, column: 25)
!3575 = !DILocation(line: 680, column: 25, scope: !3573)
!3576 = !DILocation(line: 680, column: 25, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !801, line: 680, column: 25)
!3578 = distinct !DILexicalBlock(scope: !3574, file: !801, line: 680, column: 25)
!3579 = !DILocation(line: 680, column: 25, scope: !3578)
!3580 = !DILocation(line: 680, column: 25, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3582, file: !801, line: 680, column: 25)
!3582 = distinct !DILexicalBlock(scope: !3574, file: !801, line: 680, column: 25)
!3583 = !DILocation(line: 680, column: 25, scope: !3582)
!3584 = !DILocation(line: 680, column: 25, scope: !3574)
!3585 = !DILocation(line: 680, column: 25, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3587, file: !801, line: 680, column: 25)
!3587 = distinct !DILexicalBlock(scope: !3567, file: !801, line: 680, column: 25)
!3588 = !DILocation(line: 680, column: 25, scope: !3587)
!3589 = !DILocation(line: 681, column: 25, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3591, file: !801, line: 681, column: 25)
!3591 = distinct !DILexicalBlock(scope: !3568, file: !801, line: 681, column: 25)
!3592 = !DILocation(line: 681, column: 25, scope: !3591)
!3593 = !DILocation(line: 682, column: 25, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3595, file: !801, line: 682, column: 25)
!3595 = distinct !DILexicalBlock(scope: !3568, file: !801, line: 682, column: 25)
!3596 = !DILocation(line: 682, column: 25, scope: !3595)
!3597 = !DILocation(line: 683, column: 38, scope: !3568)
!3598 = !DILocation(line: 683, column: 33, scope: !3568)
!3599 = !DILocation(line: 684, column: 23, scope: !3568)
!3600 = !DILocation(line: 685, column: 30, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3562, file: !801, line: 685, column: 30)
!3602 = !DILocation(line: 685, column: 30, scope: !3562)
!3603 = !DILocation(line: 687, column: 25, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3605, file: !801, line: 687, column: 25)
!3605 = distinct !DILexicalBlock(scope: !3606, file: !801, line: 687, column: 25)
!3606 = distinct !DILexicalBlock(scope: !3601, file: !801, line: 686, column: 23)
!3607 = !DILocation(line: 687, column: 25, scope: !3605)
!3608 = !DILocation(line: 689, column: 23, scope: !3606)
!3609 = !DILocation(line: 690, column: 35, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3563, file: !801, line: 690, column: 25)
!3611 = !DILocation(line: 690, column: 30, scope: !3610)
!3612 = !DILocation(line: 690, column: 25, scope: !3563)
!3613 = !DILocation(line: 692, column: 21, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3615, file: !801, line: 692, column: 21)
!3615 = distinct !DILexicalBlock(scope: !3563, file: !801, line: 692, column: 21)
!3616 = !DILocation(line: 692, column: 21, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3618, file: !801, line: 692, column: 21)
!3618 = distinct !DILexicalBlock(scope: !3619, file: !801, line: 692, column: 21)
!3619 = distinct !DILexicalBlock(scope: !3614, file: !801, line: 692, column: 21)
!3620 = !DILocation(line: 692, column: 21, scope: !3618)
!3621 = !DILocation(line: 692, column: 21, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !801, line: 692, column: 21)
!3623 = distinct !DILexicalBlock(scope: !3619, file: !801, line: 692, column: 21)
!3624 = !DILocation(line: 692, column: 21, scope: !3623)
!3625 = !DILocation(line: 692, column: 21, scope: !3619)
!3626 = !DILocation(line: 0, scope: !3563)
!3627 = !DILocation(line: 693, column: 21, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3629, file: !801, line: 693, column: 21)
!3629 = distinct !DILexicalBlock(scope: !3563, file: !801, line: 693, column: 21)
!3630 = !DILocation(line: 693, column: 21, scope: !3629)
!3631 = !DILocation(line: 694, column: 25, scope: !3563)
!3632 = !DILocation(line: 676, column: 17, scope: !3564)
!3633 = distinct !{!3633, !3634, !3635}
!3634 = !DILocation(line: 676, column: 17, scope: !3565)
!3635 = !DILocation(line: 695, column: 19, scope: !3565)
!3636 = !DILocation(line: 409, column: 30, scope: !3352)
!3637 = !DILocation(line: 702, column: 34, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3201, file: !801, line: 702, column: 11)
!3639 = !DILocation(line: 704, column: 14, scope: !3638)
!3640 = !DILocation(line: 705, column: 14, scope: !3638)
!3641 = !DILocation(line: 705, column: 35, scope: !3638)
!3642 = !DILocation(line: 705, column: 17, scope: !3638)
!3643 = !DILocation(line: 705, column: 47, scope: !3638)
!3644 = !DILocation(line: 705, column: 65, scope: !3638)
!3645 = !DILocation(line: 706, column: 11, scope: !3638)
!3646 = !DILocation(line: 702, column: 11, scope: !3201)
!3647 = !DILocation(line: 395, column: 15, scope: !3199)
!3648 = !DILocation(line: 709, column: 5, scope: !3201)
!3649 = !DILocation(line: 710, column: 7, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3201, file: !801, line: 710, column: 7)
!3651 = !DILocation(line: 710, column: 7, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3650, file: !801, line: 710, column: 7)
!3653 = !DILocation(line: 710, column: 7, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3655, file: !801, line: 710, column: 7)
!3655 = distinct !DILexicalBlock(scope: !3656, file: !801, line: 710, column: 7)
!3656 = distinct !DILexicalBlock(scope: !3652, file: !801, line: 710, column: 7)
!3657 = !DILocation(line: 710, column: 7, scope: !3655)
!3658 = !DILocation(line: 710, column: 7, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3660, file: !801, line: 710, column: 7)
!3660 = distinct !DILexicalBlock(scope: !3656, file: !801, line: 710, column: 7)
!3661 = !DILocation(line: 710, column: 7, scope: !3660)
!3662 = !DILocation(line: 710, column: 7, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3664, file: !801, line: 710, column: 7)
!3664 = distinct !DILexicalBlock(scope: !3656, file: !801, line: 710, column: 7)
!3665 = !DILocation(line: 710, column: 7, scope: !3664)
!3666 = !DILocation(line: 710, column: 7, scope: !3656)
!3667 = !DILocation(line: 710, column: 7, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3669, file: !801, line: 710, column: 7)
!3669 = distinct !DILexicalBlock(scope: !3650, file: !801, line: 710, column: 7)
!3670 = !DILocation(line: 710, column: 7, scope: !3669)
!3671 = !DILocation(line: 712, column: 5, scope: !3201)
!3672 = !DILocation(line: 713, column: 7, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3674, file: !801, line: 713, column: 7)
!3674 = distinct !DILexicalBlock(scope: !3201, file: !801, line: 713, column: 7)
!3675 = !DILocation(line: 417, column: 21, scope: !3201)
!3676 = !DILocation(line: 713, column: 7, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3678, file: !801, line: 713, column: 7)
!3678 = distinct !DILexicalBlock(scope: !3679, file: !801, line: 713, column: 7)
!3679 = distinct !DILexicalBlock(scope: !3673, file: !801, line: 713, column: 7)
!3680 = !DILocation(line: 713, column: 7, scope: !3678)
!3681 = !DILocation(line: 713, column: 7, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3683, file: !801, line: 713, column: 7)
!3683 = distinct !DILexicalBlock(scope: !3679, file: !801, line: 713, column: 7)
!3684 = !DILocation(line: 713, column: 7, scope: !3683)
!3685 = !DILocation(line: 713, column: 7, scope: !3679)
!3686 = !DILocation(line: 714, column: 7, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3688, file: !801, line: 714, column: 7)
!3688 = distinct !DILexicalBlock(scope: !3201, file: !801, line: 714, column: 7)
!3689 = !DILocation(line: 714, column: 7, scope: !3688)
!3690 = !DILocation(line: 716, column: 13, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3201, file: !801, line: 716, column: 11)
!3692 = !DILocation(line: 716, column: 11, scope: !3201)
!3693 = !DILocation(line: 718, column: 5, scope: !3202)
!3694 = !DILocation(line: 395, column: 82, scope: !3202)
!3695 = !DILocation(line: 395, column: 3, scope: !3202)
!3696 = distinct !{!3696, !3348, !3697, !1216}
!3697 = !DILocation(line: 718, column: 5, scope: !3199)
!3698 = !DILocation(line: 720, column: 11, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3167, file: !801, line: 720, column: 7)
!3700 = !DILocation(line: 720, column: 16, scope: !3699)
!3701 = !DILocation(line: 728, column: 51, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3167, file: !801, line: 728, column: 7)
!3703 = !DILocation(line: 731, column: 11, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3705, file: !801, line: 731, column: 11)
!3705 = distinct !DILexicalBlock(scope: !3702, file: !801, line: 730, column: 5)
!3706 = !DILocation(line: 731, column: 11, scope: !3705)
!3707 = !DILocation(line: 732, column: 16, scope: !3704)
!3708 = !DILocation(line: 732, column: 9, scope: !3704)
!3709 = !DILocation(line: 736, column: 18, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3704, file: !801, line: 736, column: 16)
!3711 = !DILocation(line: 736, column: 29, scope: !3710)
!3712 = !DILocation(line: 745, column: 7, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3167, file: !801, line: 745, column: 7)
!3714 = !DILocation(line: 745, column: 20, scope: !3713)
!3715 = !DILocation(line: 746, column: 12, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3717, file: !801, line: 746, column: 5)
!3717 = distinct !DILexicalBlock(scope: !3713, file: !801, line: 746, column: 5)
!3718 = !DILocation(line: 746, column: 5, scope: !3717)
!3719 = !DILocation(line: 747, column: 7, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3721, file: !801, line: 747, column: 7)
!3721 = distinct !DILexicalBlock(scope: !3716, file: !801, line: 747, column: 7)
!3722 = !DILocation(line: 747, column: 7, scope: !3721)
!3723 = !DILocation(line: 746, column: 39, scope: !3716)
!3724 = distinct !{!3724, !3718, !3725, !1216}
!3725 = !DILocation(line: 747, column: 7, scope: !3717)
!3726 = !DILocation(line: 749, column: 11, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3167, file: !801, line: 749, column: 7)
!3728 = !DILocation(line: 749, column: 7, scope: !3167)
!3729 = !DILocation(line: 750, column: 5, scope: !3727)
!3730 = !DILocation(line: 750, column: 17, scope: !3727)
!3731 = !DILocation(line: 753, column: 2, scope: !3167)
!3732 = !DILocation(line: 756, column: 51, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3167, file: !801, line: 756, column: 7)
!3734 = !DILocation(line: 756, column: 21, scope: !3733)
!3735 = !DILocation(line: 760, column: 42, scope: !3167)
!3736 = !DILocation(line: 758, column: 10, scope: !3167)
!3737 = !DILocation(line: 758, column: 3, scope: !3167)
!3738 = !DILocation(line: 762, column: 1, scope: !3167)
!3739 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1293, file: !1293, line: 98, type: !3740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!163}
!3742 = !DISubprogram(name: "iswprint", scope: !3743, file: !3743, line: 120, type: !3542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3743 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3744 = distinct !DISubprogram(name: "quotearg_alloc", scope: !801, file: !801, line: 788, type: !3745, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3747)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!121, !171, !163, !3061}
!3747 = !{!3748, !3749, !3750}
!3748 = !DILocalVariable(name: "arg", arg: 1, scope: !3744, file: !801, line: 788, type: !171)
!3749 = !DILocalVariable(name: "argsize", arg: 2, scope: !3744, file: !801, line: 788, type: !163)
!3750 = !DILocalVariable(name: "o", arg: 3, scope: !3744, file: !801, line: 789, type: !3061)
!3751 = !DILocation(line: 0, scope: !3744)
!3752 = !DILocalVariable(name: "arg", arg: 1, scope: !3753, file: !801, line: 801, type: !171)
!3753 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !801, file: !801, line: 801, type: !3754, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3756)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!121, !171, !163, !1044, !3061}
!3756 = !{!3752, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764}
!3757 = !DILocalVariable(name: "argsize", arg: 2, scope: !3753, file: !801, line: 801, type: !163)
!3758 = !DILocalVariable(name: "size", arg: 3, scope: !3753, file: !801, line: 801, type: !1044)
!3759 = !DILocalVariable(name: "o", arg: 4, scope: !3753, file: !801, line: 802, type: !3061)
!3760 = !DILocalVariable(name: "p", scope: !3753, file: !801, line: 804, type: !3061)
!3761 = !DILocalVariable(name: "saved_errno", scope: !3753, file: !801, line: 805, type: !89)
!3762 = !DILocalVariable(name: "flags", scope: !3753, file: !801, line: 807, type: !89)
!3763 = !DILocalVariable(name: "bufsize", scope: !3753, file: !801, line: 808, type: !163)
!3764 = !DILocalVariable(name: "buf", scope: !3753, file: !801, line: 812, type: !121)
!3765 = !DILocation(line: 0, scope: !3753, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 791, column: 10, scope: !3744)
!3767 = !DILocation(line: 804, column: 37, scope: !3753, inlinedAt: !3766)
!3768 = !DILocation(line: 805, column: 21, scope: !3753, inlinedAt: !3766)
!3769 = !DILocation(line: 807, column: 18, scope: !3753, inlinedAt: !3766)
!3770 = !DILocation(line: 807, column: 24, scope: !3753, inlinedAt: !3766)
!3771 = !DILocation(line: 808, column: 72, scope: !3753, inlinedAt: !3766)
!3772 = !DILocation(line: 809, column: 56, scope: !3753, inlinedAt: !3766)
!3773 = !DILocation(line: 810, column: 49, scope: !3753, inlinedAt: !3766)
!3774 = !DILocation(line: 811, column: 49, scope: !3753, inlinedAt: !3766)
!3775 = !DILocation(line: 808, column: 20, scope: !3753, inlinedAt: !3766)
!3776 = !DILocation(line: 811, column: 62, scope: !3753, inlinedAt: !3766)
!3777 = !DILocation(line: 812, column: 15, scope: !3753, inlinedAt: !3766)
!3778 = !DILocation(line: 813, column: 60, scope: !3753, inlinedAt: !3766)
!3779 = !DILocation(line: 815, column: 32, scope: !3753, inlinedAt: !3766)
!3780 = !DILocation(line: 815, column: 47, scope: !3753, inlinedAt: !3766)
!3781 = !DILocation(line: 813, column: 3, scope: !3753, inlinedAt: !3766)
!3782 = !DILocation(line: 816, column: 9, scope: !3753, inlinedAt: !3766)
!3783 = !DILocation(line: 791, column: 3, scope: !3744)
!3784 = !DILocation(line: 0, scope: !3753)
!3785 = !DILocation(line: 804, column: 37, scope: !3753)
!3786 = !DILocation(line: 805, column: 21, scope: !3753)
!3787 = !DILocation(line: 807, column: 18, scope: !3753)
!3788 = !DILocation(line: 807, column: 27, scope: !3753)
!3789 = !DILocation(line: 807, column: 24, scope: !3753)
!3790 = !DILocation(line: 808, column: 72, scope: !3753)
!3791 = !DILocation(line: 809, column: 56, scope: !3753)
!3792 = !DILocation(line: 810, column: 49, scope: !3753)
!3793 = !DILocation(line: 811, column: 49, scope: !3753)
!3794 = !DILocation(line: 808, column: 20, scope: !3753)
!3795 = !DILocation(line: 811, column: 62, scope: !3753)
!3796 = !DILocation(line: 812, column: 15, scope: !3753)
!3797 = !DILocation(line: 813, column: 60, scope: !3753)
!3798 = !DILocation(line: 815, column: 32, scope: !3753)
!3799 = !DILocation(line: 815, column: 47, scope: !3753)
!3800 = !DILocation(line: 813, column: 3, scope: !3753)
!3801 = !DILocation(line: 816, column: 9, scope: !3753)
!3802 = !DILocation(line: 817, column: 7, scope: !3753)
!3803 = !DILocation(line: 818, column: 11, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3753, file: !801, line: 817, column: 7)
!3805 = !DILocation(line: 818, column: 5, scope: !3804)
!3806 = !DILocation(line: 819, column: 3, scope: !3753)
!3807 = distinct !DISubprogram(name: "quotearg_free", scope: !801, file: !801, line: 837, type: !741, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3808)
!3808 = !{!3809, !3810}
!3809 = !DILocalVariable(name: "sv", scope: !3807, file: !801, line: 839, type: !887)
!3810 = !DILocalVariable(name: "i", scope: !3811, file: !801, line: 840, type: !89)
!3811 = distinct !DILexicalBlock(scope: !3807, file: !801, line: 840, column: 3)
!3812 = !DILocation(line: 839, column: 24, scope: !3807)
!3813 = !DILocation(line: 0, scope: !3807)
!3814 = !DILocation(line: 0, scope: !3811)
!3815 = !DILocation(line: 840, column: 21, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3811, file: !801, line: 840, column: 3)
!3817 = !DILocation(line: 840, column: 3, scope: !3811)
!3818 = !DILocation(line: 842, column: 13, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3807, file: !801, line: 842, column: 7)
!3820 = !{!3821, !1104, i64 8}
!3821 = !{!"slotvec", !1475, i64 0, !1104, i64 8}
!3822 = !DILocation(line: 842, column: 17, scope: !3819)
!3823 = !DILocation(line: 842, column: 7, scope: !3807)
!3824 = !DILocation(line: 841, column: 17, scope: !3816)
!3825 = !DILocation(line: 841, column: 5, scope: !3816)
!3826 = !DILocation(line: 840, column: 32, scope: !3816)
!3827 = distinct !{!3827, !3817, !3828, !1216}
!3828 = !DILocation(line: 841, column: 20, scope: !3811)
!3829 = !DILocation(line: 844, column: 7, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3819, file: !801, line: 843, column: 5)
!3831 = !DILocation(line: 845, column: 21, scope: !3830)
!3832 = !{!3821, !1475, i64 0}
!3833 = !DILocation(line: 846, column: 20, scope: !3830)
!3834 = !DILocation(line: 847, column: 5, scope: !3830)
!3835 = !DILocation(line: 848, column: 10, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3807, file: !801, line: 848, column: 7)
!3837 = !DILocation(line: 848, column: 7, scope: !3807)
!3838 = !DILocation(line: 850, column: 7, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3836, file: !801, line: 849, column: 5)
!3840 = !DILocation(line: 851, column: 15, scope: !3839)
!3841 = !DILocation(line: 852, column: 5, scope: !3839)
!3842 = !DILocation(line: 853, column: 10, scope: !3807)
!3843 = !DILocation(line: 854, column: 1, scope: !3807)
!3844 = distinct !DISubprogram(name: "quotearg_n", scope: !801, file: !801, line: 919, type: !1286, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3845)
!3845 = !{!3846, !3847}
!3846 = !DILocalVariable(name: "n", arg: 1, scope: !3844, file: !801, line: 919, type: !89)
!3847 = !DILocalVariable(name: "arg", arg: 2, scope: !3844, file: !801, line: 919, type: !171)
!3848 = !DILocation(line: 0, scope: !3844)
!3849 = !DILocation(line: 921, column: 10, scope: !3844)
!3850 = !DILocation(line: 921, column: 3, scope: !3844)
!3851 = distinct !DISubprogram(name: "quotearg_n_options", scope: !801, file: !801, line: 866, type: !3852, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3854)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!121, !89, !171, !163, !3061}
!3854 = !{!3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3865, !3866, !3868, !3869, !3870}
!3855 = !DILocalVariable(name: "n", arg: 1, scope: !3851, file: !801, line: 866, type: !89)
!3856 = !DILocalVariable(name: "arg", arg: 2, scope: !3851, file: !801, line: 866, type: !171)
!3857 = !DILocalVariable(name: "argsize", arg: 3, scope: !3851, file: !801, line: 866, type: !163)
!3858 = !DILocalVariable(name: "options", arg: 4, scope: !3851, file: !801, line: 867, type: !3061)
!3859 = !DILocalVariable(name: "saved_errno", scope: !3851, file: !801, line: 869, type: !89)
!3860 = !DILocalVariable(name: "sv", scope: !3851, file: !801, line: 871, type: !887)
!3861 = !DILocalVariable(name: "nslots_max", scope: !3851, file: !801, line: 873, type: !89)
!3862 = !DILocalVariable(name: "preallocated", scope: !3863, file: !801, line: 879, type: !112)
!3863 = distinct !DILexicalBlock(scope: !3864, file: !801, line: 878, column: 5)
!3864 = distinct !DILexicalBlock(scope: !3851, file: !801, line: 877, column: 7)
!3865 = !DILocalVariable(name: "new_nslots", scope: !3863, file: !801, line: 880, type: !1057)
!3866 = !DILocalVariable(name: "size", scope: !3867, file: !801, line: 891, type: !163)
!3867 = distinct !DILexicalBlock(scope: !3851, file: !801, line: 890, column: 3)
!3868 = !DILocalVariable(name: "val", scope: !3867, file: !801, line: 892, type: !121)
!3869 = !DILocalVariable(name: "flags", scope: !3867, file: !801, line: 894, type: !89)
!3870 = !DILocalVariable(name: "qsize", scope: !3867, file: !801, line: 895, type: !163)
!3871 = distinct !DIAssignID()
!3872 = !DILocation(line: 0, scope: !3863)
!3873 = !DILocation(line: 0, scope: !3851)
!3874 = !DILocation(line: 869, column: 21, scope: !3851)
!3875 = !DILocation(line: 871, column: 24, scope: !3851)
!3876 = !DILocation(line: 874, column: 17, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3851, file: !801, line: 874, column: 7)
!3878 = !DILocation(line: 875, column: 5, scope: !3877)
!3879 = !DILocation(line: 877, column: 7, scope: !3864)
!3880 = !DILocation(line: 877, column: 14, scope: !3864)
!3881 = !DILocation(line: 877, column: 7, scope: !3851)
!3882 = !DILocation(line: 879, column: 31, scope: !3863)
!3883 = !DILocation(line: 880, column: 7, scope: !3863)
!3884 = !DILocation(line: 880, column: 26, scope: !3863)
!3885 = !DILocation(line: 880, column: 13, scope: !3863)
!3886 = distinct !DIAssignID()
!3887 = !DILocation(line: 882, column: 31, scope: !3863)
!3888 = !DILocation(line: 883, column: 33, scope: !3863)
!3889 = !DILocation(line: 883, column: 42, scope: !3863)
!3890 = !DILocation(line: 883, column: 31, scope: !3863)
!3891 = !DILocation(line: 882, column: 22, scope: !3863)
!3892 = !DILocation(line: 882, column: 15, scope: !3863)
!3893 = !DILocation(line: 884, column: 11, scope: !3863)
!3894 = !DILocation(line: 885, column: 15, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3863, file: !801, line: 884, column: 11)
!3896 = !{i64 0, i64 8, !1523, i64 8, i64 8, !1103}
!3897 = !DILocation(line: 885, column: 9, scope: !3895)
!3898 = !DILocation(line: 886, column: 20, scope: !3863)
!3899 = !DILocation(line: 886, column: 18, scope: !3863)
!3900 = !DILocation(line: 886, column: 32, scope: !3863)
!3901 = !DILocation(line: 886, column: 43, scope: !3863)
!3902 = !DILocation(line: 886, column: 53, scope: !3863)
!3903 = !DILocation(line: 0, scope: !3282, inlinedAt: !3904)
!3904 = distinct !DILocation(line: 886, column: 7, scope: !3863)
!3905 = !DILocation(line: 59, column: 10, scope: !3282, inlinedAt: !3904)
!3906 = !DILocation(line: 887, column: 16, scope: !3863)
!3907 = !DILocation(line: 887, column: 14, scope: !3863)
!3908 = !DILocation(line: 888, column: 5, scope: !3864)
!3909 = !DILocation(line: 888, column: 5, scope: !3863)
!3910 = !DILocation(line: 891, column: 19, scope: !3867)
!3911 = !DILocation(line: 891, column: 25, scope: !3867)
!3912 = !DILocation(line: 0, scope: !3867)
!3913 = !DILocation(line: 892, column: 23, scope: !3867)
!3914 = !DILocation(line: 894, column: 26, scope: !3867)
!3915 = !DILocation(line: 894, column: 32, scope: !3867)
!3916 = !DILocation(line: 896, column: 55, scope: !3867)
!3917 = !DILocation(line: 897, column: 55, scope: !3867)
!3918 = !DILocation(line: 898, column: 55, scope: !3867)
!3919 = !DILocation(line: 899, column: 55, scope: !3867)
!3920 = !DILocation(line: 895, column: 20, scope: !3867)
!3921 = !DILocation(line: 901, column: 14, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3867, file: !801, line: 901, column: 9)
!3923 = !DILocation(line: 901, column: 9, scope: !3867)
!3924 = !DILocation(line: 903, column: 35, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3922, file: !801, line: 902, column: 7)
!3926 = !DILocation(line: 903, column: 20, scope: !3925)
!3927 = !DILocation(line: 904, column: 17, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3925, file: !801, line: 904, column: 13)
!3929 = !DILocation(line: 904, column: 13, scope: !3925)
!3930 = !DILocation(line: 905, column: 11, scope: !3928)
!3931 = !DILocation(line: 906, column: 27, scope: !3925)
!3932 = !DILocation(line: 906, column: 19, scope: !3925)
!3933 = !DILocation(line: 907, column: 69, scope: !3925)
!3934 = !DILocation(line: 909, column: 44, scope: !3925)
!3935 = !DILocation(line: 910, column: 44, scope: !3925)
!3936 = !DILocation(line: 907, column: 9, scope: !3925)
!3937 = !DILocation(line: 911, column: 7, scope: !3925)
!3938 = !DILocation(line: 913, column: 11, scope: !3867)
!3939 = !DILocation(line: 914, column: 5, scope: !3867)
!3940 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !801, file: !801, line: 925, type: !3941, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3943)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!121, !89, !171, !163}
!3943 = !{!3944, !3945, !3946}
!3944 = !DILocalVariable(name: "n", arg: 1, scope: !3940, file: !801, line: 925, type: !89)
!3945 = !DILocalVariable(name: "arg", arg: 2, scope: !3940, file: !801, line: 925, type: !171)
!3946 = !DILocalVariable(name: "argsize", arg: 3, scope: !3940, file: !801, line: 925, type: !163)
!3947 = !DILocation(line: 0, scope: !3940)
!3948 = !DILocation(line: 927, column: 10, scope: !3940)
!3949 = !DILocation(line: 927, column: 3, scope: !3940)
!3950 = distinct !DISubprogram(name: "quotearg", scope: !801, file: !801, line: 931, type: !1295, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3951)
!3951 = !{!3952}
!3952 = !DILocalVariable(name: "arg", arg: 1, scope: !3950, file: !801, line: 931, type: !171)
!3953 = !DILocation(line: 0, scope: !3950)
!3954 = !DILocation(line: 0, scope: !3844, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 933, column: 10, scope: !3950)
!3956 = !DILocation(line: 921, column: 10, scope: !3844, inlinedAt: !3955)
!3957 = !DILocation(line: 933, column: 3, scope: !3950)
!3958 = distinct !DISubprogram(name: "quotearg_mem", scope: !801, file: !801, line: 937, type: !3959, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3961)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!121, !171, !163}
!3961 = !{!3962, !3963}
!3962 = !DILocalVariable(name: "arg", arg: 1, scope: !3958, file: !801, line: 937, type: !171)
!3963 = !DILocalVariable(name: "argsize", arg: 2, scope: !3958, file: !801, line: 937, type: !163)
!3964 = !DILocation(line: 0, scope: !3958)
!3965 = !DILocation(line: 0, scope: !3940, inlinedAt: !3966)
!3966 = distinct !DILocation(line: 939, column: 10, scope: !3958)
!3967 = !DILocation(line: 927, column: 10, scope: !3940, inlinedAt: !3966)
!3968 = !DILocation(line: 939, column: 3, scope: !3958)
!3969 = distinct !DISubprogram(name: "quotearg_n_style", scope: !801, file: !801, line: 943, type: !3970, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3972)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!121, !89, !824, !171}
!3972 = !{!3973, !3974, !3975, !3976}
!3973 = !DILocalVariable(name: "n", arg: 1, scope: !3969, file: !801, line: 943, type: !89)
!3974 = !DILocalVariable(name: "s", arg: 2, scope: !3969, file: !801, line: 943, type: !824)
!3975 = !DILocalVariable(name: "arg", arg: 3, scope: !3969, file: !801, line: 943, type: !171)
!3976 = !DILocalVariable(name: "o", scope: !3969, file: !801, line: 945, type: !3062)
!3977 = distinct !DIAssignID()
!3978 = !DILocation(line: 0, scope: !3969)
!3979 = !DILocation(line: 945, column: 3, scope: !3969)
!3980 = !{!3981}
!3981 = distinct !{!3981, !3982, !"quoting_options_from_style: argument 0"}
!3982 = distinct !{!3982, !"quoting_options_from_style"}
!3983 = !DILocation(line: 945, column: 36, scope: !3969)
!3984 = !DILocalVariable(name: "style", arg: 1, scope: !3985, file: !801, line: 183, type: !824)
!3985 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !801, file: !801, line: 183, type: !3986, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3988)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!839, !824}
!3988 = !{!3984, !3989}
!3989 = !DILocalVariable(name: "o", scope: !3985, file: !801, line: 185, type: !839)
!3990 = !DILocation(line: 0, scope: !3985, inlinedAt: !3991)
!3991 = distinct !DILocation(line: 945, column: 36, scope: !3969)
!3992 = !DILocation(line: 185, column: 26, scope: !3985, inlinedAt: !3991)
!3993 = distinct !DIAssignID()
!3994 = !DILocation(line: 186, column: 13, scope: !3995, inlinedAt: !3991)
!3995 = distinct !DILexicalBlock(scope: !3985, file: !801, line: 186, column: 7)
!3996 = !DILocation(line: 186, column: 7, scope: !3985, inlinedAt: !3991)
!3997 = !DILocation(line: 187, column: 5, scope: !3995, inlinedAt: !3991)
!3998 = !DILocation(line: 188, column: 11, scope: !3985, inlinedAt: !3991)
!3999 = distinct !DIAssignID()
!4000 = !DILocation(line: 946, column: 10, scope: !3969)
!4001 = !DILocation(line: 947, column: 1, scope: !3969)
!4002 = !DILocation(line: 946, column: 3, scope: !3969)
!4003 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !801, file: !801, line: 950, type: !4004, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4006)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!121, !89, !824, !171, !163}
!4006 = !{!4007, !4008, !4009, !4010, !4011}
!4007 = !DILocalVariable(name: "n", arg: 1, scope: !4003, file: !801, line: 950, type: !89)
!4008 = !DILocalVariable(name: "s", arg: 2, scope: !4003, file: !801, line: 950, type: !824)
!4009 = !DILocalVariable(name: "arg", arg: 3, scope: !4003, file: !801, line: 951, type: !171)
!4010 = !DILocalVariable(name: "argsize", arg: 4, scope: !4003, file: !801, line: 951, type: !163)
!4011 = !DILocalVariable(name: "o", scope: !4003, file: !801, line: 953, type: !3062)
!4012 = distinct !DIAssignID()
!4013 = !DILocation(line: 0, scope: !4003)
!4014 = !DILocation(line: 953, column: 3, scope: !4003)
!4015 = !{!4016}
!4016 = distinct !{!4016, !4017, !"quoting_options_from_style: argument 0"}
!4017 = distinct !{!4017, !"quoting_options_from_style"}
!4018 = !DILocation(line: 953, column: 36, scope: !4003)
!4019 = !DILocation(line: 0, scope: !3985, inlinedAt: !4020)
!4020 = distinct !DILocation(line: 953, column: 36, scope: !4003)
!4021 = !DILocation(line: 185, column: 26, scope: !3985, inlinedAt: !4020)
!4022 = distinct !DIAssignID()
!4023 = !DILocation(line: 186, column: 13, scope: !3995, inlinedAt: !4020)
!4024 = !DILocation(line: 186, column: 7, scope: !3985, inlinedAt: !4020)
!4025 = !DILocation(line: 187, column: 5, scope: !3995, inlinedAt: !4020)
!4026 = !DILocation(line: 188, column: 11, scope: !3985, inlinedAt: !4020)
!4027 = distinct !DIAssignID()
!4028 = !DILocation(line: 954, column: 10, scope: !4003)
!4029 = !DILocation(line: 955, column: 1, scope: !4003)
!4030 = !DILocation(line: 954, column: 3, scope: !4003)
!4031 = distinct !DISubprogram(name: "quotearg_style", scope: !801, file: !801, line: 958, type: !4032, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4034)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!121, !824, !171}
!4034 = !{!4035, !4036}
!4035 = !DILocalVariable(name: "s", arg: 1, scope: !4031, file: !801, line: 958, type: !824)
!4036 = !DILocalVariable(name: "arg", arg: 2, scope: !4031, file: !801, line: 958, type: !171)
!4037 = distinct !DIAssignID()
!4038 = !DILocation(line: 0, scope: !4031)
!4039 = !DILocation(line: 0, scope: !3969, inlinedAt: !4040)
!4040 = distinct !DILocation(line: 960, column: 10, scope: !4031)
!4041 = !DILocation(line: 945, column: 3, scope: !3969, inlinedAt: !4040)
!4042 = !{!4043}
!4043 = distinct !{!4043, !4044, !"quoting_options_from_style: argument 0"}
!4044 = distinct !{!4044, !"quoting_options_from_style"}
!4045 = !DILocation(line: 945, column: 36, scope: !3969, inlinedAt: !4040)
!4046 = !DILocation(line: 0, scope: !3985, inlinedAt: !4047)
!4047 = distinct !DILocation(line: 945, column: 36, scope: !3969, inlinedAt: !4040)
!4048 = !DILocation(line: 185, column: 26, scope: !3985, inlinedAt: !4047)
!4049 = distinct !DIAssignID()
!4050 = !DILocation(line: 186, column: 13, scope: !3995, inlinedAt: !4047)
!4051 = !DILocation(line: 186, column: 7, scope: !3985, inlinedAt: !4047)
!4052 = !DILocation(line: 187, column: 5, scope: !3995, inlinedAt: !4047)
!4053 = !DILocation(line: 188, column: 11, scope: !3985, inlinedAt: !4047)
!4054 = distinct !DIAssignID()
!4055 = !DILocation(line: 946, column: 10, scope: !3969, inlinedAt: !4040)
!4056 = !DILocation(line: 947, column: 1, scope: !3969, inlinedAt: !4040)
!4057 = !DILocation(line: 960, column: 3, scope: !4031)
!4058 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !801, file: !801, line: 964, type: !4059, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4061)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!121, !824, !171, !163}
!4061 = !{!4062, !4063, !4064}
!4062 = !DILocalVariable(name: "s", arg: 1, scope: !4058, file: !801, line: 964, type: !824)
!4063 = !DILocalVariable(name: "arg", arg: 2, scope: !4058, file: !801, line: 964, type: !171)
!4064 = !DILocalVariable(name: "argsize", arg: 3, scope: !4058, file: !801, line: 964, type: !163)
!4065 = distinct !DIAssignID()
!4066 = !DILocation(line: 0, scope: !4058)
!4067 = !DILocation(line: 0, scope: !4003, inlinedAt: !4068)
!4068 = distinct !DILocation(line: 966, column: 10, scope: !4058)
!4069 = !DILocation(line: 953, column: 3, scope: !4003, inlinedAt: !4068)
!4070 = !{!4071}
!4071 = distinct !{!4071, !4072, !"quoting_options_from_style: argument 0"}
!4072 = distinct !{!4072, !"quoting_options_from_style"}
!4073 = !DILocation(line: 953, column: 36, scope: !4003, inlinedAt: !4068)
!4074 = !DILocation(line: 0, scope: !3985, inlinedAt: !4075)
!4075 = distinct !DILocation(line: 953, column: 36, scope: !4003, inlinedAt: !4068)
!4076 = !DILocation(line: 185, column: 26, scope: !3985, inlinedAt: !4075)
!4077 = distinct !DIAssignID()
!4078 = !DILocation(line: 186, column: 13, scope: !3995, inlinedAt: !4075)
!4079 = !DILocation(line: 186, column: 7, scope: !3985, inlinedAt: !4075)
!4080 = !DILocation(line: 187, column: 5, scope: !3995, inlinedAt: !4075)
!4081 = !DILocation(line: 188, column: 11, scope: !3985, inlinedAt: !4075)
!4082 = distinct !DIAssignID()
!4083 = !DILocation(line: 954, column: 10, scope: !4003, inlinedAt: !4068)
!4084 = !DILocation(line: 955, column: 1, scope: !4003, inlinedAt: !4068)
!4085 = !DILocation(line: 966, column: 3, scope: !4058)
!4086 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !801, file: !801, line: 970, type: !4087, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4089)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!121, !171, !163, !4}
!4089 = !{!4090, !4091, !4092, !4093}
!4090 = !DILocalVariable(name: "arg", arg: 1, scope: !4086, file: !801, line: 970, type: !171)
!4091 = !DILocalVariable(name: "argsize", arg: 2, scope: !4086, file: !801, line: 970, type: !163)
!4092 = !DILocalVariable(name: "ch", arg: 3, scope: !4086, file: !801, line: 970, type: !4)
!4093 = !DILocalVariable(name: "options", scope: !4086, file: !801, line: 972, type: !839)
!4094 = distinct !DIAssignID()
!4095 = !DILocation(line: 0, scope: !4086)
!4096 = !DILocation(line: 972, column: 3, scope: !4086)
!4097 = !DILocation(line: 973, column: 13, scope: !4086)
!4098 = !{i64 0, i64 4, !1169, i64 4, i64 4, !1169, i64 8, i64 32, !1178, i64 40, i64 8, !1103, i64 48, i64 8, !1103}
!4099 = distinct !DIAssignID()
!4100 = !DILocation(line: 0, scope: !3081, inlinedAt: !4101)
!4101 = distinct !DILocation(line: 974, column: 3, scope: !4086)
!4102 = !DILocation(line: 147, column: 41, scope: !3081, inlinedAt: !4101)
!4103 = !DILocation(line: 147, column: 62, scope: !3081, inlinedAt: !4101)
!4104 = !DILocation(line: 147, column: 57, scope: !3081, inlinedAt: !4101)
!4105 = !DILocation(line: 148, column: 15, scope: !3081, inlinedAt: !4101)
!4106 = !DILocation(line: 149, column: 21, scope: !3081, inlinedAt: !4101)
!4107 = !DILocation(line: 149, column: 24, scope: !3081, inlinedAt: !4101)
!4108 = !DILocation(line: 150, column: 19, scope: !3081, inlinedAt: !4101)
!4109 = !DILocation(line: 150, column: 24, scope: !3081, inlinedAt: !4101)
!4110 = !DILocation(line: 150, column: 6, scope: !3081, inlinedAt: !4101)
!4111 = !DILocation(line: 975, column: 10, scope: !4086)
!4112 = !DILocation(line: 976, column: 1, scope: !4086)
!4113 = !DILocation(line: 975, column: 3, scope: !4086)
!4114 = distinct !DISubprogram(name: "quotearg_char", scope: !801, file: !801, line: 979, type: !4115, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4117)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!121, !171, !4}
!4117 = !{!4118, !4119}
!4118 = !DILocalVariable(name: "arg", arg: 1, scope: !4114, file: !801, line: 979, type: !171)
!4119 = !DILocalVariable(name: "ch", arg: 2, scope: !4114, file: !801, line: 979, type: !4)
!4120 = distinct !DIAssignID()
!4121 = !DILocation(line: 0, scope: !4114)
!4122 = !DILocation(line: 0, scope: !4086, inlinedAt: !4123)
!4123 = distinct !DILocation(line: 981, column: 10, scope: !4114)
!4124 = !DILocation(line: 972, column: 3, scope: !4086, inlinedAt: !4123)
!4125 = !DILocation(line: 973, column: 13, scope: !4086, inlinedAt: !4123)
!4126 = distinct !DIAssignID()
!4127 = !DILocation(line: 0, scope: !3081, inlinedAt: !4128)
!4128 = distinct !DILocation(line: 974, column: 3, scope: !4086, inlinedAt: !4123)
!4129 = !DILocation(line: 147, column: 41, scope: !3081, inlinedAt: !4128)
!4130 = !DILocation(line: 147, column: 62, scope: !3081, inlinedAt: !4128)
!4131 = !DILocation(line: 147, column: 57, scope: !3081, inlinedAt: !4128)
!4132 = !DILocation(line: 148, column: 15, scope: !3081, inlinedAt: !4128)
!4133 = !DILocation(line: 149, column: 21, scope: !3081, inlinedAt: !4128)
!4134 = !DILocation(line: 149, column: 24, scope: !3081, inlinedAt: !4128)
!4135 = !DILocation(line: 150, column: 19, scope: !3081, inlinedAt: !4128)
!4136 = !DILocation(line: 150, column: 24, scope: !3081, inlinedAt: !4128)
!4137 = !DILocation(line: 150, column: 6, scope: !3081, inlinedAt: !4128)
!4138 = !DILocation(line: 975, column: 10, scope: !4086, inlinedAt: !4123)
!4139 = !DILocation(line: 976, column: 1, scope: !4086, inlinedAt: !4123)
!4140 = !DILocation(line: 981, column: 3, scope: !4114)
!4141 = distinct !DISubprogram(name: "quotearg_colon", scope: !801, file: !801, line: 985, type: !1295, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4142)
!4142 = !{!4143}
!4143 = !DILocalVariable(name: "arg", arg: 1, scope: !4141, file: !801, line: 985, type: !171)
!4144 = distinct !DIAssignID()
!4145 = !DILocation(line: 0, scope: !4141)
!4146 = !DILocation(line: 0, scope: !4114, inlinedAt: !4147)
!4147 = distinct !DILocation(line: 987, column: 10, scope: !4141)
!4148 = !DILocation(line: 0, scope: !4086, inlinedAt: !4149)
!4149 = distinct !DILocation(line: 981, column: 10, scope: !4114, inlinedAt: !4147)
!4150 = !DILocation(line: 972, column: 3, scope: !4086, inlinedAt: !4149)
!4151 = !DILocation(line: 973, column: 13, scope: !4086, inlinedAt: !4149)
!4152 = distinct !DIAssignID()
!4153 = !DILocation(line: 0, scope: !3081, inlinedAt: !4154)
!4154 = distinct !DILocation(line: 974, column: 3, scope: !4086, inlinedAt: !4149)
!4155 = !DILocation(line: 147, column: 57, scope: !3081, inlinedAt: !4154)
!4156 = !DILocation(line: 149, column: 21, scope: !3081, inlinedAt: !4154)
!4157 = !DILocation(line: 150, column: 6, scope: !3081, inlinedAt: !4154)
!4158 = !DILocation(line: 975, column: 10, scope: !4086, inlinedAt: !4149)
!4159 = !DILocation(line: 976, column: 1, scope: !4086, inlinedAt: !4149)
!4160 = !DILocation(line: 987, column: 3, scope: !4141)
!4161 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !801, file: !801, line: 991, type: !3959, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4162)
!4162 = !{!4163, !4164}
!4163 = !DILocalVariable(name: "arg", arg: 1, scope: !4161, file: !801, line: 991, type: !171)
!4164 = !DILocalVariable(name: "argsize", arg: 2, scope: !4161, file: !801, line: 991, type: !163)
!4165 = distinct !DIAssignID()
!4166 = !DILocation(line: 0, scope: !4161)
!4167 = !DILocation(line: 0, scope: !4086, inlinedAt: !4168)
!4168 = distinct !DILocation(line: 993, column: 10, scope: !4161)
!4169 = !DILocation(line: 972, column: 3, scope: !4086, inlinedAt: !4168)
!4170 = !DILocation(line: 973, column: 13, scope: !4086, inlinedAt: !4168)
!4171 = distinct !DIAssignID()
!4172 = !DILocation(line: 0, scope: !3081, inlinedAt: !4173)
!4173 = distinct !DILocation(line: 974, column: 3, scope: !4086, inlinedAt: !4168)
!4174 = !DILocation(line: 147, column: 57, scope: !3081, inlinedAt: !4173)
!4175 = !DILocation(line: 149, column: 21, scope: !3081, inlinedAt: !4173)
!4176 = !DILocation(line: 150, column: 6, scope: !3081, inlinedAt: !4173)
!4177 = !DILocation(line: 975, column: 10, scope: !4086, inlinedAt: !4168)
!4178 = !DILocation(line: 976, column: 1, scope: !4086, inlinedAt: !4168)
!4179 = !DILocation(line: 993, column: 3, scope: !4161)
!4180 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !801, file: !801, line: 997, type: !3970, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4181)
!4181 = !{!4182, !4183, !4184, !4185}
!4182 = !DILocalVariable(name: "n", arg: 1, scope: !4180, file: !801, line: 997, type: !89)
!4183 = !DILocalVariable(name: "s", arg: 2, scope: !4180, file: !801, line: 997, type: !824)
!4184 = !DILocalVariable(name: "arg", arg: 3, scope: !4180, file: !801, line: 997, type: !171)
!4185 = !DILocalVariable(name: "options", scope: !4180, file: !801, line: 999, type: !839)
!4186 = distinct !DIAssignID()
!4187 = !DILocation(line: 0, scope: !4180)
!4188 = !DILocation(line: 185, column: 26, scope: !3985, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 1000, column: 13, scope: !4180)
!4190 = !DILocation(line: 999, column: 3, scope: !4180)
!4191 = !DILocation(line: 0, scope: !3985, inlinedAt: !4189)
!4192 = !DILocation(line: 186, column: 13, scope: !3995, inlinedAt: !4189)
!4193 = !DILocation(line: 186, column: 7, scope: !3985, inlinedAt: !4189)
!4194 = !DILocation(line: 187, column: 5, scope: !3995, inlinedAt: !4189)
!4195 = !{!4196}
!4196 = distinct !{!4196, !4197, !"quoting_options_from_style: argument 0"}
!4197 = distinct !{!4197, !"quoting_options_from_style"}
!4198 = !DILocation(line: 1000, column: 13, scope: !4180)
!4199 = distinct !DIAssignID()
!4200 = distinct !DIAssignID()
!4201 = !DILocation(line: 0, scope: !3081, inlinedAt: !4202)
!4202 = distinct !DILocation(line: 1001, column: 3, scope: !4180)
!4203 = !DILocation(line: 147, column: 57, scope: !3081, inlinedAt: !4202)
!4204 = !DILocation(line: 149, column: 21, scope: !3081, inlinedAt: !4202)
!4205 = !DILocation(line: 150, column: 6, scope: !3081, inlinedAt: !4202)
!4206 = distinct !DIAssignID()
!4207 = !DILocation(line: 1002, column: 10, scope: !4180)
!4208 = !DILocation(line: 1003, column: 1, scope: !4180)
!4209 = !DILocation(line: 1002, column: 3, scope: !4180)
!4210 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !801, file: !801, line: 1006, type: !4211, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4213)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!121, !89, !171, !171, !171}
!4213 = !{!4214, !4215, !4216, !4217}
!4214 = !DILocalVariable(name: "n", arg: 1, scope: !4210, file: !801, line: 1006, type: !89)
!4215 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4210, file: !801, line: 1006, type: !171)
!4216 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4210, file: !801, line: 1007, type: !171)
!4217 = !DILocalVariable(name: "arg", arg: 4, scope: !4210, file: !801, line: 1007, type: !171)
!4218 = distinct !DIAssignID()
!4219 = !DILocation(line: 0, scope: !4210)
!4220 = !DILocalVariable(name: "o", scope: !4221, file: !801, line: 1018, type: !839)
!4221 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !801, file: !801, line: 1014, type: !4222, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4224)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!121, !89, !171, !171, !171, !163}
!4224 = !{!4225, !4226, !4227, !4228, !4229, !4220}
!4225 = !DILocalVariable(name: "n", arg: 1, scope: !4221, file: !801, line: 1014, type: !89)
!4226 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4221, file: !801, line: 1014, type: !171)
!4227 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4221, file: !801, line: 1015, type: !171)
!4228 = !DILocalVariable(name: "arg", arg: 4, scope: !4221, file: !801, line: 1016, type: !171)
!4229 = !DILocalVariable(name: "argsize", arg: 5, scope: !4221, file: !801, line: 1016, type: !163)
!4230 = !DILocation(line: 0, scope: !4221, inlinedAt: !4231)
!4231 = distinct !DILocation(line: 1009, column: 10, scope: !4210)
!4232 = !DILocation(line: 1018, column: 3, scope: !4221, inlinedAt: !4231)
!4233 = !DILocation(line: 1018, column: 30, scope: !4221, inlinedAt: !4231)
!4234 = distinct !DIAssignID()
!4235 = distinct !DIAssignID()
!4236 = !DILocation(line: 0, scope: !3121, inlinedAt: !4237)
!4237 = distinct !DILocation(line: 1019, column: 3, scope: !4221, inlinedAt: !4231)
!4238 = !DILocation(line: 174, column: 12, scope: !3121, inlinedAt: !4237)
!4239 = distinct !DIAssignID()
!4240 = !DILocation(line: 175, column: 8, scope: !3134, inlinedAt: !4237)
!4241 = !DILocation(line: 175, column: 19, scope: !3134, inlinedAt: !4237)
!4242 = !DILocation(line: 176, column: 5, scope: !3134, inlinedAt: !4237)
!4243 = !DILocation(line: 177, column: 6, scope: !3121, inlinedAt: !4237)
!4244 = !DILocation(line: 177, column: 17, scope: !3121, inlinedAt: !4237)
!4245 = distinct !DIAssignID()
!4246 = !DILocation(line: 178, column: 6, scope: !3121, inlinedAt: !4237)
!4247 = !DILocation(line: 178, column: 18, scope: !3121, inlinedAt: !4237)
!4248 = distinct !DIAssignID()
!4249 = !DILocation(line: 1020, column: 10, scope: !4221, inlinedAt: !4231)
!4250 = !DILocation(line: 1021, column: 1, scope: !4221, inlinedAt: !4231)
!4251 = !DILocation(line: 1009, column: 3, scope: !4210)
!4252 = distinct !DIAssignID()
!4253 = !DILocation(line: 0, scope: !4221)
!4254 = !DILocation(line: 1018, column: 3, scope: !4221)
!4255 = !DILocation(line: 1018, column: 30, scope: !4221)
!4256 = distinct !DIAssignID()
!4257 = distinct !DIAssignID()
!4258 = !DILocation(line: 0, scope: !3121, inlinedAt: !4259)
!4259 = distinct !DILocation(line: 1019, column: 3, scope: !4221)
!4260 = !DILocation(line: 174, column: 12, scope: !3121, inlinedAt: !4259)
!4261 = distinct !DIAssignID()
!4262 = !DILocation(line: 175, column: 8, scope: !3134, inlinedAt: !4259)
!4263 = !DILocation(line: 175, column: 19, scope: !3134, inlinedAt: !4259)
!4264 = !DILocation(line: 176, column: 5, scope: !3134, inlinedAt: !4259)
!4265 = !DILocation(line: 177, column: 6, scope: !3121, inlinedAt: !4259)
!4266 = !DILocation(line: 177, column: 17, scope: !3121, inlinedAt: !4259)
!4267 = distinct !DIAssignID()
!4268 = !DILocation(line: 178, column: 6, scope: !3121, inlinedAt: !4259)
!4269 = !DILocation(line: 178, column: 18, scope: !3121, inlinedAt: !4259)
!4270 = distinct !DIAssignID()
!4271 = !DILocation(line: 1020, column: 10, scope: !4221)
!4272 = !DILocation(line: 1021, column: 1, scope: !4221)
!4273 = !DILocation(line: 1020, column: 3, scope: !4221)
!4274 = distinct !DISubprogram(name: "quotearg_custom", scope: !801, file: !801, line: 1024, type: !4275, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4277)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!121, !171, !171, !171}
!4277 = !{!4278, !4279, !4280}
!4278 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4274, file: !801, line: 1024, type: !171)
!4279 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4274, file: !801, line: 1024, type: !171)
!4280 = !DILocalVariable(name: "arg", arg: 3, scope: !4274, file: !801, line: 1025, type: !171)
!4281 = distinct !DIAssignID()
!4282 = !DILocation(line: 0, scope: !4274)
!4283 = !DILocation(line: 0, scope: !4210, inlinedAt: !4284)
!4284 = distinct !DILocation(line: 1027, column: 10, scope: !4274)
!4285 = !DILocation(line: 0, scope: !4221, inlinedAt: !4286)
!4286 = distinct !DILocation(line: 1009, column: 10, scope: !4210, inlinedAt: !4284)
!4287 = !DILocation(line: 1018, column: 3, scope: !4221, inlinedAt: !4286)
!4288 = !DILocation(line: 1018, column: 30, scope: !4221, inlinedAt: !4286)
!4289 = distinct !DIAssignID()
!4290 = distinct !DIAssignID()
!4291 = !DILocation(line: 0, scope: !3121, inlinedAt: !4292)
!4292 = distinct !DILocation(line: 1019, column: 3, scope: !4221, inlinedAt: !4286)
!4293 = !DILocation(line: 174, column: 12, scope: !3121, inlinedAt: !4292)
!4294 = distinct !DIAssignID()
!4295 = !DILocation(line: 175, column: 8, scope: !3134, inlinedAt: !4292)
!4296 = !DILocation(line: 175, column: 19, scope: !3134, inlinedAt: !4292)
!4297 = !DILocation(line: 176, column: 5, scope: !3134, inlinedAt: !4292)
!4298 = !DILocation(line: 177, column: 6, scope: !3121, inlinedAt: !4292)
!4299 = !DILocation(line: 177, column: 17, scope: !3121, inlinedAt: !4292)
!4300 = distinct !DIAssignID()
!4301 = !DILocation(line: 178, column: 6, scope: !3121, inlinedAt: !4292)
!4302 = !DILocation(line: 178, column: 18, scope: !3121, inlinedAt: !4292)
!4303 = distinct !DIAssignID()
!4304 = !DILocation(line: 1020, column: 10, scope: !4221, inlinedAt: !4286)
!4305 = !DILocation(line: 1021, column: 1, scope: !4221, inlinedAt: !4286)
!4306 = !DILocation(line: 1027, column: 3, scope: !4274)
!4307 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !801, file: !801, line: 1031, type: !4308, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4310)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!121, !171, !171, !171, !163}
!4310 = !{!4311, !4312, !4313, !4314}
!4311 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4307, file: !801, line: 1031, type: !171)
!4312 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4307, file: !801, line: 1031, type: !171)
!4313 = !DILocalVariable(name: "arg", arg: 3, scope: !4307, file: !801, line: 1032, type: !171)
!4314 = !DILocalVariable(name: "argsize", arg: 4, scope: !4307, file: !801, line: 1032, type: !163)
!4315 = distinct !DIAssignID()
!4316 = !DILocation(line: 0, scope: !4307)
!4317 = !DILocation(line: 0, scope: !4221, inlinedAt: !4318)
!4318 = distinct !DILocation(line: 1034, column: 10, scope: !4307)
!4319 = !DILocation(line: 1018, column: 3, scope: !4221, inlinedAt: !4318)
!4320 = !DILocation(line: 1018, column: 30, scope: !4221, inlinedAt: !4318)
!4321 = distinct !DIAssignID()
!4322 = distinct !DIAssignID()
!4323 = !DILocation(line: 0, scope: !3121, inlinedAt: !4324)
!4324 = distinct !DILocation(line: 1019, column: 3, scope: !4221, inlinedAt: !4318)
!4325 = !DILocation(line: 174, column: 12, scope: !3121, inlinedAt: !4324)
!4326 = distinct !DIAssignID()
!4327 = !DILocation(line: 175, column: 8, scope: !3134, inlinedAt: !4324)
!4328 = !DILocation(line: 175, column: 19, scope: !3134, inlinedAt: !4324)
!4329 = !DILocation(line: 176, column: 5, scope: !3134, inlinedAt: !4324)
!4330 = !DILocation(line: 177, column: 6, scope: !3121, inlinedAt: !4324)
!4331 = !DILocation(line: 177, column: 17, scope: !3121, inlinedAt: !4324)
!4332 = distinct !DIAssignID()
!4333 = !DILocation(line: 178, column: 6, scope: !3121, inlinedAt: !4324)
!4334 = !DILocation(line: 178, column: 18, scope: !3121, inlinedAt: !4324)
!4335 = distinct !DIAssignID()
!4336 = !DILocation(line: 1020, column: 10, scope: !4221, inlinedAt: !4318)
!4337 = !DILocation(line: 1021, column: 1, scope: !4221, inlinedAt: !4318)
!4338 = !DILocation(line: 1034, column: 3, scope: !4307)
!4339 = distinct !DISubprogram(name: "quote_n_mem", scope: !801, file: !801, line: 1049, type: !4340, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4342)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!171, !89, !171, !163}
!4342 = !{!4343, !4344, !4345}
!4343 = !DILocalVariable(name: "n", arg: 1, scope: !4339, file: !801, line: 1049, type: !89)
!4344 = !DILocalVariable(name: "arg", arg: 2, scope: !4339, file: !801, line: 1049, type: !171)
!4345 = !DILocalVariable(name: "argsize", arg: 3, scope: !4339, file: !801, line: 1049, type: !163)
!4346 = !DILocation(line: 0, scope: !4339)
!4347 = !DILocation(line: 1051, column: 10, scope: !4339)
!4348 = !DILocation(line: 1051, column: 3, scope: !4339)
!4349 = distinct !DISubprogram(name: "quote_mem", scope: !801, file: !801, line: 1055, type: !4350, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4352)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!171, !171, !163}
!4352 = !{!4353, !4354}
!4353 = !DILocalVariable(name: "arg", arg: 1, scope: !4349, file: !801, line: 1055, type: !171)
!4354 = !DILocalVariable(name: "argsize", arg: 2, scope: !4349, file: !801, line: 1055, type: !163)
!4355 = !DILocation(line: 0, scope: !4349)
!4356 = !DILocation(line: 0, scope: !4339, inlinedAt: !4357)
!4357 = distinct !DILocation(line: 1057, column: 10, scope: !4349)
!4358 = !DILocation(line: 1051, column: 10, scope: !4339, inlinedAt: !4357)
!4359 = !DILocation(line: 1057, column: 3, scope: !4349)
!4360 = distinct !DISubprogram(name: "quote_n", scope: !801, file: !801, line: 1061, type: !4361, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4363)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!171, !89, !171}
!4363 = !{!4364, !4365}
!4364 = !DILocalVariable(name: "n", arg: 1, scope: !4360, file: !801, line: 1061, type: !89)
!4365 = !DILocalVariable(name: "arg", arg: 2, scope: !4360, file: !801, line: 1061, type: !171)
!4366 = !DILocation(line: 0, scope: !4360)
!4367 = !DILocation(line: 0, scope: !4339, inlinedAt: !4368)
!4368 = distinct !DILocation(line: 1063, column: 10, scope: !4360)
!4369 = !DILocation(line: 1051, column: 10, scope: !4339, inlinedAt: !4368)
!4370 = !DILocation(line: 1063, column: 3, scope: !4360)
!4371 = distinct !DISubprogram(name: "quote", scope: !801, file: !801, line: 1067, type: !4372, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4374)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!171, !171}
!4374 = !{!4375}
!4375 = !DILocalVariable(name: "arg", arg: 1, scope: !4371, file: !801, line: 1067, type: !171)
!4376 = !DILocation(line: 0, scope: !4371)
!4377 = !DILocation(line: 0, scope: !4360, inlinedAt: !4378)
!4378 = distinct !DILocation(line: 1069, column: 10, scope: !4371)
!4379 = !DILocation(line: 0, scope: !4339, inlinedAt: !4380)
!4380 = distinct !DILocation(line: 1063, column: 10, scope: !4360, inlinedAt: !4378)
!4381 = !DILocation(line: 1051, column: 10, scope: !4339, inlinedAt: !4380)
!4382 = !DILocation(line: 1069, column: 3, scope: !4371)
!4383 = distinct !DISubprogram(name: "version_etc_arn", scope: !899, file: !899, line: 61, type: !4384, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4421)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{null, !4386, !171, !171, !171, !4420, !163}
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !4388)
!4388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !4389)
!4389 = !{!4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4388, file: !117, line: 51, baseType: !89, size: 32)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4388, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4388, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4388, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4388, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4388, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4388, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4388, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4388, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4388, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4388, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4388, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4388, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4388, file: !117, line: 70, baseType: !4404, size: 64, offset: 832)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4388, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4388, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4388, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4388, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4388, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4388, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4388, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4388, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4388, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4388, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4388, file: !117, line: 93, baseType: !4404, size: 64, offset: 1344)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4388, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4388, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4388, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4388, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!4421 = !{!4422, !4423, !4424, !4425, !4426, !4427}
!4422 = !DILocalVariable(name: "stream", arg: 1, scope: !4383, file: !899, line: 61, type: !4386)
!4423 = !DILocalVariable(name: "command_name", arg: 2, scope: !4383, file: !899, line: 62, type: !171)
!4424 = !DILocalVariable(name: "package", arg: 3, scope: !4383, file: !899, line: 62, type: !171)
!4425 = !DILocalVariable(name: "version", arg: 4, scope: !4383, file: !899, line: 63, type: !171)
!4426 = !DILocalVariable(name: "authors", arg: 5, scope: !4383, file: !899, line: 64, type: !4420)
!4427 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4383, file: !899, line: 64, type: !163)
!4428 = !DILocation(line: 0, scope: !4383)
!4429 = !DILocation(line: 66, column: 7, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4383, file: !899, line: 66, column: 7)
!4431 = !DILocation(line: 66, column: 7, scope: !4383)
!4432 = !DILocation(line: 67, column: 5, scope: !4430)
!4433 = !DILocation(line: 69, column: 5, scope: !4430)
!4434 = !DILocation(line: 83, column: 3, scope: !4383)
!4435 = !DILocation(line: 85, column: 3, scope: !4383)
!4436 = !DILocation(line: 88, column: 3, scope: !4383)
!4437 = !DILocation(line: 95, column: 3, scope: !4383)
!4438 = !DILocation(line: 97, column: 3, scope: !4383)
!4439 = !DILocation(line: 105, column: 7, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4383, file: !899, line: 98, column: 5)
!4441 = !DILocation(line: 106, column: 7, scope: !4440)
!4442 = !DILocation(line: 109, column: 7, scope: !4440)
!4443 = !DILocation(line: 110, column: 7, scope: !4440)
!4444 = !DILocation(line: 113, column: 7, scope: !4440)
!4445 = !DILocation(line: 115, column: 7, scope: !4440)
!4446 = !DILocation(line: 120, column: 7, scope: !4440)
!4447 = !DILocation(line: 122, column: 7, scope: !4440)
!4448 = !DILocation(line: 127, column: 7, scope: !4440)
!4449 = !DILocation(line: 129, column: 7, scope: !4440)
!4450 = !DILocation(line: 134, column: 7, scope: !4440)
!4451 = !DILocation(line: 137, column: 7, scope: !4440)
!4452 = !DILocation(line: 142, column: 7, scope: !4440)
!4453 = !DILocation(line: 145, column: 7, scope: !4440)
!4454 = !DILocation(line: 150, column: 7, scope: !4440)
!4455 = !DILocation(line: 154, column: 7, scope: !4440)
!4456 = !DILocation(line: 159, column: 7, scope: !4440)
!4457 = !DILocation(line: 163, column: 7, scope: !4440)
!4458 = !DILocation(line: 170, column: 7, scope: !4440)
!4459 = !DILocation(line: 174, column: 7, scope: !4440)
!4460 = !DILocation(line: 176, column: 1, scope: !4383)
!4461 = distinct !DISubprogram(name: "version_etc_ar", scope: !899, file: !899, line: 183, type: !4462, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4464)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{null, !4386, !171, !171, !171, !4420}
!4464 = !{!4465, !4466, !4467, !4468, !4469, !4470}
!4465 = !DILocalVariable(name: "stream", arg: 1, scope: !4461, file: !899, line: 183, type: !4386)
!4466 = !DILocalVariable(name: "command_name", arg: 2, scope: !4461, file: !899, line: 184, type: !171)
!4467 = !DILocalVariable(name: "package", arg: 3, scope: !4461, file: !899, line: 184, type: !171)
!4468 = !DILocalVariable(name: "version", arg: 4, scope: !4461, file: !899, line: 185, type: !171)
!4469 = !DILocalVariable(name: "authors", arg: 5, scope: !4461, file: !899, line: 185, type: !4420)
!4470 = !DILocalVariable(name: "n_authors", scope: !4461, file: !899, line: 187, type: !163)
!4471 = !DILocation(line: 0, scope: !4461)
!4472 = !DILocation(line: 189, column: 8, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4461, file: !899, line: 189, column: 3)
!4474 = !DILocation(line: 189, scope: !4473)
!4475 = !DILocation(line: 189, column: 23, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4473, file: !899, line: 189, column: 3)
!4477 = !DILocation(line: 189, column: 3, scope: !4473)
!4478 = !DILocation(line: 189, column: 52, scope: !4476)
!4479 = distinct !{!4479, !4477, !4480, !1216}
!4480 = !DILocation(line: 190, column: 5, scope: !4473)
!4481 = !DILocation(line: 191, column: 3, scope: !4461)
!4482 = !DILocation(line: 192, column: 1, scope: !4461)
!4483 = distinct !DISubprogram(name: "version_etc_va", scope: !899, file: !899, line: 199, type: !4484, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4493)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{null, !4386, !171, !171, !171, !4486}
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4488)
!4488 = !{!4489, !4490, !4491, !4492}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4487, file: !899, line: 192, baseType: !79, size: 32)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4487, file: !899, line: 192, baseType: !79, size: 32, offset: 32)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4487, file: !899, line: 192, baseType: !161, size: 64, offset: 64)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4487, file: !899, line: 192, baseType: !161, size: 64, offset: 128)
!4493 = !{!4494, !4495, !4496, !4497, !4498, !4499, !4500}
!4494 = !DILocalVariable(name: "stream", arg: 1, scope: !4483, file: !899, line: 199, type: !4386)
!4495 = !DILocalVariable(name: "command_name", arg: 2, scope: !4483, file: !899, line: 200, type: !171)
!4496 = !DILocalVariable(name: "package", arg: 3, scope: !4483, file: !899, line: 200, type: !171)
!4497 = !DILocalVariable(name: "version", arg: 4, scope: !4483, file: !899, line: 201, type: !171)
!4498 = !DILocalVariable(name: "authors", arg: 5, scope: !4483, file: !899, line: 201, type: !4486)
!4499 = !DILocalVariable(name: "n_authors", scope: !4483, file: !899, line: 203, type: !163)
!4500 = !DILocalVariable(name: "authtab", scope: !4483, file: !899, line: 204, type: !4501)
!4501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 640, elements: !20)
!4502 = distinct !DIAssignID()
!4503 = !DILocation(line: 0, scope: !4483)
!4504 = !DILocation(line: 204, column: 3, scope: !4483)
!4505 = !DILocation(line: 208, column: 35, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4507, file: !899, line: 206, column: 3)
!4507 = distinct !DILexicalBlock(scope: !4483, file: !899, line: 206, column: 3)
!4508 = !DILocation(line: 208, column: 33, scope: !4506)
!4509 = !DILocation(line: 208, column: 67, scope: !4506)
!4510 = !DILocation(line: 206, column: 3, scope: !4507)
!4511 = !DILocation(line: 208, column: 14, scope: !4506)
!4512 = !DILocation(line: 0, scope: !4507)
!4513 = !DILocation(line: 211, column: 3, scope: !4483)
!4514 = !DILocation(line: 213, column: 1, scope: !4483)
!4515 = distinct !DISubprogram(name: "version_etc", scope: !899, file: !899, line: 230, type: !4516, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4518)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{null, !4386, !171, !171, !171, null}
!4518 = !{!4519, !4520, !4521, !4522, !4523}
!4519 = !DILocalVariable(name: "stream", arg: 1, scope: !4515, file: !899, line: 230, type: !4386)
!4520 = !DILocalVariable(name: "command_name", arg: 2, scope: !4515, file: !899, line: 231, type: !171)
!4521 = !DILocalVariable(name: "package", arg: 3, scope: !4515, file: !899, line: 231, type: !171)
!4522 = !DILocalVariable(name: "version", arg: 4, scope: !4515, file: !899, line: 232, type: !171)
!4523 = !DILocalVariable(name: "authors", scope: !4515, file: !899, line: 234, type: !4524)
!4524 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1164, line: 52, baseType: !4525)
!4525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2183, line: 12, baseType: !4526)
!4526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !899, baseType: !4527)
!4527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4487, size: 192, elements: !60)
!4528 = distinct !DIAssignID()
!4529 = !DILocation(line: 0, scope: !4515)
!4530 = !DILocation(line: 234, column: 3, scope: !4515)
!4531 = !DILocation(line: 235, column: 3, scope: !4515)
!4532 = !DILocation(line: 236, column: 3, scope: !4515)
!4533 = !DILocation(line: 237, column: 3, scope: !4515)
!4534 = !DILocation(line: 238, column: 1, scope: !4515)
!4535 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !899, file: !899, line: 241, type: !741, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031)
!4536 = !DILocation(line: 243, column: 3, scope: !4535)
!4537 = !DILocation(line: 248, column: 3, scope: !4535)
!4538 = !DILocation(line: 254, column: 3, scope: !4535)
!4539 = !DILocation(line: 259, column: 3, scope: !4535)
!4540 = !DILocation(line: 261, column: 1, scope: !4535)
!4541 = distinct !DISubprogram(name: "xnrealloc", scope: !4542, file: !4542, line: 147, type: !4543, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4545)
!4542 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!161, !161, !163, !163}
!4545 = !{!4546, !4547, !4548}
!4546 = !DILocalVariable(name: "p", arg: 1, scope: !4541, file: !4542, line: 147, type: !161)
!4547 = !DILocalVariable(name: "n", arg: 2, scope: !4541, file: !4542, line: 147, type: !163)
!4548 = !DILocalVariable(name: "s", arg: 3, scope: !4541, file: !4542, line: 147, type: !163)
!4549 = !DILocation(line: 0, scope: !4541)
!4550 = !DILocalVariable(name: "p", arg: 1, scope: !4551, file: !1038, line: 83, type: !161)
!4551 = distinct !DISubprogram(name: "xreallocarray", scope: !1038, file: !1038, line: 83, type: !4543, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4552)
!4552 = !{!4550, !4553, !4554}
!4553 = !DILocalVariable(name: "n", arg: 2, scope: !4551, file: !1038, line: 83, type: !163)
!4554 = !DILocalVariable(name: "s", arg: 3, scope: !4551, file: !1038, line: 83, type: !163)
!4555 = !DILocation(line: 0, scope: !4551, inlinedAt: !4556)
!4556 = distinct !DILocation(line: 149, column: 10, scope: !4541)
!4557 = !DILocation(line: 85, column: 25, scope: !4551, inlinedAt: !4556)
!4558 = !DILocalVariable(name: "p", arg: 1, scope: !4559, file: !1038, line: 37, type: !161)
!4559 = distinct !DISubprogram(name: "check_nonnull", scope: !1038, file: !1038, line: 37, type: !4560, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4562)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!161, !161}
!4562 = !{!4558}
!4563 = !DILocation(line: 0, scope: !4559, inlinedAt: !4564)
!4564 = distinct !DILocation(line: 85, column: 10, scope: !4551, inlinedAt: !4556)
!4565 = !DILocation(line: 39, column: 8, scope: !4566, inlinedAt: !4564)
!4566 = distinct !DILexicalBlock(scope: !4559, file: !1038, line: 39, column: 7)
!4567 = !DILocation(line: 39, column: 7, scope: !4559, inlinedAt: !4564)
!4568 = !DILocation(line: 40, column: 5, scope: !4566, inlinedAt: !4564)
!4569 = !DILocation(line: 149, column: 3, scope: !4541)
!4570 = !DILocation(line: 0, scope: !4551)
!4571 = !DILocation(line: 85, column: 25, scope: !4551)
!4572 = !DILocation(line: 0, scope: !4559, inlinedAt: !4573)
!4573 = distinct !DILocation(line: 85, column: 10, scope: !4551)
!4574 = !DILocation(line: 39, column: 8, scope: !4566, inlinedAt: !4573)
!4575 = !DILocation(line: 39, column: 7, scope: !4559, inlinedAt: !4573)
!4576 = !DILocation(line: 40, column: 5, scope: !4566, inlinedAt: !4573)
!4577 = !DILocation(line: 85, column: 3, scope: !4551)
!4578 = distinct !DISubprogram(name: "xmalloc", scope: !1038, file: !1038, line: 47, type: !306, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4579)
!4579 = !{!4580}
!4580 = !DILocalVariable(name: "s", arg: 1, scope: !4578, file: !1038, line: 47, type: !163)
!4581 = !DILocation(line: 0, scope: !4578)
!4582 = !DILocation(line: 49, column: 25, scope: !4578)
!4583 = !DILocation(line: 0, scope: !4559, inlinedAt: !4584)
!4584 = distinct !DILocation(line: 49, column: 10, scope: !4578)
!4585 = !DILocation(line: 39, column: 8, scope: !4566, inlinedAt: !4584)
!4586 = !DILocation(line: 39, column: 7, scope: !4559, inlinedAt: !4584)
!4587 = !DILocation(line: 40, column: 5, scope: !4566, inlinedAt: !4584)
!4588 = !DILocation(line: 49, column: 3, scope: !4578)
!4589 = distinct !DISubprogram(name: "ximalloc", scope: !1038, file: !1038, line: 53, type: !4590, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4592)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!161, !1057}
!4592 = !{!4593}
!4593 = !DILocalVariable(name: "s", arg: 1, scope: !4589, file: !1038, line: 53, type: !1057)
!4594 = !DILocation(line: 0, scope: !4589)
!4595 = !DILocalVariable(name: "s", arg: 1, scope: !4596, file: !4597, line: 55, type: !1057)
!4596 = distinct !DISubprogram(name: "imalloc", scope: !4597, file: !4597, line: 55, type: !4590, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4598)
!4597 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4598 = !{!4595}
!4599 = !DILocation(line: 0, scope: !4596, inlinedAt: !4600)
!4600 = distinct !DILocation(line: 55, column: 25, scope: !4589)
!4601 = !DILocation(line: 57, column: 26, scope: !4596, inlinedAt: !4600)
!4602 = !DILocation(line: 0, scope: !4559, inlinedAt: !4603)
!4603 = distinct !DILocation(line: 55, column: 10, scope: !4589)
!4604 = !DILocation(line: 39, column: 8, scope: !4566, inlinedAt: !4603)
!4605 = !DILocation(line: 39, column: 7, scope: !4559, inlinedAt: !4603)
!4606 = !DILocation(line: 40, column: 5, scope: !4566, inlinedAt: !4603)
!4607 = !DILocation(line: 55, column: 3, scope: !4589)
!4608 = distinct !DISubprogram(name: "xcharalloc", scope: !1038, file: !1038, line: 59, type: !4609, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4611)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{!121, !163}
!4611 = !{!4612}
!4612 = !DILocalVariable(name: "n", arg: 1, scope: !4608, file: !1038, line: 59, type: !163)
!4613 = !DILocation(line: 0, scope: !4608)
!4614 = !DILocation(line: 0, scope: !4578, inlinedAt: !4615)
!4615 = distinct !DILocation(line: 61, column: 10, scope: !4608)
!4616 = !DILocation(line: 49, column: 25, scope: !4578, inlinedAt: !4615)
!4617 = !DILocation(line: 0, scope: !4559, inlinedAt: !4618)
!4618 = distinct !DILocation(line: 49, column: 10, scope: !4578, inlinedAt: !4615)
!4619 = !DILocation(line: 39, column: 8, scope: !4566, inlinedAt: !4618)
!4620 = !DILocation(line: 39, column: 7, scope: !4559, inlinedAt: !4618)
!4621 = !DILocation(line: 40, column: 5, scope: !4566, inlinedAt: !4618)
!4622 = !DILocation(line: 61, column: 3, scope: !4608)
!4623 = distinct !DISubprogram(name: "xrealloc", scope: !1038, file: !1038, line: 68, type: !310, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4624)
!4624 = !{!4625, !4626}
!4625 = !DILocalVariable(name: "p", arg: 1, scope: !4623, file: !1038, line: 68, type: !161)
!4626 = !DILocalVariable(name: "s", arg: 2, scope: !4623, file: !1038, line: 68, type: !163)
!4627 = !DILocation(line: 0, scope: !4623)
!4628 = !DILocalVariable(name: "ptr", arg: 1, scope: !4629, file: !4630, line: 2057, type: !161)
!4629 = distinct !DISubprogram(name: "rpl_realloc", scope: !4630, file: !4630, line: 2057, type: !310, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4631)
!4630 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4631 = !{!4628, !4632}
!4632 = !DILocalVariable(name: "size", arg: 2, scope: !4629, file: !4630, line: 2057, type: !163)
!4633 = !DILocation(line: 0, scope: !4629, inlinedAt: !4634)
!4634 = distinct !DILocation(line: 70, column: 25, scope: !4623)
!4635 = !DILocation(line: 2059, column: 24, scope: !4629, inlinedAt: !4634)
!4636 = !DILocation(line: 2059, column: 10, scope: !4629, inlinedAt: !4634)
!4637 = !DILocation(line: 0, scope: !4559, inlinedAt: !4638)
!4638 = distinct !DILocation(line: 70, column: 10, scope: !4623)
!4639 = !DILocation(line: 39, column: 8, scope: !4566, inlinedAt: !4638)
!4640 = !DILocation(line: 39, column: 7, scope: !4559, inlinedAt: !4638)
!4641 = !DILocation(line: 40, column: 5, scope: !4566, inlinedAt: !4638)
!4642 = !DILocation(line: 70, column: 3, scope: !4623)
!4643 = !DISubprogram(name: "realloc", scope: !1293, file: !1293, line: 551, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4644 = distinct !DISubprogram(name: "xirealloc", scope: !1038, file: !1038, line: 74, type: !4645, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4647)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!161, !161, !1057}
!4647 = !{!4648, !4649}
!4648 = !DILocalVariable(name: "p", arg: 1, scope: !4644, file: !1038, line: 74, type: !161)
!4649 = !DILocalVariable(name: "s", arg: 2, scope: !4644, file: !1038, line: 74, type: !1057)
!4650 = !DILocation(line: 0, scope: !4644)
!4651 = !DILocalVariable(name: "p", arg: 1, scope: !4652, file: !4597, line: 66, type: !161)
!4652 = distinct !DISubprogram(name: "irealloc", scope: !4597, file: !4597, line: 66, type: !4645, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4653)
!4653 = !{!4651, !4654}
!4654 = !DILocalVariable(name: "s", arg: 2, scope: !4652, file: !4597, line: 66, type: !1057)
!4655 = !DILocation(line: 0, scope: !4652, inlinedAt: !4656)
!4656 = distinct !DILocation(line: 76, column: 25, scope: !4644)
!4657 = !DILocation(line: 0, scope: !4629, inlinedAt: !4658)
!4658 = distinct !DILocation(line: 68, column: 26, scope: !4652, inlinedAt: !4656)
!4659 = !DILocation(line: 2059, column: 24, scope: !4629, inlinedAt: !4658)
!4660 = !DILocation(line: 2059, column: 10, scope: !4629, inlinedAt: !4658)
!4661 = !DILocation(line: 0, scope: !4559, inlinedAt: !4662)
!4662 = distinct !DILocation(line: 76, column: 10, scope: !4644)
!4663 = !DILocation(line: 39, column: 8, scope: !4566, inlinedAt: !4662)
!4664 = !DILocation(line: 39, column: 7, scope: !4559, inlinedAt: !4662)
!4665 = !DILocation(line: 40, column: 5, scope: !4566, inlinedAt: !4662)
!4666 = !DILocation(line: 76, column: 3, scope: !4644)
!4667 = distinct !DISubprogram(name: "xireallocarray", scope: !1038, file: !1038, line: 89, type: !4668, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4670)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!161, !161, !1057, !1057}
!4670 = !{!4671, !4672, !4673}
!4671 = !DILocalVariable(name: "p", arg: 1, scope: !4667, file: !1038, line: 89, type: !161)
!4672 = !DILocalVariable(name: "n", arg: 2, scope: !4667, file: !1038, line: 89, type: !1057)
!4673 = !DILocalVariable(name: "s", arg: 3, scope: !4667, file: !1038, line: 89, type: !1057)
!4674 = !DILocation(line: 0, scope: !4667)
!4675 = !DILocalVariable(name: "p", arg: 1, scope: !4676, file: !4597, line: 98, type: !161)
!4676 = distinct !DISubprogram(name: "ireallocarray", scope: !4597, file: !4597, line: 98, type: !4668, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4677)
!4677 = !{!4675, !4678, !4679}
!4678 = !DILocalVariable(name: "n", arg: 2, scope: !4676, file: !4597, line: 98, type: !1057)
!4679 = !DILocalVariable(name: "s", arg: 3, scope: !4676, file: !4597, line: 98, type: !1057)
!4680 = !DILocation(line: 0, scope: !4676, inlinedAt: !4681)
!4681 = distinct !DILocation(line: 91, column: 25, scope: !4667)
!4682 = !DILocation(line: 101, column: 13, scope: !4676, inlinedAt: !4681)
!4683 = !DILocation(line: 0, scope: !4559, inlinedAt: !4684)
!4684 = distinct !DILocation(line: 91, column: 10, scope: !4667)
!4685 = !DILocation(line: 39, column: 8, scope: !4566, inlinedAt: !4684)
!4686 = !DILocation(line: 39, column: 7, scope: !4559, inlinedAt: !4684)
!4687 = !DILocation(line: 40, column: 5, scope: !4566, inlinedAt: !4684)
!4688 = !DILocation(line: 91, column: 3, scope: !4667)
!4689 = distinct !DISubprogram(name: "xnmalloc", scope: !1038, file: !1038, line: 98, type: !4690, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4692)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{!161, !163, !163}
!4692 = !{!4693, !4694}
!4693 = !DILocalVariable(name: "n", arg: 1, scope: !4689, file: !1038, line: 98, type: !163)
!4694 = !DILocalVariable(name: "s", arg: 2, scope: !4689, file: !1038, line: 98, type: !163)
!4695 = !DILocation(line: 0, scope: !4689)
!4696 = !DILocation(line: 0, scope: !4551, inlinedAt: !4697)
!4697 = distinct !DILocation(line: 100, column: 10, scope: !4689)
!4698 = !DILocation(line: 85, column: 25, scope: !4551, inlinedAt: !4697)
!4699 = !DILocation(line: 0, scope: !4559, inlinedAt: !4700)
!4700 = distinct !DILocation(line: 85, column: 10, scope: !4551, inlinedAt: !4697)
!4701 = !DILocation(line: 39, column: 8, scope: !4566, inlinedAt: !4700)
!4702 = !DILocation(line: 39, column: 7, scope: !4559, inlinedAt: !4700)
!4703 = !DILocation(line: 40, column: 5, scope: !4566, inlinedAt: !4700)
!4704 = !DILocation(line: 100, column: 3, scope: !4689)
!4705 = distinct !DISubprogram(name: "xinmalloc", scope: !1038, file: !1038, line: 104, type: !4706, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4708)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{!161, !1057, !1057}
!4708 = !{!4709, !4710}
!4709 = !DILocalVariable(name: "n", arg: 1, scope: !4705, file: !1038, line: 104, type: !1057)
!4710 = !DILocalVariable(name: "s", arg: 2, scope: !4705, file: !1038, line: 104, type: !1057)
!4711 = !DILocation(line: 0, scope: !4705)
!4712 = !DILocation(line: 0, scope: !4667, inlinedAt: !4713)
!4713 = distinct !DILocation(line: 106, column: 10, scope: !4705)
!4714 = !DILocation(line: 0, scope: !4676, inlinedAt: !4715)
!4715 = distinct !DILocation(line: 91, column: 25, scope: !4667, inlinedAt: !4713)
!4716 = !DILocation(line: 101, column: 13, scope: !4676, inlinedAt: !4715)
!4717 = !DILocation(line: 0, scope: !4559, inlinedAt: !4718)
!4718 = distinct !DILocation(line: 91, column: 10, scope: !4667, inlinedAt: !4713)
!4719 = !DILocation(line: 39, column: 8, scope: !4566, inlinedAt: !4718)
!4720 = !DILocation(line: 39, column: 7, scope: !4559, inlinedAt: !4718)
!4721 = !DILocation(line: 40, column: 5, scope: !4566, inlinedAt: !4718)
!4722 = !DILocation(line: 106, column: 3, scope: !4705)
!4723 = distinct !DISubprogram(name: "x2realloc", scope: !1038, file: !1038, line: 116, type: !4724, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4726)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{!161, !161, !1044}
!4726 = !{!4727, !4728}
!4727 = !DILocalVariable(name: "p", arg: 1, scope: !4723, file: !1038, line: 116, type: !161)
!4728 = !DILocalVariable(name: "ps", arg: 2, scope: !4723, file: !1038, line: 116, type: !1044)
!4729 = !DILocation(line: 0, scope: !4723)
!4730 = !DILocation(line: 0, scope: !1041, inlinedAt: !4731)
!4731 = distinct !DILocation(line: 118, column: 10, scope: !4723)
!4732 = !DILocation(line: 178, column: 14, scope: !1041, inlinedAt: !4731)
!4733 = !DILocation(line: 180, column: 9, scope: !4734, inlinedAt: !4731)
!4734 = distinct !DILexicalBlock(scope: !1041, file: !1038, line: 180, column: 7)
!4735 = !DILocation(line: 180, column: 7, scope: !1041, inlinedAt: !4731)
!4736 = !DILocation(line: 182, column: 13, scope: !4737, inlinedAt: !4731)
!4737 = distinct !DILexicalBlock(scope: !4738, file: !1038, line: 182, column: 11)
!4738 = distinct !DILexicalBlock(scope: !4734, file: !1038, line: 181, column: 5)
!4739 = !DILocation(line: 182, column: 11, scope: !4738, inlinedAt: !4731)
!4740 = !DILocation(line: 197, column: 11, scope: !4741, inlinedAt: !4731)
!4741 = distinct !DILexicalBlock(scope: !4742, file: !1038, line: 197, column: 11)
!4742 = distinct !DILexicalBlock(scope: !4734, file: !1038, line: 195, column: 5)
!4743 = !DILocation(line: 197, column: 11, scope: !4742, inlinedAt: !4731)
!4744 = !DILocation(line: 198, column: 9, scope: !4741, inlinedAt: !4731)
!4745 = !DILocation(line: 0, scope: !4551, inlinedAt: !4746)
!4746 = distinct !DILocation(line: 201, column: 7, scope: !1041, inlinedAt: !4731)
!4747 = !DILocation(line: 85, column: 25, scope: !4551, inlinedAt: !4746)
!4748 = !DILocation(line: 0, scope: !4559, inlinedAt: !4749)
!4749 = distinct !DILocation(line: 85, column: 10, scope: !4551, inlinedAt: !4746)
!4750 = !DILocation(line: 39, column: 8, scope: !4566, inlinedAt: !4749)
!4751 = !DILocation(line: 39, column: 7, scope: !4559, inlinedAt: !4749)
!4752 = !DILocation(line: 40, column: 5, scope: !4566, inlinedAt: !4749)
!4753 = !DILocation(line: 202, column: 7, scope: !1041, inlinedAt: !4731)
!4754 = !DILocation(line: 118, column: 3, scope: !4723)
!4755 = !DILocation(line: 0, scope: !1041)
!4756 = !DILocation(line: 178, column: 14, scope: !1041)
!4757 = !DILocation(line: 180, column: 9, scope: !4734)
!4758 = !DILocation(line: 180, column: 7, scope: !1041)
!4759 = !DILocation(line: 182, column: 13, scope: !4737)
!4760 = !DILocation(line: 182, column: 11, scope: !4738)
!4761 = !DILocation(line: 190, column: 30, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4737, file: !1038, line: 183, column: 9)
!4763 = !DILocation(line: 191, column: 16, scope: !4762)
!4764 = !DILocation(line: 191, column: 13, scope: !4762)
!4765 = !DILocation(line: 192, column: 9, scope: !4762)
!4766 = !DILocation(line: 197, column: 11, scope: !4741)
!4767 = !DILocation(line: 197, column: 11, scope: !4742)
!4768 = !DILocation(line: 198, column: 9, scope: !4741)
!4769 = !DILocation(line: 0, scope: !4551, inlinedAt: !4770)
!4770 = distinct !DILocation(line: 201, column: 7, scope: !1041)
!4771 = !DILocation(line: 85, column: 25, scope: !4551, inlinedAt: !4770)
!4772 = !DILocation(line: 0, scope: !4559, inlinedAt: !4773)
!4773 = distinct !DILocation(line: 85, column: 10, scope: !4551, inlinedAt: !4770)
!4774 = !DILocation(line: 39, column: 8, scope: !4566, inlinedAt: !4773)
!4775 = !DILocation(line: 39, column: 7, scope: !4559, inlinedAt: !4773)
!4776 = !DILocation(line: 40, column: 5, scope: !4566, inlinedAt: !4773)
!4777 = !DILocation(line: 202, column: 7, scope: !1041)
!4778 = !DILocation(line: 203, column: 3, scope: !1041)
!4779 = !DILocation(line: 0, scope: !1053)
!4780 = !DILocation(line: 230, column: 14, scope: !1053)
!4781 = !DILocation(line: 238, column: 7, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !1053, file: !1038, line: 238, column: 7)
!4783 = !DILocation(line: 238, column: 7, scope: !1053)
!4784 = !DILocation(line: 240, column: 9, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !1053, file: !1038, line: 240, column: 7)
!4786 = !DILocation(line: 240, column: 18, scope: !4785)
!4787 = !DILocation(line: 253, column: 8, scope: !1053)
!4788 = !DILocation(line: 256, column: 7, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !1053, file: !1038, line: 256, column: 7)
!4790 = !DILocation(line: 256, column: 7, scope: !1053)
!4791 = !DILocation(line: 258, column: 27, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4789, file: !1038, line: 257, column: 5)
!4793 = !DILocation(line: 259, column: 50, scope: !4792)
!4794 = !DILocation(line: 259, column: 32, scope: !4792)
!4795 = !DILocation(line: 260, column: 5, scope: !4792)
!4796 = !DILocation(line: 262, column: 9, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !1053, file: !1038, line: 262, column: 7)
!4798 = !DILocation(line: 262, column: 7, scope: !1053)
!4799 = !DILocation(line: 263, column: 9, scope: !4797)
!4800 = !DILocation(line: 263, column: 5, scope: !4797)
!4801 = !DILocation(line: 264, column: 9, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !1053, file: !1038, line: 264, column: 7)
!4803 = !DILocation(line: 264, column: 14, scope: !4802)
!4804 = !DILocation(line: 265, column: 7, scope: !4802)
!4805 = !DILocation(line: 265, column: 11, scope: !4802)
!4806 = !DILocation(line: 266, column: 11, scope: !4802)
!4807 = !DILocation(line: 267, column: 14, scope: !4802)
!4808 = !DILocation(line: 264, column: 7, scope: !1053)
!4809 = !DILocation(line: 268, column: 5, scope: !4802)
!4810 = !DILocation(line: 0, scope: !4623, inlinedAt: !4811)
!4811 = distinct !DILocation(line: 269, column: 8, scope: !1053)
!4812 = !DILocation(line: 0, scope: !4629, inlinedAt: !4813)
!4813 = distinct !DILocation(line: 70, column: 25, scope: !4623, inlinedAt: !4811)
!4814 = !DILocation(line: 2059, column: 24, scope: !4629, inlinedAt: !4813)
!4815 = !DILocation(line: 2059, column: 10, scope: !4629, inlinedAt: !4813)
!4816 = !DILocation(line: 0, scope: !4559, inlinedAt: !4817)
!4817 = distinct !DILocation(line: 70, column: 10, scope: !4623, inlinedAt: !4811)
!4818 = !DILocation(line: 39, column: 8, scope: !4566, inlinedAt: !4817)
!4819 = !DILocation(line: 39, column: 7, scope: !4559, inlinedAt: !4817)
!4820 = !DILocation(line: 40, column: 5, scope: !4566, inlinedAt: !4817)
!4821 = !DILocation(line: 270, column: 7, scope: !1053)
!4822 = !DILocation(line: 271, column: 3, scope: !1053)
!4823 = distinct !DISubprogram(name: "xzalloc", scope: !1038, file: !1038, line: 279, type: !306, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4824)
!4824 = !{!4825}
!4825 = !DILocalVariable(name: "s", arg: 1, scope: !4823, file: !1038, line: 279, type: !163)
!4826 = !DILocation(line: 0, scope: !4823)
!4827 = !DILocalVariable(name: "n", arg: 1, scope: !4828, file: !1038, line: 294, type: !163)
!4828 = distinct !DISubprogram(name: "xcalloc", scope: !1038, file: !1038, line: 294, type: !4690, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4829)
!4829 = !{!4827, !4830}
!4830 = !DILocalVariable(name: "s", arg: 2, scope: !4828, file: !1038, line: 294, type: !163)
!4831 = !DILocation(line: 0, scope: !4828, inlinedAt: !4832)
!4832 = distinct !DILocation(line: 281, column: 10, scope: !4823)
!4833 = !DILocation(line: 296, column: 25, scope: !4828, inlinedAt: !4832)
!4834 = !DILocation(line: 0, scope: !4559, inlinedAt: !4835)
!4835 = distinct !DILocation(line: 296, column: 10, scope: !4828, inlinedAt: !4832)
!4836 = !DILocation(line: 39, column: 8, scope: !4566, inlinedAt: !4835)
!4837 = !DILocation(line: 39, column: 7, scope: !4559, inlinedAt: !4835)
!4838 = !DILocation(line: 40, column: 5, scope: !4566, inlinedAt: !4835)
!4839 = !DILocation(line: 281, column: 3, scope: !4823)
!4840 = !DISubprogram(name: "calloc", scope: !1293, file: !1293, line: 543, type: !4690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4841 = !DILocation(line: 0, scope: !4828)
!4842 = !DILocation(line: 296, column: 25, scope: !4828)
!4843 = !DILocation(line: 0, scope: !4559, inlinedAt: !4844)
!4844 = distinct !DILocation(line: 296, column: 10, scope: !4828)
!4845 = !DILocation(line: 39, column: 8, scope: !4566, inlinedAt: !4844)
!4846 = !DILocation(line: 39, column: 7, scope: !4559, inlinedAt: !4844)
!4847 = !DILocation(line: 40, column: 5, scope: !4566, inlinedAt: !4844)
!4848 = !DILocation(line: 296, column: 3, scope: !4828)
!4849 = distinct !DISubprogram(name: "xizalloc", scope: !1038, file: !1038, line: 285, type: !4590, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4850)
!4850 = !{!4851}
!4851 = !DILocalVariable(name: "s", arg: 1, scope: !4849, file: !1038, line: 285, type: !1057)
!4852 = !DILocation(line: 0, scope: !4849)
!4853 = !DILocalVariable(name: "n", arg: 1, scope: !4854, file: !1038, line: 300, type: !1057)
!4854 = distinct !DISubprogram(name: "xicalloc", scope: !1038, file: !1038, line: 300, type: !4706, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4855)
!4855 = !{!4853, !4856}
!4856 = !DILocalVariable(name: "s", arg: 2, scope: !4854, file: !1038, line: 300, type: !1057)
!4857 = !DILocation(line: 0, scope: !4854, inlinedAt: !4858)
!4858 = distinct !DILocation(line: 287, column: 10, scope: !4849)
!4859 = !DILocalVariable(name: "n", arg: 1, scope: !4860, file: !4597, line: 77, type: !1057)
!4860 = distinct !DISubprogram(name: "icalloc", scope: !4597, file: !4597, line: 77, type: !4706, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4861)
!4861 = !{!4859, !4862}
!4862 = !DILocalVariable(name: "s", arg: 2, scope: !4860, file: !4597, line: 77, type: !1057)
!4863 = !DILocation(line: 0, scope: !4860, inlinedAt: !4864)
!4864 = distinct !DILocation(line: 302, column: 25, scope: !4854, inlinedAt: !4858)
!4865 = !DILocation(line: 91, column: 10, scope: !4860, inlinedAt: !4864)
!4866 = !DILocation(line: 0, scope: !4559, inlinedAt: !4867)
!4867 = distinct !DILocation(line: 302, column: 10, scope: !4854, inlinedAt: !4858)
!4868 = !DILocation(line: 39, column: 8, scope: !4566, inlinedAt: !4867)
!4869 = !DILocation(line: 39, column: 7, scope: !4559, inlinedAt: !4867)
!4870 = !DILocation(line: 40, column: 5, scope: !4566, inlinedAt: !4867)
!4871 = !DILocation(line: 287, column: 3, scope: !4849)
!4872 = !DILocation(line: 0, scope: !4854)
!4873 = !DILocation(line: 0, scope: !4860, inlinedAt: !4874)
!4874 = distinct !DILocation(line: 302, column: 25, scope: !4854)
!4875 = !DILocation(line: 91, column: 10, scope: !4860, inlinedAt: !4874)
!4876 = !DILocation(line: 0, scope: !4559, inlinedAt: !4877)
!4877 = distinct !DILocation(line: 302, column: 10, scope: !4854)
!4878 = !DILocation(line: 39, column: 8, scope: !4566, inlinedAt: !4877)
!4879 = !DILocation(line: 39, column: 7, scope: !4559, inlinedAt: !4877)
!4880 = !DILocation(line: 40, column: 5, scope: !4566, inlinedAt: !4877)
!4881 = !DILocation(line: 302, column: 3, scope: !4854)
!4882 = distinct !DISubprogram(name: "xmemdup", scope: !1038, file: !1038, line: 310, type: !4883, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4885)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{!161, !1317, !163}
!4885 = !{!4886, !4887}
!4886 = !DILocalVariable(name: "p", arg: 1, scope: !4882, file: !1038, line: 310, type: !1317)
!4887 = !DILocalVariable(name: "s", arg: 2, scope: !4882, file: !1038, line: 310, type: !163)
!4888 = !DILocation(line: 0, scope: !4882)
!4889 = !DILocation(line: 0, scope: !4578, inlinedAt: !4890)
!4890 = distinct !DILocation(line: 312, column: 18, scope: !4882)
!4891 = !DILocation(line: 49, column: 25, scope: !4578, inlinedAt: !4890)
!4892 = !DILocation(line: 0, scope: !4559, inlinedAt: !4893)
!4893 = distinct !DILocation(line: 49, column: 10, scope: !4578, inlinedAt: !4890)
!4894 = !DILocation(line: 39, column: 8, scope: !4566, inlinedAt: !4893)
!4895 = !DILocation(line: 39, column: 7, scope: !4559, inlinedAt: !4893)
!4896 = !DILocation(line: 40, column: 5, scope: !4566, inlinedAt: !4893)
!4897 = !DILocalVariable(name: "__dest", arg: 1, scope: !4898, file: !2835, line: 26, type: !2838)
!4898 = distinct !DISubprogram(name: "memcpy", scope: !2835, file: !2835, line: 26, type: !2836, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4899)
!4899 = !{!4897, !4900, !4901}
!4900 = !DILocalVariable(name: "__src", arg: 2, scope: !4898, file: !2835, line: 26, type: !1316)
!4901 = !DILocalVariable(name: "__len", arg: 3, scope: !4898, file: !2835, line: 26, type: !163)
!4902 = !DILocation(line: 0, scope: !4898, inlinedAt: !4903)
!4903 = distinct !DILocation(line: 312, column: 10, scope: !4882)
!4904 = !DILocation(line: 29, column: 10, scope: !4898, inlinedAt: !4903)
!4905 = !DILocation(line: 312, column: 3, scope: !4882)
!4906 = distinct !DISubprogram(name: "ximemdup", scope: !1038, file: !1038, line: 316, type: !4907, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4909)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{!161, !1317, !1057}
!4909 = !{!4910, !4911}
!4910 = !DILocalVariable(name: "p", arg: 1, scope: !4906, file: !1038, line: 316, type: !1317)
!4911 = !DILocalVariable(name: "s", arg: 2, scope: !4906, file: !1038, line: 316, type: !1057)
!4912 = !DILocation(line: 0, scope: !4906)
!4913 = !DILocation(line: 0, scope: !4589, inlinedAt: !4914)
!4914 = distinct !DILocation(line: 318, column: 18, scope: !4906)
!4915 = !DILocation(line: 0, scope: !4596, inlinedAt: !4916)
!4916 = distinct !DILocation(line: 55, column: 25, scope: !4589, inlinedAt: !4914)
!4917 = !DILocation(line: 57, column: 26, scope: !4596, inlinedAt: !4916)
!4918 = !DILocation(line: 0, scope: !4559, inlinedAt: !4919)
!4919 = distinct !DILocation(line: 55, column: 10, scope: !4589, inlinedAt: !4914)
!4920 = !DILocation(line: 39, column: 8, scope: !4566, inlinedAt: !4919)
!4921 = !DILocation(line: 39, column: 7, scope: !4559, inlinedAt: !4919)
!4922 = !DILocation(line: 40, column: 5, scope: !4566, inlinedAt: !4919)
!4923 = !DILocation(line: 0, scope: !4898, inlinedAt: !4924)
!4924 = distinct !DILocation(line: 318, column: 10, scope: !4906)
!4925 = !DILocation(line: 29, column: 10, scope: !4898, inlinedAt: !4924)
!4926 = !DILocation(line: 318, column: 3, scope: !4906)
!4927 = distinct !DISubprogram(name: "ximemdup0", scope: !1038, file: !1038, line: 325, type: !4928, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4930)
!4928 = !DISubroutineType(types: !4929)
!4929 = !{!121, !1317, !1057}
!4930 = !{!4931, !4932, !4933}
!4931 = !DILocalVariable(name: "p", arg: 1, scope: !4927, file: !1038, line: 325, type: !1317)
!4932 = !DILocalVariable(name: "s", arg: 2, scope: !4927, file: !1038, line: 325, type: !1057)
!4933 = !DILocalVariable(name: "result", scope: !4927, file: !1038, line: 327, type: !121)
!4934 = !DILocation(line: 0, scope: !4927)
!4935 = !DILocation(line: 327, column: 30, scope: !4927)
!4936 = !DILocation(line: 0, scope: !4589, inlinedAt: !4937)
!4937 = distinct !DILocation(line: 327, column: 18, scope: !4927)
!4938 = !DILocation(line: 0, scope: !4596, inlinedAt: !4939)
!4939 = distinct !DILocation(line: 55, column: 25, scope: !4589, inlinedAt: !4937)
!4940 = !DILocation(line: 57, column: 26, scope: !4596, inlinedAt: !4939)
!4941 = !DILocation(line: 0, scope: !4559, inlinedAt: !4942)
!4942 = distinct !DILocation(line: 55, column: 10, scope: !4589, inlinedAt: !4937)
!4943 = !DILocation(line: 39, column: 8, scope: !4566, inlinedAt: !4942)
!4944 = !DILocation(line: 39, column: 7, scope: !4559, inlinedAt: !4942)
!4945 = !DILocation(line: 40, column: 5, scope: !4566, inlinedAt: !4942)
!4946 = !DILocation(line: 328, column: 3, scope: !4927)
!4947 = !DILocation(line: 328, column: 13, scope: !4927)
!4948 = !DILocation(line: 0, scope: !4898, inlinedAt: !4949)
!4949 = distinct !DILocation(line: 329, column: 10, scope: !4927)
!4950 = !DILocation(line: 29, column: 10, scope: !4898, inlinedAt: !4949)
!4951 = !DILocation(line: 329, column: 3, scope: !4927)
!4952 = distinct !DISubprogram(name: "xstrdup", scope: !1038, file: !1038, line: 335, type: !1295, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4953)
!4953 = !{!4954}
!4954 = !DILocalVariable(name: "string", arg: 1, scope: !4952, file: !1038, line: 335, type: !171)
!4955 = !DILocation(line: 0, scope: !4952)
!4956 = !DILocation(line: 337, column: 27, scope: !4952)
!4957 = !DILocation(line: 337, column: 43, scope: !4952)
!4958 = !DILocation(line: 0, scope: !4882, inlinedAt: !4959)
!4959 = distinct !DILocation(line: 337, column: 10, scope: !4952)
!4960 = !DILocation(line: 0, scope: !4578, inlinedAt: !4961)
!4961 = distinct !DILocation(line: 312, column: 18, scope: !4882, inlinedAt: !4959)
!4962 = !DILocation(line: 49, column: 25, scope: !4578, inlinedAt: !4961)
!4963 = !DILocation(line: 0, scope: !4559, inlinedAt: !4964)
!4964 = distinct !DILocation(line: 49, column: 10, scope: !4578, inlinedAt: !4961)
!4965 = !DILocation(line: 39, column: 8, scope: !4566, inlinedAt: !4964)
!4966 = !DILocation(line: 39, column: 7, scope: !4559, inlinedAt: !4964)
!4967 = !DILocation(line: 40, column: 5, scope: !4566, inlinedAt: !4964)
!4968 = !DILocation(line: 0, scope: !4898, inlinedAt: !4969)
!4969 = distinct !DILocation(line: 312, column: 10, scope: !4882, inlinedAt: !4959)
!4970 = !DILocation(line: 29, column: 10, scope: !4898, inlinedAt: !4969)
!4971 = !DILocation(line: 337, column: 3, scope: !4952)
!4972 = distinct !DISubprogram(name: "xalloc_die", scope: !986, file: !986, line: 32, type: !741, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1070, retainedNodes: !4973)
!4973 = !{!4974}
!4974 = !DILocalVariable(name: "__errstatus", scope: !4975, file: !986, line: 34, type: !4976)
!4975 = distinct !DILexicalBlock(scope: !4972, file: !986, line: 34, column: 3)
!4976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!4977 = !DILocation(line: 34, column: 3, scope: !4975)
!4978 = !DILocation(line: 0, scope: !4975)
!4979 = !DILocation(line: 40, column: 3, scope: !4972)
!4980 = distinct !DISubprogram(name: "close_stream", scope: !1073, file: !1073, line: 55, type: !4981, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1072, retainedNodes: !5017)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!89, !4983}
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !4985)
!4985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !4986)
!4986 = !{!4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016}
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4985, file: !117, line: 51, baseType: !89, size: 32)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4985, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4985, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4985, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4985, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4985, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4985, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4985, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4985, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4985, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4985, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4985, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4985, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4985, file: !117, line: 70, baseType: !5001, size: 64, offset: 832)
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4985, size: 64)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4985, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4985, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4985, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4985, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4985, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4985, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4985, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4985, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4985, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4985, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4985, file: !117, line: 93, baseType: !5001, size: 64, offset: 1344)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4985, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4985, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4985, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4985, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!5017 = !{!5018, !5019, !5021, !5022}
!5018 = !DILocalVariable(name: "stream", arg: 1, scope: !4980, file: !1073, line: 55, type: !4983)
!5019 = !DILocalVariable(name: "some_pending", scope: !4980, file: !1073, line: 57, type: !5020)
!5020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!5021 = !DILocalVariable(name: "prev_fail", scope: !4980, file: !1073, line: 58, type: !5020)
!5022 = !DILocalVariable(name: "fclose_fail", scope: !4980, file: !1073, line: 59, type: !5020)
!5023 = !DILocation(line: 0, scope: !4980)
!5024 = !DILocation(line: 57, column: 30, scope: !4980)
!5025 = !DILocalVariable(name: "__stream", arg: 1, scope: !5026, file: !1542, line: 135, type: !4983)
!5026 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1542, file: !1542, line: 135, type: !4981, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1072, retainedNodes: !5027)
!5027 = !{!5025}
!5028 = !DILocation(line: 0, scope: !5026, inlinedAt: !5029)
!5029 = distinct !DILocation(line: 58, column: 27, scope: !4980)
!5030 = !DILocation(line: 137, column: 10, scope: !5026, inlinedAt: !5029)
!5031 = !DILocation(line: 58, column: 43, scope: !4980)
!5032 = !DILocation(line: 59, column: 29, scope: !4980)
!5033 = !DILocation(line: 59, column: 45, scope: !4980)
!5034 = !DILocation(line: 69, column: 17, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !4980, file: !1073, line: 69, column: 7)
!5036 = !DILocation(line: 57, column: 50, scope: !4980)
!5037 = !DILocation(line: 69, column: 33, scope: !5035)
!5038 = !DILocation(line: 69, column: 53, scope: !5035)
!5039 = !DILocation(line: 69, column: 59, scope: !5035)
!5040 = !DILocation(line: 69, column: 7, scope: !4980)
!5041 = !DILocation(line: 71, column: 11, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !5035, file: !1073, line: 70, column: 5)
!5043 = !DILocation(line: 72, column: 9, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !5042, file: !1073, line: 71, column: 11)
!5045 = !DILocation(line: 72, column: 15, scope: !5044)
!5046 = !DILocation(line: 77, column: 1, scope: !4980)
!5047 = !DISubprogram(name: "__fpending", scope: !2310, file: !2310, line: 75, type: !5048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5048 = !DISubroutineType(types: !5049)
!5049 = !{!163, !4983}
!5050 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !993, file: !993, line: 100, type: !5051, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !996, retainedNodes: !5054)
!5051 = !DISubroutineType(types: !5052)
!5052 = !{!163, !3042, !171, !163, !5053}
!5053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!5054 = !{!5055, !5056, !5057, !5058, !5059}
!5055 = !DILocalVariable(name: "pwc", arg: 1, scope: !5050, file: !993, line: 100, type: !3042)
!5056 = !DILocalVariable(name: "s", arg: 2, scope: !5050, file: !993, line: 100, type: !171)
!5057 = !DILocalVariable(name: "n", arg: 3, scope: !5050, file: !993, line: 100, type: !163)
!5058 = !DILocalVariable(name: "ps", arg: 4, scope: !5050, file: !993, line: 100, type: !5053)
!5059 = !DILocalVariable(name: "ret", scope: !5050, file: !993, line: 130, type: !163)
!5060 = !DILocation(line: 0, scope: !5050)
!5061 = !DILocation(line: 105, column: 9, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5050, file: !993, line: 105, column: 7)
!5063 = !DILocation(line: 105, column: 7, scope: !5050)
!5064 = !DILocation(line: 117, column: 10, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5050, file: !993, line: 117, column: 7)
!5066 = !DILocation(line: 117, column: 7, scope: !5050)
!5067 = !DILocation(line: 130, column: 16, scope: !5050)
!5068 = !DILocation(line: 135, column: 11, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5050, file: !993, line: 135, column: 7)
!5070 = !DILocation(line: 135, column: 25, scope: !5069)
!5071 = !DILocation(line: 135, column: 30, scope: !5069)
!5072 = !DILocation(line: 135, column: 7, scope: !5050)
!5073 = !DILocalVariable(name: "ps", arg: 1, scope: !5074, file: !3016, line: 1135, type: !5053)
!5074 = distinct !DISubprogram(name: "mbszero", scope: !3016, file: !3016, line: 1135, type: !5075, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !996, retainedNodes: !5077)
!5075 = !DISubroutineType(types: !5076)
!5076 = !{null, !5053}
!5077 = !{!5073}
!5078 = !DILocation(line: 0, scope: !5074, inlinedAt: !5079)
!5079 = distinct !DILocation(line: 137, column: 5, scope: !5069)
!5080 = !DILocalVariable(name: "__dest", arg: 1, scope: !5081, file: !2835, line: 57, type: !161)
!5081 = distinct !DISubprogram(name: "memset", scope: !2835, file: !2835, line: 57, type: !3025, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !996, retainedNodes: !5082)
!5082 = !{!5080, !5083, !5084}
!5083 = !DILocalVariable(name: "__ch", arg: 2, scope: !5081, file: !2835, line: 57, type: !89)
!5084 = !DILocalVariable(name: "__len", arg: 3, scope: !5081, file: !2835, line: 57, type: !163)
!5085 = !DILocation(line: 0, scope: !5081, inlinedAt: !5086)
!5086 = distinct !DILocation(line: 1137, column: 3, scope: !5074, inlinedAt: !5079)
!5087 = !DILocation(line: 59, column: 10, scope: !5081, inlinedAt: !5086)
!5088 = !DILocation(line: 137, column: 5, scope: !5069)
!5089 = !DILocation(line: 138, column: 11, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !5050, file: !993, line: 138, column: 7)
!5091 = !DILocation(line: 138, column: 7, scope: !5050)
!5092 = !DILocation(line: 139, column: 5, scope: !5090)
!5093 = !DILocation(line: 143, column: 26, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5050, file: !993, line: 143, column: 7)
!5095 = !DILocation(line: 143, column: 41, scope: !5094)
!5096 = !DILocation(line: 143, column: 7, scope: !5050)
!5097 = !DILocation(line: 145, column: 15, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5099, file: !993, line: 145, column: 11)
!5099 = distinct !DILexicalBlock(scope: !5094, file: !993, line: 144, column: 5)
!5100 = !DILocation(line: 145, column: 11, scope: !5099)
!5101 = !DILocation(line: 146, column: 32, scope: !5098)
!5102 = !DILocation(line: 146, column: 16, scope: !5098)
!5103 = !DILocation(line: 146, column: 14, scope: !5098)
!5104 = !DILocation(line: 146, column: 9, scope: !5098)
!5105 = !DILocation(line: 286, column: 1, scope: !5050)
!5106 = !DISubprogram(name: "mbsinit", scope: !5107, file: !5107, line: 293, type: !5108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5107 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5108 = !DISubroutineType(types: !5109)
!5109 = !{!89, !5110}
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !999)
!5112 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1075, file: !1075, line: 27, type: !4543, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !5113)
!5113 = !{!5114, !5115, !5116, !5117}
!5114 = !DILocalVariable(name: "ptr", arg: 1, scope: !5112, file: !1075, line: 27, type: !161)
!5115 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5112, file: !1075, line: 27, type: !163)
!5116 = !DILocalVariable(name: "size", arg: 3, scope: !5112, file: !1075, line: 27, type: !163)
!5117 = !DILocalVariable(name: "nbytes", scope: !5112, file: !1075, line: 29, type: !163)
!5118 = !DILocation(line: 0, scope: !5112)
!5119 = !DILocation(line: 30, column: 7, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5112, file: !1075, line: 30, column: 7)
!5121 = !DILocation(line: 30, column: 7, scope: !5112)
!5122 = !DILocation(line: 32, column: 7, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5120, file: !1075, line: 31, column: 5)
!5124 = !DILocation(line: 32, column: 13, scope: !5123)
!5125 = !DILocation(line: 33, column: 7, scope: !5123)
!5126 = !DILocalVariable(name: "ptr", arg: 1, scope: !5127, file: !4630, line: 2057, type: !161)
!5127 = distinct !DISubprogram(name: "rpl_realloc", scope: !4630, file: !4630, line: 2057, type: !310, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !5128)
!5128 = !{!5126, !5129}
!5129 = !DILocalVariable(name: "size", arg: 2, scope: !5127, file: !4630, line: 2057, type: !163)
!5130 = !DILocation(line: 0, scope: !5127, inlinedAt: !5131)
!5131 = distinct !DILocation(line: 37, column: 10, scope: !5112)
!5132 = !DILocation(line: 2059, column: 24, scope: !5127, inlinedAt: !5131)
!5133 = !DILocation(line: 2059, column: 10, scope: !5127, inlinedAt: !5131)
!5134 = !DILocation(line: 37, column: 3, scope: !5112)
!5135 = !DILocation(line: 38, column: 1, scope: !5112)
!5136 = distinct !DISubprogram(name: "hard_locale", scope: !1011, file: !1011, line: 28, type: !1608, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !5137)
!5137 = !{!5138, !5139}
!5138 = !DILocalVariable(name: "category", arg: 1, scope: !5136, file: !1011, line: 28, type: !89)
!5139 = !DILocalVariable(name: "locale", scope: !5136, file: !1011, line: 30, type: !5140)
!5140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5141)
!5141 = !{!5142}
!5142 = !DISubrange(count: 257)
!5143 = distinct !DIAssignID()
!5144 = !DILocation(line: 0, scope: !5136)
!5145 = !DILocation(line: 30, column: 3, scope: !5136)
!5146 = !DILocation(line: 32, column: 7, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5136, file: !1011, line: 32, column: 7)
!5148 = !DILocation(line: 32, column: 7, scope: !5136)
!5149 = !DILocalVariable(name: "__s1", arg: 1, scope: !5150, file: !1182, line: 1359, type: !171)
!5150 = distinct !DISubprogram(name: "streq", scope: !1182, file: !1182, line: 1359, type: !1183, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !5151)
!5151 = !{!5149, !5152}
!5152 = !DILocalVariable(name: "__s2", arg: 2, scope: !5150, file: !1182, line: 1359, type: !171)
!5153 = !DILocation(line: 0, scope: !5150, inlinedAt: !5154)
!5154 = distinct !DILocation(line: 35, column: 9, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5136, file: !1011, line: 35, column: 7)
!5156 = !DILocation(line: 1361, column: 11, scope: !5150, inlinedAt: !5154)
!5157 = !DILocation(line: 35, column: 29, scope: !5155)
!5158 = !DILocation(line: 0, scope: !5150, inlinedAt: !5159)
!5159 = distinct !DILocation(line: 35, column: 32, scope: !5155)
!5160 = !DILocation(line: 1361, column: 11, scope: !5150, inlinedAt: !5159)
!5161 = !DILocation(line: 1361, column: 10, scope: !5150, inlinedAt: !5159)
!5162 = !DILocation(line: 35, column: 7, scope: !5136)
!5163 = !DILocation(line: 46, column: 3, scope: !5136)
!5164 = !DILocation(line: 47, column: 1, scope: !5136)
!5165 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1081, file: !1081, line: 154, type: !5166, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1080, retainedNodes: !5168)
!5166 = !DISubroutineType(types: !5167)
!5167 = !{!89, !89, !121, !163}
!5168 = !{!5169, !5170, !5171}
!5169 = !DILocalVariable(name: "category", arg: 1, scope: !5165, file: !1081, line: 154, type: !89)
!5170 = !DILocalVariable(name: "buf", arg: 2, scope: !5165, file: !1081, line: 154, type: !121)
!5171 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5165, file: !1081, line: 154, type: !163)
!5172 = !DILocation(line: 0, scope: !5165)
!5173 = !DILocation(line: 159, column: 10, scope: !5165)
!5174 = !DILocation(line: 159, column: 3, scope: !5165)
!5175 = distinct !DISubprogram(name: "setlocale_null", scope: !1081, file: !1081, line: 186, type: !5176, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1080, retainedNodes: !5178)
!5176 = !DISubroutineType(types: !5177)
!5177 = !{!171, !89}
!5178 = !{!5179}
!5179 = !DILocalVariable(name: "category", arg: 1, scope: !5175, file: !1081, line: 186, type: !89)
!5180 = !DILocation(line: 0, scope: !5175)
!5181 = !DILocation(line: 189, column: 10, scope: !5175)
!5182 = !DILocation(line: 189, column: 3, scope: !5175)
!5183 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1083, file: !1083, line: 35, type: !5176, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1082, retainedNodes: !5184)
!5184 = !{!5185, !5186}
!5185 = !DILocalVariable(name: "category", arg: 1, scope: !5183, file: !1083, line: 35, type: !89)
!5186 = !DILocalVariable(name: "result", scope: !5183, file: !1083, line: 37, type: !171)
!5187 = !DILocation(line: 0, scope: !5183)
!5188 = !DILocation(line: 37, column: 24, scope: !5183)
!5189 = !DILocation(line: 62, column: 3, scope: !5183)
!5190 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1083, file: !1083, line: 66, type: !5166, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1082, retainedNodes: !5191)
!5191 = !{!5192, !5193, !5194, !5195, !5196}
!5192 = !DILocalVariable(name: "category", arg: 1, scope: !5190, file: !1083, line: 66, type: !89)
!5193 = !DILocalVariable(name: "buf", arg: 2, scope: !5190, file: !1083, line: 66, type: !121)
!5194 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5190, file: !1083, line: 66, type: !163)
!5195 = !DILocalVariable(name: "result", scope: !5190, file: !1083, line: 111, type: !171)
!5196 = !DILocalVariable(name: "length", scope: !5197, file: !1083, line: 125, type: !163)
!5197 = distinct !DILexicalBlock(scope: !5198, file: !1083, line: 124, column: 5)
!5198 = distinct !DILexicalBlock(scope: !5190, file: !1083, line: 113, column: 7)
!5199 = !DILocation(line: 0, scope: !5190)
!5200 = !DILocation(line: 0, scope: !5183, inlinedAt: !5201)
!5201 = distinct !DILocation(line: 111, column: 24, scope: !5190)
!5202 = !DILocation(line: 37, column: 24, scope: !5183, inlinedAt: !5201)
!5203 = !DILocation(line: 113, column: 14, scope: !5198)
!5204 = !DILocation(line: 113, column: 7, scope: !5190)
!5205 = !DILocation(line: 116, column: 19, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !5207, file: !1083, line: 116, column: 11)
!5207 = distinct !DILexicalBlock(scope: !5198, file: !1083, line: 114, column: 5)
!5208 = !DILocation(line: 116, column: 11, scope: !5207)
!5209 = !DILocation(line: 120, column: 16, scope: !5206)
!5210 = !DILocation(line: 120, column: 9, scope: !5206)
!5211 = !DILocation(line: 125, column: 23, scope: !5197)
!5212 = !DILocation(line: 0, scope: !5197)
!5213 = !DILocation(line: 126, column: 18, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5197, file: !1083, line: 126, column: 11)
!5215 = !DILocation(line: 126, column: 11, scope: !5197)
!5216 = !DILocation(line: 128, column: 39, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5214, file: !1083, line: 127, column: 9)
!5218 = !DILocalVariable(name: "__dest", arg: 1, scope: !5219, file: !2835, line: 26, type: !2838)
!5219 = distinct !DISubprogram(name: "memcpy", scope: !2835, file: !2835, line: 26, type: !2836, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1082, retainedNodes: !5220)
!5220 = !{!5218, !5221, !5222}
!5221 = !DILocalVariable(name: "__src", arg: 2, scope: !5219, file: !2835, line: 26, type: !1316)
!5222 = !DILocalVariable(name: "__len", arg: 3, scope: !5219, file: !2835, line: 26, type: !163)
!5223 = !DILocation(line: 0, scope: !5219, inlinedAt: !5224)
!5224 = distinct !DILocation(line: 128, column: 11, scope: !5217)
!5225 = !DILocation(line: 29, column: 10, scope: !5219, inlinedAt: !5224)
!5226 = !DILocation(line: 129, column: 11, scope: !5217)
!5227 = !DILocation(line: 133, column: 23, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5229, file: !1083, line: 133, column: 15)
!5229 = distinct !DILexicalBlock(scope: !5214, file: !1083, line: 132, column: 9)
!5230 = !DILocation(line: 133, column: 15, scope: !5229)
!5231 = !DILocation(line: 138, column: 44, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5228, file: !1083, line: 134, column: 13)
!5233 = !DILocation(line: 0, scope: !5219, inlinedAt: !5234)
!5234 = distinct !DILocation(line: 138, column: 15, scope: !5232)
!5235 = !DILocation(line: 29, column: 10, scope: !5219, inlinedAt: !5234)
!5236 = !DILocation(line: 139, column: 15, scope: !5232)
!5237 = !DILocation(line: 139, column: 32, scope: !5232)
!5238 = !DILocation(line: 140, column: 13, scope: !5232)
!5239 = !DILocation(line: 0, scope: !5198)
!5240 = !DILocation(line: 145, column: 1, scope: !5190)
